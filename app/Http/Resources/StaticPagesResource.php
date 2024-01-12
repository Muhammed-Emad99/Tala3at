<?php

namespace App\Http\Resources;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class StaticPagesResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'journey_name' => $this->journey_name,
            'journey_description' => $this->journey_description,
            'image' => $this->image,
            'user_name' => $this->user->name,
            'category_name' => $this->category->title,
            'date_of_journey' => Carbon::parse($this->date_of_journey)->format('D, d M Y'),
            'time_of_journey' =>Carbon::parse($this->time_of_journey)->format('H:m A'),

        ];
    }
}
