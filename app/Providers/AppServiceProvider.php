<?php

namespace App\Providers;

use Illuminate\Support\Facades\URL;
use Illuminate\Support\ServiceProvider;
use Carbon\Carbon;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        // Paksa https kalau lewat ngrok
        if (str_contains(request()->url(), 'ngrok-free.dev')) {
            URL::forceScheme('https');
        }

        // 🔥 Set locale Carbon ke Bahasa Indonesia
        Carbon::setLocale('id');
    }
}
