-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 07:20 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dairybackend`
--

-- --------------------------------------------------------

--
-- Table structure for table `delivery_records`
--

CREATE TABLE `delivery_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `fat` int(11) NOT NULL,
  `litre` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_records`
--

INSERT INTO `delivery_records` (`id`, `user_id`, `fat`, `litre`, `date`, `price`, `created_at`, `updated_at`) VALUES
(1, 2, 4, 4, '२०८०-०१-२३', 336, '2023-05-06 04:43:42', '2023-05-06 04:43:42'),
(2, 1, 4, 4, '२०८०-०१-२३', 336, '2023-05-06 04:43:59', '2023-05-06 04:43:59'),
(3, 5, 4, 4, '२०८०-०१-२३', 336, '2023-05-06 07:42:13', '2023-05-06 07:42:13'),
(4, 5, 4, 4, '२०८०-०१-२५', 336, '2023-05-07 23:09:35', '2023-05-07 23:09:35'),
(5, 1, 4, 6, '2080-01-28', 504, '2023-05-11 02:00:29', '2023-05-11 02:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sales` int(11) DEFAULT NULL,
  `income` int(11) DEFAULT NULL,
  `expenditure` int(11) DEFAULT NULL,
  `earning` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `earnings`
--

INSERT INTO `earnings` (`id`, `user_id`, `sales`, `income`, `expenditure`, `earning`, `created_at`, `updated_at`) VALUES
(1, 2, 4, 336, 0, 336, '2023-05-06 04:43:42', '2023-05-06 04:43:42'),
(2, 1, 4, 336, 0, 336, '2023-05-06 04:43:59', '2023-05-06 04:43:59'),
(3, 5, 4, 336, 0, 336, '2023-05-06 07:42:13', '2023-05-06 07:42:13'),
(4, 5, 8, 672, 0, 672, '2023-05-07 23:09:35', '2023-05-07 23:09:35'),
(5, 1, 10, 840, 0, 840, '2023-05-11 02:00:29', '2023-05-11 02:00:29'),
(6, 1, 10, 840, 1332, -492, '2023-05-11 04:23:53', '2023-05-11 04:23:53'),
(7, 1, 10, 840, 2664, -1824, '2023-05-11 04:24:27', '2023-05-11 04:24:27'),
(8, 1, 10, 840, 3996, -3156, '2023-05-11 04:24:55', '2023-05-11 04:24:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `farmer_orders`
--

CREATE TABLE `farmer_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `expenditure` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `farmer_orders`
--

INSERT INTO `farmer_orders` (`id`, `user_id`, `name`, `price`, `quantity`, `expenditure`, `created_at`, `updated_at`) VALUES
(1, 1, 'Buffalo Feed', 666, 2, 1332, '2023-05-11 04:23:53', '2023-05-11 04:23:53'),
(2, 1, 'Buffalo Feed', 666, 2, 1332, '2023-05-11 04:24:27', '2023-05-11 04:24:27'),
(3, 1, 'Buffalo Feed', 666, 2, 1332, '2023-05-11 04:24:55', '2023-05-11 04:24:55');

-- --------------------------------------------------------

--
-- Table structure for table `info_users`
--

CREATE TABLE `info_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `contact` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `info_users`
--

INSERT INTO `info_users` (`id`, `user_id`, `contact`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, 9867872978, 'parsa', '2023-05-06 03:33:07', '2023-05-06 03:33:07'),
(2, 2, 9867872978, 'parsa', '2023-05-06 03:37:32', '2023-05-06 03:37:32'),
(3, 3, 9867872978, 'parsa', '2023-05-06 03:37:37', '2023-05-06 03:37:37'),
(4, 4, 9867872978, 'parsa', '2023-05-06 03:37:44', '2023-05-06 03:37:44'),
(5, 5, 9867872978, 'parsa', '2023-05-06 03:39:18', '2023-05-06 03:39:18');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_27_080015_create_info_users_table', 1),
(6, '2023_05_01_080645_create_delivery_records_table', 1),
(7, '2023_05_01_085413_create_supply_items_table', 1),
(8, '2023_05_01_091105_create_farmer_orders_table', 1),
(9, '2023_05_01_093142_create_earnings_table', 1),
(10, '2023_05_06_091333_create_reset_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('kumarbhetwal25@gmail.com', 'tOAhTfGP57enLwuKJwpLimSl5kJ8k71sCfy2hVDw', '2023-05-06 03:33:20'),
('kumarbhetwal26@gmail.com', 'dKSBAPOfWik1bTy1O0Fyze1xaLxJ9BiGKvHgOlDP', '2023-05-06 03:41:45');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reset_tokens`
--

CREATE TABLE `reset_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reset_tokens`
--

INSERT INTO `reset_tokens` (`id`, `email`, `token`, `created_at`, `updated_at`) VALUES
(1, 'kumarbhetwal26@gmail.com', 'lKzUBQvnFuJaXsZJvUoABbTbIf53H5tkyqyb2OKq', '2023-05-06 04:17:47', '2023-05-06 04:17:47'),
(2, 'kumarbhetwal25@gmail.com', 'pPyVlSeneneOb0GVmvLtuUfOCuJEWFOjxnor3SPd', '2023-05-06 07:35:10', '2023-05-06 07:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `supply_items`
--

CREATE TABLE `supply_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supply_items`
--

INSERT INTO `supply_items` (`id`, `name`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Buffalo Feed', 'a', 666, '1683799317.jpg', '2023-05-11 04:16:57', '2023-05-11 04:16:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `utype` varchar(255) NOT NULL DEFAULT 'USR' COMMENT 'ADM for admin, USR for user ',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `utype`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kumar', 'kumarbhetwal25@gmail.com', 'USR', NULL, '$2y$10$uA8ijp6Up8Iikrc/FkcMOukID4DCiW9deR/Bl91977z.Raz.NQtUu', NULL, '2023-05-06 03:33:07', '2023-05-06 07:35:37'),
(2, 'roshan', 'roshan@gmail.com', 'USR', NULL, '$2y$10$hZskEyKnSUx/QSrKNI7Q0OvjvzOigQRhM9CdlS9cp7ZHIi4EGvjxa', NULL, '2023-05-06 03:37:32', '2023-05-06 04:16:31'),
(3, 'roshan', 'admin@gmail.com', 'ADM', NULL, '$2y$10$z/yyu0u2TSIZvRDHbxv9C.yrW77dFBrdl.xSil8hA3cxKgw6YzmA6', NULL, '2023-05-06 03:37:37', '2023-05-06 03:37:37'),
(4, 'roshan', 'ram@gmail.com', 'USR', NULL, '$2y$10$6wY8iKMcE7H/Hwv77JkhaOISEFYf919aG6WCUjN4dGQoTF2jnJAp6', NULL, '2023-05-06 03:37:44', '2023-05-06 03:37:44'),
(5, 'roshan', 'kumarbhetwal26@gmail.com', 'USR', NULL, '$2y$10$JyNg3rC40/XZQjhgsEQ82ufjjU0utVicnLKeRFr5u8IhpN9zV/AOm', NULL, '2023-05-06 03:39:18', '2023-05-06 04:18:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `delivery_records`
--
ALTER TABLE `delivery_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_records_user_id_foreign` (`user_id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `earnings_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `farmer_orders`
--
ALTER TABLE `farmer_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `farmer_orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `info_users`
--
ALTER TABLE `info_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `info_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reset_tokens`
--
ALTER TABLE `reset_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supply_items`
--
ALTER TABLE `supply_items`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `delivery_records`
--
ALTER TABLE `delivery_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farmer_orders`
--
ALTER TABLE `farmer_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `info_users`
--
ALTER TABLE `info_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reset_tokens`
--
ALTER TABLE `reset_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supply_items`
--
ALTER TABLE `supply_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `delivery_records`
--
ALTER TABLE `delivery_records`
  ADD CONSTRAINT `delivery_records_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `earnings`
--
ALTER TABLE `earnings`
  ADD CONSTRAINT `earnings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `farmer_orders`
--
ALTER TABLE `farmer_orders`
  ADD CONSTRAINT `farmer_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `info_users`
--
ALTER TABLE `info_users`
  ADD CONSTRAINT `info_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
