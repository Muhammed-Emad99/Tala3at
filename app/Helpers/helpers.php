<?php

namespace App\Helpers;
function upload_image($path , $image): string
{
    $imageName  = \Str::random(5) . '.' . $image->extension();
    $image->move(public_path($path) , $imageName);
    return $imageName;
}
