<?php

namespace App\Livewire\Auth;

use Livewire\Attributes\Title;
use Livewire\Component;
#[Title("Đăng nhập")]
class LoginPage extends Component
{
    public $email;
    public $password;
    public function save() {
        $this->validate([
            'email' => 'required|email|max:255|exists:users,email',
            'password' => 'required|max:255|min:6',
        ]);
        if (!auth()->attempt(['email' => $this->email, 'password' => $this->password])) {
            session()->flash('error', 'Invalid email or password');
            return;
        }
        return redirect()->intended();
    }
    public function render()
    {
        return view('livewire.auth.login-page');
    }
}
