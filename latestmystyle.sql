-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2023 at 11:01 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latestmystyle`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `image`, `is_popular`) VALUES
(1, 'laboriosam quidem', 'laboriosam-quidem', '2023-05-02 01:45:58', '2023-05-02 01:45:58', '', 0),
(2, 'voluptatem dolorem', 'voluptatem-dolorem', '2023-05-02 01:45:58', '2023-05-02 01:45:58', '', 0),
(3, 'ut enim', 'ut-enim', '2023-05-02 01:45:58', '2023-05-02 01:45:58', '', 0),
(4, 'id voluptas', 'id-voluptas', '2023-05-02 01:45:58', '2023-05-02 01:45:58', '', 0),
(5, 'distinctio quia', 'distinctio-quia', '2023-05-02 01:45:59', '2023-05-23 08:23:58', '1684841038.jpg', 1),
(6, 'quia minima', 'quia-minima', '2023-05-02 01:45:59', '2023-05-02 01:45:59', '', 0),
(7, 'voluptatem non', 'voluptatem-non', '2023-05-02 01:48:43', '2023-05-02 01:48:43', '', 0),
(8, 'laudantium numquam', 'laudantium-numquam', '2023-05-02 01:48:44', '2023-05-02 01:48:44', '', 0),
(9, 'omnis enim', 'omnis-enim', '2023-05-02 01:48:44', '2023-05-02 01:48:44', '', 0),
(10, 'ipsa est', 'ipsa-est', '2023-05-02 01:48:44', '2023-05-02 01:48:44', '', 0),
(11, 'repudiandae soluta', 'repudiandae-soluta', '2023-05-02 01:48:44', '2023-05-02 01:48:44', '', 0),
(12, 'tempore sequi', 'tempore-sequi', '2023-05-02 01:48:44', '2023-05-02 01:48:44', '', 0),
(13, 'nemo sint', 'nemo-sint', '2023-05-02 01:53:01', '2023-05-02 01:53:01', '', 0),
(14, 'sint et', 'sint-et', '2023-05-02 01:53:02', '2023-05-02 01:53:02', '', 0),
(15, 'voluptate et', 'voluptate-et', '2023-05-02 01:53:02', '2023-05-02 01:53:02', '', 0),
(16, 'tenetur consequuntur', 'tenetur-consequuntur', '2023-05-02 01:53:02', '2023-05-02 01:53:02', '', 0),
(17, 'eligendi omnis', 'eligendi-omnis', '2023-05-02 01:53:02', '2023-05-02 01:53:02', '', 0),
(18, 'shirts', 'shirts', '2023-05-02 01:53:02', '2023-05-23 08:34:36', '1684841676.jpg', 1),
(19, 'tenetur quia', 'tenetur-quia', '2023-05-02 01:53:53', '2023-05-02 01:53:53', '', 0),
(20, 'eos nisi', 'eos-nisi', '2023-05-02 01:53:53', '2023-05-02 01:53:53', '', 0),
(21, 'quidem adipisci', 'quidem-adipisci', '2023-05-02 01:53:54', '2023-05-02 01:53:54', '', 0),
(22, 'ut adipisci', 'ut-adipisci', '2023-05-02 01:53:54', '2023-05-02 01:53:54', '', 0),
(23, 'quibusdam ea', 'quibusdam-ea', '2023-05-02 01:53:54', '2023-05-02 01:53:54', '', 0),
(24, 'porro rerum', 'porro-rerum', '2023-05-02 01:53:54', '2023-05-02 01:53:54', '', 0),
(25, 'sit alias', 'sit-alias', '2023-05-02 01:55:10', '2023-05-02 01:55:10', '', 0),
(26, 'men shirts', 'men-shirts', '2023-05-02 01:55:10', '2023-05-23 08:35:29', '1684841729.jpg', 1),
(27, 'ut sed', 'ut-sed', '2023-05-02 01:55:10', '2023-05-02 01:55:10', '', 0),
(28, 'ad illo', 'ad-illo', '2023-05-02 01:55:11', '2023-05-23 08:21:31', '1684840891.jpg', 1),
(29, 'ut velit', 'ut-velit', '2023-05-02 01:55:11', '2023-05-02 01:55:11', '', 0),
(30, 'illum veniam', 'illum-veniam', '2023-05-02 01:55:11', '2023-05-02 01:55:11', '', 0),
(32, 'men shoes', 'men-shoes', '2023-05-23 07:43:02', '2023-05-23 07:43:02', '1684838582.jpg', 1),
(33, 'ladies  trousers', 'ladies-trousers', '2023-05-23 08:16:05', '2023-05-23 08:16:05', '1684840565.jpg', 1);

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
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `top_title` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `offer` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `top_title`, `title`, `sub_title`, `offer`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(4, 'toptitle', 'title', 'subtitleslider', '450', 'http://127.0.0.1:8000/admin/slider/add', '1684676886.png', 1, '2023-05-21 10:48:06', '2023-05-21 10:48:06'),
(6, 'topg', 'stti', 'kfkj', '56464', 'http://127.0.0.1:8000/admin/slider/add', '1684760650.png', 1, '2023-05-22 10:04:10', '2023-05-22 10:04:10'),
(9, 'toptitle', 'title', 'sub-TITLE', 'many offers', 'http://127.0.0.1:8000/admin/slider/add', '1684762453.png', 1, '2023-05-22 10:34:13', '2023-05-22 10:34:13');

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
(5, '2023_05_01_070228_create_categories_table', 2),
(6, '2023_05_01_070336_create_products_table', 2),
(7, '2023_05_19_102615_create_home_sliders_table', 3),
(8, '2023_05_23_070805_add_image_and_is_popular_column_to_categories_table', 4);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `regular_price` varchar(8) NOT NULL,
  `sale_price` varchar(8) DEFAULT NULL,
  `SKU` varchar(255) NOT NULL,
  `stock_status` enum('instock','outofstock') NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) NOT NULL,
  `images` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'reprehenderit vitae est quia et cumque', 'reprehenderit-vitae-est-quia-et-cumque', 'Beatae illum praesentium nesciunt veniam ut. Amet eveniet qui omnis qui. Odio hic illum unde perferendis similique iure ea. Adipisci impedit id voluptatem est.', 'A neque alias autem qui. Iste facilis consectetur modi adipisci. Enim eos et voluptatem repellat. Aut id eum cum maiores.', '145', NULL, 'PRD115', 'instock', 0, 42, 'product-2.jpg', NULL, 3, '2023-05-02 01:55:11', '2023-05-02 01:55:11'),
(2, 'nostrum labore eaque ipsa occaecati et', 'nostrum-labore-eaque-ipsa-occaecati-et', 'Et voluptatem est tempore tenetur modi repellendus. Amet voluptas minima ipsa amet architecto. Aut ducimus animi animi necessitatibus aut eum. Quas consequatur sed sapiente quo cumque vel numquam.', 'Ut vero eos nam odit eos. Rerum non optio nisi sit voluptas. Veniam odio fugit libero non numquam reiciendis inventore. Aut consequuntur rerum hic illo inventore.', '38', NULL, 'PRD209', 'instock', 0, 16, 'product-11.jpg', NULL, 1, '2023-05-02 01:55:11', '2023-05-02 01:55:11'),
(3, 'nobis commodi sunt laborum dolores non', 'nobis-commodi-sunt-laborum-dolores-non', 'Dicta et quam magnam eos vel voluptatem sed velit. Minima nemo aut aut enim magni enim. Eum dolorum et quos fugit.', 'Aut doloribus nemo minus perferendis cupiditate. Dignissimos eius numquam voluptate dolor est sapiente. Inventore illum pariatur iure quaerat assumenda sunt eveniet nisi.', '22', NULL, 'PRD413', 'instock', 0, 46, 'product-3.jpg', NULL, 3, '2023-05-02 01:55:11', '2023-05-02 01:55:11'),
(4, 'et alias placeat impedit voluptas vel', 'et-alias-placeat-impedit-voluptas-vel', 'Vel quis non qui corporis consectetur labore. Eum voluptates qui et consequuntur quis sed. Provident quia nam eveniet velit et.', 'Cum et laudantium sed cum rem vel qui. Vero quo cum dolorem amet. Ipsam sit ut reiciendis. Odit minus dolor nulla eos dolor. Non vero voluptas fugit voluptatem.', '29', NULL, 'PRD284', 'instock', 0, 14, 'product-15.jpg', NULL, 1, '2023-05-02 01:55:11', '2023-05-02 01:55:11'),
(5, 'ad soluta sunt quod ea architecto', 'ad-soluta-sunt-quod-ea-architecto', 'Optio aperiam perferendis atque deleniti quis. Maiores quos et id labore est corrupti. Ab quasi molestiae omnis velit officiis aliquam consequatur.', 'Ipsa ut quae commodi id corrupti et. Distinctio quia sapiente amet. Sint est ut laboriosam eius. Aut est voluptatem sed non quis debitis.', '47', NULL, 'PRD411', 'instock', 0, 28, 'product-12.jpg', NULL, 3, '2023-05-02 01:55:11', '2023-05-02 01:55:11'),
(6, 'magnam minus aut quaerat possimus consequatur', 'magnam-minus-aut-quaerat-possimus-consequatur', 'Laboriosam cumque iste ex at. Omnis nihil id fugit et debitis quam. Eos praesentium ex sed sunt qui aut. Nihil placeat dignissimos odio iste ad laboriosam voluptatem. Eum ea tempora est sunt.', 'Est nihil minus quidem quam. Harum ut aut sit iste. Sequi eum et voluptate. Porro quia beatae quia dolor natus laudantium.', '90', NULL, 'PRD141', 'instock', 0, 35, 'product-11.jpg', NULL, 3, '2023-05-02 01:55:11', '2023-05-02 01:55:11'),
(7, 'quisquam non ipsam earum commodi quibusdam', 'quisquam-non-ipsam-earum-commodi-quibusdam', 'Quia ut exercitationem dicta inventore fuga fuga assumenda illo. Voluptas quia libero amet sint mollitia. Labore et et vel necessitatibus. Molestias aliquid consequatur et eveniet.', 'Et omnis porro blanditiis sed quis ut est. Hic sit molestiae qui dolor voluptatem autem. Nemo distinctio voluptate officia rerum molestias dolores.', '185', '245', 'PRD192', 'instock', 1, 185, 'product-6.jpg', NULL, 3, '2023-05-02 01:55:12', '2023-05-23 03:51:11'),
(8, 'dolorem eveniet minima temporibus nesciunt ipsum', 'dolorem-eveniet-minima-temporibus-nesciunt-ipsum', 'Et officia rem possimus rerum. Ipsum suscipit corporis est sit omnis repellendus. Nobis nihil omnis autem facilis voluptatem et suscipit laudantium. Temporibus accusamus hic ea laborum a.', 'Voluptatum enim voluptatibus quaerat nisi et. Laborum suscipit provident ea id vero quod. Nemo rerum et nesciunt laboriosam perspiciatis delectus est.', '96', '560', 'PRD418', 'instock', 1, 96, 'product-13.jpg', NULL, 1, '2023-05-02 01:55:12', '2023-05-23 03:52:01'),
(9, 'impedit quis sit earum exercitationem sed', 'impedit-quis-sit-earum-exercitationem-sed', 'Enim suscipit possimus omnis laudantium et quaerat. Voluptas necessitatibus repellat voluptas optio fuga modi facilis sit. Perspiciatis molestiae atque laborum error.', 'Voluptas quo voluptatem sed ut. Ea magni dicta est minus corrupti ea est. Totam et eos earum pariatur. Culpa eos temporibus incidunt voluptas praesentium.', '178', NULL, 'PRD189', 'instock', 0, 17, 'product-1.jpg', NULL, 5, '2023-05-02 01:55:12', '2023-05-02 01:55:12'),
(10, 'quam impedit et consequatur est incidunt', 'quam-impedit-et-consequatur-est-incidunt', 'Velit beatae sunt atque quis omnis molestiae. Doloremque inventore animi nam blanditiis ut occaecati. Quo et harum sequi voluptas neque libero alias.', 'Vitae non fugiat odit fuga et molestiae sint. Error rerum non molestiae cum. Et tempore a nihil repellendus recusandae omnis.', '115', NULL, 'PRD346', 'instock', 0, 20, 'product-10.jpg', NULL, 2, '2023-05-02 01:55:12', '2023-05-02 01:55:12'),
(11, 'sit quae quas facere culpa similique', 'sit-quae-quas-facere-culpa-similique', 'Ea fuga et qui dolorem expedita placeat. Ducimus eaque id dolorem hic. Et qui sequi soluta est voluptatem.', 'Deserunt ipsum expedita autem voluptatem omnis. Facere porro ea quo magnam. Vel voluptatem et illum provident.', '50', NULL, 'PRD261', 'instock', 0, 22, 'product-6.jpg', NULL, 5, '2023-05-02 01:55:12', '2023-05-02 01:55:12'),
(12, 'et consequuntur voluptas dolor non ullam', 'et-consequuntur-voluptas-dolor-non-ullam', 'Possimus veniam praesentium veritatis qui ut. Ad debitis illum alias dolorem architecto architecto excepturi. Dolorem dolores veritatis error. Est illo deserunt et debitis perferendis deleniti.', 'Voluptas at esse rerum. Neque voluptate vero repellat eaque rerum sit. Sed rerum reiciendis omnis optio doloremque.', '130', NULL, 'PRD184', 'instock', 0, 23, 'product-6.jpg', NULL, 2, '2023-05-02 01:55:12', '2023-05-02 01:55:12'),
(13, 'modi iusto exercitationem corrupti debitis soluta', 'modi-iusto-exercitationem-corrupti-debitis-soluta', 'Modi neque dolorem quas in. Similique aut illum sit est voluptatibus voluptas. Voluptates et qui est odit temporibus nostrum. Impedit amet facere eligendi odit.', 'Et molestias quasi qui dolorem. Aut cupiditate soluta sit et eveniet cumque vitae. Qui mollitia eos error rerum.', '173', '567', 'PRD198', 'instock', 1, 173, 'product-2.jpg', NULL, 5, '2023-05-02 01:55:12', '2023-05-23 03:46:40'),
(14, 'quia quis temporibus deleniti non non', 'quia-quis-temporibus-deleniti-non-non', 'Tempora suscipit quia quasi minima quam est ab. Necessitatibus sint similique et laboriosam fugit. Aut aut quis voluptatibus vel. Maxime illum perspiciatis ad explicabo facere.', 'Consequatur atque sunt vel eligendi. Neque eaque sed officia ad. Voluptates ab a aliquam unde in quia cumque aut. Voluptatem eos exercitationem facilis ullam nisi quisquam dolores.', '82', NULL, 'PRD435', 'instock', 0, 13, 'product-16.jpg', NULL, 2, '2023-05-02 01:55:12', '2023-05-02 01:55:12'),
(15, 'asperiores non quis nesciunt nemo minus', 'asperiores-non-quis-nesciunt-nemo-minus', 'Ipsum amet culpa minima unde non qui. Consequatur sint magni illo porro fugit occaecati eveniet veniam. Officia ut dolorum quo error. Temporibus iusto cum sed consequatur.', 'Amet occaecati temporibus fugiat eligendi error rem et. Distinctio qui eligendi nihil aut delectus et perspiciatis et. Vero nemo in itaque et. In veniam voluptatem id non et qui voluptates.', '111', NULL, 'PRD299', 'instock', 0, 42, 'product-14.jpg', NULL, 1, '2023-05-02 01:55:12', '2023-05-02 01:55:12'),
(16, 'natus debitis qui ducimus error ut', 'natus-debitis-qui-ducimus-error-ut', 'In nobis quaerat sed veniam odit beatae eius qui. Facilis laboriosam repudiandae voluptatem aut. Porro qui et quis est voluptates.', 'Laudantium nobis sequi natus dolor ut. Iusto autem architecto molestias perferendis unde voluptatibus quaerat culpa. Eligendi fugit quia commodi aspernatur omnis consequatur ut quia.', '174', NULL, 'PRD454', 'instock', 0, 45, 'product-5.jpg', NULL, 4, '2023-05-02 01:55:12', '2023-05-02 01:55:12'),
(17, 'Sport shoes', 'sport-shoes', 'Waanzilish Mens Sneakers Sports Shoes Breathable Casual Running Shoes-Black', 'Lightweight: soles with high elasticity and good softness can be bended freely\nSelection of good material, breathable, comfortable shoes. ', '500', '200', 'QWRET', 'instock', 0, 20, '1684392868.jpg', NULL, 28, '2023-05-18 03:54:28', '2023-05-18 03:54:28'),
(23, 'nike jordan kingolondo', 'nike-jordan-kingolondo', 'nike jordan', 'nike jordan', '350', '2000', 'QWRET', 'instock', 0, 35000, '1684397105.jpg', NULL, 23, '2023-05-18 05:05:05', '2023-05-18 09:17:48'),
(25, 'childrenclothes', 'childrenclothes', 'childrenclothes', 'childrenclothes', '213', '342', 'hg', 'instock', 1, 213, '1684819236.jpg', NULL, 13, '2023-05-23 02:20:36', '2023-05-23 03:03:00');

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
  `utype` varchar(255) NOT NULL DEFAULT 'USR' COMMENT 'ADM is for admin and USR for user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `utype`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mulwa', 'paulmulwa102@gmail.com', NULL, '$2y$10$vdTCAVtzAlt20pN.OejyJ..czozXGWUSyLuxJZnCs9v71Uc6xr8Ra', 'USR', NULL, '2023-04-29 07:41:21', '2023-04-29 07:41:21'),
(2, 'paulmulwa101', 'paulmulwa101@gmail.com', NULL, '$2y$10$OUvfzi489Ho/RMMC3pBTi.sYHA1LQBU16BcFxiPlxwe9fQDyR6X/G', 'ADM', NULL, '2023-04-29 07:41:50', '2023-04-29 07:41:50'),
(3, 'childrenclothes', 'childrenclothes@gmail.com', NULL, '$2y$10$mDfQ3Y3ijJSWZ.3cnzzIDOYggv3WhN/o5LM1dUVBT2mfxcWSGArVy', 'USR', NULL, '2023-05-01 03:36:28', '2023-05-01 03:36:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
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
  ADD PRIMARY KEY (`email`);

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
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
