<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Transaction extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'code',
        'boarding_house_id',
        'room_id',
        'name',
        'email',
        'phone_number',
        'payment_method',
        'payment_status',
        'start_date',
        'duration',
        'total_amount',
        'transaction_date',
    ];

    public function boardingHouse()
    {
        return $this->belongsTo(BoardingHouse::class);
    }

    public function room()
    {
        return $this->belongsTo(Room::class);
    }


    public function getPaymentMessage(): string
    {
        $roomName = $this->room->name ?? 'Kamar';
        $boardingHouseName = $this->boardingHouse->name ?? 'Kos';

        return match ($this->payment_method) {
            'full_payment' => "Pembayaran FULL untuk $roomName di $boardingHouseName berhasil.\n" .
                "Kode Booking: {$this->code}\n" .
                "Total: Rp {$this->total_amount}",
            'down_payment' => "Pembayaran DP untuk $roomName di $boardingHouseName berhasil.\n" .
                "Kode Booking: {$this->code}\n" .
                "Jumlah DP: Rp {$this->total_amount}\n" .
                "Sisa pembayaran akan dibayarkan sesuai jadwal.",
            default => "Pembayaran untuk $roomName di $boardingHouseName berhasil.\nKode Booking: {$this->code}"
        };
    }

    /**
     * Pesan WhatsApp untuk admin
     */
    public function getAdminMessage(): string
    {
        return "Transaksi baru: {$this->code}\n" .
            "Nama: {$this->name}\n" .
            "No. HP: {$this->phone_number}\n" .
            "Tipe Pembayaran: {$this->payment_method}\n" .
            "Total: Rp {$this->total_amount}";
    }
}
