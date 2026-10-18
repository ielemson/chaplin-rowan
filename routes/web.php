<?php

use App\Http\Controllers\BlogController;
use App\Http\Controllers\GeneralController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\PortfolioController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\ServicesController;
use App\Http\Controllers\SliderController;
use App\Http\Controllers\TeamMemberController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Public Pages
|--------------------------------------------------------------------------
*/

Route::get('/', [GeneralController::class, 'index'])
    ->name('welcome');

Route::get('/about-us', [GeneralController::class, 'about'])
    ->name('about');

Route::get('/contact-us', [GeneralController::class, 'contact'])
    ->name('contact');

Route::get('/our-vision', [GeneralController::class, 'our_vision'])
    ->name('our.vision');

Route::get('/our-mission', [GeneralController::class, 'our_mission'])
    ->name('our.mission');

/*
|--------------------------------------------------------------------------
| Services and Policies
|--------------------------------------------------------------------------
*/

Route::get('/our-services', [GeneralController::class, 'services'])
    ->name('services');

Route::get('/our-services/{slug}', [GeneralController::class, 'ourservice'])
    ->name('ourservice');

Route::get('/our-policies/{slug}', [GeneralController::class, 'ourpolicie'])
    ->name('ourpolicy');

/*
|--------------------------------------------------------------------------
| Blogs and Portfolios
|--------------------------------------------------------------------------
*/

Route::get('/our-blogs', [GeneralController::class, 'ourblogs'])
    ->name('ourblogs');

Route::get('/blog/{slug}', [GeneralController::class, 'blog_details'])
    ->name('blog_details');

Route::get('/our-portfolios', [GeneralController::class, 'ourportfolios'])
    ->name('ourportfolios');

Route::get('/our-portfolio/{slug}', [GeneralController::class, 'ourportfolio'])
    ->name('ourportfolio');

/*
|--------------------------------------------------------------------------
| Contact Submission
|--------------------------------------------------------------------------
|
| Cloudflare Turnstile verification belongs in GeneralController::submit.
|
*/

Route::post('/contact/submit', [GeneralController::class, 'submit'])
    ->middleware('throttle:5,1')
    ->name('contact.submit');

/*
|--------------------------------------------------------------------------
| Authentication
|--------------------------------------------------------------------------
*/

Auth::routes();

/*
|--------------------------------------------------------------------------
| Authenticated Management Routes
|--------------------------------------------------------------------------
*/

Route::middleware('auth')->group(function () {
    Route::get('/home', [HomeController::class, 'index'])
        ->name('home');

    /*
    |----------------------------------------------------------------------
    | Existing AJAX Endpoints
    |----------------------------------------------------------------------
    |
    | Keep these before resource routes so static paths take precedence.
    |
    */

    Route::get('/getAllPermission', [
        PermissionController::class,
        'getAllPermissions',
    ]);

    Route::get('/getAllPermissions', [
        PermissionController::class,
        'getAll',
    ]);

    Route::get('/getAllUsers', [
        UserController::class,
        'getAll',
    ]);

    Route::get('/getAllRoles', [
        RoleController::class,
        'getAll',
    ]);

    Route::post('/account/create', [
        UserController::class,
        'store',
    ]);

    Route::put('/account/update/{id}', [
        UserController::class,
        'update',
    ]);

    Route::delete('/delete/user/{id}', [
        UserController::class,
        'delete',
    ]);

    Route::get('/search/user', [
        UserController::class,
        'search',
    ]);

    /*
    |----------------------------------------------------------------------
    | Resource Routes
    |----------------------------------------------------------------------
    */

    Route::resource('user', UserController::class);
    Route::resource('permission', PermissionController::class);
    Route::resource('sliders', SliderController::class);
    Route::resource('services', ServicesController::class);
    Route::resource('team', TeamMemberController::class);
    Route::resource('blogs', BlogController::class);
    Route::resource('portfolio', PortfolioController::class);

    /*
    |----------------------------------------------------------------------
    | Role Management
    |----------------------------------------------------------------------
    */

    Route::middleware(
        'role_or_permission:admin|create role|create permission'
    )->group(function () {
        Route::post('/postRole', [RoleController::class, 'store']);

        Route::resource('role', RoleController::class);
    });
});