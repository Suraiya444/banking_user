-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2024 at 08:09 AM
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
-- Database: `e_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_products`
--

CREATE TABLE `add_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `productname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `quantity` decimal(6,2) DEFAULT NULL,
  `category_id` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `is_featured` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_products`
--

INSERT INTO `add_products` (`id`, `productname`, `description`, `price`, `quantity`, `category_id`, `photo`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'MENS FUSION PANJABI', 'PANJABI COLLECTION', 2490.00, 2.00, '1', '17299125525070.jpg', '', '2024-10-25 21:15:52', '2024-10-25 21:15:52'),
(2, 'MENS FASHION EXPRESS SHIRT', 'SHIRT', 2590.00, 2.00, '1', '17299127991461.jpg', '', '2024-10-25 21:19:59', '2024-10-25 21:19:59'),
(3, 'MEN\'S KNIT T-SHIRT', 'IDB', 5000.00, 2.00, '1', '17300136185449.jpg', '', '2024-10-27 01:20:18', '2024-10-27 01:20:18'),
(5, 'Boy\'s Casual Shirt', 'Shirt', 1190.00, 1.00, '3', '17302582565694.png', '', '2024-10-29 21:17:36', '2024-10-29 21:17:36'),
(6, 'Boy\'s Kabli Suit', 'Kabli Suit', 1790.00, 40.00, '3', '17302583741555.jpg', '1', '2024-10-29 21:19:34', '2024-10-29 21:19:34'),
(7, 'MENS KNIT T-SHIRT', 'T-SHIRT', 990.00, 12.00, '1', '17302585109986.jpg', '1', '2024-10-29 21:21:50', '2024-10-29 21:21:50'),
(8, 'MENS KNIT FASHION POLO', 'POLO', 1890.00, 10.00, '1', '17302585795553.jpg', '1', '2024-10-29 21:22:59', '2024-10-29 21:22:59'),
(9, 'MENS KABLI SUIT', 'KABLI SUIT', 4290.00, 10.00, '1', '17302590164715.jpg', '1', '2024-10-29 21:30:16', '2024-10-29 21:30:16'),
(10, 'MENS KABLI SUIT', 'KABLI SUIT', 4150.00, 1.00, '1', '17302591256557.jpg', '', '2024-10-29 21:32:05', '2024-10-29 21:32:05'),
(11, 'MENS CASUAL SHIRT', 'SHIRT', 1950.00, 1.00, '1', '17302591543208.jpg', '', '2024-10-29 21:32:34', '2024-10-29 21:32:34'),
(12, 'MEN\'S KNIT T-SHIRT', 'T-SHIRT', 790.00, 40.00, '1', '17302637548834.webp', '', '2024-10-29 22:49:14', '2024-10-29 22:49:14'),
(13, 'WOMEN\'S WOVEN SALWAR SUIT', 'SALWAR', 5599.00, 55.00, '2', '17308630966791.jpg', '1', '2024-11-05 21:18:16', '2024-11-05 21:18:16'),
(14, 'Boy\'s Casual Shirt', 'T-SHIRT', 833.00, 40.00, '3', '17308725428400.jpg', '', '2024-11-05 23:55:42', '2024-11-05 23:55:42');

-- --------------------------------------------------------

--
-- Table structure for table `allorders`
--

CREATE TABLE `allorders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `order_date` date NOT NULL,
  `total_amount` decimal(8,2) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `shipping_charge` decimal(8,2) DEFAULT NULL,
  `shipping_date` date DEFAULT NULL,
  `shipping_method_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `total_qty` varchar(255) NOT NULL,
  `cart_data` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `cancel_request` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `allorders`
--

INSERT INTO `allorders` (`id`, `customer_id`, `customer_name`, `order_date`, `total_amount`, `email`, `mobile_no`, `address`, `country`, `city`, `state`, `zip_code`, `discount`, `shipping_charge`, `shipping_date`, `shipping_method_id`, `status`, `total_qty`, `cart_data`, `coupon_code`, `payment_method`, `transaction_id`, `notes`, `cancel_request`, `created_at`, `updated_at`) VALUES
(1, 0, 'NVIT WDPF R59', '2024-11-16', 7307.60, 'wdpfr59@gmail.com', '465465', '2No Gate, NVIT, Chittagong', 'Bangladesh', 'Dhaka', 'Khagrachari', '4000', NULL, NULL, NULL, 0, 'pending', '', '', '', 'Cash on Delivery', '', '', '', '2024-11-16 00:22:37', '2024-11-16 00:22:37'),
(2, 0, 'NVIT WDPF R59', '2024-11-16', 7307.60, 'raja@gmail.com', '465465', '2No Gate, NVIT, Chittagong', 'Bangladesh', 'Dhaka', 'Khagrachari', '4000', NULL, NULL, NULL, 0, 'pending', '', '', '', 'Cash on Delivery', '', '', '', '2024-11-16 00:27:04', '2024-11-16 00:27:04'),
(3, 0, 'NVIT WDPF R59', '2024-11-16', 7307.60, 'wdpfr59@gmail.com', '465465', '2No Gate, NVIT, Chittagong', 'Bangladesh', 'Dhaka', 'Khagrachari', '4000', NULL, NULL, NULL, 0, 'pending', '', '', '', 'Cash on Delivery', '', '', '', '2024-11-16 00:28:57', '2024-11-16 00:28:57'),
(4, 0, 'NVIT WDPF R59', '2024-11-17', 7307.60, 'wdpfr59@gmail.com', '465465', '2No Gate, NVIT, Chittagong', 'Bangladesh', 'Dhaka', 'Khagrachari', '4000', NULL, NULL, NULL, 0, 'pending', '', '', '', 'Cash on Delivery', '', '', '', '2024-11-16 21:31:21', '2024-11-16 21:31:21'),
(5, 0, 'NVIT WDPF R59', '2024-11-17', 9783.40, 'wdpfr59@gmail.com', '465465', '2No Gate, NVIT, Chittagong', 'Bangladesh', 'Dhaka', 'dsfsdfs', '4000', NULL, NULL, NULL, 0, 'pending', '', '', '', 'Cash on Delivery', '', '', '', '2024-11-17 02:29:24', '2024-11-17 02:29:24'),
(6, 0, 'NVIT WDPF R59', '2024-11-19', 10608.08, 'wdpfr59@gmail.com', '465465', '2No Gate, NVIT, Chittagong', 'Bangladesh', 'Dhaka', 'Khagrachari', '4000', NULL, NULL, NULL, 0, 'pending', '', '', '', 'Cash on Delivery', '', '', '', '2024-11-19 00:38:44', '2024-11-19 00:38:44'),
(7, 0, '', '0000-00-00', 5180.00, '', '', '', '', '', '', '', NULL, NULL, NULL, 0, 'pending', '', '', '', '', '', '', '', '2024-11-30 00:58:58', '2024-11-30 00:58:58'),
(8, 0, '', '0000-00-00', 11760.00, '', '', '', '', '', '', '', NULL, NULL, NULL, 0, 'pending', '', '', '', '', '', '', '', '2024-11-30 01:02:22', '2024-11-30 01:02:22'),
(9, 0, '', '0000-00-00', 2590.00, '', '', '', '', '', '', '', NULL, NULL, NULL, 0, 'pending', '', '', '', '', '', '', '', '2024-11-30 01:06:42', '2024-11-30 01:06:42'),
(10, 0, '', '0000-00-00', 2590.00, '', '', '', '', '', '', '', NULL, NULL, NULL, 0, 'pending', '', '', '', '', '', '', '', '2024-11-30 01:09:21', '2024-11-30 01:09:21');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `overview` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `author`, `date`, `overview`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Essential Website Design Tips for Ecommerce Stores', 'Raja', '2024-11-22', 'In 2014, I founded MOTE agency with Rembrant Van der Mijnsbrugge. Specializing in ecommerce, we partner with clients at every stage of their brand journey—from initial market strategy and brand identity to design, development, and marketing—always with a focus on sustainable growth. Across my 15 years of ecommerce web design experience, I’ve shaped the strategies of clients ranging from independent brands to Fortune 500 companies. I’m excited to share the web design tips and advice I’ve gathered throughout my career.\r\n\r\nDesign is communication. It’s a conversation. It has the power to captivate an audience, convey information, and evoke emotions—all of which directly impacts consumer decision-making.\r\n\r\nGood design improves the quality of the conversation. With ecommerce in particular, you want to give a customer the information that they need to feel well-informed and confident enough to make a purchase.', '/addproduct/17329415321443.jpg', '2024-11-29 22:37:51', '2024-11-29 22:38:52'),
(2, 'The Best Domain Name Registrars of 2025', 'Tanim', '2024-11-28', 'Picking the perfect domain name is a key step in launching your online business.\r\n\r\nA great domain name is memorable, easy to type, and reflects your brand. Once you’ve got your business idea and a catchy name, you’ll need to purchase and register the domain through a registrar, then host your website on a server.\r\n\r\nTo simplify this process, here’s a list of the best domain registrars and tips on how to choose the right one for your business.', '/addproduct/17329416628601.jpg', '2024-11-29 22:41:02', '2024-11-29 22:41:02');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'MENS', 'Mens Collection', 'Active', '2024-10-15 22:09:43', '2024-10-15 22:09:43'),
(2, 'WOMENS', 'WOMENS COLLECTION', 'Active', '2024-10-25 21:15:08', '2024-10-25 21:15:08'),
(3, 'KIDS', 'Kids Collection', 'Active', '2024-10-29 21:16:51', '2024-10-29 21:16:51'),
(4, 'PANJABI', 'PANJABI COLLECTION', 'Inactive', '2024-11-08 21:42:50', '2024-11-08 21:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Me', 'abc@gmail.com', 'p', 'h', '2024-10-28 22:13:38', '2024-10-28 22:13:38'),
(2, 'Julfiqur', 'wdpfr59@gmail.com', 'Notice', 'Hi', '2024-10-28 22:32:02', '2024-10-28 22:32:02'),
(3, 'NVIT WDPF R59', 'wdpfr59@gmail.com', 'For Warning', 'jhg', '2024-10-28 22:32:39', '2024-10-28 22:32:39'),
(4, 'Mamun', 'mamun637@gmail.com', 'Payment Issue', 'Hi', '2024-10-28 23:56:26', '2024-10-28 23:56:26'),
(5, 'Mamun', 'mamun637@gmail.com', 'Payment Issue', 'Hi', '2024-10-28 23:56:27', '2024-10-28 23:56:27'),
(6, 'NVIT WDPF R59', 'wdpfr59@gmail.com', 'For Warning', 'cgg', '2024-11-17 02:29:48', '2024-11-17 02:29:48'),
(7, 'NVIT WDPF R59', 'wdpfr59@gmail.com', 'Notice', 'amar taka de', '2024-11-19 00:40:09', '2024-11-19 00:40:09');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `full_name`, `phone`, `address`, `state`, `country`, `photo`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(16, 'jgfj', 'jhj', 'jfgjh', 'jghj', '', '', 'jlkghga@gmail.com', NULL, '123', NULL, NULL, NULL),
(17, 'NVIT WDPF R59', '6895890', '2No Gate, NVIT, Chittagong', '', '', '', 'ahmedsanjid34@gmail.com', NULL, '$2y$12$K4aKCplXZ/TwL5xLN4DAZ.1IDJKoum3yw1s4ni2xSE8d8ZEuXUTHe', NULL, '2024-11-12 00:57:54', '2024-11-12 00:57:54'),
(18, 'NVIT WDPF R59', '6895890', '2No Gate, NVIT, Chittagong', '', '', '', 'julfiqurhaidar@gmail.com', NULL, '$2y$12$X00QaW.mmHbNYU/SBqpdneee7znqZX/ilrbsFyku.47fggZtHNOmG', NULL, '2024-11-12 21:25:48', '2024-11-12 21:25:48'),
(19, 'NVIT WDPF R59', '6895890', '2No Gate, NVIT, Chittagong', '', '', '', 'arif@gmail.com', NULL, '$2y$12$de/G0bGEnV67qRB2kTOsXOwHxB93O4iJB.Hbf5EAB16G0E.S/HRtK', NULL, '2024-11-12 22:15:14', '2024-11-12 22:15:14'),
(20, 'alkjgklkfghfgh', '', '', '', '', '', 'mamun@gmail.com', NULL, '$2y$12$6K5dTtTdc1LlkwZn5QlaPuD.90olQoO7UzD84rMHZXj113TCwnV76', NULL, '2024-11-14 00:05:12', '2024-11-14 00:05:12'),
(21, 'NVIT WDPF R59', '8970897', '2No Gate, NVIT, Chittagong', '', '', '', 'ljkljlk@gmail.com', NULL, '$2y$12$wtiFiOl/hU8zXDW6P71u0ehPw6bh1MmWXrdSfaa950L2rS4oIt3H2', NULL, '2024-11-14 00:07:24', '2024-11-14 00:07:24'),
(22, 'Julfiqur Haidar', '54654', 'Hathazari', '', '', '', 'raja@gmail.com', NULL, '$2y$12$ydsdg61jO/fGTX3cRG1ozeAaARR7ZQcQlZzfs6BjcRwVyfdLjxY7i', NULL, '2024-11-14 00:08:10', '2024-11-14 00:08:10'),
(23, 'Mamun', '4654654', 'Chandpur', '', '', '', 'mamun007@gmail.com', NULL, '$2y$12$FDIvRYTwTClCEZBQPoNqOeuEVk0wHD.sLyFNsrBHfPFF7OgEnCjYy', NULL, '2024-11-14 01:05:56', '2024-11-14 01:05:56'),
(24, 'AFF', '7979', '2No Gate, NVIT, Chittagong', '', '', '', 'fahim@yahoo.com', NULL, '$2y$12$Ph2yL5uzr1iRusjXe0xNV.Z2P3qJRbq3VPyutPd.MneIN.ny4QnZO', NULL, '2024-11-28 00:26:33', '2024-11-28 00:26:33'),
(25, 'Ramjan', '27098', 'Khagrachari', '', '', '', 'ramjan@gmail.com', NULL, '$2y$12$uJiQA5X6gNCSC3hVK.WSP.8Os.7sqoM8ATVFdHf0slU7mx1CihaBy', NULL, '2024-11-28 00:47:34', '2024-11-28 00:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `eventname_id` varchar(255) NOT NULL,
  `coupon` varchar(100) NOT NULL,
  `discount` decimal(5,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `eventname_id`, `coupon`, `discount`, `created_at`, `updated_at`) VALUES
(1, '2', 'E50', 28.00, '2024-10-16 02:12:12', '2024-10-16 02:12:12'),
(5, '3', 'RAMADAN18', 18.00, '2024-11-12 21:35:14', '2024-11-12 21:35:14'),
(6, '3', 'RAMADAN7878', 22.00, '2024-11-19 00:37:59', '2024-11-19 00:37:59');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'Is it safe to shop on your website?', 'Yes! We use SSL encryption and secure payment methods to ensure your personal and payment details are protected while shopping with us.', '2024-11-26 22:05:59', '2024-11-26 22:05:59'),
(2, 'How do I place an order?', 'Simply browse our website, select the products you want, and click “Add to Cart.” Once you’re ready, go to your cart and click “Checkout.” Follow the prompts to enter your shipping and payment details to complete your purchase.', '2024-11-26 22:06:34', '2024-11-26 22:06:34'),
(3, 'What payment methods do you accept?', 'We accept various payment options, including [Visa, MasterCard, American Express, PayPal, Apple Pay, Google Pay, etc.]. You’ll see all available options during checkout.', '2024-11-26 22:08:58', '2024-11-26 22:08:58'),
(4, 'Can I change or cancel my order after I’ve placed it?', 'Orders can only be changed or canceled within [24 hours] of purchase. Please contact us as soon as possible if you need to make changes.', '2024-11-26 22:12:36', '2024-11-26 22:12:36'),
(5, 'How can I track my order?', 'Once your order has been shipped, we will send you a tracking number via email. You can use this tracking number on our website or the shipping carrier\'s website to track the status of your order.', '2024-11-26 23:43:46', '2024-11-26 23:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `current_stock` int(11) DEFAULT NULL,
  `reorder_level` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `product_id`, `current_stock`, `reorder_level`, `created_at`, `updated_at`) VALUES
(1, '2', 50, 10, '2024-10-29 01:16:32', '2024-10-29 01:16:32');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(22, '2024_10_11_153835_create_pages_table', 6),
(23, '2024_10_11_173543_create_faqs_table', 6),
(24, '2024_10_02_171926_create_discounts_table', 7),
(25, '2024_10_06_171320_create_sales_events_table', 7),
(26, '2024_10_15_154505_create_categories_table', 7),
(28, '2024_10_23_034555_add_is_featured_column_to_add_product_table', 8),
(30, '2024_10_02_061001_create_add_products_table', 10),
(31, '2024_10_09_041801_create_inventories_table', 10),
(33, '2024_10_08_184020_create_allcustomers_table', 11),
(39, '2024_10_26_072723_create_customers_table', 12),
(40, '2024_10_29_040406_create_contacts_table', 13),
(42, '2024_11_12_061108_create_messages_table', 15),
(43, '2024_10_11_081145_create_allorders_table', 16),
(44, '2024_10_07_174511_create_blogs_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Home', '/home', '2024-10-14 00:07:56', '2024-10-14 00:07:56');

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
(1, 'App\\Models\\User', 1, 'hosp', '0ba2014453cd2618f10e32886d05df4c5b089a30ba075c813bd051dc1620741e', '[\"*\"]', NULL, NULL, '2024-10-06 21:47:57', '2024-10-06 21:47:57'),
(2, 'App\\Models\\User', 1, 'hosp', 'b647d4d76ad268c7a12ea64b8cc28a3eae1cace717245a3edd141722475750cc', '[\"*\"]', NULL, NULL, '2024-10-06 21:48:21', '2024-10-06 21:48:21'),
(3, 'App\\Models\\User', 1, 'hosp', '627d7568885513faf29c8e3a4192d7a0fa40a16bc6f7d3f6f19733c470c21f4d', '[\"*\"]', NULL, NULL, '2024-10-13 21:19:47', '2024-10-13 21:19:47'),
(4, 'App\\Models\\User', 2, 'hosp', '861e6b4243dc4a00c1eb9b478b52b779b5efa1d2de980a82f259f8acaa299885', '[\"*\"]', NULL, NULL, '2024-10-16 01:12:29', '2024-10-16 01:12:29'),
(5, 'App\\Models\\User', 2, 'hosp', '05e794e51a400acaf1da3cf078c82d6b09e73ea95b4a330ccf0341daccbb378c', '[\"*\"]', NULL, NULL, '2024-10-16 01:12:48', '2024-10-16 01:12:48'),
(6, 'App\\Models\\User', 1, 'hosp', 'a6a575d6f0848d731f247498fcf04663aee80534d9f9042b9fe1e3eb65e583ff', '[\"*\"]', NULL, NULL, '2024-10-16 22:06:16', '2024-10-16 22:06:16'),
(7, 'App\\Models\\User', 3, 'hosp', 'e4e39a1246a570a59b3373b479a38d53e8b284ddda502c45c59cba3c85628434', '[\"*\"]', NULL, NULL, '2024-10-21 22:43:06', '2024-10-21 22:43:06'),
(8, 'App\\Models\\User', 3, 'hosp', '18862eb195d4b838750ff7396f3c29430a7ce393abd719d2a72c40961ae0a44b', '[\"*\"]', NULL, NULL, '2024-10-21 22:43:19', '2024-10-21 22:43:19'),
(9, 'App\\Models\\User', 4, 'hosp', '72d616a37c9657e04fb0da3f548426e68139fa51c420495fa2128ebcd1d89b5b', '[\"*\"]', NULL, NULL, '2024-10-21 23:08:04', '2024-10-21 23:08:04'),
(10, 'App\\Models\\User', 4, 'hosp', 'b082ad90270bbaf260aa5e34a76f948748f2795a755534306e8e95e60075205b', '[\"*\"]', NULL, NULL, '2024-10-22 00:25:26', '2024-10-22 00:25:26'),
(11, 'App\\Models\\User', 2, 'hosp', '3b08944c043e962f89978b2f457f33fb95a7f89e4152a0db2d445659ce989b0a', '[\"*\"]', NULL, NULL, '2024-10-26 00:40:34', '2024-10-26 00:40:34'),
(12, 'App\\Models\\User', 4, 'hosp', 'c4eab89f5164538743663f94e875a33570c43fd97668d3c01afe36fe1468c90c', '[\"*\"]', NULL, NULL, '2024-10-26 00:53:10', '2024-10-26 00:53:10'),
(13, 'App\\Models\\User', 5, 'hosp', 'db2a4200789e8fae122e3ddbe4f4545f992f98f24baac629f17da2aa64e8cb50', '[\"*\"]', NULL, NULL, '2024-10-26 01:44:11', '2024-10-26 01:44:11'),
(14, 'App\\Models\\User', 1, 'hosp', '5d5bf3d9086046363749effdb67032debf014ad87dad7d10706d41303c9c9c87', '[\"*\"]', NULL, NULL, '2024-10-26 21:50:53', '2024-10-26 21:50:53'),
(15, 'App\\Models\\User', 6, 'hosp', 'a3aba11a3f6ad6d2374a77ccc179922cec03b254e7736d5b7795345d7f7795be', '[\"*\"]', NULL, NULL, '2024-10-26 22:59:16', '2024-10-26 22:59:16'),
(16, 'App\\Models\\User', 7, 'hosp', 'c18368e9c36d0dd1ee9fef05e5294fa6043cbe29a063870b68103db7b250647a', '[\"*\"]', NULL, NULL, '2024-10-26 23:00:57', '2024-10-26 23:00:57'),
(17, 'App\\Models\\User', 8, 'hosp', '66de3f9a8739804e8c1593b3cf683a2f984231eb7c51613939546635f22359fa', '[\"*\"]', NULL, NULL, '2024-10-27 00:19:36', '2024-10-27 00:19:36'),
(18, 'App\\Models\\Customer', 1, 'hosp', '41e2474754ebdddbeab79cc308bef237377040fd94ffdd52653934ae1099bdf9', '[\"*\"]', NULL, NULL, '2024-10-27 00:39:10', '2024-10-27 00:39:10'),
(19, 'App\\Models\\Customer', 1, 'hosp', '4ce789a9d816e0c577703a8b74df63ec5f4f31ed4f8a5a41f5a4894b9b97082e', '[\"*\"]', NULL, NULL, '2024-10-27 00:51:07', '2024-10-27 00:51:07'),
(20, 'App\\Models\\Customer', 2, 'hosp', '94c86daac6d7bc30384e959baddfc7799bd0b415efc103e8abf6892ab0214bf1', '[\"*\"]', NULL, NULL, '2024-10-27 00:53:23', '2024-10-27 00:53:23'),
(21, 'App\\Models\\Customer', 3, 'hosp', '8affad525676d67327151b962c9f1b723a86e185ba3914a1ec0269646c6c52cc', '[\"*\"]', NULL, NULL, '2024-10-27 01:00:38', '2024-10-27 01:00:38'),
(22, 'App\\Models\\User', 2, 'hosp', 'fed0e89bc346f93307a099ab9b7b7381af2b83a7812ab2c8b82d78fc8b2d2047', '[\"*\"]', NULL, NULL, '2024-10-27 01:01:17', '2024-10-27 01:01:17'),
(23, 'App\\Models\\Customer', 4, 'hosp', 'a8cd14167bd188fc1b4cfed614753e5a16111878e5abce60e21467491799d955', '[\"*\"]', NULL, NULL, '2024-10-27 01:09:21', '2024-10-27 01:09:21'),
(24, 'App\\Models\\Customer', 2, 'hosp', '91c1e48c1d51f9f48a4d67344ede79488b85c3b9d28e63d3c582214423006d61', '[\"*\"]', NULL, NULL, '2024-11-04 22:28:43', '2024-11-04 22:28:43'),
(25, 'App\\Models\\Customer', 3, 'hosp', '46fda5563fdd1e1b1ec4e7f581be0667b8adcb07b7f9d3872c0e5900d691f07d', '[\"*\"]', NULL, NULL, '2024-11-04 22:29:17', '2024-11-04 22:29:17'),
(26, 'App\\Models\\Customer', 4, 'hosp', '240d01eb6ecf7d85be1fc1f15e786f3bcf7e773cdd0736f4d1ce53ef5ac5b66d', '[\"*\"]', NULL, NULL, '2024-11-04 23:54:41', '2024-11-04 23:54:41'),
(27, 'App\\Models\\Customer', 5, 'hosp', '2c68217411151c64ff391a49977cab482fc815a1ccbf1b3cea077fe47bedecae', '[\"*\"]', NULL, NULL, '2024-11-05 00:38:06', '2024-11-05 00:38:06'),
(28, 'App\\Models\\Customer', 6, 'hosp', '6fc5858e56cd59b0b533a36e560803837579dce75efebca31afd69e9000957d1', '[\"*\"]', NULL, NULL, '2024-11-05 00:42:13', '2024-11-05 00:42:13'),
(29, 'App\\Models\\Customer', 7, 'hosp', 'd654a1a0e06c1624631da7fb5d6fc07cc8a9abb53061c34609763d4839be5463', '[\"*\"]', NULL, NULL, '2024-11-05 00:43:35', '2024-11-05 00:43:35'),
(30, 'App\\Models\\Customer', 8, 'hosp', '47cb674a8beaf6d81cb97a62b275fd06150d1834f1cf0795ffcb650acd7ad2da', '[\"*\"]', NULL, NULL, '2024-11-05 00:48:28', '2024-11-05 00:48:28'),
(31, 'App\\Models\\Customer', 9, 'hosp', 'c354a13eff1c5accf6ff8faf850fa84baf52b9a5c71ef81552e5ebc1bc353d4a', '[\"*\"]', NULL, NULL, '2024-11-05 00:51:05', '2024-11-05 00:51:05'),
(32, 'App\\Models\\Customer', 10, 'hosp', 'b87ef33033b469f2c417ec6239960ce8ed7ee6c73c04606671de95a6eb7d783b', '[\"*\"]', NULL, NULL, '2024-11-05 21:32:36', '2024-11-05 21:32:36'),
(33, 'App\\Models\\Customer', 12, 'hosp', '7c11ecc516b33033c89944c62de53f55ecefa879c3811a436e382a48311af9b7', '[\"*\"]', NULL, NULL, '2024-11-05 21:45:22', '2024-11-05 21:45:22'),
(34, 'App\\Models\\Customer', 13, 'hosp', 'f7b05ece195b84a4d0735386b296ac519e212ee2bad4114fd035ed68ef34fa9e', '[\"*\"]', NULL, NULL, '2024-11-05 21:51:26', '2024-11-05 21:51:26'),
(35, 'App\\Models\\Customer', 14, 'hosp', '38e0278c8f49b6289b9fa8c2f56d5cd26e2be3d95cbf166a5881eeffb538ef0d', '[\"*\"]', NULL, NULL, '2024-11-05 21:54:47', '2024-11-05 21:54:47'),
(36, 'App\\Models\\User', 9, 'hosp', '062c206d2f7266cb665810a0b865b8b6c52b297b495fbed3af213f4f1ee272f1', '[\"*\"]', NULL, NULL, '2024-11-06 22:09:53', '2024-11-06 22:09:53'),
(37, 'App\\Models\\User', 9, 'hosp', '26fa3c1d6baf554f21cfd5c740101fa9b308fd9628cb94445bbbf879a2c5429c', '[\"*\"]', NULL, NULL, '2024-11-06 22:10:07', '2024-11-06 22:10:07'),
(38, 'App\\Models\\Customer', 15, 'hosp', 'a5743cdd81c398a7d6e178ccfe49fc21828b036b671007ae24d125ce58e737fc', '[\"*\"]', NULL, NULL, '2024-11-11 22:32:28', '2024-11-11 22:32:28'),
(39, 'App\\Models\\Customer', 17, 'hosp', '420c78853dd09e52397d7acb9a0662b983bd40ac3b2b08eea9294ca663d5892c', '[\"*\"]', NULL, NULL, '2024-11-12 00:57:54', '2024-11-12 00:57:54'),
(40, 'App\\Models\\Customer', 18, 'hosp', '04c8dc88a599faad7916db7d1ca2191133936e89f28ffee2d09b40f6bc7a5baa', '[\"*\"]', NULL, NULL, '2024-11-12 21:25:48', '2024-11-12 21:25:48'),
(41, 'App\\Models\\Customer', 18, 'hosp', '357812f05cecf0a30cddb5d55abbd06f7ab8f091813a5495591596fbb9cb33bf', '[\"*\"]', NULL, NULL, '2024-11-12 22:12:09', '2024-11-12 22:12:09'),
(42, 'App\\Models\\Customer', 19, 'hosp', '41a4d7491e09293a66a44f5620135fde10f6fb0408c623a7dced2d3f23a6f24a', '[\"*\"]', NULL, NULL, '2024-11-12 22:15:14', '2024-11-12 22:15:14'),
(43, 'App\\Models\\Customer', 19, 'hosp', 'd8056b8d136ad2e882e3528b09b097b86f1692e5038289a4611a5e4cde37f4e9', '[\"*\"]', NULL, NULL, '2024-11-12 22:15:36', '2024-11-12 22:15:36'),
(44, 'App\\Models\\Customer', 19, 'hosp', '6ebd65b5d4371d12d979aa09ddf1c6c1f63395b3145023ea0b50b82b576a0b58', '[\"*\"]', NULL, NULL, '2024-11-12 22:17:24', '2024-11-12 22:17:24'),
(45, 'App\\Models\\Customer', 19, 'hosp', 'f6d27f8a647e2546cfd6ee0d13b00ae7d4acb0984c2db5fd1b8e7eb2fe2e354c', '[\"*\"]', NULL, NULL, '2024-11-12 22:18:38', '2024-11-12 22:18:38'),
(46, 'App\\Models\\Customer', 18, 'hosp', 'ec841420b49980d815e88171737879f6d42f0ff8f99e97c8c60fad70e9dc6266', '[\"*\"]', NULL, NULL, '2024-11-12 22:34:54', '2024-11-12 22:34:54'),
(47, 'App\\Models\\Customer', 18, 'hosp', 'c3f13ad42592cb9271139848fbd8e685f0875e7dad2d54031112a68eb2656790', '[\"*\"]', NULL, NULL, '2024-11-12 22:37:55', '2024-11-12 22:37:55'),
(48, 'App\\Models\\Customer', 18, 'hosp', 'fe4f4f0cc31bf000596816c020cf00e0728cfb5ed6bb2c02c7426d32773e8d30', '[\"*\"]', NULL, NULL, '2024-11-12 22:38:42', '2024-11-12 22:38:42'),
(49, 'App\\Models\\Customer', 18, 'hosp', 'c765a9d8db4af43b7ef3479af47599a1519fa1230a33140eac81323d3a10403c', '[\"*\"]', NULL, NULL, '2024-11-12 22:40:44', '2024-11-12 22:40:44'),
(50, 'App\\Models\\Customer', 18, 'hosp', '7f8b6819031a60fcc55f55f14ce32ba20983962ea9cd88b7b28ccaa79bb02071', '[\"*\"]', NULL, NULL, '2024-11-12 23:38:53', '2024-11-12 23:38:53'),
(51, 'App\\Models\\Customer', 18, 'hosp', '715bff4836b5e90df3b2390ecf47425a914a54f448b46b4152044d789942ba44', '[\"*\"]', NULL, NULL, '2024-11-12 23:43:53', '2024-11-12 23:43:53'),
(52, 'App\\Models\\Customer', 18, 'hosp', '86fde577009cc8647377202cfba161c40760e28b9c7c57fa78cc3b6a7112a40c', '[\"*\"]', NULL, NULL, '2024-11-12 23:56:17', '2024-11-12 23:56:17'),
(53, 'App\\Models\\Customer', 18, 'hosp', 'f07a1f22fc4c5fe0b50401c0e0e45e4e10e0f8f250ebb8d36b7bcc5cb85933e4', '[\"*\"]', NULL, NULL, '2024-11-12 23:58:58', '2024-11-12 23:58:58'),
(54, 'App\\Models\\Customer', 18, 'hosp', '6e4470e72e218d66ef988f2c3783d3ed460bf658463e7f59f8a76e4750383f23', '[\"*\"]', NULL, NULL, '2024-11-13 00:03:38', '2024-11-13 00:03:38'),
(55, 'App\\Models\\Customer', 18, 'hosp', '3a1e5229a8e91e266eebbb937383157f073ce224cf4e6ae3d5de2b474233bca0', '[\"*\"]', NULL, NULL, '2024-11-13 00:19:56', '2024-11-13 00:19:56'),
(56, 'App\\Models\\Customer', 18, 'hosp', 'cd041ca895292959d5b7590178d62759d90644c8b84eaaf2ae460077adc039e5', '[\"*\"]', NULL, NULL, '2024-11-13 00:56:44', '2024-11-13 00:56:44'),
(57, 'App\\Models\\Customer', 18, 'hosp', '00a7eb1e8d58aa8e67d622a0ab3b3821d4ecc5d1e1c47f1a102b2951e89660a5', '[\"*\"]', NULL, NULL, '2024-11-13 00:57:12', '2024-11-13 00:57:12'),
(58, 'App\\Models\\Customer', 18, 'hosp', '88f3ad6be6f74a2e18f480975e0f9f0fd88d95f4c18f4cba7e9220fc1b80b23d', '[\"*\"]', NULL, NULL, '2024-11-13 00:59:56', '2024-11-13 00:59:56'),
(59, 'App\\Models\\Customer', 18, 'hosp', 'c18ae3e438e8f9e14e8631c677d839f076d11515bd31dd7038aae79249e35349', '[\"*\"]', NULL, NULL, '2024-11-13 01:00:36', '2024-11-13 01:00:36'),
(60, 'App\\Models\\Customer', 18, 'hosp', '5375d18d410a9e3e1a6a0f7a747348584443ede66b6e51f548561a5aef10cd44', '[\"*\"]', NULL, NULL, '2024-11-13 01:09:30', '2024-11-13 01:09:30'),
(61, 'App\\Models\\Customer', 18, 'hosp', '94cf2d1fb32bb8cd954e163f265720baca67d4dd9ddcd0800a8e156a66570cf0', '[\"*\"]', NULL, NULL, '2024-11-13 21:24:25', '2024-11-13 21:24:25'),
(62, 'App\\Models\\Customer', 18, 'hosp', '4440d712975a37f413191c94b4e37e74bce2eec0216d74c7c7d183be1813b481', '[\"*\"]', NULL, NULL, '2024-11-13 21:29:18', '2024-11-13 21:29:18'),
(63, 'App\\Models\\Customer', 18, 'hosp', '2f44d8a03531683626b371c820d5aff856752ee1ed0c7a077b86ada23dad6d9b', '[\"*\"]', NULL, NULL, '2024-11-13 21:35:45', '2024-11-13 21:35:45'),
(64, 'App\\Models\\Customer', 18, 'hosp', '23c001db1180c19722fc87d6bd6d2bdb276a7973fa75943398db9ce79f66eac5', '[\"*\"]', NULL, NULL, '2024-11-13 21:42:58', '2024-11-13 21:42:58'),
(65, 'App\\Models\\Customer', 18, 'hosp', 'be5ac7db8a863912535affaea209209bcedbe23635f1c7a4bd72d60ab2d1ad31', '[\"*\"]', NULL, NULL, '2024-11-13 21:43:51', '2024-11-13 21:43:51'),
(66, 'App\\Models\\Customer', 18, 'hosp', 'bf7b1c7ca03e02ee040d7bcdd96cbf20130da203c150017fd42f60b18a82c353', '[\"*\"]', NULL, NULL, '2024-11-13 22:54:57', '2024-11-13 22:54:57'),
(67, 'App\\Models\\Customer', 18, 'hosp', '959ab517f62cef07027a9102cf9e69f69346cec2954bdc2e8a21ba26c430b923', '[\"*\"]', NULL, NULL, '2024-11-13 22:56:29', '2024-11-13 22:56:29'),
(68, 'App\\Models\\Customer', 18, 'hosp', '8b803de0f894e0fced8f97d295493defc4bc4241d5206f88ec98070eda987a29', '[\"*\"]', NULL, NULL, '2024-11-14 00:01:04', '2024-11-14 00:01:04'),
(69, 'App\\Models\\Customer', 18, 'hosp', 'ce136297e8b88e71029d9d50c12263a5a255b5794822f852d579ec64eac22362', '[\"*\"]', NULL, NULL, '2024-11-14 00:03:07', '2024-11-14 00:03:07'),
(70, 'App\\Models\\Customer', 20, 'hosp', '33ace4314207b913274baac0c9b77e24be9336981770654642188abde1be8795', '[\"*\"]', NULL, NULL, '2024-11-14 00:05:12', '2024-11-14 00:05:12'),
(71, 'App\\Models\\Customer', 20, 'hosp', 'e64a23edc0285fe6b85a6344fbd3cf30159f222813fb1c63ac9710c5c1750880', '[\"*\"]', NULL, NULL, '2024-11-14 00:06:50', '2024-11-14 00:06:50'),
(72, 'App\\Models\\Customer', 21, 'hosp', '0fcdd675383f1c9aa336ba60903e4c7d136fdd966c7c980c5810b018f21880be', '[\"*\"]', NULL, NULL, '2024-11-14 00:07:24', '2024-11-14 00:07:24'),
(73, 'App\\Models\\Customer', 22, 'hosp', 'b01ec5bda2d7f1df148b5de805e999f69e908232467a348cc774bfcd230c5739', '[\"*\"]', NULL, NULL, '2024-11-14 00:08:10', '2024-11-14 00:08:10'),
(74, 'App\\Models\\Customer', 22, 'hosp', '8612c3d59a08babf579555d7d4c5cb470a3733ed40c67b32d70cfc2973d39d12', '[\"*\"]', NULL, NULL, '2024-11-14 00:08:29', '2024-11-14 00:08:29'),
(75, 'App\\Models\\Customer', 22, 'hosp', '167d5848ff551d900875b3cf58a95f03d327907abe3dec883be41928103c9777', '[\"*\"]', NULL, NULL, '2024-11-14 00:13:57', '2024-11-14 00:13:57'),
(76, 'App\\Models\\Customer', 22, 'hosp', '372dd1efd1aa097bcff0fb1d5cba2d5402740679e89d9e7d4f2bb4a0991aeba7', '[\"*\"]', NULL, NULL, '2024-11-14 00:16:20', '2024-11-14 00:16:20'),
(77, 'App\\Models\\Customer', 22, 'hosp', 'f1fd21bc256b0f0a58ae557b4211ea52b12aab91a4e65ae263b497d1ab9619c4', '[\"*\"]', NULL, NULL, '2024-11-14 00:18:33', '2024-11-14 00:18:33'),
(78, 'App\\Models\\Customer', 22, 'hosp', '8e34e95218fefe140bd10fae7a3463dd7c7680e57b53a6c5469601b758bb304f', '[\"*\"]', NULL, NULL, '2024-11-14 00:19:22', '2024-11-14 00:19:22'),
(79, 'App\\Models\\Customer', 23, 'hosp', '0df976a9105013fcc18b7298ac092d722d50aa9fdbbb56c5862e5eda8b58b7d7', '[\"*\"]', NULL, NULL, '2024-11-14 01:05:56', '2024-11-14 01:05:56'),
(80, 'App\\Models\\Customer', 23, 'hosp', 'b4f6ef2d81d762a43235532a8be7591fc0006fcc69dc9a0996ea9d395e72b083', '[\"*\"]', NULL, NULL, '2024-11-14 01:06:07', '2024-11-14 01:06:07'),
(81, 'App\\Models\\Customer', 22, 'hosp', 'a2bb07b318958a4dc0cfb4abe801fc1228c6035be1f04ca039dbb4fedfa14c5f', '[\"*\"]', NULL, NULL, '2024-11-15 21:08:46', '2024-11-15 21:08:46'),
(82, 'App\\Models\\Customer', 22, 'hosp', '5cf8fbc752d67188514e16d8d42a4d29ac68ad89cda71edce9a8c30c13d28333', '[\"*\"]', NULL, NULL, '2024-11-16 21:31:07', '2024-11-16 21:31:07'),
(83, 'App\\Models\\Customer', 18, 'hosp', '56057d40e7ea8b27b002fde7c04199bffa06bae7513328be928d71e49ee06502', '[\"*\"]', NULL, NULL, '2024-11-17 02:29:06', '2024-11-17 02:29:06'),
(84, 'App\\Models\\Customer', 22, 'hosp', 'bac83c6770b75cd510de5e6d2b96bebd277b84eb95b85e31f951cce4500bf6e7', '[\"*\"]', NULL, NULL, '2024-11-17 02:47:26', '2024-11-17 02:47:26'),
(85, 'App\\Models\\Customer', 22, 'hosp', '9e4821aa2ef7b564ae887004dccff9a434652a8942bb17f81693c5590820dc64', '[\"*\"]', NULL, NULL, '2024-11-19 00:38:25', '2024-11-19 00:38:25'),
(86, 'App\\Models\\Customer', 22, 'hosp', '0a21edc8d997714bb5332ffb2f723cac77a83235911a3444dd365284253d0c81', '[\"*\"]', NULL, NULL, '2024-11-24 23:57:33', '2024-11-24 23:57:33'),
(87, 'App\\Models\\Customer', 22, 'hosp', '70d8672771edcd5e28b1e18b5f1febfcbf196dd89d2ff92ea038e4d31110bdfc', '[\"*\"]', NULL, NULL, '2024-11-24 23:58:44', '2024-11-24 23:58:44'),
(88, 'App\\Models\\Customer', 22, 'hosp', '957911800a8e457158c76b2e9427e8282c96caf7f49a55cdac5495eeb9cf98f5', '[\"*\"]', NULL, NULL, '2024-11-24 23:59:14', '2024-11-24 23:59:14'),
(89, 'App\\Models\\Customer', 20, 'hosp', '9e7491e0bfc7ec7e0dee4fc84be9941b22d5efb396c3aaaf097ff7af3c4d6bde', '[\"*\"]', NULL, NULL, '2024-11-25 00:00:28', '2024-11-25 00:00:28'),
(90, 'App\\Models\\Customer', 22, 'hosp', '6ef4153eb0b8035a6d4e4aa6c1e1a0e16c54de7e605197982bfcc4000fbfe422', '[\"*\"]', NULL, NULL, '2024-11-25 00:02:12', '2024-11-25 00:02:12'),
(91, 'App\\Models\\Customer', 22, 'hosp', '9f1b086d3df15a615737e546c450127c22a6ebbd779b53f7387bc14e268c985f', '[\"*\"]', NULL, NULL, '2024-11-25 00:08:51', '2024-11-25 00:08:51'),
(92, 'App\\Models\\Customer', 22, 'hosp', '9e7ee2b7319b074c8f2e0666440ec9e86f5260e08fa7c14ff4f0d740e2aab448', '[\"*\"]', NULL, NULL, '2024-11-25 00:14:46', '2024-11-25 00:14:46'),
(93, 'App\\Models\\Customer', 22, 'hosp', '2115fc384a7f240c587f3af91d616a57842fd5ec68e146a35259a15911e0b676', '[\"*\"]', NULL, NULL, '2024-11-25 00:16:57', '2024-11-25 00:16:57'),
(94, 'App\\Models\\Customer', 22, 'hosp', 'de54d5ddfc646d7d10d9ea0c813447247fce0f596d4c157954d17197880175e3', '[\"*\"]', NULL, NULL, '2024-11-25 00:21:38', '2024-11-25 00:21:38'),
(95, 'App\\Models\\Customer', 22, 'hosp', 'f9460e6fce8e5ec9791eaef5716a9408938c2ecbf214a6a4d4d19b69abe376cb', '[\"*\"]', NULL, NULL, '2024-11-25 00:31:39', '2024-11-25 00:31:39'),
(96, 'App\\Models\\Customer', 22, 'hosp', '78e0402f9136e1abbe3428b0eff4c336803eafe5bf62323b5ec90226b2267b4f', '[\"*\"]', NULL, NULL, '2024-11-25 00:41:32', '2024-11-25 00:41:32'),
(97, 'App\\Models\\Customer', 22, 'hosp', 'f036f021051f4848ae6b8fbf81991a7b0bf89b3b1920e916fb47c9eec2aca728', '[\"*\"]', NULL, NULL, '2024-11-25 00:46:32', '2024-11-25 00:46:32'),
(98, 'App\\Models\\Customer', 22, 'hosp', 'abfae412d9d156d434cb77ecf831acbc01d0a0c145aa821294858f4fc6f222d6', '[\"*\"]', NULL, NULL, '2024-11-25 00:50:06', '2024-11-25 00:50:06'),
(99, 'App\\Models\\Customer', 22, 'hosp', '4ff31ef3e396bcd5891b9f888b05d7199f5f0fbee5cfa7d984d34bfd4eb36f55', '[\"*\"]', NULL, NULL, '2024-11-25 00:53:59', '2024-11-25 00:53:59'),
(100, 'App\\Models\\Customer', 20, 'hosp', '29cef4d3da88ab3bab3bf150858405c321e63b570c3478ab5ae12a732595489d', '[\"*\"]', NULL, NULL, '2024-11-25 01:00:14', '2024-11-25 01:00:14'),
(101, 'App\\Models\\Customer', 23, 'hosp', 'ea2070b77da5f3b51b073288e14230d4102bfbc3a2d96115d1913496ec90b6ad', '[\"*\"]', NULL, NULL, '2024-11-25 01:00:31', '2024-11-25 01:00:31'),
(102, 'App\\Models\\Customer', 22, 'hosp', '16beeff960775d740c82f5d3f5bda3b88608f7804362de2bcf114101fd606221', '[\"*\"]', NULL, NULL, '2024-11-25 21:44:17', '2024-11-25 21:44:17'),
(103, 'App\\Models\\Customer', 22, 'hosp', '471bba602e0a1f0ad68d83283525bbe075fe8a04b083b82b14635f95ed2ae1f3', '[\"*\"]', NULL, NULL, '2024-11-25 21:44:34', '2024-11-25 21:44:34'),
(104, 'App\\Models\\Customer', 22, 'hosp', '4ab4385a6cc402fadc0768d9786d6c134a2637e237e2ee057a6c928a3cc3dd97', '[\"*\"]', NULL, NULL, '2024-11-26 21:16:35', '2024-11-26 21:16:35'),
(105, 'App\\Models\\Customer', 22, 'hosp', '864f11402bf46d729604c0e4bfbaf01afcf15fe1e6f1a77f0aa79d2fb2bdf3a0', '[\"*\"]', NULL, NULL, '2024-11-26 22:27:03', '2024-11-26 22:27:03'),
(106, 'App\\Models\\Customer', 22, 'hosp', 'e65a5017f32178394a4698a0d30f766b1834e323de195338f24a13d0637183a9', '[\"*\"]', NULL, NULL, '2024-11-26 22:29:22', '2024-11-26 22:29:22'),
(107, 'App\\Models\\Customer', 22, 'hosp', 'b1742c38143f0e0a22d3bd4ed94d7a92621da15a66d41a097e2ffa1961fa8a8e', '[\"*\"]', NULL, NULL, '2024-11-26 22:39:24', '2024-11-26 22:39:24'),
(108, 'App\\Models\\Customer', 22, 'hosp', '03e05147604bea23a7b93141efdd76ec4825f16bc3aa7febba2e35a28971b805', '[\"*\"]', NULL, NULL, '2024-11-27 00:25:58', '2024-11-27 00:25:58'),
(109, 'App\\Models\\Customer', 23, 'hosp', 'f17587fc553df65c30f3b9737287aa9e7074dc4947f427cc93be89f07ccd1e75', '[\"*\"]', NULL, NULL, '2024-11-27 00:28:55', '2024-11-27 00:28:55'),
(110, 'App\\Models\\Customer', 23, 'hosp', '8a0af544682d303503490cf751d31ac40b04e52b041e64280aa3ca42c3a6f355', '[\"*\"]', NULL, NULL, '2024-11-27 00:29:11', '2024-11-27 00:29:11'),
(111, 'App\\Models\\Customer', 22, 'hosp', '5f81e6866e64e0b0dd6e9cbc9453b489f3e828f70f15ed925e8dd1eaf7044eee', '[\"*\"]', NULL, NULL, '2024-11-27 00:29:28', '2024-11-27 00:29:28'),
(112, 'App\\Models\\Customer', 22, 'hosp', 'da7aeabd36304fa3cfecde2dc0471f6a94899933c3f1aa4209412ee248852bec', '[\"*\"]', NULL, NULL, '2024-11-27 01:22:15', '2024-11-27 01:22:15'),
(113, 'App\\Models\\Customer', 22, 'hosp', '2dd367ba60f8081f83d6d1e51d59b696825050e1c3b0d36d862b6ef67e7c0785', '[\"*\"]', NULL, NULL, '2024-11-27 21:09:19', '2024-11-27 21:09:19'),
(114, 'App\\Models\\Customer', 22, 'hosp', '592784013fa0fd1af4bfeea14e7d01c874bda648b0faddd7f86e1f5e994648f3', '[\"*\"]', NULL, NULL, '2024-11-27 21:09:26', '2024-11-27 21:09:26'),
(115, 'App\\Models\\Customer', 22, 'hosp', 'f7bd09e617dee1a6575a2159a5bb389a408690aa2ddb77bbb768662ed29c3870', '[\"*\"]', NULL, NULL, '2024-11-27 21:15:08', '2024-11-27 21:15:08'),
(116, 'App\\Models\\Customer', 22, 'hosp', 'e7ebf9bae9145af7a2b578fdbdcb44efd6ad6eb47624b5effa6c236e316a9372', '[\"*\"]', NULL, NULL, '2024-11-27 21:18:47', '2024-11-27 21:18:47'),
(117, 'App\\Models\\Customer', 22, 'hosp', 'dc9315df87ae920f91ab385211a30bea0b4c90287c9752bd432f970e953001a5', '[\"*\"]', NULL, NULL, '2024-11-27 21:26:31', '2024-11-27 21:26:31'),
(118, 'App\\Models\\Customer', 23, 'hosp', 'ed9351b113dfaae8be889f1123752649fb3506f471b11db6ba447156039727fe', '[\"*\"]', NULL, NULL, '2024-11-27 21:28:17', '2024-11-27 21:28:17'),
(119, 'App\\Models\\Customer', 22, 'hosp', 'a5d00122fb563276132897c7995afc453b9cfe8c127fe251c1da000f516bccd1', '[\"*\"]', NULL, NULL, '2024-11-27 21:39:29', '2024-11-27 21:39:29'),
(120, 'App\\Models\\Customer', 22, 'hosp', '866745677a81197943033a7f088a9aabfe777558f8936bda044cb6b0e47a7232', '[\"*\"]', NULL, NULL, '2024-11-27 21:50:41', '2024-11-27 21:50:41'),
(121, 'App\\Models\\Customer', 23, 'hosp', 'bc75644771b01102fc3e95691a89cb924cd118b8883209d796776b2426de88a3', '[\"*\"]', NULL, NULL, '2024-11-27 21:51:36', '2024-11-27 21:51:36'),
(122, 'App\\Models\\Customer', 20, 'hosp', '31c85e8e56be1be0ebd78d18f808f806fb77e93c6f99ba13edd43d640319a832', '[\"*\"]', NULL, NULL, '2024-11-27 21:55:01', '2024-11-27 21:55:01'),
(123, 'App\\Models\\Customer', 22, 'hosp', '0ea28ae974dedd48524f0035c2b05a8ae98caeebf9f450ee66a3149424ccd4e5', '[\"*\"]', NULL, NULL, '2024-11-27 21:57:44', '2024-11-27 21:57:44'),
(124, 'App\\Models\\Customer', 23, 'hosp', '64bba3ee017f85e060073bb50fadbe78d505b5699ee4b112267f6cce5d254ff2', '[\"*\"]', NULL, NULL, '2024-11-27 22:00:40', '2024-11-27 22:00:40'),
(125, 'App\\Models\\Customer', 18, 'hosp', '59a15b15442b401c9daa9d6f761e2741f91229a28a3d7d03ab94abcb6bbabf76', '[\"*\"]', NULL, NULL, '2024-11-27 22:21:09', '2024-11-27 22:21:09'),
(126, 'App\\Models\\Customer', 18, 'hosp', '1b302e7da3c6841345670e71e9e709575a42c54587db9a215b80cfbf9aa302a9', '[\"*\"]', NULL, NULL, '2024-11-27 22:21:10', '2024-11-27 22:21:10'),
(127, 'App\\Models\\Customer', 19, 'hosp', '468d1db88ac63439219211c2a7d67204f28e45b30c4c25b74eb862fdefcba50d', '[\"*\"]', NULL, NULL, '2024-11-27 22:21:22', '2024-11-27 22:21:22'),
(128, 'App\\Models\\Customer', 22, 'hosp', '9e10119adf17d7500aa2edc3b58fcaf6871b71b4834f68da84d2541609acfe2b', '[\"*\"]', NULL, NULL, '2024-11-27 22:23:12', '2024-11-27 22:23:12'),
(129, 'App\\Models\\Customer', 23, 'hosp', 'c4495aef1d9f2493fd3a658af1c3852130a041a4c6af549a39e31b54fab08a45', '[\"*\"]', NULL, NULL, '2024-11-27 22:34:27', '2024-11-27 22:34:27'),
(130, 'App\\Models\\Customer', 24, 'hosp', 'bcd8256bc5098f0062b3ad49d43b0b1e0dfb47c20ce233be6cf25869e237d720', '[\"*\"]', NULL, NULL, '2024-11-28 00:26:33', '2024-11-28 00:26:33'),
(131, 'App\\Models\\Customer', 24, 'hosp', '4f692c89581b407d7ea7113dbd60f5282aa016629359a4f2778230d4c96bddb3', '[\"*\"]', NULL, NULL, '2024-11-28 00:26:59', '2024-11-28 00:26:59'),
(132, 'App\\Models\\Customer', 22, 'hosp', 'fd9c675df4ed46833eeec895982b0d998c3de3fa3ee675f42e146702a8f42ed7', '[\"*\"]', NULL, NULL, '2024-11-28 00:27:25', '2024-11-28 00:27:25'),
(133, 'App\\Models\\Customer', 22, 'hosp', '2d6390f879e8a7c97d60332b5a666732e08a8781f393fed3fd479f7dd267fa03', '[\"*\"]', NULL, NULL, '2024-11-28 00:34:04', '2024-11-28 00:34:04'),
(134, 'App\\Models\\Customer', 25, 'hosp', 'fa578137c941b5915c0252170cef0e0aa287d1809c9407720f8d8bf71751ccfb', '[\"*\"]', NULL, NULL, '2024-11-28 00:47:34', '2024-11-28 00:47:34'),
(135, 'App\\Models\\Customer', 25, 'hosp', '1a7946586578ad1abe818a62e28ef90caa6dc52e0e6e04459f4f135c7cada005', '[\"*\"]', NULL, NULL, '2024-11-28 00:47:53', '2024-11-28 00:47:53'),
(136, 'App\\Models\\Customer', 22, 'hosp', '387a1ede8cb26bcbf2e8606075ffb85c1c0e603c966f7a6bda1e77bd8e0f3489', '[\"*\"]', NULL, NULL, '2024-11-28 01:25:02', '2024-11-28 01:25:02'),
(137, 'App\\Models\\Customer', 22, 'hosp', '4def159168402f3960b1b0a5366dd86d90d35f22c511d89b3191ff494aeb645c', '[\"*\"]', NULL, NULL, '2024-11-29 22:49:36', '2024-11-29 22:49:36'),
(138, 'App\\Models\\Customer', 22, 'hosp', '1d06dc6ceb2e99155e275a9ef72f40056388ce08aa24652f7f89add6da75f857', '[\"*\"]', NULL, NULL, '2024-11-29 22:50:31', '2024-11-29 22:50:31'),
(139, 'App\\Models\\Customer', 22, 'hosp', 'e999663007429d15b830a52ffbcf0881afca0af1e8ed86e24a9bfdcd9f31878a', '[\"*\"]', NULL, NULL, '2024-11-29 23:39:23', '2024-11-29 23:39:23'),
(140, 'App\\Models\\Customer', 22, 'hosp', '4d80113c6a2a3092a14c892498e5d4bd6a68e8dd5a5ecc5c7dc825e5296444f5', '[\"*\"]', NULL, NULL, '2024-11-30 01:02:07', '2024-11-30 01:02:07');

-- --------------------------------------------------------

--
-- Table structure for table `sales_events`
--

CREATE TABLE `sales_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `eventname` varchar(255) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_events`
--

INSERT INTO `sales_events` (`id`, `eventname`, `startdate`, `enddate`, `created_at`, `updated_at`) VALUES
(1, 'Eid-Ul-Adha', '2024-10-17', '2024-10-29', '2024-10-16 01:25:32', '2024-10-16 01:25:32'),
(2, 'Eid-Ul-Fitr', '2024-08-01', '2024-10-17', '2024-10-16 01:51:18', '2024-10-16 01:51:18'),
(3, 'Ramadan', '2024-05-01', '2024-05-30', '2024-10-22 00:49:41', '2024-10-22 00:49:41'),
(4, 'Ashura', '2024-10-03', '2024-10-20', '2024-10-24 00:40:20', '2024-10-24 00:40:20'),
(5, 'Eid-Ul-Fitr', '2024-11-13', '2024-11-14', '2024-11-12 00:40:47', '2024-11-12 00:40:47');

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
(1, 'Julfiqur', 'jhraj963@gmail.com', NULL, '$2y$12$iGTOZ/1mNOs8uOmbhNX4fOP0t/uXWNxxIQc00ADnTy4eKjnzlf3h2', NULL, '2024-10-06 21:47:57', '2024-10-06 21:47:57'),
(2, 'Julfiqur', 'wdpfr59@gmail.com', NULL, '$2y$12$NQV0wIGsEottjjn/H.kuSeT6q6TxLT34ToBLwdsrDJ0HqcILHTN/C', NULL, '2024-10-16 01:12:29', '2024-10-16 01:12:29'),
(3, 'Julfiqur', 'abc@gmail.com', NULL, '$2y$12$77wbv9YoYAElObZ9uQAUmubM8q.7xcAnm.0CJjHYVTrqUG1BELfP.', NULL, '2024-10-21 22:43:05', '2024-10-21 22:43:05'),
(4, 'Fahim', 'fahim@gmail.com', NULL, '$2y$12$3sDJ5OqHNyNMujrLSvRu6Olt4Lb/u1B4tytlfGYIeJyG68Kfk5/Qu', NULL, '2024-10-21 23:08:04', '2024-10-21 23:08:04'),
(5, 'Mamun', 'mamun637@gmail.com', NULL, '$2y$12$7BV0WT2yDJ0yOaSYKWOtU.1irEr9yfQ5Qc3FFXxMWszPK9Tod.z8S', NULL, '2024-10-26 01:44:11', '2024-10-26 01:44:11'),
(6, 'jfmm', 'jfklj7656@gmail.com', NULL, '$2y$12$gLiFEpqkmTTzDmhTiOgtQOqwd499XofL2231Fxw/BL3vKsynBOZBm', NULL, '2024-10-26 22:59:16', '2024-10-26 22:59:16'),
(7, 'alkjgklk', 'lkgjfkljhhhh7656@gmail.com', NULL, '$2y$12$H.WJ4feBEQWV6TpEOrMj0u2spMZ5aynEfd3R5lMAxYODfn.CAJlp2', NULL, '2024-10-26 23:00:57', '2024-10-26 23:00:57'),
(8, 'alkjgklk', 'lkgjfk4vbcb5@gmail.com', NULL, '$2y$12$Axf8peTTCqdzwzNyWd47a.w0AQZpe/oXuyU.j6CliVGR4q2rg545e', NULL, '2024-10-27 00:19:36', '2024-10-27 00:19:36'),
(9, 'Mukut', 'mukut@gmail.com', NULL, '$2y$12$HQNCwS3GQfESqLcAeWZV2.bND36X0f6t9ziJwg6FhpIIaMLsdPDHS', NULL, '2024-11-06 22:09:53', '2024-11-06 22:09:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_products`
--
ALTER TABLE `add_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allorders`
--
ALTER TABLE `allorders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

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
-- Indexes for table `sales_events`
--
ALTER TABLE `sales_events`
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
-- AUTO_INCREMENT for table `add_products`
--
ALTER TABLE `add_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `allorders`
--
ALTER TABLE `allorders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `sales_events`
--
ALTER TABLE `sales_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
