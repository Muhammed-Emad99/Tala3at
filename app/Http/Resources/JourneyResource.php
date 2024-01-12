<?php

namespace App\Http\Resources;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class JourneyResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'journey name' => $this->journey_name,
            'journey description' => $this->journey_description,
            'image' => $this->image,
            'user name' => $this->user->name,
            'category_name' => $this->category->title,
            'state name' => $this->state->state_name_ar,
            'city name' => $this->city->city_name_ar,
            'date of journey' => Carbon::parse($this->date_of_journey)->format('D, d M Y'),
            'time of journey' =>Carbon::parse($this->time_of_journey)->format('H:m A'),

        ];
    }
}
