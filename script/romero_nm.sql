-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2023 a las 06:17:54
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `romero_nm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id_perfiles` int(11) NOT NULL,
  `descripción` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id_perfiles`, `descripción`) VALUES
(1, 'admi'),
(2, 'cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(100) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `stock` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `stock`) VALUES
(6, 'Vino Blanco ', 1000, 30),
(7, 'James Black Barrel Whisky', 18000, 10),
(8, 'Gin Beefeater London', 1900, 10),
(9, 'Gin Gordons', 3900, 10),
(10, 'Licor Cachaca', 4900, 10),
(13, 'Vino Blanco ', 1000, 30),
(14, 'James Black Barrell Whisky', 18000, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promociones`
--

CREATE TABLE `promociones` (
  `promociones_1` int(100) NOT NULL,
  `gaseosas` varchar(10) NOT NULL,
  `vinos` varchar(20) NOT NULL,
  `otros` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `perfil_id` int(11) NOT NULL DEFAULT 2,
  `baja` varchar(2) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `usuario`, `email`, `pass`, `perfil_id`, `baja`) VALUES
(1, 'oliver', 'oliver', 'oliver_1', 'oliver@gmail.com', 'oliver', 0, 'no'),
(2, 'fran', 'fran', 'fran-1', 'fran@gmail.com', 'franco', 0, 'no'),
(3, 'micaela', 'mica', 'mica2', 'mica@gmail.com', '$2y$10$xKOh6ABKRcaxAbZrnU.6meZNq1gOtl6TJOewBFJVCTK1eMST2N2fO', 0, 'no'),
(4, 'natalia', 'micaela', 'natalia_123', 'natalia@gmail.com', '$2y$10$rBIzphmcBKnaLPUnC8hwYeSbh7MvzfERKhUOj28IE5ph6ueRFpexm', 0, 'no'),
(5, 'natalia2', 'romero', 'natalia2', 'natalia2@gmail.com', '$2y$10$aQlvi8hKxtZ6169/IuYDHO4OA1ho179YyilJY4aSU.VTTddVoBZWu', 0, 'no'),
(6, 'natalia', '1234', 'natalia1234', 'natalia1234@gmail.com', '$2y$10$VePrxI2kdDO.ECunEEq7B.ceZqETqELfQycEyZPeYpmo8DjjMdkVu', 0, 'no'),
(7, 'nataliaaa', 'naa', 'nataliaa123', 'nataliaa@gmail.com', '$2y$10$7tiocQLmwQloQYVXimmKpOjmiFLQxjLmjVmt7Gwy8Z3ROKlB0sMIO', 0, 'no'),
(9, 'sdbgh', 'sdgkl', 'swdfhyj', 'aswg@gmail.com', '$2y$10$LTqH4QCvezhFk0ZdVW61TOyrBnquRukoeQG2oGmybKjm03rtuk1Wa', 0, 'no'),
(10, 'juana', 'perez', 'juana', 'juana@gmail.com', '$2y$10$napI8dSnp3qoTuXFOkJuOe7INwqyQH7Lm2EGUS6yHeRvFD73u17HW', 1, 'no'),
(11, 'natalia', 'micaela', 'natalia', 'natalia9@gmail.com', '$2y$10$A6xysCv2KWbCi3TpCUX2CurzD0Ond3m5QgNAvGZEhB..Evl1bxtPS', 2, 'no'),
(12, 'natalia', 'romero', 'natalia15', 'natalia15@gmail.com', '$2y$10$FYvOt4p8TyuvYHv6LaUOsuBhv/y5u2ClME0YbsA1le/KK4DNpxtT2', 2, 'no');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id_perfiles`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `promociones`
--
ALTER TABLE `promociones`
  ADD PRIMARY KEY (`promociones_1`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `perfil_id` (`perfil_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id_perfiles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `promociones`
--
ALTER TABLE `promociones`
  MODIFY `promociones_1` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
