<?php

namespace App\Http\Resources;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class AboutResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $links = json_decode($this->links);
        return [
            'id'=> $this->id,
            'title' => $this->title,
            'description' => $this->description,
            'image' => $this->image,
            'links' => $links,
        ];
    }
}
