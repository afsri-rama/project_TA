<?php

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDetailPembelianView extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // DB::statement("DROP VIEW IF EXISTS detail_pembelian_view");
        // DB::statement("
        //     create view detail_pembelian_view as
        //     SELECT
        //         konsumen.id,
        //         konsumen.nama_konsumen,
        //         konsumen.alamat_konsumen,
        //         konsumen.wa_konsumen,
        //         konsumen.id_users,
        //         keranjang.id_konsumen,
        //         keranjang.id_produk,
        //         keranjang.total_produk,
        //         keranjang.total_harga,
        //         keranjang.status_produk,
        //         produk.nama_produk,
        //         produk.harga_produk,
        //         produk.des_produk,
        //         produk.id_kategori,
        //         produk.id_distributor,
        //         kategori.nama_kategori,
        //         distributor.nama_distributor,
        //         distributor.wa_distributor,
        //         distributor.des_distributor,
        //         pembayaran.total_pembayaran,
        //         pembayaran.status_pembayaran,
        //         pembayaran.tgl_pembayaran,
        //         pembayaran.bukti_pembayaran,
        //         pembelian.id_keranjang
        //     FROM `pembelian`
        //     INNER JOIN konsumen ON konsumen.id = pembelian.id_konsumen
        //     INNER JOIN keranjang ON keranjang.id = pembelian.id_keranjang
        //     INNER JOIN produk ON produk.id = keranjang.id_produk
        //     INNER JOIN kategori ON kategori.id = produk.id_kategori
        //     INNER JOIN distributor ON distributor.id = produk.id_distributor
        //     INNER JOIN pembayaran ON pembayaran.id = pembelian.id_pembayaran
        // ");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::statement("DROP VIEW IF EXISTS ujian_siswa_view");
    }
}
