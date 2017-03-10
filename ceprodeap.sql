-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 09-03-2017 a las 20:35:02
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

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
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id` int(11) NOT NULL,
  `numero_actividad` int(11) DEFAULT NULL,
  `tipo_actividad` varchar(255) DEFAULT NULL,
  `nombre` varchar(500) DEFAULT NULL,
  `docente` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `centro_academico` varchar(255) DEFAULT NULL,
  `duracion` varchar(255) DEFAULT NULL,
  `lapso` varchar(255) DEFAULT NULL,
  `organizacion_provinencia` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`id`, `numero_actividad`, `tipo_actividad`, `nombre`, `docente`, `area`, `centro_academico`, `duracion`, `lapso`, `organizacion_provinencia`) VALUES
(1, 4672, 'Seminario', 'la modernizacion del control fiscal y la auditoria de estado, aporte de las tecnologias de informacion y comunicacion', 'jorge molero, olinda josefina vasquez ramon, milton jose chavez, jhon robert monrroy', 'control fiscal', 'centro academico de caracas', '16 horas', 'del 14 al 15 de mayo de 2008', 'contraloria general de la republica bolivariana de venezuela'),
(2, 4552, 'Curso', 'sistema de control interno en las organizaciones publicas', 'jorge molero', 'administracion y finanzas', 'centro academico de caracas', '24 horas', 'del 12 al 14 de diciembre de 2007', 'contraloria general de la republica bolivariana de venezuela');

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
  `contenido` varchar(10000) DEFAULT NULL,
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
(1, 'Jornada: Gesti&oacute;n Tributaria De Empresas ', 'Aprende las competencias que debe tener todo gerente del &aacute;rea de impuestos a fin de desarrollar el proceso de planificaci&oacute;n tributaria', '3393_gestin_tributaria_de_th.jpg', '3339sixsigma.jpg', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Conozca lo que implica desarrollar una efectiva planificación fiscal en su empresa</span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Objetivo General:</span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Presentar las competencias que debe tener todo gerente del área de impuestos a fin de desarrollar el proceso de planificación tributaria que permita a la empresa prever el cumplimiento legal y minimizar los posibles riesgos en materia tributaria</span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">&nbsp;</span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Objetivos Específicos:</span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">1.- Elaborar un plan de acción que le permita a la empresa cumplir a cabalidad con los entes gubernamentales recaudadores</span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">2.- Desarrollar estrategias que permitan aprovechar, disminuir y compensar los tributos que generan un impacto significativo en el flujo de dinero de la empresa</span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">3.- Conocer los aspectos legales que permiten al contribuyente defenderse ante las actuaciones de la Administración Tributaria</span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Contenido Programático</span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">1.- La Gerencia Tributaria y la Responsabilidad Fiscal&nbsp;</span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">2.- Reconociendo las Leyes Impositivas que impactan la gestión tributaria&nbsp;</span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">3.- El Calendario de Obligaciones Tributarias</span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">4.- El Código Orgánico Tributario: La Relación Jurídico Tributaria</span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">5.- La Planificación Fiscal y su importancia</span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">6.- El Balanced ScoreCard como herramienta de Gestión Tributaria</span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">7.- Evaluando mi entorno tributario: La matriz de riesgos tributarios&nbsp;</span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8.- Indicadores de Gestión en materia tributaria</span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">9.- ¿Qué debo hacer Evadir, Eludir o Cumplir?&nbsp;</span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">10.- Estrategias gerenciales ante la presión tributaria</span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">11.- Consultas y Jurisprudencia en materia tributaria</span></font></div>\r\n                        <div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">12.- Reparos Fiscales y Recursos Tributarios</span></font></div>', 'Salones Imperial, Zona Industrial Carabobo, 9na Transversal, detrás del C.C. Ara, Salones Imperial (Valencia - Edo. Carabobo)', 'Lunes 03 de Octubre de 2016', '8 horas académicas ( 9:00 am a 4:00 pm)', 'Lcdo. Carlos José Gamero', 'Consultor y Conferencista Internacional en las áreas de Administración, Normas Internacionales de Información Financiera (NIIF), Análisis Financiero, Tributos, Procesos de Negocio y Liderazgo - Certificación Internacional de Formación Profesional de Coaching con PNL (Coach Profesional - Practicante en PNL) - Contador Público Certificado en Normas Internacionales de Información Financiera - Especialista en Gerencia Fiscal, Gerencia de Procesos y Finanzas Corporativas (IESA) - Certificado Internacional por Tablero de Comando en la Metodología Balanced Score Card e Indicadores de Gestión / Más de 5.000 horas de formación para profesionales de diversas áreas de negocio.', '0241 838 80 05', '0241 832 45 83', '0414 - 403 9050', 'mercadeo@gerenciales.com', 'Lunes a Viernes, 8 am a 5:00 pm, Horario Corrido.', 'Los Certificados seran avalados por la empresa <b>Consiguetodo C.A.</b> que es\r\n                            una empresa inscrita en el INCE bajo el <b>Nº 529480</b>, y registrada en el\r\n                            Ministerio del Poder Popular para la Educación bajo el <b>Nº PR-0190-08</b>', 'Preventa', 'Bs. 25.000,00', 'Válido hasta el 25 de Septiembre', 'Normal', 'Bs. 26.000,00', 'Válido desde el 26 de Septiembre hasta el 02 de Octubre', 'Día del Evento', 'Bs. 27.000,00', '(Previa Reservación)', 'Carta de Compromiso', 'Bs. 30.000,00', 'Para empresas que cancelen después del evento. Promociones NO APLICAN.', ' <li>Material de Apoyo</li>\r\n                                <li>Tarjeta de Membresía</li>\r\n                                <li>Refrigerios</li>\r\n                                <li>Certificado</li>\r\n                                <li>Hologram Sticker 3D (Validación de Certificado)</li>'),
(2, 'MESA DE TRABAJO: ETAX 2.0: Despeje dudas de la plataforma tributaria (ayudas de expertos)', 'Despeja las dudas y cuestionamientos en cuanto al uso de la plataforma y conoce el manejo de la cuenta corriente como forma para detectar omisiones e inexactitudes en el cumplimiento tributario.', '3393_gestin_tributaria_de_th.jpg', '3339sixsigma.jpg', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> Objetivo generales</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> 1.       Despejar las dudas y cuestionamientos en cuanto al uso de la plataforma en la subida de peticiones declaraciones e informes.<br></span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> 2.       Conocer el manejo de la cuenta corriente como forma para detectar omisiones e inexactitudes en el cumplimiento tributario.</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> 3.       Facilitar la verificaci&oacuten interna de los usuarios para evitar situaciones conflictivas con la administraci&oacuten tributaria.</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> Objetivos especiales</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> 1.       Conocer los procedimientos de acceso y posterior env&iacuteo de declaraciones y los principales problemas en materia de formato, periodicidad y fecha de cumplimiento.</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> 2.       Preparar los archivos soportes en Excel y texto para grabar los informes y poder ser subidos a la plataforma.</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> 3.       Generaci&oacuten precisa de paz y salvos, certificaciones de operaciones exentas, tasa &uacutenicas y de no contribuyente. Y precisar cu&aacuteles son los pre-requisitos para su obtenci&oacuten r&aacutepida</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> 4.       Definir algunos otros problemas y pasos alternativos que surgen producto de la interacci&oacuten entre el usuario y la plataforma en cuanto al RUC, consultas, ITBMS e inmuebles.</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> TEMARIO </span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> 1.       Acceso a opciones restringidas a NIT.</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> a.       Actualizaci&oacuten de correo electr&oacutenico</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> b.      Llegada tard&iacutea del correo de autorizaci&oacuten de la DGI</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> c.       Olvido del NIT o del correo electr&oacutenico</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> d.      Renovaci&oacuten del NIT en forma regular</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> 2.       M&oacutedulo de declaraciones e informes</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> a.       Problemas de obtenci&oacuten de paz y salvo</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> b.      Principales motivos de rechazo de certificaciones</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> c.       Dificultades en la generaci&oacuten de declaraciones.</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> d.      &iquestD&oacutende est&aacuten los anexos para llenar declaraciones de renta, ITBMS y dem&aacutes?</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> e.      &iquestC&oacutemo confeccionar el archivo de Excel para informes: compras y de sueldos?</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> 3.       M&oacutedulo de Registro &Uacutenico de Contribuyentes</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> a.       Situaciones conflictivas en el llenado de la solicitud del RUC</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> b.      Efectos de los campos obligatorios y no obligatorios del RUC</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> i.      Datos generales</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> ii.      Ubicaci&oacuten</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> iii.      Establecimientos</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> iv.      Obligaciones</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> v.      Terceros Vinculados</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> vi.      Otras condiciones</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> vii.      Contratos con la naci&oacuten</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> c.       Suspensi&oacuten y cancelaci&oacuten de Obligaciones</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> 4.       Consultas</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> a.       Recuperaci&oacuten de los certificados de recepci&oacuten de declaraciones e informes enviados por la plataforma y anteriormente</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> b.      Visualizaci&oacuten de la cuenta corriente</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> c.       Efectos en la visualizaci&oacuten del buz&oacuten electr&oacutenico</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> d.      Errores en presentaciones y pagos</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> 5.       ITBMS</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> a.       Visualizaci&oacuten de retenciones</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> b.      Consecuencias de la no retenci&oacuten y de la no aplicaci&oacuten del cr&eacutedito por retenci&oacuten.</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> 6.       Inmuebles</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> a.       Problemas en la obtenci&oacuten del NIT</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> b.      Errores en la obtenci&oacuten del hist&oacuterico de las fincas.</span></font></div>\r\n<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"> c.       Dificultades en la presentaci&oacuten y pago del 106 y 107 de ITBI y Ganancias de capital    respectivamente.</span></font></div>\r\n', 'Hotel Clarion Victoria, V&iacutea Veneto, Calle D, El Cangrejo Panam&aacute', '07/09/2016', '8:30 am a 1:30 pm', 'EDGAR AUGUSTO CAMARENA GONZ&Aacute;LEZ', 'Licenciatura en Derecho, Universidad Latina de Panam&aacute (candidato a tesis de grado). Maestr&iacutea en Tributaci&oacuten, Universidad Especializada del Contador P&uacuteblico Autorizados de Panam&aacute, junio de 2007 Postgrado con Especializaci&oacuten en Tributaci&oacuten. Universidad Especializada del Contador P&uacuteblico Autorizados de Panam&aacute, junio de 2005. Postgrado en Auditor&iacutea de Sistemas en la Universidad Tecnol&oacutegica de Panam&aacute, abril de 1998 Licenciado en Contabilidad, Universidad de Panam&aacute, 1996 Licencia de Contador P&uacuteblico Autorizado No.4568 Bachiller en Comercio Bilingue. Instituto Panamericano 1985. Universidad Latina de Panam&aacute: Profesor de licenciatura y Profesor en el Centro de Postgrados, Maestr&iacuteas y Doctorados (Desde mayo de 1999 a la fecha) / Universidad Interamericana de Panam&aacute: Profesor de maestr&iacutea en el Centro Interamericano de Postgrados / PROFESIONAL En: GRUPO MERCON - Gerente de Impuestos. / SITEL - Gerente Tributario para Latinoam&eacuterica /COPA AIRLINES - Gerente de Impuestos Corporativos / BRINKS - Gerente de Finanzas/ THYSSENKRUPP ELEVADORES, S.A. - Gerente Administrativo y de Contabilidad / WURTH CENTROAMERICA - Director Financiero para Centroam&eacuterica. / Entre Otros.', '(507) 398 50 84', '(507) 398 50 92', NULL, NULL, NULL, 'Los Certificados seran avalados por la empresa Consiguetodo C.A. que es una empresa inscrita en el INCE bajo el N? 529480, y registrada en el Ministerio del Poder Popular para la Educaci?n bajo el N? PR-0190-08', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<li>Material de Apoyo</li>\r\n<li>Tarjeta de Membre&iacutesa</li>\r\n<li> Coffee Break</li>\r\n<li>Certificado</li>\r\n<li> Hologram Sticker 3D (Validaci&oacuten de Certificado)</li>\r\n');

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
(1, 'Conferencia Vivencial', 'gold', 'Conferencia Vivencial: Secretarias Asistentes y Recepcionistas - Conoce y aplica herramientas de coaching,Reconoce tus competencias en tu gesti&oacute;n secretarial ejecutiva y Aplica t&eacute;cnicas que te permitan planificar y organizar de una manera m&aacute;s efectiva y eficiente tu labor secretarial', '22-01-2017', 'Secretarias Asistentes y Recepcionistas'),
(2, 'Seminario', 'red', 'MESA DE TRABAJO: ETAX 2.0', '07/09/2016', 'MESA DE TRABAJO: ETAX 2.0: Despeje dudas de la plataforma tributaria (ayudas de expertos)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `cedula` int(11) DEFAULT NULL,
  `nombre` varchar(300) DEFAULT NULL,
  `apellido` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `cedula`, `nombre`, `apellido`) VALUES
(1, 7990146, 'surelia mercedes', 'salazar marcano'),
(2, 24995059, 'luis enriquez', 'rodriguez carvajal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_has_actividad`
--

CREATE TABLE `usuario_has_actividad` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_actividad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario_has_actividad`
--

INSERT INTO `usuario_has_actividad` (`id`, `id_usuario`, `id_actividad`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `actividades_id_uindex` (`id`);

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
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuarios_id_uindex` (`id`);

--
-- Indices de la tabla `usuario_has_actividad`
--
ALTER TABLE `usuario_has_actividad`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_has_actividad_id_uindex` (`id`),
  ADD KEY `usuario_has_actividad_usuarios_id_fk` (`id_usuario`),
  ADD KEY `usuario_has_actividad_actividades_id_fk` (`id_actividad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `eventodetalle`
--
ALTER TABLE `eventodetalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `eventoslistado`
--
ALTER TABLE `eventoslistado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuario_has_actividad`
--
ALTER TABLE `usuario_has_actividad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario_has_actividad`
--
ALTER TABLE `usuario_has_actividad`
  ADD CONSTRAINT `usuario_has_actividad_actividades_id_fk` FOREIGN KEY (`id_actividad`) REFERENCES `actividades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_has_actividad_usuarios_id_fk` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
