-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2023 at 12:11 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(191) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'MSI', '1655269243Msi_logo.png', '2023-10-15 17:30:17', '2023-10-24 13:44:15'),
(2, 'DELL', '1655269287Dell_Logo.svg.png', '2023-10-15 17:30:17', '2023-10-21 07:07:24'),
(3, 'Acer', '1655269437acer.jpg', '2023-10-15 17:30:17', '2023-10-15 17:30:17'),
(4, 'HP', '16552694512048px-HP_logo_2012.svg.png', '2023-10-15 17:30:17', '2023-10-15 17:30:17'),
(5, 'Lenovo', '1655269468Lenovo_logo_2015.svg.png', '2023-10-15 17:30:17', '2023-10-15 17:30:17'),
(6, 'Asus', '1655269480AsusTek-black-logo.png', '2023-10-15 17:30:17', '2023-10-15 17:30:17');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `qty`, `price`, `product_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(44, 1, 15000000, 2, 6, '2023-10-15 17:30:17', '2023-10-15 17:30:17');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Laptop gaming', '2023-10-15 17:30:17', '2023-10-15 17:30:17'),
(2, 'Laptop văn phòng', '2023-10-15 17:30:17', '2023-10-15 17:30:17'),
(3, 'Laptop đồ họa', '2023-10-22 17:36:52', '2023-10-22 17:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hex` varchar(10) NOT NULL,
  `name_color` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `hex`, `name_color`, `created_at`, `updated_at`) VALUES
