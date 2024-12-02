-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2024 at 08:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_types`
--

CREATE TABLE `account_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `loanable` int(11) NOT NULL DEFAULT 0 COMMENT '1 yes, 0 no',
  `loan_amount` decimal(5,2) NOT NULL DEFAULT 0.00 COMMENT 'in %',
  `min_balance` decimal(10,2) NOT NULL,
  `max_balance` decimal(10,2) NOT NULL,
  `max_transfer` decimal(10,2) NOT NULL,
  `max_withdrawal` decimal(10,2) NOT NULL,
  `yearly_interest` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_types`
--

INSERT INTO `account_types` (`id`, `name`, `loanable`, `loan_amount`, `min_balance`, `max_balance`, `max_transfer`, `max_withdrawal`, `yearly_interest`, `created_at`, `updated_at`) VALUES
(1, 'Fixed', 0, 5.00, 5000.00, 2000000.00, 950000.00, 100000.00, 5.00, '2024-11-29 22:33:21', '2024-11-29 22:33:21'),
(2, 'Saving', 0, 8.00, 99999999.99, 10000.00, 100000.00, 100000.00, 6.00, '2024-11-29 22:34:18', '2024-11-29 22:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `name`, `contact_no`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka Bank', '01659553269', 'dhaka@gmail.com', '2no gate', '2024-11-29 22:22:32', '2024-11-29 22:22:32'),
(2, 'Trust Bank', '01856465454', 'trust@gmail.com', 'halishar', '2024-11-29 22:22:59', '2024-11-29 22:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `bank_branches`
--

CREATE TABLE `bank_branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `routing` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_services`
--

CREATE TABLE `bank_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `contact_no` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_services`
--

INSERT INTO `bank_services` (`id`, `name`, `amount`, `contact_no`, `created_at`, `updated_at`) VALUES
(1, 'Sms', 500.00, 157416, '2024-11-29 22:34:34', '2024-11-29 22:34:34'),
(2, 'Card', 100.00, 132654564, '2024-11-29 22:34:52', '2024-11-29 22:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiaries`
--

CREATE TABLE `beneficiaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `account_type_id` bigint(20) UNSIGNED NOT NULL,
  `account_no` int(11) NOT NULL,
  `status` int(11) DEFAULT 0 COMMENT '0 not active,1 active',
  `active_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `card_category_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_account_id` bigint(20) UNSIGNED NOT NULL,
  `account_type_id` bigint(20) UNSIGNED NOT NULL,
  `customer_type` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 inactive,1 active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `card_categories`
--

CREATE TABLE `card_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cheque_books`
--

CREATE TABLE `cheque_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_account_id` bigint(20) UNSIGNED NOT NULL,
  `no_of_pages` int(11) DEFAULT NULL,
  `first_leaf_no` int(11) NOT NULL,
  `last_leaf_no` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 inactive,1 active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `nid` varchar(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `nid_image` varchar(255) DEFAULT NULL,
  `nid_image_back` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `per_address` text DEFAULT NULL,
  `pre_address` text DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `ref_id` varchar(255) DEFAULT NULL,
  `income` varchar(14) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `balance` decimal(14,2) NOT NULL DEFAULT 0.00,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `father_name`, `mother_name`, `contact_no`, `nid`, `image`, `nid_image`, `nid_image_back`, `email`, `per_address`, `pre_address`, `dob`, `gender`, `ref_id`, `income`, `occupation`, `balance`, `password`, `created_at`, `updated_at`) VALUES
