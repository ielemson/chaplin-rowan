<?php

use App\Http\Controllers\ServicesController;
use App\Http\Controllers\TeamMemberController;
use App\Http\Controllers\SliderController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', [App\Http\Controllers\GeneralController::class, 'index'])->name('welcome');
Route::get('/about-us', [App\Http\Controllers\GeneralController::class, 'about'])->name('about');
Route::get('/contact-us', [App\Http\Controllers\GeneralController::class, 'contact'])->name('contact');
Route::get('/captcha-refresh', function () {
    return response()->json(['captcha' => captcha_img()]);
});

Route::get('/our-services', [App\Http\Controllers\GeneralController::class, 'services'])->name('services');
Route::get('/our-services/{slug}', [App\Http\Controllers\GeneralController::class, 'ourservice'])->name('ourservice');
Route::get('/our-policies/{slug}', [App\Http\Controllers\GeneralController::class, 'ourpolicie'])->name('ourpolicy');
Route::get('/our-blogs', [App\Http\Controllers\GeneralController::class, 'ourblogs'])->name('ourblogs');
Route::get('/our-portfolios', [App\Http\Controllers\GeneralController::class, 'ourportfolios'])->name('ourportfolios');
Route::get('/our-portfolio/{slug}', [App\Http\Controllers\GeneralController::class, 'ourportfolio'])->name('ourportfolio');
Route::get('/blog/{slug}', [App\Http\Controllers\GeneralController::class, 'blog_details'])->name("blog_details");
// Route::post('contact', [App\Http\Controllers\GeneralController::class, 'contactSubmit'])->name("contact.submit");
Route::post('/contact/submit', [App\Http\Controllers\GeneralController::class,'submit'])->name('contact.submit');
Route::get('/our-vision', [App\Http\Controllers\GeneralController::class, 'our_vision'])->name("our.vision");
Route::get('/our-mission', [App\Http\Controllers\GeneralController::class, 'our_mission'])->name("our.mission");

Route::group(['middleware' => 'auth'], function() {
    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

    Route::resource('user', 'UserController');

    Route::resource('permission', 'PermissionController');

    Route::get('/profile', 'UserController@profile')->name('user.profile');

    Route::post('/profile', 'UserController@postProfile')->name('user.postProfile');

    Route::get('/password/change', 'UserController@getPassword')->name('userGetPassword');

    Route::post('/password/change', 'UserController@postPassword')->name('userPostPassword');

    // Slider Routes:
    

        Route::resource('sliders', "SliderController");
    Route::prefix('setting')->group(function () {
        Route::get('/website-setting/edit', 'SettingController@edit')->name('website-setting.edit');
        Route::post('/website-setting/update/{id}', 'SettingController@update')->name('website-setting.update');
        // Route::get('/website-setting/edit', 		 [App\Http\Controllers\Admin\SettingController::class, 'edit'])->name('website-setting.edit');
        // Route::post('/website-setting/update/{id}',  [App\Http\Controllers\Admin\SettingController::class, 'update'])->name('website-setting.update');
    });

    // Route::resource('services', ServicesController::class);
    // Route::resources('services', [App\Http\Controllers\ServicesController::class]);
    Route::resource('services', 'ServicesController');
    Route::resource('team', 'TeamMemberController');
    Route::resource('blogs', "BlogController");
    Route::resource('portfolio', "PortfolioController");
    // routes/web.php


});


Route::group(['middleware' => ['auth', 'role_or_permission:admin|create role|create permission']], function() {

    Route::resource('role', 'RoleController');
});


Auth::routes();

//////////////////////////////// axios request

Route::get('/getAllPermission', 'PermissionController@getAllPermissions');
Route::post("/postRole", "RoleController@store");
Route::get("/getAllUsers", "UserController@getAll");
Route::get("/getAllRoles", "RoleController@getAll");
Route::get("/getAllPermissions", "PermissionController@getAll");

/////////////axios create user
Route::post('/account/create', 'UserController@store');
Route::put('/account/update/{id}', 'UserController@update');
Route::delete('/delete/user/{id}', 'UserController@delete');
Route::get('/search/user', 'UserController@search');
