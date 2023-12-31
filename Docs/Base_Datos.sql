-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2023 a las 21:52:52
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sexto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `malla_curricular`
--

CREATE TABLE `malla_curricular` (
  `Id_Materias` int(11) NOT NULL,
  `Semestre` varchar(255) NOT NULL,
  `Primera_Materia` varchar(255) NOT NULL,
  `Segunda_Materia` varchar(255) NOT NULL,
  `Tercera_Materia` varchar(255) NOT NULL,
  `Cuarta_Materia` varchar(255) NOT NULL,
  `Quinta_Materia` varchar(255) NOT NULL,
  `Sexta_Materia` varchar(255) NOT NULL,
  `Septima_Materia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `malla_curricular`
--

INSERT INTO `malla_curricular` (`Id_Materias`, `Semestre`, `Primera_Materia`, `Segunda_Materia`, `Tercera_Materia`, `Cuarta_Materia`, `Quinta_Materia`, `Sexta_Materia`, `Septima_Materia`) VALUES
(1, 'Sexto', 'Inteligencia de Negocios', 'Inteligencia Artificial', 'Aplicaciones Web', 'Diseño de Arquitectura', 'Proyectos Informaticos', 'Gestion Empresarial', 'Null'),
(2, 'Septimo', 'Gobierno de Tenologia', 'Construccionde Documentos', 'Gestion dela configuracion', 'Aplicaciones moviles', 'Unidad de integracion curricular', 'Seguridad informatica', 'Practicas de servicios'),
(3, 'Octavo', 'UNO', 'DOS', 'TRES', 'CUATRO', 'CINCO', 'SEIS', 'SIETE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `UsuarioId` int(11) NOT NULL,
  `Cedula` varchar(17) NOT NULL,
  `Nombres` varchar(100) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Telefono` varchar(17) NOT NULL,
  `Correo` varchar(150) NOT NULL,
  `Contrasenia` text NOT NULL,
  `Rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`UsuarioId`, `Cedula`, `Nombres`, `Apellidos`, `Telefono`, `Correo`, `Contrasenia`, `Rol`) VALUES
(1, '08803564775', 'Josue Camelo', 'Rivera Caicedo', '0985246751', 'correo@gmail.com', '12345', 'Administrador'),
(2, '000803563', 'Dc', 'Torres', '0967201167', 'vendedor@gmail.com', '123', 'Vendedor'),
(3, 'dsfsd', 'Dc', 'Torres', '0967201167', 'vendedor2@gmail.com', '123', 'Cliente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `malla_curricular`
--
ALTER TABLE `malla_curricular`
  ADD PRIMARY KEY (`Id_Materias`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`UsuarioId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `malla_curricular`
--
ALTER TABLE `malla_curricular`
  MODIFY `Id_Materias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `UsuarioId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
