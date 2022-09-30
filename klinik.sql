-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2022 at 07:25 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klinik`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_obat`
--

CREATE TABLE `master_obat` (
  `obat_id` bigint(20) UNSIGNED NOT NULL,
  `nama_obat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_obat` bigint(20) DEFAULT NULL,
  `harga` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_obat`
--

INSERT INTO `master_obat` (`obat_id`, `nama_obat`, `satuan`, `jumlah_obat`, `harga`, `created_at`, `updated_at`) VALUES
(1, 'Panadolz', 'kaplet', 3, 20002, '2022-09-29 12:01:51', '2022-09-29 23:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `master_tindakan`
--

CREATE TABLE `master_tindakan` (
  `tindakan_id` bigint(20) UNSIGNED NOT NULL,
  `nama_tindakan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarif` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_tindakan`
--

INSERT INTO `master_tindakan` (`tindakan_id`, `nama_tindakan`, `tarif`, `created_at`, `updated_at`) VALUES
(2, 'Run', 200000, '2022-09-29 11:38:10', '2022-09-29 22:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `master_wilayah`
--

CREATE TABLE `master_wilayah` (
  `wilayah_id` bigint(20) UNSIGNED NOT NULL,
  `nama_wilayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_wilayah`
--

INSERT INTO `master_wilayah` (`wilayah_id`, `nama_wilayah`, `created_at`, `updated_at`) VALUES
(2, 'Madiun', '2022-09-29 11:07:07', '2022-09-29 11:07:07'),
(6, 'Ngawi', '2022-09-30 09:38:29', '2022-09-30 09:38:29');

-- --------------------------------------------------------

--
-- Table structure for table `menu_pasien`
--

CREATE TABLE `menu_pasien` (
  `pasien_id` bigint(20) UNSIGNED NOT NULL,
  `NIK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pasien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keluhan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pegawai_id` bigint(20) UNSIGNED NOT NULL,
  `wilayah_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_pasien`
--

INSERT INTO `menu_pasien` (`pasien_id`, `NIK`, `nama_pasien`, `no_phone`, `tanggal_lahir`, `jenis_kelamin`, `keluhan`, `pegawai_id`, `wilayah_id`, `created_at`, `updated_at`) VALUES
(17, '3213123', 'Suarez', '081321372', '2022-09-02', 'laki-laki', 'asd', 3, 2, '2022-09-30 09:44:51', '2022-09-30 09:44:51');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2022_09_29_173802_create_master_wilayah', 3),
(10, '2022_09_29_181445_create_master_tindakan', 5),
(12, '2022_09_29_184420_create_master_obat', 6),
(14, '2014_10_12_000000_create_users_table', 7),
(17, '2022_09_30_085837_create_menu_pasien_table', 8),
(21, '2022_09_30_105718_create_tindakan_dan_obat', 9),
(22, '2022_09_30_153116_create_tagihan', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('baguspahlefi2000@gmail.com', '$2y$10$IT3sbgAEIfUaQOUPbGOIMeY96sS8j98J56Sw/WbKuDaBQ5GfJepjO', '2022-09-29 11:42:57');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tagihan`
--

CREATE TABLE `tagihan` (
  `tagihan_id` bigint(20) UNSIGNED NOT NULL,
  `NIK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pasien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keluhan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pegawai_id` bigint(20) UNSIGNED NOT NULL,
  `wilayah_id` bigint(20) UNSIGNED NOT NULL,
  `tindakan_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obat_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_tindakan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_tagihan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tagihan`
--

INSERT INTO `tagihan` (`tagihan_id`, `NIK`, `nama_pasien`, `no_phone`, `tanggal_lahir`, `jenis_kelamin`, `keluhan`, `pegawai_id`, `wilayah_id`, `tindakan_id`, `obat_id`, `status_tindakan`, `total_tagihan`, `status_pembayaran`, `created_at`, `updated_at`) VALUES
(2, '3213123', 'Suarez', '081321372', '2022-09-02', 'laki-laki', 'asd', 3, 2, '2', '1', 'sudah', NULL, NULL, '2022-09-30 09:45:14', '2022-09-30 09:45:14');

-- --------------------------------------------------------

--
-- Table structure for table `tindakan_dan_obat`
--

CREATE TABLE `tindakan_dan_obat` (
  `tdo_id` bigint(20) UNSIGNED NOT NULL,
  `NIK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pasien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keluhan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pegawai_id` bigint(20) UNSIGNED NOT NULL,
  `wilayah_id` bigint(20) UNSIGNED NOT NULL,
  `tindakan_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `obat_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_tindakan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'belum',
  `total_tagihan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tindakan_dan_obat`
--

INSERT INTO `tindakan_dan_obat` (`tdo_id`, `NIK`, `nama_pasien`, `no_phone`, `tanggal_lahir`, `jenis_kelamin`, `keluhan`, `pegawai_id`, `wilayah_id`, `tindakan_id`, `obat_id`, `status_tindakan`, `total_tagihan`, `created_at`, `updated_at`) VALUES
(5, '3213123', 'Suarez', '081321372', '2022-09-02', 'laki-laki', 'asd', 3, 2, '2', '1', 'sudah', NULL, '2022-09-30 09:44:51', '2022-09-30 09:45:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NIP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wilayah_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pegawai',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `NIP`, `name`, `email`, `email_verified_at`, `password`, `wilayah_id`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '999999', 'bagus pahlefi', 'baguspahlefi2000@gmail.com', NULL, '$2y$10$lZUeAbQqFsWRS5c1CR4Q0.mpfONXLSRj0dqgjuirtowBulBwXqw5C', 2, 'admin', NULL, '2022-09-30 01:46:06', '2022-09-30 01:46:06'),
(3, '7777', 'ronaldo', 'ronaldo@gmail.com', NULL, '$2y$10$s1tQZJfR84vN28bi74q61uDlpVSFEKy3Zsp0SCjykjzSMLo4vhi1C', 6, 'pegawai', NULL, '2022-09-30 09:39:12', '2022-09-30 09:39:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `master_obat`
--
ALTER TABLE `master_obat`
  ADD PRIMARY KEY (`obat_id`);

--
-- Indexes for table `master_tindakan`
--
ALTER TABLE `master_tindakan`
  ADD PRIMARY KEY (`tindakan_id`);

--
-- Indexes for table `master_wilayah`
--
ALTER TABLE `master_wilayah`
  ADD PRIMARY KEY (`wilayah_id`);

--
-- Indexes for table `menu_pasien`
--
ALTER TABLE `menu_pasien`
  ADD PRIMARY KEY (`pasien_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tagihan`
--
ALTER TABLE `tagihan`
  ADD PRIMARY KEY (`tagihan_id`);

--
-- Indexes for table `tindakan_dan_obat`
--
ALTER TABLE `tindakan_dan_obat`
  ADD PRIMARY KEY (`tdo_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_obat`
--
ALTER TABLE `master_obat`
  MODIFY `obat_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_tindakan`
--
ALTER TABLE `master_tindakan`
  MODIFY `tindakan_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_wilayah`
--
ALTER TABLE `master_wilayah`
  MODIFY `wilayah_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu_pasien`
--
ALTER TABLE `menu_pasien`
  MODIFY `pasien_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tagihan`
--
ALTER TABLE `tagihan`
  MODIFY `tagihan_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tindakan_dan_obat`
--
ALTER TABLE `tindakan_dan_obat`
  MODIFY `tdo_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
