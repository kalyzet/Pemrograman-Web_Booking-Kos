@extends('layouts.app')

@section('content')
    <div id="Background"
        class="absolute top-0 w-full h-[430px] rounded-b-[75px] bg-[linear-gradient(180deg,#e6f6f9_0%,#D2EDE4_100%)]">
    </div>

    <div class="relative flex flex-col gap-[30px] my-[60px] px-5 max-w-2xl mx-auto">

        <h1 class="font-bold text-[30px] leading-[45px] text-center">Pusat Bantuan</h1>

        <form action="{{ route('help-send') }}" method="POST" enctype="multipart/form-data"
            class="flex flex-col rounded-[30px] border border-[#F1F2F6] p-5 gap-6 bg-white">
            @csrf

            <div class="flex flex-col w-full gap-2">
                <p class="font-semibold">Subjek</p>
                <label
                    class="flex items-center w-full rounded-full p-[14px_20px] bg-white ring-1 ring-[#F1F2F6] focus-within:ring-[#91BF77] transition-all duration-300">
                    <input type="text" name="subject" placeholder="Tulis subjek pesan Anda"
                        class="appearance-none outline-none w-full font-semibold placeholder:text-ngekos-grey placeholder:font-normal">
                </label>
            </div>

            <div class="flex flex-col w-full gap-2">
                <p class="font-semibold">Pesan</p>
                <label
                    class="flex flex-col w-full rounded-[15px] p-3 bg-white ring-1 ring-[#F1F2F6] focus-within:ring-[#91BF77] transition-all duration-300">
                    <textarea name="message" rows="5" placeholder="Tulis pesan Anda"
                        class="appearance-none outline-none w-full font-semibold placeholder:text-ngekos-grey placeholder:font-normal"></textarea>
                </label>
            </div>
            <div id="file-alert" class="notification-popup"
                style="background: linear-gradient(to right, #f44336, #e53935);">
                File terlalu besar! Maksimum 2MB.
            </div>

            <div class="flex flex-col w-full gap-2">
                <p class="font-semibold">Lampiran (Opsional)</p>

                <label for="file-upload"
                    class="flex items-center justify-center gap-2 w-full p-3 rounded-full border border-dashed border-gray-300 cursor-pointer hover:bg-gray-50 transition">
                    <img src="{{ asset('assets/images/icons/upload.png') }}" class="w-5 h-5" alt="Upload Icon">
                    <span class="text-gray-500">Pilih File...</span>
                </label>

                <input type="file" name="file" id="file-upload" class="hidden" onchange="checkFileSize(this)">

                <div id="file-name-container" class="hidden mt-2 flex items-center justify-between bg-gray-100 p-2 rounded">
                    <span id="file-name" class="text-gray-700 text-sm truncate"></span>
                    <button type="button" onclick="clearFile()"
                        class="text-red-500 font-bold hover:bg-red-100 rounded-full w-5 h-5 flex items-center justify-center">
                        &times;
                    </button>
                </div>
            </div>

            <button type="submit" class="flex w-full justify-center rounded-full p-[14px_20px] font-bold text-white"
                style="background-color: rgb(22, 208, 228);">Kirim Pesan</button>
        </form>
    </div>

    @include('includes.navigation')
@endsection

@section('scripts')
    <script>
        // const MAX_FILE_SIZE = 2 * 1024 * 1024; // 2MB

        function showAlert(message) {
            const alert = document.getElementById('file-alert');
            alert.textContent = message;
            alert.classList.add('show');

            setTimeout(() => {
                alert.classList.remove('show');
            }, 3000);
        }

        function checkFileSize(input) {
            if (input.files && input.files.length > 0) {
                const file = input.files[0];
                if (file.size > 2 * 1024 * 1024) {
                    showAlert('File terlalu besar! Maksimum 2MB.');
                    clearFile();
                } else {
                    updateFileName(input);
                }
            }
        }

        function updateFileName(input) {
            const container = document.getElementById('file-name-container');
            const fileNameSpan = document.getElementById('file-name');

            fileNameSpan.textContent = input.files[0].name;
            container.classList.remove('hidden');
        }

        function clearFile() {
            const input = document.getElementById('file-upload');
            const container = document.getElementById('file-name-container');
            const fileNameSpan = document.getElementById('file-name');

            input.value = '';
            fileNameSpan.textContent = '';
            container.classList.add('hidden');
        }
    </script>
@endsection
