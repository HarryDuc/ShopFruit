<?php

namespace App\Livewire\Auth;

use App\Models\User;
use Hash;
use Livewire\Attributes\Title;
use Livewire\Component;
#[Title("Đăng ký")]
class RegisterPage extends Component
{
    public $name;
    public $email;
    public $password;
    public function save() {
        $this->validate([
            'name' => 'required|max:255',
            'email' => 'required|email|unique:users|max:255',
            'password' => 'required|min:6|max:255',
        ]);
        $user = User::create([
            'name' => $this->name,
            'email' => $this->email,
            'password' => Hash::make($this->password)
        ]);
        auth()->login($user);
        return redirect()->intended();
    }
    public function render()
    {
        return view('livewire.auth.register-page');
    }
}
