-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-09-2021 a las 18:26:22
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `beaversys_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_opciones`
--

CREATE TABLE `menu_opciones` (
  `id_opcion` int(5) NOT NULL,
  `orden` int(5) NOT NULL,
  `opcion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `icono` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `menu_opciones`
--

INSERT INTO `menu_opciones` (`id_opcion`, `orden`, `opcion`, `icono`, `descripcion`, `activo`) VALUES
(1, 1, 'Personal', 'fas fa-users', 'Edición de datos, Incidencias', 1),
(2, 2, 'Reportes', 'fas fa-chart-bar', 'Reportes varios', 1),
(3, 5, 'Administrador', 'fas fa-cogs', 'Usuarios & Permisos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos_menu`
--

CREATE TABLE `permisos_menu` (
  `id_usuario` int(11) NOT NULL,
  `id_opcion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `permisos_menu`
--

INSERT INTO `permisos_menu` (`id_usuario`, `id_opcion`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `permisos_usuarios`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `permisos_usuarios` (
`id_usuario` int(11)
,`id_opcion` int(5)
,`orden` int(5)
,`opcion` varchar(50)
,`icono` varchar(50)
,`activo` tinyint(1)
,`descripcion` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `submenu_opciones`
--

CREATE TABLE `submenu_opciones` (
  `id_opcion` int(5) NOT NULL,
  `orden_submenu` int(5) NOT NULL,
  `opcion_submenu` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `ruta_submenu` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `icono_submenu` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `activo_submenu` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `submenu_opciones`
--

INSERT INTO `submenu_opciones` (`id_opcion`, `orden_submenu`, `opcion_submenu`, `ruta_submenu`, `icono_submenu`, `activo_submenu`) VALUES
(1, 0, 'Nuevo registro', 'personal_add', 'fas fa-arrow-alt-circle-right', 1),
(1, 1, 'Registrados', 'personal_regs', 'fas fa-arrow-alt-circle-right', 1),
(2, 0, 'Incidencias', 'reporte_grupos', 'fas fa-arrow-alt-circle-right', 1),
(3, 1, 'Usuarios & Permisos', 'usuarios', 'fas fa-arrow-alt-circle-right', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_user` int(11) NOT NULL,
  `nombre` varchar(110) DEFAULT NULL,
  `correo` varchar(70) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_user`, `nombre`, `correo`, `password`, `estado`) VALUES
(1, 'PAULO DANIEL VAZQUEZ MORA', 'daniel.vazquez@utpuebla.edu.mx', '$2y$10$UkOPjnYi1DSskmMYijE/JeZrvOCpyHjsHnKR96STU3YIfC/UJiZ7y', NULL),
(2, 'Juan El Kastor', 'UTP0000000@alumno.utpuebla.edu.mx', '$2y$10$VXvu7o6JhpPJTZP3sRUzKeye2FbKRs0xQBFYAwO5p/Vv3ZZcmadVq', 1);

-- --------------------------------------------------------

--
-- Estructura para la vista `permisos_usuarios`
--
DROP TABLE IF EXISTS `permisos_usuarios`;

CREATE VIEW `permisos_usuarios`  AS  select `pm`.`id_usuario` AS `id_usuario`,`mo`.`id_opcion` AS `id_opcion`,`mo`.`orden` AS `orden`,`mo`.`opcion` AS `opcion`,`mo`.`icono` AS `icono`,`mo`.`activo` AS `activo`,`mo`.`descripcion` AS `descripcion` from (`permisos_menu` `pm` join `menu_opciones` `mo` on(`pm`.`id_opcion` = `mo`.`id_opcion`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `menu_opciones`
--
ALTER TABLE `menu_opciones`
  ADD PRIMARY KEY (`id_opcion`);

--
-- Indices de la tabla `permisos_menu`
--
ALTER TABLE `permisos_menu`
  ADD PRIMARY KEY (`id_usuario`,`id_opcion`),
  ADD KEY `fk_permisos_menu` (`id_opcion`);

--
-- Indices de la tabla `submenu_opciones`
--
ALTER TABLE `submenu_opciones`
  ADD PRIMARY KEY (`id_opcion`,`orden_submenu`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `menu_opciones`
--
ALTER TABLE `menu_opciones`
  MODIFY `id_opcion` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `permisos_menu`
--
ALTER TABLE `permisos_menu`
  ADD CONSTRAINT `fk_permisos_menu` FOREIGN KEY (`id_opcion`) REFERENCES `menu_opciones` (`id_opcion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_permisos_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `submenu_opciones`
--
ALTER TABLE `submenu_opciones`
  ADD CONSTRAINT `fk_menu_submenu_opciones` FOREIGN KEY (`id_opcion`) REFERENCES `menu_opciones` (`id_opcion`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
