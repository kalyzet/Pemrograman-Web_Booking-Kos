<?php

namespace App\Http\Controllers;

use App\Interfaces\BoardingHouseRepositoryInterface;
use App\Interfaces\CategoryRepositoryInterface;
use App\Repositories\CategoryRepository;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    private BoardingHouseRepositoryInterface $boardingHouseRepository;

    private CategoryRepositoryInterface $categoryRepository;

    public function __construct(
        BoardingHouseRepositoryInterface $boardingHouseRepository,
        CategoryRepositoryInterface $categoryRepository
    ) {
        $this->boardingHouseRepository = $boardingHouseRepository;
        $this->categoryRepository = $categoryRepository;
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

        $category = $this->categoryRepository->getCategoryBySlug($slug);

        $boardingHouses = $this->boardingHouseRepository
            ->getBoardingHouseByCategorySlug($slug, $sortBy, $order);

        return view('pages.category.show', compact('category', 'boardingHouses'));
    }
}
