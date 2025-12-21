@extends('layouts.app')

@section('content')
    <div id="Background"
        class="absolute top-0 w-full h-[570px] rounded-b-[75px] bg-[linear-gradient(180deg,#e6f6f9_0%,#D2EDE4_100%)]"></div>

    <div id="TopNav" class="relative flex items-center justify-between px-5 mt-[60px]">
        <a href="{{ route('find-kos') }}"
            class="flex items-center justify-center w-12 h-12 overflow-hidden bg-white rounded-full shrink-0">
            <img src="/assets/images/icons/arrow-left.svg" class="w-[28px] h-[28px]" alt="icon">
        </a>
        <p class="font-semibold">Hasil Pencarian</p>
        <div class="w-12 dummy-btn"></div>
    </div>

    <div id="Header" class="relative flex items-center justify-between gap-2 px-5 mt-[18px]">
        <div class="flex flex-col gap-[6px]">
            <h1 class="font-bold text-[32px] leading-[48px]">Hasil Pencarian Kos</h1>
            <p class="text-ngekos-grey">Tersedia {{ $boardingHouses->count() }} Kos</p>
        </div>
    </div>

    <section id="Result" class="relative flex flex-col gap-4 px-5 mt-5 mb-9">
        @forelse ($boardingHouses as $house)
            <a href="{{ route('kos.show', $house->slug) }}">
                <div
                    class="flex rounded-[30px] border border-[#F1F2F6] p-4 gap-4 bg-white hover:border-[#91e2eb] transition-all duration-300">

                    <div class="flex w-[120px] h-[183px] shrink-0 rounded-[30px] bg-[#D9D9D9] overflow-hidden">
                        <img src="{{ asset('storage/' . $house->thumbnail) }}" class="object-cover w-full h-full"
                            alt="thumbnail">
                    </div>

                    <div class="flex flex-col w-full gap-3">
                        <h3 class="font-semibold text-lg leading-[27px] line-clamp-2 min-h-[54px]">
                            {{ $house->name }}
                        </h3>

                        <hr class="border-[#F1F2F6]">

                        <div class="flex items-center gap-[6px]">
                            <img src="/assets/images/icons/location.svg" class="flex w-5 h-5 shrink-0" alt="icon">
                            <p class="text-sm text-ngekos-grey">
                                Wilayah {{ $house->city->name }}
                            </p>
                        </div>

                        <div class="flex items-center gap-[6px]">
                            <img src="/assets/images/icons/profile-2user.svg" class="flex w-5 h-5 shrink-0" alt="icon">
                            <p class="text-sm text-ngekos-grey">
                                {{ $house->rooms->count() }} Orang
                            </p>
                        </div>

                        <hr class="border-[#F1F2F6]">

                        <p class="text-lg font-semibold" style="color: rgb(49, 222, 241);">
                            Rp {{ number_format($house->price, 0, ',', '.') }}
                            <span class="text-sm font-normal text-ngekos-grey">/bulan</span>
                        </p>
                    </div>
                </div>
            </a>

        @empty
            <p class="mt-10 text-center text-ngekos-grey">Tidak ada kos yang cocok dengan pencarian kamu.</p>
        @endforelse
    </section>
@endsection
