<?php

namespace App\Http\Requests;

use Illuminate\Contracts\Validation\ValidationRule;
use Illuminate\Foundation\Http\FormRequest;

class RegisterRequest extends FormRequest
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
            'name' => 'required|string|min:3,max:64',
            'email' => 'required|email|unique:users,email',
            'mobile' => 'required|unique:users,mobile|max:11,min:11',
            'state_id' => 'required',
            'city_id' => 'required',
            'date_of_birth' => 'required',
            'gender' => 'required|string|in:male,female',
            'photo' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
            'password' => 'required|min:8,max:128',
        ];
    }
}
