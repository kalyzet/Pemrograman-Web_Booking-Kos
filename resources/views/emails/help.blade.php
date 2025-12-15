<h2>Pesan dari Help Center</h2>

<p><strong>Subjek:</strong> {{ $subject }}</p>
<p><strong>Pesan:</strong></p>
<p>{{ $messageText }}</p>

@if ($fileName)
    <p><strong>Lampiran:</strong> {{ $fileName }}</p>
@endif
