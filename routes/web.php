<?php

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

Route::get('/','HomeController@index');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

//Articles Routes
//backend
Route::get('/admin', 'admin\AdminArticleController@index');
Route::get('/article/create', 'admin\AdminArticleController@create');
Route::get('/article/edit/{article}', 'admin\AdminArticleController@edit');
Route::post('/article/store', 'admin\AdminArticleController@store');
Route::post('/article/update/{article}', 'admin\AdminArticleController@update');
Route::get('/article/destroy/{article}', 'admin\AdminArticleController@destroy');
Route::get('/article/destroyImage/{image}', 'admin\AdminArticleController@destroyImage');
Route::get('/article/tag/{search}', 'admin\AdminArticleController@tag');
Route::get('/article', 'admin\AdminArticleController@index');
//frontend
Route::get('/article/{article}', 'ArticleController@show');

//tags
//backend
Route::get('/tag/create', 'admin\AdminTagController@create');
Route::get('/tag/edit/{tag}', 'admin\AdminTagController@edit');
Route::post('/tag/store', 'admin\AdminTagController@store');
Route::post('/tag/update/{tag}', 'admin\AdminTagController@update');
Route::get('/tag/destroy/{tag}', 'admin\AdminTagController@destroy');
Route::get('/admin/tag', 'admin\AdminTagController@index');
Route::get('/tag/storeAjax/{name}', 'admin\AdminTagController@storeAjax');
//frontend
Route::get('/tag/articles/{tag}', 'TagController@articles');
Route::get('/tag', 'TagController@index');

//images
Route::post('/image/upload','admin\AdminImageController@upload')->name('ckeditor.upload');