(1, '#0E0E0E', 'Đen', '2022-06-18 04:00:03', '2022-06-18 04:00:03'),
(2, '#EB2D37', 'Đỏ', '2022-06-18 04:02:31', '2022-06-18 04:02:31'),
(3, '#8A49E4', 'Tím', '2022-06-28 02:13:58', '2022-06-28 02:13:58'),
(4, '#3381F6', 'Xanh dương', '2022-06-28 02:16:04', '2022-06-28 02:16:04'),
(5, '#A0D911', 'Xanh Lá', '2022-06-28 02:16:43', '2022-06-28 02:16:43'),
(6, '#FBDD1E', 'Vàng Nhạt', '2022-06-28 02:18:45', '2022-06-28 02:18:45'),
(7, '#F0F2F4', 'Xám', '2022-06-28 02:19:17', '2022-06-28 02:19:17'),
(8, '#FFFFFF', 'Trắng', '2022-06-28 02:19:45', '2022-06-28 02:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `product_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(33, 'ok', 16, 18, '2023-10-24 13:22:42', '2023-10-24 13:22:42'),
(34, 'ok2', 16, 18, '2023-10-24 13:23:05', '2023-10-24 13:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(20) NOT NULL,
  `feature` smallint(6) NOT NULL,
  `discount_rate` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `desc_coupon` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `feature`, `discount_rate`, `quantity`, `status`, `desc_coupon`, `created_at`, `updated_at`) VALUES
(5, 'ABCDEF123', 0, 20, 97, 1, 'Giảm giá 20%', '2022-07-13 14:13:29', '2022-08-07 20:46:39'),
(6, 'ABC', 1, 500000, 91, 1, 'aaa', NULL, '2023-10-23 12:08:57'),
(7, 'GIAMGIA', 0, 10, 99, 1, 'Giảm giá 10%', '2022-08-08 20:59:06', '2023-10-23 03:51:28');

-- --------------------------------------------------------

--
-- Table structure for table `cpu`
--

CREATE TABLE `cpu` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cpu`
--

INSERT INTO `cpu` (`id`, `name`, `created_at`, `updated_at`) VALUES
('1', 'CPUIntel, Core i7, 10750H', '2022-06-14 12:42:48', '2022-06-14 12:42:48'),
('i51240P', 'Intel Core i5 1240P, 12 nhân, 16 luồng', '2022-07-31 01:13:03', '2022-07-31 01:13:03');

-- --------------------------------------------------------

--
-- Table structure for table `gpu`
--

CREATE TABLE `gpu` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gpu`
--

INSERT INTO `gpu` (`id`, `name`, `created_at`, `updated_at`) VALUES
('1', 'RTX 3070Ti 16gb', '2022-06-14 12:43:38', '2022-06-14 12:43:38'),
('IrisXeGraphics', 'Intel Iris Xe Graphics', '2022-07-31 01:18:14', '2022-07-31 01:18:14'),
('RTX3070Ti8GBGDDR6', 'NVIDIA® GeForce RTX™ 3070 Ti 8GB GDDR6', '2022-07-31 01:26:21', '2022-07-31 01:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_05_28_084834_create_users_table', 2),
(4, '2022_06_04_080651_create_categories_table', 2),
(5, '2022_06_04_080900_create_brands_table', 2),
(6, '2022_06_05_125802_update_users_table', 3),
(7, '2022_06_09_093408_create_suppliers_table', 3),
(8, '2022_06_09_110214_create_products_table', 3),
(10, '2022_06_13_095103_create_ram_table', 4),
(11, '2022_06_13_095737_create_cpu_table', 4),
(12, '2022_06_13_095902_create_gpu_table', 4),
(13, '2022_06_13_101340_change_desc_type_products_table', 4),
(15, '2022_06_18_155426_create_colors_table', 5),
(18, '2022_06_12_132228_update_products_table', 6),
(21, '2022_07_04_094645_create_orders_table', 9),
(22, '2022_07_04_110606_create_order_detail_table', 10),
(23, '2022_07_12_025208_create_cart_table', 11),
(24, '2022_07_13_062158_create_tbl_social_table', 12),
(26, '2022_07_13_104859_create_coupons_table', 13),
(27, '2022_05_28_095021_create_roles_table', 14),
(28, '2022_07_16_160301_create_token_reset_pass_table', 15),
(29, '2022_07_20_043435_create_statistical_table', 16),
(32, '2022_08_02_043835_create_comments_table', 17),
(33, '2022_08_03_030545_create_ratings_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `discount_code` varchar(20) DEFAULT NULL,
  `discount_price` double DEFAULT 0,
  `payment_method` varchar(20) NOT NULL,
  `note` text DEFAULT NULL,
  `total_price` double NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `desc_cancel` varchar(50) DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_name`, `email`, `phone_number`, `address`, `city`, `country`, `discount_code`, `discount_price`, `payment_method`, `note`, `total_price`, `status`, `desc_cancel`, `customer_id`, `admin_id`, `created_at`, `updated_at`) VALUES
(70, 'Demo Log', 'log@gmail.com', '0123456789', 'Ha Nội', 'Hà Nội', 'Việt Nam', 'GIAMGIA', 3200000, 'trực tiếp', 'Test thanh toán giỏ hàng', 28830000, 1, NULL, 18, 2, '2023-10-23 03:51:23', '2023-10-23 03:52:13');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` double NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `price`, `quantity`, `total_price`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES
(55, 17000000, 1, 17000000, 70, 16, '2023-10-23 03:51:28', '2023-10-23 03:51:28'),
(56, 15000000, 1, 15000000, 70, 15, '2023-10-23 03:51:28', '2023-10-23 03:51:28');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
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
  `name` varchar(50) NOT NULL,
  `unit` varchar(30) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `quantity_sold` int(11) NOT NULL DEFAULT 0,
  `pin` varchar(50) DEFAULT NULL,
  `price` double UNSIGNED NOT NULL,
  `desc` text NOT NULL,
  `avatar` varchar(1000) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `cpu_id` varchar(15) DEFAULT NULL,
  `gpu_id` varchar(15) DEFAULT NULL,
  `ram_id` varchar(15) DEFAULT NULL,
  `color_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `unit`, `quantity`, `quantity_sold`, `pin`, `price`, `desc`, `avatar`, `status`, `category_id`, `brand_id`, `supplier_id`, `created_at`, `updated_at`, `weight`, `cpu_id`, `gpu_id`, `ram_id`, `color_id`) VALUES
(1, 'Laptop MSI Gaming GF65 10UE-286VN i5 10500H', 'Cái', 2, 3, '100', 15000000, 'Laptop MSI Gaming GF65 10UE-286VN i5 10500H/16GB/512GB/15.6FHD/NVIDIA GeForce RTX 3060', 'Laptop_MSI_Gaming_GF65_10UE-286VN_i5_10500H/1655270051Picture1.jpg', 0, 1, 1, 1, '2022-06-14 15:14:11', '2022-08-08 21:06:18', 2, '1', '1', '1', '#3381F6'),
(2, 'Laptop Dell Gaming G15 5511 i5 11400H', 'Cái', 97, 3, '100', 15000000, 'Laptop Dell Gaming G15 5511 i5 11400H/8GB/256GB/15.6\"FHD/NVIDIA GeForce RTX 3050 4GB/Win 11', 'Laptop_Dell_Gaming_G15_5511_i5_11400H/1655270131Picture2.jpg', 0, 1, 2, 1, '2022-06-14 15:15:31', '2022-07-26 03:13:17', 2, '1', '1', '1', '#EB2D37'),
(3, 'Laptop Acer Nitro Gaming AN515-45-R6EV R5 5600H', 'Cái', 92, 8, '100', 25000000, 'Laptop Acer Nitro Gaming AN515-45-R6EV R5 5600H/8GB/512GB SSD/GTX1650 4GB/Win11', 'Laptop_Acer_Nitro_Gaming_AN515-45-R6EV_R5_5600H/1655276393Picture1.png', 0, 1, 3, 1, '2022-06-14 16:59:53', '2022-08-08 02:27:56', 2, '1', '1', '1', '#0E0E0E'),
(4, 'Laptop HP Gaming Victus 16-e0168AX R7 5800H', 'Cái', 1000, 90, '100', 150000000, 'Laptop HP Gaming Victus 16-e0168AX R7 5800H/8GB/512GB/16.1FHD/NVIDIA GeForce RTX 3050 Ti 4GB/Win 11', 'Laptop_HP_Gaming_Victus_16-e0168AX_R7_5800H/1655276443Picture2.png', 0, 1, 4, 1, '2022-06-14 17:00:43', '2022-06-28 03:14:22', 2, '1', '1', '1', '#0E0E0E'),
(5, 'Laptop Acer Aspire Gaming A715 42G R4ST R5 5500U', 'Cái', 100, 80, '100', 15000000, 'Laptop Acer Aspire Gaming A715 42G R4ST R5 5500U/8GB/256GB SSD/Nvidia GTX1650 4GB/Win10', 'Laptop_Acer_Aspire_Gaming_A715_42G_R4ST_R5_5500U/1655276542Picture3.png', 0, 1, 3, 1, '2022-06-14 17:02:23', '2022-06-28 03:12:27', 2, '1', '1', '1', '#8A49E4'),
(6, 'Laptop HP Gaming OMEN 16-b0141TX i5 11400H', 'Cái', 100, 0, '100', 150000000, 'Laptop HP Gaming OMEN 16-b0141TX i5 11400H/16GB/1TBSSD + 32GB/16.1\"FHD/NVIDIA GeForce RTX 3060 6GB/Win10', 'Laptop_HP_Gaming_OMEN_16-b0141TX_i5_11400H/1655276599Picture4.png', 0, 1, 4, 1, '2022-06-14 17:03:19', '2022-06-28 03:14:41', 100, '1', '1', '1', '#8A49E4'),
(7, 'Laptop Lenovo Yoga 7 14ACN6 R5 5600U', 'Cái', 100, 0, '100', 150000000, 'Laptop Lenovo Yoga 7 14ACN6 R5 5600U/8GB/512GB/14.0\'\'FHD/Win 11', 'Laptop_Lenovo_Yoga_7_14ACN6_R5_5600U/1655276712Picture5.png', 0, 2, 5, 1, '2022-06-14 17:05:12', '2022-06-14 17:05:12', 100, '1', '1', '1', '#F0F2F4'),
(8, 'Laptop Dell Inspiron N3505 R5 3450U', 'Cái', 1000, 0, '100', 160000000, 'Laptop Dell Inspiron N3505 R5 3450U/8GB/256GB/15.6\"FHD Touch/AMD Radeon Vega 8/Win 10', 'Laptop_Dell_Inspiron_N3505_R5_3450U/1655276820Picture6.png', 0, 2, 2, 1, '2022-06-14 17:07:00', '2022-06-14 17:07:00', 2, '1', '1', '1', '#8A49E4'),
(9, 'Laptop MSI Modern 14 B11MOU 852VN i5 1155G7', 'Cái', 100, 0, '100', 150000000, 'Laptop MSI Modern 14 B11MOU 852VN i5 1155G7/8GB/512GB/14\"FHD/Win 10', 'Laptop_MSI_Modern_14_B11MOU_852VN_i5_1155G7/1655276860Picture7.png', 0, 2, 1, 1, '2022-06-14 17:07:40', '2022-06-14 17:07:40', 2, '1', '1', '1', '#EB2D37'),
(10, 'Laptop Lenovo ThinkBook 15 G2 ITL i5 1135G7', 'Cái', 1000, 0, '100', 14000000, 'Laptop Lenovo ThinkBook 15 G2 ITL i5 1135G7/8GB/512GB/15.6”FHD/MX450 2GB/Win 11', 'Laptop_Lenovo_ThinkBook_15_G2_ITL_i5_1135G7/1655276963Picture8.png', 0, 2, 5, 1, '2022-06-14 17:09:23', '2022-06-14 17:09:23', 2, '1', '1', '1', '#3381F6'),
(11, 'Laptop HP ZBook Firefly 14 G8 i5 1135G7', 'Cái', 1000, 0, '100', 30000000, 'Laptop HP ZBook Firefly 14 G8 i5 1135G7/8GB/512GB/14”FHD/Win 10 Pro', 'Laptop_HP_ZBook_Firefly_14_G8_i5_1135G7/1655277017Picture9.png', 0, 1, 4, 1, '2022-06-14 17:10:17', '2022-07-30 23:17:38', 2, '1', '1', '1', '#F0F2F4'),
(12, 'Laptop HP Envy x360 13-bd0530TU i5 1135G7', 'Cái', 100, 0, '100', 15000000, 'Laptop HP Envy x360 13-bd0530TU i5 1135G7/8GB/512GB/13.3\"FHD Touch/Bút/Win 11 ', 'Laptop_HP_Envy_x360_13-bd0530TU_i5_1135G7/1655277078Picture10.png', 0, 1, 4, 1, '2022-06-14 17:11:19', '2022-06-28 03:15:08', 2, '1', '1', '1', '#3381F6'),
(13, 'Laptop Asus Zenbook UX325EA-KG656W i5 1135G7', 'Cái', 100, 0, '100', 15000000, 'Laptop Asus Zenbook UX325EA-KG656W i5 1135G7', 'Laptop_Asus_Zenbook_UX325EA-KG656W_i5_1135G7/1655277153Picture11.png', 0, 2, 6, 1, '2022-06-14 17:12:34', '2022-06-14 17:12:34', 2, '1', '1', '1', '#A0D911'),
(14, 'Laptop HP Pavilion 15 eg0539TU i5 1135G7', 'Cái', 100, 0, '100', 150000000, 'Laptop HP Pavilion 15 eg0539TU i5 1135G7/8GB/512GB/15.6\"FHD/Win 11', 'Laptop_HP_Pavilion_15_eg0539TU_i5_1135G7/1655277196Picture12.png', 0, 2, 4, 1, '2022-06-14 17:13:16', '2022-06-14 17:13:16', 100, '1', '1', '1', '#FBDD1E'),
(15, 'Laptop CHUWI GemiBook Pro Celeron N5100', 'Cái', 99, 1, '100', 15000000, 'Laptop CHUWI GemiBook Pro Celeron N5100/8GB/256GB/14\'\'IPS/Win 10', 'Laptop_CHUWI_GemiBook_Pro_Celeron_N5100/1655277247Picture13.png', 0, 1, 5, 1, '2022-06-14 17:14:07', '2023-10-23 03:52:13', 2, '1', '1', '1', '#8A49E4'),
(16, 'Laptop Dell Inspiron N3511 i5 1135G7', 'Cái', 95, 3, '100', 17000000, 'Laptop Dell Inspiron N3511 i5 1135G7/4GB/512GB/15.6\"FHD/Win 11+Office HS21 ', 'Laptop_Dell_Inspiron_N3511_i5_1135G7/1655277382Picture14.png', 0, 1, 2, 1, '2022-06-14 17:16:22', '2023-10-23 03:52:13', 2, '1', '1', '1', '#8A49E4'),
(17, 'Laptop Acer Nitro Gaming AN515-57-74NU i7 11800H', 'Cái', 100, 0, '100', 40000000, 'Laptop Acer Nitro Gaming AN515-57-74NU i7 11800H/8GB/512GB/NVIDIA GeForce RTX 3050 Ti 4GB/Win10', 'Laptop_Acer_Nitro_Gaming_AN515-57-74NU_i7_11800H/1655277435Picture15.png', 0, 1, 3, 1, '2022-06-14 17:17:15', '2022-07-30 23:16:11', 1000, '1', '1', '1', '#3381F6'),
(18, 'HP Envy x360 13 ay0069AU R7 4700U', 'Cái', 8997, 3, '100', 16000000, 'HP Envy x360 13 ay0069AU R7 4700U/8GB/256GB/13.3FHDTouch/Win 10+Office Home&Student', 'HP_Envy_x360_13_ay0069AU_R7_4700U/1655277506Picture16.png', 0, 1, 4, 1, '2022-06-14 17:18:26', '2023-10-23 03:42:29', 2, '1', '1', '1', '#A0D911'),
(19, 'Laptop Lenovo Gaming Legion 5 15ACH6 R5 5600H', 'Cái', 0, 0, '100', 20000000, 'Laptop Lenovo Gaming Legion 5 15ACH6 R5 5600H/8GB/512GB/15.6\"FHD/NVIDIA GeForce RTX 3050 Ti 4GB/Win11', 'Laptop_Lenovo_Gaming_Legion_5_15ACH6_R5_5600H/1655277691Picture18.png', 0, 1, 5, 1, '2022-06-14 17:21:31', '2022-08-07 01:10:49', 2, '1', '1', '1', '#FBDD1E'),
(20, 'Lenovo ThinkPad X13 Gen 2 (AMD)', 'cái', 91, 9, '64WH', 25000000, 'Vi xử lý (CPU)\r\nAMD Ryzen 7 Pro 5850U, 8 nhân, 16 luồng\r\nRAM\r\n16GB, LPDDR4X, 4266 MHz\r\nMàn hình\r\n13.3\", 1920 x 1200 px, IPS, 100% sRGB, 60 Hz\r\nCard đồ họa (GPU)\r\nAMD Radeon Graphics\r\nLưu trữ\r\nCó thể nâng cấp\r\nSSD 512GB\r\nPin\r\n54.7WHr\r\nKết nối chính\r\n2 x Type-C, 2 x USB-A\r\nTrọng lượng\r\n1.34 kg', 'Lenovo_ThinkPad_X13_Gen_2_(AMD)/1659274703lenovo-thinkpad-x13-gen2.jpg', 0, 2, 5, 1, '2022-07-30 23:38:23', '2023-10-23 12:10:53', 800, '1', '1', '1', '#0E0E0E'),
(21, 'Lenovo ThinkPad X1 Carbon Gen 10', 'cái', 890, 8, '100WH', 48000000, 'Vi xử lý (CPU)\r\nIntel Core i5 1240P, 12 nhân, 16 luồng\r\nRAM\r\n16GB\r\nMàn hình\r\n14\", 2240 x 1400 px, IPS, 100% sRGB, 60 Hz\r\nCard đồ họa (GPU)\r\nIntel Iris Xe Graphics\r\nLưu trữ\r\nCó thể nâng cấp\r\nSSD 512GB\r\nPin\r\n57WHr\r\nKết nối chính\r\n2 x Type-C, 2 x USB-A, Thunderbolt\r\nTrọng lượng\r\n1.12 kg', 'Lenovo_ThinkPad_X1_Carbon_Gen_10/1659275011Lenovo_ThinkPad_X1_Carbon_Gen_10.jpg', 1, 1, 1, 1, '2022-07-30 23:43:31', '2023-10-23 12:09:44', 1000, '1', '1', '1', '#0E0E0E');

-- --------------------------------------------------------

--
-- Table structure for table `ram`
--

CREATE TABLE `ram` (
  `id` varchar(50) NOT NULL,
  `name` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ram`
--

INSERT INTO `ram` (`id`, `name`, `created_at`, `updated_at`) VALUES
('1', 'RAM 8 GB (1 thanh 8 GB), DDR4, 3200 MHz', '2022-06-14 12:42:05', '2022-06-14 12:42:05'),
('16GBDDR4', '16GB DDR4', '2022-07-31 01:11:47', '2022-07-31 01:11:47'),
('16GBDDR4X', '16GB, LPDDR4X, 4266 MHz', '2022-07-31 01:19:36', '2022-07-31 01:19:36'),
('32GBDDR5', '32GB, DDR5, 4800 MHz', '2022-07-31 01:23:32', '2022-07-31 01:23:32');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` smallint(6) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `rating`, `product_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(9, 5, 16, 18, '2023-10-24 13:22:48', '2023-10-24 13:22:48');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `name_role` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `name_role`, `created_at`, `updated_at`) VALUES
(1, 'supper admin', NULL, NULL),
(2, 'admin', NULL, NULL),
(3, 'customer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `statistical`
--

CREATE TABLE `statistical` (
  `id_statistical` int(11) NOT NULL,
  `order_date` varchar(100) NOT NULL,
  `sales` double NOT NULL,
  `profit` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `statistical`
--

INSERT INTO `statistical` (`id_statistical`, `order_date`, `sales`, `profit`, `quantity`, `total_order`) VALUES
(80, '2023-10-23', 28830000, 20181000, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `GST` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `country` varchar(20) NOT NULL,
  `quantity_supplied` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone_number`, `GST`, `address`, `city`, `country`, `quantity_supplied`, `created_at`, `updated_at`) VALUES
(1, 'Kite', 'kitenguyen2002@gmail.com', '0123456789', '123123', 'Hà Đông', 'Hà Nội', 'Việt Nam', 12, '2023-10-14 15:08:37', '2023-10-23 02:26:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider_user_id` varchar(100) NOT NULL,
  `provider` varchar(100) NOT NULL,
  `user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `password` varchar(100) NOT NULL,
  `birthdate` date NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `desc_block` varchar(100) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 3,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `gender`, `password`, `birthdate`, `phone_number`, `status`, `desc_block`, `avatar`, `role_id`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin@gmail.com', 1, '$2y$10$cznVn7u1sWs69FLU8VgnL.kchZ9gKq0xWJQbAmgfJxHwBVmzTNmiW', '2002-06-04', NULL, 0, NULL, 'user1\\logo.jpg', 1, '0000-00-00', NULL),
(3, 'Kite', 'demo1@gmail.com', 1, '$2y$10$cznVn7u1sWs69FLU8VgnL.kchZ9gKq0xWJQbAmgfJxHwBVmzTNmiW', '2002-06-04', '0354618366', 0, NULL, 'user3/1698177499ayaya.jpg', 3, '0000-00-00', '2023-10-24'),
(5, 'Thùy Linh', 'demo2@gmail.com', 0, '$2y$10$cznVn7u1sWs69FLU8VgnL.kchZ9gKq0xWJQbAmgfJxHwBVmzTNmiW', '2002-06-04', NULL, 0, NULL, NULL, 3, '0000-00-00', NULL),
(6, 'Nga', 'demo3@gmail.com', 0, '$2y$10$cznVn7u1sWs69FLU8VgnL.kchZ9gKq0xWJQbAmgfJxHwBVmzTNmiW', '2002-06-04', NULL, 0, NULL, NULL, 3, '0000-00-00', NULL),
(7, 'Vịt', 'demo4@gmail.com', 0, '$2y$10$cznVn7u1sWs69FLU8VgnL.kchZ9gKq0xWJQbAmgfJxHwBVmzTNmiW', '2002-06-04', NULL, 0, NULL, NULL, 3, '0000-00-00', NULL),
(18, 'Test LOG', 'log@gmail.com', 1, '$2y$10$cznVn7u1sWs69FLU8VgnL.kchZ9gKq0xWJQbAmgfJxHwBVmzTNmiW', '2002-10-19', NULL, 0, NULL, NULL, 3, '2023-10-19', '2023-10-19'),
(19, 'Kite', 'pennzero2002@gmail.com', 1, '$2y$10$cznVn7u1sWs69FLU8VgnL.kchZ9gKq0xWJQbAmgfJxHwBVmzTNmiW', '2002-04-06', NULL, 0, NULL, NULL, 3, '2023-10-24', '2023-10-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_product_id_foreign` (`product_id`),
  ADD KEY `cart_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_name_unique` (`category_name`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hex` (`hex`) USING BTREE;

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_product_id_foreign` (`product_id`),
  ADD KEY `comments_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `cpu`
--
ALTER TABLE `cpu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gpu`
--
ALTER TABLE `gpu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_admin_id_foreign` (`admin_id`),
  ADD KEY `orders_discount_code_foreign` (`discount_code`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_detail_order_id_foreign` (`order_id`),
  ADD KEY `order_detail_product_id_foreign` (`product_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_supplier_id_foreign` (`supplier_id`),
  ADD KEY `products_color_id_foreign` (`color_id`),
  ADD KEY `products_cpu_id_foreign` (`cpu_id`),
  ADD KEY `products_ram_id_foreign` (`ram_id`),
  ADD KEY `products_gpu_id_foreign` (`gpu_id`);

--
-- Indexes for table `ram`
--
ALTER TABLE `ram`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_product_id_foreign` (`product_id`),
  ADD KEY `ratings_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `statistical`
--
ALTER TABLE `statistical`
  ADD PRIMARY KEY (`id_statistical`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `role_id_foreignkey_roles` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `statistical`
--
ALTER TABLE `statistical`
  MODIFY `id_statistical` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `cart_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `orders_discount_code_foreign` FOREIGN KEY (`discount_code`) REFERENCES `coupons` (`code`);

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_detail_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`hex`),
  ADD CONSTRAINT `products_cpu_id_foreign` FOREIGN KEY (`cpu_id`) REFERENCES `cpu` (`id`),
  ADD CONSTRAINT `products_gpu_id_foreign` FOREIGN KEY (`gpu_id`) REFERENCES `gpu` (`id`),
  ADD CONSTRAINT `products_ram_id_foreign` FOREIGN KEY (`ram_id`) REFERENCES `ram` (`id`),
  ADD CONSTRAINT `products_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `ratings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `role_id_foreignkey_roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
