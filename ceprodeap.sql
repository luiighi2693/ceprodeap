-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-09-2016 a las 18:25:25
-- Versión del servidor: 10.0.17-MariaDB
-- Versión de PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ceprodeap`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventoslistado`
--

CREATE TABLE `eventoslistado` (
  `id` int(11) NOT NULL,
  `tipoEvento` varchar(100) NOT NULL,
  `colorEvento` varchar(100) DEFAULT NULL,
  `nombreEvento` varchar(500) NOT NULL,
  `fecha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventoslistado`
--

INSERT INTO `eventoslistado` (`id`, `tipoEvento`, `colorEvento`, `nombreEvento`, `fecha`) VALUES
(1, 'Jornada', 'Azul', 'paginas Web', '27-08-2015'),
(2, 'Jornada', 'Verde', 'querys', '22-01-2016');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventoslistado`
--
ALTER TABLE `eventoslistado`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventoslistado`
--
ALTER TABLE `eventoslistado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
