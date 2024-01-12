<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\PasswordRequest;
use App\Http\Requests\RegisterRequest;
use App\Http\Requests\ResetPasswordRequest;
use App\Http\Resources\LoginResource;
use App\Http\Resources\AuthResource;
use App\Mail\EmailVerify;
use App\Models\City;
use App\Models\State;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Str;

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

            if ($request->hasFile('photo')) {

                $imageName = Str::random(5) . '.' . $request->photo->extension();
                $request->photo->move(public_path('uploads/images/users'), $imageName);

                $request->merge(['image' => $imageName]);
                $data = $request->except(['photo']);

                $user = User::create($data);

                return response()->json(
                    [
                        "status" => true,
                        "msg" => 'User created successfully, you must verify your email',
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


    public function resetPassword(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
        ]);

        $user = User::where('email', $request->email)->first();
        $user_id = $user->id;
        $code = rand(100000, 999999);


        DB::table('verifications')->updateOrInsert(["user_id" => $user_id], ["code" => $code]);
        Mail::to($user->email)->send(new EmailVerify($code));

        return response()->json(
            [
                "status" => true,
                "msg" => 'Code Send successfully, check your email',
            ], 200);


    }

    public function confirmEmail(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'code' => 'required',
        ]);

        $user = User::where('email', $request->email)->first();
        $user_id = $user->id;
        $code = DB::table('verifications')->where(["user_id" => $user_id])->value('code');

        if ($request->code != $code) {
            return response()->json(
                [
                    "status" => true,
                    "msg" => 'Invalid verification code, please send code again',
                ], 200);
        }

        return response()->json(
            [
                "status" => true,
                "msg" => 'Go to change your password',
            ], 200);

    }

    public function changePassword(ResetPasswordRequest $request)
    {
        try {

            $user = User::where('email', $request->email)->first();
            $user->update([
                'password' => $request->new_password
            ]);
            return response()->json(
                [
                    "status" => true,
                    "msg" => 'Password changed successfully',
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
