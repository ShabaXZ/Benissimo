-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2018 a las 05:56:48
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `benissimo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dirige_i`
--

CREATE TABLE `dirige_i` (
  `Rut_Per` int(11) NOT NULL,
  `Usuario` varchar(30) NOT NULL,
  `Id_i` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dirige_p1`
--

CREATE TABLE `dirige_p1` (
  `Rut_Per` int(11) NOT NULL,
  `Usuario` varchar(30) NOT NULL,
  `Id_p1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dirige_p2`
--

CREATE TABLE `dirige_p2` (
  `Rut_Per` int(11) NOT NULL,
  `Usuario` varchar(30) NOT NULL,
  `Id_p2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forman`
--

CREATE TABLE `forman` (
  `CBarra_i` bigint(20) NOT NULL,
  `CBarra_p1` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingrediente`
--

CREATE TABLE `ingrediente` (
  `CBarra_i` bigint(20) NOT NULL,
  `Nombre_i` varchar(30) DEFAULT NULL,
  `Marca_i` varchar(30) DEFAULT NULL,
  `Tipo_i` varchar(30) DEFAULT NULL,
  `Perecibilidad_i` int(11) DEFAULT NULL,
  `PrecioC_i` int(11) DEFAULT NULL,
  `Stock_i` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ingrediente`
--

INSERT INTO `ingrediente` (`CBarra_i`, `Nombre_i`, `Marca_i`, `Tipo_i`, `Perecibilidad_i`, `PrecioC_i`, `Stock_i`) VALUES
(222, 'queso', 'colun', 'lacteo ', 1, 800, 10),
(1111, 'galleta', 'costa', 'galleta', 1, 300, 200),
(123124124, 'Mantequilla', 'soprole', 'lacteo', 1, 300, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lote_i`
--

CREATE TABLE `lote_i` (
  `Id_i` int(11) NOT NULL,
  `FElab_i` date DEFAULT NULL,
  `FVenc_i` date DEFAULT NULL,
  `Cantidad_i` int(11) DEFAULT NULL,
  `CBarra_i` bigint(20) DEFAULT NULL,
  `Proveedor_i` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lote_i`
--

INSERT INTO `lote_i` (`Id_i`, `FElab_i`, `FVenc_i`, `Cantidad_i`, `CBarra_i`, `Proveedor_i`) VALUES
(2, '2018-04-18', '2019-05-06', 8, 1111, 'carozzi'),
(3, '2018-04-18', '2019-05-06', 12, 1111, 'ramon'),
(5, '2018-04-18', '2019-05-06', 8, 222, 'carossi'),
(13, '2018-04-18', '2019-05-06', 8, 1111, 'carossi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lote_p1`
--

CREATE TABLE `lote_p1` (
  `Id_p1` int(11) NOT NULL,
  `CBarra_p1` bigint(20) DEFAULT NULL,
  `FElab_p1` date DEFAULT NULL,
  `FVenc_p1` date DEFAULT NULL,
  `Cantidad_i` int(11) DEFAULT NULL,
  `Proveedor_p1` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lote_p2`
--

CREATE TABLE `lote_p2` (
  `Id_p2` int(11) NOT NULL,
  `CBarra_p2` bigint(20) DEFAULT NULL,
  `FElab_p2` date DEFAULT NULL,
  `FVenc_p2` date DEFAULT NULL,
  `Cantidad_p2` int(11) DEFAULT NULL,
  `Proveedor_p2` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participa1`
--

CREATE TABLE `participa1` (
  `Cantidad_1` int(11) DEFAULT NULL,
  `CBarra_p1` bigint(20) NOT NULL,
  `N_Boleta` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participa2`
--

CREATE TABLE `participa2` (
  `Cantidad_2` int(11) DEFAULT NULL,
  `CBarra_p2` bigint(20) NOT NULL,
  `N_Boleta` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_administrativo`
--

CREATE TABLE `personal_administrativo` (
  `Rut_Per` int(11) NOT NULL,
  `Usuario` varchar(30) NOT NULL,
  `Pass` varchar(30) DEFAULT NULL,
  `Nombre_Per` varchar(30) DEFAULT NULL,
  `Direccion_Per` varchar(30) DEFAULT NULL,
  `Telefono_Per` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personal_administrativo`
--

INSERT INTO `personal_administrativo` (`Rut_Per`, `Usuario`, `Pass`, `Nombre_Per`, `Direccion_Per`, `Telefono_Per`) VALUES
(196542647, 'Seba', 'admin', 'Sebastian Barria', 'Los Carrera', NULL),
(1876527561, 'admin', 'admin', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_de_venta_inmediata`
--

CREATE TABLE `producto_de_venta_inmediata` (
  `CBarra_p2` bigint(20) NOT NULL,
  `Nombre_p2` varchar(30) DEFAULT NULL,
  `Marca_p2` varchar(30) DEFAULT NULL,
  `Tipo_p2` varchar(30) DEFAULT NULL,
  `Perecibilidad_p2` int(11) DEFAULT NULL,
  `PrecioC_p2` int(11) DEFAULT NULL,
  `PrecioV_p2` int(11) DEFAULT NULL,
  `Stock_p2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto_de_venta_inmediata`
--

INSERT INTO `producto_de_venta_inmediata` (`CBarra_p2`, `Nombre_p2`, `Marca_p2`, `Tipo_p2`, `Perecibilidad_p2`, `PrecioC_p2`, `PrecioV_p2`, `Stock_p2`) VALUES
(12313, 'leche', 'colun', 'lacteo', 1, 90, 10000, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_elaboracion_propia`
--

CREATE TABLE `producto_elaboracion_propia` (
  `CBarra_p1` bigint(20) NOT NULL,
  `Nombre_p1` varchar(30) DEFAULT NULL,
  `Tipo_p1` varchar(30) DEFAULT NULL,
  `PrecioV_p1` int(11) DEFAULT NULL,
  `Stock_p1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto_elaboracion_propia`
--

INSERT INTO `producto_elaboracion_propia` (`CBarra_p1`, `Nombre_p1`, `Tipo_p1`, `PrecioV_p1`, `Stock_p1`) VALUES
(11111444, 'torta hojas', 'pastel', 12000, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `N_Boleta` bigint(20) NOT NULL,
  `Monto` bigint(20) DEFAULT NULL,
  `fecha_V` date DEFAULT NULL,
  `Hora_V` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`N_Boleta`, `Monto`, `fecha_V`, `Hora_V`) VALUES
(1111111, 123124, '2018-06-12', NULL),
(12312412412, 1231414123, '2018-06-12', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dirige_i`
--
ALTER TABLE `dirige_i`
  ADD PRIMARY KEY (`Rut_Per`,`Usuario`,`Id_i`),
  ADD KEY `Id_i` (`Id_i`);

--
-- Indices de la tabla `dirige_p1`
--
ALTER TABLE `dirige_p1`
  ADD PRIMARY KEY (`Rut_Per`,`Usuario`,`Id_p1`),
  ADD KEY `Id_p1` (`Id_p1`);

--
-- Indices de la tabla `dirige_p2`
--
ALTER TABLE `dirige_p2`
  ADD PRIMARY KEY (`Rut_Per`,`Usuario`,`Id_p2`),
  ADD KEY `Id_p2` (`Id_p2`);

--
-- Indices de la tabla `forman`
--
ALTER TABLE `forman`
  ADD PRIMARY KEY (`CBarra_i`,`CBarra_p1`),
  ADD KEY `CBarra_p1` (`CBarra_p1`);

--
-- Indices de la tabla `ingrediente`
--
ALTER TABLE `ingrediente`
  ADD PRIMARY KEY (`CBarra_i`);

--
-- Indices de la tabla `lote_i`
--
ALTER TABLE `lote_i`
  ADD PRIMARY KEY (`Id_i`),
  ADD KEY `CBarra_i` (`CBarra_i`);

--
-- Indices de la tabla `lote_p1`
--
ALTER TABLE `lote_p1`
  ADD PRIMARY KEY (`Id_p1`),
  ADD KEY `CBarra_p1` (`CBarra_p1`);

--
-- Indices de la tabla `lote_p2`
--
ALTER TABLE `lote_p2`
  ADD PRIMARY KEY (`Id_p2`),
  ADD KEY `CBarra_p2` (`CBarra_p2`);

--
-- Indices de la tabla `participa1`
--
ALTER TABLE `participa1`
  ADD PRIMARY KEY (`CBarra_p1`,`N_Boleta`),
  ADD KEY `N_Boleta` (`N_Boleta`);

--
-- Indices de la tabla `participa2`
--
ALTER TABLE `participa2`
  ADD PRIMARY KEY (`CBarra_p2`,`N_Boleta`),
  ADD KEY `N_Boleta` (`N_Boleta`);

--
-- Indices de la tabla `personal_administrativo`
--
ALTER TABLE `personal_administrativo`
  ADD PRIMARY KEY (`Rut_Per`,`Usuario`);

--
-- Indices de la tabla `producto_de_venta_inmediata`
--
ALTER TABLE `producto_de_venta_inmediata`
  ADD PRIMARY KEY (`CBarra_p2`);

--
-- Indices de la tabla `producto_elaboracion_propia`
--
ALTER TABLE `producto_elaboracion_propia`
  ADD PRIMARY KEY (`CBarra_p1`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`N_Boleta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dirige_i`
--
ALTER TABLE `dirige_i`
  MODIFY `Id_i` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dirige_p1`
--
ALTER TABLE `dirige_p1`
  MODIFY `Id_p1` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dirige_p2`
--
ALTER TABLE `dirige_p2`
  MODIFY `Id_p2` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lote_i`
--
ALTER TABLE `lote_i`
  MODIFY `Id_i` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `lote_p1`
--
ALTER TABLE `lote_p1`
  MODIFY `Id_p1` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lote_p2`
--
ALTER TABLE `lote_p2`
  MODIFY `Id_p2` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `dirige_i`
--
ALTER TABLE `dirige_i`
  ADD CONSTRAINT `dirige_i_ibfk_1` FOREIGN KEY (`Rut_Per`,`Usuario`) REFERENCES `personal_administrativo` (`Rut_Per`, `Usuario`),
  ADD CONSTRAINT `dirige_i_ibfk_2` FOREIGN KEY (`Id_i`) REFERENCES `lote_i` (`Id_i`);

--
-- Filtros para la tabla `dirige_p1`
--
ALTER TABLE `dirige_p1`
  ADD CONSTRAINT `dirige_p1_ibfk_1` FOREIGN KEY (`Rut_Per`,`Usuario`) REFERENCES `personal_administrativo` (`Rut_Per`, `Usuario`),
  ADD CONSTRAINT `dirige_p1_ibfk_2` FOREIGN KEY (`Id_p1`) REFERENCES `lote_p1` (`Id_p1`);

--
-- Filtros para la tabla `dirige_p2`
--
ALTER TABLE `dirige_p2`
  ADD CONSTRAINT `dirige_p2_ibfk_1` FOREIGN KEY (`Rut_Per`,`Usuario`) REFERENCES `personal_administrativo` (`Rut_Per`, `Usuario`),
  ADD CONSTRAINT `dirige_p2_ibfk_2` FOREIGN KEY (`Id_p2`) REFERENCES `lote_p2` (`Id_p2`);

--
-- Filtros para la tabla `forman`
--
ALTER TABLE `forman`
  ADD CONSTRAINT `forman_ibfk_1` FOREIGN KEY (`CBarra_i`) REFERENCES `ingrediente` (`CBarra_i`),
  ADD CONSTRAINT `forman_ibfk_2` FOREIGN KEY (`CBarra_p1`) REFERENCES `producto_elaboracion_propia` (`CBarra_p1`);

--
-- Filtros para la tabla `lote_i`
--
ALTER TABLE `lote_i`
  ADD CONSTRAINT `lote_i_ibfk_1` FOREIGN KEY (`CBarra_i`) REFERENCES `ingrediente` (`CBarra_i`);

--
-- Filtros para la tabla `lote_p1`
--
ALTER TABLE `lote_p1`
  ADD CONSTRAINT `lote_p1_ibfk_1` FOREIGN KEY (`CBarra_p1`) REFERENCES `producto_elaboracion_propia` (`CBarra_p1`);

--
-- Filtros para la tabla `lote_p2`
--
ALTER TABLE `lote_p2`
  ADD CONSTRAINT `lote_p2_ibfk_1` FOREIGN KEY (`CBarra_p2`) REFERENCES `producto_de_venta_inmediata` (`CBarra_p2`);

--
-- Filtros para la tabla `participa1`
--
ALTER TABLE `participa1`
  ADD CONSTRAINT `participa1_ibfk_1` FOREIGN KEY (`CBarra_p1`) REFERENCES `producto_elaboracion_propia` (`CBarra_p1`),
  ADD CONSTRAINT `participa1_ibfk_2` FOREIGN KEY (`N_Boleta`) REFERENCES `venta` (`N_Boleta`);

--
-- Filtros para la tabla `participa2`
--
ALTER TABLE `participa2`
  ADD CONSTRAINT `participa2_ibfk_1` FOREIGN KEY (`CBarra_p2`) REFERENCES `producto_de_venta_inmediata` (`CBarra_p2`),
  ADD CONSTRAINT `participa2_ibfk_2` FOREIGN KEY (`N_Boleta`) REFERENCES `venta` (`N_Boleta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
