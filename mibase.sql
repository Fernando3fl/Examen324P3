-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-04-2021 a las 19:37:19
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mibase`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colores`
--

CREATE TABLE `colores` (
  `id` int(11) NOT NULL,
  `color` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `colores`
--

INSERT INTO `colores` (`id`, `color`) VALUES
(1, 'cafe'),
(2, 'azul'),
(3, 'rojo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE `nota` (
  `ci` int(11) DEFAULT NULL,
  `sigla` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nota1` int(11) DEFAULT NULL,
  `nota2` int(11) DEFAULT NULL,
  `nota3` int(11) DEFAULT NULL,
  `notafinal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `nota`
--

INSERT INTO `nota` (`ci`, `sigla`, `nota1`, `nota2`, `nota3`, `notafinal`) VALUES
(124, 'Inf_324', 66, 66, 66, 66),
(128, 'Est-143', 51, 71, 81, 68),
(129, 'Inf-315', 46, 51, 23, 40),
(130, 'Inf-319', 90, 70, 45, 68),
(124, 'Inf-111', 66, 66, 66, 66),
(128, 'Inf-111', 51, 71, 81, 68),
(129, 'Inf-111', 90, 70, 45, 68),
(123, 'Inf-111', 23, 56, 87, 55),
(124, 'Inf-121', 66, 66, 66, 66),
(125, 'Est-133', 51, 71, 81, 68),
(126, 'Inf-111', 46, 51, 23, 40),
(126, 'Inf-121', 46, 51, 50, 50),
(126, 'Inf-131', 46, 51, 23, 40),
(127, 'Inf-131', 90, 70, 45, 68),
(128, 'Est-143', 51, 71, 81, 68),
(129, 'Inf-315', 46, 51, 23, 40),
(130, 'Inf-121', 90, 70, 45, 68);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `ci` int(11) NOT NULL,
  `nombrecompleto` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechadenacimiento` date DEFAULT NULL,
  `lugarderesidencia` varchar(2) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`ci`, `nombrecompleto`, `fechadenacimiento`, `lugarderesidencia`) VALUES
(123, 'Juan Flores', '2000-05-27', 'CB'),
(124, 'Lucia Fernandez', '1995-05-21', 'LP'),
(125, 'Pedro Mamani', '1997-06-13', 'SC'),
(126, 'Julio Vargas', '1997-05-13', 'LP'),
(127, 'Jorge Calderon', '1993-08-15', 'LP'),
(128, 'Pablo Almanza', '1994-12-23', 'CB'),
(129, 'Aby Guerrero', '1992-08-08', 'SC'),
(130, 'Lara Fuentes', '2000-03-16', 'CB');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ci` int(11) NOT NULL,
  `usuario` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `passwordd` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `color` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `rol` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ci`, `usuario`, `passwordd`, `color`, `rol`) VALUES
(123, 'Juan', '123', 'cafe', 'estudiante'),
(124, 'Lucia', '124', 'azul', 'estudiante'),
(125, 'Pedro', '125', 'azul', 'estudiante'),
(126, 'July', '126', 'rojo', 'estudiante'),
(127, 'Jorge', '127', 'azul', 'estudiante'),
(128, 'Pablo', '128', 'cafe', 'estudiante'),
(129, 'Rosario', '129', 'rojo', 'estudiante'),
(130, 'Lara', '130', 'cafe', 'estudiante'),
(131, 'Mario', '131', 'cafe', 'docente'),
(132, 'Laura', '132', 'cafe', 'docente'),
(133, 'Wendy', '133', 'cafe', 'docente'),
(134, 'Jimena', '134', 'cafe', 'docente'),
(135, 'Rosa', '135', 'cafe', 'docente'),
(136, 'Lucio', '136', 'cafe', 'docente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `colores`
--
ALTER TABLE `colores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nota`
--
ALTER TABLE `nota`
  ADD KEY `ci` (`ci`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`ci`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ci`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`ci`) REFERENCES `persona` (`ci`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
