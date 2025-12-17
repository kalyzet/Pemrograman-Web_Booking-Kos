<?php

namespace App\Filament\Widgets;

use Filament\Widgets\ChartWidget;
use App\Models\BoardingHouse;
use Illuminate\Support\Facades\DB;

class BoardingHouseByCity extends ChartWidget
{
    protected static ?string $heading = 'Jumlah Boarding House per City';

    protected int|string|array $columnSpan = 1;

    protected function getData(): array
    {
        $data = BoardingHouse::query()
            ->join('cities', 'boarding_houses.city_id', '=', 'cities.id')
            ->select('cities.name', DB::raw('count(boarding_houses.id) as total'))
            ->groupBy('cities.name')
            ->get();

        return [
            'labels' => $data->pluck('name')->toArray(),
            'datasets' => [
                [
                    'data' => $data->pluck('total')->toArray(),
                    'backgroundColor' => $this->generateColors($data->count()),
                    'hoverOffset' => 8,
                ],
            ],
        ];
    }

    protected function getType(): string
    {
        return 'pie';
    }

    private function generateColors(int $count): array
    {
        $colors = [
            '#3b82f6',
            '#22c55e',
            '#f97316',
            '#ef4444',
            '#a855f7',
            '#14b8a6',
            '#eab308',
            '#0ea5e9',
            '#f43f5e',
            '#84cc16',
        ];

        return array_slice($colors, 0, $count);
    }
}
