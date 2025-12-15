<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mail\HelpMessage;
use Illuminate\Support\Facades\Mail;

class HelpController extends Controller
{
    public function index()
    {
        return view('pages.help');
    }

    public function send(Request $request)
    {
        $request->validate([
            'subject' => 'required|string|max:255',
            'message' => 'required|string',
            'file' => 'nullable|file|max:2048', // max 2MB
        ]);

        $subject = $request->input('subject');
        $messageText = $request->input('message');
        $file = $request->file('file');

        Mail::to('kalticode@gmail.com')->send(new HelpMessage($subject, $messageText, $file));

        return back()->with('success', 'Pesan berhasil dikirim!');
    }
}
