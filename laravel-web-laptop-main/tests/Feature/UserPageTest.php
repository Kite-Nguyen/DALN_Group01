<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
class UserPageTest extends TestCase
{
    /**
     * Test home page.
     *
     * @return void
     */
    public function testHomePage()
    {
        $response = $this->get('/');
        $response->assertStatus(200);
    }

    /**
     * Test contact us page.
     *
     * @return void
     */
    public function testContactUsPage()
    {
        $response = $this->get('/contact-us');
        $response->assertStatus(200);
    }

    /**
     * Test login page.
     *
     * @return void
     */
    public function testLoginPage()
    {
        $response = $this->get('/login-register');
        $response->assertStatus(200);
    }
    public function testLoginPageDisplay()
    {
        $response = $this->get('/login-register');
        $response->assertStatus(200);
        $response->assertSee('Đăng nhập'); // Kiểm tra trang có hiển thị tiêu đề "Đăng nhập"
        $response->assertSee('Email:'); // Kiểm tra trang có hiển thị label "Email"
        $response->assertSee('Mật khẩu:'); // Kiểm tra trang có hiển thị label "Mật khẩu"
        $response->assertSee('Remember me'); // Kiểm tra trang có hiển thị checkbox "Remember me"
        $response->assertSee('Quên mật khẩu?'); // Kiểm tra trang có hiển thị link "Quên mật khẩu?"
        $response->assertSee('Đăng nhập'); // Kiểm tra trang có hiển thị button "Đăng nhập"
    }

    public function testRegisterPageDisplay()
    {
        $response = $this->get('/login-register');
        $response->assertStatus(200);
        $response->assertSee('Đăng ký'); // Kiểm tra trang có hiển thị tiêu đề "Đăng ký"
        $response->assertSee('Họ và tên *'); // Kiểm tra trang có hiển thị label "Họ và tên *"
        $response->assertSee('Email *'); // Kiểm tra trang có hiển thị label "Email *"
        $response->assertSee('Giới tính *'); // Kiểm tra trang có hiển thị label "Giới tính *"
        $response->assertSee('Ngày sinh *'); // Kiểm tra trang có hiển thị label "Ngày sinh *"
        $response->assertSee('Mật khẩu *'); // Kiểm tra trang có hiển thị label "Mật khẩu *"
        $response->assertSee('Xác nhận lại mật khẩu *'); // Kiểm tra trang có hiển thị label "Xác nhận lại mật khẩu *"
        $response->assertSee('Đăng ký'); // Kiểm tra trang có hiển thị button "Đăng ký"
    }

   

}
