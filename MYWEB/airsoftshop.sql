-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-07-2023 a las 02:11:02
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `airsoftshop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `authtoken_token`
--

INSERT INTO `authtoken_token` (`key`, `created`, `user_id`) VALUES
('18d9509a4a01fdfa8e01504f69054a2e761b38c9', '2023-06-20 01:42:28.471937', 3),
('fa6decde305eee8ada4270859fd538ade5756981', '2023-06-20 01:40:29.975966', 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add producto', 7, 'add_producto'),
(26, 'Can change producto', 7, 'change_producto'),
(27, 'Can delete producto', 7, 'delete_producto'),
(28, 'Can view producto', 7, 'view_producto'),
(29, 'Can add venta', 8, 'add_venta'),
(30, 'Can change venta', 8, 'change_venta'),
(31, 'Can delete venta', 8, 'delete_venta'),
(32, 'Can view venta', 8, 'view_venta'),
(33, 'Can add facturacion', 9, 'add_facturacion'),
(34, 'Can change facturacion', 9, 'change_facturacion'),
(35, 'Can delete facturacion', 9, 'delete_facturacion'),
(36, 'Can view facturacion', 9, 'view_facturacion'),
(37, 'Can add categoria', 10, 'add_categoria'),
(38, 'Can change categoria', 10, 'change_categoria'),
(39, 'Can delete categoria', 10, 'delete_categoria'),
(40, 'Can view categoria', 10, 'view_categoria'),
(41, 'Can add cliente', 11, 'add_cliente'),
(42, 'Can change cliente', 11, 'change_cliente'),
(43, 'Can delete cliente', 11, 'delete_cliente'),
(44, 'Can view cliente', 11, 'view_cliente'),
(45, 'Can add lista deseo', 12, 'add_listadeseo'),
(46, 'Can change lista deseo', 12, 'change_listadeseo'),
(47, 'Can delete lista deseo', 12, 'delete_listadeseo'),
(48, 'Can view lista deseo', 12, 'view_listadeseo'),
(49, 'Can add user', 13, 'add_customuser'),
(50, 'Can change user', 13, 'change_customuser'),
(51, 'Can delete user', 13, 'delete_customuser'),
(52, 'Can view user', 13, 'view_customuser'),
(53, 'Can add detalle venta', 14, 'add_detalleventa'),
(54, 'Can change detalle venta', 14, 'change_detalleventa'),
(55, 'Can delete detalle venta', 14, 'delete_detalleventa'),
(56, 'Can view detalle venta', 14, 'view_detalleventa'),
(57, 'Can add Token', 15, 'add_token'),
(58, 'Can change Token', 15, 'change_token'),
(59, 'Can delete Token', 15, 'delete_token'),
(60, 'Can view Token', 15, 'view_token'),
(61, 'Can add token', 16, 'add_tokenproxy'),
(62, 'Can change token', 16, 'change_tokenproxy'),
(63, 'Can delete token', 16, 'delete_tokenproxy'),
(64, 'Can view token', 16, 'view_tokenproxy'),
(65, 'Can add comuna', 17, 'add_comuna'),
(66, 'Can change comuna', 17, 'change_comuna'),
(67, 'Can delete comuna', 17, 'delete_comuna'),
(68, 'Can view comuna', 17, 'view_comuna'),
(69, 'Can add region', 18, 'add_region'),
(70, 'Can change region', 18, 'change_region'),
(71, 'Can delete region', 18, 'delete_region'),
(72, 'Can view region', 18, 'view_region');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, '28ab9761ca815b36e81196c79872363d', '2023-04-18 05:15:11.695860', 1, 'Arluxs', '', '', 'hildebrandofa@gmail.com', 1, 1, '2023-04-18 05:02:38.591298'),
(2, 'pbkdf2_sha256$390000$l6GODqgUg9jvoo2DManVVs$eIqALvlf0wc6kI8/bCAMmmTTEtqv8BgpesMur59RvwY=', NULL, 0, '2', '', '', 'hh@gmsil.copm', 0, 1, '2023-04-19 05:58:37.286765'),
(3, 'pbkdf2_sha256$390000$JQZdaO2mJeyIo6p2JHdFeQ$RgKj/7eUS8fGy3d04VM1fmHO7ccR0RYsKK2kUHzLj0U=', NULL, 0, '3', '', '', 'ffff@gmail.com', 0, 1, '2023-04-19 06:23:00.674228');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `descripcion_ca` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `descripcion_ca`) VALUES
(1, 'asalto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `rut_cliente` varchar(11) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `contraseña` varchar(20) DEFAULT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `estatus` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

CREATE TABLE `comunas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comunas`
--

INSERT INTO `comunas` (`id`, `nombre`, `region_id`) VALUES
(1, 'Arica', 1),
(2, 'Putre', 1),
(3, 'Iquique', 2),
(4, 'Alto Hospicio', 2),
(5, 'Antofagasta', 3),
(6, 'Calama', 3),
(7, 'Copiapó', 4),
(8, 'Vallenar', 4),
(9, 'La Serena', 5),
(10, 'Coquimbo', 5),
(11, 'Valparaíso', 6),
(12, 'Viña del Mar', 6),
(13, 'Santiago', 7),
(14, 'Puente Alto', 7),
(15, 'Rancagua', 8),
(16, 'Curicó', 9),
(17, 'Talca', 9),
(18, 'Chillán', 10),
(19, 'Los Ángeles', 11),
(20, 'Temuco', 12),
(21, 'Valdivia', 13),
(22, 'Puerto Montt', 14),
(23, 'Osorno', 14),
(24, 'Coyhaique', 15),
(25, 'Punta Arenas', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-04-19 07:29:15.337587', '2', 'qq', 3, '', 13, 3),
(2, '2023-04-19 07:29:15.339579', '1', 'qqq@gmail.colm', 3, '', 13, 3),
(3, '2023-04-19 17:08:55.416665', '3', 'Arlux', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Rut\", \"Direccion\", \"Fecha nacimiento\"]}}]', 13, 3),
(4, '2023-04-19 17:09:16.889117', '3', 'Arlux', 2, '[{\"changed\": {\"fields\": [\"Last name\"]}}]', 13, 3),
(5, '2023-04-22 22:48:15.527639', '6', 'SRS-A2 M2 Sport 16”', 2, '[{\"changed\": {\"fields\": [\"Link img\"]}}]', 7, 3),
(6, '2023-04-22 23:22:49.832139', '3', 'MDR-X', 2, '[{\"changed\": {\"fields\": [\"Link img\"]}}]', 7, 3),
(7, '2023-04-22 23:24:13.439469', '3', 'MDR-X', 2, '[]', 7, 3),
(8, '2023-04-22 23:26:54.747776', '2', 'algo', 2, '[{\"changed\": {\"fields\": [\"Link img\"]}}]', 7, 3),
(9, '2023-04-22 23:30:34.190637', '11', 'algop', 2, '[{\"changed\": {\"fields\": [\"Link img\"]}}]', 7, 3),
(10, '2023-04-22 23:31:38.809457', '7', 'PEPE', 2, '[{\"changed\": {\"fields\": [\"Link img\"]}}]', 7, 3),
(11, '2023-05-09 23:38:28.694666', '7', 'AK12 Tactical AEG', 1, '[{\"added\": {}}]', 7, 3),
(12, '2023-05-09 23:40:09.814798', '8', 'AK105 Custom', 1, '[{\"added\": {}}]', 7, 3),
(13, '2023-05-09 23:41:15.143391', '9', 'AKM Custom', 1, '[{\"added\": {}}]', 7, 3),
(14, '2023-05-09 23:42:30.141470', '10', 'FN P90', 1, '[{\"added\": {}}]', 7, 3),
(15, '2023-05-09 23:43:18.997194', '11', 'Kriss Vector', 1, '[{\"added\": {}}]', 7, 3),
(16, '2023-05-09 23:44:23.667937', '12', 'Vector (FDE)', 1, '[{\"added\": {}}]', 7, 3),
(17, '2023-05-09 23:45:40.465648', '13', 'Vector (Two Tones)', 1, '[{\"added\": {}}]', 7, 3),
(18, '2023-05-09 23:46:12.307339', '13', 'Vector (Two Tones)', 2, '[{\"changed\": {\"fields\": [\"Sku producto\"]}}]', 7, 3),
(19, '2023-05-09 23:46:19.847719', '12', 'Vector (FDE)', 2, '[{\"changed\": {\"fields\": [\"Sku producto\"]}}]', 7, 3),
(20, '2023-05-09 23:46:26.849740', '9', 'AKM Custom', 2, '[{\"changed\": {\"fields\": [\"Sku producto\"]}}]', 7, 3),
(21, '2023-05-09 23:48:14.629308', '14', 'Trident Enhanced', 1, '[{\"added\": {}}]', 7, 3),
(22, '2023-05-09 23:50:25.085304', '2', 'SUBFUSILES', 2, '[{\"changed\": {\"fields\": [\"Descripcion ca\"]}}]', 10, 3),
(23, '2023-05-09 23:50:39.050122', '10', 'FN P90', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 7, 3),
(24, '2023-05-09 23:50:43.925504', '13', 'Vector (Two Tones)', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 7, 3),
(25, '2023-05-09 23:50:53.632643', '12', 'Vector (FDE)', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 7, 3),
(26, '2023-05-09 23:51:00.813451', '11', 'Kriss Vector', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 7, 3),
(27, '2023-05-09 23:51:34.140289', '3', 'LMG', 2, '[{\"changed\": {\"fields\": [\"Descripcion ca\"]}}]', 10, 3),
(28, '2023-05-09 23:51:37.495411', '14', 'Trident Enhanced', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 7, 3),
(29, '2023-05-09 23:53:36.236853', '4', 'ESCOPETAS', 2, '[{\"changed\": {\"fields\": [\"Descripcion ca\"]}}]', 10, 3),
(30, '2023-05-09 23:53:43.861632', '15', 'Velites Ferrum S-II', 1, '[{\"added\": {}}]', 7, 3),
(31, '2023-05-09 23:54:44.776883', '16', 'M401 Spring', 1, '[{\"added\": {}}]', 7, 3),
(32, '2023-05-09 23:56:11.338957', '5', 'PISTOLAS', 2, '[{\"changed\": {\"fields\": [\"Descripcion ca\"]}}]', 10, 3),
(33, '2023-05-09 23:56:18.220693', '17', 'Glock 17', 1, '[{\"added\": {}}]', 7, 3),
(34, '2023-05-09 23:57:33.273990', '18', 'KP02 GBB Green', 1, '[{\"added\": {}}]', 7, 3),
(35, '2023-05-09 23:58:29.549145', '19', 'M9 GBB Green', 1, '[{\"added\": {}}]', 7, 3),
(36, '2023-05-10 00:00:11.497182', '32', 'Zone 19 Eleven', 1, '[{\"added\": {}}]', 7, 3),
(37, '2023-05-30 00:49:52.681566', '3', 'Arlux', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 13, 3),
(38, '2023-05-30 00:50:03.807651', '3', 'Arlux', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 13, 3),
(43, '2023-06-02 00:37:46.988472', '17', 'profe3', 3, '', 13, 3),
(44, '2023-06-02 00:37:46.990450', '16', 'Profe1', 3, '', 13, 3),
(45, '2023-06-02 00:37:46.992452', '15', 'Profe', 3, '', 13, 3),
(46, '2023-07-06 23:41:02.895183', '33', 'Zone 19 Eleven', 2, '[{\"changed\": {\"fields\": [\"Link img\"]}}]', 7, 3),
(47, '2023-07-06 23:48:32.080094', '32', 'Zone 19 Eleven', 2, '[{\"changed\": {\"fields\": [\"Link img\"]}}]', 7, 3),
(48, '2023-07-06 23:49:04.310971', '19', 'M9 GBB Green', 2, '[{\"changed\": {\"fields\": [\"Link img\"]}}]', 7, 3),
(49, '2023-07-06 23:49:28.586864', '18', 'KP02 GBB Green', 2, '[{\"changed\": {\"fields\": [\"Link img\"]}}]', 7, 3),
(50, '2023-07-06 23:49:41.297876', '17', 'Glock 17', 2, '[{\"changed\": {\"fields\": [\"Link img\"]}}]', 7, 3),
(51, '2023-07-06 23:49:54.564255', '16', 'M401 Spring', 2, '[{\"changed\": {\"fields\": [\"Link img\"]}}]', 7, 3),
(52, '2023-07-06 23:50:09.874615', '15', 'Velites Ferrum S-II', 2, '[{\"changed\": {\"fields\": [\"Link img\"]}}]', 7, 3),
(53, '2023-07-06 23:50:20.226508', '14', 'Trident Enhanced', 2, '[{\"changed\": {\"fields\": [\"Link img\"]}}]', 7, 3),
(54, '2023-07-06 23:50:37.236983', '13', 'Vector (Two Tones)', 2, '[{\"changed\": {\"fields\": [\"Link img\"]}}]', 7, 3),
(55, '2023-07-06 23:50:53.984902', '12', 'Vector (FDE)', 2, '[{\"changed\": {\"fields\": [\"Link img\"]}}]', 7, 3),
(56, '2023-07-06 23:51:08.180223', '11', 'Kriss Vector', 2, '[{\"changed\": {\"fields\": [\"Link img\"]}}]', 7, 3),
(57, '2023-07-06 23:51:20.046363', '10', 'FN P90', 2, '[{\"changed\": {\"fields\": [\"Link img\"]}}]', 7, 3),
(58, '2023-07-06 23:51:30.901775', '9', 'AKM Custom', 2, '[{\"changed\": {\"fields\": [\"Link img\"]}}]', 7, 3),
(59, '2023-07-06 23:51:36.612443', '9', 'AKM Custom', 2, '[]', 7, 3),
(60, '2023-07-06 23:51:54.556611', '7', 'AK12 Tactical AEG', 2, '[{\"changed\": {\"fields\": [\"Link img\"]}}]', 7, 3),
(61, '2023-07-07 00:08:51.328915', '30', 'Venta 30', 3, '', 8, 3),
(62, '2023-07-07 00:09:10.495295', '37', 'ujhttg', 1, '[{\"added\": {}}]', 7, 3),
(63, '2023-07-07 00:09:14.457756', '37', 'ujhttg', 3, '', 7, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(15, 'authtoken', 'token'),
(16, 'authtoken', 'tokenproxy'),
(5, 'contenttypes', 'contenttype'),
(10, 'MYWEB1', 'categoria'),
(11, 'MYWEB1', 'cliente'),
(17, 'MYWEB1', 'comuna'),
(13, 'MYWEB1', 'customuser'),
(14, 'MYWEB1', 'detalleventa'),
(9, 'MYWEB1', 'facturacion'),
(12, 'MYWEB1', 'listadeseo'),
(7, 'MYWEB1', 'producto'),
(18, 'MYWEB1', 'region'),
(8, 'MYWEB1', 'venta'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-03-30 23:56:30.527523'),
(2, 'auth', '0001_initial', '2023-03-30 23:56:30.850479'),
(3, 'admin', '0001_initial', '2023-03-30 23:56:30.923956'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-03-30 23:56:30.929993'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-30 23:56:30.936571'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-03-30 23:56:30.976969'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-03-30 23:56:31.006149'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-03-30 23:56:31.020597'),
(9, 'auth', '0004_alter_user_username_opts', '2023-03-30 23:56:31.027974'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-03-30 23:56:31.055050'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-03-30 23:56:31.058085'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-30 23:56:31.063952'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-03-30 23:56:31.077474'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-30 23:56:31.091898'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-03-30 23:56:31.105533'),
(16, 'auth', '0011_update_proxy_permissions', '2023-03-30 23:56:31.112112'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-30 23:56:31.125013'),
(18, 'sessions', '0001_initial', '2023-03-30 23:56:31.148956'),
(19, 'MYWEB1', '0001_initial', '2023-04-01 15:24:14.716545'),
(20, 'MYWEB1', '0002_remove_producto_venta_remove_venta_id_producto_and_more', '2023-04-01 16:49:16.820509'),
(21, 'MYWEB1', '0003_remove_producto_sku_producto_sku_producto_and_more', '2023-04-02 02:11:48.804194'),
(22, 'MYWEB1', '0004_rename_correo_cliente_email', '2023-04-18 05:16:53.878139'),
(23, 'MYWEB1', '0005_rename_contraseña_cliente_contrasena_and_more', '2023-04-19 05:08:24.188661'),
(24, 'MYWEB1', '0006_customuser', '2023-04-19 06:20:02.470040'),
(25, 'MYWEB1', '0007_producto_ruta_img', '2023-04-22 21:53:10.723848'),
(26, 'MYWEB1', '0008_alter_producto_ruta_img', '2023-04-22 21:53:10.739998'),
(27, 'MYWEB1', '0009_alter_producto_ruta_img', '2023-04-22 21:53:10.819344'),
(28, 'MYWEB1', '0010_rename_ruta_img_producto_img', '2023-04-22 21:53:10.835421'),
(29, 'MYWEB1', '0011_auto_20230422_1746', '2023-04-22 21:53:10.839521'),
(30, 'MYWEB1', '0012_auto_20230422_1748', '2023-04-22 21:53:10.842561'),
(31, 'MYWEB1', '0013_remove_producto_img', '2023-04-22 21:55:06.109245'),
(32, 'MYWEB1', '0014_producto_link_img', '2023-04-22 21:57:06.115308'),
(33, 'MYWEB1', '0015_detalleventa', '2023-05-28 18:26:36.782357'),
(34, 'authtoken', '0001_initial', '2023-06-20 00:51:44.600737'),
(35, 'authtoken', '0002_auto_20160226_1747', '2023-06-20 00:51:44.619491'),
(36, 'authtoken', '0003_tokenproxy', '2023-06-20 00:51:44.624851'),
(37, 'MYWEB1', '0016_region_comuna', '2023-06-25 21:00:12.459258');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0zdes301vmh75agd1564ymx43j1oaoev', 'e30:1prqOw:foY3iBoDt1PGojZ249y853zMUxaedBEn8pGBFIDTH5E', '2023-05-11 01:26:26.568098'),
('34ztwdfn9retuk2bvewp6wrujn0nlrq7', '.eJxVjDsOwjAQBe_iGlm7ceIPJX3OYNneNQ4gR4qTCnF3EikFtG9m3lv4sK3Fb40XP5G4CiUuv1sM6cn1APQI9T7LNNd1maI8FHnSJseZ-HU73b-DElrZa8AERMg6ZlDgkhnI9E6lyMpkyIidtgMSIHNI1GndY7R7RNk465wSny_h6zec:1qEvRZ:4CyF0uF7fP40yUyivDF3PL_ub5WarmQ4O-snJ0vYMfs', '2023-07-13 17:28:33.668805'),
('3g9c3lidfad8it85cakcoo0z85qgtqpf', '.eJxVjEEOwiAQRe_C2hBggCku3fcMZIBRqoYmpV0Z765NutDtf-_9l4i0rTVunZc4FXEWRonT75goP7jtpNyp3WaZ57YuU5K7Ig_a5TgXfl4O9--gUq_fGq0bULE15J3L4AMUCENJjr2GTJxYF43AJlxB65AsGmcgaaMQLSkU7w_jpjbf:1q4srN:naz69tWOPECFnIcP5vSLf7ApH2rTDHMa0GlwMbIUR7g', '2023-06-16 00:41:41.593982'),
('3j5ad3f92vwn6har03c93587wcc4g0zk', '.eJxVjz1vwyAQhv9KxGxZYGJjsqVSlaHq1t067nBN4kCEYYr83wtShnS54f147u7JJshpmfJm4-SInZhkzbtmAG_WV4Ou4H9Di8Gn6ExbI-3L3drvQHb9eGX_ARbYltLmAjmRsIOZueQaVU_qqCUaK9XMZyG6YewFcWEtIHXDcBRmLCWalR61rlchxOhSYKcnU3U4mh4xUMaqqYb5cDfRll3nL9EdfgCTQ1gP589LKQPme16BSlT2BcgrzydHUH4TDdtu-Y3W8X3f_wBUTluq:1qHYvy:4LAnWTv0arwcqOPI4zh21QzAYTWtHx98nvf-uQ8aoxI', '2023-07-21 00:02:50.955607'),
('3x46hg5k9une7y208wowaqzgdcanb95y', 'e30:1prqSw:T_A81JfExO63orjKCDZAetRatxbw1CICr5TlSXqEFqw', '2023-05-11 01:30:34.850716'),
('41uekzbqi8ekhktwfw3tjtmauuhq1rc0', '.eJxVjDsOwjAQBe_iGlm7ceIPJX3OYNneNQ4gR4qTCnF3EikFtG9m3lv4sK3Fb40XP5G4CiUuv1sM6cn1APQI9T7LNNd1maI8FHnSJseZ-HU73b-DElrZa8AERMg6ZlDgkhnI9E6lyMpkyIidtgMSIHNI1GndY7R7RNk465wSny_h6zec:1qEvSG:q_n7xAzJGVdHtoasX3EXCDJIzkzR4-BBMQkAX79cV1k', '2023-07-13 17:29:16.974078'),
('56imh10hs8qzgh3dtbx0izhpiq3twsor', '.eJxVjMsOwiAQRf-FtSE8HGhduvcbCMwMUjWQlHZl_HfbpAvd3nPOfYsQ16WEtfMcJhIXYYw4_Y4p4pPrTugR671JbHWZpyR3RR60y1sjfl0P9--gxF62OjlFGiyQQ5sxafDOAaiUo8U8GgIy6WxZRTt6v4lshwHZEIP2yFmJzxcG0Tgv:1qEvn6:_re9H4ZyIKtfqMoIAgGFISBWgKaBKZ1bh9NHsY6qK1M', '2023-07-13 17:50:48.276474'),
('5das9lb963hcz5gcz0ohs2aqe0dwt6wj', '.eJxljbEOwiAURX-FvBkTwEhKN7t06iKriUFgINrSvMLU8O_SDfUOd7i5OWcHaxBDitDvwNXRwT1WjC7bY-SKwhLnJ3roYVJkHAYyovcLUDA2z_ltXL0JyVQnaIUtKTjj6kJhe-WGdOaFgvwTyIavb_p0FWQSRK8RE-HyngXj7tvVsZpWxX9Vl1LKBwWWRGY:1q8sj7:tEcAE3xca1ojfnfb3ui7aBbVpgBPH2u6KnxlISNEAQM', '2023-06-27 01:21:41.953771'),
('5f30fy4epotzh6tdcls479pic2ovi8rl', 'e30:1pp0ah:WzQYKrEh21nyAGV7UcHW83InHBw-gBwPoBeVWPGFgLw', '2023-05-03 05:42:51.496662'),
('71i0thys5l5xnuviud5h9sfqmtouq7nm', '.eJxVjEsOwiAUAO_C2hAfPH4u3fcM5PGpVA0kpV0Z764kXeh2ZjIv5mnfit97Xv2S2IWBY6dfGCg-ch0m3aneGo-tbusS-Ej4YTufWsrP69H-DQr1Mr7WKAoUUCsb0UEGGUGCEASYZsSYvwKl1SYra4UDFMGcEWm2pIWJ7P0B5n427A:1q4qiB:ohzJKnzaoz9oRkMvwhxecvSrlnNvD4utn5EiryuR4lE', '2023-06-15 22:24:03.031356'),
('751qgvidh1dkd2jgb9rq139mbotyv133', 'e30:1prSTf:7CMPxNajYPZhuVwY9mMleZJybsBW1gitB4BOGADBXl8', '2023-05-09 23:53:43.752154'),
('8m6adtha5zyqkfzcv27ack53i6x5ye38', '.eJxVjEEOwiAQRe_C2hAYilCX7j0DGZhBqgaS0q6Md7dNutDtf-_9twi4LiWsnecwkbgII06_W8T05LoDemC9N5laXeYpyl2RB-3y1ohf18P9OyjYy1YDWsScIHOMYFRE75wG9s7iYIAYAYlZEXqymgmGjenRQ1bZE49n8fkCEs045w:1q1zq4:bREOPvMirouz-CKsKvWdIcGWgq3jhAHJlAcIzEjGqLo', '2023-06-08 01:32:24.304738'),
('9126pe0r978rgbiecbydhd3ledqtpeke', 'e30:1pp1yc:iLMwdFq3GH5encM7X1FzbwdJhSvlDPZkzOrKeA2Kl0A', '2023-05-03 07:11:38.979689'),
('9efsgud0l02bme5oing83bx0u6erqpiy', '.eJxVjEEOwiAQRe_C2hDKILQu3XsGMjAzUjU0Ke3KeHdD0oVu_3vvv1XEfStxb7zGmdRFgTr9bgnzk2sH9MB6X3Re6rbOSXdFH7Tp20L8uh7u30HBVnotIYSBIFtLGUdJYs15YAII1o_BAntwThgJZULjIQmScT4bmbxLoD5f9w04XQ:1pqDjg:FYNAKJcYIorFIy3fiOk3NbOXiwNz4TjYQHvxBFC529U', '2023-05-06 13:57:08.404938'),
('9tz5z4r7gv1l5etd5ejqqmbsmsoa71bb', 'e30:1prqDw:uCPS3hVSVduuScViI4Q7RTw2jmTE_CyyKxZpkXPhSXM', '2023-05-11 01:15:04.901098'),
('d0pg70es5r5d1z2wyswyb29ny8oy8m9i', '.eJyrVkpOLCrKLMlXsqpWMgYRmSnxBUX5KaXJIDFjHaW8_NykolQlKyVflyDdCCUdpcTk0tzSnMQUoLShqYGBgQ7QiLySzJTEFKCAjlJxdimSASa1tbUAYfEgoA:1qF2Kb:N6nNpBoJvj0XNWGYs8Evimrd7HqjzyERJMQQMhenHN0', '2023-07-14 00:49:49.772924'),
('eunxhs1iinr8vaf60bhk1b75sw37cfsj', 'eyJjYXJyaXRvIjp7IjMiOnsiaWRfcHJvZHVjdG8iOjMsIm5vbWJyZSI6Ik1EUi1YIiwiYWN1bXVsYWRvIjozMDAwMCwiY2FudGlkYWQiOjJ9fX0:1pxGen:zJBSY65XrXNcX_bvqvLv8KP4tMDlJFvDCpDw_m-ajs0', '2023-05-26 00:29:13.870730'),
('ezkd910p579b0cdcy0ga8z8evjj10q8p', 'e30:1prqX4:93XVFyr-wUycc1AybCS5NsbMP5ui1SNRpaULAhAqo20', '2023-05-11 01:34:50.484669'),
('fghflv64w20hc7ga5dlbb7h6px3t1je0', '.eJxVjDsOwjAQBe_iGlm7ceIPJX3OYNneNQ4gR4qTCnF3EikFtG9m3lv4sK3Fb40XP5G4CiUuv1sM6cn1APQI9T7LNNd1maI8FHnSJseZ-HU73b-DElrZa8AERMg6ZlDgkhnI9E6lyMpkyIidtgMSIHNI1GndY7R7RNk465wSny_h6zec:1qEvSj:p6E3wBmt6bJiQ86LIo2fbqn6RJSDyfXTibuHjhzGWdg', '2023-07-13 17:29:45.889643'),
('fxxyrma5w0z5m38mh55q0f9oksbwc78q', '.eJxVjEEOwiAQRe_C2hAYilCX7j0DGZhBqgaS0q6Md7dNutDtf-_9twi4LiWsnecwkbgII06_W8T05LoDemC9N5laXeYpyl2RB-3y1ohf18P9OyjYy1YDWsScIHOMYFRE75wG9s7iYIAYAYlZEXqymgmGjenRQ1bZE49n8fkCEs045w:1q1zko:WaRQRoUuYW4t-_FzwUPVvRA-ZQUTuXtRTIxZSFG68VQ', '2023-06-08 01:26:58.227265'),
('gnjjz9ev7lc42ugpu487mrfsk0u0f5j4', '.eJxVjEsOwiAUAO_C2pDHR6Au3fcM5AEPqRpISrsy3l1JutDtzGRezOO-Fb93Wv2S2IUJy06_MGB8UB0m3bHeGo-tbusS-Ej4YTufW6Ln9Wj_BgV7GV8kyDJDBCvOMJES4HTMToHUORhQkyNpSCiTckap8QulsShUsGSjYe8P9ng3xw:1q3LZM:rJuDlFxMZS_zW4cmylkA1ZwByc8hl0lsndqrj916zGY', '2023-06-11 18:56:44.804928'),
('grt895hn8f12dm0rje960ejlmlc9b2tc', 'e30:1prqQE:1ObCRusBSjcO7wzW4dNhH1rsLP6igOYCgywLBeOyzZs', '2023-05-11 01:27:46.428748'),
('hu3kpm89igv3v2q8ufgf8acge82kwbj1', 'e30:1prqRf:Se7fLPP3cdw_Kzj-GcTCj5XLjtuA7kK_Ht7vFqWeP5E', '2023-05-11 01:29:15.946931'),
('hv6zr7cgtdbfizoccrwqk727pz77gftf', '.eJxVj70SwiAQhN-FOmb4iRAtHVsbK7vMAYdBIzgkVJm8uzBjoVdcsbv37dxKBsjLOOQZ0-AtORKmSPMrajBPDNWxDwj32JoYluR1WyPt153bS7Q4nb7ZP8AI81i5gNRxRw1VbE8PKBjtO-N6QXnntKTi0COXyIS0zgHvoIhcKmBCK1RGFqiBlPwSyXEloi5vh3eKNpuqiYaE-NIJS9flfN3dygGY_MoT2GrTMhURFm-hvMO3bfsA_8tRmA:1q2LtR:GVhQnuboA_uM-mi344pHutTma9A7l39FfvtS1cu1Y_A', '2023-06-09 01:05:21.432769'),
('iwmxsx2cip3reo8n9mrey7urx7o3dyv2', 'eyJjYXJyaXRvIjp7IjEiOnsiY2FudGlkYWQiOjEsInByZWNpbyI6IjE1MDAwIn19fQ:1pp0TI:7Wm5HlzofK06XMpHJuVxdtqkabF4flidIkDzX5ffAcU', '2023-05-03 05:35:12.951698'),
('jl7pgyl35yy0vycz3q7te6pn5wksd3oc', 'e30:1pp20y:ajI8UZpd-RyvriV-fMIlfn1fp8mvpRwpUC9nZUVzMIk', '2023-05-03 07:14:04.000124'),
('jowwc4348dq41ib6y6gzubi34cscpdny', 'eyJjYXJyaXRvIjp7IjEiOnsiaWRfcHJvZHVjdG8iOjEsIm5vbWJyZSI6IlJJRkxFIEFTQUxUTyIsImFjdW11bGFkbyI6MTUwMDAsImNhbnRpZGFkIjoxfX19:1ppepK:zCW0DyGfbrtoGteSrGKU6M9c1HotWoU2sC9y5WD6rKs', '2023-05-05 00:40:38.495027'),
('koo4gharlv93cupzg058acptywqv5vmz', '.eJxVj7tuwzAMRf9Fs2uQsWQ7GYuuWTplMyiRrtUkUiFbU-B_jwRkSBcO93GI-1AT5W2Z8ipp8qxOCkfVvIuW3FVCdfiXwk9sXQxb8ratkfblru05stw-X9l_gIXWpbRFzKA7AnuYRcAhiYVZA6AxxKMB0gNbPfQa3XhAYZixtwJkxiMP2B8L1FFKfovq9FBdPZ6nvxQ5u6p1jQrxbpOUX-ev749LKZDL93wjLjYaAKiIsHmmMgcbtV7zG0Dv-_4E4r5X8g:1q3LqW:G6Y-nWF515M-g06rpLX5sa7P-IauwVzG78pM48Xgduw', '2023-06-11 19:14:28.281548'),
('ndlgn3kdso39xo6yo08v9kl4dibu1dls', '.eJxVjEEOwiAQRe_C2hDKILQu3XsGMjAzUjU0Ke3KeHdD0oVu_3vvv1XEfStxb7zGmdRFgTr9bgnzk2sH9MB6X3Re6rbOSXdFH7Tp20L8uh7u30HBVnotIYSBIFtLGUdJYs15YAII1o_BAntwThgJZULjIQmScT4bmbxLoD5f9w04XQ:1ppALt:0n-bDoa-s98kh7iGje4R9dwpk6AjZeCMRTLToTbopAk', '2023-05-03 16:08:13.209255'),
('owmdd0piamffmpxmo0cfieg8aro5h7i0', 'e30:1prqUW:OZ44exTBGgaVSrUUp8OXskFgefB8hTynTHNZ2GjvrvU', '2023-05-11 01:32:12.145171'),
('pa4vbdwrsoutdr766troli797afkllqj', 'e30:1pp2Hq:euTrmQSeSb8yxcQF3SYW7YlyN3DguYGG_EJFMHyNmoY', '2023-05-03 07:31:30.001950'),
('q08i0qmh5ln4yyktamn99226thqxn5ew', 'e30:1prqU2:_6EMWITafAnHkhJXdTtNHokIbBoMgGMoXULH0cmFzlc', '2023-05-11 01:31:42.941638'),
('rufmpl0ru1rlcyp09gpy5ee984gmm9ey', 'e30:1prqQX:EVTvk8HmxRq4Ca8GnG07HKOcB903QNnNX6giFK4563U', '2023-05-11 01:28:05.629291'),
('udbx6iwqp3qk5agua55xh7mi5g33gwpf', '.eJxVT70OwiAQfhfm2lCooI7GtYuTW3NwYNEWDC1T03cXkg56ww3f3323kh7SMvRpNrF3SC6Ek-oXU6DfxhcCX-CfodbBL9GpukjqnZ3rLqAZr7v2L2CAeShuK6VskGvGUMPJKsvosTHIuWTiJBk3gretNYBgz0AFVxaQtkJTexatKq00xOiWQC5rLpmXw_4TAyZdMF4RHyYVTb7V3e6HRzaATlMaAQtN85QIvziE_A7btu0LMHtSLg:1puNCf:xNNCvA_e2DJiEZrVaMCVINVRzBR24U3CkhIkgVcIGFY', '2023-05-18 00:52:13.204778'),
('uyk5fn9y19y9mxso6dl5w79xes1023kn', '.eJxVjDsOwjAQBe_iGlm7ceIPJX3OYNneNQ4gR4qTCnF3EikFtG9m3lv4sK3Fb40XP5G4CiUuv1sM6cn1APQI9T7LNNd1maI8FHnSJseZ-HU73b-DElrZa8AERMg6ZlDgkhnI9E6lyMpkyIidtgMSIHNI1GndY7R7RNk465wSny_h6zec:1qEvZW:zkQH_bcmQkJZ1bK92WYgfkaTmYvTCxh70eQbxvDglmQ', '2023-07-13 17:36:46.497586'),
('v4rgg7kgmllbfhvyoxeudrlodv8ea0zx', '.eJxVj0sLwjAQhP-K5Cwlj5qoNwUFQRHUe9lkExsfiaTNSfrfbcCDXvYw883s7ps0kPu2yZ1NjUeyJIJMfzUN5m5DMfAG4RorE0OfvK4KUn3drjpEtI_1l_0raKFrS9oppRgKwzkamDvtOJ0xi0IoLueKCytFXTsLCG4BVArtAGktDXULWetylYGUfB_J8k1YGR6bV4qYTdHYlIT41MmOu0677X4zWZ1X-8txzIHJz_wALNSMUlqaQu8Rxq_YMAwfbMZUGg:1ppITs:FaS5c2iXVFbxZ3QOg3BOIiUgakfzP9sr0y3a5Yf2Ifs', '2023-05-04 00:49:00.279654'),
('vnljj8tccbk7crpot3tu6lssombrgzyk', '.eJxVjEEOwiAQRe_C2hAo4IBL956BDMwgVUOT0q6Md7dNutDtf--_t4i4LjWunec4krgI7cTpd0yYn9x2Qg9s90nmqS3zmOSuyIN2eZuIX9fD_QtU7HV7JxNQ-UDsh5ARXAreBCjoqGwRyw6yD2yVPttEXmkNRumhgC3OZIYkPl8ScDga:1q2Liw:XrsTloJC6Rz4sIWxZdZFBuDs636jDg-Z-HoMw36MzJg', '2023-06-09 00:54:30.815766'),
('zcrac7qzf9z1pu6fx5u80pfxxys3cd12', '.eJxVjDsOwjAQBe_iGln-ZeNQ0ucM1q7XxgFkS_lUiLsjSymgfTPz3iLgsZdwbGkNC4ur0CAuvyNhfKbaCT-w3puMre7rQrIr8qSbnBun1-10_w4KbqXXPKrkwTkYgJ0ZmK0zSNkpDzlDjM4ni5bGgWBSrCcNSJi9MtYQcBKfLwg8ODc:1q2Llb:ofYUrahG-eHDEq1lVwntEq6eu1vAi35VeSvdNQSr3GY', '2023-06-09 00:57:15.003082'),
('zcwg6ql7szuxymhcfwyzlospranfx8gw', 'e30:1pp0dJ:pLPPo7Dtxi_xw6VrjgAFBUaPlb3UJQvLZ6J9vVCZgn8', '2023-05-03 05:45:33.342624'),
('zpyf4bcgtffmqrcxpnpzpralpf983tsq', 'eyJjYXJyaXRvIjp7IjYiOnsiaWRfcHJvZHVjdG8iOjYsIm5vbWJyZSI6IlNSUy1BMiBNMiBTcG9ydCAxNlx1MjAxZCIsImFjdW11bGFkbyI6MTYwMDAwLCJjYW50aWRhZCI6Mn19fQ:1pr7BC:TkVTf0uZrxAICvviWDseIFNIh71mphStywv10cx2R-8', '2023-05-09 01:09:14.554461');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion`
--

