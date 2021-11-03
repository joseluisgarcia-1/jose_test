-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-11-2021 a las 10:39:55
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `jose_test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add marca', 8, 'add_marca'),
(30, 'Can change marca', 8, 'change_marca'),
(31, 'Can delete marca', 8, 'delete_marca'),
(32, 'Can view marca', 8, 'view_marca'),
(33, 'Can add store', 9, 'add_store'),
(34, 'Can change store', 9, 'change_store'),
(35, 'Can delete store', 9, 'delete_store'),
(36, 'Can view store', 9, 'view_store');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$C2ePsMQ2ClNM$P/+vUhyeYqJB2qn3bJLjqMPGwRL81+eViZQHcXhY+g0=', '2021-11-03 09:02:59.288803', 1, 'jose', '', '', 'jose@local.com', 1, 1, '2021-11-03 03:00:05.439158'),
(2, 'pbkdf2_sha256$216000$k7Qqu31bNIlh$ymxxHRBKJDWrUuyiv8+k2QB01gIBbdZ9eX5icUAdXGQ=', NULL, 1, 'josel', '', '', 'jsoe@local.com', 1, 1, '2021-11-03 03:01:39.119242'),
(3, 'pbkdf2_sha256$216000$58WboUTv5r4g$WF+fL90E8Vy7mnKL0IJ2o35Zxwu13t5F8VhYLjJlY4g=', '2021-11-03 08:56:15.627104', 0, 'granlio', 'Lio', 'messi', 'gran@local.com', 0, 1, '2021-11-03 08:22:49.629384'),
(4, 'pbkdf2_sha256$216000$XH0SoNe71vzc$ppACcy2M/h1kfY9Og1JKpM+0KeuejJF3xqqBfmCl+X0=', '2021-11-03 09:38:59.427594', 0, 'marca', 'Periódico', 'Marca', 'mailpruebapython@gmail.com', 0, 1, '2021-11-03 09:04:21.743081');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_bin DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-11-03 03:02:49.208621', '1', 'Nike Colombiaaa', 1, '[{\"added\": {}}]', 9, 1),
(2, '2021-11-03 03:03:03.369447', '1', 'Marca object (1)', 1, '[{\"added\": {}}]', 8, 1),
(3, '2021-11-03 03:03:21.568477', '1', 'Zapato nuevo jljlkjlkjlkj', 1, '[{\"added\": {}}]', 7, 1),
(4, '2021-11-03 03:04:19.555658', '2', 'Ad Eu', 1, '[{\"added\": {}}]', 9, 1),
(5, '2021-11-03 03:04:35.020911', '2', 'Cristiano hgjhgjhgj', 1, '[{\"added\": {}}]', 7, 1),
(6, '2021-11-03 03:05:10.478081', '2', 'Marca object (2)', 1, '[{\"added\": {}}]', 8, 1),
(7, '2021-11-03 03:05:33.468295', '2', 'Marca object (2)', 3, '', 8, 1),
(8, '2021-11-03 03:06:09.772167', '2', 'Cristiano hgjhgjhgj', 3, '', 7, 1),
(9, '2021-11-03 03:06:25.755691', '1', 'Nike Colombiaaa', 3, '', 9, 1),
(10, '2021-11-03 03:07:17.168752', '3', 'Jose Tillos Colombia', 1, '[{\"added\": {}}]', 9, 1),
(11, '2021-11-03 03:07:29.788414', '3', 'Marca object (3)', 1, '[{\"added\": {}}]', 8, 1),
(12, '2021-11-03 03:07:53.960818', '3', 'tillos jose', 1, '[{\"added\": {}}]', 7, 1),
(13, '2021-11-03 03:08:22.782880', '3', 'Jose Tillos Colombia', 3, '', 9, 1),
(14, '2021-11-03 03:10:48.549342', '4', 'Marca object (4)', 1, '[{\"added\": {}}]', 8, 1),
(15, '2021-11-03 03:11:27.830571', '1', 'Zapato nuevo jljlkjlkjlkj', 3, '', 7, 1),
(16, '2021-11-03 03:14:48.940811', '3', 'tillos jose', 2, '[{\"changed\": {\"fields\": [\"Marca\"]}}]', 7, 1),
(17, '2021-11-03 03:15:03.851521', '3', 'tillos jose', 3, '', 7, 1),
(18, '2021-11-03 03:15:43.355515', '4', 'Terry tillos', 1, '[{\"added\": {}}]', 7, 1),
(19, '2021-11-03 03:17:04.720443', '2', 'Ad Eu', 3, '', 9, 1),
(20, '2021-11-03 03:17:16.199542', '4', 'UNAD Colombia', 1, '[{\"added\": {}}]', 9, 1),
(21, '2021-11-03 03:17:24.130084', '5', 'Marca object (5)', 1, '[{\"added\": {}}]', 8, 1),
(22, '2021-11-03 03:17:28.172121', '5', 'Marca object (5)', 3, '', 8, 1),
(23, '2021-11-03 03:23:40.389008', '4', 'Terry tillos', 3, '', 7, 1),
(24, '2021-11-03 03:23:55.084193', '6', 'Marca object (6)', 1, '[{\"added\": {}}]', 8, 1),
(25, '2021-11-03 03:24:08.520667', '5', 'jjhjkhkjh kjhkjhkjhkjh', 1, '[{\"added\": {}}]', 7, 1),
(26, '2021-11-03 03:24:20.456249', '5', 'jjhjkhkjh kjhkjhkjhkjh', 3, '', 7, 1),
(27, '2021-11-03 05:33:34.970064', '6', 'oso1 hhjkhjkhkjh', 1, '[{\"added\": {}}]', 7, 1),
(28, '2021-11-03 05:49:13.707045', '7', 'Cr kjkljlkjlkjl', 1, '[{\"added\": {}}]', 7, 1),
(29, '2021-11-03 06:46:58.087869', '6', 'Marca object (6)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 8, 1),
(30, '2021-11-03 07:48:09.054094', '6', 'Marca object (6)', 3, '', 8, 1),
(31, '2021-11-03 08:03:06.245214', '7', 'Marca object (7)', 1, '[{\"added\": {}}]', 8, 1),
(32, '2021-11-03 08:03:20.140215', '7', 'Cr kjkljlkjlkjl', 2, '[{\"changed\": {\"fields\": [\"Marca\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'products', 'marca'),
(7, 'products', 'product'),
(6, 'sessions', 'session'),
(9, 'stores', 'store');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-11-03 02:58:55.216282'),
(2, 'auth', '0001_initial', '2021-11-03 02:58:56.328986'),
(3, 'admin', '0001_initial', '2021-11-03 02:59:05.080877'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-11-03 02:59:07.452912'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-03 02:59:07.531557'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-11-03 02:59:08.742306'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-11-03 02:59:09.948543'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-11-03 02:59:11.455051'),
(9, 'auth', '0004_alter_user_username_opts', '2021-11-03 02:59:11.510048'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-11-03 02:59:13.415524'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-11-03 02:59:13.479085'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-11-03 02:59:13.533257'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-11-03 02:59:13.740849'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-11-03 02:59:13.933320'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-11-03 02:59:15.127167'),
(16, 'auth', '0011_update_proxy_permissions', '2021-11-03 02:59:15.184679'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-11-03 02:59:15.339661'),
(18, 'stores', '0001_initial', '2021-11-03 02:59:16.011108'),
(19, 'products', '0001_initial', '2021-11-03 02:59:17.318422'),
(20, 'products', '0002_marca', '2021-11-03 02:59:19.321485'),
(21, 'sessions', '0001_initial', '2021-11-03 02:59:19.675637'),
(22, 'stores', '0002_auto_20211102_2108', '2021-11-03 02:59:20.673161'),
(23, 'stores', '0003_auto_20211102_2116', '2021-11-03 02:59:22.949031'),
(24, 'stores', '0004_auto_20211102_2149', '2021-11-03 02:59:26.134652'),
(25, 'products', '0003_auto_20211102_2159', '2021-11-03 03:01:09.778456'),
(26, 'products', '0004_product_marca', '2021-11-03 03:14:13.427496'),
(27, 'products', '0005_auto_20211103_0302', '2021-11-03 08:02:29.005154');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3qk28um7bw0m8q8q1lbxai616zl5xdy6', 'e30:1miC3j:BTyYOr7EIKwps3uV82RhM6FJYML6U7mRvo4NKJMgtYs', '2021-11-17 08:55:51.530840'),
('7e7mtdy9ofpxjzukmehetx4glvrcfo3c', 'e30:1miBtL:EPlaiZWaig1qUpWlQ4K005VRd1jKaoDGKwJCaBRabow', '2021-11-17 08:45:07.534313'),
('arbs6smn0c8p6onqlb94o4813anb9tvz', 'e30:1miBce:py2FlV7OvfI9wM9ixulprM-LiWkRQMChfmXYWYVEydQ', '2021-11-17 08:27:52.622911'),
('ejymrze3rp61eet0djg85tapl446r1co', 'e30:1miC0M:Ae73TDpPgclQYXNISXjrmXLikfO5QjAB69xIsuobNWo', '2021-11-17 08:52:22.942498'),
('gtmoey60wjvjb2od3wn5zs89vxfnet2a', 'e30:1miBY7:kNMIIeVu3O3it4IZ6BAkosqeDBPoCTpZ-Z4nk9P_cjY', '2021-11-17 08:23:11.968609'),
('o3fbtzb6ngvsxcx0ak3rjnjmeay6zawa', 'e30:1miC08:gtNoV1oxOVSS4rvuCXK5h5ZhkJpmcP9nych6Kd5ykYM', '2021-11-17 08:52:08.493629'),
('qzkrrp69da3szl9tvdrftklw2gny7smc', 'e30:1miC1v:vW_W8DnornLuX1beYuwZgfrX7yNTxmn6Rc9uK4B51lI', '2021-11-17 08:53:59.779127'),
('sth0i0amnmzz1gyzh3x96kunmvd8l78q', 'e30:1miC47:CiHJsBNjKnyPpbng0lGsB_0DXDcwUEpOQzgPSEwFwzg', '2021-11-17 08:56:15.581702'),
('vhg7220bukjl2otvdoy54fj2mjhvfhlb', '.eJxVjEEOwiAQRe_C2hDoIDAu3fcMBIZBqoYmpV0Z765NutDtf-_9lwhxW2vYOi9hyuIijDj9binSg9sO8j222yxpbusyJbkr8qBdjnPm5_Vw_w5q7PVbs3KqYGTvwVhM5ByCZsiDzh7ImZKT8hYKocZ4BqtRG0VODWjBKLTi_QHPZTab:1miCjU:lydr4YL7FhLwDbwF1BOtMcnZXEyCVi2ABBWJq-6IbCU', '2021-11-17 09:39:00.164698'),
('vqy3qcca541fga7xokfzkbd3cqnj41pd', 'e30:1miBvy:weZeW52mV1nB4mQeG03FCwh-af6p4RZUY4cjxSb0fXk', '2021-11-17 08:47:50.805658');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_marca`
--

