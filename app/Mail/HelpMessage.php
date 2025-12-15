<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class HelpMessage extends Mailable
{
    use Queueable, SerializesModels;

    public $subjectText;
    public $messageText;
    public $fileName;

    public function __construct($subjectText, $messageText, $fileName = null)
    {
        $this->subjectText = $subjectText;
        $this->messageText = $messageText;
        $this->fileName = $fileName;
    }

    public function build()
    {
        $email = $this->subject($this->subjectText)
            ->view('emails.help');

        if ($this->fileName) {
            $email->attach(storage_path('app/public/' . $this->fileName));
        }

        return $email;
    }
}
