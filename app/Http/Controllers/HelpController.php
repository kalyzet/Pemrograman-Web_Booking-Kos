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
            'file' => 'nullable|file|max:2048',
        ]);

        $fileName = null;

        if ($request->hasFile('file')) {
            $fileName = $request->file('file')->store('help-files', 'public');
        }

        Mail::to('kalticode@gmail.com')->send(new HelpMessage(
            $request->subject,
            $request->message,
            $fileName
        ));

        return redirect()->back()->with('success', 'Pesan berhasil dikirim!');
    }
}
