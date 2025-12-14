<?php

namespace App\Http\Controllers;

use App\Interfaces\BoardingHouseRepositoryInterface;
use App\Interfaces\CategoryRepositoryInterface;
use App\Interfaces\CityRepositoryInterface;
use App\Repositories\CityRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class HomeController extends Controller
{
    private CityRepositoryInterface $cityRepository;
    private CategoryRepositoryInterface $categoryRepository;
    private BoardingHouseRepositoryInterface $boardingHouseRepository;

    public function __construct(
        CityRepositoryInterface $cityRepository,
        CategoryRepositoryInterface $categoryRepository,
        BoardingHouseRepositoryInterface $boardingHouseRepository
    ) {
        $this->cityRepository = $cityRepository;
        $this->categoryRepository = $categoryRepository;
        $this->boardingHouseRepository = $boardingHouseRepository;
    }
    public function index()
    {
        $categories = $this->categoryRepository->getAllCategories();
        $popularBoardingHouses = $this->boardingHouseRepository->getPopularBoardingHouses();
        $cities = $this->cityRepository->getAllCities();
        $boardingHouses = $this->boardingHouseRepository->getAllBoardingHouses();

        $weather = null;

        $cityWeather = config('services.weather.city');
        $apiKey = config('services.weather.key');

        $response = Http::get(
            'https://api.openweathermap.org/data/2.5/weather',
            [
                'q' => $cityWeather,
                'appid' => $apiKey,
                'units' => 'metric',
                'lang' => 'id'
            ]
        );

        if ($response->successful()) {
            $data = $response->json();

            $weather = [
                'city' => $data['name'],
                'temp' => round($data['main']['temp']),
                'description' => $data['weather'][0]['description'],
                'icon' => $data['weather'][0]['icon'],
            ];
        }

        return view('pages.home', compact('categories', 'popularBoardingHouses', 'cities', 'boardingHouses', 'weather'));
    }
}
