<?php

namespace App\Services;

use Twilio\Rest\Client;
use Illuminate\Support\Facades\Log;
use Exception;

class TwilioService
{
    protected Client $client;
    protected string $from;

    public function __construct()
    {
        $sid = config('services.twilio.sid');
        $token = config('services.twilio.token');

        if (! $sid || ! $token) {
            throw new Exception('Twilio SID or Token not configured.');
        }

        $this->client = new Client($sid, $token);
        $this->from = config('services.twilio.whatsapp_from');
    }

    /**
     * @param string $to E.g. '+6281234567890' (no 'whatsapp:' prefix)
     * @param string $body
     * @return \Twilio\Rest\Api\V2010\Account\MessageInstance|null
     */
    public function sendWhatsApp(string $to, string $body)
    {
        try {
            $toFormatted = "whatsapp:{$to}";

            $message = $this->client->messages->create(
                $toFormatted,
                [
                    'from' => $this->from,
                    'body' => $body,
                ]
            );

            Log::info('Twilio WhatsApp sent', ['sid' => $message->sid, 'to' => $to]);
            return $message;
        } catch (Exception $e) {
            Log::error('Twilio sendWhatsApp error: ' . $e->getMessage(), [
                'to' => $to,
                'trace' => $e->getTraceAsString(),
            ]);
            return null;
        }
    }

    /**
     * Kirim media via WhatsApp (gambar, pdf, dsb)
     * $mediaUrl harus URL publik yang dapat diakses Twilio.
     */
    public function sendWhatsAppMedia(string $to, string $body, string $mediaUrl)
    {
        try {
            $toFormatted = "whatsapp:{$to}";

            $message = $this->client->messages->create(
                $toFormatted,
                [
                    'from' => $this->from,
                    'body' => $body,
                    'mediaUrl' => [$mediaUrl],
                ]
            );

            Log::info('Twilio WhatsApp media sent', ['sid' => $message->sid, 'to' => $to]);
            return $message;
        } catch (Exception $e) {
            Log::error('Twilio sendWhatsAppMedia error: ' . $e->getMessage(), ['to' => $to]);
            return null;
        }
    }
}
