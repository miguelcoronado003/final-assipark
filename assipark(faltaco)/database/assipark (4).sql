-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 15-11-2022 a las 02:05:20
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
-- Base de datos: `assipark`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apartamento`
--

CREATE TABLE `apartamento` (
  `IdApartamento` int(11) NOT NULL,
  `IdNumeroApartamento` int(11) NOT NULL,
  `IdBloque` int(11) NOT NULL,
  `estadoApartamento` int(11) NOT NULL,
  `Created_at` timestamp NULL DEFAULT NULL,
  `Updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloque`
--

CREATE TABLE `bloque` (
  `IdBloque` int(11) NOT NULL,
  `Bloque` char(30) NOT NULL,
  `Created_at` timestamp NULL DEFAULT NULL,
  `Updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `color`
--

CREATE TABLE `color` (
  `IdColor` int(11) NOT NULL,
  `Color` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `color`
--

INSERT INTO `color` (`IdColor`, `Color`) VALUES
(1, 'Negro'),
(2, 'Gris'),
(3, 'Azul'),
(4, 'Blanco'),
(5, 'Verde'),
(6, 'Amarillo'),
(7, 'Rojo'),
(8, 'Morado'),
(9, 'Rosa'),
(10, 'Naranja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_asignaciones`
--

CREATE TABLE `detalle_asignaciones` (
  `IdApartamento` int(11) NOT NULL,
  `IdVehiculo` int(11) NOT NULL,
  `IdParqueadero` int(11) NOT NULL,
  `Inicio` datetime DEFAULT NULL,
  `Fin` datetime DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT NULL,
  `Updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `IdEvento` int(11) NOT NULL,
  `title` varchar(99) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `inicio` datetime DEFAULT NULL,
  `final` datetime DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT NULL,
  `Updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `IdMarca` int(11) NOT NULL,
  `Marca` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`IdMarca`, `Marca`) VALUES
(1, 'Ford'),
(2, 'Chevrolet'),
(3, 'Audi'),
(4, 'Bentley'),
(5, 'Hyundai'),
(6, 'Bmw'),
(7, 'Mazda'),
(8, 'Honda'),
(9, 'Lamborgini'),
(10, 'Ferrari'),
(11, 'Alfa Romeo'),
(12, 'Mercedes-Benz'),
(13, 'Toyota'),
(14, 'Suzuki'),
(15, 'Volkswagen'),
(16, 'Volvo'),
(17, 'Peugeot'),
(18, 'Porsche'),
(19, 'Citroen'),
(20, 'Fiat'),
(21, 'Nissan'),
(22, 'Kia'),
(23, 'Foton'),
(24, 'Renault');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `numero_apartamento`
--

CREATE TABLE `numero_apartamento` (
  `IdNumeroApartamento` int(11) NOT NULL,
  `NumeroApartamento` int(11) NOT NULL,
  `Created_at` timestamp NULL DEFAULT NULL,
  `Updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parqueadero`
--

CREATE TABLE `parqueadero` (
  `IdParqueadero` int(11) NOT NULL,
  `IdTipoParqueadero` int(11) NOT NULL,
  `tamaño` varchar(20) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `estadoParqueadero` varchar(50) DEFAULT NULL,
  `ocupado` int(11) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT NULL,
  `Updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parqueadero_visitas`
--

CREATE TABLE `parqueadero_visitas` (
  `IdParqueaderoVisitas` int(11) NOT NULL,
  `IdTipoParqueadero` int(11) NOT NULL,
  `tamaño` varchar(20) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `estadoParqueadero` varchar(50) DEFAULT NULL,
  `Ocupado` varchar(20) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT NULL,
  `Updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `parqueadero_visitas`
--

INSERT INTO `parqueadero_visitas` (`IdParqueaderoVisitas`, `IdTipoParqueadero`, `tamaño`, `descripcion`, `estadoParqueadero`, `Ocupado`, `Created_at`, `Updated_at`) VALUES
(1, 3, 'comun', 'Torre 1-Bloque 1-Espacio A', 'Funcionamiento', 'Si', '2022-11-14 21:25:20', NULL),
(2, 3, 'comun', 'Torre 1-Bloque 1-Espacio B', 'Funcionamiento', 'Si', '2022-11-14 21:25:20', NULL),
(3, 3, 'comun', 'Torre 1-Bloque 1-Espacio C', 'Funcionamiento', 'No', '2022-11-14 21:25:20', NULL),
(4, 3, 'comun', 'Torre 1-Bloque 1-Espacio D', 'Funcionamiento', 'No', '2022-11-14 21:25:20', NULL),
(5, 3, 'comun', 'Torre 1-Bloque 1-Espacio F', 'Funcionamiento', 'No', '2022-11-14 21:25:20', NULL),
(6, 3, 'comun', 'Torre 1-Bloque 1-Espacio E', 'Funcionamiento', 'No', '2022-11-14 21:25:20', NULL),
(7, 3, 'comun', 'Torre 1-Bloque 1-Espacio G', 'Funcionamiento', 'No', '2022-11-14 21:25:20', NULL),
(8, 3, 'comun', 'Torre 1-Bloque 1-Espacio H', 'Funcionamiento', 'No', '2022-11-14 21:25:20', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `residente`
--

CREATE TABLE `residente` (
  `IdResidente` int(11) NOT NULL,
  `IdTipoIdentificacion` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Sexo` enum('Masculino','Femenino') NOT NULL,
  `Telefono` varchar(13) DEFAULT NULL,
  `Celular1` varchar(13) DEFAULT NULL,
  `Celular2` varchar(13) DEFAULT NULL,
  `Email` varchar(99) DEFAULT NULL,
  `IdApartamento` int(11) NOT NULL,
  `EstadoResidente` int(11) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT NULL,
  `Updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_identificacion`
--

CREATE TABLE `tipo_identificacion` (
  `IdTipoIdentificacion` int(11) NOT NULL,
  `Identificacion` varchar(20) NOT NULL,
  `Created_at` timestamp NULL DEFAULT NULL,
  `Updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_identificacion`
--

INSERT INTO `tipo_identificacion` (`IdTipoIdentificacion`, `Identificacion`, `Created_at`, `Updated_at`) VALUES
(1, 'Cedula', '2022-11-07 22:21:03', '2022-11-07 22:21:03'),
(3, 'Tarjeta de identidad', '2022-11-14 02:33:54', '2022-11-14 02:33:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_parqueadero`
--

CREATE TABLE `tipo_parqueadero` (
  `IdTipoParqueadero` int(11) NOT NULL,
  `TipoParqueadero` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_parqueadero`
--

INSERT INTO `tipo_parqueadero` (`IdTipoParqueadero`, `TipoParqueadero`) VALUES
(1, 'Uso privado'),
(2, 'Comunes'),
(3, 'Visitantes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `IdTipoUsuario` int(11) NOT NULL,
  `TipoUsuario` varchar(30) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT NULL,
  `Updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`IdTipoUsuario`, `TipoUsuario`, `Created_at`, `Updated_at`) VALUES
(1, 'juan', '2022-11-07 22:21:03', '2022-11-07 22:21:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IdUsuario` int(11) NOT NULL,
  `IdTipoUsuario` int(11) NOT NULL,
  `IdTipoIdentificacion` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Sexo` enum('Masculino','Femenino') DEFAULT NULL,
  `Direccion` varchar(90) NOT NULL,
  `Telefono` varchar(13) DEFAULT NULL,
  `celular1` varchar(13) DEFAULT NULL,
  `email` varchar(99) NOT NULL,
  `VerificacionEmail` datetime DEFAULT NULL,
  `contraseña` varchar(99) NOT NULL,
  `RecordarToken` varchar(99) DEFAULT NULL,
  `EstadoUsuario` int(11) NOT NULL,
  `Created_at` timestamp NULL DEFAULT NULL,
  `Updated_at` timestamp NULL DEFAULT NULL,
  `numeroIdentificacion` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IdUsuario`, `IdTipoUsuario`, `IdTipoIdentificacion`, `Nombre`, `Apellido`, `Sexo`, `Direccion`, `Telefono`, `celular1`, `email`, `VerificacionEmail`, `contraseña`, `RecordarToken`, `EstadoUsuario`, `Created_at`, `Updated_at`, `numeroIdentificacion`) VALUES
(1, 1, 1, 'juan_manuel', 'berdugo', 'Masculino', '767788776', '7899', '78990', 'fvgfu', '2022-11-07 17:21:03', '1234567', 'eretrt', 0, NULL, NULL, 1034657605);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `IdVehiculo` int(11) NOT NULL,
  `IdMarca` int(11) NOT NULL,
  `IdColor` int(11) NOT NULL,
  `Referencia` varchar(50) NOT NULL,
  `Created_at` timestamp NULL DEFAULT NULL,
  `Updated_at` timestamp NULL DEFAULT NULL,
  `propietario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`IdVehiculo`, `IdMarca`, `IdColor`, `Referencia`, `Created_at`, `Updated_at`, `propietario`) VALUES
(0, 10, 7, 'fdserfr', NULL, NULL, ''),
(23434, 20, 4, 'sdfds', NULL, NULL, ''),
(234454, 1, 3, 'afwwet', NULL, NULL, ''),
(1234567, 8, 4, 'dfgdfgf', NULL, NULL, ''),
(2344545, 1, 3, 'afwwet', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visita`
--

CREATE TABLE `visita` (
  `IdVehiculo` int(11) NOT NULL,
  `IdParqueaderoVisitas` int(11) NOT NULL,
  `FechaHoraInicioVisita` datetime DEFAULT NULL,
  `FechaHoraFinVisita` datetime DEFAULT NULL,
  `IdVisitante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `visita`
--

INSERT INTO `visita` (`IdVehiculo`, `IdParqueaderoVisitas`, `FechaHoraInicioVisita`, `FechaHoraFinVisita`, `IdVisitante`) VALUES
(23434, 1, NULL, NULL, 1),
(1234567, 2, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitante`
--

CREATE TABLE `visitante` (
  `IdVisitante` int(11) NOT NULL,
  `IdTipoIdentificacion` int(11) NOT NULL,
  `numeroDocumento` varchar(13) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `celular1` varchar(13) DEFAULT NULL,
  `celular2` varchar(13) DEFAULT NULL,
  `estadoVisitante` int(11) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT NULL,
  `Updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `visitante`
--

INSERT INTO `visitante` (`IdVisitante`, `IdTipoIdentificacion`, `numeroDocumento`, `Nombre`, `Apellido`, `celular1`, `celular2`, `estadoVisitante`, `Created_at`, `Updated_at`) VALUES
(1, 1, '1231323', 'juan', 'berdugo', '3004437320', NULL, NULL, NULL, NULL),
(2, 1, '12345678', 'Miguel', 'Montaño', '12345567', NULL, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `apartamento`
--
ALTER TABLE `apartamento`
  ADD PRIMARY KEY (`IdApartamento`),
  ADD KEY `IdBloque` (`IdBloque`),
  ADD KEY `IdNumeroApartamento` (`IdNumeroApartamento`);

--
-- Indices de la tabla `bloque`
--
ALTER TABLE `bloque`
  ADD PRIMARY KEY (`IdBloque`);

--
-- Indices de la tabla `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`IdColor`);

--
-- Indices de la tabla `detalle_asignaciones`
--
ALTER TABLE `detalle_asignaciones`
  ADD KEY `IdApartamento1` (`IdApartamento`),
  ADD KEY `IdVehiculo1` (`IdVehiculo`),
  ADD KEY `IdParqueadero` (`IdParqueadero`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`IdEvento`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`IdMarca`);

--
-- Indices de la tabla `numero_apartamento`
--
ALTER TABLE `numero_apartamento`
  ADD PRIMARY KEY (`IdNumeroApartamento`);

--
-- Indices de la tabla `parqueadero`
--
ALTER TABLE `parqueadero`
  ADD PRIMARY KEY (`IdParqueadero`),
  ADD KEY `IdTipoParqueadero1` (`IdTipoParqueadero`);

--
-- Indices de la tabla `parqueadero_visitas`
--
ALTER TABLE `parqueadero_visitas`
  ADD PRIMARY KEY (`IdParqueaderoVisitas`),
  ADD KEY `IdTipoParqueadero` (`IdTipoParqueadero`);

--
-- Indices de la tabla `residente`
--
ALTER TABLE `residente`
  ADD PRIMARY KEY (`IdResidente`),
  ADD KEY `IdTipoIdentificacion1` (`IdTipoIdentificacion`),
  ADD KEY `IdApartamento2` (`IdApartamento`);

--
-- Indices de la tabla `tipo_identificacion`
--
ALTER TABLE `tipo_identificacion`
  ADD PRIMARY KEY (`IdTipoIdentificacion`);

--
-- Indices de la tabla `tipo_parqueadero`
--
ALTER TABLE `tipo_parqueadero`
  ADD PRIMARY KEY (`IdTipoParqueadero`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`IdTipoUsuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IdUsuario`),
  ADD KEY `IdTipoIdentificacion2` (`IdTipoIdentificacion`),
  ADD KEY `IdTipoUsuario` (`IdTipoUsuario`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`IdVehiculo`),
  ADD KEY `IdMarca` (`IdMarca`),
  ADD KEY `IdColor` (`IdColor`);

--
-- Indices de la tabla `visita`
--
ALTER TABLE `visita`
  ADD KEY `IdParqueaderoVisitas` (`IdParqueaderoVisitas`),
  ADD KEY `IdVehiculo` (`IdVehiculo`),
  ADD KEY `IdVisitante` (`IdVisitante`);

--
-- Indices de la tabla `visitante`
--
ALTER TABLE `visitante`
  ADD PRIMARY KEY (`IdVisitante`),
  ADD KEY `IdTipoIdentificacion` (`IdTipoIdentificacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `visitante`
--
ALTER TABLE `visitante`
  MODIFY `IdVisitante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `apartamento`
--
ALTER TABLE `apartamento`
  ADD CONSTRAINT `IdBloque` FOREIGN KEY (`IdBloque`) REFERENCES `bloque` (`IdBloque`),
  ADD CONSTRAINT `IdNumeroApartamento` FOREIGN KEY (`IdNumeroApartamento`) REFERENCES `numero_apartamento` (`IdNumeroApartamento`);

--
-- Filtros para la tabla `detalle_asignaciones`
--
ALTER TABLE `detalle_asignaciones`
  ADD CONSTRAINT `IdApartamento1` FOREIGN KEY (`IdApartamento`) REFERENCES `apartamento` (`IdApartamento`),
  ADD CONSTRAINT `IdParqueadero` FOREIGN KEY (`IdParqueadero`) REFERENCES `parqueadero` (`IdParqueadero`),
  ADD CONSTRAINT `IdVehiculo1` FOREIGN KEY (`IdVehiculo`) REFERENCES `vehiculo` (`IdVehiculo`);

--
-- Filtros para la tabla `parqueadero`
--
ALTER TABLE `parqueadero`
  ADD CONSTRAINT `IdTipoParqueadero1` FOREIGN KEY (`IdTipoParqueadero`) REFERENCES `tipo_parqueadero` (`IdTipoParqueadero`);

--
-- Filtros para la tabla `parqueadero_visitas`
--
ALTER TABLE `parqueadero_visitas`
  ADD CONSTRAINT `IdTipoParqueadero` FOREIGN KEY (`IdTipoParqueadero`) REFERENCES `tipo_parqueadero` (`IdTipoParqueadero`);

--
-- Filtros para la tabla `residente`
--
ALTER TABLE `residente`
  ADD CONSTRAINT `IdApartamento2` FOREIGN KEY (`IdApartamento`) REFERENCES `apartamento` (`IdApartamento`),
  ADD CONSTRAINT `IdTipoIdentificacion1` FOREIGN KEY (`IdTipoIdentificacion`) REFERENCES `tipo_identificacion` (`IdTipoIdentificacion`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `IdTipoIdentificacion2` FOREIGN KEY (`IdTipoIdentificacion`) REFERENCES `tipo_identificacion` (`IdTipoIdentificacion`),
  ADD CONSTRAINT `IdTipoUsuario` FOREIGN KEY (`IdTipoUsuario`) REFERENCES `tipo_usuario` (`IdTipoUsuario`);

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `IdColor` FOREIGN KEY (`IdColor`) REFERENCES `color` (`IdColor`),
  ADD CONSTRAINT `IdMarca` FOREIGN KEY (`IdMarca`) REFERENCES `marca` (`IdMarca`);

--
-- Filtros para la tabla `visita`
--
ALTER TABLE `visita`
  ADD CONSTRAINT `IdParqueaderoVisitas` FOREIGN KEY (`IdParqueaderoVisitas`) REFERENCES `parqueadero_visitas` (`IdParqueaderoVisitas`),
  ADD CONSTRAINT `IdVehiculo` FOREIGN KEY (`IdVehiculo`) REFERENCES `vehiculo` (`IdVehiculo`),
  ADD CONSTRAINT `visita_ibfk_1` FOREIGN KEY (`IdVisitante`) REFERENCES `visitante` (`IdVisitante`);

--
-- Filtros para la tabla `visitante`
--
ALTER TABLE `visitante`
  ADD CONSTRAINT `IdTipoIdentificacion` FOREIGN KEY (`IdTipoIdentificacion`) REFERENCES `tipo_identificacion` (`IdTipoIdentificacion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
