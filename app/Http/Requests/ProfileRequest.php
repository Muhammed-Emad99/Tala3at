<?php

namespace App\Http\Requests;

use App\Models\User;
use Illuminate\Contracts\Validation\ValidationRule;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class ProfileRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'name' => ['string','min:3','max:64'],
            'email' => ['email',Rule::unique(User::class)->ignore($this->user()->id)],
            'mobile' => ['max:11','min:11'],
            'gender' => 'string|in:male,female',
            'image' => 'image|mimes:jpeg,png,jpg,gif|max:2048',
        ];
    }
}
