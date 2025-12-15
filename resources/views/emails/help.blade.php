<h2>Pesan Bantuan</h2>

<p><strong>Subjek:</strong> {{ $subjectText }}</p>
<p><strong>Pesan:</strong></p>
<p>{{ $messageText }}</p>

@if ($fileName)
    <p><strong>Lampiran:</strong> {{ $fileName }}</p>
@endif
