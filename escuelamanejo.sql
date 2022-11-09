-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 09-11-2022 a las 19:04:17
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuelamanejo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(1, 'Habrá pico y cédula para la renovación de la licencia de conducción', 'La medida regirá hasta el próximo 23 de junio del 2023', 'Quienes tengan que renovar su licencia de conducción en el país tendrán que consultar el nuevo cronograma de fechas para ese trámite, el cual está ligado a su número de cédula, pues con el propósito de evitar congestiones y que el proceso sea fácil y rápido, el Ministerio de Transporte, el Registro Único nacional de Tránsito (Runt) y demás entidades de tránsito del país decidieron establecer un \'pico y cédula\'.'),
(2, 'Baradero tendrá una escuela de conducción de motocicletas', '', 'La escuela apunta a enseñar las técnicas de conducción adecuadas para reducir los riesgos en la conducción y de esta forma, generar la conciencia que amerita operar este tipo de vehículos para minimizar la tasa de siniestralidad en motocicletas. Forma parte del programa nacional \'Seguridad de los Motociclistas\' al que adhirió la comuna de Baradero.'),
(3, 'prueba 1-2-3', 'prueba 1-2-3', 'prueba 1-2-3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'bruno', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'laura', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
