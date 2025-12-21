<?php

namespace App\Interfaces;

interface BoardingHouseRepositoryInterface
{
    public function getAllBoardingHouses($search = null, $city = null, $category = null);

    public function getPopularBoardingHouses($limit = 5);

    public function getBoardingHouseByCitySlug(
        string $slug,
        ?string $sortBy = null,
        string $order = 'asc'
    );

    public function getBoardingHouseByCategorySlug(
        string $slug,
        ?string $sortBy = null,
        string $order = 'asc'
    );

    public function getBoardingHouseBySlug($slug);

    public function getBoardingHouseRoomById($id);
}
