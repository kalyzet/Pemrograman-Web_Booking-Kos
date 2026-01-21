-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20250914.f72491a1c0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 20, 2026 at 12:06 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kos_pemweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `boarding_houses`
--

CREATE TABLE `boarding_houses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boarding_houses`
--

INSERT INTO `boarding_houses` (`id`, `name`, `slug`, `thumbnail`, `city_id`, `category_id`, `description`, `price`, `address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Kos Pemula', 'kos-pemula', 'boarding_house/01KAZ8ARDWG2YYDF5WK4SSMSJX.JPG', 1, 1, '<p>Kos Pemula adalah sebuah apartemen sederhana yang berlokasi di Banjarmasin, dirancang khusus untuk kamu yang sedang merintis kehidupan baru di kota ini. Setiap unit kamar diperuntukkan bagi 1 orang, memberikan privasi penuh dan suasana tenang bagi penghuni yang ingin fokus beraktivitas, baik bekerja maupun belajar.</p><p>Hunian ini sangat cocok untuk para perantau atau mereka yang baru memulai perjalanan karier dan membutuhkan tempat tinggal yang cepat, nyaman, dan aman. Dengan fasilitas dasar yang tertata rapi serta lingkungan yang ramah, Kos Pemula menjadi pilihan ideal bagi siapa pun yang ingin mendapatkan kediaman praktis tanpa ribet.</p>', 200000, 'Jl. Semangat Luar', NULL, '2025-11-25 20:56:43', '2025-11-30 04:44:01'),
(3, 'Batola Resident', 'batola-resident', 'boarding_house/01KBABFDNSNYTQX8Y11XFWB42V.jpg', 2, 3, '<p>Batola Resident adalah sebuah perumahan nyaman yang berlokasi di Handil Bakti, menghadirkan suasana hunian yang bersih, rapi, dan tertata layaknya kawasan perumahan pada umumnya. Setiap unit dirancang untuk ditempati oleh 4 orang, sehingga cocok bagi keluarga kecil maupun penghuni yang ingin tinggal bersama rekan atau kerabat.</p><p>Dengan lingkungan yang terjaga serta penataan area yang tertib, Batola Resident memberikan pengalaman tinggal yang tenang dan menyenangkan. Hunian ini menjadi pilihan tepat bagi siapa saja yang menginginkan tempat tinggal yang aman, teratur, dan terasa seperti rumah sesungguhnya.</p>', 500000, 'Jl. Ahmad Yani, Sungai Lumbah, Kec. Alalak', NULL, '2025-11-30 04:23:21', '2025-11-30 04:45:29'),
(4, 'Kos Berdamai', 'kos-berdamai', 'boarding_house/01KC309R6WA0PKN3CJFNGF50PN.jpeg', 3, 4, '<p>Kos Berdamai merupakan komplek kos yang berlokasi di kawasan Tamban, menawarkan hunian yang nyaman, aman, dan terjangkau. Setiap kamar dirancang untuk kapasitas 2 orang, sehingga cocok untuk mahasiswa, pekerja, maupun pasangan yang mencari tempat tinggal praktis dengan suasana kekeluargaan. Dengan harga sewa Rp350.000 per bulan, Kos Berdamai menjadi pilihan ekonomis tanpa mengurangi kenyamanan. Lingkungan kos tertata rapi dan tenang, mendukung aktivitas istirahat maupun keseharian para penghuni. Sebagai nilai tambah, Kos Berdamai menyediakan snack gratis setiap malam Minggu bagi para penginap, menciptakan suasana hangat dan kebersamaan di dalam komplek kos. Kos Berdamai adalah solusi hunian ideal bagi Anda yang menginginkan tempat tinggal nyaman, ramah di kantong, dan penuh kebersamaan di area Tamban.</p>', 350000, 'Jl. Tamban Raya Km. 25', NULL, '2025-12-09 18:09:01', '2025-12-21 03:44:14'),
(5, 'Hotel Palm', 'hotel-palm', 'boarding_house/01KC3126N3MZEVJPW489N1KZ0M.jpg', 1, 2, '<p>Hotel Palm merupakan hotel bintang 3 yang berlokasi di Banjarmasin, menawarkan kenyamanan dan pelayanan berkualitas bagi tamu yang menginap untuk keperluan bisnis maupun liburan. Dengan suasana yang modern, bersih, dan nyaman, hotel ini menjadi pilihan ideal bagi Anda yang mengutamakan kualitas dan kemudahan akses. Setiap kamar Hotel Palm berkapasitas 2 orang, dirancang dengan fasilitas yang mendukung kenyamanan istirahat. Dengan harga Rp1.200.000 per bulan, tamu dapat menikmati penginapan yang praktis dan ekonomis di kelasnya. Hotel Palm juga menyediakan WiFi gratis di seluruh area hotel, memungkinkan tamu tetap terhubung dan produktif selama berada di dalam hotel. Didukung dengan pelayanan ramah dan profesional, Hotel Palm siap memberikan pengalaman menginap yang menyenangkan dan berkesan di kota Banjarmasin.</p>', 1200000, 'Jl. S. Parman No. 189', NULL, '2025-12-09 18:22:22', '2025-12-21 03:48:50'),
(6, 'Tok Dalang Homestay', 'tok-dalang-homestay', 'boarding_house/01KC34GZQMG188DT1M9N0J9GF5.jpg', 4, 4, '<p>Tok Dalang Homestay merupakan penginapan berkonsep komplek yang berlokasi di wilayah Sungai Tabuk, menawarkan suasana nyaman, tenang, dan cocok untuk hunian jangka bulanan. Setiap kamar memiliki kapasitas 2 orang, dirancang untuk memberikan kenyamanan maksimal bagi para penginap. Dengan harga sewa Rp1.500.000 per bulan, Tok Dalang Homestay menjadi pilihan ideal bagi turis, pekerja, maupun pasangan yang mencari tempat tinggal praktis dengan lingkungan yang tertata dan aman. Sebagai ciri khas tersendiri, setiap penginap akan mendapatkan 1 buah durian berkualitas tinggi setiap bulan selama masa penginapan, serta kemungkinan masuk cutscene serial Upin &amp; Ipin sebagai pengalaman menginap yang berbeda dan berkesan. Tok Dalang Homestay tidak hanya menawarkan tempat tinggal, tetapi juga kenyamanan dan nilai tambah yang istimewa bagi setiap penghuninya.</p>', 1500000, 'Jl. Kampung Durian Runtuh', NULL, '2025-12-09 19:22:53', '2025-12-21 03:56:42'),
(7, 'Faker Hotel', 'faker-hotel', 'boarding_house/01KC361NEW83GDCMG1AHYQ07S1.png', 2, 2, '<p>Faker Hotel merupakan hotel kelas atas yang berlokasi strategis di Handil Bakti, menghadirkan pengalaman menginap premium dengan standar kenyamanan dan pelayanan terbaik. Dirancang untuk tamu yang mengutamakan kualitas, ketenangan, dan fasilitas eksklusif, Faker Hotel menjadi pilihan ideal untuk hunian jangka panjang maupun kebutuhan bisnis. Setiap kamar berkapasitas 2 orang, dilengkapi dengan fasilitas modern dan interior yang elegan untuk menunjang kenyamanan maksimal. Dengan harga Rp3.000.000 per bulan, penghuni mendapatkan nilai lebih dari segi fasilitas, layanan, dan lingkungan yang prestisius. Sebagai keuntungan tambahan, penghuni yang mengambil durasi penginapan minimal 1 tahun akan mendapatkan gratis listrik dan air selama 6 bulan, memberikan efisiensi biaya tanpa mengurangi kenyamanan. Faker Hotel juga menyediakan WiFi 5G gratis yang dapat diakses di seluruh area hotel, memastikan koneksi internet cepat dan stabil setiap saat. Dengan pelayanan profesional dan fasilitas unggulan, Faker Hotel menghadirkan standar baru hunian eksklusif di wilayah Handil Bakti.</p>', 3000000, 'Jl. Seoul No. ∞', NULL, '2025-12-09 19:49:28', '2025-12-21 04:08:46'),
(8, 'The Leaky Cauldron', 'the-leaky-cauldron', 'boarding_house/01KD0F5J2T28MBQE3VRN2RVR9Y.jpg', 1, 2, '<p>The Leaky Cauldron merupakan komplek penginapan yang berlokasi di Banjarmasin, menawarkan pengalaman menginap yang nyaman dengan sentuhan suasana klasik dan bernilai sejarah. Setiap sudut penginapan dihiasi dengan berbagai hiasan serta barang-barang kuno yang menghadirkan nuansa unik, hangat, dan penuh cerita. Setiap kamar berkapasitas 2 orang, dirancang untuk memberikan kenyamanan bagi penghuni dengan lingkungan yang tenang dan tertata. Dengan harga Rp1.600.000 per bulan, The Leaky Cauldron menjadi pilihan ideal bagi tamu yang menginginkan hunian jangka bulanan dengan konsep berbeda dari penginapan pada umumnya. Sebagai fasilitas tambahan, tersedia tempat makan khusus di dalam area penginapan yang memudahkan penghuni dalam memenuhi kebutuhan sehari-hari. Penghuni The Leaky Cauldron juga mendapatkan diskon 20% setiap kali berbelanja di tempat makan tersebut, memberikan nilai lebih dan kenyamanan ekstra selama menginap. Perpaduan antara kenyamanan, fasilitas pendukung, dan nuansa klasik menjadikan The Leaky Cauldron pilihan tepat bagi Anda yang mencari tempat tinggal dengan karakter, sejarah, dan suasana yang berkesan di kota Banjarmasin.</p>', 1600000, 'Jl. Diagon Alley', NULL, '2025-12-21 04:46:51', '2025-12-26 08:11:06');

-- --------------------------------------------------------

--
-- Table structure for table `bonuses`
--

CREATE TABLE `bonuses` (
  `id` bigint UNSIGNED NOT NULL,
  `boarding_house_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bonuses`
--

INSERT INTO `bonuses` (`id`, `boarding_house_id`, `image`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'bonuses/01KAZ8ARE1V2KFPJS4XK29XS7R.jpg', 'Fasilitas Penuh', 'Tersedia Fasilitas Kamar', NULL, '2025-11-25 20:56:43', '2025-11-25 20:56:43'),
(3, 3, 'bonuses/01KBABFDNZSSAEFFP9ZWCQV3A7.jpg', 'Rumah Rapi & Bersih', 'Tinggal kasih isiannya', NULL, '2025-11-30 04:23:21', '2025-11-30 04:23:21'),
(4, 4, 'bonuses/01KC309R733SCE8G5EPT081262.png', 'Snack Gratis Weekend', 'Snack Gratis Setiap Malam Minggu', NULL, '2025-12-09 18:09:01', '2025-12-09 18:09:01'),
(5, 5, 'bonuses/01KC3126NA698N4X910EV2R6A0.webp', 'Free Wifi', 'Tersedia Wifi Gratis di Dalam Hotel', NULL, '2025-12-09 18:22:22', '2025-12-09 18:22:22'),
(6, 6, 'bonuses/01KC34GZQWB5WFRWT3215HFM90.jpg', 'Free 1 Durian!', 'Mendapatkan 1 Durian Musang King Gratis Setiap 1 Bulan Pemesanan', NULL, '2025-12-09 19:22:53', '2025-12-09 19:22:53'),
(7, 6, 'bonuses/01KC34GZR0DSKBWJ3ZR2EZTPZC.webp', 'Free Cutscene', 'Gratis Masuk Cutscene Serial Upin & Ipin Sebagai NPC!', NULL, '2025-12-09 19:22:53', '2025-12-09 19:22:53'),
(8, 7, 'bonuses/01KC361NFE95KE11RNKJX6BVPQ.jpg', 'Unlimited 5G', 'Akses Wifi 5G Tak Terbatas', NULL, '2025-12-09 19:49:28', '2025-12-09 19:49:28'),
(9, 7, 'bonuses/01KC361NFNPJTSTM3YE91N5PD8.png', 'Free Energy', 'Gratis Listrik 6 Bulan Untuk Pemesanan Berdurasi 1 Tahun Lebih', NULL, '2025-12-09 19:49:28', '2025-12-09 19:49:28'),
(10, 7, 'bonuses/01KC361NFYGX8YKN4GH8J4XERN.jpg', 'Free Water', 'Gratis Air 6 Bulan Untuk Pemesanan Berdurasi 1 Tahun Lebih', NULL, '2025-12-09 19:49:28', '2025-12-21 04:08:46'),
(11, 8, 'bonuses/01KD0F5J33C4YV3R725M8W5BPH.jpg', '20% Discount', 'Diskon Untuk Penginap Ketika Berbelanja Di Tempat Makan Penginapan', NULL, '2025-12-21 04:46:51', '2025-12-21 04:46:51'),
(12, 8, 'bonuses/01KD0F5J38JXP7JYDKVMN4J4EK.jpg', 'Unique Historical Atmosphere', 'Hiasan Barang Bersejarah & Tempat Makan Khusus Di Dalam Penginapan', NULL, '2025-12-21 04:46:51', '2025-12-21 04:46:51');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:1;', 1766324348),
('da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1766324348;', 1766324348),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1768352040),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1768352040;', 1768352040);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `image`, `name`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'cities/01KAZ7Y5DFV1MJXYHKHSY4NYF9.jpg', 'Apartemen', 'apartemen', NULL, '2025-11-25 20:49:51', '2025-11-25 20:49:51'),
(2, 'cities/01KBAAY9ZMM4WPJP3KCMPQXK6A.jpg', 'Hotel', 'hotel', NULL, '2025-11-30 04:14:00', '2025-11-30 04:14:00'),
(3, 'cities/01KBAAZ3QH8WT9J9VJ0F8RG4FQ.jpg', 'Perumahan', 'perumahan', NULL, '2025-11-30 04:14:26', '2025-11-30 04:14:26'),
(4, 'cities/01KBAAZZMMCF4FGR3VNK3Z9MFY.jpg', 'Asrama', 'asrama', NULL, '2025-11-30 04:14:55', '2025-12-26 08:11:45'),
(5, 'cities/01KCN8W8KQVBRTPXDZRQ400T72.jpg', 'Vila', 'vila', NULL, '2025-12-16 20:25:16', '2025-12-16 20:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `image`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'cities/01KAZ7X9G2TQ9EXFKTMG8CH2A2.jpg', 'Banjarmasin', 'banjarmasin', '2025-11-25 20:49:22', '2025-11-25 20:49:22', NULL),
(2, 'cities/01KB7Y68ZMJM9PXTF1GSHVTN8B.jpg', 'Handil Bakti', 'handil-bakti', '2025-11-29 05:52:41', '2025-11-29 05:52:41', NULL),
(3, 'cities/01KB7Y7JNHJB3BC98GV340T014.jpg', 'Tamban', 'tamban', '2025-11-29 05:53:23', '2025-11-29 05:53:23', NULL),
(4, 'cities/01KB7YAEXPHMTHRT5HCE94KQPG.JPG', 'Sungai Tabuk', 'sungai-tabuk', '2025-11-29 05:54:58', '2025-11-29 05:54:58', NULL),
(5, 'cities/01KB7YC5B8FPZVB7QGESPSX61A.jpg', 'Sungai Lulut', 'sungai-lulut', '2025-11-29 05:55:53', '2025-11-29 05:55:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_11_26_010543_create_cities_table', 1),
(5, '2025_11_26_010549_create_categories_table', 1),
(6, '2025_11_26_010555_create_boarding_houses_table', 1),
(7, '2025_11_26_010601_create_rooms_table', 1),
(8, '2025_11_26_010607_create_room_images_table', 1),
(9, '2025_11_26_010614_create_bonuses_table', 1),
(10, '2025_11_26_010620_create_testimonials_table', 1),
(11, '2025_11_26_010625_create_transactions_table', 1),
(12, '2025_11_26_043952_add_deleted_at_to_cities_table', 2),
(13, '2025_11_26_045847_add_capacity_to_rooms_table', 3),
(14, '2025_12_02_131649_create_personal_access_tokens_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint UNSIGNED NOT NULL,
  `boarding_house_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `square_feet` int NOT NULL,
  `capacity` int NOT NULL DEFAULT '1',
  `price_per_month` int NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `boarding_house_id`, `name`, `room_type`, `square_feet`, `capacity`, `price_per_month`, `is_available`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 1, 'Kamar A1', 'A', 120, 1, 200000, 1, NULL, '2025-11-30 00:48:36', '2025-12-09 16:56:46'),
