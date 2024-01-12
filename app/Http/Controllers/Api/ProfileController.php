<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\PasswordRequest;
use App\Http\Requests\ProfileRequest;
use App\Http\Resources\AuthResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Hash;
use Str;


class ProfileController extends Controller
{
    public function editProfile(ProfileRequest $request)
    {

        try {

            $user = auth()->user();
//            dd($user);
            if ($request->hasFile('image')) {
                if (File::exists(public_path('uploads/images/users'),$user->image)) {
                    File::delete(public_path('uploads/images/users/' . $user->image));
                }

                $image = Str::random(5) . '.' . $request->image->extension();
                $request->image->move(public_path('uploads/images/users') , $image);
                $user->image = $image;
            }

            $data = $request->except(['image']);
            $user->update($data);


            return response()->json(
                [
                    "status" => true,
                    "msg" => 'User Data Updated successfully',
                    'user' => new AuthResource($user),
                ], 200);


        } catch (Exception $e) {
            return response()->json(["status" => false,
                "msg" => $e->getMessage(),
            ], 500
            );
        }
    }

    public function updatePassword(PasswordRequest $request)
    {

        try {

            $user = $request->user();

            if (!Hash::check($request->current_password, $user->password)) {
                return response()->json(["status" => false,
                    "msg" => "Your current password does not match with the password you provided. Please try again.",
                ]);
            }

            $user->update([
                'password' => $request->new_password
            ]);

            return response()->json(
                [
                    "status" => true,
                    "msg" => 'Password updated successfully',
                ], 200);
        }

        catch (Exception $e) {
            return response()->json(["status" => false,
                "msg" => $e->getMessage(),
            ], 500
            );
        }

    }
}
