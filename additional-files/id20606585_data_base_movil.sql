-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-04-2023 a las 23:45:34
-- Versión del servidor: 10.5.16-MariaDB
-- Versión de PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id20606585_data_base_movil`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Clients`
--

CREATE TABLE `Clients` (
  `ClientID` int(11) NOT NULL,
  `LastName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FirstName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `City` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Clients`
--

INSERT INTO `Clients` (`ClientID`, `LastName`, `FirstName`, `Address`, `City`) VALUES
(1, 'García', 'Juan', 'Calle 12 # 45-67, La Candelaria', 'Bogotá'),
(2, 'Martínez', 'María', 'Carrera 7 # 34-21, El Poblado', 'Medellín'),
(3, 'Hernández', 'Carlos', 'Calle 9 # 23-45, Santa Elena', 'Cali'),
(4, 'Pérez', 'Ana', 'Carrera 10 # 56-78, Los Andes', 'Barranquilla'),
(5, 'Rodríguez', 'Luis', 'Calle 1 # 12-34, Manga', 'Cartagena'),
(6, 'González', 'Sofía', 'Carrera 9 # 87-65, La Concordia', 'Bucaramanga'),
(7, 'Sánchez', 'Pedro', 'Calle 15 # 67-89, La Macarena', 'Bogotá'),
(8, 'Flores', 'Diana', 'Carrera 14 # 43-21, Laureles', 'Medellín'),
(9, 'Gómez', 'Andrés', 'Calle 7 # 56-78, Ciudad 2000', 'Cali'),
(10, 'Castro', 'Laura', 'Carrera 20 # 87-65, El Prado', 'Barranquilla'),
(11, 'Gutiérrez', 'Juan', 'Calle 23 # 56-78, Getsemaní', 'Cartagena'),
(12, 'Torres', 'Paula', 'Carrera 30 # 43-21, Chapinero', 'Bogotá'),
(13, 'Díaz', 'Andrea', 'Calle 45 # 67-89, El Poblado', 'Medellín'),
(14, 'Vargas', 'Camila', 'Carrera 5 # 12-34, San Antonio', 'Cali'),
(15, 'Ramírez', 'Mauricio', 'Calle 6 # 56-78, Las Delicias', 'Barranquilla'),
(16, 'Guzmán', 'Alejandro', 'Carrera 18 # 87-65, Crespo', 'Cartagena'),
(17, 'Moreno', 'Fabiola', 'Calle 34 # 43-21, La Soledad', 'Bogotá'),
(18, 'Cruz', 'Julián', 'Carrera 25 # 67-89, Belén', 'Medellín'),
(19, 'Molina', 'Manuela', 'Calle 14 # 12-34, Granada', 'Cali'),
(20, 'Herrera', 'Santiago', 'Carrera 19 # 56-78, El Tabor', 'Barranquilla'),
(21, 'Vélez', 'Isabela', 'Calle 2 # 87-65, Centro Histórico', 'Cartagena'),
(22, 'Soto', 'Sebastián', 'Carrera 8 # 43-21, La Merced', 'Bogotá'),
(23, 'Ruiz', 'Paola', 'Calle 11 # 23-45, El Rodeo', 'Medellín');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pets`
--

CREATE TABLE `pets` (
  `id` int(11) NOT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `raza` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `pets`
--

INSERT INTO `pets` (`id`, `foto`, `nombre`, `raza`, `iduser`) VALUES
(1, 'https://c.files.bbci.co.uk/48DD/production/_107435681_perro1.jpg', 'Maluco', 'Pug', 1),
(2, 'https://as01.epimg.net/diarioas/imagenes/2022/04/20/actualidad/1650466413_240889_1650466661_noticia_normal_recorte1.jpg', 'Felix', 'Angora', 4),
(6, 'https://t2.uc.ltmcdn.com/es/posts/6/3/7/como_saber_si_mi_pomerania_es_de_raza_pura_50736_600_square.jpg', 'Terry', 'pomerania', 4),
(38, 'https://elcomercio.pe/resizer/kdpOnVc-NEda1kybtWrNus0oQ6I=/980x528/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/M36IGMLO7NGLHNM7222HJHMQCA.jpg', 'pepa', 'pepa', 11),
(39, 'https://www.respetmascotas.com/_Assets/img/181129-Imagen-AlimentacionMascotas.jpg', 'Hopi', 'Hop', 8),
(40, 'https://static.wixstatic.com/media/2978f8_4daf8af6eb54461a910c9d164d455e2a.jpg/v1/fill/w_332,h_335,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/2978f8_4daf8af6eb54461a910c9d164d455e2a.jpg', 'garfield', 'gar', 8),
(41, 'https://img.lalr.co/cms/2018/08/16181927/Mini-pig.jpg', 'Pepa Ping', 'Ping', 2),
(42, 'https://www.shutterstock.com/image-photo/sun-conure-parrot-bird-beautiful-260nw-2099915854.jpg', 'Parrot', 'Part', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `iduser` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`iduser`, `nombre`, `email`, `pass`) VALUES
(1, 'pedro', 'pedro@gmail.com', 'pedro'),
(2, 'x', 'x@gmail.com', 'x'),
(4, 'carlos', 'carlos@gmail.com', 'carlos'),
(5, 'test', 'test@gmail.com', 'test'),
(6, 'orlando', 'orlando@gmail.com', 'orlando'),
(7, 'pepi', 'pepi@gmail.com', 'pepi'),
(8, 'horacio', 'horacio@gmail.com', 'horacio'),
(11, 'juan', 'juan@gmail.com', 'juan');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`ClientID`);

--
-- Indices de la tabla `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iduser` (`iduser`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Clients`
--
ALTER TABLE `Clients`
  MODIFY `ClientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `pets`
--
ALTER TABLE `pets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pets`
--
ALTER TABLE `pets`
  ADD CONSTRAINT `pets_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `users` (`iduser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
