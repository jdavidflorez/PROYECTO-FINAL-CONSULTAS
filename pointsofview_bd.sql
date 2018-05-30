-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2018 a las 18:16:07
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pointsofview_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(40) NOT NULL,
  `comentario` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `limitepalabras` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `idpublicacion` int(11) NOT NULL,
  `idestudiante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `comentario`, `limitepalabras`, `idpublicacion`, `idestudiante`) VALUES
(1, 'no me gusta', '30', 102, 23),
(32, 'Chevere', '40', 3420, 23435),
(54, 'La idea esta buena pero no es logica', '45', 34, 34534),
(59, 'Buen aporte', '40', 178, 34534),
(212, 'Me gusta la Ley de Newton', '50', 102, 0),
(2323, 'La guitarra es el mejor instrumento', '34', 598, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion`
--

CREATE TABLE `publicacion` (
  `id` int(11) NOT NULL,
  `estudiante` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `contenido` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `horapublicacion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `limitepalabras` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `puntuacion` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `publicacion`
--

INSERT INTO `publicacion` (`id`, `estudiante`, `contenido`, `fecha`, `horapublicacion`, `limitepalabras`, `puntuacion`) VALUES
(98, 'Cristian', 'Cuando hablamos de razonar....', '21 de mayo de 2018', '7:00 ', '60', NULL),
(102, 'Fernando Jose', 'La fisica clasica....', '22 de mayo 2018', '7:00', '40', NULL),
(118, 'Celeste', 'Las redes nos ayudan a comunicarnos ', '17 de mayo 2018', '7:20', '40', NULL),
(121, 'Bartolo', 'La busqueda de información nos facilita el entendimiento', '29 de mayo 2018', '6:58 ', '30', NULL),
(132, 'Hernan', 'El 23 de mayo se celebra el dia de la cancion', '7 de mayo 2018', '6:58 ', '40', NULL),
(445, 'Faridis', 'Los patacones nos ayudan hacer mas fuertes nuestros musculos', '21 de mayo 2018', '7:00', '40', NULL),
(452, 'Sandra', 'La policia se debe respetar', '12 de mayo 2018', '7:02', '40', NULL),
(456, 'Luis  David', 'La tercera ley de newton nos habla de la reaccion ', '28 de mayo 2018', '7:16', '40', NULL),
(598, 'Bartolo', 'La guitarra es el instrumento mas completo', '4 de mayo 2018', '7:45', '30', NULL),
(678, 'Karol', 'El analisis se basa en....', '4 de mayo 2018', '6:58 ', '40', NULL),
(3420, 'Gabriela ', 'El proton dos......', '22 de mayo 2018', '7:15', '40', NULL),
(5567, 'Jarlan', 'El numero de protones.....', '21 de mayo 2018', '7:15 ', '40', NULL),
(6781, 'Esteban', 'Los amores son', '4 de mayo 2018', '7:15', '40', NULL),
(6782, 'JAROL', 'El año 123', '', '', '', NULL),
(6783, 'EL SD', 'asdasdas', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `contraseña` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `rol` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `contraseña`, `nombre`, `apellido`, `correo`, `rol`) VALUES
(23, 'wendymagela', '87293872', 'Wendy', 'Brun', 'wen@gmail.com', 'Administrador'),
(45, 'florezjose', 'florefr', 'Jose ', 'Florez', 'florez@gmail.com', 'Administrador'),
(89, 'Barlitaja', 'oi9867', 'Jarlan', 'Barrera', 'barrerajarlan@gmail.com', 'estudiante'),
(97, 'ceni4', 'ceni8989', 'Luz', 'Franco', 'luzenith@es.com', 'estudiante'),
(109, 'Faris89', '89faris', 'Faridis', 'Vidal', 'vidal@gmail.com', 'estudiante'),
(110, 'Bartolo67', '6745', 'Bartolo ', 'Sanchez', 'sanchez@es.com', 'estudiante'),
(139, 'ramos67', '45ramos', 'Sandra', 'Ramos', 'San@es.com', 'estudiante'),
(145, 'luis34', '09876ytr', 'Luis David', 'Ramirez', 'ramirez23@es.com', 'estudiante'),
(327, 'Celeste78', 'redceleste', 'Celeste', 'Villadiego', 'villadiego@es.com', 'estudiante'),
(545, 'Luz', 'luz200', 'Luz', 'Mejia', 'mejia@gmail.com', 'estudiante'),
(675, 'ortiz8', 'ortirsdsd', 'Luz ', 'Ortiz', 'Ortiz@gmail.com', 'estudiante'),
(723, 'nacho24', 'unacho', 'Hernan', 'Pretelt', 'nachopretelt@gmail.com', 'estudiante'),
(6442, 'Estella45', 'estellita', 'Estella', 'Barrera', 'estella@gmail.com', 'estudiante'),
(9876, 'Cristi34', '2009', 'Cristina Andrea', 'Brun Caro', 'brun@gmail.edu.co', 'estudiante'),
(23435, 'estenb', 'egtyhyu7', 'Esteban', 'Villadiego', 'teban@es.co', 'estudiante'),
(34534, 'gabriela23', 'gabyyjuan', 'Gabriela ', 'Jaramillo', 'jaramillo@es.co', 'estudiante'),
(45879, 'karollopez', 'Karolsd', 'Karol ', 'Barguil', 'barguil@gamil.com', 'estudiante'),
(456456456, 'fernansd', 'fernandsdsd', 'Fernando Jose', 'Florez', 'florez@gmail.es', 'estudiante');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2324;

--
-- AUTO_INCREMENT de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6784;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
