<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/* Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
 */

Route::get('/', 'UserController@index');
Route::get('/user', 'UserController@user')->middleware('auth:api');
Route::post('/register', 'UserController@register');


Route::any('addCour', 'CoursController@addCour');
Route::any('updateCour', 'CoursController@updateCour');
Route::any('deleteCour', 'CoursController@deleteCour');
Route::any('showCour', 'CoursController@showCour');
Route::get('showOneCour/{id}', 'CoursController@showOneCour');

Route::post('addTeacher', 'TeachersController@addTeacher');
Route::any('showTeacher', 'TeachersController@showTeacher');







