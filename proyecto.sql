-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 25-08-2023 a las 17:53:39
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Carros', '2023-08-25 15:59:56', '2023-08-25 15:59:56', NULL),
(2, 'Bebidas', '2023-08-25 15:59:56', '2023-08-25 15:59:56', NULL),
(3, 'Motos', '2023-08-25 15:59:56', '2023-08-25 15:59:56', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `connection` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `queue` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_spanish2_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_spanish2_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `fileable_id` bigint UNSIGNED NOT NULL,
  `fileable_type` varchar(191) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `route` varchar(191) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id`, `fileable_id`, `fileable_type`, `route`, `created_at`, `updated_at`) VALUES
(1, 1, 'App\\Models\\Product', '/storage/images/products/default.png', '2023-08-25 15:59:59', '2023-08-25 15:59:59'),
(2, 2, 'App\\Models\\Product', '/storage/images/products/default.png', '2023-08-25 15:59:59', '2023-08-25 15:59:59'),
(3, 3, 'App\\Models\\Product', '/storage/images/products/default.png', '2023-08-25 15:59:59', '2023-08-25 15:59:59'),
(4, 4, 'App\\Models\\Product', '/storage/images/products/default.png', '2023-08-25 15:59:59', '2023-08-25 15:59:59'),
(5, 5, 'App\\Models\\Product', '/storage/images/products/default.png', '2023-08-25 15:59:59', '2023-08-25 15:59:59'),
(6, 6, 'App\\Models\\Product', '/storage/images/products/default.png', '2023-08-25 15:59:59', '2023-08-25 15:59:59'),
(7, 7, 'App\\Models\\Product', '/storage/images/products/default.png', '2023-08-25 15:59:59', '2023-08-25 15:59:59'),
(8, 8, 'App\\Models\\Product', '/storage/images/products/default.png', '2023-08-25 15:59:59', '2023-08-25 15:59:59'),
(9, 9, 'App\\Models\\Product', '/storage/images/products/default.png', '2023-08-25 15:59:59', '2023-08-25 15:59:59'),
(11, 11, 'App\\Models\\Product', '/storage/images/products/ZHeGYTvYbvq2jrYm481d.png', '2023-08-25 16:00:45', '2023-08-25 16:00:45'),
(12, 10, 'App\\Models\\Product', '/storage/images/products/RlxJev48sfI5ZejeFMH5.png', '2023-08-25 17:51:52', '2023-08-25 17:51:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lends`
--

DROP TABLE IF EXISTS `lends`;
CREATE TABLE IF NOT EXISTS `lends` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(131, '2014_10_12_000000_create_users_table', 1),
(132, '2014_10_12_100000_create_password_resets_table', 1),
(133, '2019_08_19_000000_create_failed_jobs_table', 1),
(134, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(135, '2023_07_26_152539_create_categories_table', 1),
(136, '2023_07_26_153251_create_products_table', 1),
(137, '2023_07_26_153330_create_shopping_table', 1),
(138, '2023_07_26_154746_add_number_id_to_users_table', 1),
(139, '2023_08_03_163140_create_permission_tables', 1),
(140, '2023_08_15_162458_create_files_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'users.index', 'web', '2023-08-25 15:59:55', '2023-08-25 15:59:55'),
(2, 'users.create', 'web', '2023-08-25 15:59:55', '2023-08-25 15:59:55'),
(3, 'users.store', 'web', '2023-08-25 15:59:55', '2023-08-25 15:59:55'),
(4, 'users.edit', 'web', '2023-08-25 15:59:55', '2023-08-25 15:59:55'),
(5, 'users.update', 'web', '2023-08-25 15:59:55', '2023-08-25 15:59:55'),
(6, 'users.destroy', 'web', '2023-08-25 15:59:55', '2023-08-25 15:59:55'),
(7, 'products.store', 'web', '2023-08-25 15:59:55', '2023-08-25 15:59:55'),
(8, 'products.update', 'web', '2023-08-25 15:59:55', '2023-08-25 15:59:55'),
(9, 'products.destroy', 'web', '2023-08-25 15:59:55', '2023-08-25 15:59:55'),
(10, 'categories.index', 'web', '2023-08-25 15:59:55', '2023-08-25 15:59:55'),
(11, 'categories.get-all', 'web', '2023-08-25 15:59:56', '2023-08-25 15:59:56'),
(12, 'categories.create', 'web', '2023-08-25 15:59:56', '2023-08-25 15:59:56'),
(13, 'categories.store', 'web', '2023-08-25 15:59:56', '2023-08-25 15:59:56'),
(14, 'categories.edit', 'web', '2023-08-25 15:59:56', '2023-08-25 15:59:56'),
(15, 'categories.update', 'web', '2023-08-25 15:59:56', '2023-08-25 15:59:56'),
(16, 'categories.destroy', 'web', '2023-08-25 15:59:56', '2023-08-25 15:59:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_spanish2_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text COLLATE utf8mb4_spanish2_ci,
  `stock` int NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `description`, `stock`, `color`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'Shea Wiegand', '81469.00', 'Quo delectus et molestiae nisi ea incidunt. Inventore qui facilis voluptas voluptas accusamus. Provident fugiat id non quisquam molestias commodi. Omnis aut voluptatem aspernatur rerum praesentium.', 8, 'OrangeRed', '2023-08-25 15:59:58', '2023-08-25 15:59:58', NULL),
(2, 3, 'Leon Kling', '97973.00', 'Ut culpa natus corrupti. Est a possimus perferendis earum consequatur. Tempore nam quo quis ut eum aut modi.', 2, 'LightGreen', '2023-08-25 15:59:58', '2023-08-25 15:59:58', NULL),
(3, 2, 'Alycia Schuppe', '48319.00', 'Dolores et totam ipsa corrupti minima. Tempore corrupti tenetur ullam est. Qui vel exercitationem velit labore praesentium libero. Aut earum esse voluptatum velit maxime deleniti.', 8, 'LightYellow', '2023-08-25 15:59:58', '2023-08-25 15:59:58', NULL),
(4, 2, 'Dr. Clifford Emard Sr.', '71371.00', 'Saepe laboriosam nihil mollitia dolores. Voluptas aperiam voluptatem beatae dicta quibusdam. Laudantium tempora quas et non nisi. Optio eos voluptate voluptas.', 2, 'LightGreen', '2023-08-25 15:59:59', '2023-08-25 15:59:59', NULL),
(5, 2, 'Vivianne Stroman', '37897.00', 'Est sit dolor nobis. Animi repellendus qui perferendis culpa fugit et. Delectus ea reiciendis facere corrupti tempora dolores saepe.', 5, 'Maroon', '2023-08-25 15:59:59', '2023-08-25 15:59:59', NULL),
(6, 1, 'Ella Kulas', '72768.00', 'Nobis voluptatem odio sint distinctio impedit omnis. Placeat numquam consequuntur quasi. Quis quas aliquid et deserunt quos sit suscipit. Sint perferendis iure voluptatem non et qui ullam repellendus.', 0, 'Orange', '2023-08-25 15:59:59', '2023-08-25 15:59:59', NULL),
(7, 2, 'Diamond Rogahn', '9034.00', 'Iure reprehenderit dolor iste. Quidem aut dignissimos maiores voluptatum sint. Maxime nesciunt neque iste ipsum culpa. Inventore vel vero laboriosam dolores non eius.', 9, 'PowderBlue', '2023-08-25 15:59:59', '2023-08-25 15:59:59', NULL),
(8, 3, 'Merritt Schultz', '52057.00', 'Beatae dolorem voluptatem quo aut sed perferendis. Accusamus quod voluptate quisquam molestiae. Corporis suscipit odio temporibus sed ipsa.', 2, 'Teal', '2023-08-25 15:59:59', '2023-08-25 15:59:59', NULL),
(9, 1, 'Isidro Jerde', '79304.00', 'Ea quis velit alias velit voluptatem et eaque. Et quis qui est sed. Et maiores enim et labore aut deleniti esse. Saepe enim ullam qui commodi ut.', 6, 'Beige', '2023-08-25 15:59:59', '2023-08-25 15:59:59', NULL),
(10, 1, 'Dr. Chet Langosh IV', '62696.00', 'Temporibus et commodi vel eius expedita. Eaque explicabo quos illum et provident sapiente at. Repellat corporis et voluptatem impedit occaecati ut.', 6, 'BlanchedAlmond', '2023-08-25 15:59:59', '2023-08-25 17:51:52', NULL),
(11, 3, 'Moto Carro', '34000.00', 'Es para carga', 34, 'Azul', '2023-08-25 16:00:45', '2023-08-25 16:00:45', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-08-25 15:59:55', '2023-08-25 15:59:55'),
(2, 'user', 'web', '2023-08-25 15:59:55', '2023-08-25 15:59:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `number_id` varchar(191) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `number_id`, `name`, `last_name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1093221111', 'Brayan', 'Rivera', 'riveragalindez636@gmail.com', '$2y$10$yqMaG5PI0W2V95.0tZORk.EPPiR3nPUrNFKZW8VZVqr2ec6z4NmeC', 'gmaDpPpPYiG9R1Q06gRpQ6b48fHWYO', '2023-08-25 15:59:56', '2023-08-25 15:59:56', NULL),
(2, '131914277', 'Cayla Pfannerstill', 'Zena Feil DVM', 'hrutherford@example.org', '$2y$10$4r2O.7dOlGWRLZ8d51UVdOFio4IZKESuxX8UROyGjVY.b8Tp7dJVm', 'bLuL4YCYMs0WGvnBr8HKZnxCTqQIte', '2023-08-25 15:59:58', '2023-08-25 16:17:05', NULL),
(3, '637059548', 'Ms. Rhianna Oberbrunner', 'Harmon Roberts', 'batz.kenny@example.net', '$2y$10$6R35mmL4bB.6vC7SKYmtoO2eJxTQ3h6vHBubyf5F1AubCP1tDaGci', 'r4g5qT4wmjwGSUuARtWZrUFXwhe9h5', '2023-08-25 15:59:58', '2023-08-25 15:59:58', NULL),
(4, '264234351', 'Susana Larson', 'Ms. Violette Keebler V', 'joesph07@example.org', '$2y$10$/5J0QzWsDkbcrcfrBneN5uGmnkHwvRBqWkmXC9jN5UTdu4dPynt1G', 'T7uZyWjDOHfiywA2qj7NphW3nF7rw7', '2023-08-25 15:59:58', '2023-08-25 15:59:58', NULL),
(5, '586146726', 'Dr. Gwendolyn Hauck MD', 'Cathy Schiller DDS', 'kovacek.billy@example.org', '$2y$10$GPHBukySZdH9/OUOOTYl0.VN3AzRiCeRljJsFVbo7Gwjvf4DkhPJW', 'TbfHZYIg2RTQnlQwxD9PkzkUJ2ONvF', '2023-08-25 15:59:58', '2023-08-25 15:59:58', NULL),
(6, '748441914', 'Jedidiah Beatty', 'Jazmin Medhurst MD', 'alessandro.toy@example.org', '$2y$10$TJGzJtIX0mr3L862WnVGIe.ipvOX5c0lS0K5MHI1REuqGjccdo0o.', '9Nkh4xOfZ6BQuN7uTlPdmaxA3ZpjGF', '2023-08-25 15:59:58', '2023-08-25 15:59:58', NULL),
(7, '241986910', 'Aditya Altenwerth MD', 'Arnaldo Schowalter MD', 'noemy19@example.net', '$2y$10$a2SzkrrrFll8dAgipkTSau5pl8BAwyg4Tf1oROu4FQUKf/miEoCwG', 'ljwNKpN4xuRevV0HuizkmfhmkUHSlE', '2023-08-25 15:59:58', '2023-08-25 15:59:58', NULL),
(8, '257363033', 'Alexandrea Lehner DDS', 'Mr. Bradford Will', 'zboncak.ottilie@example.net', '$2y$10$cWmlc/.jQL.pQ/DAfKUM0uiPz94156qbZ.oYSYZ7h0qSSHVnaYvmi', 'PhayVuldPiHLTH1okxOPiJqnY6GAO5', '2023-08-25 15:59:58', '2023-08-25 15:59:58', NULL),
(9, '204934650', 'Miss Laney Carroll', 'Peter Hintz', 'dwintheiser@example.com', '$2y$10$C7HDuLYb24l2Zc9q.an1TOqjE4Hw1fsA6FCZCUkknaJj3WmP1gYmC', '9ExfKUIlpj7xm14n4BzaPv6o4HrCsF', '2023-08-25 15:59:58', '2023-08-25 15:59:58', NULL);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
