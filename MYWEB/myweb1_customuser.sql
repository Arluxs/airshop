-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-06-2023 a las 03:16:15
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
(3, 'pbkdf2_sha256$390000$8dMRWfm7oakYN0FCgirLMh$HlFaKuoem+wh7aUVI4KCTjTsSiVH6ejJ2zxGF0tkhKM=', '2023-06-01 23:08:17.287238', 1, 'Arlux', 'Hildebrando', 'Fuentes', 'Hildebrandofa@gmail.com', 1, 1, '2023-04-19 07:21:15.000000', '27104524-7', 'Avenida nueva providencia 2013', '1999-02-22'),
(4, 'pbkdf2_sha256$390000$WCduR5W0Y82DN4NBmvUpJh$mJaHh2kc7PTq6Jjitj2FCWfmOS+bq/uhHYfr7k7Lszg=', '2023-04-25 01:12:45.786889', 0, 'sher', 'Hildebrando', 'ss', 'hidehola23@gmail.com', 0, 1, '2023-04-25 01:09:14.409353', '123', 'Avenida nueva providencia 2013', '1999-02-22'),
(5, 'pbkdf2_sha256$390000$weGX6tpWGPN5PfOY8r5pcY$R/PIBq9nn2EfBqKTPlIxImi6MmDAs6sdVgP/bh8tXco=', NULL, 0, 'qq', 'Hildebrando', 'eeeee', 'ffff@gmail.com', 0, 1, '2023-04-25 23:53:43.505111', '27104524-7', 'fff', '1996-02-22'),
(14, '*D22B3D19D60F076912017F9D770B90EB31AC10EE', NULL, 0, 'Gaby2', 'Gabriela', 'Cabrera', 'gaby@gmail.com', 0, 1, '2023-04-27 01:34:50.335031', '111111111', 'providenica 1765', '2000-02-02'),
(18, 'pbkdf2_sha256$390000$OLKUxpnkCd2FwDkfw4qwuw$SNAtUWCoghzLnIkw96g/ltPWaAfjo7OCkSUGxT/4JEI=', '2023-05-28 19:12:54.266384', 0, 'Cate', 'Caterinne Pamela', 'Lara', 'a@gmail.com', 0, 1, '2023-05-28 19:12:53.969546', '171720109', 'Nose', '1991-06-20'),
(20, 'pbkdf2_sha256$390000$3RZIwUqlfmzxgJtm39Cg7S$qGwu3EG001xars73PwXNSj0KqXcsRORVAvbWXDcSRQQ=', '2023-06-02 00:41:41.590950', 0, 'profevictor', 'Victor', 'Toledo', 'vic.toledo@profesor.duoc.cl', 0, 1, '2023-06-02 00:41:41.103240', '271045247', 'Antonio Varas 666', '1999-05-10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `myweb1_customuser`
--
ALTER TABLE `myweb1_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `myweb1_customuser`
--
ALTER TABLE `myweb1_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
