<?php

namespace App\Http\Resources;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class AuthResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            "id" => $this->id,
            "name" => $this->name,
            "email" => $this->email,
            "mobile" => $this->mobile,
            "state name" => $this->state->state_name_ar,
            'city name ' => $this->city->city_name_ar,
            'date of birth' => Carbon::parse($this->date_of_birth)->format('D, d M Y H:m A'),
            'gender' => $this->gender,
            'image' => asset('uploads/images/users/'.$this->image),
        ];
    }
}