(1, 'kamal', 'Rahim', 'Rina', '01856465454', '46546545646546', '17329416753401.png', NULL, NULL, 'jamal@gmail.com', '2no gate', 'chittagong', '2024-10-08', 'Male', '125', '120000', 'Doctor', 10000.00, '123', '2024-11-29 22:41:16', '2024-11-29 22:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `customer_services`
--

CREATE TABLE `customer_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `bank_service_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 not paid,1 paid',
  `active_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_services`
--

INSERT INTO `customer_services` (`id`, `customer_id`, `bank_service_id`, `status`, `active_date`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2024-12-02', '2024-12-01 23:45:02', '2024-12-01 23:45:02');

-- --------------------------------------------------------

--
-- Table structure for table `customer_transactions`
--

CREATE TABLE `customer_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_account_id` bigint(20) UNSIGNED NOT NULL,
  `trans_date` date NOT NULL,
  `amount` decimal(14,2) DEFAULT NULL,
  `trans_type` int(10) UNSIGNED NOT NULL COMMENT '1 deposit, 2 withdraw, 3 transfer in, 4 transfer out',
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_transactions`
--

INSERT INTO `customer_transactions` (`id`, `customer_id`, `customer_account_id`, `trans_date`, `amount`, `trans_type`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-12-10', 12000.00, 1, 'deposit', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_types`
--

CREATE TABLE `customer_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_account_id` bigint(20) UNSIGNED NOT NULL,
  `account_type_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_types`
--

INSERT INTO `customer_types` (`id`, `customer_id`, `customer_account_id`, `account_type_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Regular', '2024-12-01 22:11:20', '2024-12-01 22:11:20');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', '2024-11-29 22:23:48', '2024-11-29 22:23:48'),
(2, 'Chittagong', '2024-11-29 22:23:59', '2024-11-29 22:23:59');

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
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `loan_type_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_account_id` bigint(20) UNSIGNED NOT NULL,
  `customer_type_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `term_length` int(11) NOT NULL,
  `interest_rate` decimal(10,2) NOT NULL,
  `principal_amount` decimal(10,2) NOT NULL,
  `amount_with_interest` decimal(10,2) NOT NULL,
  `fine` decimal(10,2) DEFAULT 0.00,
  `total_paid` decimal(10,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_details`
--

CREATE TABLE `loan_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `loan_id` bigint(20) UNSIGNED NOT NULL,
  `customer_account_id` bigint(20) UNSIGNED NOT NULL,
  `payment_no` varchar(255) DEFAULT NULL,
  `loan_balance` decimal(20,2) NOT NULL DEFAULT 0.00,
  `payment` decimal(20,2) NOT NULL DEFAULT 0.00,
  `pricipal` decimal(20,2) NOT NULL DEFAULT 0.00,
  `interest` decimal(5,2) NOT NULL DEFAULT 0.00 COMMENT 'in %',
  `pay_date` date DEFAULT NULL,
  `actual_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_payments`
--

CREATE TABLE `loan_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `loan_id` bigint(20) UNSIGNED NOT NULL,
  `customer_account_id` bigint(20) UNSIGNED NOT NULL,
  `payment_number` int(11) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `principal_amount` decimal(10,2) NOT NULL,
  `interest_amount` decimal(10,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 not paid,1 paid',
  `expected_date` date DEFAULT NULL,
  `pay_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_types`
--

CREATE TABLE `loan_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `interest_percentage` decimal(8,2) NOT NULL COMMENT 'in %',
  `amount` decimal(14,2) NOT NULL,
  `min_amount` decimal(8,2) DEFAULT NULL,
  `max_amount` decimal(8,2) DEFAULT NULL,
  `min_duration` varchar(255) NOT NULL,
  `max_duration` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_types`
--

INSERT INTO `loan_types` (`id`, `name`, `interest_percentage`, `amount`, `min_amount`, `max_amount`, `min_duration`, `max_duration`, `created_at`, `updated_at`) VALUES
(1, 'Car', 0.00, 0.00, NULL, NULL, '', '', '2024-12-01 22:11:32', '2024-12-01 22:11:32');

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
(1, '2012_10_21_040028_create_districts_table', 1),
(2, '2013_10_12_043317_create_banks_table', 1),
(3, '2013_10_12_043324_create_bank_branches_table', 1),
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2024_10_12_032754_create_account_types_table', 1),
(9, '2024_10_12_033111_create_bank_services_table', 1),
(10, '2024_10_12_033921_create_customers_table', 1),
(12, '2024_10_12_034953_create_customer_transactions_table', 1),
(13, '2024_10_12_034955_create_customer_types_table', 1),
(14, '2024_10_12_034960_create_loan_types_table', 1),
(15, '2024_10_12_035006_create_loans_table', 1),
(16, '2024_10_12_035049_create_loan_payments_table', 1),
(17, '2024_10_12_035124_create_customer_services_table', 1),
(18, '2024_10_21_044304_create_transfers_table', 1),
(19, '2024_10_21_050038_create_payment_types_table', 1),
(20, '2024_10_21_051150_create_payment_details_table', 1),
(21, '2024_10_21_174624_create_cheque_books_table', 1),
(22, '2024_10_21_175340_create_card_categories_table', 1),
(23, '2024_10_21_175447_create_cards_table', 1),
(24, '2024_10_22_183104_create_nominees_table', 1),
(25, '2024_10_25_192242_add_contact_no_to_bank_services_table', 1),
(26, '2024_10_28_134309_create_beneficiaries_table', 1),
(27, '2024_11_02_052650_create_loan_details_table', 1),
(28, '2024_10_12_034903_create_customer_accounts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nominees`
--

CREATE TABLE `nominees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_accounts_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `image` varchar(255) NOT NULL,
  `pre_address` text NOT NULL,
  `per_address` text NOT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `birth_certificate` varchar(255) DEFAULT NULL,
  `relation` varchar(255) DEFAULT NULL,
  `second_name` varchar(255) DEFAULT NULL,
  `second_nid` varchar(255) DEFAULT NULL,
  `second_relation` varchar(255) DEFAULT NULL,
  `second_per_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_account_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_method` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_types`
--

CREATE TABLE `payment_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_account_id` bigint(20) UNSIGNED NOT NULL,
  `beneficiary_id` int(11) NOT NULL,
  `transfer_date` date NOT NULL,
  `amount` decimal(14,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
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
-- Indexes for dumped tables
--

--
-- Indexes for table `account_types`
--
ALTER TABLE `account_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_branches`
--
ALTER TABLE `bank_branches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_branches_bank_id_foreign` (`bank_id`),
  ADD KEY `bank_branches_district_id_foreign` (`district_id`);

--
-- Indexes for table `bank_services`
--
ALTER TABLE `bank_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `beneficiaries_account_type_id_foreign` (`account_type_id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cards_card_category_id_foreign` (`card_category_id`),
  ADD KEY `cards_customer_id_foreign` (`customer_id`),
  ADD KEY `cards_customer_account_id_foreign` (`customer_account_id`),
  ADD KEY `cards_account_type_id_foreign` (`account_type_id`);

--
-- Indexes for table `card_categories`
--
ALTER TABLE `card_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cheque_books`
--
ALTER TABLE `cheque_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cheque_books_customer_id_foreign` (`customer_id`),
  ADD KEY `cheque_books_customer_account_id_foreign` (`customer_account_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_services`
--
ALTER TABLE `customer_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_services_customer_id_foreign` (`customer_id`),
  ADD KEY `customer_services_bank_service_id_foreign` (`bank_service_id`);

--
-- Indexes for table `customer_transactions`
--
ALTER TABLE `customer_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_transactions_customer_id_foreign` (`customer_id`),
  ADD KEY `customer_transactions_customer_account_id_foreign` (`customer_account_id`);

--
-- Indexes for table `customer_types`
--
ALTER TABLE `customer_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_types_customer_id_foreign` (`customer_id`),
  ADD KEY `customer_types_customer_account_id_foreign` (`customer_account_id`),
  ADD KEY `customer_types_account_type_id_foreign` (`account_type_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loans_loan_type_id_foreign` (`loan_type_id`),
  ADD KEY `loans_customer_id_foreign` (`customer_id`),
  ADD KEY `loans_customer_account_id_foreign` (`customer_account_id`),
  ADD KEY `loans_customer_type_id_foreign` (`customer_type_id`);

--
-- Indexes for table `loan_details`
--
ALTER TABLE `loan_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_details_loan_id_foreign` (`loan_id`),
  ADD KEY `loan_details_customer_account_id_foreign` (`customer_account_id`);

--
-- Indexes for table `loan_payments`
--
ALTER TABLE `loan_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_payments_customer_id_foreign` (`customer_id`),
  ADD KEY `loan_payments_loan_id_foreign` (`loan_id`),
  ADD KEY `loan_payments_customer_account_id_foreign` (`customer_account_id`);

--
-- Indexes for table `loan_types`
--
ALTER TABLE `loan_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nominees`
--
ALTER TABLE `nominees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_details_customer_id_foreign` (`customer_id`),
  ADD KEY `payment_details_customer_account_id_foreign` (`customer_account_id`);

--
-- Indexes for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfers_customer_id_foreign` (`customer_id`),
  ADD KEY `transfers_customer_account_id_foreign` (`customer_account_id`);

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
-- AUTO_INCREMENT for table `account_types`
--
ALTER TABLE `account_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank_branches`
--
ALTER TABLE `bank_branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_services`
--
ALTER TABLE `bank_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card_categories`
--
ALTER TABLE `card_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cheque_books`
--
ALTER TABLE `cheque_books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_services`
--
ALTER TABLE `customer_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_transactions`
--
ALTER TABLE `customer_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_types`
--
ALTER TABLE `customer_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_details`
--
ALTER TABLE `loan_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_payments`
--
ALTER TABLE `loan_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_types`
--
ALTER TABLE `loan_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `nominees`
--
ALTER TABLE `nominees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
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
-- Constraints for table `bank_branches`
--
ALTER TABLE `bank_branches`
  ADD CONSTRAINT `bank_branches_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`),
  ADD CONSTRAINT `bank_branches_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`);

--
-- Constraints for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  ADD CONSTRAINT `beneficiaries_account_type_id_foreign` FOREIGN KEY (`account_type_id`) REFERENCES `account_types` (`id`);

--
-- Constraints for table `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `cards_account_type_id_foreign` FOREIGN KEY (`account_type_id`) REFERENCES `account_types` (`id`),
  ADD CONSTRAINT `cards_card_category_id_foreign` FOREIGN KEY (`card_category_id`) REFERENCES `card_categories` (`id`),
  ADD CONSTRAINT `cards_customer_account_id_foreign` FOREIGN KEY (`customer_account_id`) REFERENCES `customer_accounts` (`id`),
  ADD CONSTRAINT `cards_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `cheque_books`
--
ALTER TABLE `cheque_books`
  ADD CONSTRAINT `cheque_books_customer_account_id_foreign` FOREIGN KEY (`customer_account_id`) REFERENCES `customer_accounts` (`id`),
  ADD CONSTRAINT `cheque_books_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `customer_services`
--
ALTER TABLE `customer_services`
  ADD CONSTRAINT `customer_services_bank_service_id_foreign` FOREIGN KEY (`bank_service_id`) REFERENCES `bank_services` (`id`),
  ADD CONSTRAINT `customer_services_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `customer_transactions`
--
ALTER TABLE `customer_transactions`
  ADD CONSTRAINT `customer_transactions_customer_account_id_foreign` FOREIGN KEY (`customer_account_id`) REFERENCES `customer_accounts` (`id`),
  ADD CONSTRAINT `customer_transactions_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `customer_types`
--
ALTER TABLE `customer_types`
  ADD CONSTRAINT `customer_types_account_type_id_foreign` FOREIGN KEY (`account_type_id`) REFERENCES `account_types` (`id`),
  ADD CONSTRAINT `customer_types_customer_account_id_foreign` FOREIGN KEY (`customer_account_id`) REFERENCES `customer_accounts` (`id`),
  ADD CONSTRAINT `customer_types_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `loans_customer_account_id_foreign` FOREIGN KEY (`customer_account_id`) REFERENCES `customer_accounts` (`id`),
  ADD CONSTRAINT `loans_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `loans_customer_type_id_foreign` FOREIGN KEY (`customer_type_id`) REFERENCES `customer_types` (`id`),
  ADD CONSTRAINT `loans_loan_type_id_foreign` FOREIGN KEY (`loan_type_id`) REFERENCES `loan_types` (`id`);

--
-- Constraints for table `loan_details`
--
ALTER TABLE `loan_details`
  ADD CONSTRAINT `loan_details_customer_account_id_foreign` FOREIGN KEY (`customer_account_id`) REFERENCES `customer_accounts` (`id`),
  ADD CONSTRAINT `loan_details_loan_id_foreign` FOREIGN KEY (`loan_id`) REFERENCES `loans` (`id`);

--
-- Constraints for table `loan_payments`
--
ALTER TABLE `loan_payments`
  ADD CONSTRAINT `loan_payments_customer_account_id_foreign` FOREIGN KEY (`customer_account_id`) REFERENCES `customer_accounts` (`id`),
  ADD CONSTRAINT `loan_payments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `loan_payments_loan_id_foreign` FOREIGN KEY (`loan_id`) REFERENCES `loans` (`id`);

--
-- Constraints for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD CONSTRAINT `payment_details_customer_account_id_foreign` FOREIGN KEY (`customer_account_id`) REFERENCES `customer_accounts` (`id`),
  ADD CONSTRAINT `payment_details_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_customer_account_id_foreign` FOREIGN KEY (`customer_account_id`) REFERENCES `customer_accounts` (`id`),
  ADD CONSTRAINT `transfers_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
