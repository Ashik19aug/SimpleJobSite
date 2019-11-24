-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2019 at 05:09 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `coUserID` int(10) UNSIGNED NOT NULL,
  `coBussinessName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs_lists`
--

CREATE TABLE `jobs_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `joJobDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `joSalary` bigint(20) UNSIGNED NOT NULL,
  `joLocation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `joCountry` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `joCompanyID` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_applied`
--

CREATE TABLE `job_applied` (
  `id` int(10) UNSIGNED NOT NULL,
  `jaJobID` int(10) UNSIGNED NOT NULL,
  `jaUserID` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_23_141317_create_companies_table', 1),
(5, '2019_11_23_141411_create_jobs_table', 1),
(6, '2019_11_23_141442_create_applieds_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `usPassword` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usFirstName` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usLastName` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usEmail` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usImage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `usResume` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `usType` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usPassword`, `usFirstName`, `usLastName`, `usEmail`, `usImage`, `usResume`, `usType`, `remember_token`, `created_at`, `updated_at`) VALUES
(14, 'sdc', 'fgh', 'ert', 'epieertront@100kti.xyz', '', '', 0, NULL, '2019-11-24 06:32:44', '2019-11-24 06:32:44'),
(19, 'asd', 'as', 'asd', 'subgenher@chaonhe.club', '', '', 0, NULL, '2019-11-24 07:58:03', '2019-11-24 07:58:03'),
(21, 'zxc', 'srzhb', 'jgc', 'epieront@100kti.xyz', '', '', 0, NULL, '2019-11-24 08:02:20', '2019-11-24 08:02:20'),
(23, '12345', 'st', 'shafayet', 'ashik@gmail.com', '', '', 1, NULL, '2019-11-24 08:04:03', '2019-11-24 08:04:03'),
(24, '123', 'ashik', 'shafayet', 'ashik19aug@gmail.com', '', '', 0, NULL, '2019-11-24 09:07:35', '2019-11-24 09:07:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_couserid_foreign` (`coUserID`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_lists`
--
ALTER TABLE `jobs_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_lists_jocompanyid_foreign` (`joCompanyID`);

--
-- Indexes for table `job_applied`
--
ALTER TABLE `job_applied`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_applied_jajobid_foreign` (`jaJobID`),
  ADD KEY `job_applied_jauserid_foreign` (`jaUserID`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_usemail_unique` (`usEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs_lists`
--
ALTER TABLE `jobs_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_applied`
--
ALTER TABLE `job_applied`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_couserid_foreign` FOREIGN KEY (`coUserID`) REFERENCES `users` (`id`);

--
-- Constraints for table `jobs_lists`
--
ALTER TABLE `jobs_lists`
  ADD CONSTRAINT `jobs_lists_jocompanyid_foreign` FOREIGN KEY (`joCompanyID`) REFERENCES `companies` (`id`);

--
-- Constraints for table `job_applied`
--
ALTER TABLE `job_applied`
  ADD CONSTRAINT `job_applied_jajobid_foreign` FOREIGN KEY (`jaJobID`) REFERENCES `jobs_lists` (`id`),
  ADD CONSTRAINT `job_applied_jauserid_foreign` FOREIGN KEY (`jaUserID`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
