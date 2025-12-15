<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;
use Illuminate\Mail\Mailables\Attachment;

class HelpMessage extends Mailable
{
    use Queueable, SerializesModels;

    public $subjectText;
    public $messageText;
    public $file;

    public function __construct($subjectText, $messageText, $file = null)
    {
        $this->subjectText = $subjectText;
        $this->messageText = $messageText;
        $this->file = $file;
    }

    public function envelope(): Envelope
    {
        return new Envelope(
            subject: $this->subjectText,
        );
    }

    public function content(): Content
    {
        return new Content(
            view: 'emails.help',
            with: [
                'subject' => $this->subjectText,
                'messageText' => $this->messageText,
                'fileName' => $this->file?->getClientOriginalName(),
            ]
        );
    }

    public function attachments(): array
    {
        return $this->file ? [Attachment::fromPath($this->file->getRealPath())->as($this->file->getClientOriginalName())] : [];
    }
}