(3, 1, 'Kamar A2', 'A', 120, 1, 200000, 1, NULL, '2025-11-30 04:03:26', '2025-12-09 16:56:46'),
(4, 1, 'Kamar A3', 'A', 120, 1, 200000, 1, NULL, '2025-11-30 04:03:26', '2025-12-09 16:56:46'),
(5, 1, 'Kamar B1', 'B', 100, 1, 200000, 1, NULL, '2025-11-30 04:05:38', '2025-12-09 16:56:46'),
(6, 1, 'Kamar B2', 'B', 100, 1, 200000, 1, NULL, '2025-11-30 04:05:38', '2025-12-09 16:56:46'),
(7, 1, 'Kamar C', 'C', 140, 2, 200000, 1, NULL, '2025-11-30 04:05:38', '2025-12-09 16:56:46'),
(8, 3, 'Kamar 1', '1', 150, 4, 500000, 1, NULL, '2025-11-30 04:23:21', '2025-11-30 07:59:50'),
(9, 3, 'Kamar 2', '2', 150, 4, 500000, 1, NULL, '2025-11-30 04:23:21', '2025-11-30 07:59:50'),
(10, 4, 'Nanas Kuning 01', 'Nanas Kuning', 180, 2, 350000, 1, NULL, '2025-12-09 18:09:01', '2025-12-21 03:44:14'),
(11, 5, 'Kamar A1', 'A', 175, 2, 1200000, 1, NULL, '2025-12-09 18:22:22', '2025-12-21 03:48:50'),
(12, 5, 'Kamar A2', 'A', 175, 2, 1200000, 1, NULL, '2025-12-09 18:24:18', '2025-12-21 03:48:50'),
(13, 5, 'Kamar A3', 'A', 175, 2, 1200000, 1, NULL, '2025-12-09 18:24:18', '2025-12-21 03:48:50'),
(14, 6, 'Homestay Room 001', 'Room', 100, 2, 1500000, 1, NULL, '2025-12-09 19:22:53', '2025-12-21 03:56:42'),
(15, 6, 'Homestay Room 002', 'Room', 100, 2, 1500000, 1, NULL, '2025-12-09 19:22:53', '2025-12-21 03:56:42'),
(16, 7, 'Faker Elite', 'Elite', 200, 2, 3000000, 1, NULL, '2025-12-09 19:49:28', '2025-12-21 04:08:46'),
(17, 7, 'Faker Pro ', 'Pro', 200, 2, 3000000, 1, NULL, '2025-12-09 19:49:28', '2025-12-21 04:08:46'),
(18, 7, 'Faker Premium', 'Premium', 200, 2, 3000000, 1, NULL, '2025-12-09 19:49:28', '2025-12-21 04:08:46'),
(19, 8, 'Kamar W1', 'W1', 120, 1, 1600000, 1, NULL, '2025-12-21 04:46:51', '2025-12-26 08:11:06'),
(20, 8, 'Kamar W2', 'W2', 120, 1, 1600000, 1, NULL, '2025-12-21 04:46:51', '2025-12-26 08:11:06');

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `id` bigint UNSIGNED NOT NULL,
  `room_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`id`, `room_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 2, 'rooms/01KB9ZYWMJFHHKY9HN75B219YN.jpg', NULL, '2025-11-30 00:48:36', '2025-11-30 01:02:04'),
