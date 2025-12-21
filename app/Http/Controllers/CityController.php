<?php

namespace App\Http\Controllers;

use App\Interfaces\BoardingHouseRepositoryInterface;
use App\Interfaces\CityRepositoryInterface;
use Illuminate\Http\Request;

class CityController extends Controller
{
    private BoardingHouseRepositoryInterface $boardingHouseRepository;

    private CityRepositoryInterface $cityRepository;

    public function __construct(
        BoardingHouseRepositoryInterface $boardingHouseRepository,
        CityRepositoryInterface $cityRepository
    ) {
        $this->boardingHouseRepository = $boardingHouseRepository;
        $this->cityRepository = $cityRepository;
    }

    public function show(Request $request, $slug)
    {
        $sort = $request->get('sort');

        [$sortBy, $order] = match ($sort) {
            'price_asc' => ['price', 'asc'],
            'price_desc' => ['price', 'desc'],
            'capacity_asc' => ['capacity', 'asc'],
            'capacity_desc' => ['capacity', 'desc'],
            default => [null, 'asc'],
        };

        $city = $this->cityRepository->getCityBySlug($slug);

        $boardingHouses = $this->boardingHouseRepository
            ->getBoardingHouseByCitySlug($slug, $sortBy, $order);

        return view('pages.city.show', compact('city', 'boardingHouses'));
    }
}
