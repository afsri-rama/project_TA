-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2020 at 05:36 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodfresh`
--

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_distributor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wa_distributor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des_distributor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`id`, `nama_distributor`, `wa_distributor`, `des_distributor`, `created_at`, `updated_at`) VALUES
(1, 'distributor 1', '+62895708870305', 'Ikan', NULL, '2020-09-28 04:01:45'),
(2, 'Distributor2', '081234512345', 'Sayur dan buah', '2020-09-28 03:21:22', '2020-09-28 03:21:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Fresh Food', NULL, NULL),
(2, 'Fish & Meat', NULL, NULL),
(3, 'Fruit & Vegetable', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_konsumen` bigint(20) UNSIGNED NOT NULL,
  `id_produk` bigint(20) UNSIGNED NOT NULL,
  `total_produk` double NOT NULL,
  `total_harga` double NOT NULL,
  `status_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id`, `id_konsumen`, `id_produk`, `total_produk`, `total_harga`, `status_produk`, `created_at`, `updated_at`) VALUES
(6, 1, 3, 1, 20000, '3', '2020-09-28 01:23:59', '2020-09-28 01:30:02'),
(7, 1, 2, 1, 111110000, '3', '2020-09-28 01:24:04', '2020-09-28 01:30:02'),
(8, 1, 3, 1, 20000, '3', '2020-09-28 01:34:44', '2020-09-28 01:35:12'),
(9, 2, 2, 1, 111110000, '3', '2020-09-28 03:22:26', '2020-09-28 03:22:48');

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

CREATE TABLE `konsumen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_users` bigint(20) UNSIGNED NOT NULL,
  `nama_konsumen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_konsumen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wa_konsumen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `konsumen`
--

INSERT INTO `konsumen` (`id`, `id_users`, `nama_konsumen`, `alamat_konsumen`, `wa_konsumen`, `created_at`, `updated_at`) VALUES
(1, 2, 'Afsri', 'Padang', '081267597033', NULL, NULL),
(2, 3, 'Afdal', 'Padang', '08127978787878', '2020-09-28 03:22:12', '2020-09-28 03:22:12');

-- --------------------------------------------------------

--
-- Table structure for table `kurir`
--

CREATE TABLE `kurir` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kurir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wa_kurir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des_kurir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kurir`
--

