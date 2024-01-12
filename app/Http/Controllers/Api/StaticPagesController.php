<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\AboutResource;
use App\Http\Resources\StaticPagesResource;
use App\Models\About;
use App\Models\Setting;
use App\Models\StaticPages;

class StaticPagesController extends Controller
{
    public function index(){
        $staticPages = StaticPages::get(['title', 'description','image']);

        if (!$staticPages) {
            return response()->json(
                [
                    "status" => true,
                    "msg" => 'There no data',
                ], 200);
        }

        return response()->json(
            [
                "status" => true,
                "msg" => 'Get data successfully',
                "StaticPages" => StaticPagesResource::collection($staticPages)
            ], 200);
    }

    public function aboutUs(){
        $data = About::first();

        if (!$data) {
            return response()->json(
                [
                    "status" => true,
                    "msg" => 'There no data',
                ], 200);
        }

        return response()->json(
            [
                "status" => true,
                "msg" => 'Get data successfully',
                "data" => new AboutResource($data)
            ], 200);
    }

}
