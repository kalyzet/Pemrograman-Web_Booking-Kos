<?php

// namespace App\Filament\Widgets;

// use Filament\Widgets\ChartWidget;
// use App\Models\BoardingHouse;

// class BoardingHouseStatistic extends ChartWidget
// {
//     protected static ?string $heading = 'Boarding House Distribution';

//     protected int|string|array $columnSpan = 1;

//     protected function getData(): array
//     {
//         $houses = BoardingHouse::query()
//             ->selectRaw('name, COUNT(*) as total')
//             ->groupBy('name')
//             ->get();

//         return [
//             'labels' => $houses->pluck('name'),
//             'datasets' => [
//                 [
//                     'data' => $houses->pluck('total'),
//                 ],
//             ],
//         ];
//     }

//     protected function getType(): string
//     {
//         return 'pie';
//     }
// }
