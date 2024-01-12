<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\RegisterRequest;
use App\Http\Resources\LoginResource;
use App\Http\Resources\AuthResource;
use App\Models\City;
use App\Models\State;
use App\Models\User;
use Exception;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{

    public function getStates()
    {
        $states = State::all(['id', 'state_name_ar', 'state_name_en']);

        return response()->json(
            [
                "status" => true,
                'states' => $states
            ], 200);
    }

    public function getCities($id)
    {
        $cities = City::where('state_id', $id)->get(['id', 'city_name_ar', 'city_name_en']);

        return response()->json(
            [
                "status" => true,
                'cities' => $cities
            ], 200);
    }

    public function register(RegisterRequest $request)
    {

        try {

            if ($request->hasFile('image')) {

                $imageName  = \Str::random(5) . '.' .  $request->image->extension();
                $request->image->move(public_path('uploads/images/users') , $imageName);

                $user = User::create([
                    "name" => $request->name,
                    "email" => $request->email,
                    "mobile" => $request->mobile,
                    "state_id" => $request->state_id,
                    'city_id' => $request->state_id,
                    'date_of_birth' => $request->date_of_birth,
                    'gender' => $request->gender,
                    'image' => $imageName,
                    'password' => Hash::make($request->password),
                ]);

                return response()->json(
                    [
                        "status" => true,
                        "msg" => 'User created successfully',
                        'user' => new AuthResource($user), "token" => $user->createToken("API TOKEN")->plainTextToken,
                    ], 200);

            }

        } catch (Exception $e) {
            return response()->json(["status" => false,
                "msg" => $e->getMessage(),
            ], 500
            );
        }

    }

    public function login(LoginRequest $request)
    {
        try {
            if (!Auth::attempt($request->only(
                [
                    'email', 'password'
                ]))) {

                return response()->json(
                    [
                        "status" => false,
                        "msg" => 'Email or password does not match',
                    ], 401);
            }

            $user = User::where('email', $request->email)->first();

            return response()->json(
                [
                    "status" => true,
                    "msg" => 'Login successfully',
                    'user' => new AuthResource($user), "token" => $user->createToken("API TOKEN")->plainTextToken,
                ], 200);

        } catch (Exception $e) {
            return response()->json(["status" => false,
                "msg" => $e->getMessage(),
            ], 500
            );
        }
    }
}
