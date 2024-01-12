<?php

namespace App\Http\Controllers\Api;

use App\Base\Responses\apiResponse;
use App\Http\Controllers\Controller;
use App\Models\Setting;
use App\Models\StaticPages;

class StaticPagesController extends Controller
{
    use apiResponse;
    public function index(){
        $StaticPages = StaticPages::get(['title', 'description','image']);

        if (StaticPages::all()->count() == 0) {
            return $this->successfully('There no data', []);
        }

        return $this->successfully('Data send successfully', [
            'StaticPages' => $StaticPages]);
    }
}
