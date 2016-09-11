-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-09-2016 a las 21:12:07
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.23

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
  `fecha` varchar(100) NOT NULL,
  `nombreEventoCorto` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventoslistado`
--

INSERT INTO `eventoslistado` (`id`, `tipoEvento`, `colorEvento`, `nombreEvento`, `fecha`, `nombreEventoCorto`) VALUES
(1, 'Jornada', 'blue', 'paginas Web', '27-08-2015', 'paginas web'),
(2, 'Jornada', 'green', 'querys', '22-01-2016', 'querys'),
(3, 'Jornada', 'blue', 'susibel', '11-09-2016', 'susi'),
(4, 'Seminario', 'red', 'MESA DE TRABAJO: ETAX 2.0: Despeje dudas de la plataforma tributaria (ayudas de expertos)', '11-09-2016', 'MESA DE TRABAJO: ETAX 2.0');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
