<?php

namespace Database\Seeders;

use App\Models\StaticPages;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class StaticPagesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        for($i = 0; $i <=2 ; $i++){
            StaticPages::create([
                'title' => Str::random(10),
                'description' => Str::random(100),
                'image' => Str::random(5).'.jpg'
            ]);
        }

    }
}
