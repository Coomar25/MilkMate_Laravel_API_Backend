-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2023 at 12:17 PM
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
-- Database: `bca`
--
CREATE DATABASE IF NOT EXISTS `bca` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bca`;

-- --------------------------------------------------------

--
-- Table structure for table `displayrecord`
--

CREATE TABLE `displayrecord` (
  `id` int(255) NOT NULL,
  `rollno` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `division` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `displayrecord`
--

INSERT INTO `displayrecord` (`id`, `rollno`, `name`, `level`, `division`) VALUES
(1, 101, 'Kumar', 'BCA', 'First');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `ID` int(255) NOT NULL,
  `Rollno` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`ID`, `Rollno`, `Name`, `Address`) VALUES
(4, 101, 'Kumar', 'Parsa'),
(5, 101, 'Kumar', 'Parsa'),
(6, 101, 'Kumar', 'Parsa'),
(7, 101, 'Kumar', 'Parsa'),
(8, 101, 'Kumar', 'Parsa'),
(9, 101, 'Kumar', 'Parsa'),
(10, 101, 'Kumar', 'Parsa'),
(11, 101, 'Kumar', 'Parsa'),
(12, 101, 'Kumar', 'Parsa'),
(13, 101, 'Kumar', 'Parsa'),
(14, 101, 'Kumar', 'Parsa'),
(15, 101, 'Kumar', 'Parsa'),
(16, 102, 'Coo_Mar', 'parsa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `displayrecord`
--
ALTER TABLE `displayrecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `displayrecord`
--
ALTER TABLE `displayrecord`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Database: `dairybackend`
--
CREATE DATABASE IF NOT EXISTS `dairybackend` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dairybackend`;

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
(1, 2, 4, 4, '२०८०-०१-२१', 336, '2023-05-04 06:45:26', '2023-05-04 06:45:26'),
(2, 2, 4, 4, '२०८०-०१-२१', 336, '2023-05-04 06:46:38', '2023-05-04 06:46:38'),
(3, 2, 3, 3, '२०८०-०१-२१', 228, '2023-05-04 06:47:50', '2023-05-04 06:47:50'),
(4, 2, 4, 4, '२०८०-०१-२१', 336, '2023-05-04 06:53:29', '2023-05-04 06:53:29');

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
(1, 2, 4, 336, 0, 336, '2023-05-04 06:45:26', '2023-05-04 06:45:26'),
(2, 2, 8, 672, 0, 672, '2023-05-04 06:46:38', '2023-05-04 06:46:38'),
(3, 2, 11, 900, 0, 900, '2023-05-04 06:47:50', '2023-05-04 06:47:50'),
(4, 2, 15, 1236, 0, 1236, '2023-05-04 06:53:29', '2023-05-04 06:53:29'),
(5, 2, 15, 1236, 344, 892, '2023-05-04 06:56:00', '2023-05-04 06:56:00'),
(6, 2, 15, 1236, 1032, 204, '2023-05-04 07:54:03', '2023-05-04 07:54:03'),
(7, 2, 15, 1236, 2064, -828, '2023-05-05 04:21:21', '2023-05-05 04:21:21');

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
(1, 2, 'produr', 344, 1, 344, '2023-05-04 06:56:00', '2023-05-04 06:56:00'),
(2, 2, 'produr', 344, 2, 688, '2023-05-04 07:54:03', '2023-05-04 07:54:03'),
(3, 2, 'produr', 344, 3, 1032, '2023-05-05 04:21:21', '2023-05-05 04:21:21');

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
(1, 1, 9867872978, 'parsa', '2023-05-04 06:44:11', '2023-05-04 06:44:11'),
(2, 2, 9867872978, 'parsa', '2023-05-04 06:45:07', '2023-05-04 06:45:07');

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
(9, '2023_05_01_093142_create_earnings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'produr', 'sdfasadfasfs', 344, '1683204028.jpg', '2023-05-04 06:55:28', '2023-05-04 06:55:28');

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
(1, 'admin', 'admin@gmail.com', 'ADM', NULL, '$2y$10$MaHEKzggz/.HS7sNOVfgVeLaCVGgMdTGEGwGI763jOhPUdeyA0fzm', NULL, '2023-05-04 06:44:11', '2023-05-04 06:44:11'),
(2, 'Kumar Chaudhary', 'kumarbhetwal25@gmail.com', 'USR', NULL, '$2y$10$wGdcAzKSPHzzwhBbB5tiseZdn5hTZaPl6u5fl9Nm6vjTFXBQz9mju', NULL, '2023-05-04 06:45:07', '2023-05-04 06:45:07');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supply_items`
--
ALTER TABLE `supply_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
--
-- Database: `dfsms`
--
CREATE DATABASE IF NOT EXISTS `dfsms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dfsms`;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(5) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` char(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `UpdationDate`) VALUES
(1, 'Admin', 'admin', 1234567899, 'admin@test.com', 'f925916e2754e5e03f75dd58a5733251', '2023-02-27 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `CategoryCode` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `CategoryCode`, `PostingDate`) VALUES
(2, 'Butter', 'BT01', '2023-03-09 18:30:00'),
(3, 'Bread', 'BD01', '2023-03-09 18:30:00'),
(4, 'Paneer', 'PN01', '2023-03-09 18:30:00'),
(5, 'Soya', 'SY01', '2023-03-09 18:30:00'),
(7, 'Ghee', 'GH01', '2023-03-09 18:30:00'),
(8, 'Panner', 'PN01', '2023-03-19 15:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `id` int(11) NOT NULL,
  `CompanyName` varchar(150) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`id`, `CompanyName`, `PostingDate`) VALUES
(1, 'Amul', '2023-03-14 03:30:51'),
(2, 'Mother Diary', '2023-03-14 03:30:51'),
(3, 'Patanjali', '2023-03-14 03:30:51'),
(4, 'Namaste India', '2023-03-14 03:30:51'),
(10, 'Paras', '2023-03-14 03:30:51'),
(11, 'Ananda', '2023-03-19 15:48:27'),
(12, 'Gharwal', '2023-03-19 15:48:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `id` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `InvoiceNumber` int(11) DEFAULT NULL,
  `CustomerName` varchar(150) DEFAULT NULL,
  `CustomerContactNo` bigint(12) DEFAULT NULL,
  `PaymentMode` varchar(100) DEFAULT NULL,
  `InvoiceGenDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`id`, `ProductId`, `Quantity`, `InvoiceNumber`, `CustomerName`, `CustomerContactNo`, `PaymentMode`, `InvoiceGenDate`) VALUES
(1, 1, 1, 270491112, 'Anuj Kumar', 1425362541, 'cash', '2023-03-19 15:47:14'),
(2, 5, 1, 270491112, 'Anuj Kumar', 1425362541, 'cash', '2023-03-19 15:47:14'),
(3, 7, 1, 464760346, 'Rahul Kumar', 12345632145, 'cash', '2023-03-19 15:49:47'),
(4, 8, 1, 464760346, 'Rahul Kumar', 12345632145, 'cash', '2023-03-19 15:49:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `CompanyName` varchar(150) DEFAULT NULL,
  `ProductName` varchar(150) DEFAULT NULL,
  `ProductPrice` decimal(10,0) DEFAULT current_timestamp(),
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`id`, `CategoryName`, `CompanyName`, `ProductName`, `ProductPrice`, `PostingDate`, `UpdationDate`) VALUES
(1, 'Milk', 'Amul', 'Toned milk 500ml', '22', '2023-03-19 15:46:13', NULL),
(2, 'Milk', 'Amul', 'Toned milk 1ltr', '42', '2023-03-19 15:46:13', '2023-03-19 15:46:31'),
(3, 'Milk', 'Mother Diary', 'Full Cream Milk 500ml', '26', '2023-03-19 15:46:21', NULL),
(4, 'Milk', 'Mother Diary', 'Full Cream Milk 1ltr', '50', '2023-03-19 15:46:21', NULL),
(5, 'Butter', 'Amul', 'Butter 100mg', '46', '2023-03-19 15:46:21', NULL),
(6, 'Bread', 'Patanjali', 'Sandwich Bread', '30', '2023-03-19 15:46:13', '2023-03-19 15:46:36'),
(7, 'Ghee', 'Paras', 'Ghee 500mg', '350', '2023-03-19 15:46:21', NULL),
(8, 'Panner', 'Ananda', 'Paneer 250gm', '80', '2023-03-19 15:49:21', NULL),
(9, 'Milk', 'Mother Diary', 'Nike', '12', '2023-04-10 18:30:53', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `ironmanverse`
--
CREATE DATABASE IF NOT EXISTS `ironmanverse` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ironmanverse`;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_records`
--

CREATE TABLE `delivery_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `farmer_id` bigint(20) UNSIGNED NOT NULL,
  `fat` int(11) NOT NULL,
  `litre` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_records`
--

INSERT INTO `delivery_records` (`id`, `farmer_id`, `fat`, `litre`, `date`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 20, 8, 1680, '2023-05-01 00:38:55', '2023-05-01 00:38:55'),
(2, 1, 4, 20, 8, 1680, '2023-05-01 00:39:11', '2023-05-01 00:39:11'),
(3, 1, 4, 20, 8, 1680, '2023-05-01 00:40:42', '2023-05-01 00:40:42'),
(4, 1, 4, 20, 8, 1680, '2023-05-01 00:41:35', '2023-05-01 00:41:35'),
(5, 1, 4, 20, 8, 1680, '2023-05-01 00:41:40', '2023-05-01 00:41:40'),
(6, 1, 4, 20, 8, 1680, '2023-05-01 00:50:28', '2023-05-01 00:50:28'),
(7, 1, 4, 20, 8, 1680, '2023-05-01 00:51:07', '2023-05-01 00:51:07'),
(8, 1, 4, 20, 8, 1680, '2023-05-01 00:52:32', '2023-05-01 00:52:32'),
(9, 2, 4, 20, 8, 1680, '2023-05-01 00:54:24', '2023-05-01 00:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `farmer_id` bigint(20) UNSIGNED NOT NULL,
  `income` int(11) DEFAULT NULL,
  `expenditure` int(11) DEFAULT NULL,
  `earning` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `earnings`
--

INSERT INTO `earnings` (`id`, `farmer_id`, `income`, `expenditure`, `earning`, `created_at`, `updated_at`) VALUES
(1, 1, 1680, 0, 1680, '2023-05-01 00:38:55', '2023-05-01 00:38:55'),
(2, 1, 3360, 0, 3360, '2023-05-01 00:39:11', '2023-05-01 00:39:11'),
(3, 1, 6720, 0, 6720, '2023-05-01 00:41:35', '2023-05-01 00:41:35'),
(4, 1, 8400, 500, 7900, '2023-05-01 00:47:29', '2023-05-01 00:47:29'),
(5, 1, 8400, 1000, 7400, '2023-05-01 00:47:53', '2023-05-01 00:47:53'),
(6, 1, 11760, 1000, 10760, '2023-05-01 00:51:07', '2023-05-01 00:51:07'),
(7, 1, 13440, 1000, 12440, '2023-05-01 00:52:32', '2023-05-01 00:52:32'),
(8, 2, 1680, 0, 1680, '2023-05-01 00:54:24', '2023-05-01 00:54:24');

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
-- Table structure for table `farmers`
--

CREATE TABLE `farmers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `farmers`
--

INSERT INTO `farmers` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'kumar', 'kumarbhetwal25@gmail.com', '$2y$10$igwqHH8hfHEo5hW9tR5kD./Gi0BfG9jPflTM6qmiptciW6O1oKnyK', '2023-05-01 00:38:44', '2023-05-01 00:38:44'),
(2, 'kumar', 'kumarbhetwal26@gmail.com', '$2y$10$FWG.wqZWit.w0XoiNFjLEuJ1NR9yY1FoEJHnB6e3WyJCT8mVHHIli', '2023-05-01 00:53:39', '2023-05-01 00:53:39');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_contacts`
--

CREATE TABLE `farmer_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `farmer_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `farmer_contacts`
--

INSERT INTO `farmer_contacts` (`id`, `farmer_id`, `address`, `contact`, `created_at`, `updated_at`) VALUES
(1, 1, 'parsa', '11111111', '2023-05-01 00:38:44', '2023-05-01 00:38:44'),
(2, 2, 'parsa', '11111111', '2023-05-01 00:53:39', '2023-05-01 00:53:39');

-- --------------------------------------------------------

--
-- Table structure for table `farmer__orders`
--

CREATE TABLE `farmer__orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `farmer_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `expenditure` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `farmer__orders`
--

INSERT INTO `farmer__orders` (`id`, `farmer_id`, `name`, `price`, `quantity`, `expenditure`, `created_at`, `updated_at`) VALUES
(1, 1, 'First supply order', 500, 1, 500, '2023-05-01 00:47:29', '2023-05-01 00:47:29'),
(2, 1, 'First supply order', 500, 1, 500, '2023-05-01 00:47:52', '2023-05-01 00:47:52');

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
(5, '2023_04_08_043239_add_cols_to_users_table', 1),
(6, '2023_04_30_071757_create_farmers_table', 1),
(7, '2023_04_30_072041_create_farmer_contacts_table', 1),
(8, '2023_04_30_093624_create_delivery_records_table', 1),
(9, '2023_04_30_115331_create_suppyitems_table', 1),
(10, '2023_04_30_120916_create_farmer__orders_table', 1),
(11, '2023_05_01_035231_create_earnings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `suppyitems`
--

CREATE TABLE `suppyitems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1:Active and 2:Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `delivery_records`
--
ALTER TABLE `delivery_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_records_farmer_id_foreign` (`farmer_id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `earnings_farmer_id_foreign` (`farmer_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `farmers`
--
ALTER TABLE `farmers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmer_contacts`
--
ALTER TABLE `farmer_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `farmer_contacts_farmer_id_foreign` (`farmer_id`);

--
-- Indexes for table `farmer__orders`
--
ALTER TABLE `farmer__orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `farmer__orders_farmer_id_foreign` (`farmer_id`);

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
-- Indexes for table `suppyitems`
--
ALTER TABLE `suppyitems`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- AUTO_INCREMENT for table `farmers`
--
ALTER TABLE `farmers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `farmer_contacts`
--
ALTER TABLE `farmer_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `farmer__orders`
--
ALTER TABLE `farmer__orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppyitems`
--
ALTER TABLE `suppyitems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `delivery_records`
--
ALTER TABLE `delivery_records`
  ADD CONSTRAINT `delivery_records_farmer_id_foreign` FOREIGN KEY (`farmer_id`) REFERENCES `farmers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `earnings`
--
ALTER TABLE `earnings`
  ADD CONSTRAINT `earnings_farmer_id_foreign` FOREIGN KEY (`farmer_id`) REFERENCES `farmers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `farmer_contacts`
--
ALTER TABLE `farmer_contacts`
  ADD CONSTRAINT `farmer_contacts_farmer_id_foreign` FOREIGN KEY (`farmer_id`) REFERENCES `farmers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `farmer__orders`
--
ALTER TABLE `farmer__orders`
  ADD CONSTRAINT `farmer__orders_farmer_id_foreign` FOREIGN KEY (`farmer_id`) REFERENCES `farmers` (`id`) ON DELETE CASCADE;
--
-- Database: `modern`
--
CREATE DATABASE IF NOT EXISTS `modern` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `modern`;

-- --------------------------------------------------------

--
-- Table structure for table `contact_message`
--

CREATE TABLE `contact_message` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_message`
--

INSERT INTO `contact_message` (`id`, `name`, `email`, `message`) VALUES
(21, 'Kumar Chaudhary', 'kumarbhetwal25@gmail.com', 'Helle there'),
(22, 'Kumar Chaudhary', 'kumarbhetwal25@gmail.com', 'Helle there');

-- --------------------------------------------------------

--
-- Table structure for table `new_admission`
--

CREATE TABLE `new_admission` (
  `id` int(255) NOT NULL,
  `stdname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `age` int(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `csei` varchar(255) NOT NULL,
  `ccei` int(255) NOT NULL,
  `cemebs` int(255) NOT NULL,
  `aggrement` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_admission`
--

INSERT INTO `new_admission` (`id`, `stdname`, `mname`, `fname`, `address`, `age`, `gender`, `csei`, `ccei`, `cemebs`, `aggrement`, `status`) VALUES
(14, 'Roshan Karki', 'roshan mom name', 'fathername', 'kumroj', 23, 'male', 'dasiy', 7, 7, 'Agree', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(255) NOT NULL,
  `day` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `monthyear` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `noticetitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `noticemessage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `day`, `monthyear`, `noticetitle`, `noticemessage`) VALUES
(2, '३', 'मंगल, चैत, २०७९', 'छैटौँ, साताँै, आठौँ दिन जमिन्दारको प्राइभेट', 'पाँचौँ दिन टोली प्रमुखको घर अर्थात् आफ्नो गाउँको जमिन्दारको घरमा एक ट्रक मालसामान आएको देख्दा सुकुम्वासीहरूले हाम्रो निम्ति आएका हुन् भनेर आ-आफैमा निष्कर्ष निकालेपछि खुसीको निश्चित सीमा रहेन ।'),
(3, '१५', 'बुध, चैत, २०७९', 'SEE Exam', '“सानैदेखि नेपाली माध्यमबाट पढ्ने बानीले गर्दा सुरुमा धेरै गाह्रो पर्यो तर … ।” हरिको उत्तर पूण रूपले आउन नपाउँदै बीचैमा एक वयस्कले सल्लाह दियो, “अङ्ग्रेजीको परीक्षा नेपालीमा नै दिए भैहाल्थ्यो नि बाबु ।” हरि केही बोल्न सकेन ।'),
(5, '८', 'बुध, चैत, २०७९', 'New Year', 'Lets JUmp in'),
(7, '२४', 'बिही, चैत, २०७९', 'SEE Exam', 'adfasf'),
(11, '३०', 'बिही, चैत, २०७९', 'New year ..........................', 'You must need to present ');

-- --------------------------------------------------------

--
-- Table structure for table `student_achievment`
--

CREATE TABLE `student_achievment` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gpa` float NOT NULL,
  `achievmemt` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quote` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_achievment`
--

INSERT INTO `student_achievment` (`id`, `name`, `gpa`, `achievmemt`, `image`, `quote`) VALUES
(162, 'Kumar Chaudhary', 3.65, 'Web Developer', 'fotor_2023-4-5_17_56_47.png', '\"BCA student by degree, but a web developer by passion - bridging the gap between theoretical knowledge and practical skills.\"');

-- --------------------------------------------------------

--
-- Table structure for table `student_users`
--

CREATE TABLE `student_users` (
  `studentid` int(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_users`
--

INSERT INTO `student_users` (`studentid`, `password`) VALUES
(34536, '346535643'),
(352345, '23532532'),
(3463463, '346534646'),
(23453245, '2345345345'),
(23532453, '234553534'),
(1343324324, '11111111'),
(2147483647, '11111111');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_forum`
--

CREATE TABLE `teacher_forum` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `quote` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_forum`
--

INSERT INTO `teacher_forum` (`id`, `name`, `image`, `post`, `quote`, `category`) VALUES
(28, 'Ram Chandra Regmi', 'to9nrn6h.png', 'Nepali Teacher', 'optional', 'dynamic'),
(32, 'Rudra Regmi', 'fotor_2023-4-5_18_12_10.png', 'Vice Principal', '', 'static'),
(33, 'Ganesh Sir', 'fotor_2023-4-5_18_14_11.png', 'Science Teacher', '', 'static'),
(34, 'Narendra Poudel', 'fotor_2023-4-5_18_17_4.png', 'Nepali Teacher', '', 'static'),
(35, 'Sita Acharya', 'fotor_2023-4-5_18_19_9.png', 'Health Teacher', '', 'static'),
(37, 'Paras Rimal', '329323652_954520212185884_7258114890551341671_n.jpg', 'Math Teacher', '', 'dynamic'),
(38, 'Suman Uprety', '37517914_2018327194867546_831638803901841408_n.jpg', 'English Teacher', '', 'dynamic');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_login`
--

CREATE TABLE `teacher_login` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_login`
--

INSERT INTO `teacher_login` (`id`, `username`, `password`, `usertype`) VALUES
(1, 'admin', 'admin', 'admin'),
(5, 'user', 'user', 'user'),
(6, 'kumar', 'kumar', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_message`
--
ALTER TABLE `contact_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_admission`
--
ALTER TABLE `new_admission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_achievment`
--
ALTER TABLE `student_achievment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_users`
--
ALTER TABLE `student_users`
  ADD PRIMARY KEY (`studentid`);

--
-- Indexes for table `teacher_forum`
--
ALTER TABLE `teacher_forum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_login`
--
ALTER TABLE `teacher_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_message`
--
ALTER TABLE `contact_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `new_admission`
--
ALTER TABLE `new_admission`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student_achievment`
--
ALTER TABLE `student_achievment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `student_users`
--
ALTER TABLE `student_users`
  MODIFY `studentid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- AUTO_INCREMENT for table `teacher_forum`
--
ALTER TABLE `teacher_forum`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `teacher_login`
--
ALTER TABLE `teacher_login`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `newpassportpackage`
--
CREATE DATABASE IF NOT EXISTS `newpassportpackage` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `newpassportpackage`;

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'BwPHpFOP2eDGeY7lGmT98xJNH2oxfaMHv99Sg10C', NULL, 'http://localhost', 1, 0, 0, '2023-04-10 05:31:35', '2023-04-10 05:31:35'),
(2, NULL, 'Laravel Password Grant Client', '35FmzFf80Y56o5HP059iltgxyWyXMhX8zPqhUeYR', 'users', 'http://localhost', 0, 1, 0, '2023-04-10 05:31:35', '2023-04-10 05:31:35');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-04-10 05:31:35', '2023-04-10 05:31:35');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(5, 'kumar', 'krmar@gmail', NULL, '11111111', NULL, '2023-04-10 06:07:54', '2023-04-10 06:07:54'),
(6, 'Admin User', 'admin@gmail.com', '2023-04-11 00:43:52', '$2y$10$qUc/SgrPVe860s2alP.Kx.XX7CZaZHB9ZGHu88TgN7s4QKuDhqxMS', 'z85XiPBEXi', '2023-04-11 00:43:53', '2023-04-11 00:43:53');

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"reactcrudapi\",\"table\":\"users\"},{\"db\":\"reactcrudapi\",\"table\":\"new_users\"},{\"db\":\"reactcrudapi\",\"table\":\"newusers\"},{\"db\":\"ironmanverse\",\"table\":\"users\"},{\"db\":\"ironmanverse\",\"table\":\"personal_access_tokens\"},{\"db\":\"bca\",\"table\":\"displayrecord\"},{\"db\":\"bca\",\"table\":\"tblstudent\"},{\"db\":\"bca\",\"table\":\"tblStudent\"},{\"db\":\"newpassportpackage\",\"table\":\"users\"},{\"db\":\"passportpackage\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'reactcrudapi', 'users', '{\"sorted_col\":\"`users`.`contact` ASC\"}', '2023-04-24 17:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-04-25 00:50:49', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `reactcrudapi`
--
CREATE DATABASE IF NOT EXISTS `reactcrudapi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `reactcrudapi`;

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
(5, '2023_04_24_180800_create_new_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `new_users`
--

CREATE TABLE `new_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `contact` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user' COMMENT 'user or admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `new_users`
--

INSERT INTO `new_users` (`id`, `user_id`, `contact`, `address`, `role`, `created_at`, `updated_at`) VALUES
(2, 12, 11111111, 'parsa', 'user', '2023-04-26 09:39:37', '2023-04-26 09:39:37'),
(3, 13, 11111111, 'parsa', 'user', '2023-04-26 10:31:11', '2023-04-26 10:31:11'),
(4, 14, 11111111, 'parsa', 'user', '2023-04-26 11:34:38', '2023-04-26 11:34:38'),
(5, 15, 11111111, 'parsa', 'user', '2023-04-26 11:38:59', '2023-04-26 11:38:59'),
(6, 16, 11111111, 'parsa', 'user', '2023-04-26 12:04:55', '2023-04-26 12:04:55'),
(7, 17, 11111111, 'parsa', 'user', '2023-04-26 12:28:50', '2023-04-26 12:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 11, 'token@gmail.com', '08fcb89d9940a0b0cf6ce8e10e854b346431fca48bf1880c1d68b57280d582df', '[\"*\"]', NULL, NULL, '2023-04-26 09:32:35', '2023-04-26 09:32:35'),
(2, 'App\\Models\\User', 12, 'newuser@gmail.com', '88e637dab51d2a7ddfd2d41e630875d34b49c282429495a086e889dc198fd3cc', '[\"*\"]', NULL, NULL, '2023-04-26 09:39:37', '2023-04-26 09:39:37'),
(8, 'App\\Models\\User', 17, 'helllo@gmail.com', 'b23143bcd33108e9a6d06e7777774e58b526f0528fac33611dc5ad52c166dbba', '[\"*\"]', NULL, NULL, '2023-04-26 12:32:36', '2023-04-26 12:32:36'),
(9, 'App\\Models\\User', 17, 'helllo@gmail.com', 'ec0a01bb65a39438c8e044e8a986af2a8b98282eccee861a5822663dee1e9fdc', '[\"*\"]', NULL, NULL, '2023-04-26 12:33:16', '2023-04-26 12:33:16');

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
(1, 'Tess Heidenreich IV', 'victoria.bauch@example.org', '2023-04-26 09:31:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JYlO4iV5uh', '2023-04-26 09:31:05', '2023-04-26 09:31:05'),
(2, 'Prof. David Monahan', 'bobbie.grady@example.net', '2023-04-26 09:31:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'atzonGto5l', '2023-04-26 09:31:05', '2023-04-26 09:31:05'),
(3, 'Creola Keeling I', 'tpurdy@example.com', '2023-04-26 09:31:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QOJBghu5Ty', '2023-04-26 09:31:05', '2023-04-26 09:31:05'),
(4, 'Ms. Anabel Will', 'evie.mraz@example.net', '2023-04-26 09:31:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RG6I3gY5Id', '2023-04-26 09:31:05', '2023-04-26 09:31:05'),
(5, 'Yasmeen Wisozk', 'othiel@example.org', '2023-04-26 09:31:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LkXjyviObo', '2023-04-26 09:31:05', '2023-04-26 09:31:05'),
(6, 'Miss Kenna Runolfsdottir DVM', 'sigmund81@example.net', '2023-04-26 09:31:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bauYaIJYff', '2023-04-26 09:31:05', '2023-04-26 09:31:05'),
(7, 'Theodore Greenholt', 'iheidenreich@example.com', '2023-04-26 09:31:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '73uNFerb5z', '2023-04-26 09:31:05', '2023-04-26 09:31:05'),
(8, 'Ms. Jaclyn Bergstrom I', 'junior.nitzsche@example.org', '2023-04-26 09:31:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7nSdVTlPMl', '2023-04-26 09:31:05', '2023-04-26 09:31:05'),
(9, 'Maye Roob', 'ledner.domenica@example.net', '2023-04-26 09:31:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9qYu5b1uch', '2023-04-26 09:31:05', '2023-04-26 09:31:05'),
(10, 'Hosea Macejkovic', 'collins.rosanna@example.com', '2023-04-26 09:31:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OIxm8CjbtH', '2023-04-26 09:31:05', '2023-04-26 09:31:05'),
(12, 'New User', 'newuser@gmail.com', NULL, '11111111', NULL, '2023-04-26 09:39:37', '2023-04-26 09:39:37'),
(13, 'New User', 'newuser121@gmail.com', NULL, '11111111', NULL, '2023-04-26 10:31:11', '2023-04-26 10:31:11'),
(14, 'New User', 'newuser1@gmail.com', NULL, '11111111', NULL, '2023-04-26 11:34:38', '2023-04-26 11:34:38'),
(15, 'New User', 'newuser1232@gmail.com', NULL, '11111111', NULL, '2023-04-26 11:38:59', '2023-04-26 11:38:59'),
(16, 'New User', 'new@gmail.com', NULL, '11111111', NULL, '2023-04-26 12:04:55', '2023-04-26 12:04:55'),
(17, 'New User', 'helllo@gmail.com', NULL, '$2y$10$Jx84Fg2wB48UN/SfPa2UlOD.kN.PnbtvFNtGZoOmq2GGLlGf35Rqi', NULL, '2023-04-26 12:28:50', '2023-04-26 12:28:50');

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_users`
--
ALTER TABLE `new_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `new_users_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `new_users`
--
ALTER TABLE `new_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `new_users`
--
ALTER TABLE `new_users`
  ADD CONSTRAINT `new_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
--
-- Database: `shop_db`
--
CREATE DATABASE IF NOT EXISTS `shop_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shop_db`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(2, 'kumar', 'kumar');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(31, 7, 5, 'Ramailo Series Book 7', 300, 1, '1111.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 1, 'kumar', 'kumarbhetwal25@gmail.com', '9867872978', 'hello there'),
(2, 5, 'kumar', 'hari@gmail.com', '9876543321', 'Hello There');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(12, 7, 'Kumar Chaudhary', '988617512', 'ram@gmail.com', 'cash on delivery', 'flat no. narayangha, khairahani, chitwan, bagmati, nepal - 8408', 'Ramailo Series Book 7 (300 x 1) - Nepali Niyatra (800 x 4) - ', 3500, '2022-12-05', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(5, 'Ramailo Series Book 7', 'Top excellent book series for learning purpose', 300, '1111.jpg', '1111.jpg', '1111.jpg'),
(6, 'Nepali Niyatra', 'This is a collections of travelogues of various writers. The writers whose essays are included - Gobindaprasad Shrestha, Nirmohi Vyas, Vyakul Pathak, Sharada Sharma, Gangaprasad Upreti.\r\n, Narendraraj Prasai, Prakash A. Raj, Dr. Ram Dayal Rakesh, Shri Om Shrestha, Yuvaraj Nayaghare, Yadav Kharel, Dharmendra Jha, Tana Sharma, Karna Shakya and Kamal Dixit.', 800, '111.jpg', '111.jpg', '111.jpg'),
(7, 'Notebook', 'Sampling Purpose', 1200, 'notebook1.webp', 'notebook.webp', 'notebook2.webp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'kumar', 'kumarbhetwal25@gmail.com', 'a642a77abd7d4f51bf9226ceaf891fcbb5b299b8'),
(5, 'hari', 'hari@gmail.com', 'a642a77abd7d4f51bf9226ceaf891fcbb5b299b8'),
(7, 'Ram', 'ram@gmail.com', '11111111'),
(8, 'Unknown', 'unknown@gmail.com', '11111111'),
(9, 'susmeta', 'susmeta@gamil.com', '11111111'),
(10, 'Kumar Chaudhary', 'Kumarchaudhary@gmail.com', '88888888');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `price` (`price`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `wishlist_ibfk_2` (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `products` (`id`);
--
-- Database: `spiderverse`
--
CREATE DATABASE IF NOT EXISTS `spiderverse` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `spiderverse`;

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_04_05_142220_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0JNQ1sbq3GCb8UgUIzqvVoM4nN9Nsyv5Z66tGSrW', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidDB5MEdxSUNTWDdTR2dqWEtLa0dPdzQ2Q0RCaTRqMFo0eURSNUFOSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9vcmRlcml0ZW0iO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGhsL3hzaDh3MXFWR3NRYXprdUQvUy5YNTN4NVFWMlFTTURTQmwwWi5QcjBrbkVsdEdLYUdPIjt9', 1680714809),
('7RpSxiF6Bp3m6ySjA2Y7DrB8H2YYVJB99JyMafYv', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiNTAwUnlRZEdwQThNRnJDbHY2UVl6T0lsdEFKaktROFhVN2E0N3ZoQSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM1OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvdXNlcmRhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkaGwveHNoOHcxcVZHc1Fhemt1RC9TLlg1M3g1UVYyUVNNRFNCbDBaLlByMGtuRWx0R0thR08iO30=', 1680713843),
('96GQTN3nB5U2RLVtybfeIR0gl8lXLgSI5YM6NkH4', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoid25kTTZkV2IybUtXeXFRSEdFNXlyZHpxaklFTndXZnBoWmE4ZGU3cCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9vcmRlcml0ZW0iO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGhsL3hzaDh3MXFWR3NRYXprdUQvUy5YNTN4NVFWMlFTTURTQmwwWi5QcjBrbkVsdEdLYUdPIjt9', 1680926754),
('acSXZ6gkSWUVHxlz20oy7q7dQAlR0SEtiTo5fCSb', 1, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQmo2djdJbktyQVpIYjhZVlA2dG4wVlJGb2lxd200ZDJqVFNoVFcxNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9vcmRlcml0ZW0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGhsL3hzaDh3MXFWR3NRYXprdUQvUy5YNTN4NVFWMlFTTURTQmwwWi5QcjBrbkVsdEdLYUdPIjt9', 1680744996),
('tdHXG0gE0EzH5wPzoWWYreEgH4zC6jZ0PaT7vRpL', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidHVEVkdtc2lDZHh5ODdtOHE2ODFqRE1KWXVpeDlGMG9yUzZ5SWZTaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9vcmRlcml0ZW0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGhsL3hzaDh3MXFWR3NRYXprdUQvUy5YNTN4NVFWMlFTTURTQmwwWi5QcjBrbkVsdEdLYUdPIjt9', 1682519375),
('y5q5yFzA6pPijobnfQL1QZylJUbiN0yCWGaGRcEX', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMXA1WGIwN0FHZ3F6RndDUGxUMzFRV0daVlIyNUc0aTFIaWEyRWtNbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9vcmRlcml0ZW0iO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGhsL3hzaDh3MXFWR3NRYXprdUQvUy5YNTN4NVFWMlFTTURTQmwwWi5QcjBrbkVsdEdLYUdPIjt9', 1680714715);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `utype` varchar(255) NOT NULL DEFAULT 'USR' COMMENT 'ADM for admin and USR for User',
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `utype`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Kumar Chaudhary', 'USR', 'kumarbhetwal25@gmail.com', NULL, '$2y$10$hl/xsh8w1qVGsQazkuD/S.X53x5QV2QSMDSBl0Z.Pr0knEltGKaGO', 'eyJpdiI6Ik5BS1EwNlBya0V3T2YyOVZTbGd1eVE9PSIsInZhbHVlIjoiVEhsT2tieDBjMmFVSC9YSGs4QVhVUzl0OTMrTDNPV0hDc3BvaDJuWml4VT0iLCJtYWMiOiJiMzFhNmI1ODhhZjA0NjIxZjUxN2IyZmFlYjg1NmRmMWRiYWUwODg5NTYyN2IzNjdlZWY5ZjQwNDdhYjZlNzVjIiwidGFnIjoiIn0=', 'eyJpdiI6Im9qTkVvRUNGdGtrSGVtQXNJZVVZQmc9PSIsInZhbHVlIjoidHFzYkVmZ0ZYV3VtTHNaL1hITXNxZUVOSFlJbktUSWZBb1pHNFVNVU5lSWllSTRPaWFtd0lyb05YY015R3hkM0drZzdmS3NZVEdTRnJQWVE2SlFzK2Uxc3Z1YjVnZzBHQ2JQMzhkVVdyTFFWQnZvYVVBTzNtQitQV2dBK3FsTVVTS25kbGppLzQxUk02R3YxR29jWkJPTS9qck8vTHBxZHFYRE03RlpOaGtxekhvSDR0NUpNWlZhaFJ3eCtKT0pXOTZOY0hxT296eW1Qd1BNclRrZlZoZjRWcU9laDhWUStaRmZ2L2wzWnRiUkxoTWo4OTBIdWF2M3BWVnJTcHdyUjArRnIxdU0zUUFvMHh2UG5EYWVBbVE9PSIsIm1hYyI6ImVlN2E3ZThmMjRmZjQ3MGNhNmQ4ODY3YjIwM2I5YjUxZGFjOTg3Y2JkMzQ4NmQwYjQzYmU1M2M2MTQxN2ZmZGIiLCJ0YWciOiIifQ==', NULL, 'hxbO2ZdGaNaruWPWD26hs16dWy7zuecKsgRyF3DWKkaCqKLcSWFCyahCcBIY', NULL, NULL, '2023-04-05 08:52:13', '2023-04-05 08:56:49');

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `surfside`
--
CREATE DATABASE IF NOT EXISTS `surfside` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `surfside`;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `uid`, `pid`, `name`, `email`, `product_name`, `qty`, `price`, `image`, `created_at`, `updated_at`) VALUES
(14, 4, 12, 'Ram', 'ram@gmail.com', 'air Jordan 10', 1, 599, 'https://tse1.mm.bing.net/th?id=OIP.rxHh5R_T5DnltN5DzSueywHaFj&pid=Api&P=0', '2022-12-20 09:08:17', '2022-12-20 09:08:17'),
(15, 4, 13, 'Ram', 'ram@gmail.com', 'Jordan 9', 1, 799, 'https://wallpapercave.com/dwp1x/HLMQWhC.jpg', '2022-12-20 09:08:19', '2022-12-20 09:08:19'),
(26, 1, 17, 'kumar', 'kumarbhetwal25@gmail.com', 'Air 9 Retro', 1, 799, 'https://tse3.mm.bing.net/th?id=OIP.CrkoAyIhgx4vtRfpMvj1lAHaE8&pid=Api&P=0', '2022-12-24 01:32:42', '2022-12-24 01:32:42'),
(27, 4, 12, 'Ram', 'ram@gmail.com', 'air Jordan 10', 1, 599, 'https://tse1.mm.bing.net/th?id=OIP.rxHh5R_T5DnltN5DzSueywHaFj&pid=Api&P=0', '2023-02-19 08:12:05', '2023-02-19 08:12:05'),
(29, 1, 12, 'kumar', 'kumarbhetwal25@gmail.com', 'air Jordan 10', 1, 599, 'https://tse1.mm.bing.net/th?id=OIP.rxHh5R_T5DnltN5DzSueywHaFj&pid=Api&P=0', '2023-02-19 08:30:06', '2023-02-19 08:30:06'),
(30, 1, 12, 'kumar', 'kumarbhetwal25@gmail.com', 'air Jordan 10', 1, 599, 'https://tse1.mm.bing.net/th?id=OIP.rxHh5R_T5DnltN5DzSueywHaFj&pid=Api&P=0', '2023-04-26 22:15:43', '2023-04-26 22:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `checkouts`
--

CREATE TABLE `checkouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `checkout_productname` varchar(255) DEFAULT NULL,
  `checkout_price` int(11) DEFAULT NULL,
  `checkout_quantity` int(11) DEFAULT NULL,
  `checkout_name` varchar(255) DEFAULT NULL,
  `checkout_number` int(11) DEFAULT NULL,
  `checkout_email` varchar(255) DEFAULT NULL,
  `checkout_method` varchar(255) DEFAULT NULL,
  `checkout_state` varchar(255) DEFAULT NULL,
  `checkout_city` varchar(255) DEFAULT NULL,
  `checkout_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `checkouts`
--

INSERT INTO `checkouts` (`id`, `checkout_productname`, `checkout_price`, `checkout_quantity`, `checkout_name`, `checkout_number`, `checkout_email`, `checkout_method`, `checkout_state`, `checkout_city`, `checkout_status`, `created_at`, `updated_at`) VALUES
(17, 'air Jordan 10 |', 599, 1, 'Kumar', 98, 'Kumarbhetwal25@gmail.com', 'cash on delivery', 'bagmati', 'narayanghat', 'Completed', '2022-12-20 07:19:48', '2022-12-20 09:26:54'),
(18, 'Nike Air | air Jordan 10 |', 1599, 2, 'Coomar', 12, 'kumar@gmail.com', 'cash on delivery', 'bagmati', 'narayanghat', NULL, '2022-12-20 07:20:18', '2022-12-20 07:20:18');

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
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `msg` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `number`, `msg`, `created_at`, `updated_at`) VALUES
(1, 'kumar', 'kumarbhetwal25@gmail.com', '1', 'this is the very first message', '2022-12-15 10:37:11', '2022-12-15 10:37:11'),
(2, 'Kumar Chaudhary', 'hari@gmail.com', '1424354645', '1232423435345446', '2022-12-15 10:45:50', '2022-12-15 10:45:50'),
(3, 'pc', 'roshan@gmail.com', '1312432424', 'hello there', '2022-12-15 11:03:35', '2022-12-15 11:03:35'),
(4, 'hari', 'hari1@gmail.com', '1233243534', 'hello', '2022-12-15 11:04:45', '2022-12-15 11:04:45'),
(5, 'hari', 'hari@gmail.com', '1231231', 'faasfaf', '2022-12-15 11:06:33', '2022-12-15 11:06:33'),
(6, 'Kumar Chaudhary', 'kumarbhetwal25@gmail.com', '9867872978', 'Hello', '2022-12-20 09:18:22', '2022-12-20 09:18:22');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_09_083821_create_products_table', 2),
(6, '2022_12_09_094705_create_products_table', 3),
(7, '2022_12_11_151959_create_carts_table', 4),
(8, '2022_12_11_174715_create_carts_table', 5),
(9, '2022_12_11_183816_create_carts_table', 6),
(10, '2022_12_13_162948_create_checkouts_table', 7),
(11, '2022_12_15_155205_create_messages_table', 8),
(12, '2022_12_15_160610_create_messages_table', 9),
(13, '2022_12_19_140350_create_newcarts_table', 10),
(14, '2022_12_20_095656_create_newcarts_table', 11),
(15, '2022_12_20_101430_create_newcarts_table', 12),
(16, '2022_12_20_105033_create_carts_table', 13),
(17, '2022_12_20_112638_create_newcheckouts_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `newcheckouts`
--

CREATE TABLE `newcheckouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `checkout_productname` varchar(255) DEFAULT NULL,
  `checkout_price` int(11) DEFAULT NULL,
  `checkout_quantity` int(11) DEFAULT NULL,
  `checkout_name` varchar(255) DEFAULT NULL,
  `checkout_number` longtext DEFAULT NULL,
  `checkout_email` varchar(255) DEFAULT NULL,
  `checkout_method` varchar(255) DEFAULT NULL,
  `checkout_state` varchar(255) DEFAULT NULL,
  `checkout_city` varchar(255) DEFAULT NULL,
  `checkout_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newcheckouts`
--

INSERT INTO `newcheckouts` (`id`, `uid`, `pid`, `checkout_productname`, `checkout_price`, `checkout_quantity`, `checkout_name`, `checkout_number`, `checkout_email`, `checkout_method`, `checkout_state`, `checkout_city`, `checkout_status`, `created_at`, `updated_at`) VALUES
(19, 4, 13, 'Jordan 9 | air Jordan 10 | Nike Air |', 6398, 7, 'ram', '12', 'Ram@gmail.com', 'cash on delivery', 'bagmati', 'ktm', 'Completed', '2022-12-20 09:10:14', '2022-12-21 09:35:09'),
(20, 1, 13, 'Jordan 9 | Jordan 9 | air Jordan 10 | Nike Air |', 7197, 8, 'Kumar', '9867872978', 'Kumarbhetwal25@gmail.com', 'cash on delivery', 'bagmati', 'narayanghat', 'Completed', '2022-12-20 09:11:47', '2023-02-20 11:15:10'),
(21, 1, 13, 'Jordan 9 | Jordan 9 | air Jordan 10 | Nike Air |', 7197, 8, 'Kumar', '9867872978', 'Kumarbhetwal25@gmail.com', 'cash on delivery', 'bagmati', 'narayanghat', 'Pending', '2022-12-20 09:17:12', '2023-02-20 11:15:16'),
(22, 1, 12, 'air Jordan 10 | air Jordan 10 | Air CP3 | Jordan 9 | Jordan 9 | air Jordan 10 | Nike Air |', 9194, 11, 'Kumar', '12', 'Kumarbhetwal25@gmail.com', 'cash on delivery', 'bagmati', 'narayanghat', NULL, '2022-12-21 02:21:22', '2022-12-21 02:21:22'),
(23, 1, 12, 'air Jordan 10 | air Jordan 10 | Air CP3 | Jordan 9 | Jordan 9 | air Jordan 10 | Nike Air |', 9194, 11, 'third', '21132433', 'Ram@gmail.com', 'cash on delivery', 'bagmati', 'narayanghat', NULL, '2022-12-21 02:30:00', '2022-12-21 02:30:00'),
(24, 1, 12, 'air Jordan 10 | air Jordan 10 | Air CP3 | Jordan 9 | Jordan 9 | air Jordan 10 | Nike Air |', 9194, 11, 'third', '21132433', 'Ram@gmail.com', 'cash on delivery', 'bagmati', 'narayanghat', NULL, '2022-12-21 02:30:00', '2022-12-21 02:30:00'),
(25, 1, 12, 'air Jordan 10 | Air Jordan First Copy | Jordan 9 | air Jordan 10 |', 2596, 4, 'sixth', '32', 'Kumarbhetwal25@gmail.com', 'cash on delivery', 'bagmati', 'narayanghat', NULL, '2022-12-21 02:31:30', '2022-12-21 02:31:30'),
(26, 1, 12, 'air Jordan 10 | Jordan 9 | air Jordan 10 |', 1997, 3, 'Kumar', '9867872978', 'Kumarbhetwal25@gmail.com', 'Pay with khalti', 'bagmati', 'narayanghat', NULL, '2022-12-24 01:10:54', '2022-12-24 01:10:54'),
(27, 1, 12, 'air Jordan 10 | Jordan 9 | air Jordan 10 |', 1997, 3, 'sunday', '322', 'Kumarbhetwal25@gmail.com', 'Pay with khalti', 'bagmati', 'narayanghat', NULL, '2022-12-24 01:15:57', '2022-12-24 01:15:57'),
(28, 4, 13, 'Jordan 9 | air Jordan 10 |', 1398, 2, 'ball', '233', 'Kumarbhetwal25@gmail.com', 'Pay with khalti', 'bagmati', 'narayanghat', NULL, '2022-12-24 01:16:47', '2022-12-24 01:16:47'),
(29, 1, 12, 'air Jordan 10 | Jordan 9 | air Jordan 10 |', 1997, 3, 'Coomar', '22', 'kumar@gmail.com', 'cash on delivery', 'bagmati', 'narayanghat', NULL, '2022-12-24 01:21:31', '2022-12-24 01:21:31'),
(30, 1, 13, 'Jordan 9 | Jordan 9 | air Jordan 10 |', 2197, 3, 'cat', '11', 'Ram@gmail.com', 'cash on delivery', 'bagmati', 'narayanghat', NULL, '2022-12-24 01:23:30', '2022-12-24 01:23:30'),
(31, 1, 13, 'Jordan 9 | Jordan 9 | air Jordan 10 |', 2197, 3, 'cat', '11', 'Ram@gmail.com', 'cash on delivery', 'bagmati', 'narayanghat', NULL, '2022-12-24 01:24:27', '2022-12-24 01:24:27'),
(32, 4, 13, 'Jordan 9 | air Jordan 10 |', 1398, 2, 'Dog', '33', 'Kumarbhetwal25@gmail.com', 'cash on delivery', 'bagmati', 'narayanghat', NULL, '2022-12-24 01:26:00', '2022-12-24 01:26:00'),
(33, 4, 13, 'Jordan 9 | air Jordan 10 |', 1398, 2, 'Kumar', '12', 'Kumarbhetwal25@gmail.com', 'Pay with khalti', 'bagmati', 'narayanghat', NULL, '2022-12-24 01:27:06', '2022-12-24 01:27:06'),
(34, 4, 13, 'Jordan 9 | air Jordan 10 |', 1398, 2, 'Kumar', '12', 'Kumarbhetwal25@gmail.com', 'Pay with khalti', 'bagmati', 'narayanghat', NULL, '2022-12-24 01:29:53', '2022-12-24 01:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$kY7QK3RC74SF4BoGNk8WK.J3rkjZOMe5M5Jb3MJUgdQhfWYnOuNDO', '2023-04-26 22:41:36');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` longtext NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `description`, `created_at`, `updated_at`) VALUES
(11, 'Nike Air', 1000, 'https://wallpapercave.com/dwp1x/r6j43os.jpg', 'hello', '2022-12-17 07:35:55', '2022-12-17 08:16:52'),
(12, 'air Jordan 10', 599, 'https://tse1.mm.bing.net/th?id=OIP.rxHh5R_T5DnltN5DzSueywHaFj&pid=Api&P=0', 'air Jordan', '2022-12-17 07:37:52', '2022-12-17 07:37:52'),
(13, 'Jordan 9', 799, 'https://wallpapercave.com/dwp1x/HLMQWhC.jpg', '9', '2022-12-17 07:39:09', '2022-12-17 07:39:09'),
(14, 'Air Jordan First Copy', 599, 'https://wallpapercave.com/wp/wp2762018.jpg', 'This is first copy', '2022-12-20 09:20:32', '2022-12-20 09:20:32'),
(15, 'Air CP3', 799, 'https://i5.walmartimages.com/asr/c865e758-aaf4-4f66-9b6e-f8fdb973c7ea_1.ab5e3260a30b13933b2470f6757e7024.jpeg', 'This is Cp3 model', '2022-12-20 09:41:22', '2022-12-20 09:41:22'),
(17, 'Air 9 Retro', 799, 'https://tse3.mm.bing.net/th?id=OIP.CrkoAyIhgx4vtRfpMvj1lAHaE8&pid=Api&P=0', 'Air 9 retro', '2022-12-20 09:45:41', '2022-12-20 09:45:41'),
(18, 'Neplease Style Goldstar', 20, 'https://tse2.mm.bing.net/th?id=OIP.T47Ktom33b2YppKqsVSVvwHaEK&pid=Api&P=0', 'This is neplease style goldstar', '2022-12-20 09:47:30', '2022-12-20 09:47:30');

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
  `utype` varchar(255) NOT NULL DEFAULT 'USR' COMMENT 'ADM for admin and USR for normal user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `utype`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kumar', 'kumarbhetwal25@gmail.com', NULL, '$2y$10$DSdY9EgiD7u4rc0xD6Cs2.UZC/vwYYXsS7C9xd/byL.EVt1awmWp6', 'USR', 'OVBWEVphJFceHqtKvesVbQXq1WMLLXhGiVeaFOsGHQTL8KH71QZfi48kg1H3', '2022-12-08 03:52:26', '2022-12-08 03:52:26'),
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$10$nkiBM8RsBAQNsoSSC4pB5ObMy.tJDO5laKifyxJfSo9rosHmQgRQS', 'ADM', NULL, '2022-12-08 03:53:31', '2022-12-08 03:53:31'),
(3, 'Roshan', 'roshan@gmail.com', NULL, '$2y$10$MxoBIeen13r0iKWrQcxveOFjA0liOVNFRyCMcC3MrmKmEcSJbjTWG', 'USR', NULL, '2022-12-11 10:15:17', '2022-12-11 10:15:17'),
(4, 'Ram', 'ram@gmail.com', NULL, '$2y$10$BTxZb1aQvluWgxx8gJOte.BIKOHDyGBgXsEaMPbhmIiMbYlgCuVQG', 'USR', '2jxiZMXMp02pc73z91eoKj61wfYrRwinGxHzFcION9b7OvJshhu7JMYa8Bhz', '2022-12-17 10:36:06', '2022-12-17 10:36:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkouts`
--
ALTER TABLE `checkouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newcheckouts`
--
ALTER TABLE `newcheckouts`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `checkouts`
--
ALTER TABLE `checkouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `newcheckouts`
--
ALTER TABLE `newcheckouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
