<?php

namespace App\Http\Controllers;

use App\Http\Requests\BookingShowRequest;
use App\Http\Requests\CustomerInformationRequest;
use App\Interfaces\BoardingHouseRepositoryInterface;
use App\Interfaces\TransactionRepositoryInterface;
use App\Services\TwilioService;
use Illuminate\Http\Request;

class BookingController extends Controller
{
    private BoardingHouseRepositoryInterface $boardingHouseRepository;

    private TransactionRepositoryInterface $transactionRepository;

    private TwilioService $twilio;

    public function __construct(
        BoardingHouseRepositoryInterface $boardingHouseRepository,
        TransactionRepositoryInterface $transactionRepository,
        TwilioService $twilio
    ) {
        $this->boardingHouseRepository = $boardingHouseRepository;
        $this->transactionRepository = $transactionRepository;
        $this->twilio = $twilio;
    }

    public function booking(Request $request, $slug)
    {
        $this->transactionRepository->saveTransactionDataToSession($request->all());

        return redirect()->route('booking.information', $slug);
    }

    public function information($slug)
    {
        $transaction = $this->transactionRepository->getTransactionDataFromSession();

        if (! $transaction) {
            return redirect()->route('kos.show', $slug)
                ->with('error', 'Transaction data not found.');
        }

        $boardingHouse = $this->boardingHouseRepository->getBoardingHouseBySlug($slug);
        $room = $this->boardingHouseRepository->getBoardingHouseRoomById($transaction['room_id']);

        return view('pages.booking.information', compact('transaction', 'boardingHouse', 'room'));
    }

    public function saveInformation(CustomerInformationRequest $request, $slug)
    {
        $old = $this->transactionRepository->getTransactionDataFromSession();
        $new = $request->validated();

        $merged = array_merge($old, $new);

        $this->transactionRepository->saveTransactionDataToSession($merged);

        return redirect()->route('booking.checkout', $slug);
    }


    public function checkout($slug)
    {
        $transaction = $this->transactionRepository->getTransactionDataFromSession();
        $boardingHouse = $this->boardingHouseRepository->getBoardingHouseBySlug($slug);
        $room = $this->boardingHouseRepository->getBoardingHouseRoomById($transaction['room_id']);

        return view('pages.booking.checkout', compact('transaction', 'boardingHouse', 'room'));
    }

    public function payment(Request $request)
    {
        $this->transactionRepository->saveTransactionDataToSession($request->all());
        $transaction = $this->transactionRepository->saveTransaction($this->transactionRepository->getTransactionDataFromSession());

        \Midtrans\Config::$serverKey = config('midtrans.serverKey');
        \Midtrans\Config::$isProduction = config('midtrans.isProduction');
        \Midtrans\Config::$isSanitized = config('midtrans.isSanitized');
        \Midtrans\Config::$is3ds = config('midtrans.is3ds');

        $params = [
            'transaction_details' => [
                'order_id' => $transaction->code,
                'gross_amount' => $transaction->total_amount,
            ],
            'customer_details' => [
                'first_name' => $transaction->name,
                'email' => $transaction->email,
                'phone' => $transaction->phone_number,
            ],
        ];

        $paymentUrl = \Midtrans\Snap::createTransaction($params)->redirect_url;

        return redirect($paymentUrl);
    }

    public function success(Request $request)
    {
        $transaction = $this->transactionRepository->getTransactionByCode($request->order_id);

        if (!$transaction) {
            return redirect()->route('home');
        }

        $room = $this->boardingHouseRepository->getBoardingHouseRoomById($transaction->room_id);

        $boardingHouse = $room->boardingHouse;

        $userNumber = preg_replace('/^0/', '+62', $transaction->phone_number);

        // Buat key unik berdasarkan kode transaksi
        $sessionKey = "notified_{$transaction->code}";

        // Cek session, kalau belum pernah dikirim
        if (!session()->has($sessionKey)) {
            // Kirim pesan ke user
            $this->twilio->sendWhatsApp($userNumber, $transaction->getPaymentMessage());

            // Kirim notifikasi ke admin
            $adminNumber = '+6285346519151'; // ganti sesuai nomor admin
            $this->twilio->sendWhatsApp($adminNumber, $transaction->getAdminMessage());

            // Tandai sebagai sudah dikirim
            session([$sessionKey => true]);
        }


        return view('pages.booking.success', compact('transaction', 'room', 'boardingHouse')); //ngrok http 8000
    }


    public function check()
    {
        return view('pages.booking.check-booking');
    }

    public function show(BookingShowRequest $request)
    {
        $transaction = $this->transactionRepository->getTransactionByCodeEmailPhone($request->code, $request->email, $request->phone_number);

        if (!$transaction) {
            return redirect()->back()->with('error', 'Data Transaksi Tidak Ditemukan');
        }

        return view('pages.booking.detail', compact('transaction'));
    }
}
