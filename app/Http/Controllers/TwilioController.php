<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\TwilioService;
use Illuminate\Http\Response;

class TwilioController extends Controller
{
    protected TwilioService $twilio;

    public function __construct(TwilioService $twilio)
    {
        $this->twilio = $twilio;
    }

    public function sendTest()
    {
        // ganti nomor target sesuai format +62...
        $to = '+6285346519151';
        $body = 'Woy berhasil jir! wkwk gg lah';

        $result = $this->twilio->sendWhatsApp($to, $body);

        if ($result) {
            return response()->json([
                'status' => 'ok',
                'sid' => $result->sid,
            ]);
        }

        return response()->json([
            'status' => 'error',
            'message' => 'Tidak dapat mengirim pesan. Cek log.',
        ], Response::HTTP_INTERNAL_SERVER_ERROR);
    }
}
