-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-09-2016 a las 05:02:36
-- Versión del servidor: 10.0.17-MariaDB
-- Versión de PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ceprodeap`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventodetalle`
--

CREATE TABLE `eventodetalle` (
  `id` int(11) NOT NULL,
  `titulo` varchar(300) DEFAULT NULL,
  `subtitulo` varchar(600) DEFAULT NULL,
  `imagenPequena` varchar(100) DEFAULT NULL,
  `imagenGrande` varchar(100) DEFAULT NULL,
  `contenido` varchar(7000) DEFAULT NULL,
  `lugar` varchar(300) DEFAULT NULL,
  `fechaEvento` varchar(100) DEFAULT NULL,
  `horaEvento` varchar(100) DEFAULT NULL,
  `nombreFacilitador` varchar(100) DEFAULT NULL,
  `informacionFacilitador` varchar(3000) DEFAULT NULL,
  `telefonoMaster` varchar(100) DEFAULT NULL,
  `telefonoFax` varchar(100) DEFAULT NULL,
  `telefonoCelular` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `horarioAtencionTelefonica` varchar(100) DEFAULT NULL,
  `informacionCertificados` varchar(1000) DEFAULT NULL,
  `precioPreventaNombre` varchar(100) DEFAULT NULL,
  `precioPreventaMonto` varchar(100) DEFAULT NULL,
  `precioPreventaDescripcion` varchar(300) DEFAULT NULL,
  `precioNormalNombre` varchar(100) DEFAULT NULL,
  `precioNormalMonto` varchar(100) DEFAULT NULL,
  `precioNormalDescripcion` varchar(300) DEFAULT NULL,
  `precioDiaEventoNombre` varchar(100) DEFAULT NULL,
  `precioDiaEventoMonto` varchar(100) DEFAULT NULL,
  `precioDiaEventoDescripcion` varchar(300) DEFAULT NULL,
  `precioCartaCompromisoNombre` varchar(100) DEFAULT NULL,
  `precioCartaCompromisoMonto` varchar(100) DEFAULT NULL,
  `precioCartaCompromisoDescripcion` varchar(300) DEFAULT NULL,
  `incluyeEvento` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventodetalle`
--

INSERT INTO `eventodetalle` (`id`, `titulo`, `subtitulo`, `imagenPequena`, `imagenGrande`, `contenido`, `lugar`, `fechaEvento`, `horaEvento`, `nombreFacilitador`, `informacionFacilitador`, `telefonoMaster`, `telefonoFax`, `telefonoCelular`, `email`, `horarioAtencionTelefonica`, `informacionCertificados`, `precioPreventaNombre`, `precioPreventaMonto`, `precioPreventaDescripcion`, `precioNormalNombre`, `precioNormalMonto`, `precioNormalDescripcion`, `precioDiaEventoNombre`, `precioDiaEventoMonto`, `precioDiaEventoDescripcion`, `precioCartaCompromisoNombre`, `precioCartaCompromisoMonto`, `precioCartaCompromisoDescripcion`, `incluyeEvento`) VALUES
(1, 'Jornada: Gesti&oacute;n Tributaria De Empresas ', 'Aprende las competencias que debe tener todo gerente del &aacute;rea de impuestos a fin de desarrollar el proceso de planificaci&oacute;n tributaria', '3393_gestin_tributaria_de_th.jpg', '3339sixsigma.jpg', '<div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">Conozca lo que implica desarrollar una efectiva planificación fiscal en su empresa</span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;"><br></span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">Objetivo General:</span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;"><br></span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">Presentar las competencias que debe tener todo gerente del área de impuestos a fin de desarrollar el proceso de planificación tributaria que permita a la empresa prever el cumplimiento legal y minimizar los posibles riesgos en materia tributaria</span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">&nbsp;</span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">Objetivos Específicos:</span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;"><br></span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">1.- Elaborar un plan de acción que le permita a la empresa cumplir a cabalidad con los entes gubernamentales recaudadores</span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;"><br></span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">2.- Desarrollar estrategias que permitan aprovechar, disminuir y compensar los tributos que generan un impacto significativo en el flujo de dinero de la empresa</span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;"><br></span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">3.- Conocer los aspectos legales que permiten al contribuyente defenderse ante las actuaciones de la Administración Tributaria</span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;"><br></span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">Contenido Programático</span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;"><br></span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">1.- La Gerencia Tributaria y la Responsabilidad Fiscal&nbsp;</span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">2.- Reconociendo las Leyes Impositivas que impactan la gestión tributaria&nbsp;</span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">3.- El Calendario de Obligaciones Tributarias</span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">4.- El Código Orgánico Tributario: La Relación Jurídico Tributaria</span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">5.- La Planificación Fiscal y su importancia</span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">6.- El Balanced ScoreCard como herramienta de Gestión Tributaria</span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">7.- Evaluando mi entorno tributario: La matriz de riesgos tributarios&nbsp;</span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">8.- Indicadores de Gestión en materia tributaria</span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">9.- ¿Qué debo hacer Evadir, Eludir o Cumplir?&nbsp;</span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">10.- Estrategias gerenciales ante la presión tributaria</span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">11.- Consultas y Jurisprudencia en materia tributaria</span></font></div>\r\n                        <div><font face="Arial, Verdana"><span style="font-size: 13.3333px;">12.- Reparos Fiscales y Recursos Tributarios</span></font></div>', 'Salones Imperial, Zona Industrial Carabobo, 9na Transversal, detrás del C.C. Ara, Salones Imperial (Valencia - Edo. Carabobo)', 'Lunes 03 de Octubre de 2016', '8 horas académicas ( 9:00 am a 4:00 pm)', 'Lcdo. Carlos José Gamero', 'Consultor y Conferencista Internacional en las áreas de Administración, Normas Internacionales de Información Financiera (NIIF), Análisis Financiero, Tributos, Procesos de Negocio y Liderazgo - Certificación Internacional de Formación Profesional de Coaching con PNL (Coach Profesional - Practicante en PNL) - Contador Público Certificado en Normas Internacionales de Información Financiera - Especialista en Gerencia Fiscal, Gerencia de Procesos y Finanzas Corporativas (IESA) - Certificado Internacional por Tablero de Comando en la Metodología Balanced Score Card e Indicadores de Gestión / Más de 5.000 horas de formación para profesionales de diversas áreas de negocio.', '0241 838 80 05', '0241 832 45 83', '0414 - 403 9050', 'mercadeo@gerenciales.com', 'Lunes a Viernes, 8 am a 5:00 pm, Horario Corrido.', 'Los Certificados seran avalados por la empresa <b>Consiguetodo C.A.</b> que es\r\n                            una empresa inscrita en el INCE bajo el <b>Nº 529480</b>, y registrada en el\r\n                            Ministerio del Poder Popular para la Educación bajo el <b>Nº PR-0190-08</b>', 'Preventa', 'Bs. 25.000,00', 'Válido hasta el 25 de Septiembre', 'Normal', 'Bs. 26.000,00', 'Válido desde el 26 de Septiembre hasta el 02 de Octubre', 'Día del Evento', 'Bs. 27.000,00', '(Previa Reservación)', 'Carta de Compromiso', 'Bs. 30.000,00', 'Para empresas que cancelen después del evento. Promociones NO APLICAN.', ' <li>Material de Apoyo</li>\r\n                                <li>Tarjeta de Membresía</li>\r\n                                <li>Refrigerios</li>\r\n                                <li>Certificado</li>\r\n                                <li>Hologram Sticker 3D (Validación de Certificado)</li>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventoslistado`
--

CREATE TABLE `eventoslistado` (
  `id` int(11) NOT NULL,
  `tipoEvento` varchar(100) NOT NULL,
  `colorEvento` varchar(100) DEFAULT NULL,
  `nombreEvento` varchar(500) NOT NULL,
  `fecha` varchar(100) NOT NULL,
  `nombreEventoCorto` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventoslistado`
--

INSERT INTO `eventoslistado` (`id`, `tipoEvento`, `colorEvento`, `nombreEvento`, `fecha`, `nombreEventoCorto`) VALUES
(1, 'Conferencia Vivencial', 'gold', 'Conferencia Vivencial: Secretarias Asistentes y Recepcionistas - Conoce y aplica herramientas de coaching,Reconoce tus competencias en tu gesti&oacute;n secretarial ejecutiva y Aplica t&eacute;cnicas que te permitan planificar y organizar de una manera m&aacute;s efectiva y eficiente tu labor secretarial', '22-01-2017', 'Secretarias Asistentes y Recepcionistas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventodetalle`
--
ALTER TABLE `eventodetalle`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `eventoDetalle_id_uindex` (`id`);

--
-- Indices de la tabla `eventoslistado`
--
ALTER TABLE `eventoslistado`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventodetalle`
--
ALTER TABLE `eventodetalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `eventoslistado`
--
ALTER TABLE `eventoslistado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
