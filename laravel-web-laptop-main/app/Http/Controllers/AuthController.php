<?php

namespace App\Http\Controllers;

use App\Models\Social;
use Illuminate\Http\Request;
use App\Models\User;
use Exception;

use Illuminate\Support\Facades\Hash;
use Laravel\Socialite\Facades\Socialite;

class AuthController extends Controller
{
    // ================ User login ==============================
    public function login()
    {
        return view('userpage.login-register');
    }

    public function processLogin(Request $request)
    {
        try {
            $user = User::query()
                ->where('email', $request->get('email'))
                ->firstOrFail();

            // Kiểm tra mật khẩu
            if (!Hash::check($request->get('password'), $user->password)) {
                return redirect()->route('userpage.login')->withErrors('Mật khẩu không chính xác');
            }

            // Kiểm tra trạng thái có bị block hay không
            if ($user->status == 1) {
                return redirect()->route('userpage.login')->withErrors('Tài khoản của bạn đã bị khóa');
            }

            session()->put('user_id', $user->user_id);
            session()->put('user_email', $user->email);
            session()->put('name', $user->name);

            return redirect()->route('userpage.index');
        } catch (\Throwable $th) {
            return redirect()->route('userpage.login')->withErrors('Email không chính xác');
        }
    }

    public function logout(Request $request)
    {
        session()->flush();
        return redirect()->route('userpage.index');
    }

    // =================== Admin Login ==================

    public function loginAdmin()
    {
        return view('admin.login');
    }

    public function processLoginAdmin(Request $request)
    {
        try {
            $user = User::query()
                ->where('email', $request->get('email'))
                ->where('role_id', '!=', 3)
                ->firstOrFail();

            if (!Hash::check($request->get('password'), $user->password)) {
                throw new Exception('Mật khẩu không chính xác');
            }

            session()->put('admin_id', $user->user_id);
            session()->put('admin_name', $user->name);
            session()->put('admin_level', $user->role_id);
            session()->put('avatar', $user->avatar);

            return redirect()->route('admin.index');
        } catch (\Throwable $th) {
            return redirect()->route('admin.login')->withErrors('Đăng nhập không thành công');
        }
    }

    public function logoutAdmin()
    {
        session()->flush();
        return redirect()->route('admin.login');
    }
}
