<?php

namespace Database\Seeders;

use App\Models\FasilitasHotel;
use Illuminate\Database\Seeder;

class FasilitasHotelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        FasilitasHotel::create([
            'nama_fasilitas_hotel'=>'Kolam Renang',
            'foto_fasilitas_hotel'=>null,
            'deskripsi_fasilitas_hotel'=>'Sed purus diam, placerat sit amet blandit sed, rutrum non elit. Donec porta orci sed mauris facilisis, consectetur dapibus odio molestie. Praesent sit amet fermentum sapien, a ornare lectus. Suspendisse id ante velit. Sed eros sem, laoreet sit amet turpis non, venenatis blandit purus. Vestibulum vitae lectus ex. Vivamus aliquet tempus massa a varius. Integer ultricies mi vel interdum egestas. Proin quis odio non elit varius blandit. Vivamus luctus ante magna, id dapibus ante efficitur a.',
        ]);

        FasilitasHotel::create([
            'nama_fasilitas_hotel'=>'Restoran',
            'foto_fasilitas_hotel'=>null,
            'deskripsi_fasilitas_hotel'=>'Sed purus diam, placerat sit amet blandit sed, rutrum non elit. Donec porta orci sed mauris facilisis, consectetur dapibus odio molestie. Praesent sit amet fermentum sapien, a ornare lectus. Suspendisse id ante velit. Sed eros sem, laoreet sit amet turpis non, venenatis blandit purus. Vestibulum vitae lectus ex. Vivamus aliquet tempus massa a varius. Integer ultricies mi vel interdum egestas. Proin quis odio non elit varius blandit. Vivamus luctus ante magna, id dapibus ante efficitur a.',
        ]);

        FasilitasHotel::create([
            'nama_fasilitas_hotel'=>'Parkir Luas',
            'foto_fasilitas_hotel'=>null,
            'deskripsi_fasilitas_hotel'=>'Sed purus diam, placerat sit amet blandit sed, rutrum non elit. Donec porta orci sed mauris facilisis, consectetur dapibus odio molestie. Praesent sit amet fermentum sapien, a ornare lectus. Suspendisse id ante velit. Sed eros sem, laoreet sit amet turpis non, venenatis blandit purus. Vestibulum vitae lectus ex. Vivamus aliquet tempus massa a varius. Integer ultricies mi vel interdum egestas. Proin quis odio non elit varius blandit. Vivamus luctus ante magna, id dapibus ante efficitur a.',
        ]);

        FasilitasHotel::create([
            'nama_fasilitas_hotel'=>'Sarapan Pagi Gratis',
            'foto_fasilitas_hotel'=>null,
            'deskripsi_fasilitas_hotel'=>'Sed purus diam, placerat sit amet blandit sed, rutrum non elit. Donec porta orci sed mauris facilisis, consectetur dapibus odio molestie. Praesent sit amet fermentum sapien, a ornare lectus. Suspendisse id ante velit. Sed eros sem, laoreet sit amet turpis non, venenatis blandit purus. Vestibulum vitae lectus ex. Vivamus aliquet tempus massa a varius. Integer ultricies mi vel interdum egestas. Proin quis odio non elit varius blandit. Vivamus luctus ante magna, id dapibus ante efficitur a.',
        ]);
    }
}
