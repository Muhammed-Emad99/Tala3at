<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Exception;
use App\Models\Category;

class CategoryCotroller extends Controller
{
    public function getCategories()
    {
        try {

            $categories = Category::get(['title','description']);
            if ($categories->count() > 0){
                return response()->json(
                    [
                        "status" => true,
                        "msg" => 'Get all categories successfully',
                        'categories' => $categories,
                    ], 200);
            }

            return response()->json(
                [
                    "status" => true,
                    "msg" => 'There are no category yet',
                ], 200);

        } catch (Exception $e) {
            return response()->json(["status" => false,
                "msg" => $e->getMessage(),], 500
            );
        }
    }
}
