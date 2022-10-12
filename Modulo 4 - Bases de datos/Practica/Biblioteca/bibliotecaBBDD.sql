-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-10-2022 a las 21:41:33
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id` int NOT NULL,
  `nombre` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id`, `nombre`) VALUES
(1, 'Nicolas Maquiavelo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor_tiene_libro`
--

CREATE TABLE `autor_tiene_libro` (
  `autor_id` int NOT NULL,
  `libro_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `autor_tiene_libro`
--

INSERT INTO `autor_tiene_libro` (`autor_id`, `libro_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejemplar`
--

CREATE TABLE `ejemplar` (
  `id` int NOT NULL,
  `localizacion` varchar(45) NOT NULL,
  `libro_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `carpeta` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `libro_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id` int NOT NULL,
  `paginas` int NOT NULL,
  `ISBN` varchar(45) NOT NULL,
  `editorial` varchar(45) NOT NULL,
  `titulo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id`, `paginas`, `ISBN`, `editorial`, `titulo`) VALUES
(1, 90, 'ABC111', 'Norma', 'EL Abismo'),
(2, 130, 'ABC123', 'Fundamentals', 'El Principe de Maquiavelo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_tiene_ejemplar`
--

CREATE TABLE `usuario_tiene_ejemplar` (
  `usuario_id` int NOT NULL,
  `ejemplar_id` int NOT NULL,
  `fechaPres` date NOT NULL,
  `fechaDev` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `autor_tiene_libro`
--
ALTER TABLE `autor_tiene_libro`
  ADD PRIMARY KEY (`autor_id`,`libro_id`),
  ADD KEY `fk_autor_has_libro_libro1_idx` (`libro_id`),
  ADD KEY `fk_autor_has_libro_autor_idx` (`autor_id`);

--
-- Indices de la tabla `ejemplar`
--
ALTER TABLE `ejemplar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ejemplar_libro1_idx` (`libro_id`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_fotos_libro1_idx` (`libro_id`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ISBN_UNIQUE` (`ISBN`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario_tiene_ejemplar`
--
ALTER TABLE `usuario_tiene_ejemplar`
  ADD PRIMARY KEY (`usuario_id`,`ejemplar_id`),
  ADD UNIQUE KEY `fechaPres_UNIQUE` (`fechaPres`),
  ADD KEY `fk_usuario_has_ejemplar_ejemplar1_idx` (`ejemplar_id`),
  ADD KEY `fk_usuario_has_ejemplar_usuario1_idx` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ejemplar`
--
ALTER TABLE `ejemplar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `autor_tiene_libro`
--
ALTER TABLE `autor_tiene_libro`
  ADD CONSTRAINT `fk_autor_has_libro_autor` FOREIGN KEY (`autor_id`) REFERENCES `autor` (`id`),
  ADD CONSTRAINT `fk_autor_has_libro_libro1` FOREIGN KEY (`libro_id`) REFERENCES `libro` (`id`);

--
-- Filtros para la tabla `ejemplar`
--
ALTER TABLE `ejemplar`
  ADD CONSTRAINT `fk_ejemplar_libro1` FOREIGN KEY (`libro_id`) REFERENCES `libro` (`id`);

--
-- Filtros para la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `fk_fotos_libro1` FOREIGN KEY (`libro_id`) REFERENCES `libro` (`id`);

--
-- Filtros para la tabla `usuario_tiene_ejemplar`
--
ALTER TABLE `usuario_tiene_ejemplar`
  ADD CONSTRAINT `fk_usuario_has_ejemplar_ejemplar1` FOREIGN KEY (`ejemplar_id`) REFERENCES `ejemplar` (`id`),
  ADD CONSTRAINT `fk_usuario_has_ejemplar_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