(3, 2, 'rooms/01KBA0B2EVA9NQWZSQPGFRP48Z.jpg', '2025-11-30 04:03:26', '2025-11-30 01:08:44', '2025-11-30 04:03:26'),
(4, 3, 'rooms/01KBAAAYXQNZ1WGCG28W46E7B7.jpg', NULL, '2025-11-30 04:03:26', '2025-11-30 04:03:26'),
(5, 4, 'rooms/01KBAAAYY00E6K5DNHNKFK78AC.jpg', NULL, '2025-11-30 04:03:26', '2025-11-30 04:03:26'),
(6, 5, 'rooms/01KBAAEZJ83FSRMQQDBEJC95VN.jpg', NULL, '2025-11-30 04:05:38', '2025-11-30 04:05:38'),
(7, 6, 'rooms/01KBAAEZJFTB99Q4ZVKFVWR47A.jpg', NULL, '2025-11-30 04:05:38', '2025-11-30 04:05:38'),
(8, 7, 'rooms/01KBAAEZJKS3PNNQ8KRCRQHJ4S.JPG', NULL, '2025-11-30 04:05:38', '2025-11-30 04:05:38'),
(9, 8, 'rooms/01KBABFDP7JT95JC6AEG3VF71N.png', NULL, '2025-11-30 04:23:21', '2025-11-30 04:23:21'),
(10, 9, 'rooms/01KBABFDPFNKZW3ER728Y4D05M.png', NULL, '2025-11-30 04:23:21', '2025-11-30 04:23:21'),
(11, 10, 'rooms/01KC309R7DKFV7Q63QZJDGXF2G.webp', NULL, '2025-12-09 18:09:01', '2025-12-09 18:09:01'),
(12, 11, 'rooms/01KC3126NJMAX5BSEMRFE4NQ0K.jpg', NULL, '2025-12-09 18:22:22', '2025-12-09 18:22:22'),
(13, 12, 'rooms/01KC315QAWDZBBJ3CJ03T5E05V.jpg', NULL, '2025-12-09 18:24:18', '2025-12-09 18:24:18'),
(14, 13, 'rooms/01KC315QB4YE0PTD6SVS2GD5FC.jpg', NULL, '2025-12-09 18:24:18', '2025-12-09 18:24:18'),
(15, 14, 'rooms/01KC34GZR9ZGNYQ421S6SXNFXY.webp', NULL, '2025-12-09 19:22:53', '2025-12-09 19:22:53'),
(16, 15, 'rooms/01KC34GZRF5CC34K84F08MC7ZA.webp', NULL, '2025-12-09 19:22:53', '2025-12-09 19:22:53'),
(17, 16, 'rooms/01KC361NGA9D66K7C6HDJK659D.jpg', NULL, '2025-12-09 19:49:28', '2025-12-09 19:49:28'),
(18, 17, 'rooms/01KC361NGMY5KWAHG0KZ0PJR5M.jpg', NULL, '2025-12-09 19:49:28', '2025-12-09 19:49:28'),
(19, 18, 'rooms/01KC361NGY55K1WK1Z5KV6R4HR.jpg', NULL, '2025-12-09 19:49:28', '2025-12-09 19:49:28'),
(20, 19, 'rooms/01KD0F5J3G8BXMK93ZET4Y14Z6.jpg', NULL, '2025-12-21 04:46:51', '2025-12-21 04:46:51'),
(21, 19, 'rooms/01KD0F5J3NA440VY89C6BSZJ1E.jpg', NULL, '2025-12-21 04:46:51', '2025-12-21 04:46:51'),
(22, 20, 'rooms/01KD0F5J3WH87HV0VBEVMNWPV9.jpg', NULL, '2025-12-21 04:46:51', '2025-12-21 04:46:51');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Gn9KJJBO9idTBXCuq6lFRftSGotS2JVMbfa5zbrn', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZlZHNWxxZVFMalc4V1U5T2NkaWhJUTBnY0t3Y0xEcnNETXE3WnhEZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MTE6InRyYW5zYWN0aW9uIjthOjM6e3M6NjoiX3Rva2VuIjtzOjQwOiJKcUJRWGJhbFJmNVF1NUtZb096M0VVUEJwSjBTMkdFWWQwZHRpWEZOIjtzOjE3OiJib2FyZGluZ19ob3VzZV9pZCI7czoxOiIzIjtzOjc6InJvb21faWQiO3M6MToiOSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRxZENXejluLkcueWJ4SkczcXd4MVUuM2o3bmxSZi9nTGd1ZS9uUm5Bd0piVkhUQ1ppelVQeSI7fQ==', 1768358614);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `boarding_house_id` bigint UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `boarding_house_id`, `photo`, `name`, `content`, `rating`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'testimonials/01KB1J23355B5MB73M550RYS66.jpg', 'Muhammad Haikal', 'Mantaplah bintang 5 lek', 5, NULL, '2025-11-26 18:25:14', '2025-11-26 18:25:14'),
(2, 1, 'testimonials/01KBAAKY5K6VCTPECC7R3XREMQ.JPG', 'Arif Agatha', 'Kosnya bagus dan cocok untuk saya yang ingin mencari kos cepat', 5, NULL, '2025-11-30 04:08:20', '2025-11-30 04:08:20'),
(3, 1, 'testimonials/01KBAAND1455HGE30GACQQAHJZ.JPG', 'Amin Badali', 'Lumayanlah kos murah dan bersih walau agak sempit 🗿', 3, NULL, '2025-11-30 04:09:08', '2025-11-30 04:09:08'),
(4, 3, 'testimonials/01KBABJ1HFGBH0M94N9YR4M89M.JPG', 'Iqbal Rupawan', 'Jalannya tidak ramah', 3, NULL, '2025-11-30 04:24:46', '2025-11-30 04:24:46'),
(5, 3, 'testimonials/01KBABKNP4H833Q4AZJKTQZPDM.jpg', 'Muhammad Haikal', 'Lokasinya cukup strategis dan banyak jalan pintas', 5, NULL, '2025-11-30 04:25:40', '2025-11-30 04:25:40'),
(6, 3, 'testimonials/01KBABQRNHHSTKTHP1Y28TG9GG.JPG', 'Arif Agatha', 'Kebanyakan jalan masih kotor dan belum tertata dengan baik, tapi suasana kos cukup bagus, sunyi, dan damai', 4, NULL, '2025-11-30 04:27:54', '2025-11-30 04:27:54'),
(7, 4, 'testimonials/01KC30E2NG5JAEEN7J2K5BV06T.jpg', 'Muhammad Haikal', 'Mantap kos yang bersih, aman, tentram, dan satpam komplek yang ramah ⭐⭐⭐⭐⭐', 5, NULL, '2025-12-09 18:11:23', '2025-12-09 18:11:23'),
(8, 4, 'testimonials/01KC30GWZQ3T94CW2XE8TAM1M9.JPG', 'Aidul Akbari', 'Wuisshhh kos legend nih jadi nostalgia...', 5, NULL, '2025-12-09 18:12:55', '2025-12-09 18:12:55'),
(9, 5, 'testimonials/01KC31A81BYWVHH9WN0VHT2K30.JPG', 'Muhammad Amin', 'Keadaan ruangan cukup sejuk dan tenang sehingga membantu saya menyelesaikan rapat dengan lancar.', 5, NULL, '2025-12-09 18:26:46', '2025-12-09 18:26:46'),
(10, 7, 'testimonials/01KD0AHKVFASDFCZNCEWD3G0T4.JPG', 'Muhammad Abdi', 'Penginapan khusus gamer 100% worth it dengan harga segitu 🔥', 5, NULL, '2025-12-21 03:26:03', '2025-12-21 03:26:03'),
(11, 7, 'testimonials/01KD0AKXMTH1KM7EA1K85WRYYJ.JPG', 'Amin Badali', '5G WOYYY!! KENCENG BENER GELOOO!!!', 5, NULL, '2025-12-21 03:27:19', '2025-12-21 03:27:19'),
(12, 7, 'testimonials/01KD0ANVAAV7XFGR9FRS99DMXV.JPG', 'Aidul Akbari', '100 projek perhari pun ku gasken kalo nginep disini', 5, NULL, '2025-12-21 03:28:22', '2025-12-21 03:28:22'),
(13, 6, 'testimonials/01KD0ARJB4PD9B187RWNC84YT1.JPG', 'Muhammad Abdi', 'Penginapan macam apa ini!?', 3, NULL, '2025-12-21 03:29:51', '2025-12-21 03:29:51'),
(14, 6, 'testimonials/01KD0ASRBNY37YDXZDWYZK28QK.JPG', 'Iqbal Rupawan', 'Betul betul betul', 4, NULL, '2025-12-21 03:30:30', '2025-12-21 03:30:30'),
(15, 4, 'testimonials/01KD0AYSQBDHPPJ80BTKXJAN8D.JPG', 'Basirun Arafi', 'Mantaplah snacknya enak dan dijamin ga kelaparan di malam minggu', 5, NULL, '2025-12-21 03:33:15', '2025-12-21 03:33:15'),
(16, 8, 'testimonials/01KD0HME01XBXNPPR6AG71E7Q8.JPG', 'Basirun Arafi', 'Lumayan bisa bantu menghemat pengeluaran bulanan', 5, NULL, '2025-12-21 05:29:55', '2025-12-21 05:29:55'),
(17, 8, 'testimonials/01KD0HQQ1J3XRE3S4VD9J0XQ73.JPG', 'Muhamad Hidayat', 'Sangat tenang dan fantastis, serta pelayanan-nya juga ramah ditambah nuansa yang unik', 5, NULL, '2025-12-21 05:31:43', '2025-12-21 05:31:43'),
(18, 5, 'testimonials/01KD0J08K6X1G6ZW13HEF027DD.JPG', 'Iqbal Rupawan', 'Nanti kalo ke Banjarmasin lagi, nginep di sini aja @shadow2234', 5, NULL, '2025-12-21 05:36:23', '2025-12-21 05:36:23'),
(19, 6, 'testimonials/01KD0J49QACS5Z6K5S5014KJQ3.JPG', 'Amin Badali', 'Ini Homesate ya? 🗿', 5, NULL, '2025-12-21 05:38:35', '2025-12-21 05:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `boarding_house_id` bigint UNSIGNED NOT NULL,
  `room_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` enum('down_payment','full_payment') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `duration` int NOT NULL,
  `total_amount` int DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `code`, `boarding_house_id`, `room_id`, `name`, `email`, `phone_number`, `payment_method`, `payment_status`, `start_date`, `duration`, `total_amount`, `transaction_date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'NGKBWA622285', 3, 9, 'Haikal', 'haikal@kalyzet.com', '0808080808080808', 'down_payment', 'pending', '2025-12-03', 2, 339000, '2025-12-01', NULL, '2025-12-01 08:05:50', '2025-12-01 08:05:50'),
(3, 'NGKBWA717608', 1, 7, 'Lionel Messi', 'lionelmessi1010@gmail.com', '08101010101010', 'full_payment', 'success', '2025-12-15', 12, 2712000, '2025-12-02', NULL, '2025-12-02 05:51:40', '2025-12-02 05:54:16'),
(4, 'NGKBWA602362', 3, 8, 'Marc Sigman', 'sigmanman@gmail.com', '0898765421', 'down_payment', 'success', '2025-12-11', 7, 1186500, '2025-12-03', NULL, '2025-12-02 20:18:07', '2025-12-02 20:21:08'),
(5, 'NGKBWA483217', 3, 9, 'Muhammad Haikal', 'haikalll@gmail.com', '085346519151', 'full_payment', 'success', '2025-12-06', 7, 3955000, '2025-12-03', NULL, '2025-12-02 20:37:40', '2025-12-02 20:37:57'),
(6, 'NGKBWA187739', 1, 4, 'Favian', 'fav1annn@gmail.com', '085346519151', 'down_payment', 'success', '2025-12-31', 3, 203400, '2025-12-03', NULL, '2025-12-02 20:44:05', '2025-12-02 20:44:20'),
(7, 'NGKBWA675771', 1, 3, 'Lamine Yamal', 'lamasiaboy10@gmail.com', '085346519151', 'full_payment', 'pending', '2025-12-14', 7, 1582000, '2025-12-10', NULL, '2025-12-09 16:58:16', '2025-12-09 17:09:04'),
(8, 'NGKBWA945953', 1, 6, 'Jamal van Basten', 'vanshoee@gmail.com', '085346519151', 'down_payment', 'success', '2025-12-27', 4, 271200, '2025-12-10', NULL, '2025-12-09 17:07:10', '2025-12-09 17:07:34'),
(9, 'KLZJKW691235', 1, 2, 'Widy Hartono', 'wididi@teamliquid.com', '085346519151', 'full_payment', 'success', '2025-12-10', 2, 452000, '2025-12-10', NULL, '2025-12-09 17:22:51', '2025-12-09 17:23:09'),
(10, 'KLZJKW250440', 8, 20, 'Erling Haaland', 'ehaaland@gmail.com', '085346519151', 'full_payment', 'success', '2025-12-25', 1, 1808000, '2025-12-24', NULL, '2025-12-23 18:32:03', '2025-12-23 18:42:26'),
(11, 'KLZJKW133753', 1, 7, 'Arif', 'arif@gmail.com', '0808080808080808', 'full_payment', 'success', '2025-12-31', 3, 678000, '2025-12-31', NULL, '2025-12-30 18:00:39', '2025-12-30 18:01:01'),
(12, 'KLZJKW413145', 1, 7, 'BADAL1', 'minnbadali@gmail.com', '085754239679', 'down_payment', 'success', '2026-01-01', 1, 67800, '2025-12-31', NULL, '2025-12-30 19:46:44', '2025-12-30 19:47:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2025-11-25 20:26:50', '$2y$12$jEXxrLeg52JaPVoBYMm/quid60kiPZd9h29teuDYaARu48ttkWu3.', 'kzNQ6mCs6g', '2025-11-25 20:26:50', '2025-11-25 20:26:50'),
(2, 'Haikal', 'kalavel@gmail.com', NULL, '$2y$12$qdCWz9n.G.ybxJG3qwx1U.3j7nlRf/gLgue/nRnAwJbVHTCZizUPy', 'ryaS08uS2qeXW7CJDv7ivcp1zVjrBcid2lNuH1MaZHIqhCZxA76gfimLrNmz', '2025-11-25 20:27:22', '2025-11-25 20:27:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boarding_houses`
--
ALTER TABLE `boarding_houses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boarding_houses_city_id_foreign` (`city_id`),
  ADD KEY `boarding_houses_category_id_foreign` (`category_id`);

--
-- Indexes for table `bonuses`
--
ALTER TABLE `bonuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bonuses_boarding_house_id_foreign` (`boarding_house_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_boarding_house_id_foreign` (`boarding_house_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_images_room_id_foreign` (`room_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_boarding_house_id_foreign` (`boarding_house_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_boarding_house_id_foreign` (`boarding_house_id`),
  ADD KEY `transactions_room_id_foreign` (`room_id`);

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
-- AUTO_INCREMENT for table `boarding_houses`
--
ALTER TABLE `boarding_houses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bonuses`
--
ALTER TABLE `bonuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `boarding_houses`
--
ALTER TABLE `boarding_houses`
  ADD CONSTRAINT `boarding_houses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `boarding_houses_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bonuses`
--
ALTER TABLE `bonuses`
  ADD CONSTRAINT `bonuses_boarding_house_id_foreign` FOREIGN KEY (`boarding_house_id`) REFERENCES `boarding_houses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_boarding_house_id_foreign` FOREIGN KEY (`boarding_house_id`) REFERENCES `boarding_houses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_boarding_house_id_foreign` FOREIGN KEY (`boarding_house_id`) REFERENCES `boarding_houses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_boarding_house_id_foreign` FOREIGN KEY (`boarding_house_id`) REFERENCES `boarding_houses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
