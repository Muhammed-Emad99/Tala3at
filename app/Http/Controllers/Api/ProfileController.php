<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ProfileRequest;
use App\Http\Resources\AuthResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Str;


class ProfileController extends Controller
{
    public function editProfile(Request $request)
    {
      return  $request;
        try {

            $user = auth()->user();
            if ($request->hasFile('image')) {
                if (File::exists(public_path('uploads/images/users'), $user->image)) {
                    $user->image::unlink(public_path('uploads/images/users'), $user->image);
                }

                $image = Str::random(5) . '.' . $request->image->extension();
                $request->image->move(public_path('uploads/images/users'), $image);

                $updatedDate = $user->update([
                    $user->name => $request->name,
                    $user->email => $request->email,
                    $user->mobile => $request->mobile,
                    $user->state_id => $request->state_id,
                    $user->user_id => $request->user_id,
                    $user->date_of_birth => $request->date_of_birth,
                    $user->gender => $request->gender,
                    $user->image => $request->image,
                ]);

                $user->save();

                return response()->json(
                    [
                        "status" => true,
                        "msg" => 'User Data Updated successfully',
                        'user' => new AuthResource($updatedDate),
                    ], 200);

            }

        } catch (Exception $e) {
            return response()->json(["status" => false,
                "msg" => $e->getMessage(),
            ], 500
            );
        }
    }

    public function updatePassword(Request $request)
    {

        try {

            $request->validate([
                'current_password' => 'required',
                'new_password' => 'required|min:8|confirmed',
                'new_password_confirmation'=> 'required|min:8|confirmed'
            ]);

            $user = $request->user();

            if (!Hash::check($request->current_password, $user->password)) {
                return response()->json(["status" => false,
                    "msg" => "Your current password does not match with the password you provided. Please try again.",
                ]);
            }

            elseif ($request->new_password != $request->new_password_confirmation){
                return response()->json(["status" => false,
                    "msg" => "New password and  password conformation must match. Please try again.",
                ]);
            }

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
