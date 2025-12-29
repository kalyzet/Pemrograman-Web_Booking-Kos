<div id="BottomNav" class="relative flex w-full h-[138px] shrink-0">
    <nav class="fixed bottom-5 w-full max-w-[640px] px-5 z-10">
        <div class="grid grid-cols-4 h-fit rounded-[40px] justify-between py-4 px-5 bg-ngekos-black">
            <a href="{{ route('home') }}" class="flex flex-col items-center gap-2 text-center">
                <img src="assets/images/icons/global{{ request()->routeIs('home') ? '-green' : '' }}.svg"
                    class="flex w-8 h-8 shrink-0" alt="icon">
                <span class="text-sm font-semibold text-white">Jelajahi</span>
            </a>
            <a href="{{ route('check-booking') }}" class="flex flex-col items-center gap-2 text-center">
                <img src="assets/images/icons/note-favorite{{ request()->routeIs('check-booking') ? '-green' : '' }}.svg"
                    class="flex w-8 h-8 shrink-0" alt="icon">
                <span class="text-sm font-semibold text-white">Pesanan</span>
            </a>
            <a href="{{ route('find-kos') }}" class="flex flex-col items-center gap-2 text-center">
                <img src="assets/images/icons/search-status{{ request()->routeIs('find-kos') ? '-green' : '' }}.svg"
                    class="flex w-8 h-8 shrink-0" alt="icon">
                <span class="text-sm font-semibold text-white">Pencarian</span>
            </a>
            <a href="{{ route('help-costumer') }}" class="flex flex-col items-center gap-2 text-center">
                <img src="assets/images/icons/24-support{{ request()->routeIs('help-costumer') ? '-green' : '' }}.svg"
                    class="flex w-8 h-8 shrink-0" alt="icon">
                <span class="text-sm font-semibold text-white">Bantuan</span>
            </a>
        </div>
    </nav>
</div>
