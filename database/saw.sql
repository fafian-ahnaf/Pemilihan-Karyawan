-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2024 at 06:16 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saw`
--

-- --------------------------------------------------------

--
-- Table structure for table `assessments`
--

CREATE TABLE `assessments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employe_id` bigint(20) UNSIGNED NOT NULL,
  `criteria_id` bigint(20) UNSIGNED NOT NULL,
  `weight` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assessments`
--

INSERT INTO `assessments` (`id`, `employe_id`, `criteria_id`, `weight`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, '2024-05-31 05:26:34', '2024-05-31 05:26:34'),
(2, 1, 2, 5, '2024-05-31 05:26:34', '2024-05-31 05:26:34'),
(3, 1, 3, 4, '2024-05-31 05:26:34', '2024-05-31 05:26:34'),
(4, 2, 1, 1, '2024-05-31 05:26:41', '2024-05-31 05:26:41'),
(5, 2, 2, 3, '2024-05-31 05:26:41', '2024-05-31 05:26:41'),
(6, 2, 3, 1, '2024-05-31 05:26:41', '2024-05-31 05:26:41'),
(7, 3, 1, 5, '2024-05-31 05:30:56', '2024-05-31 05:30:56'),
(8, 3, 2, 3, '2024-05-31 05:30:56', '2024-05-31 05:30:56'),
(9, 3, 3, 4, '2024-05-31 05:30:57', '2024-05-31 05:30:57'),
(10, 3, 4, 5, '2024-05-31 05:30:57', '2024-05-31 05:30:57'),
(11, 2, 4, 5, '2024-05-31 05:31:00', '2024-05-31 05:31:00'),
(12, 1, 4, 1, '2024-05-31 05:31:05', '2024-05-31 05:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `criterias`
--

CREATE TABLE `criterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `criteria_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` enum('benefit','cost') NOT NULL,
  `weight` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `criterias`
--

INSERT INTO `criterias` (`id`, `criteria_code`, `name`, `type`, `weight`, `created_at`, `updated_at`) VALUES
(1, 'C1', 'Kedisiplinan', 'benefit', 5, '2024-05-31 05:22:58', '2024-06-02 06:43:11'),
(2, 'C2', 'Penampilan Fisik', 'benefit', 4, '2024-05-31 05:23:09', '2024-06-02 06:56:10'),
(3, 'C3', 'Kejujuran', 'benefit', 3, '2024-05-31 05:23:22', '2024-06-02 07:00:17'),
(4, 'C4', 'Komunikasi', 'benefit', 3, '2024-05-31 05:29:40', '2024-06-02 07:07:03'),
(5, 'C5', 'Kerjasama', 'benefit', 4, '2024-06-02 07:04:47', '2024-06-02 07:07:55'),
(6, 'C6', 'Tanggung Jawab', 'benefit', 4, '2024-06-02 07:11:04', '2024-06-02 07:11:04');

-- --------------------------------------------------------

--
-- Table structure for table `employes`
--

CREATE TABLE `employes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `birth_place` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employes`
--

INSERT INTO `employes` (`id`, `full_name`, `gender`, `birth_place`, `birth_date`, `address`, `position`, `created_at`, `updated_at`) VALUES
(1, 'Denta', 'Male', 'A1', '2000-05-16', 'Jl. Mawar No. 10 Jakarta Selatan', 'Karyawan', '2024-05-31 05:23:45', '2024-06-02 07:16:09'),
(2, 'Bayu', 'Male', 'A2', '1998-09-21', 'Jl. Melati No. 5 Jakarta', 'Karyawan', '2024-05-31 05:23:59', '2024-06-02 07:17:09'),
(3, 'Soleh', 'Male', 'A3', '1999-05-31', 'Jl. Kenanga No. 15 Jakarta', 'Karyawan', '2024-05-31 05:30:32', '2024-06-02 07:18:16'),
(4, 'Idris', 'Male', 'A4', '2001-03-12', 'Jl. Anggrek No. 12 Jakarta', 'Karyawan', '2024-06-02 07:19:34', '2024-06-02 07:19:34'),
(5, 'Jeki', 'Male', 'A5', '2000-02-21', 'Jl. Anggrek No. 20 Jakarta', 'Karyawan', '2024-06-02 07:20:28', '2024-06-02 07:20:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_06_145808_create_criterias_table', 1),
(5, '2020_10_06_145833_create_sub_criterias_table', 1),
(6, '2020_10_07_094305_create_employes_table', 1),
(7, '2020_10_07_094525_create_assessments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_criterias`
--

CREATE TABLE `sub_criterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `criteria_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `weight` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_criterias`
--

INSERT INTO `sub_criterias` (`id`, `criteria_id`, `name`, `weight`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sangat Disiplin', 5, '2024-05-31 05:25:10', '2024-06-02 06:45:28'),
(2, 1, 'Disiplin', 4, '2024-05-31 05:25:19', '2024-06-02 06:45:55'),
(3, 1, 'Cukup Disiplin', 3, '2024-05-31 05:25:27', '2024-06-02 06:46:55'),
(4, 2, 'Sangat Rapih', 4, '2024-05-31 05:25:39', '2024-06-02 06:58:16'),
(5, 2, 'Rapih', 3, '2024-05-31 05:25:49', '2024-06-02 06:58:25'),
(6, 2, 'Kurang Rapih', 2, '2024-05-31 05:25:56', '2024-06-02 06:57:53'),
(7, 3, 'Sangat Jujur', 3, '2024-05-31 05:26:04', '2024-06-02 07:00:42'),
(8, 3, 'Jujur', 2, '2024-05-31 05:26:13', '2024-06-02 07:01:00'),
(9, 3, 'Tidak Jujur', 1, '2024-05-31 05:26:19', '2024-06-02 07:01:22'),
(10, 4, 'Sangat Baik', 3, '2024-05-31 05:29:51', '2024-06-02 07:07:18'),
(11, 4, 'Baik', 2, '2024-05-31 05:29:58', '2024-06-02 07:07:27'),
(13, 1, 'Kurang Disiplin', 2, '2024-06-02 06:47:41', '2024-06-02 06:47:41'),
(14, 1, 'Tidak Disiplin', 1, '2024-06-02 06:48:02', '2024-06-02 06:48:02'),
(15, 2, 'Tidak Rapih', 1, '2024-06-02 06:58:39', '2024-06-02 06:58:39'),
(16, 4, 'Tidak Baik', 1, '2024-06-02 07:04:05', '2024-06-02 07:04:05'),
(17, 5, 'Tidak Baik', 1, '2024-06-02 07:08:22', '2024-06-02 07:08:22'),
(18, 5, 'Kurang Baik', 2, '2024-06-02 07:08:44', '2024-06-02 07:08:44'),
(19, 5, 'Baik', 3, '2024-06-02 07:08:56', '2024-06-02 07:08:56'),
(20, 5, 'Sangat Baik', 4, '2024-06-02 07:09:20', '2024-06-02 07:09:20'),
(21, 6, 'Tidak Bertanggung Jawab', 1, '2024-06-02 07:11:30', '2024-06-02 07:11:30'),
(22, 6, 'Kurang Bertanggung Jawab', 2, '2024-06-02 07:11:55', '2024-06-02 07:11:55'),
(23, 6, 'Bertanggung Jawab', 3, '2024-06-02 07:12:11', '2024-06-02 07:12:11'),
(24, 6, 'Sangat Bertanggung Jawab', 4, '2024-06-02 07:12:28', '2024-06-02 07:12:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Ahnaf', 'fafian.ahnaf2003@gmail.com', NULL, '$2y$10$0WRbKaB2ey2gkOrf2eSU.u.pp4VH225VQeUe/qYByZNIRYsmaWSRm', NULL, '2024-06-02 06:36:22', '2024-06-02 06:36:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessments`
--
ALTER TABLE `assessments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assessments_employe_id_foreign` (`employe_id`),
  ADD KEY `assessments_criteria_id_foreign` (`criteria_id`);

--
-- Indexes for table `criterias`
--
ALTER TABLE `criterias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `criterias_criteria_code_unique` (`criteria_code`);

--
-- Indexes for table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `sub_criterias`
--
ALTER TABLE `sub_criterias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_criterias_criteria_id_foreign` (`criteria_id`);

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
-- AUTO_INCREMENT for table `assessments`
--
ALTER TABLE `assessments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `criterias`
--
ALTER TABLE `criterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employes`
--
ALTER TABLE `employes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_criterias`
--
ALTER TABLE `sub_criterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assessments`
--
ALTER TABLE `assessments`
  ADD CONSTRAINT `assessments_criteria_id_foreign` FOREIGN KEY (`criteria_id`) REFERENCES `criterias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assessments_employe_id_foreign` FOREIGN KEY (`employe_id`) REFERENCES `employes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_criterias`
--
ALTER TABLE `sub_criterias`
  ADD CONSTRAINT `sub_criterias_criteria_id_foreign` FOREIGN KEY (`criteria_id`) REFERENCES `criterias` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
