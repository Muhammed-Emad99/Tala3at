<?php

use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\ProfileController;
use App\Http\Controllers\Api\CategoryCotroller;
use App\Http\Controllers\Api\JourneyCountroller;
use App\Http\Controllers\Api\StaticPagesController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/
Route::controller(StaticPagesController::class)->group(function () {
    Route::get('home','index');
    Route::get('aboutUs','aboutUs');
});


Route::controller(AuthController::class)->group(function (){
    Route::post('register', 'register');
    Route::post('login', 'login');
    Route::get('getStates','getStates');
    Route::get('getCities/{id}','getCities');
    Route::post('confirmEmail','confirmEmail');
    Route::post('resetPassword','resetPassword');
    Route::post('changePassword','changePassword');
});


Route::middleware(['auth:sanctum'])->group(function () {


    Route::controller(ProfileController::class)->group(function () {
        Route::post('editProfile','editProfile');
        Route::post('updatePassword','updatePassword');

    });

    Route::get('getCategories',[CategoryCotroller::class,'getCategories']);

    Route::controller(JourneyCountroller::class)->group(function () {
        Route::get('allJourneys','allJourneys');
        Route::get('oneJourney/{id}','oneJourney');
        Route::post('createJourney','createJourney');
        Route::post('joinJourney','joinJourney');
        Route::get('allNotifications','allNotifications');
    });

    });