CREATE TABLE `products_marca` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `products_marca`
--

INSERT INTO `products_marca` (`id`, `name`, `store_id`) VALUES
(7, 'Cr', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_product`
--

CREATE TABLE `products_product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin NOT NULL,
  `status` varchar(50) COLLATE utf8_bin NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `marca_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `products_product`
--

INSERT INTO `products_product` (`id`, `name`, `description`, `status`, `price`, `stock`, `marca_id`) VALUES
(7, 'Cr', 'goleadores', 'Agotado', '99.99', 8, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stores_store`
--

CREATE TABLE `stores_store` (
  `id` int(11) NOT NULL,
  `nit` varchar(100) COLLATE utf8_bin NOT NULL,
  `name_commerce` varchar(100) COLLATE utf8_bin NOT NULL,
  `country` varchar(100) COLLATE utf8_bin NOT NULL,
  `cellphone` varchar(100) COLLATE utf8_bin NOT NULL,
  `state` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `website` varchar(100) COLLATE utf8_bin NOT NULL,
  `name_company` varchar(100) COLLATE utf8_bin NOT NULL,
  `city` varchar(100) COLLATE utf8_bin NOT NULL,
  `address` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `stores_store`
--

INSERT INTO `stores_store` (`id`, `nit`, `name_commerce`, `country`, `cellphone`, `state`, `email`, `website`, `name_company`, `city`, `address`) VALUES
(4, '8899885566', 'Jose Luis', 'Colombia', '3145476668', 'Cauca', 'mooa@local.com', 'https://www.nike.com', 'nacional', 'Popayán', 'Calle 4 # 3 - 42'),
(5, '88998851111', 'Netflix', 'España', '3218890077', 'Madrid', 'tin@local.com', 'https://www.nike.com', 'Tin', 'Madrid', 'carrera 4 2 2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `products_marca`
--
ALTER TABLE `products_marca`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_marca_store_id_680cd966_fk_stores_store_id` (`store_id`);

--
-- Indices de la tabla `products_product`
--
ALTER TABLE `products_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_product_marca_id_1180ec97_fk_products_marca_id` (`marca_id`);

--
-- Indices de la tabla `stores_store`
--
ALTER TABLE `stores_store`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `products_marca`
--
ALTER TABLE `products_marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `products_product`
--
ALTER TABLE `products_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `stores_store`
--
ALTER TABLE `stores_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `products_marca`
--
ALTER TABLE `products_marca`
  ADD CONSTRAINT `products_marca_store_id_680cd966_fk_stores_store_id` FOREIGN KEY (`store_id`) REFERENCES `stores_store` (`id`);

--
-- Filtros para la tabla `products_product`
--
ALTER TABLE `products_product`
  ADD CONSTRAINT `products_product_marca_id_1180ec97_fk_products_marca_id` FOREIGN KEY (`marca_id`) REFERENCES `products_marca` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