INSERT INTO `kurir` (`id`, `nama_kurir`, `wa_kurir`, `des_kurir`, `created_at`, `updated_at`) VALUES
(1, 'Ramayana', '0808078080808', 'Kurir1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `nama_level`, `deskripsi_level`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', NULL, NULL),
(2, 'konsumen', 'konsumen', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_11_000000_craete_level_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2020_08_25_051155_create_kategori_table', 1),
(6, '2020_08_25_051456_create_distributor_table', 1),
(7, '2020_08_25_051742_create_produk_table', 1),
(8, '2020_08_25_052127_create_kurir_table', 1),
(9, '2020_08_25_052320_create_konsumen_table', 1),
(10, '2020_08_25_052524_create_keranjang_table', 1),
(11, '2020_08_25_052825_create_pembayaran_table', 1),
(12, '2020_08_25_053050_create_pemesanan_table', 1),
(13, '2020_09_02_054118_upload_bukti', 1),
(14, '2020_09_19_035733_create_pembelian_table', 1),
(15, '2020_09_28_041122_create_detail_pembelian_view', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_konsumen` bigint(20) UNSIGNED NOT NULL,
  `total_pembayaran` double NOT NULL,
  `status_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `tgl_pembayaran` date DEFAULT NULL,
  `bukti_pembayaran` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `id_konsumen`, `total_pembayaran`, `status_pembayaran`, `tgl_pembayaran`, `bukti_pembayaran`, `created_at`, `updated_at`) VALUES
(5, 1, 111130000, '1', '2020-09-29', 'bukti/Afsri/r7eyV3J3orrycP4ksZNLSbSdiC4SWqsrrY0OwT0s.jpeg', '2020-09-28 01:30:02', '2020-09-28 01:35:44'),
(6, 1, 20000, '1', '2020-09-28', 'bukti/Afsri/0g8ycqLs9RH56d5jGAGO1sWEvjMzDXXPq2PZMzKF.jpeg', '2020-09-28 01:35:11', '2020-09-28 02:15:17'),
(7, 2, 111110000, '1', '2020-09-28', 'bukti/Afdal/mBZ7iIC1RLbHI0ms3kWBMu6fdxa5ir4OxiXjeB8E.png', '2020-09-28 03:22:48', '2020-09-28 03:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_konsumen` bigint(20) UNSIGNED NOT NULL,
  `id_keranjang` bigint(20) UNSIGNED NOT NULL,
  `id_pembayaran` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id`, `id_konsumen`, `id_keranjang`, `id_pembayaran`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 5, '2020-09-28 01:30:02', '2020-09-28 01:30:02'),
(2, 1, 7, 5, '2020-09-28 01:30:02', '2020-09-28 01:30:02'),
(3, 1, 8, 6, '2020-09-28 01:35:11', '2020-09-28 01:35:11'),
(4, 2, 9, 7, '2020-09-28 03:22:48', '2020-09-28 03:22:48');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pembayaran` bigint(20) UNSIGNED NOT NULL,
  `id_kurir` bigint(20) UNSIGNED DEFAULT NULL,
  `tgl_pemesanan` date DEFAULT NULL,
  `status_pemesanan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id`, `id_pembayaran`, `id_kurir`, `tgl_pemesanan`, `status_pemesanan`, `created_at`, `updated_at`) VALUES
(2, 5, 1, '2020-09-28', '0', '2020-09-28 01:35:44', '2020-09-28 02:15:32'),
(3, 6, 1, '2020-09-28', '0', '2020-09-28 02:15:17', '2020-09-28 02:15:38'),
(4, 7, NULL, '2020-09-28', '0', '2020-09-28 03:23:16', '2020-09-28 03:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar_produk` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `harga_produk` double NOT NULL,
  `des_produk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_distributor` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `gambar_produk`, `nama_produk`, `id_kategori`, `harga_produk`, `des_produk`, `id_distributor`, `created_at`, `updated_at`) VALUES
(2, 'produk/ubu6fbK8822tPgrGH8avjJdLYFLfLG0QteMS6amW.jpeg', 'A1', 3, 111110000, '500 gr', 2, '2020-09-28 00:58:26', '2020-09-28 03:24:22'),
(3, 'produk/K53C1QFbv8uGKCTuA0p1XWol4yfsbRHbd7gWU5w0.jpeg', 'A2', 2, 20000, '500 gr', 1, '2020-09-28 00:58:47', '2020-09-28 00:58:47'),
(4, 'produk/z99X51CP2ubxMuwBJpXGZHwGNBeswPM0LeZOD7Wk.jpeg', 'A3', 1, 20000, '444', 1, '2020-09-28 00:59:05', '2020-09-28 00:59:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_level` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id_level`, `username`, `email`, `api_token`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'PyICTPYXBGtuMC1tkG5MfsqRfaSjG5zbCMPyVYgJe8igFifloIBi2C3X0gOjyKjQPlmwVuxyCCHtqfGrw27fpP7esVzzHZyHMeP8KWBPHY20LRBUuL6cwHtleT1x21UScyKxR571krWGmdP3qNh3Ex1', NULL, '$2y$10$mwRtwL4aBNfjry5kO5/b6ODFAYCvfBky6FdwWWb0xFiyiDuFs1ysy', NULL, NULL, '2020-09-28 01:41:16'),
(2, 2, 'konsumen', 'konsumen@konsumen.com', NULL, NULL, '$2y$10$wdODiGSaRRggRDmNtxsap.B6wUxX6Yaa2tYjd5pAMcmvNO9KK5JHC', NULL, NULL, NULL),
(3, 2, 'afdalsaja', 'afdal@afdal.com', NULL, NULL, '$2y$10$plYURFxJCCF2QRZNu9X.1OlT77fdAeBaTGvk6pdLLz7eHc2cfys2W', NULL, '2020-09-28 03:22:12', '2020-09-28 03:22:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keranjang_id_konsumen_foreign` (`id_konsumen`),
  ADD KEY `keranjang_id_produk_foreign` (`id_produk`);

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `konsumen_id_users_foreign` (`id_users`);

--
-- Indexes for table `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembayaran_id_konsumen_foreign` (`id_konsumen`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembelian_id_konsumen_foreign` (`id_konsumen`),
  ADD KEY `pembelian_id_keranjang_foreign` (`id_keranjang`),
  ADD KEY `pembelian_id_pembayaran_foreign` (`id_pembayaran`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pemesanan_id_pembayaran_foreign` (`id_pembayaran`),
  ADD KEY `pemesanan_id_kurir_foreign` (`id_kurir`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produk_id_kategori_foreign` (`id_kategori`),
  ADD KEY `produk_id_distributor_foreign` (`id_distributor`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`),
  ADD KEY `users_id_level_foreign` (`id_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `distributor`
--
ALTER TABLE `distributor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `konsumen`
--
ALTER TABLE `konsumen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kurir`
--
ALTER TABLE `kurir`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_id_konsumen_foreign` FOREIGN KEY (`id_konsumen`) REFERENCES `konsumen` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `keranjang_id_produk_foreign` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `konsumen`
--
ALTER TABLE `konsumen`
  ADD CONSTRAINT `konsumen_id_users_foreign` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_id_konsumen_foreign` FOREIGN KEY (`id_konsumen`) REFERENCES `konsumen` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_id_keranjang_foreign` FOREIGN KEY (`id_keranjang`) REFERENCES `keranjang` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pembelian_id_konsumen_foreign` FOREIGN KEY (`id_konsumen`) REFERENCES `konsumen` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pembelian_id_pembayaran_foreign` FOREIGN KEY (`id_pembayaran`) REFERENCES `pembayaran` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_id_kurir_foreign` FOREIGN KEY (`id_kurir`) REFERENCES `kurir` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pemesanan_id_pembayaran_foreign` FOREIGN KEY (`id_pembayaran`) REFERENCES `pembayaran` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_id_distributor_foreign` FOREIGN KEY (`id_distributor`) REFERENCES `distributor` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `produk_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_level_foreign` FOREIGN KEY (`id_level`) REFERENCES `level` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
