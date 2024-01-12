<?php

namespace Database\Seeders;

use App\Models\About;
use App\Models\StaticPages;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
use function MongoDB\BSON\toJSON;

class AboutSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $links = ["facebook" => "https://www.facebook.com/", "twitter" => "https://twitter.com/", "youtube" => "https://www.youtube.com/"];
        $links = json_encode($links);
        About::create([
            'title' => Str::random(5),
            'description' => Str::random(50),
            'image' => Str::random(5) . '.jpg',
            'links' => $links
        ]);

    }
}
