<?php

use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/courses', 'App\Http\Controllers\CourseController@index')->name('courses.index');

Route::group(['auth:sanctum', 'verified'], function () {
    Route::get('/course/{id}', 'App\Http\Controllers\CourseController@show')->name('courses.show');
    Route::post('/toggleProgress', 'App\Http\Controllers\CourseController@toggleProgress')->name('courses.toggle');
    Route::get('/courses/register', 'App\Http\Controllers\CourseController@register')->name('courses.register');
    Route::post('/courses', 'App\Http\Controllers\CourseController@store');
    Route::get('/courses/edit/{id}', 'App\Http\Controllers\CourseController@edit');
    Route::delete('/courses/{id}', 'App\Http\Controllers\CourseController@destroy');
    Route::patch('/courses/{id}', 'App\Http\Controllers\CourseController@update');

    Route::get('/dashboard', function () {
        return Inertia::render('Dashboard');
    })->name('dashboard');
});