CREATE TABLE `facturacion` (
  `id_factura` int(11) NOT NULL,
  `rut_cliente` varchar(11) NOT NULL,
  `id_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_deseo`
--

CREATE TABLE `lista_deseo` (
  `id_deseo` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myweb1_categoria`
--

CREATE TABLE `myweb1_categoria` (
  `id_categoria` int(11) NOT NULL,
  `descripcion_ca` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `myweb1_categoria`
--

INSERT INTO `myweb1_categoria` (`id_categoria`, `descripcion_ca`) VALUES
(1, 'asalto'),
(2, 'SUBFUSILES'),
(3, 'LMG'),
(4, 'ESCOPETAS'),
(5, 'PISTOLAS'),
(6, 'POUCH'),
(7, 'VESTIMENTA'),
(8, 'ACCESORIOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myweb1_cliente`
--

CREATE TABLE `myweb1_cliente` (
  `id_cliente` int(11) NOT NULL,
  `rut` varchar(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `contrasena` varchar(20) NOT NULL,
  `direccion` varchar(20) NOT NULL,
  `fecha_nac` date NOT NULL,
  `estatus` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `myweb1_cliente`
--

INSERT INTO `myweb1_cliente` (`id_cliente`, `rut`, `nombre`, `correo`, `contrasena`, `direccion`, `fecha_nac`, `estatus`) VALUES
(1, '271045247', 'hilde', 'hidehola23@gmail.com', 'Holakase23.', 'Avenida Providencia ', '1999-02-22', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myweb1_comuna`
--

CREATE TABLE `myweb1_comuna` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `region_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `myweb1_comuna`
--

INSERT INTO `myweb1_comuna` (`id`, `nombre`, `region_id`) VALUES
(1, 'Arica', 1),
(2, 'Putre', 1),
(3, 'Iquique', 2),
(4, 'Alto Hospicio', 2),
(5, 'Antofagasta', 3),
(6, 'Calama', 3),
(7, 'Copiapó', 4),
(8, 'Vallenar', 4),
(9, 'La Serena', 5),
(10, 'Coquimbo', 5),
(11, 'Valparaíso', 6),
(12, 'Viña del Mar', 6),
(13, 'Santiago', 7),
(14, 'Puente Alto', 7),
(15, 'Rancagua', 8),
(16, 'Curicó', 9),
(17, 'Talca', 9),
(18, 'Chillán', 10),
(19, 'Los Ángeles', 11),
(20, 'Temuco', 12),
(21, 'Valdivia', 13),
(22, 'Puerto Montt', 14),
(23, 'Osorno', 14),
(24, 'Coyhaique', 15),
(25, 'Punta Arenas', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myweb1_customuser`
--

CREATE TABLE `myweb1_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `rut` varchar(11) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `myweb1_customuser`
--

INSERT INTO `myweb1_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `rut`, `direccion`, `fecha_nacimiento`) VALUES
(3, 'pbkdf2_sha256$390000$8dMRWfm7oakYN0FCgirLMh$HlFaKuoem+wh7aUVI4KCTjTsSiVH6ejJ2zxGF0tkhKM=', '2023-06-30 00:51:33.810393', 1, 'Arlux', 'Hildebrando', 'Fuentes', 'Hildebrandofa@gmail.com', 1, 1, '2023-04-19 07:21:15.000000', '27104524-7', 'Avenida nueva providencia 2013', '1999-02-22'),
(4, 'pbkdf2_sha256$390000$WCduR5W0Y82DN4NBmvUpJh$mJaHh2kc7PTq6Jjitj2FCWfmOS+bq/uhHYfr7k7Lszg=', '2023-04-25 01:12:45.786889', 0, 'sher', 'Hildebrando', 'ss', 'hidehola23@gmail.com', 0, 1, '2023-04-25 01:09:14.409353', '123', 'Avenida nueva providencia 2013', '1999-02-22'),
(5, 'pbkdf2_sha256$390000$weGX6tpWGPN5PfOY8r5pcY$R/PIBq9nn2EfBqKTPlIxImi6MmDAs6sdVgP/bh8tXco=', NULL, 0, 'qq', 'Hildebrando', 'eeeee', 'ffff@gmail.com', 0, 1, '2023-04-25 23:53:43.505111', '27104524-7', 'fff', '1996-02-22'),
(14, '*D22B3D19D60F076912017F9D770B90EB31AC10EE', NULL, 0, 'Gaby2', 'Gabriela', 'Cabrera', 'gaby@gmail.com', 0, 1, '2023-04-27 01:34:50.335031', '111111111', 'providenica 1765', '2000-02-02'),
(18, 'pbkdf2_sha256$390000$OLKUxpnkCd2FwDkfw4qwuw$SNAtUWCoghzLnIkw96g/ltPWaAfjo7OCkSUGxT/4JEI=', '2023-05-28 19:12:54.266384', 0, 'Cate', 'Caterinne Pamela', 'Lara', 'a@gmail.com', 0, 1, '2023-05-28 19:12:53.969546', '171720109', 'Nose', '1991-06-20'),
(20, 'pbkdf2_sha256$390000$3RZIwUqlfmzxgJtm39Cg7S$qGwu3EG001xars73PwXNSj0KqXcsRORVAvbWXDcSRQQ=', '2023-06-02 00:41:41.590950', 0, 'profevictor', 'Victor', 'Toledo', 'vic.toledo@profesor.duoc.cl', 0, 1, '2023-06-02 00:41:41.103240', '271045247', 'Antonio Varas 666', '1999-05-10'),
(21, 'pbkdf2_sha256$390000$Z5OtuZslSBhu96WxFnUA5V$bQJiWQj0WT/bkx0taSa2gMPxflpfd0aEDNOHH7TWVok=', NULL, 1, 'f', '', '', 'f@gmail.com', 1, 1, '2023-06-20 01:09:31.265397', '', '', NULL),
(22, 'pbkdf2_sha256$390000$lroBv2KZIs7RbW7Z2P9Iu6$vL/hWdwb9hAaTZAL/NOvV7KevLxIKFTVJdeWNwg+gt0=', '2023-06-29 17:50:48.273451', 0, 'qwe', 'Hildebrando', 'Hildebrando Fuentes', 'hidehola23@gmail.com', 0, 1, '2023-06-29 17:50:47.974085', '111111111', 'Avenida nueva providencia 2013', '1999-02-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myweb1_customuser_groups`
--

CREATE TABLE `myweb1_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myweb1_customuser_user_permissions`
--

CREATE TABLE `myweb1_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myweb1_facturacion`
--

CREATE TABLE `myweb1_facturacion` (
  `id_factura` int(11) NOT NULL,
  `id_venta_id` int(11) NOT NULL,
  `rut_cliente_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myweb1_listadeseo`
--

CREATE TABLE `myweb1_listadeseo` (
  `id_deseo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `myweb1_listadeseo`
--

INSERT INTO `myweb1_listadeseo` (`id_deseo`, `id_cliente`, `id_producto_id`) VALUES
(7, 3, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myweb1_producto`
--

CREATE TABLE `myweb1_producto` (
  `id_producto` int(11) NOT NULL,
  `nombre_pro` varchar(20) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  `precio` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `sku_producto` int(11) NOT NULL,
  `link_img` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `myweb1_producto`
--

INSERT INTO `myweb1_producto` (`id_producto`, `nombre_pro`, `descripcion`, `precio`, `categoria_id`, `sku_producto`, `link_img`) VALUES
(3, 'MDR-X', 'MDR-X', 15000, 1, 4, 'productos/MDR-X.jpg'),
(6, 'SRS-A2 M2 Sport 16”', 'SRS-A2 M2 Sport 16”', 80000, 1, 5, 'productos/SRS-A2_M2_Sport_16.jpg'),
(7, 'AK12 Tactical AEG', 'ARCTURUS AK12', 358990, 1, 20, 'productos/AK12_Tactical_AEG2.jpg'),
(9, 'AKM Custom', 'Full metal', 288990, 1, 19, 'productos/AKM_Custom_mod_21.jpg'),
(10, 'FN P90', 'Aleación de Zing', 674990, 2, 7, 'productos/FN_P902.jpg'),
(11, 'Kriss Vector', 'polímero', 669990, 2, 10, 'productos/Kriss_VectorFDE2.jpg'),
(12, 'Vector (FDE)', 'polímero', 669990, 2, 11, 'productos/Kriss_VectorFDE1.jpg'),
(13, 'Vector (Two Tones)', 'polímero', 669990, 2, 21, 'productos/Vector_SMG_Two_Tones1.jpg'),
(14, 'Trident Enhanced', 'Full metal', 799990, 3, 12, 'productos/Trident_LMG_Enhanced1.jpg'),
(15, 'Velites Ferrum S-II', 'Metal Y polimero', 229990, 4, 22, 'productos/Ferrum_S-II_Secutor_1.jpg'),
(16, 'M401 Spring', 'polímero', 39900, 4, 23, 'productos/M401_Spring1.jpg'),
(17, 'Glock 17', 'Cuerpo polímero', 189990, 5, 24, 'productos/Glock_171.jpg'),
(18, 'KP02 GBB Green', 'Full Metal', 149990, 5, 16, 'productos/KP02_GBB1.jpg'),
(19, 'M9 GBB Green', 'Full Metal', 130491, 5, 31, 'productos/M9_GBB_1.jpg'),
(32, 'Zone 19 Eleven', 'Polímero y Metal', 240900, 5, 33, 'productos/19_Eleven2.jpg'),
(33, 'Zone 19 Eleven', 'Polímero y Metal', 240920, 2, 40, 'productos/19_Eleven1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myweb1_region`
--

CREATE TABLE `myweb1_region` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `myweb1_region`
--

INSERT INTO `myweb1_region` (`id`, `nombre`) VALUES
(1, 'Región de Arica y Parinacota'),
(2, 'Región de Tarapacá'),
(3, 'Región de Antofagasta'),
(4, 'Región de Atacama'),
(5, 'Región de Coquimbo'),
(6, 'Región de Valparaíso'),
(7, 'Región Metropolitana de Santiago'),
(8, 'Región del Libertador General Bernardo O\'Higgins'),
(9, 'Región del Maule'),
(10, 'Región de Ñuble'),
(11, 'Región del Biobío'),
(12, 'Región de La Araucanía'),
(13, 'Región de Los Ríos'),
(14, 'Región de Los Lagos'),
(15, 'Región de Aysén del General Carlos Ibáñez del Campo'),
(16, 'Región de Magallanes y de la Antártica Chilena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myweb1_venta`
--

CREATE TABLE `myweb1_venta` (
  `id_venta` int(11) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `total` int(11) NOT NULL,
  `rut` varchar(11) NOT NULL,
  `sku_producto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `myweb1_venta`
--

INSERT INTO `myweb1_venta` (`id_venta`, `fecha`, `total`, `rut`, `sku_producto`) VALUES
(1, '2023-05-24 21:05:09.340130', 15000, '', 3),
(2, '2023-05-24 21:07:16.212883', 15000, '27.104.524-', 10),
(3, '2023-05-25 21:05:37.340061', 30000, '271045247', 24),
(4, '2023-05-28 14:16:14.383047', 15000, '', 4),
(5, '2023-05-28 14:18:08.492640', 110000, '27.104.524-', 5),
(6, '2023-05-28 14:28:03.306346', 125000, '27.104.524-', NULL),
(7, '2023-05-28 14:36:35.292623', 125000, '27.104.524-', 5),
(8, '2023-05-28 15:08:37.603553', 155000, '271045247', 5),
(9, '2023-06-12 20:38:07.419888', 130491, '12555554', 31),
(10, '2023-06-12 20:45:20.016504', 80000, '12555554', 5),
(11, '2023-06-12 20:49:03.196411', 210491, '12555554', 5),
(12, '2023-06-12 20:53:15.894334', 210491, '12555554', 5),
(13, '2023-06-12 20:53:54.525873', 210491, '12555555', 5),
(14, '2023-06-12 20:55:51.543797', 210491, '12555555', 5),
(15, '2023-06-12 20:56:32.648215', 210491, '12555555', 5),
(16, '2023-06-12 21:04:08.637584', 210491, '12555556', 5),
(17, '2023-06-12 21:06:26.807526', 210491, '12555556', 5),
(18, '2023-06-12 21:10:55.038088', 210491, '12555556', 5),
(19, '2023-06-12 21:11:38.892067', 210491, '12555556', 5),
(20, '2023-06-12 21:12:05.727117', 210491, '12555556', 5),
(21, '2023-06-12 21:13:15.761821', 210491, '12555556', 5),
(22, '2023-06-12 21:13:31.036751', 210491, '12555556', 5),
(23, '2023-06-12 21:17:56.379769', 210491, '12555556', 5),
(24, '2023-06-12 21:21:22.892841', 210491, '12555556', 31),
(25, '2023-06-12 21:22:05.632621', 340982, '271045247', 31),
(26, '2023-06-12 21:22:53.346233', 340982, '271045247', 31),
(27, '2023-06-12 21:23:20.162377', 340982, '271045247', 5),
(28, '2023-06-12 21:23:32.611766', 340982, '271045247', 5),
(29, '2023-06-12 21:24:15.841873', 340982, '271045247', 5),
(31, '2023-06-12 21:25:13.716405', 340982, '14145', 5),
(32, '2023-06-12 21:25:30.094999', 340982, '14145', 5),
(33, '2023-07-06 20:03:04.286571', 358990, '27.104.524-', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre_pro` varchar(20) DEFAULT NULL,
  `descripcion` varchar(20) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `categoria_id_categoria` int(11) NOT NULL,
  `venta_id_venta` int(11) NOT NULL,
  `lista_deseo_id_deseo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`id`, `nombre`) VALUES
(1, 'Región de Arica y Parinacota'),
(2, 'Región de Tarapacá'),
(3, 'Región de Antofagasta'),
(4, 'Región de Atacama'),
(5, 'Región de Coquimbo'),
(6, 'Región de Valparaíso'),
(7, 'Región Metropolitana de Santiago'),
(8, 'Región del Libertador General Bernardo O\'Higgins'),
(9, 'Región del Maule'),
(10, 'Región de Ñuble'),
(11, 'Región del Biobío'),
(12, 'Región de La Araucanía'),
(13, 'Región de Los Ríos'),
(14, 'Región de Los Lagos'),
(15, 'Región de Aysén del General Carlos Ibáñez del Campo'),
(16, 'Región de Magallanes y de la Antártica Chilena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `rut_cliente` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_venta`, `id_producto`, `fecha`, `total`, `rut_cliente`) VALUES
(1, 1, '0000-00-00 00:00:00', 12000, '271045247');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `rut_cliente` (`rut_cliente`),
  ADD UNIQUE KEY `rut_cliente_2` (`rut_cliente`);

--
-- Indices de la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `region_id` (`region_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indices de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  ADD PRIMARY KEY (`id_factura`),
  ADD UNIQUE KEY `rut_cliente` (`rut_cliente`),
  ADD KEY `id_venta_facturacion` (`id_venta`);

--
-- Indices de la tabla `lista_deseo`
--
ALTER TABLE `lista_deseo`
  ADD PRIMARY KEY (`id_deseo`),
  ADD KEY `lista_deseo_ibfk_1` (`id_cliente`);

--
-- Indices de la tabla `myweb1_categoria`
--
ALTER TABLE `myweb1_categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `myweb1_cliente`
--
ALTER TABLE `myweb1_cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `myweb1_comuna`
--
ALTER TABLE `myweb1_comuna`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MYWEB1_comuna_region_id_8dee3e65_fk_MYWEB1_region_id` (`region_id`);

--
-- Indices de la tabla `myweb1_customuser`
--
ALTER TABLE `myweb1_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `myweb1_customuser_groups`
--
ALTER TABLE `myweb1_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `MYWEB1_customuser_groups_customuser_id_group_id_5db170ec_uniq` (`customuser_id`,`group_id`),
  ADD KEY `MYWEB1_customuser_groups_group_id_7ce98ade_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `myweb1_customuser_user_permissions`
--
ALTER TABLE `myweb1_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `MYWEB1_customuser_user_p_customuser_id_permission_a423b7e2_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `MYWEB1_customuser_us_permission_id_237f864a_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `myweb1_facturacion`
--
ALTER TABLE `myweb1_facturacion`
  ADD PRIMARY KEY (`id_factura`),
  ADD KEY `MYWEB1_facturacion_id_venta_id_0d321d61_fk_MYWEB1_venta_id_venta` (`id_venta_id`),
  ADD KEY `fk_facturacion_cliente` (`rut_cliente_id`);

--
-- Indices de la tabla `myweb1_listadeseo`
--
ALTER TABLE `myweb1_listadeseo`
  ADD PRIMARY KEY (`id_deseo`);

--
-- Indices de la tabla `myweb1_producto`
--
ALTER TABLE `myweb1_producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `MYWEB1_producto_categoria_id_17483f36_fk_MYWEB1_ca` (`categoria_id`);

--
-- Indices de la tabla `myweb1_region`
--
ALTER TABLE `myweb1_region`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myweb1_venta`
--
ALTER TABLE `myweb1_venta`
  ADD PRIMARY KEY (`id_venta`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `categoria_id_categoria` (`categoria_id_categoria`),
  ADD KEY `lista_deseo_id_deseo` (`lista_deseo_id_deseo`),
  ADD KEY `venta_id_venta` (`venta_id_venta`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myweb1_cliente`
--
ALTER TABLE `myweb1_cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `myweb1_comuna`
--
ALTER TABLE `myweb1_comuna`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `myweb1_customuser`
--
ALTER TABLE `myweb1_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `myweb1_customuser_groups`
--
ALTER TABLE `myweb1_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myweb1_customuser_user_permissions`
--
ALTER TABLE `myweb1_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myweb1_facturacion`
--
ALTER TABLE `myweb1_facturacion`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myweb1_listadeseo`
--
ALTER TABLE `myweb1_listadeseo`
  MODIFY `id_deseo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `myweb1_producto`
--
ALTER TABLE `myweb1_producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `myweb1_region`
--
ALTER TABLE `myweb1_region`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_MYWEB1_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `myweb1_customuser` (`id`);

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
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `venta_cliente` FOREIGN KEY (`rut_cliente`) REFERENCES `facturacion` (`rut_cliente`);

--
-- Filtros para la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD CONSTRAINT `comunas_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `regiones` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `facturacion`
--
ALTER TABLE `facturacion`
  ADD CONSTRAINT `id_venta_facturacion` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_venta`);

--
-- Filtros para la tabla `lista_deseo`
--
ALTER TABLE `lista_deseo`
  ADD CONSTRAINT `lista_deseo_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `myweb1_comuna`
--
ALTER TABLE `myweb1_comuna`
  ADD CONSTRAINT `MYWEB1_comuna_region_id_8dee3e65_fk_MYWEB1_region_id` FOREIGN KEY (`region_id`) REFERENCES `myweb1_region` (`id`);

--
-- Filtros para la tabla `myweb1_customuser_groups`
--
ALTER TABLE `myweb1_customuser_groups`
  ADD CONSTRAINT `MYWEB1_customuser_gr_customuser_id_282d8e01_fk_MYWEB1_cu` FOREIGN KEY (`customuser_id`) REFERENCES `myweb1_customuser` (`id`),
  ADD CONSTRAINT `MYWEB1_customuser_groups_group_id_7ce98ade_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `myweb1_customuser_user_permissions`
--
ALTER TABLE `myweb1_customuser_user_permissions`
  ADD CONSTRAINT `MYWEB1_customuser_us_customuser_id_fcea2325_fk_MYWEB1_cu` FOREIGN KEY (`customuser_id`) REFERENCES `myweb1_customuser` (`id`),
  ADD CONSTRAINT `MYWEB1_customuser_us_permission_id_237f864a_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Filtros para la tabla `myweb1_facturacion`
--
ALTER TABLE `myweb1_facturacion`
  ADD CONSTRAINT `MYWEB1_facturacion_id_venta_id_0d321d61_fk_MYWEB1_venta_id_venta` FOREIGN KEY (`id_venta_id`) REFERENCES `myweb1_venta` (`id_venta`),
  ADD CONSTRAINT `fk_facturacion_cliente` FOREIGN KEY (`rut_cliente_id`) REFERENCES `myweb1_cliente` (`id_cliente`);

--
-- Filtros para la tabla `myweb1_listadeseo`
--
ALTER TABLE `myweb1_listadeseo`
  ADD CONSTRAINT `MYWEB1_listadeseo_id_producto_id_a48c216a_fk_MYWEB1_pr` FOREIGN KEY (`id_producto_id`) REFERENCES `myweb1_producto` (`id_producto`);

--
-- Filtros para la tabla `myweb1_producto`
--
ALTER TABLE `myweb1_producto`
  ADD CONSTRAINT `MYWEB1_producto_categoria_id_17483f36_fk_MYWEB1_ca` FOREIGN KEY (`categoria_id`) REFERENCES `myweb1_categoria` (`id_categoria`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoria_id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`lista_deseo_id_deseo`) REFERENCES `lista_deseo` (`id_deseo`),
  ADD CONSTRAINT `producto_ibfk_3` FOREIGN KEY (`venta_id_venta`) REFERENCES `venta` (`id_venta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
