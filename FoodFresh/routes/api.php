<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS, PUT, DELETE');
header('Access-Control-Allow-Header: Content-Type, X-Auth-Token, Origin, Authorization');

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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

// Route::group(['prefix' => 'v1'], function(){
//     Route::post('user/register', [
//         'uses' => 'APIAuthController@register'
//     ]);

//     Route::post('user/login', [
//         'uses' => 'APIAuthController@login'
//     ]);

//     Route::resource('pesanan', 'APIPesananController', [
//         'except' => ['create', 'edit']
//     ]);

//     Route::post('pesanan/bayar', [
//         'uses' => 'APIPesananController@bayar'
//     ]);
// });

//---- UNTUK FRESH FOOD ----------
Route::post('login', 'APIAuthController@login');
Route::post('registerApi', 'APIAuthController@registerApi');
Route::post('logout', 'APIAuthController@logout');

Route::group(['middleware' => ['auth:api']], function () {
    Route::group(['prefix' => 'admin'], function () {
        Route::get('konsumen', 'APIKonsumenController@index');
        Route::get('distributor', 'APIDistributorController@index');
        Route::get('kurirApi', 'APIKurirController@indexApi');
        Route::get('pemesanan', 'APIPemesananController@index');
        Route::get('pembelian', 'APIPembelianController@index');
    });

    Route::group(['prefix' => 'konsumen'], function () {
        //----- KONSUMEN -------
        Route::get('produk', 'APIProdukController@index');
        Route::get('keranjang', 'APIKeranjangController@index');
        Route::post('addCart/{idProduk}', 'APIKeranjangController@addCart');
        Route::delete('keranjang/{id}', 'APIKeranjangController@destroy');
        Route::get('checkout', 'APICheckoutController@index');
        Route::post('pesan', 'APICheckoutController@pesan');
        Route::get('pembayaran', 'APIPembayaranController@index');
        Route::get('konfirmasi', 'APIKonfirmasiController@index');
        Route::post('konfirmasi', 'APIKonfirmasiController@create');
    });


});








