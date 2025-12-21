<?php

namespace App\Repositories;

use App\Interfaces\BoardingHouseRepositoryInterface;
use App\Models\BoardingHouse;
use App\Models\Room;
use Illuminate\Database\Eloquent\Builder;

class BoardingHouseRepository implements BoardingHouseRepositoryInterface
{
    public function getAllBoardingHouses($search = null, $city = null, $category = null)
    {
        $query = BoardingHouse::query();

        if ($search) {
            $query->where('name', 'like', '%' . $search . '%');
        }

        if ($city) {
            $query->whereHas('city', function (Builder $query) use ($city) {
                $query->where('slug', $city);
            });
        }

        if ($category) {
            $query->whereHas('category', function (Builder $query) use ($category) {
                $query->where('slug', $category);
            });
        }
        return $query->get();
    }
    public function getPopularBoardingHouses($limit = 5)
    {
        return BoardingHouse::withCount('transactions')->orderBy('transactions_count', 'desc')->take($limit)->get();
    }
    public function getBoardingHouseByCitySlug(
        string $slug,
        ?string $sortBy = null,
        string $order = 'asc'
    ) {
        $query = BoardingHouse::whereHas('city', function (Builder $query) use ($slug) {
            $query->where('slug', $slug);
        })
            ->with(['rooms', 'city']);

        if ($sortBy === 'price') {
            $query->orderBy('price', $order);
        }

        if ($sortBy === 'capacity') {
            $query->withSum('rooms as total_capacity', 'capacity')
                ->orderBy('total_capacity', $order);
        }

        return $query->get();
    }

    public function getBoardingHouseByCategorySlug(
        string $slug,
        ?string $sortBy = null,
        string $order = 'asc'
    ) {
        $query = BoardingHouse::whereHas('category', function (Builder $query) use ($slug) {
            $query->where('slug', $slug);
        })
            ->with(['rooms', 'city']);

        if ($sortBy === 'price') {
            $query->orderBy('price', $order);
        }

        if ($sortBy === 'capacity') {
            $query->withSum('rooms as total_capacity', 'capacity')
                ->orderBy('total_capacity', $order);
        }

        return $query->get();
    }

    public function getBoardingHouseBySlug($slug)
    {
        return BoardingHouse::where('slug', $slug)->first();
    }
    public function getBoardingHouseRoomById($id)
    {
        return Room::find($id);
    }
}
