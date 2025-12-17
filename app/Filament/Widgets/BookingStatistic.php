<?php

namespace App\Filament\Widgets;

use Filament\Widgets\ChartWidget;
use App\Models\City;
use App\Models\BoardingHouse;
use App\Models\Category;

class BookingStatistic extends ChartWidget
{
    protected static ?string $heading = 'Distribusi Data Sistem Kos';

    protected static ?string $pollingInterval = '60s';

    protected int|string|array $columnSpan = 2;

    protected function getData(): array
    {
        $cityCount = City::count();
        $boardingHouseCount = BoardingHouse::count();
        $categoryCount = Category::count();

        return [
            'labels' => [
                "City ({$cityCount})",
                "Boarding House ({$boardingHouseCount})",
                "Category ({$categoryCount})",
            ],
            'datasets' => [
                [
                    'label' => 'Jumlah Data',
                    'data' => [
                        $cityCount,
                        $boardingHouseCount,
                        $categoryCount,
                    ],
                    'backgroundColor' => [
                        '#FFD166',
                        '#52B788',
                        '#E63946',
                    ],
                    'hoverOffset' => 8,
                ],
            ],
        ];
    }

    protected function getType(): string
    {
        return 'pie';
    }
}
