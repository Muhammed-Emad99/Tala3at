<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\JourneyRequest;
use App\Http\Resources\JourneyResource;
use App\Http\Resources\NotificationResource;
use App\Models\Category;
use App\Models\Join;
use App\Models\Journey;
use App\Notifications\JoinNotification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Str;

class JourneyCountroller extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function allJourneys()
    {
        try {

            $journeys = Journey::with(['user', 'category'])->get();
            if ($journeys->count() == 0) {
                return response()->json(
                    [
                        "status" => true,
                        "msg" => 'There are no Journeys yet',
                    ], 200);

            }

            return response()->json(
                [
                    "status" => true,
                    "msg" => 'Get all journeys successfully',
                    'journeys' => journeyResource::collection($journeys),

                ], 200);

        } catch (Exception $e) {
            return response()->json(["status" => false,
                "msg" => $e->getMessage(),], 500
            );
        }
    }


    public function createJourney(JourneyRequest $request)
    {
        try {

            if ($request->hasFile('image')) {

                $imageName = Str::random(5) . '.' . $request->image->extension();
                $request->image->move(public_path('uploads/images/'), $imageName);

                $journeyData = Journey::create([
                    "journey_name" => $request->journey_name,
                    "journey_description" => $request->journey_description,
                    'image' => $imageName,
                    "user_id" => Auth::user()->id,
                    "category_id" => $request->category_id,
                    "state_id" => $request->state_id,
                    'city_id' => $request->city_id,
                    'date_of_journey' => $request->date_of_journey,
                    'time_of_journey' => $request->time_of_journey,
                ]);

                return response()->json(
                    [
                        "status" => true,
                        "msg" => 'Journey created successfully',
                        'journeyData' => new journeyResource($journeyData),
                    ], 200);

            }

        } catch (Exception $e) {
            return response()->json(["status" => false,
                "msg" => $e->getMessage(),
            ], 500
            );
        }
    }


    public function oneJourney($id)
    {

        $journey = Journey::find($id);
        if (!$journey) {
            return response()->json(
                [
                    "status" => true,
                    "msg" => 'There is no journey yet',
                ], 200);
        }

        return response()->json(
            [
                "status" => true,
                "msg" => 'Get this journey data successfully',
                'journeyData' => new journeyResource($journey),
            ], 200);

    }


    public function joinJourney(Request $request)
    {
        $request->validate([
            'journey_id' => 'required|exists:journeys,id',
        ]);

        try {

            $join = Join::create([
                'user_id' => Auth::user()->id,
                'journey_id' => $request->journey_id
            ]);

            $journeyData = Journey::find($request->journey_id);
            $journeyOwner = $journeyData->user;

            $journeyOwner->notify(new JoinNotification(Auth::user(), $journeyData));

            return response()->json(
                [
                    "status" => true,
                    "msg" => 'You are joins to this journey successfully',
                ], 200);


        } catch (Exception $e) {
            return response()->json(["status" => false,
                "msg" => $e->getMessage(),
            ], 500
            );
        }
    }

    public function allNotifications()
    {
        $allNotifications = Auth::user()->notifications;

        if ($allNotifications->count() == 0) {
            return response()->json(
                [
                    "status" => true,
                    "msg" => 'There are no notifications yet',
                ], 200);
        }
        return response()->json(
            [
                "status" => true,
                "msg" => 'Get all notifications successfully',
                'Notifications' => NotificationResource::collection($allNotifications),

            ], 200);
    }


}
