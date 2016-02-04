-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 21-09-2015 a las 11:32:10
-- Versión del servidor: 5.5.44-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ius_doctrina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_assets`
--

CREATE TABLE IF NOT EXISTS `jo_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas al conjunto padre.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas conjunto lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas conjunto rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'Nivel de la caché en el árbol anidado.',
  `name` varchar(50) NOT NULL COMMENT 'Nombre único para el activo.\n',
  `title` varchar(100) NOT NULL COMMENT 'Título descriptivo para el activo.',
  `rules` varchar(5120) NOT NULL COMMENT 'Control de acceso codificado de JSON.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=120 ;

--
-- Volcado de datos para la tabla `jo_assets`
--

INSERT INTO `jo_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 237, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 18, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 19, 174, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 175, 176, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 177, 178, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 179, 180, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 181, 182, 1, 'com_login', 'com_login', '{}'),
(13, 1, 183, 184, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 185, 186, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 187, 188, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 189, 190, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 191, 192, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 193, 194, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 195, 198, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 199, 200, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 201, 202, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 203, 204, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 205, 206, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 207, 210, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 211, 224, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 225, 226, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 20, 23, 2, 'com_content.category.2', 'Sin categoría', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Sin categoría', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Sin categoría', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 196, 197, 2, 'com_newsfeeds.category.5', 'Sin categoría', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 212, 213, 2, 'com_weblinks.category.6', 'Sin categoría', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 208, 209, 1, 'com_users.notes.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 227, 228, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 229, 230, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 231, 234, 1, 'com_djimageslider', 'com_djimageslider', '{}'),
(36, 1, 235, 236, 1, 'com_jce', 'jce', '{}'),
(37, 8, 24, 173, 2, 'com_content.category.8', 'Menú Principal', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(38, 37, 25, 132, 3, 'com_content.category.9', 'Articulos', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(39, 37, 133, 150, 3, 'com_content.category.10', 'Cátedras', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(40, 37, 151, 152, 3, 'com_content.category.11', 'Seminario Comercio Internacional', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(41, 37, 153, 154, 3, 'com_content.category.12', 'GLIN UCR', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(42, 37, 155, 156, 3, 'com_content.article.1', 'Inicio', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(43, 35, 232, 233, 2, 'com_djimageslider.category.13', 'Noticias Principal', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(44, 7, 16, 17, 2, 'com_contact.category.14', 'Contáctenos', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(45, 37, 157, 158, 3, 'com_content.article.2', 'Consejo Editorial', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(46, 37, 159, 160, 3, 'com_content.article.3', 'Requisitos y formatos para publicar', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(47, 52, 35, 36, 5, 'com_content.article.4', ' Solidarismo: nuevo referente "laboral" del libre comercio', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(48, 52, 31, 32, 5, 'com_content.article.5', 'El poder disciplinario de las municipalidades', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(49, 52, 27, 28, 5, 'com_content.article.6', 'La escena y el escenario del crimen', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(50, 52, 29, 30, 5, 'com_content.article.7', 'Algunos problemas para una efectiva justicia ambiental en Costa Rica', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(51, 52, 33, 34, 5, 'com_content.article.8', '¿Puede el fideicomitente (en el fideicomiso de garantía) ser un tercero, ajeno a la operación de cré', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(52, 38, 26, 37, 4, 'com_content.category.15', 'Volumen No. I', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(53, 38, 38, 49, 4, 'com_content.category.16', 'Volumen No. II', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(54, 38, 50, 61, 4, 'com_content.category.17', 'Volumen No. III', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(55, 38, 62, 75, 4, 'com_content.category.18', 'Volumen No. IV', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(56, 38, 104, 117, 4, 'com_content.category.19', 'Volumen No. V', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(57, 38, 76, 89, 4, 'com_content.category.20', 'Volumen No. VI', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(58, 38, 90, 103, 4, 'com_content.category.21', 'Volumen No. VII', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(59, 38, 118, 129, 4, 'com_content.category.22', 'Volumen No. VIII', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(60, 37, 161, 170, 3, 'com_content.category.23', 'Enlaces', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(61, 60, 162, 163, 4, 'com_content.category.24', 'Boletines', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(62, 60, 164, 165, 4, 'com_content.category.25', 'Bibliotecas jurídicas', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(63, 60, 166, 167, 4, 'com_content.category.26', 'Bibliotecas', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(64, 60, 168, 169, 4, 'com_content.category.27', 'Normativa, Jurisprudencia y Doctrina', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(65, 39, 134, 137, 4, 'com_content.category.28', 'Jurisprudencia Catedra Constitucional', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(66, 39, 138, 141, 4, 'com_content.category.29', 'Derecho Constitucional Prof. Marvin Carvajal', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(67, 39, 142, 145, 4, 'com_content.category.30', 'Contratos Comerciales Internacionales Prof. Victor Pérez', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(68, 39, 146, 149, 4, 'com_content.category.31', 'Reglas para el Servicio', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(69, 25, 214, 215, 2, 'com_weblinks.category.32', 'Enlaces', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(70, 25, 216, 217, 2, 'com_weblinks.category.33', 'Boletines', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(71, 25, 218, 219, 2, 'com_weblinks.category.34', 'Bibliotecas jurídicas', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(72, 25, 222, 223, 2, 'com_weblinks.category.35', 'Bibliotecas', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(73, 25, 220, 221, 2, 'com_weblinks.category.36', 'Normativa, Jurisprudencia y Doctrina', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(74, 53, 39, 40, 5, 'com_content.article.9', 'El Desarrollo Histórico-Legislativo Del Instituto De Avería Gruesa En La Lex Maritima', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(75, 53, 41, 42, 5, 'com_content.article.10', 'Siete Pecados Capitales en la Enseñanza Del Derecho', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(76, 54, 51, 52, 5, 'com_content.article.11', 'GLIN: UNA VENTANA INTERNACIONAL DE INFORMACION JURIDICA', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(77, 53, 43, 44, 5, 'com_content.article.12', 'Obligaciones Procter Rem y su Relación Jurídica Con Los Derechos Reales', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(78, 53, 45, 46, 5, 'com_content.article.13', 'De la Universidad de Santo Tomás a la Universidad de Costa Rica 165 años de Historia de la Facultad', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(79, 54, 53, 54, 5, 'com_content.article.14', 'ANALISIS SOBRE LA ACCION SUBROGATORIA COMO TUTELA DEL DERECHO DE CREDITO ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(80, 53, 47, 48, 5, 'com_content.article.15', 'Seguridad Ciudadana y Pevención del Delito', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(81, 54, 55, 56, 5, 'com_content.article.16', 'APORTE DE KANT AL CONCEPTO MODERNO DEL "ESTADO DE DERECHO" ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(82, 54, 57, 58, 5, 'com_content.article.17', '¿INMUNIDAD O IMPUNIDAD PARLAMENTARIA?', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(83, 54, 59, 60, 5, 'com_content.article.18', 'JUSTICIA MEDIATICA', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(84, 56, 105, 106, 5, 'com_content.article.19', 'Editorial', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(85, 56, 107, 108, 5, 'com_content.article.20', 'LA APLICACIÓN DE LA TEORÍA DE LA EXCESIVA ONEROSIDAD SOBREVINIENTE EN LOS CONTRATOS DE SUMINISTRO: A', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(86, 55, 63, 64, 5, 'com_content.article.21', 'EDITORIAL', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(87, 56, 109, 110, 5, 'com_content.article.22', '“REFLEXIONES EN TORNO A ALGUNOS PROBLEMAS SEMÁNTICO/INTERPRETATIVOS DE LOS DERECHOS HUMANOS (¿ES POS', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(88, 56, 111, 112, 5, 'com_content.article.23', 'ALGUNAS REFLEXIONES ALREDEDOR DEL MATRIMONIO CIVIL', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(89, 55, 67, 68, 5, 'com_content.article.24', 'LA SOCIEDAD ANÓNIMA NACIONAL O CONCESIONARIA REGULADA POR LA LEY GENERAL DE CONCESIÓN DE OBRAS PÚBLI', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(90, 55, 69, 70, 5, 'com_content.article.25', 'FALTA DE APTITUD DIFERENCIADORA COMO CAUSA DE DENEGACIÓN ABSOLUTA DE LA MARCA COMUNITARIA Y LA MARCA', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(91, 56, 115, 116, 5, 'com_content.article.26', 'EL RUFIÁN Y EL PROXENETA EN COSTA RICA', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(92, 55, 65, 66, 5, 'com_content.article.27', 'LOS PODERES EN MATERIA DE PROPIEDAD INTELECTUAL, IMPLICACIONES LA NATURALEZA JURIDICA DEL PROCEDIMIE', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(93, 56, 113, 114, 5, 'com_content.article.28', '"Yuxtaposición del Regionalismo y el Multilateralismo desde el punto de vista de los mecanismos de r', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(94, 55, 71, 72, 5, 'com_content.article.29', 'ALGUNAS REFLEXIONES SOBRE EL FIDEICOMISO HONORARIO: UN FIDEICOMISO SIN FIDEICOMISARIO', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(95, 55, 73, 74, 5, 'com_content.article.30', 'ALGUNAS OTRAS CUESTIONES EN TEMA DE COMPROMISOS Y DE CLAUSULAS COMPROMISORIAS', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(96, 57, 77, 78, 5, 'com_content.article.31', 'Editorial', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(97, 58, 91, 92, 5, 'com_content.article.32', 'EDITORIAL', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(98, 57, 79, 80, 5, 'com_content.article.33', 'Comentarios sobre los criterios objetivos de fiscalización en materia tributaria', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(99, 57, 81, 82, 5, 'com_content.article.34', 'El procedimiento electoral en España: Reforma de Ley Electoral de Castilla - La Mancha', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(100, 58, 93, 94, 5, 'com_content.article.35', 'SIMPLISMO JURÍDICO, ALGUNAS MANIFESTACIONES EN LA JURISDICCIÓN', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(101, 58, 95, 96, 5, 'com_content.article.36', 'PERSPECTIVA JURÍDICA DE LAS INUNDACIONES COMO HIPÓTESIS DE RESPONSABILIDAD ADMINISTRATIVA', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(102, 57, 83, 84, 5, 'com_content.article.37', 'Algunas consideraciones acerca de la discriminación laboral', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(103, 58, 97, 98, 5, 'com_content.article.38', 'NATURALEZA JURÍDICA DE LA “CONCILIACIÓN” ANTE EL TRIBUNAL AMBIENTAL ADMINISTRATIVO DE LA REPÚBLICA D', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(104, 58, 99, 100, 5, 'com_content.article.39', 'MEMORIAS IMPLANTADAS EN VÍCTIMAS DE DELITOS SEXUALES', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(105, 57, 85, 86, 5, 'com_content.article.40', 'El derecho constitucional al Trabajo', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(106, 58, 101, 102, 5, 'com_content.article.41', 'EL DESARROLLO DE MEGAPROYECTOS EN TERRITORIOS INDÍGENAS COSTARRICENSES', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(107, 57, 87, 88, 5, 'com_content.article.42', 'Justicia restaurativa y garantías en la justicia penal juvenil', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(108, 38, 130, 131, 4, 'com_content.category.37', 'Otros Documentos', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(109, 59, 119, 120, 5, 'com_content.article.43', 'Editorial', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(110, 59, 121, 122, 5, 'com_content.article.44', 'MEDIOS DE COMUNICACIÓN Y ESTADO DE DERECHO', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(111, 59, 123, 124, 5, 'com_content.article.45', 'DUALIDAD JURÍDICA Y POLÍTICA DEL SISTEMA ELECTRORAL', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(112, 59, 125, 126, 5, 'com_content.article.46', 'CRÓNICA DE INVESTIGACIÓN CLINICA EN SERES HUMANOS', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(113, 59, 127, 128, 5, 'com_content.article.47', 'EL ‘ESTADO DE NATURALEZA’ Y LOS FILÓSOFOS DEL DERECHO', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(114, 65, 135, 136, 5, 'com_content.article.48', 'Jurisprudencia Catedra Constitucional', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(115, 66, 139, 140, 5, 'com_content.article.49', 'Derecho constitucional', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(116, 67, 143, 144, 5, 'com_content.article.50', 'Contratos Comerciales', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(117, 68, 147, 148, 5, 'com_content.article.51', 'Reglas para el servicio', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(118, 37, 171, 172, 3, 'com_content.article.52', 'Noticias en Construcción', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(119, 27, 21, 22, 3, 'com_content.article.53', 'GLIN en Construcción', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_associations`
--

CREATE TABLE IF NOT EXISTS `jo_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_banners`
--

CREATE TABLE IF NOT EXISTS `jo_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_banner_clients`
--

CREATE TABLE IF NOT EXISTS `jo_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `jo_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_categories`
--

CREATE TABLE IF NOT EXISTS `jo_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK para la tabla de #__assets.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'La meta descripción de la página.',
  `metakey` varchar(1024) NOT NULL COMMENT 'Las palabras clave para la página.',
  `metadata` varchar(2048) NOT NULL COMMENT 'Propiedades de metadatos codificados JSON.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Volcado de datos para la tabla `jo_categories`
--

INSERT INTO `jo_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 73, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Sin categoría', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:26:37', 0, '0000-00-00 00:00:00', 0, '*'),
(3, 28, 1, 49, 50, 1, 'uncategorised', 'com_banners', 'Sin categoría', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 51, 52, 1, 'uncategorised', 'com_contact', 'Sin categoría', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*'),
(5, 30, 1, 53, 54, 1, 'uncategorised', 'com_newsfeeds', 'Sin categoría', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 55, 56, 1, 'uncategorised', 'com_weblinks', 'Sin categoría', 'uncategorised', '', '', 0, 30, '2013-05-22 18:10:48', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2010-06-28 13:28:33', 30, '2013-05-22 18:10:48', 0, '*'),
(7, 32, 1, 57, 58, 1, 'uncategorised', 'com_users', 'Sin categoría', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(8, 37, 1, 3, 48, 1, 'menu-principal', 'com_content', 'Menú Principal', 'menu-principal', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 20:11:49', 0, '0000-00-00 00:00:00', 0, '*'),
(9, 38, 8, 4, 23, 2, 'menu-principal/articulos', 'com_content', 'Articulos', 'articulos', '', '<p style="text-align: center;"><strong>Presione en cada título para accesar a cada edición de nuestro boletín infomativo.</strong></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 20:12:07', 30, '2013-05-22 22:24:57', 0, '*'),
(10, 39, 8, 24, 33, 2, 'menu-principal/catedras', 'com_content', 'Cátedras', 'catedras', '', '<p style="text-align: center;"><strong>Presione en cada título para accesar a la información disponible en cada cátedra.</strong></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 20:12:40', 30, '2013-05-22 22:26:01', 0, '*'),
(11, 40, 8, 34, 35, 2, 'menu-principal/seminario-comercio-internacional', 'com_content', 'Seminario Comercio Internacional', 'seminario-comercio-internacional', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 20:12:53', 0, '0000-00-00 00:00:00', 0, '*'),
(12, 41, 8, 36, 37, 2, 'menu-principal/glin-ucr', 'com_content', 'GLIN UCR', 'glin-ucr', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 20:13:07', 0, '0000-00-00 00:00:00', 0, '*'),
(13, 43, 1, 59, 60, 1, 'noticias-principal', 'com_djimageslider', 'Noticias Principal', 'noticias-principal', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 20:16:56', 0, '0000-00-00 00:00:00', 0, '*'),
(14, 44, 1, 61, 62, 1, 'contactenos', 'com_contact', 'Contáctenos', 'contactenos', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 20:50:17', 0, '0000-00-00 00:00:00', 0, '*'),
(15, 52, 9, 5, 6, 3, 'menu-principal/articulos/volumen-no-i', 'com_content', 'Volumen No. I', 'volumen-no-i', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 21:46:44', 0, '0000-00-00 00:00:00', 0, '*'),
(16, 53, 9, 7, 8, 3, 'menu-principal/articulos/volumen-no-ii', 'com_content', 'Volumen No. II', 'volumen-no-ii', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 21:46:53', 0, '0000-00-00 00:00:00', 0, '*'),
(17, 54, 9, 9, 10, 3, 'menu-principal/articulos/volumen-no-iii', 'com_content', 'Volumen No. III', 'volumen-no-iii', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 21:47:01', 0, '0000-00-00 00:00:00', 0, '*'),
(18, 55, 9, 11, 12, 3, 'menu-principal/articulos/volumen-no-iv', 'com_content', 'Volumen No. IV', 'volumen-no-iv', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 21:47:10', 0, '0000-00-00 00:00:00', 0, '*'),
(19, 56, 9, 13, 14, 3, 'menu-principal/articulos/volumen-no-v', 'com_content', 'Volumen No. V', 'volumen-no-v', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 21:47:18', 30, '2013-05-21 21:48:09', 0, '*'),
(20, 57, 9, 15, 16, 3, 'menu-principal/articulos/volumen-no-vi', 'com_content', 'Volumen No. VI', 'volumen-no-vi', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 21:47:38', 0, '0000-00-00 00:00:00', 0, '*'),
(21, 58, 9, 17, 18, 3, 'menu-principal/articulos/volumen-no-vii', 'com_content', 'Volumen No. VII', 'volumen-no-vii', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 21:47:48', 0, '0000-00-00 00:00:00', 0, '*'),
(22, 59, 9, 19, 20, 3, 'menu-principal/articulos/volumen-no-viii', 'com_content', 'Volumen No. VIII', 'volumen-no-viii', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 21:48:23', 30, '2013-05-22 16:12:11', 0, '*'),
(23, 60, 8, 38, 47, 2, 'menu-principal/enlaces', 'com_content', 'Enlaces', 'enlaces', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 22:02:05', 0, '0000-00-00 00:00:00', 0, '*'),
(24, 61, 23, 39, 40, 3, 'menu-principal/enlaces/boletines', 'com_content', 'Boletines', 'boletines', '', '<p><span class="st">Desde el menú superior de la administración, selecciona Componentes --&gt; <em>Enlaces</em> web --&gt; <em>Categorías</em> para acceder al Gestor de <em>categorías</em> para <em>enlaces</em> web.</span></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 22:02:24', 30, '2013-05-21 22:18:08', 0, '*'),
(25, 62, 23, 41, 42, 3, 'menu-principal/enlaces/bibliotecas-juridicas', 'com_content', 'Bibliotecas jurídicas', 'bibliotecas-juridicas', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 22:02:33', 0, '0000-00-00 00:00:00', 0, '*'),
(26, 63, 23, 43, 44, 3, 'menu-principal/enlaces/bibliotecas', 'com_content', 'Bibliotecas', 'bibliotecas', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 22:02:46', 0, '0000-00-00 00:00:00', 0, '*'),
(27, 64, 23, 45, 46, 3, 'menu-principal/enlaces/normativa-jurisprudencia-y-doctrina', 'com_content', 'Normativa, Jurisprudencia y Doctrina', 'normativa-jurisprudencia-y-doctrina', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 22:02:56', 0, '0000-00-00 00:00:00', 0, '*'),
(28, 65, 10, 25, 26, 3, 'menu-principal/catedras/jurisprudencia-catedra-constitucional', 'com_content', 'Jurisprudencia Catedra Constitucional', 'jurisprudencia-catedra-constitucional', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 22:11:48', 0, '0000-00-00 00:00:00', 0, '*'),
(29, 66, 10, 27, 28, 3, 'menu-principal/catedras/derecho-constitucional-prof-marvin-carvajal', 'com_content', 'Derecho Constitucional Prof. Marvin Carvajal', 'derecho-constitucional-prof-marvin-carvajal', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 22:12:02', 0, '0000-00-00 00:00:00', 0, '*'),
(30, 67, 10, 29, 30, 3, 'menu-principal/catedras/contratos-comerciales-internacionales-prof-victor-perez', 'com_content', 'Contratos Comerciales Internacionales Prof. Victor Pérez', 'contratos-comerciales-internacionales-prof-victor-perez', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 22:12:10', 0, '0000-00-00 00:00:00', 0, '*'),
(31, 68, 10, 31, 32, 3, 'menu-principal/catedras/reglas-para-el-servicio', 'com_content', 'Reglas para el Servicio', 'reglas-para-el-servicio', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 22:12:21', 0, '0000-00-00 00:00:00', 0, '*'),
(32, 69, 1, 63, 64, 1, 'enlaces', 'com_weblinks', 'Enlaces', 'enlaces', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 22:22:52', 30, '2013-05-22 17:51:36', 0, '*'),
(33, 70, 1, 65, 66, 1, 'boletines', 'com_weblinks', 'Boletines', 'boletines', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 22:23:04', 30, '2013-05-22 18:07:50', 0, '*'),
(34, 71, 1, 67, 68, 1, 'bibliotecas-juridicas', 'com_weblinks', 'Bibliotecas jurídicas', 'bibliotecas-juridicas', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 22:23:15', 30, '2013-05-22 18:08:11', 0, '*'),
(35, 72, 1, 71, 72, 1, 'bibliotecas', 'com_weblinks', 'Bibliotecas', 'bibliotecas', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 22:23:25', 30, '2013-05-22 18:08:55', 0, '*'),
(36, 73, 1, 69, 70, 1, 'normativa-jurisprudencia-y-doctrina', 'com_weblinks', 'Normativa, Jurisprudencia y Doctrina', 'normativa-jurisprudencia-y-doctrina', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-21 22:23:37', 30, '2013-05-22 18:08:30', 0, '*'),
(37, 108, 9, 21, 22, 3, 'menu-principal/articulos/otros-documentos', 'com_content', 'Otros Documentos', 'otros-documentos', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 30, '2013-05-22 15:38:50', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_contact_details`
--

CREATE TABLE IF NOT EXISTS `jo_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Establecer si el artículo aparece.',
  `xreference` varchar(50) NOT NULL COMMENT 'Una referencia para los vínculos a datos externos conjuntos.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `jo_contact_details`
--

INSERT INTO `jo_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 'Contáctenos', 'contactenos', '', 'San Pedro, San José, Costa Rica. Universidad de Costa Rica, Facultad de Derecho, Piso 6, Oficina #4, Informática Jurídica.', '', '', '', '', '2511-5862', '', '', '', NULL, 'informaticajuridica@ucr.ac.cr', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":null,"linkb_name":"","linkb":null,"linkc_name":"","linkc":null,"linkd_name":"","linkd":null,"linke_name":"","linke":"","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 14, 1, '', '', '', '', '', '*', '2013-05-21 20:51:02', 30, '', '2013-05-22 14:04:01', 30, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_content`
--

CREATE TABLE IF NOT EXISTS `jo_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK a la tabla de #__assets.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Establecer si el artículo aparece.',
  `language` char(7) NOT NULL COMMENT 'El código de idioma para el artículo.',
  `xreference` varchar(50) NOT NULL COMMENT 'Una referencia para los vínculos a datos externos conjuntos.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- Volcado de datos para la tabla `jo_content`
--

INSERT INTO `jo_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 42, 'Inicio', 'inicio', '', '<div style="text-align: justify; font-family: Sans-serif;">\r\n<p>Les presentamos el octavo número del Boletín Jurídico Virtual IUS DOCTRINA, esta vez con artículos inéditos en diversas áreas del derecho.</p>\r\n<p>El profesor Ronald Hidalgo Cuadra, nos envía un artículo titulado <span style="font-style: italic; font-weight: bold;">“La libertad para adquirir conocimiento: El caso de la investigación clínica en seres humanos”</span>, donde señala que la actividad científica se somete a la norma jurídica en situaciones de riesgo no aceptables, esto quiere decir que las normas emitidas por el gobierno relacionadas con la investigación en seres humanos son constitucionales, si tienen por finalidad la protección del paciente.</p>\r\n<p>Contaremos con la publicación de Andrei Cambronero Torres, sobre <span style="font-style: italic; font-weight: bold;">“Medios de comunicación y Estado de Derecho”</span> en el cual se refiere a que la información de los medios de comunicación tiene la capacidad de moldear el pensamiento de los receptores. Trata específicamente el caso de los ilícitos penales, en cuanto a la forma de presentar la noticia y su posible impacto.</p>\r\n<p>Mario Matarrita Arroyo se refiere a la <span style="font-style: italic; font-weight: bold;">"Dualidad Jurídica y Política del Sistema Electoral"</span>, valorando las modalidades de influencia, a nivel jurídico y político, que el Sistema Electoral ejerce sobre los procesos electivos contemporáneamente diseñados.</p>\r\n<p>Una vez más invitarlos a visitar nuestra página web <a href="http://derecho.co.cr/v2/ID/index.php?option=com_content&amp;view=frontpage&amp;Itemid=200001" target="_blank">www.iusdoctrina.ucr.ac.cr</a>, que ofrece la versión digital de nuestra revista y recordarles que pueden enviar sus ensayos, así como noticias relevantes de interés a la comunidad jurídica nacional.</p>\r\n<p>M.Sc. Anahí Fajardo Torres</p>\r\n<span style="font-style: italic; font-weight: bold;">Directora Revista Boletín Jurídico Ius Doctrina</span></div>', '', 1, 0, 0, 8, '2013-05-21 20:13:55', 30, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-21 20:13:55', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 3, '', '', 1, 252, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 45, 'Consejo Editorial', 'consejo-editorial', '', '<p style="text-align: center;"><em><span><em><span style="font-family: Arial; font-size: 11pt;">Dr. Daniel Gadea Nieto</span></em></span></em> </p>\r\n<p style="text-align: center;" align="center"><span><em><span style="font-family: Arial; font-size: 11pt;">Dr. Rafael González Ballar</span></em></span></p>\r\n<p style="text-align: center;" align="center"><span><em><span style="font-family: Arial; font-size: 11pt;">Dr.José Manuel Ríos Corbacho</span></em></span></p>\r\n<p style="text-align: center;" align="center"><span><em><span style="font-family: Arial; font-size: 11pt;">Dr. Álvaro Burgos Mata</span></em></span></p>\r\n<p style="text-align: center;" align="center"><span><em><span style="font-family: Arial; font-size: 11pt;">Msc. Iván Salas Leiton</span></em></span></p>\r\n<p style="text-align: center;" align="center"><span><em><span style="font-family: Arial; font-size: 11pt;">Licda. Ana Cristina Víquez Cerdas</span></em></span></p>\r\n<p style="text-align: center;" align="center"><span><em><span style="font-family: Arial; font-size: 11pt;">Licda. Anahí Fajardo Torres</span></em></span></p>\r\n<p style="text-align: center;" align="center"><span><em><span style="font-family: Arial; font-size: 11pt;">Lic. Gustavo González Solano</span></em></span></p>\r\n<p style="text-align: center;" align="center"><span><em><span style="font-family: Arial; font-size: 11pt;"> Dr. Javier Llobeth Rodríguez</span></em></span></p>\r\n<p style="text-align: center;" align="center"><span><em><span style="font-family: Arial; font-size: 11pt;">Dr. Alfredo Chirino Sánchez</span></em></span></p>\r\n<p style="text-align: center;" align="center"><span><em><span style="font-family: Arial; font-size: 11pt;">Dr. Fernando Bolaños Céspedes</span></em></span></p>\r\n<p style="text-align: center;" align="center"><span><em><span style="font-family: Arial; font-size: 11pt;">Dr. Vasco Torres de León</span></em></span></p>\r\n<p style="text-align: center;" align="center"><span><em><span style="font-family: Arial; font-size: 11pt;">Dra. Teresa Aguado</span></em></span></p>\r\n<p style="text-align: center;" align="center"><span><em><span style="font-family: Arial; font-size: 11pt;">Dr. José Luis Díez Ripollés</span></em></span></p>\r\n<p style="text-align: center;" align="center"><span><em><span style="font-family: Arial; font-size: 11pt;">Dr. Iñaki Rivera</span></em></span></p>\r\n<p style="text-align: center;" align="center"><span><em><span style="font-family: Arial; font-size: 11pt;">Dr. Juan Carlos Ferré Olivé</span></em></span></p>', '', 1, 0, 0, 8, '2013-05-21 20:59:07', 30, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-21 20:59:07', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 2, '', '', 1, 29, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 46, 'Requisitos y formatos para publicar', 'requisitos-y-formatos-para-publicar', '', '<h2 style="text-align: justify;">Formato de documento:</h2>\r\n<p style="text-align: justify;">En el siguiente documento encontrará los requisitos y el formato que debe cumplir para que el Consejo Editorial apruebe la publicación de su artículo.</p>\r\n<p style="text-align: center;"><a href="images/documentos/requisitos_formato_publicacion_articulos.pdf" target="_blank">Descargar requisitos aquí.</a></p>\r\n<h2 style="text-align: justify;">Formato APA:</h2>\r\n<p style="text-align: justify;">En el siguiente documento encontrará el formato APA que debe cumplir para que el Consejo Editorial apruebe la publicación de su artículo.</p>\r\n<p style="text-align: center;"><a href="images/documentos/formato%20apa.pdf">Descargar formato APA aquí.</a></p>\r\n<p style="text-align: justify;">&nbsp;</p>', '', 1, 0, 0, 8, '2013-05-21 21:07:23', 30, '', '2013-05-23 13:33:41', 30, 0, '0000-00-00 00:00:00', '2013-05-21 21:07:23', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 1, '', '', 1, 42, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 47, ' Solidarismo: nuevo referente "laboral" del libre comercio', 'solidarismo-nuevo-referente-laboral-del-libre-comercio', '', '<p>El solidarismo ha cobrado gran importancia en los últimos años, debido a los efectos de su filosofía y aplicación práctica. Dicha situación no solo ha propiciado cambios en su normativa sino a la vez un mayor apoyo por parte de los trabajadores del sector bananero, constituyéndose en una amenaza para el sindicalismo.</p>\r\n<p><a href="images/articulos/ed_1/solidarismo.pdf" target="_parent">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 15, '2013-05-21 21:20:44', 30, '', '2013-05-22 14:46:24', 30, 0, '0000-00-00 00:00:00', '2013-05-21 21:20:44', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 4, '', '', 1, 15, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 48, 'El poder disciplinario de las municipalidades', 'el-poder-disciplinario-de-las-municipalidades', '', '<p>El Poder Disciplinario sobre los Funcionarios Públicos, concretamente aplicado a las Municipalidades es motivo de análisis en las normas aplicables como el Código Municipal, Código de Trabajo y la reciente Ley Contra la Corrupción y el Enriquecimiento Ilícito en la Función Pública, teniendo en cuenta en todo momento tres derechos básicos de los empleados municipales: estabilidad laboral, debido proceso y principio de legalidad.</p>\r\n<p><a href="images/articulos/ed_1/el_poder_disciplinario.pdf" target="_parent">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 15, '2013-05-21 21:21:42', 30, '', '2013-05-21 21:52:26', 30, 0, '0000-00-00 00:00:00', '2013-05-21 21:21:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 49, 'La escena y el escenario del crimen', 'la-escena-y-el-escenario-del-crimen', '', '<p>Este artículo inicia exponiendo la confusión que tienden a difundir los medios de prensa en cuanto a los términos escena y escenario del crimen. Generalmente se hace referencia a la escena del crimen cuando lo correcto es escenario. El Dr. Burgos realiza un análisis exhaustivo del concepto y relevancia de estos términos tomando en cuenta que la verdadera importancia radica en que de ello depende la obtención de un resultado positivo o negativo de la investigación en el esclarecimiento de cada caso en concreto.</p>\r\n<p>El autor explica, partiendo del punto de vista de la criminalística, la cual considera el sitio del suceso como un todo, la importancia y estructura del Departamento de Ciencias Forenses de Costa Rica, el cual conformado por ocho secciones diferentes contiene las disciplinas que componen la criminalística y de esta forma los elementos necesarios para dar un tratamiento adecuado a los sitios en donde se desarrollan los crímenes.</p>\r\n<p><a href="images/articulos/ed_1/la_escena.pdf" target="_blank">Descargar artículo completo aquí</a>.</p>', '', 1, 0, 0, 15, '2013-05-21 21:23:03', 30, '', '2013-05-21 21:51:29', 30, 0, '0000-00-00 00:00:00', '2013-05-21 21:23:03', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 50, 'Algunos problemas para una efectiva justicia ambiental en Costa Rica', 'algunos-problemas-para-una-efectiva-justicia-ambiental-en-costa-rica', '', '<p>El impacto que la ética hacia el ambiente ha generado en las teorías sobre la justicia en dos direcciones: ya sea que la ética y la justicia se traten por separado o reconceptualizar la justicia a la luz de la ética ambiental. Si bien en nuestro país existen una serie de leyes con el fin de proteger el ambiente, la ingobernabilidad impide la efectiva aplicación de las mismas, llevándonos a la Teoría de las Apariencias.</p>\r\n<p><a href="images/articulos/ed_1/algunos_problemas_para_el_acceso.pdf" target="_parent">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 15, '2013-05-21 21:24:01', 30, '', '2013-05-21 21:52:02', 30, 0, '0000-00-00 00:00:00', '2013-05-21 21:24:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 51, '¿Puede el fideicomitente (en el fideicomiso de garantía) ser un tercero, ajeno a la operación de crédito que se garantiza ante el fideicomisario?', 'puede-el-fideicomitente-en-el-fideicomiso-de-garantia-ser-un-tercero-ajeno-a-la-operacion-de-credito-que-se-garantiza-ante-el-fideicomisario', '', '<p>La determinación de si el fideicomitente (en el fideicomiso de garantía) puede ser un tercero ajeno en la operación del crédito que se garantiza ante el fideicomisario, implica un análisis exhaustivo de los artículos del Código de Comercio referentes al fideicomiso, así como la determinación del objetivo del fideicomiso de garantía, amparado a la posición de la doctrina nacional y del derecho comparado latinoamericano.</p>\r\n<p><a href="images/articulos/ed_1/puede_el_fideicomitente.pdf" target="_parent">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 15, '2013-05-21 21:25:04', 30, '', '2013-05-21 21:52:56', 30, 0, '0000-00-00 00:00:00', '2013-05-21 21:25:04', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 0, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 74, 'El Desarrollo Histórico-Legislativo Del Instituto De Avería Gruesa En La Lex Maritima', 'el-desarrollo-historico-legislativo-del-instituto-de-averia-gruesa-en-la-lex-maritima', '', '<p>Bajo la acepción moderna, existe un acto de Avería Gruesa cuando, al seno de la aventura marítima, una o varias de sus partes contraen de manera intencional y razonable algún sacrificio o gasto extraordinario para la seguridad común, con el objeto de preservar de un peligro a los bienes comprometidos en la expedición marítima.</p>\r\n<p>Sin embargo, el proceso histórico de conformación del la Avería Gruesa, y particularmente, el de determinación de sus elementos constitutivos, ha sido poco menos que lineal y concertado: confluyen en él más de tres milenios de tradición marítima, usos y costumbres en los que este instituto halla a la vez su fundamento y su justificación. La Avería Gruesa urde sus raíces milenarias en las generosas tierras de los usos y la costumbre de los pueblos mediterráneos de la antigüedad, en las que el fenómeno era indistintamente asociado al acto de echazón, dada la frecuencia con que las frágiles embarcaciones debían arrojar su mercancía y aún partes del bastimento fuera de borda, para así alijar y sortear la inclemencia de las fuerzas naturales que se cernían sobre ellas.</p>\r\n<p><a href="images/articulos/ed_2/desarrollo_historico.pdf">Descargar artículo completo aquí.</a></p>\r\n<p>&nbsp;</p>', '', 1, 0, 0, 16, '2013-05-22 14:41:54', 30, '', '2013-05-22 14:57:51', 30, 30, '2013-05-22 15:01:26', '2013-05-22 14:41:54', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 75, 'Siete Pecados Capitales en la Enseñanza Del Derecho', 'siete-pecados-capitales-en-la-ensenanza-del-derecho', '', '<p><span class="Apple-style-span" style="-webkit-border-horizontal-spacing: 1px; -webkit-border-vertical-spacing: 1px;">Escrito por Dr. Minor E. Salas</span></p>\r\n<p>Las subsiguientes reflexiones nacieron producto de una invitación a impartir una conferencia sobre la enseñanza en la Facultad de Derecho de la Universidad de Costa Rica. El motivo por el cual se me pidió dar dicha conferencia era la reinauguración de la Revista Estudiantil Hermenéutica. Por diversas razones, que aquí no vale la pena traer a colación, nunca impartí esa conferencia. Sin embargo, estimo que las observaciones que preparé para esa ocasión (y que se reproducen en estas páginas con algunos agregados) eran correctas. Se trataba de afirmaciones un poco fuertes en contra de nuestro sistema educativo en la Facultad de Derecho, en contra de los estudiantes y hasta de los profesores mismos. Pero, les aclaro –con toda sinceridad– que no me motivó en esa oportunidad, ni me motiva ahora, un ánimo destructivo y malsano de criticar por criticar (cosa que a veces sí me gusta, en todo caso, hacer), sino más bien la esperanza de que en un futuro...muy lejano...las cosas pudieran, acaso, cambiar un poco.</p>\r\n<p><a href="images/articulos/ed_2/siete_pecados_capitales.pdf">Descargar artículo completo&nbsp;aquí</a>.</p>', '', 1, 0, 0, 16, '2013-05-22 14:52:53', 30, '', '2013-05-22 14:53:28', 30, 30, '2013-05-22 15:03:37', '2013-05-22 14:52:53', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 76, 'GLIN: UNA VENTANA INTERNACIONAL DE INFORMACION JURIDICA', 'glin-una-ventana-internacional-de-informacion-juridica', '', '<p><span class="small">Escrito por Licda. Anahí Fajardo Torres, Licda. Alcira Cascante Ardon.</span></p>\r\n<p>La Universidad de Costa Rica por medio de la Facultad de Derecho (Unidad de Informática Jurídica), ha asumido un compromiso con el desarrollo de la ciencia del Derecho en nuestro país: a través de la incorporación de nuevas tecnologías de la información, así como herramientas de primer orden, para proyectar nacional e internacionalmente la valiosa literatura juridical costarricense.</p>\r\n<p>La creación de la Estación GLIN (Global Legal Information Network) – UCR, es parte latente de ese compromiso, y refleja la oportunidad de contar con un medio digital que nos permita compartir con el mundo el conocimiento académico, por medio de la difusión de la producción intelectual de connotados juristas nacionales y a la vez tener acceso a información de la misma calidad de otros países.</p>\r\n<p><a href="images/articulos/ed_3/GLIN.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 17, '2013-05-22 14:56:01', 30, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-22 14:56:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 77, 'Obligaciones Procter Rem y su Relación Jurídica Con Los Derechos Reales', 'obligaciones-procter-rem-y-su-relacion-juridica-con-los-derechos-reales', '', '<p>Escrito por M.Sc. JORGE JIMENEZ BOLAÑOS</p>\r\n<p>El presente trabajo tratará de analizar la figura jurídica de las obligaciones propter rem y su relación con los derechos reales. Primero desarrollaremos el concepto de obligación jurídica, las características propias de la relación obligatoria tales como la relatividad correlatividad, patrimonialidad y temporalidad analizándolas frente a las características propias del derecho real que nos dan la doctrina nacional y extranjera. Y a partir del análisis conceptual poder diferenciar la obligación propter rem de la figura de los derechos reales, pero a la vez determinar la relevancia jurídica que presenta ésta figuras dentro de los derechos reales.</p>\r\n<p>Al final se mencionarán algunas figuras jurídicas en la cuales se manifiesta perfectamente la figura de la obligación propter rem.</p>\r\n<p><br /><a href="images/articulos/ed_2/obligaciones_procter_rem.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 16, '2013-05-22 14:56:12', 30, '', '2013-05-22 15:03:13', 30, 0, '0000-00-00 00:00:00', '2013-05-22 14:56:12', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 78, 'De la Universidad de Santo Tomás a la Universidad de Costa Rica 165 años de Historia de la Facultad', 'de-la-universidad-de-santo-tomas-a-la-universidad-de-costa-rica-165-anos-de-historia-de-la-facultad', '', '<p>Escrito por Lic. Tomás Federico Arias Castro</p>\r\n<p><br />El presente año 2008, es de especial merito y valía para los integrantes del gremio jurídico, pues se conmemoran los 165 años de la creación de la Facultad de Derecho, institución la cual desde su creación, ha guiado y estructurado el derrotero académico de los profesionales en ciencias jurídicas, desde una perspectiva enteramente comprometida con la excelencia y el profesionalismo en la enseñanza de la carrera del Derecho, así como con el desarrollo y engrandecimiento de nuestra nación en los mas diversos ordenes.</p>\r\n<p><br /><a href="images/articulos/ed_2/u_santo_tomas.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 16, '2013-05-22 14:58:34', 30, '', '2013-05-22 14:58:45', 30, 30, '2013-05-22 15:01:09', '2013-05-22 14:58:34', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 79, 'ANALISIS SOBRE LA ACCION SUBROGATORIA COMO TUTELA DEL DERECHO DE CREDITO ', 'analisis-sobre-la-accion-subrogatoria-como-tutela-del-derecho-de-credito', '', '<p>Escrito por M.Sc. Jorge Jiménez Bolaños</p>\r\n<p>Dentro del campo del Derecho Civil y específicamente en el ámbito de las relaciones jurídicas patrimoniales, relaciones jurídicas obligatorias, se hace necesario siempre estudiar dentro del Vínculo jurídico la faceta de la responsabilidad del deudor en caso de incumplimiento de sus obligaciones.</p>\r\n<p>Lo ideal seria el cumplimiento normal de las obligaciones, sin embargo sabemos que sucede y no pocas veces, el incumplimiento de las mismas. El acreedor ante esta situación debe utilizar todos los mecanismos que el ordenamiento jurídico le concede para lograr obtener la satisfacción de su crédito.</p>\r\n<p>En algunos casos la insatisfacción del acreedor en virtud del incumplimiento del deudor se ve producida por la inercia o inactividad del deudor en cuanto a diligenciar oportunamente sus derechos y acciones ,que podrían en caso de que fuera diligente, fortalecer su patrimonio y quedar en una situación de solvencia suficiente para el cumplimiento de sus obligaciones.</p>\r\n<p>La acción subrogatoria precisamente, es una acción tendiente a tutelar el derecho de crédito con efectos conservativos, pues persigue ante la inactividad del deudor, el lograr preservar el patrimonio de éste, en situaciones en que la inercia pueda hacer peligrar su patrimonio.</p>\r\n<p>Es interesante la idea de que el ordenamiento jurídico le conceda facultades al acreedor, para que este pueda ejercer derechos y acciones del deudor sustituyéndolo. Vamos por ello a analizar el concepto ,los presupuestos, la regulación jurídica de la acción subrogatoria en nuestro Código Civil, para al final del trabajo hacer una critica constructiva sobre este instituto , que pese a tener una buena intención, el procedimiento que señala la ley para su ejercicio la hacen poca práctica y casi obsoleta.</p>\r\n<p><a href="images/articulos/ed_3/analisis_accion.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 17, '2013-05-22 14:59:11', 30, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-22 14:59:11', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 80, 'Seguridad Ciudadana y Pevención del Delito', 'seguridad-ciudadana-y-pevencion-del-delito', '', '<p>Escrito por Prof. Dr. Alfredo Chirino Sánchez</p>\r\n<p><br />Se viven tiempos en que la seguridad es un elemento esencial de las políticas públicas y constituye un requerimiento elemental para la vida de convivencia. Sin embargo, es quizá el concepto de "sociedad de riesgos", acuñado por el sociólogo Ulrich Beck, el que mejor define la actual tendencia de las políticas estatales tanto en el Viejo como en el Nuevo Continente.</p>\r\n<p><br /><a href="images/articulos/ed_2/seguridad_ciudadana.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 16, '2013-05-22 15:00:07', 30, '', '2013-05-22 15:00:43', 30, 0, '0000-00-00 00:00:00', '2013-05-22 15:00:07', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 81, 'APORTE DE KANT AL CONCEPTO MODERNO DEL "ESTADO DE DERECHO" ', 'aporte-de-kant-al-concepto-moderno-del-estado-de-derecho', '', '<p>Escrito por MSc. Hubert May Cantillano</p>\r\n<p>El desarrollo más preciso de la noción de Estado jurídico o como se le conoce actualmente, estado de derecho, en el pensamiento moderno, está sin duda alguna, en las obras del filósofo alemán de finales del siglo XVIII Emmanuel Kant. Influido en este punto por el pensamiento poderoso del Ginebrino Juan Jacobo Rousseau ,(y también, por los titanes del pensamiento John Locke y Thomas Hobbes) justificó la fundamentación del orden jurídico, como un orden de convivencia en donde se entrelazan en nudos invisibles pero con fuerza de acero la ley, la moral y la libertad.</p>\r\n<p>A diferencia de sus predecesores estas nociones son entendidas, y esto es lo novedoso, desde una perspectiva lógico formal, esto es como ideas puras o puros conceptos despojados de todo aquello que no es razón.</p>\r\n<p>En Kant desemboca la discusión moderna del contrato social, adecuándose a una justificación de la ley a partir de la noción de autonomía, núcleo del derecho de libertad y de sus derivados inevitables y posteriores como el de la jurisdicción constitucional de la libertad. Esta autonomía es ausencia de supeditación externa y, por tanto, libertad y responsabilidad a la vez. El estado de derecho es así un orden fundado en la razón y en la responsabilidad individual de los miembros de la sociedad. Una ciudad en donde impere sólo la obligación será su antitesis, pero también lo es aquella en donde todo se percibe como derechos subjetivos. El corazón de los hombres, su imperativo categórico, impide al individuo desatenderse de las responsabilidades inherentes a la convivencia.</p>\r\n<p><a href="images/articulos/ed_3/aporte_kant.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 17, '2013-05-22 15:00:26', 30, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-22 15:00:26', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 82, '¿INMUNIDAD O IMPUNIDAD PARLAMENTARIA?', 'inmunidad-o-impunidad-parlamentaria', '', '<p>Escrito por M.Sc Sofía Cordero Molina</p>\r\n<p>Las Inmunidades Parlamentarias tal y como se encuentran reguladas en la actualidad en el ordenamiento jurídico costarricense, son susceptibles de abrir portillos legales y convertirse en eventuales formas de Impunidad. Si bien, la finalidad de dichas prerrogativas se circunscribe, en condiciones ideales, a razones de funcionalidad e interés público, la práctica costarricense, ha demostrado que el abuso de los privilegios es constante, amparado a derecho y promotor de una criminalidad de élite que queda sin castigo.</p>\r\n<p>Las particularidades propias de las Inmunidades Parlamentarias, su vaga regulación, escaso estudio y compleja compresión, contribuyen en gran medida a la creación de un manto legal de permisibilidad, y la aprobación moral de conductas reprochables, que alimentan la cultura del olvido que tanto caracteriza el fenómeno de la impunidad.</p>\r\n<p><a href="images/articulos/ed_3/inmunidad_impunidad.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 17, '2013-05-22 15:02:27', 30, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-22 15:02:27', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 83, 'JUSTICIA MEDIATICA', 'justicia-mediatica', '', '<p>Escrito por M.Sc. Pablo Barahona Krüger</p>\r\n<p>Bien se podría afirmar que la Justicia Mediática es uno de los problemas más implicantes y a la vez desatendidos de la realidad democrática contemporánea. De la procesión consistente en el demos-kratos se van marginando progresivamente la administración de justicia –entiéndase: de orden por lo que infra se tratará- formal, el mandato legislativa, y muy particularmente la distribución de poderes sobre la que, desde mucho antes de Montesquieu, descansa todo sistema de pesos y contrapesos, cuyo desbalance tiende, indefectiblemente, hacia el desorden en cualquiera de sus dos expresiones: anarquismo o autoritarismo.</p>\r\n<p>Lejos de toda sospecha innecesaria y más bien desde una aproximación epistemológica, se ensaya este aporte de univocidad con la intención de motivar la discusión necesaria e inevitable relativa a la incidencia de la opinión pública, que a su vez es creada y en ocasiones hasta suplantada por los medios masivos de comunicación, sobre la administración de "justicia".</p>\r\n<p>Interesa aquí, el traslape de dos roles profesionales socialmente importantes en tanto cohesionadores –o no-: el juez y el periodista.</p>\r\n<p>La penetración de la tecnología como medio de largo e íntimo alcance acentúa la influencia y hasta alteración de ámbitos de acción pública y privada, siendo que las empresas comunicadoras propenden a la deslegitimación y al consecuente debilitamiento de las estructuras públicas visibles y la potenciación de los periodistas como nuevos agentes socializadores, e incluso, más allá, promotores del orden y hasta de la intelectualidad.</p>\r\n<p>La tensión básica entre el derecho a la información y otro fundamento de la humanidad, cual es el honor de cada persona, se trata aquí in extenso, considerando de paso el problema de las problemáticas exacerbadas por el cálculo mediático y mediatizado de quienes sin medir consecuencias, propenden a criminalizar al margen del código penal y a "impunizar" o lo que es igual: a crear círculos intocables, al margen del código procesal penal y la ética más cauta.</p>\r\n<p><a href="images/articulos/ed_3/justicia_mediatica.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 17, '2013-05-22 15:03:43', 30, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-22 15:03:43', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(19, 84, 'Editorial', 'editorial', '', '<p>Escrito por Web Master</p>\r\n<p>Les presentamos el quinto número del Boletín Jurídico Virtual IUS DOCTRINA, esta vez con artículos inéditos en diversas áreas del derecho, contamos en esta edición con un artículo del Profesor Dominicano Manuel Valerio quien trata el tema de Yuxtaposición del Regionalismo y el Multilateralismo desde el punto de vista de los mecanismos de resolución de disputas de los Tratados de Libre Comercio (TLCs) y la Organización Mundial del Comercio (OMC), estableciendo como propósito fundamental del ensayo brindar una visión holística de la dupla regionalismo-multilateralismo, visto desde una perspectiva dual de lo general a lo particular, de la génesis del problema del regionalismo y el multilateralismo, hasta temas particulares y más complejos, como la integración o sinergias de los mecanismos de resolución de disputas de acuerdos de libre comercio y el mecanismo de resolución de disputas de la OMC.</p>\r\n<p>Se presenta también un artículo del profesor Álvaro Burgos titulado EL Rufián y el Proxeneta en Costa Rica, considerando el autor que los diversos factores de la globalización y del desarrollo socio económico, demográfico, cultural, político y criminológico de nuestros pueblos modernos, han provocado un incremento de este tipo de crímenes.<br />Publicamos un ensayo del Profesor Alfonso Chacón que en el cual se pretende reseñar los problemas que se presentan al momento de interpretar el significado concreto de los denominados derechos humanos.<br />Se presenta también un artículo de la profesora Vilma Alpízar y el profesor William Bolaños, en el cual los autores desarrollan la figura del matrimonio dentro del derecho de familia costarricense, determinando su concepto, etapas y naturaleza jurídica a través del estudio de la doctrina y jurisprudencia nacional, concluyendo que es más que un contrato civil, además realizan un análisis de su tutela jurídica a través de la normativa nacional e internacional, y establecen con detalle los requisitos y trámites para su celebración en los distintos casos aplicables<br />En el apartado de aporte estudiantil se desarrolla la aplicación de la teoría de la excesiva onerosidad sobreviniente en los contratos de suministro misma que surge como respuesta a una serie de factores económicos y jurídicos que otros convenios comerciales no han podido suplir.<br />Finalmente invitarlos a visitar nuestra página web www.iusdoctrina.ucr.ac.cr, y recordarles que pueden enviar sus ensayos, así como noticias relevantes de interés a la comunidad jurídica nacional.</p>\r\n<p>Licda. Anahí Fajardo Torres</p>', '', 1, 0, 0, 19, '2013-05-22 15:08:54', 30, '', '2013-05-22 15:09:04', 30, 0, '0000-00-00 00:00:00', '2013-05-22 15:08:54', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `jo_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(20, 85, 'LA APLICACIÓN DE LA TEORÍA DE LA EXCESIVA ONEROSIDAD SOBREVINIENTE EN LOS CONTRATOS DE SUMINISTRO: ALGUNAS CONSIDERACIONES RELEVANTES', 'la-aplicacion-de-la-teoria-de-la-excesiva-onerosidad-sobreviniente-en-los-contratos-de-suministro-algunas-consideraciones-relevantes', '', '<p>Escrito por Licda. Suraye Zaglul Fiatt</p>\r\n<p>El contrato de suministro surge como respuesta a una serie de factores económicos y jurídicos que otros convenios comerciales no habían podido suplir. Por su naturaleza periódica y continua, logra crear acuerdos de abastecimiento en el tiempo, eliminando el uso reiterado y necesario de la compraventa. No obstante, el tracto sucesivo que caracteriza al suministro hace que sea plausible que situaciones fuera del alea normal se presenten y cambien las circunstancias originales durante su transcurso. La excesiva onerosidad sobreviniente es una de las eventualidades que afectan el contrato de estudio. Cuando ésta se presenta, el suministro sólo podrá tomar dos caminos: la resolución completa y definitiva del acuerdo o, el reacomodo de las prestaciones para equilibrar de nuevo la relación.<br />Actualmente en la legislación costarricense no se encuentran tipificados el contrato de suministro así como tampoco la teoría de la excesiva onerosidad sobreviniente, por ende, la idea de la fusión de ambos términos no se encuentra establecida legislativamente. No obstante, por interpretación analógica de doctrina extranjera y por vía jurisprudencial, se ha logrado resolver algunos casos en Costa Rica pero dejando siempre un vacío normativo de considerable magnitud y consecuente incerteza jurídica para los afectados y terceros. De ahí que el presente trabajo de investigación pretende comprobar y desarrollar la posibilidad de aplicación de la cláusula de la excesiva onerosidad sobreviniente en los contratos de suministro dejando claro la viabilidad de su utilización dado el marco normativo de fondo que ambos términos poseen.</p>\r\n<p><a href="images/articulos/ed_5/aplicacion_teoria.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 19, '2013-05-22 15:11:37', 30, '', '2013-05-22 15:11:45', 30, 30, '2013-05-22 15:22:21', '2013-05-22 15:11:37', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(21, 86, 'EDITORIAL', 'editorial', '', '<p>Hemos reunido en este cuarto número de nuestro Boletín Jurídico Virtual IUS DOCTRINA, cinco artículos relacionados con el tema del Derecho Comercial, como homenaje póstumo al connotado jurista Doctor Gastón Certad Maroto, profesor universitario de esta Facultad durante más de 35 años, hombre ilustrado, de fuertes convicciones y generoso corazón.</p>\r\n<p>En honor a su memoria hemos querido dedicar esta publicación como un reconocimiento al Maestro en su deseo de compartir y trasmitir conocimiento, Educador incansable como catedrático de las ciencias jurídicas. Un mes antes de su partida el querido profesor Certad envió a nuestra revista un artículo inédito, mismo que publicamos en este número con gran orgullo, sumado a otros que profesores, compañeros de cátedra, colegas y ex alumnos han aportado como reconocimiento a la labor del Dr. Certad.</p>\r\n<p>De tal manera que les ofrecemos el artículo del Doctor Certad que versa sobre la difusión del arbitraje en materia comercial y particularmente en el sector societario lo cual según sus propias palabras se "ha venido convirtiendo en una verdadera y propia praxis", analizando además las ventajas que esta forma de resolución de controversias representa para las partes y para la imagen misma de la sociedad.</p>\r\n<p>Contamos además con un artículo de la profesora Ana Lucia Espinoza quien nos expone el tema del fideicomiso honorario que viene a ser un tipo de fideicomiso usado sobre todo en los sistemas de Common Law. Lo distintivo en él es que no hay fideicomisario, o sea, beneficiario persona física, ni jurídica, toda vez que lo que se persigue es facilitar la consecución de un fin lícito que no sea absurdo y que no conlleve la creación de una perpetuidad.</p>\r\n<p>En Costa Rica es una figura legal pero que no se utiliza del todo, no porque se la rechace por razones de fondo, sino simplemente porque no se la conoce. El profesor Pedro Suárez nos presenta un artículo que desarrolla la materia de los poderes en los procedimientos de inscripción de marcas, la cual ha sido objeto de un fuerte debate en Costa Rica a raíz de la reforma del Artículo 1256 del Código Civil que requirió que los poderes con efectos registrales deben de hacerse en escritura pública. Este cambio legislativo a criterio del autor viene a producir a partir de su publicación un gran caos en Costa Rica en materia de inscripción de marcas ya que una gran parte de los solicitantes son entidades extranjeras que buscan proteger su propiedad intelectual en Costa Rica.</p>\r\n<p>En lo que respecta al artículo de la profesora Ingrid Palacios este lleva por título "Falta de aptitud diferenciadora como causa de denegación absoluta de la Marca Comunitaria y la Marca Comunitaria Colectiva" partiendo de que la Marca como signo distintivo requiere, por disposición legal, una serie de elementos para proceder a su registro. A partir de su calificativo se evidencia que el elemento de distintividad es requisito básico y necesario para el que signo que opte por constituir una Marca Comunitaria cumpla a cabalidad su objeto final en el mercado.</p>\r\n<p>En el apartado de aporte estudiantil tenemos el tema de "La Sociedad Anónima Nacional o Concesionaria" que viene a ser el tipo de sociedad que queda obligado a constituir el adjudicatario, por disposición expresa de la Ley General de Concesión de Obras Públicas con Servicios Públicos. Esta figura societaria especial es el híbrido producto de una mezcla de normativa del Derecho Privado y del Derecho Público, en donde resultan necesarias las normas del Código de Comercio referidas a las sociedades anónimas y de manera supletoria lo estipulado en la citada Ley General. Finalmente deseo comunicar que el próximo número de nuestra publicación estará dedicado a la temática de los Refugiados por lo que invitamos a nuestros lectores a enviar artículos relacionados.</p>\r\n<p>Agradecemos todo el apoyo brindado a la administración saliente de la Facultad así como a la que ha iniciado labores, ya que esto ha contribuido a fortalecernos cada día más y poder contribuir a la producción de la literatura jurídica nacional</p>\r\n<p>Licda. Anahí Fajardo Torres.</p>', '', 1, 0, 0, 18, '2013-05-22 15:13:31', 30, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-22 15:13:31', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(22, 87, '“REFLEXIONES EN TORNO A ALGUNOS PROBLEMAS SEMÁNTICO/INTERPRETATIVOS DE LOS DERECHOS HUMANOS (¿ES POSIBLE ENCONTRAR SOLUCIONES APELANDO A SUS PRINCIPIOS?)”', 'reflexiones-en-torno-a-algunos-problemas-semantico-interpretativos-de-los-derechos-humanos-es-posible-encontrar-soluciones-apelando-a-sus-principios', '', '<p>Escrito por Msc. Alfonso Chacón Mata</p>\r\n<p>La ponencia presentada en este artículo pretende reseñar los problemas que se presentan al momento de interpretar el significado concreto de los denominados derechos humanos. Estos últimos derechos son susceptibles de ser valorados desde diferentes aristas, según sean las preferencias del interlocutor puesto que constituyen una categoría analítica aplicada. La interpretación de los derechos humanos se torna entonces, disímil y heterogénea, presentando además significados lingüísticos no-uniformes, siendo imperioso optar por una tesis de ―dogmática jushumanista‖, que interpele tales derechos desde una óptica humanista. La anterior posibilidad tiende a estabilizar y concretizar el problema de la interpretación jurídica de los derechos humanos como un todo, al circunscribirlos a principios singulares y específicos, como sería el Principio Pro Homine o el Principio Pro Libertatis,o el Principio de Prohibición Regresiva o de Expansión de los Derechos, con los que se encausa un correcto significado a la luz de su dinámica propia interpretativa.</p>\r\n<p><a href="images/articulos/ed_5/reflexiones.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 19, '2013-05-22 15:13:33', 30, '', '2013-05-22 15:23:24', 30, 0, '0000-00-00 00:00:00', '2013-05-22 15:13:33', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(23, 88, 'ALGUNAS REFLEXIONES ALREDEDOR DEL MATRIMONIO CIVIL', 'algunas-reflexiones-alrededor-del-matrimonio-civil', '', '<p>Escrito por Msc .William Bolaños Gamboa, Licda. Vilma Alpízar Matamoros</p>\r\n<p>La ponencia presentada en este artículo pretende reseñar los aspectos más relevantes con respecto al matrimonio, desde su concepto, sus etapas, los fines del matrimonio, su naturaleza jurídica, los requisitos de forma para su celebración e inscripción del matrimonio civil y el proceso en sede notarial, cerrando con el tema del matrimonio entre personas del mismo sexo.</p>\r\n<p><a href="images/articulos/ed_5/reflexiones_matrimonio_civil.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 19, '2013-05-22 15:15:05', 30, '', '2013-05-22 15:22:02', 30, 0, '0000-00-00 00:00:00', '2013-05-22 15:15:05', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(24, 89, 'LA SOCIEDAD ANÓNIMA NACIONAL O CONCESIONARIA REGULADA POR LA LEY GENERAL DE CONCESIÓN DE OBRAS PÚBLICAS CON SERVICIOS PÚBLICOS', 'la-sociedad-anonima-nacional-o-concesionaria-regulada-por-la-ley-general-de-concesion-de-obras-publicas-con-servicios-publicos', '', '<p>Escrito por Licda. Tatiana González González</p>\r\n<p>La Sociedad Anónima Nacional o Concesionaria (a continuación escrita bajo la siguiente abreviatura S.A.N.C. ) es la sociedad a la que queda obligado a constituir el adjudicatario, por disposición expresa de la Ley General de Concesión de Obras Públicas con Servicios Públicos (a continuación escrita bajo la siguiente abreviatura LGCOPSP), a saber: "Artículo 31.Constitución de la sociedad anónima nacional. El adjudicatario queda obligado a constituir, en un plazo de noventa días naturales, contados a partir de la firmeza del acto de adjudicación, una sociedad anónima con la cual será celebrado el contrato de concesión (... ) le serán aplicables las normas del Código de Comercio."</p>\r\n<p>Esta figura societaria especial es el híbrido producto de una mezcla de normativa del Derecho Privado y del Derecho Público, en donde resultan necesarias las normas del Código de Comercio referidas a las sociedades anónimas, pero de manera supletoria a las regulaciones dispuestas por la LGCOPSP sobre el contrato de concesión de obras públicas con servicios públicos y la S.A.N.C.. Ésta viene siendo una sociedad anónima común y corriente, según la entendemos dentro de nuestra legislación mercantil en los artículos 102 y siguientes que, no obstante, por encontrarse dentro del ámbito del Derecho Público, cuenta con regulaciones específicas y exclusivas impuestas por medio de la LGCOPSP y su Reglamento, desviándose del concepto habitual de sociedad anónima, con el fin de que ésta funcione dentro del contexto de un contrato de concesión de obras públicas con servicios públicos. Pero además de estas dos normas específicas y otras dispersas dentro de la LGCOPSP y su respectivo Reglamento, la S.A.N.C. se encuentra regulada por los términos del cartel de licitación, sus circulares aclaratorias, la oferta que haya presentado el licitante adjudicatario y el mismo contrato de concesión suscrito entre las partes.</p>\r\n<p>Es por ello que a los contratos, producto de la LGCOPSP, se les ha caracterizado como contratos de adhesión, donde el concesionario tan solo se apega a las disposiciones impuestas por la Administración, sin contribuir en la determinación del contenido del contrato, ya que lo que se pretende proteger por medio de las disposiciones legales y administrativas predeterminadas es el interés público y no el interés del concesionario, sin que ello signifique un quebranto de los derechos del concesionario como contraparte del contrato de concesión, también regulados por la legislación comentada. En esta investigación se pretende estudiar los contrastes entre ambas sociedades, la mercantil y la concesionaria, denotando las similitudes que permiten la aplicación supletoria del Código de Comercio, pero más importante aún las características especiales y únicas de ésta última establecidas en la LGCOPSP, con el fin de entender perfectamente su funcionamiento.</p>\r\n<p><a href="images/articulos/ed_4/sociedad_anonima.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 18, '2013-05-22 15:15:05', 30, '', '2013-05-22 15:18:01', 30, 0, '0000-00-00 00:00:00', '2013-05-22 15:15:05', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(25, 90, 'FALTA DE APTITUD DIFERENCIADORA COMO CAUSA DE DENEGACIÓN ABSOLUTA DE LA MARCA COMUNITARIA Y LA MARCA', 'falta-de-aptitud-diferenciadora-como-causa-de-denegacion-absoluta-de-la-marca-comunitaria-y-la-marca', '', '<p>Escrito por Ingrid Palacios Montero</p>\r\n<p>La Marca como signo distintivo requiere, por disposición legal, una serie de elementos para proceder a su registro. A partir de su calificativo se evidencia que el elemento de distintividad es requisito básico y necesario para el que signo que opte por constituir una Marca Comunitaria cumpla a cabalidad su objeto final en el mercado. La finalidad de los signos distintivos es distinguir, y es por ello que resulta interesante establecer los elementos que conforman el concepto de la distinción y que son relevantes para la constitución de una Marca ordinaria y de una Marca Colectiva. El presente estudio pretende realizar un acercamiento al concepto de Marca Comunitaria y Marca Comunitaria, en primer término se plantea una visión global de la Marca Comunitaria –como género-, respecto de los elementos objetivos y subjetivos y una aproximación a su concepto.</p>\r\n<p>Posteriormente, se trata en forma puntual la distintividad como requisito necesario y su alcance dentro de la conformación de la Marca Comunitaria y la Marca Comunitaria Colectiva, para concluir con dos supuestos de subsanación: secundary meaning y la modificación del reglamento de uso respectivamente.</p>\r\n<p><a href="images/articulos/ed_4/marca_comunitaria_y_la_marca_comunitaria_colectiva.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 18, '2013-05-22 15:16:18', 30, '', '2013-05-22 15:18:23', 30, 0, '0000-00-00 00:00:00', '2013-05-22 15:16:18', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(26, 91, 'EL RUFIÁN Y EL PROXENETA EN COSTA RICA', 'el-rufian-y-el-proxeneta-en-costa-rica', '', '<p>Escrito por Dr. Álvaro Burgos M.35</p>\r\n<p>Aunque las acciones típicas de los delitos sexuales son conocidas desde los mismos albores de la humanidad, los diversos factores de la globalización y del desarrollo socio económico, demográfico, cultural, político y criminológico de nuestros pueblos modernos, han provocado un incremento de cierto tipo de crímenes, dentro de los cuales resaltamos al Proxenetismo y la Rufianería, así como, su regulación particular en Costa Rica.</p>\r\n<p><a href="images/articulos/ed_5/el_rufian.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 19, '2013-05-22 15:16:52', 30, '', '2013-05-22 15:20:31', 30, 30, '2013-05-22 15:22:11', '2013-05-22 15:16:52', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(27, 92, 'LOS PODERES EN MATERIA DE PROPIEDAD INTELECTUAL, IMPLICACIONES LA NATURALEZA JURIDICA DEL PROCEDIMIENTO DE DECLARACION E INSCRIPCION DE ESTOS DERECHOS', 'los-poderes-en-materia-de-propiedad-intelectual-implicaciones-la-naturaleza-juridica-del-procedimiento-de-declaracion-e-inscripcion-de-estos-derechos', '', '<p>Escrito por Dr. Pedro Suarez Baltodano</p>\r\n<p>La materia de los poderes en los procedimientos de inscripción de marcas ha sido objeto de un fuerte debate en Costa Rica a raíz de la reforma del Artículo 1256 del Código Civil que requirió que los poderes con efectos registrales deben de hacerse en escritura pública.</p>\r\n<p><a href="images/articulos/ed_4/los_poderes_en_materia_de_propiedad_intelectual.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 18, '2013-05-22 15:17:19', 30, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-22 15:17:19', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(28, 93, '"Yuxtaposición del Regionalismo y el Multilateralismo desde el punto de vista de los mecanismos de resolución de disputas de los Tratados de Libre Comercio (TLCs) y la Organización Mundial del Comercio (OMC): Una aproximación al problema"', 'yuxtaposicion-del-regionalismo-y-el-multilateralismo-desde-el-punto-de-vista-de-los-mecanismos-de-resolucion-de-disputas-de-los-tratados-de-libre-comercio-tlcs-y-la-organizacion-mundial-del-comercio-omc-una-aproximacion-al-problema', '', '<p>Escrito por Manuel Alejandro Valerio Jiminián</p>\r\n<p>El presente artículo tiene como finalidad abordar de una manera sucinta el marco teórico de la dinámica del regionalismo y el multilateralismo en el comercio mundial, así como también la necesidad de establecer una sinergia entre el comercio ―bilateral‖ y el comercio ―multilateral‖ en general, y de manera específica, respecto a sus mecanismos de resolución de disputas. El propósito fundamental del ensayo es que tanto los conocedores como aquellos que se están introduciendo en la temática del Derecho Comercial Internacional puedan tener una visión holística de la dupla regionalismo-multilateralismo, visto desde una perspectiva dual de lo general a lo particular, de la génesis del problema del regionalismo y el multilateralismo, hasta temas particulares y más complejos, como la integración o sinergias de los mecanismos de resolución de disputas de acuerdos de libre comercio y el mecanismo de resolución de disputas de la OMC. Esta temática es particularmente importante para los países pequeños geográficamente, tales como los miembros del DR-CAFTA, ya que a través del ―sistema judicial internacional‖ de cuestiones comerciales, pueden convertirse en actores de primera línea en la discusión de temas trascendentales, tales como los subsidios a la agricultura en países desarrollados, propiedad intelectual, democratización de las instancias de decisión en las rondas de comercio, comercio y desarrollo, relaciones económicas multilaterales, relaciones económicas Norte-Sur, entre otros.<br />Este artículo constituye la base del seminario que impartimos en Enero pasado en la prestigiosa Universidad de Costa Rica (UCR), dentro del marco del programa ―Por una Cultura de Cumplimiento en los países miembros del DR-CAFTA‖, patrocinado por el Trust for the Americas, la Organización de Estados Americanos (OEA), y tan augusta casa de altos estudios.<br />Agradecemos infinitamente el espacio, apoyo y recibimiento de las autoridades de la Universidad, en especial, de nuestras queridas amigas Anahí Fajardo y Beatriz Slooten, que tanto empeño pusieron en aras de que el seminario estuviera al alcance de la calidad de la UCR.</p>\r\n<p><a href="images/articulos/ed_5/yuxtaposicion.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 19, '2013-05-22 15:18:38', 30, '', '2013-05-22 15:19:02', 30, 30, '2013-05-22 15:20:52', '2013-05-22 15:18:38', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(29, 94, 'ALGUNAS REFLEXIONES SOBRE EL FIDEICOMISO HONORARIO: UN FIDEICOMISO SIN FIDEICOMISARIO', 'algunas-reflexiones-sobre-el-fideicomiso-honorario-un-fideicomiso-sin-fideicomisario', '', '<p>Escrito por Ana Lucia Espinoza Blanco</p>\r\n<p>El fideicomiso honorario es un tipo de fideicomiso usado sobre todo en los sistemas de Common Law. Lo distintivo en él es que no hay fideicomisario, o sea, beneficiario persona, física ni jurídica, toda vez que lo que se persigue es facilitar la consecución de un fin lícito, que no sea absurdo y que no conlleve la creación de una perpetuidad.</p>\r\n<p>En Costa Rica es una figura legal pero que no se utiliza del todo, no porque se la rechace por razones de fondo, sino simplemente porque no se la conoce. Sin embargo, en el supuesto que se entienda la figura y se acepte que puede destinarse a la consecución de fines generales, de beneficencia o de interés público, la misma presenta interesantes ventajas, y también hay que decirlo, desventajas, frente a otras figuras del ordenamiento que también tutelan estos fines, como lo son las asociaciones y las fundaciones.</p>\r\n<p><a href="images/articulos/ed_4/fideicomiso.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 18, '2013-05-22 15:20:35', 30, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-22 15:20:35', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(30, 95, 'ALGUNAS OTRAS CUESTIONES EN TEMA DE COMPROMISOS Y DE CLAUSULAS COMPROMISORIAS', 'algunas-otras-cuestiones-en-tema-de-compromisos-y-de-clausulas-compromisorias', '', '<p>Escrito por Dr. Gastón Certad Maroto</p>\r\n<p>La progresiva difusión en nuestro país en estos últimos años del instrumento arbitral como método alternativo de resolución de controversias se ha generado sobretodo en el ámbito comercial y, en especial, en el sector societario, donde venimos asistiendo a un siempre mayor recurso a tal figura en medida tal que se ha venido convirtiendo en una verdadera y propia praxis.</p>\r\n<p>Los motivos de semejante suceso se pueden sintetizar en las conspicuas ventajas, en orden temporal y económico, que las partes pueden obtener cumpliendo con la opción arbitral, sin olvidar que la solución de las controversias a través de este instituto resulta más discreta y reservada, pues el arbitraje permite llevar más fácilmente a la composición los intereses contrapuestos, conservando ese clima de confianza entre los socios sobre el que se fundan la existencia y el funcionamiento de cualquier contrato social, e impidiendo, contemporáneamente, la divulgación de hechos y noticias que podrían perjudicar la imagen de la sociedad.</p>\r\n<p><a href="images/articulos/ed_4/cuestiones_compromisos.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 18, '2013-05-22 15:21:46', 30, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-22 15:21:46', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(31, 96, 'Editorial', 'editorial', '', '<p>Les presentamos el octavo número del Boletín Jurídico Virtual IUS DOCTRINA, esta vez con artículos inéditos en diversas áreas del derecho.</p>\r\n<p>El profesor Ronald Hidalgo Cuadra, nos envía un artículo titulado "La libertad para adquirir conocimiento: El caso de la investigación clínica en seres humanos", donde señala que la actividad científica se somete a la norma jurídica en situaciones de riesgo no aceptables, esto quiere decir que las normas emitidas por el gobierno relacionadas con la investigación en seres humanos son constitucionales, si tienen por finalidad la protección del paciente.</p>\r\n<p>Contaremos con la publicación de Andrei Cambronero Torres, sobre "Medios de comunicación y Estado de Derecho" en el cual se refiere a que la información de los medios de comunicación tiene la capacidad de moldear el pensamiento de los receptores. Trata específicamente el caso de los ilícitos penales, en cuanto a la forma de presentar la noticia y su posible impacto.</p>\r\n<p>Mario Matarrita Arroyo se refiere a la "Dualidad Jurídica y Política del Sistema Electoral", valorando las modalidades de influencia, a nivel jurídico y político, que el Sistema Electoral ejerce sobre los procesos electivos contemporáneamente diseñados.</p>\r\n<p>Una vez más invitarlos a visitar nuestra página web www.iusdoctrina.ucr.ac.cr, que ofrece la versión digital de nuestra revista y recordarles que pueden enviar sus ensayos, así como noticias relevantes de interés a la comunidad jurídica nacional.</p>\r\n<p>M.Sc. Anahí Fajardo Torres</p>\r\n<p>Directora Revista Boletín Jurídico Ius Doctrina</p>', '', 1, 0, 0, 20, '2013-05-22 15:24:34', 30, '', '2013-05-22 15:24:41', 30, 0, '0000-00-00 00:00:00', '2013-05-22 15:24:34', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(32, 97, 'EDITORIAL', 'editorial', '', '<div style="text-align: justify; font-family: Sans-serif;">\r\n<p>Les presentamos el octavo número del Boletín Jurídico Virtual IUS DOCTRINA, esta vez con artículos inéditos en diversas áreas del derecho.</p>\r\n<p>El profesor Ronald Hidalgo Cuadra, nos envía un artículo titulado <span style="font-style: italic; font-weight: bold;">“La libertad para adquirir conocimiento: El caso de la investigación clínica en seres humanos”</span>, donde señala que la actividad científica se somete a la norma jurídica en situaciones de riesgo no aceptables, esto quiere decir que las normas emitidas por el gobierno relacionadas con la investigación en seres humanos son constitucionales, si tienen por finalidad la protección del paciente.</p>\r\n<p>Contaremos con la publicación de Andrei Cambronero Torres, sobre <span style="font-style: italic; font-weight: bold;">“Medios de comunicación y Estado de Derecho”</span> en el cual se refiere a que la información de los medios de comunicación tiene la capacidad de moldear el pensamiento de los receptores. Trata específicamente el caso de los ilícitos penales, en cuanto a la forma de presentar la noticia y su posible impacto.</p>\r\n<p>Mario Matarrita Arroyo se refiere a la <span style="font-style: italic; font-weight: bold;">"Dualidad Jurídica y Política del Sistema Electoral"</span>, valorando las modalidades de influencia, a nivel jurídico y político, que el Sistema Electoral ejerce sobre los procesos electivos contemporáneamente diseñados.</p>\r\n<p>Una vez más invitarlos a visitar nuestra página web <a href="http://derecho.co.cr/v2/ID/index.php?option=com_content&amp;view=frontpage&amp;Itemid=200001" target="_blank">www.iusdoctrina.ucr.ac.cr</a>, que ofrece la versión digital de nuestra revista y recordarles que pueden enviar sus ensayos, así como noticias relevantes de interés a la comunidad jurídica nacional.</p>\r\n<p>M.Sc. Anahí Fajardo Torres</p>\r\n<span style="font-style: italic; font-weight: bold;">Directora Revista Boletín Jurídico Ius Doctrina</span></div>', '', -2, 0, 0, 21, '2013-05-22 15:25:34', 30, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-22 15:25:34', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(33, 98, 'Comentarios sobre los criterios objetivos de fiscalización en materia tributaria', 'comentarios-sobre-los-criterios-objetivos-de-fiscalizacion-en-materia-tributaria', '', '<p>Escrito por Msc. José Roberto Garita Navarro</p>\r\n<p>El artículo estudia la potestad fiscalizadora de la Administración Tributaria, la cual concreta el correcto ejercicio del principio constitucional de contribuir con las cargas públicas.</p>\r\n<p>En esta tarea, las Administraciones Tributarias, sujetas al principio de legalidad establecen criterios objetivos, como los planes anuales de fiscalización, para determinar los sujetos fiscalizados.</p>\r\n<p>No obstante, la potestad de imperio de la Administración permite las fiscalizaciones no previstas en dichos planes cuando existan motivos objetivos y razonables que lo justifiquen. Se debe analizar en cada caso si la medida está debidamente justificada o si atiende a factores infundados y subjetivos.</p>\r\n<p><a href="images/articulos/ed_6/comentarios_criterios.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 20, '2013-05-22 15:26:26', 30, '', '2013-05-22 15:26:34', 30, 0, '0000-00-00 00:00:00', '2013-05-22 15:26:26', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(34, 99, 'El procedimiento electoral en España: Reforma de Ley Electoral de Castilla - La Mancha', 'el-procedimiento-electoral-en-espana-reforma-de-ley-electoral-de-castilla-la-mancha', '', '<p>Escrito por Dra. María Martín Sánchez</p>\r\n<p>El Sistema Electoral de Castilla-La Mancha es un sistema electoral de listas cerradas y bloqueadas, en el que la circunscripción es la provincia, y que se rige por un criterio mixto de representación territorial y poblacional, en atención a la exigencia constitucional del artículo 152.CE. Está regulado en su norma institucional básica, Estatuto de Autonomía de Castilla-La Mancha, y desarrollado mediante la Ley 5/1986, de 23 de diciembre Electoral de Castilla-La Mancha, reformada recientemente por Ley 12/2007, de 8 de noviembre.</p>\r\n<p><a href="images/articulos/ed_6/procedimiento_electoral.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 20, '2013-05-22 15:28:03', 30, '', '2013-05-22 15:28:09', 30, 0, '0000-00-00 00:00:00', '2013-05-22 15:28:03', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(35, 100, 'SIMPLISMO JURÍDICO, ALGUNAS MANIFESTACIONES EN LA JURISDICCIÓN', 'simplismo-juridico-algunas-manifestaciones-en-la-jurisdiccion', '', '<p>El prurito por normativizar las situaciones cotidianas en corpus de leyes, ha llevado a una desmedida producción legislativa y a un consecuente reduccionismo del Derecho, a las normas positivas. Ante una problemática nacional, la respuesta suele ir acompañada de una legeferenda, como si la inclusión de uno o varios presupuestos "de hecho", fueran a moldear la dinámica social. Lo anterior, lleva a dos problemáticas actuales suscitadas, según personal criterio, en el simplismo jurídico: la judicialización de los temas políticos y la producción de resoluciones en sede constitucional de dudosa aplicación en la realidad. Tópicos a los cuales se dedica el desarrollo del presente artículo.</p>\r\n<p><a href="images/articulos/ed_7/simplismo_jurdico.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 21, '2013-05-22 15:28:50', 30, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-22 15:28:50', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(36, 101, 'PERSPECTIVA JURÍDICA DE LAS INUNDACIONES COMO HIPÓTESIS DE RESPONSABILIDAD ADMINISTRATIVA', 'perspectiva-juridica-de-las-inundaciones-como-hipotesis-de-responsabilidad-administrativa', '', '<p>El presente artículo analiza la protección del agua en la legislación y jurisprudencia costarricense desde la perspectiva del derecho urbanístico y abarcando el enfoque del derecho privado y el derecho público, desarrollando aspectos como la tendencia a considerar el recurso hídrico como parte del dominio público y la participación de los gobiernos locales y las comunidades en general para plantear respuestas a temas como la escases del agua y los desastres naturales como problemas jurídicos.</p>\r\n<p><a href="images/articulos/ed_7/perspectiva_juridica.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 21, '2013-05-22 15:29:50', 30, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-22 15:29:50', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(37, 102, 'Algunas consideraciones acerca de la discriminación laboral', 'algunas-consideraciones-acerca-de-la-discriminacion-laboral', '', '<p>Escrito por Licda. Anahí Fajardo Torres</p>\r\n<p>La discriminación laboral en Costa Rica se presenta de varias formas y proviene no solo de las conductas o costumbres socialmente establecidas, sino de la misma ley, en el presente artículo se analiza la normativa internacional establecida por la OIT, la cual promueve la igualdad en el empleo y el trabajo decente, conceptos que también se encuentran consagrados en las normas constitucionales costarricenses y que se complementan con las leyes laborales y las que se encuentran enfocadas a la protección de minorías, además de este análisis, se concluye con la determinación de medidas para la eliminación de la discriminación en la realidad nacional.</p>\r\n<p><a href="images/articulos/ed_6/algunas_consideraciones.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 20, '2013-05-22 15:30:00', 30, '', '2013-05-22 15:30:08', 30, 0, '0000-00-00 00:00:00', '2013-05-22 15:30:00', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `jo_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(38, 103, 'NATURALEZA JURÍDICA DE LA “CONCILIACIÓN” ANTE EL TRIBUNAL AMBIENTAL ADMINISTRATIVO DE LA REPÚBLICA DE COSTA RICA', 'naturaleza-juridica-de-la-conciliacion-ante-el-tribunal-ambiental-administrativo-de-la-republica-de-costa-rica', '', '<p>La transacción y la conciliación son figuras que se encuentran ampliamente desarrolladas en la práctica legal en Costa Rica, sin embargo en el presente artículo se desarrollan desde la perspectiva del Derecho Ambiental, desarrollando la naturaleza del procedimiento de la conciliación en ordenamiento específico y las ventajas que para la salvaguarda del medio ambiente significa.</p>\r\n<p><a href="images/articulos/ed_7/naturaleza_juridica.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 21, '2013-05-22 15:30:49', 30, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-22 15:30:49', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(39, 104, 'MEMORIAS IMPLANTADAS EN VÍCTIMAS DE DELITOS SEXUALES', 'memorias-implantadas-en-victimas-de-delitos-sexuales', '', '<p>Una de las principales inquietudes que presentan las autoridades judiciales a profesionales en peritación psicológica forense, es si la persona que funge como víctima podría haber brindado un relato permeado por lo que se ha llamado "memorias implantadas", constructo que tal como se expondrá no cuenta con criterios que le den sustento válido y científico y que por lo tanto no obtienen respuesta competente desde la Psicología como ciencia.</p>\r\n<p><a href="images/articulos/ed_7/memorias_implantadas_victimas.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 21, '2013-05-22 15:31:48', 30, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-22 15:31:48', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(40, 105, 'El derecho constitucional al Trabajo', 'el-derecho-constitucional-al-trabajo', '', '<p>Escrito por Msc. Hubert May Cantillano</p>\r\n<p>Resumen</p>\r\n<p>El presente artículo se desarrolla un análisis histórico-jurídico del derecho constitucional al trabajo, de esta manera se abarca en un detallado estudio, los alcances del concepto de derecho constitucional al trabajo, además de la manera en que se plasma en la realidad en temas específicos como el salario. El artículo también analiza la jerarquía de los tratados internacionales sobre el tema y su tratamiento en la jurisprudencia nacional.</p>\r\n<p><a href="images/articulos/ed_6/derecho_constitucional.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 20, '2013-05-22 15:33:26', 30, '', '2013-05-22 15:33:33', 30, 0, '0000-00-00 00:00:00', '2013-05-22 15:33:26', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(41, 106, 'EL DESARROLLO DE MEGAPROYECTOS EN TERRITORIOS INDÍGENAS COSTARRICENSES', 'el-desarrollo-de-megaproyectos-en-territorios-indigenas-costarricenses', '', '<p>La presente monografía detalla la dimensión sociojurídica de los derechos de los Pueblos Indígenas costarricenses asentados en los territorios de Térraba, Curré, Boruca, China Kichá, Cabagra, Salitre y Ujarrás, en el marco del desarrollo del Proyecto Hidroeléctrico El Díquis, conocido por sus siglas como PHED, gestionado por el Instituto Costarricense de Electricidad (ICE) en cumplimiento de uno de los objetivos del Proyecto de Integración y Desarrollo de Mesoaméricapara la consolidación del Mercado Eléctrico Regional (MER).</p>\r\n<p><a href="images/articulos/ed_7/desarrollo_megaproyectos.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 21, '2013-05-22 15:34:12', 30, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-22 15:34:12', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(42, 107, 'Justicia restaurativa y garantías en la justicia penal juvenil', 'justicia-restaurativa-y-garantias-en-la-justicia-penal-juvenil', '', '<p>Escrito por Dr. Javier Llobet Rodríguez</p>\r\n<p>El artículo estudia la idea de la justicia restaurativa, como un concepto que enfatiza el papel de la autor y la víctima en la resolución del conflicto. Esta justicia tiene sus orígenes en la forma de resolución de conflictos de los grupos indígenas.</p>\r\n<p>El reconocimiento de la justicia restaurativa en el derecho penal en general (de adultos y menores) obedece al principio educativo que ha implementado ideas de este tipo de justicia en Derecho Penal Juvenil.</p>\r\n<p>En el artículo se hace referencia a los buenos resultados de los proyectos de justicia restaurativa y la relación de esta figura con otros derechos constitucionales, pero advierte del peligro de que su implementación configure una extensión del control social punitivo, sino atiende al principio de proporcionalidad.</p>\r\n<p><a href="images/articulos/ed_6/justicia_restaurativa.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 20, '2013-05-22 15:36:54', 30, '', '2013-05-22 15:37:03', 30, 0, '0000-00-00 00:00:00', '2013-05-22 15:36:54', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(43, 109, 'Editorial', 'editorial', '', '<p>Escrito por M.Sc. Anahi Fajardo Torres</p>\r\n<p><br />Les presentamos el octavo número del Boletín Jurídico Virtual IUS DOCTRINA, esta vez con artículos inéditos en diversas áreas del derecho.</p>\r\n<p>El profesor Ronald Hidalgo Cuadra, nos envía un artículo titulado "La libertad para adquirir conocimiento: El caso de la investigación clínica en seres humanos", donde señala que la actividad científica se somete a la norma jurídica en situaciones de riesgo no aceptables, esto quiere decir que las normas emitidas por el gobierno relacionadas con la investigación en seres humanos son constitucionales, si tienen por finalidad la protección del paciente.</p>\r\n<p>Contaremos con la publicación de Andrei Cambronero Torres, sobre "Medios de comunicación y Estado de Derecho" en el cual se refiere a que la información de los medios de comunicación tiene la capacidad de moldear el pensamiento de los receptores. Trata específicamente el caso de los ilícitos penales, en cuanto a la forma de presentar la noticia y su posible impacto.</p>\r\n<p>Pronto completaremos esta edición como más material actual. Una vez más invitarlos a visitar nuestra página web www.iusdoctrina.ucr.ac.cr, que ofrece la versión digital de nuestra revista y recordarles que pueden enviar sus ensayos, así como noticias relevantes de interés a la comunidad jurídica nacional.</p>\r\n<p>M.Sc. Anahí Fajardo Torres</p>\r\n<p>Directora Revista Boletín Jurídico Ius Doctrina</p>', '', 1, 0, 0, 22, '2013-05-22 15:38:54', 30, '', '2013-05-22 15:39:09', 30, 30, '2013-05-22 16:13:11', '2013-05-22 15:38:54', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(44, 110, 'MEDIOS DE COMUNICACIÓN Y ESTADO DE DERECHO', 'medios-de-comunicacion-y-estado-de-derecho', '', '<p>Escrito por Andrei Cambronero Torres</p>\r\n<p>El manejo de la información es producto social, pero, simultáneamente, crea realidad. Lo escrito en las líneas de un diario o lo dicho frente a un micrófono y una cámara, tiene la capacidad de moldear el pensamiento de los receptores. En ese tanto, la forma de construir el mensaje y su contenido se yerguen como pasos determinantes en el proceso de comunicación masiva; específicamente, en las informaciones relacionados con ilícitos penales, la forma de presentar la noticia puede, de manera inocente o premeditada, lesionar los derechos fundamentales de las víctimas y los imputados.</p>\r\n<p><a href="images/articulos/ed_8/medios%20comunicacion.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 22, '2013-05-22 15:40:43', 30, '', '2013-05-22 15:40:51', 30, 30, '2013-05-22 15:48:36', '2013-05-22 15:40:43', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(45, 111, 'DUALIDAD JURÍDICA Y POLÍTICA DEL SISTEMA ELECTRORAL', 'dualidad-juridica-y-politica-del-sistema-electroral', '', '<p>Escrito por Mario Matarrita Arroyo</p>\r\n<p>El artículo valora las modalidades de influencia, en un nivel jurídico y político, que el Sistema Electoral ejerce sobre los procesos electivos contemporáneamente diseñados. Los términos representación política, gobernabilidad y legitimidad son atemperados, a la vez que detallados, en la concepción dicotómica derecho/política.</p>\r\n<p><a href="images/articulos/ed_8/dualidad_juridica.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 22, '2013-05-22 15:43:34', 30, '', '2013-05-22 15:43:51', 30, 30, '2013-05-22 15:48:14', '2013-05-22 15:43:34', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(46, 112, 'CRÓNICA DE INVESTIGACIÓN CLINICA EN SERES HUMANOS', 'cronica-de-investigacion-clinica-en-seres-humanos', '', '<p>Escrito por Ronald Hidalgo Cuadra</p>\r\n<p>El sometimiento de la actividad científica a la norma jurídica se presenta ante situaciones en las que exista un nivel de riesgo no aceptable. Esto quiere decir que las normas emitidas por el Gobierno o por los grupos científicos comprometidos con la investigación clínica en seres humanos, que tengan por finalidad la protección del paciente, son constitucionales, aunque falte una ley que proteja sus derechos. La Sala Constitucional de Costa Rica entiende que sólo la ley puede ser la herramienta permitida por la Constitución.</p>\r\n<p><a href="images/articulos/ed_8/cronica%20de%20investigacion%20clinica%20en%20seres%20humanos.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 22, '2013-05-22 15:45:16', 30, '', '2013-05-22 15:45:24', 30, 30, '2013-05-22 15:47:55', '2013-05-22 15:45:16', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(47, 113, 'EL ‘ESTADO DE NATURALEZA’ Y LOS FILÓSOFOS DEL DERECHO', 'el-estado-de-naturaleza-y-los-filosofos-del-derecho', '', '<p>Escrito por Dante Figueroa</p>\r\n<p>El artículo estudia la filosofía de Edmundo Burke para invitarnos a releer las importantes filosofías políticas y jurídicas que intentaron explicar importantes conceptos, tales como la esencia de la naturaleza humana, la supuesta idea del ''Estado de Naturaleza'', el contrato social, los ''derechos naturales'' del hombre, y la legitimidad democrática.</p>\r\n<p><a href="images/articulos/ed_8/el%20estado%20de%20naturaleza.pdf">Descargar artículo completo aquí.</a></p>', '', 1, 0, 0, 22, '2013-05-22 15:47:27', 30, '', '2013-05-22 15:47:36', 30, 0, '0000-00-00 00:00:00', '2013-05-22 15:47:27', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(48, 114, 'Jurisprudencia Catedra Constitucional', 'jurisprudencia-catedra-constitucional', '', '<h1 style="text-align: center;"><strong><a href="http://derecho.co.cr/v2/ID/images/catedra/ndice%20de%20jurisprudencia%20constitucional.pdf" target="_blank">Índice de jurisprudencia constitucional</a></strong></h1>\r\n<p style="text-align: center;"><strong>&nbsp;</strong></p>\r\n<h2 style="text-align: center;"><strong><span style="color: #000000;">Antología Jurisprudencia constitucional I-2012&nbsp;</span> </strong></h2>\r\n<p style="text-align: center;"><strong><span style="color: #000000;"><strong style="text-align: center;">Presione en cada título para descargar su contenido.</strong></span></strong>&nbsp;</p>\r\n<ol>\r\n<li>\r\n<p><a href="images/catedras/jurisprudencia_constitucional/2012/1-%20el%20sistema%20normativo.zip" target="_blank">EL SISTEMA NORMATIVO </a></p>\r\n</li>\r\n<li>\r\n<p><a href="images/catedras/jurisprudencia_constitucional/2012/2-%20constitucionderecho_constitucional_y_constitucionalismo.zip" target="_blank">CONSTITUCIÓN, DERECHO CONSTITUCIONAL Y CONSTITUCIONALISMO </a></p>\r\n</li>\r\n<li>\r\n<p><a href="images/catedras/jurisprudencia_constitucional/2012/3-%20concepto%20y%20formas%20de%20estado.zip" target="_blank">CONCEPTO Y FORMAS DE ESTADO </a></p>\r\n</li>\r\n<li>\r\n<p><a href="images/catedras/jurisprudencia_constitucional/2012/4-%20el%20principio%20de%20divisin%20de%20poderes.zip" target="_blank">El principio de división de poderes </a></p>\r\n</li>\r\n<li>\r\n<p><a href="images/catedras/jurisprudencia_constitucional/2012/5-%20las%20formas%20de%20gobierno.zip">Las formas de gobierno </a></p>\r\n</li>\r\n<li>\r\n<p><a href="images/catedras/jurisprudencia_constitucional/2012/6-%20introduccin%20a%20la%20teora%20de%20la%20constitucin_sobre%20la%20supremaca%20constitucional.zip" target="_blank">INTRODUCCIÓN A LA TEORÍA DE LA CONSTITUCIÓN_SOBRE LA SUPREMACÍA CONSTITUCIONAL</a></p>\r\n</li>\r\n<li>\r\n<p><a href="images/catedras/jurisprudencia_constitucional/2012/7-%20la%20reforma%20constitucional%20y%20el%20poder%20constituyente.zip">La Reforma Constitucional Y El Poder COnstituyente</a></p>\r\n</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<h2 style="text-align: center;"><strong><span style="color: #000000;">&nbsp;</span></strong></h2>\r\n<h2 style="text-align: center;"><strong><span style="color: #000000;">Antología&nbsp;</span></strong><strong style="line-height: 1.3em;"><span style="color: #000000;">Jurisprudencia constitucional I- 2011</span></strong></h2>\r\n<p style="text-align: center;"><strong style="line-height: 1.3em;"><span style="color: #000000;"><strong style="text-align: center;"><span style="color: #000000;"><strong>Presione en cada título para descargar su contenido.</strong></span></strong></span></strong></p>\r\n<ol>\r\n<li>\r\n<p><a href="http://derecho.co.cr/v2/ID/images/catedra/sistema%20normativo.zip" target="_blank">EL SISTEMA NORMATIVO</a></p>\r\n</li>\r\n<li>\r\n<p><a href="http://derecho.co.cr/v2/ID/images/catedra/constitucin%20derecho%20constitucional%20y%20constitucionalismo.zip" target="_blank">CONSTITUCIÓN, DERECHO CONSTITUCIONAL Y CONSTITUCIONALISMO</a></p>\r\n</li>\r\n<li>\r\n<p><a href="http://derecho.co.cr/v2/ID/images/catedra/concepto%20y%20formas%20de%20estado.zip" target="_blank">CONCEPTO Y FORMAS DE ESTADO</a></p>\r\n</li>\r\n<li>\r\n<p><a href="http://derecho.co.cr/v2/ID/images/catedra/principio%20de%20divisin%20de%20poderes.zip" target="_blank">El principio de división de poderes </a></p>\r\n</li>\r\n<li>\r\n<p><a href="http://derecho.co.cr/v2/ID/images/catedra/formas%20de%20gobierno.zip" target="_blank">Las formas de gobierno </a></p>\r\n</li>\r\n<li>\r\n<p><a href="http://derecho.co.cr/v2/ID/images/catedra/reformas%20constitucionales.zip" target="_blank">Reformas Constitucionales </a></p>\r\n</li>\r\n<li>\r\n<p><a href="http://derecho.co.cr/v2/ID/images/catedra/introduccin%20a%20la%20teora%20de%20la%20constitucin.zip" target="_blank">Introducción a la teoría de la constitución </a></p>\r\n</li>\r\n<li>\r\n<p><a href="http://derecho.co.cr/v2/ID/images/catedra/proyecto%20de%20reforma.pdf" target="_blank">Proyecto de Reforma de la ley de la jurisdicción constitucional</a></p>\r\n</li>\r\n<li>\r\n<p><a href="http://derecho.co.cr/v2/ID/images/catedra/estatuto%20de%20la%20corte%20centroamericana%20de%20justicia.pdf" target="_blank">ESTATUTO DE LA CORTE CENTROAMERICANA DE JUSTICIA </a></p>\r\n</li>\r\n<li>\r\n<p><a href="http://derecho.co.cr/v2/ID/images/catedra/protocolo_de_tegucigalpa_a_la_carta_de_la_organizacion_de_estados_centroamericanos_odeca1.pdf" target="_blank">PROTOCOLO DE TEGUCIGALPA A LA CARTA DE LA ORGANIZACION DE ESTADOS CENTROAMERlCANOS (ODECA) </a></p>\r\n</li>\r\n<li>\r\n<p><a href="http://derecho.co.cr/v2/ID/images/catedra/enmienda_al_protocolo_de_tegucigalpa_a_la_carta_de_la_organizacion_de_estados_centroamericanos_odeca1.pdf" target="_blank">ENMIENDA AL PROTOCOLO DE TEGUCIGALPA A LA CARTA DE LA ORGANIZACION DE ESTADOS CENTROAMERlCANOS (ODECA) </a></p>\r\n</li>\r\n<li>\r\n<p><a href="http://derecho.co.cr/v2/ID/images/catedra/programa-seminario%20internacional.pdf">PROGRAMA - Seminario Internacional - “Separación de Poderes del Estado y la Doctrina de la Cuestión Política en los Estados Unidos de América” </a></p>\r\n</li>\r\n</ol>', '', 1, 0, 0, 28, '2013-05-22 16:49:31', 30, '', '2013-05-22 17:27:18', 30, 0, '0000-00-00 00:00:00', '2013-05-22 16:49:31', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 13, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(49, 115, 'Derecho constitucional', 'derecho-constitucional', '', '<p style="text-align: center;"><strong>Presione en cada título para descargar su contenido.</strong></p>\r\n<ol>\r\n<li><a href="images/catedras/derecho_constitucional/sentencia_2313-%2095.pdf" target="_blank">Sentencia 2313- 95</a></li>\r\n<li><a href="images/catedras/derecho_constitucional/sentencia_5206-2004.pdf" target="_blank">Sentencia 5206-2004</a></li>\r\n</ol>', '', 1, 0, 0, 29, '2013-05-22 17:31:00', 30, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-22 17:31:00', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(50, 116, 'Contratos Comerciales', 'contratos-comerciales', '', '<p style="text-align: center;"><strong style="font-family: Arial, Helvetica, sans-serif; line-height: 17.328125px; text-align: center;">Presione en cada título para descargar su contenido.</strong></p>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li>\r\n<h3 style="color: #333333; font-family: Arial, Helvetica, sans-serif; line-height: 16px;"><a href="images/catedras/contratos_comerciales/antologia_2010_victor_perez.zip">Antología Contratos Comerciales Internacionales</a></h3>\r\n</li>\r\n</ol>\r\n<p>&nbsp;</p>', '', 1, 0, 0, 30, '2013-05-22 17:33:55', 30, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-22 17:33:55', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(51, 117, 'Reglas para el servicio', 'reglas-para-el-servicio', '', '<p style="text-align: center;"><strong style="font-family: Arial, Helvetica, sans-serif; line-height: 17.328125px; text-align: center;">Presione en cada título para descargar su contenido.</strong></p>\r\n<ol>\r\n<li style="text-align: justify;"><a href="images/catedras/reglas_servicio/reglas%20para%20el%20servicio.pdf"><strong style="font-family: Arial, Helvetica, sans-serif; line-height: 17.328125px; text-align: center;">Reglas para el servicio</strong></a></li>\r\n</ol>', '', 1, 0, 0, 31, '2013-05-22 17:35:21', 30, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-05-22 17:35:21', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(52, 118, 'Noticias en Construcción', 'noticias-en-construccion', '', '<p style="text-align: justify;">Ésta área pronto estará disponible.</p>', '', 1, 0, 0, 8, '2013-05-23 16:23:26', 30, '', '2013-05-23 16:26:47', 30, 0, '0000-00-00 00:00:00', '2013-05-23 16:23:26', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 0, '', '', 1, 12, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(53, 119, 'GLIN en Construcción', 'glin-en-construccion', '', '<p style="text-align: justify;">Ésta área pronto estará disponible.</p>', '', 1, 0, 0, 2, '2013-05-23 16:24:02', 30, '', '2013-05-23 16:26:17', 30, 0, '0000-00-00 00:00:00', '2013-05-23 16:24:02', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 0, '', '', 1, 12, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `jo_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_content_rating`
--

CREATE TABLE IF NOT EXISTS `jo_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `jo_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_djimageslider`
--

CREATE TABLE IF NOT EXISTS `jo_djimageslider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `jo_djimageslider`
--

INSERT INTO `jo_djimageslider` (`id`, `catid`, `title`, `alias`, `image`, `description`, `published`, `publish_up`, `publish_down`, `checked_out`, `checked_out_time`, `ordering`, `params`) VALUES
(1, 13, 'Entrada Principal', 'entrada-principal', 'images/noticias/200113 B.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 2, '{"link_type":"","link_menu":"101","link_url":"","link_article":"","link_target":""}'),
(2, 13, 'Facultad de Derecho', 'facultad-de-derecho', 'images/noticias/fac_derecho.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1, '{"link_type":"url","link_menu":"120","link_url":"http:\\/\\/www.derecho.ucr.ac.cr","link_article":"","link_target":""}'),
(3, 13, 'Nuestro Edificio', 'nuestro-edificio', 'images/noticias/Derecho_1_6.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 3, '{"link_type":"","link_menu":"101","link_url":"","link_article":"","link_target":""}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_extensions`
--

CREATE TABLE IF NOT EXISTS `jo_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10008 ;

--
-- Volcado de datos para la tabla `jo_extensions`
--

INSERT INTO `jo_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"contact_layout":"_:default","show_contact_category":"hide","show_contact_list":"0","presentation_style":"plain","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"1","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"0","show_cat_items":"0","show_base_description":"0","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"0","show_cat_items_cat":"0","show_pagination_limit":"1","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","captcha":"","show_email_form":"1","show_email_copy":"0","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"es-ES","site":"es-ES"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"target":"1","count_clicks":"0","icons":1,"link_icons":"","category_layout":"_:default","show_category_title":"1","show_description":"0","show_description_image":"0","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"0","show_cat_num_links":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"0","show_cat_num_links_cat":"1","show_pagination_limit":"0","show_headings":"0","show_link_description":"0","show_link_hits":"0","show_pagination":"1","show_pagination_results":"1","show_feed_link":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"0","show_intro":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"0","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"0","show_subcat_desc":"0","show_cat_num_articles":"0","show_base_description":"0","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"0","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"0","filter_field":"title","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"0","list_show_author":"0","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{"updatesource":"lts","customurl":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"11.4","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2013","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.4.1","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"es","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `jo_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.10","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.10","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(604, 'Español (Formal Internacional)', 'language', 'es-ES', '', 1, 1, 1, 0, '{"legacy":false,"name":"Espa\\u00f1ol (Formal Internacional)","type":"language","creationDate":"2013-04-04","author":"Proyecto Joomla! Spanish","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. Todos los derechos reservados.","authorEmail":"joomlaspanish@joomlaspanish.org","authorUrl":"www.joomlaspanish.org","version":"2.5.10","description":"es-ES idioma administrador para Joomla 2.5","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(605, 'Español (España)', 'language', 'es-ES', '', 0, 1, 1, 0, '{"legacy":false,"name":"Espa\\u00f1ol (Espa\\u00f1a)","type":"language","creationDate":"2013-04-04","author":"Joomla! Spanish","copyright":"Copyright (C) 2005 - 2013 Open Source Matters & joomlaspanish.org. All rights reserved.","authorEmail":"joomlaspanish@joomlaspanish.org","authorUrl":"www.joomlaspanish.org","version":"2.5.10","description":"es-ES Idiomas parte frontend Joomla 2.5 por www.joomlaspanish.org","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"April 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.11","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'com_djimageslider', 'component', 'com_djimageslider', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_djimageslider","type":"component","creationDate":"August 2012","author":"DJ-Extensions.com","copyright":"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"2.1.b2","description":"DJ-ImageSlider component","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'DJ-ImageSlider', 'module', 'mod_djimageslider', '', 0, 1, 0, 0, '{"legacy":false,"name":"DJ-ImageSlider","type":"module","creationDate":"August 2012","author":"DJ-Extensions.com","copyright":"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"2.1.b2","description":"DJ-ImageSlider Module","group":""}', '{"slider_source":"0","slider_type":"0","link_image":"1","image_folder":"images\\/sampledata\\/fruitshop","link":"","show_title":"1","show_desc":"1","show_readmore":"0","readmore_text":"","link_title":"1","link_desc":"0","limit_desc":"","image_width":"240","image_height":"180","fit_to":"0","visible_images":"3","space_between_images":"10","max_images":"20","sort_by":"1","effect":"Expo","autoplay":"1","show_buttons":"1","show_arrows":"1","show_custom_nav":"0","desc_width":"","desc_bottom":"0","desc_horizontal":"0","left_arrow":"","right_arrow":"","play_button":"","pause_button":"","arrows_top":"30","arrows_horizontal":"5","effect_type":"0","duration":"","delay":"","preload":"800","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'dj-imageslider', 'package', 'pkg_dj-imageslider', '', 0, 1, 1, 0, '{"legacy":false,"name":"DJ-ImageSlider Package","type":"package","creationDate":"August 2012","author":"DJ-Extensions.com","copyright":"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"2.1.b1","description":"\\n\\t\\t<style> #right-text {font-family:Arial, Helvetica, sans-serif;\\tfont-size:11px;\\t} #right-text a:link, #right-text a:visited {color:#4991c1;font-weight:bold; font-size: 13px;} #right-text a:hover {text-decoration:underline;}\\t#right-text h2 {color:#fa9539;text-transform:uppercase;\\tfont-size:16px;\\tpadding:0;\\tmargin:2px 0;}\\t#right-text p {padding:0;margin:4px 0;}\\t#left-logo {float:left;width:270px;height:120px;display:block;} #left-logo img {margin: 40px 20px;} #right-text {float:left;width:400px;}<\\/style>\\n\\t\\n\\t\\t<div id=\\"left-logo\\">\\n\\t\\t\\t<a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\"><img src=\\"http:\\/\\/new.dj-extensions.com\\/templates\\/dj-extensions\\/images\\/logo.png\\" alt=\\"DJ-Extensions.com\\" \\/><\\/a>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\\t<div id=\\"right-text\\">\\n\\t\\t\\t<h2>Thank you for installing DJ-ImageSlider!<\\/h2>\\n\\t\\t\\t<p>The DJ-ImageSlider extension allows you to display image slides with title and short description linked to any menu item, article or custom url address.<\\/p>\\n\\t\\t\\t<p>If you want to learn how to use DJ-ImageSlider please read <a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\/documentation\\">Documentation<\\/a> and search our <a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\/forum\\">Support Forum<\\/a><br \\/><br \\/>Check out our other extensions at <a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\">DJ-Extensions.com<\\/a><\\/p>\\n\\t\\t<\\/div>\\n\\t\\n\\t\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'Remove white space ', 'plugin', 'rwsanp', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"Remove white space ","type":"plugin","creationDate":"May 2012","author":"Asianetpardaz.com","copyright":"Copyright (C) 2012 - 2013 Asianetpardaz. All rights reserved.","authorEmail":"info@asianetpardaz.com","authorUrl":"www.asianetpardaz.com","version":"1.8.0","description":"Asia net Pardaz  - Remove white space from Joomla 1.6 and 1.7 - 2.5","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors_jce","type":"plugin","creationDate":"27 March 2013","author":"Ryan Demmer","copyright":"2006-2010 Ryan Demmer","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.3.2.4","description":"WF_EDITOR_PLUGIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'plg_quickicon_jcefilebrowser', 'plugin', 'jcefilebrowser', 'quickicon', 0, 1, 1, 0, '{"legacy":false,"name":"plg_quickicon_jcefilebrowser","type":"plugin","creationDate":"27 March 2013","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved","authorEmail":"@@email@@","authorUrl":"www.joomalcontenteditor.net","version":"2.3.2.4","description":"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'jce', 'component', 'com_jce', '', 1, 1, 0, 0, '{"legacy":false,"name":"JCE","type":"component","creationDate":"27 March 2013","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"www.joomlacontenteditor.net","version":"2.3.2.4","description":"WF_ADMIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'UCR2', 'template', 'ucr2', '', 0, 1, 1, 0, '{"legacy":true,"name":"UCR 2","type":"template","creationDate":"27\\/08\\/2012","author":"Esteban Aguilar Barrantes - basada en diseno de Jorge Zeledon","copyright":"","authorEmail":"esteban.aguilar@ucr.ac.cr","authorUrl":"http:\\/\\/www.odi.ucr.ac.cr","version":"2.24","description":"Plantilla Sitios UCR ver. 2.24","group":""}', '{"dimensiones":"mediano","ancho_fijo":"no","ancho":"930","alto_pestana":"0","menu_acordeon":"no","listas_estilo":"no","nombre_sitio_izquierda":"si"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_filters`
--

CREATE TABLE IF NOT EXISTS `jo_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_links`
--

CREATE TABLE IF NOT EXISTS `jo_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `jo_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `jo_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `jo_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `jo_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `jo_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `jo_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `jo_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `jo_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `jo_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `jo_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `jo_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `jo_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `jo_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `jo_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `jo_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `jo_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `jo_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `jo_finder_taxonomy`
--

INSERT INTO `jo_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `jo_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_terms`
--

CREATE TABLE IF NOT EXISTS `jo_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `jo_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jo_finder_terms_common`
--

INSERT INTO `jo_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `jo_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `jo_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_finder_types`
--

CREATE TABLE IF NOT EXISTS `jo_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_languages`
--

CREATE TABLE IF NOT EXISTS `jo_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `jo_languages`
--

INSERT INTO `jo_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1),
(3, 'es-ES', 'Español (Formal Internacional) (ES)', 'Español (Formal Internacional) (ES)', 'es', 'es', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_menu`
--

CREATE TABLE IF NOT EXISTS `jo_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=133 ;

--
-- Volcado de datos para la tabla `jo_menu`
--

INSERT INTO `jo_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 101, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 5, 14, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 6, 7, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categorías', '', 'Banners/Categorías', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 8, 9, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clientes', '', 'Banners/Clientes', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 10, 11, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 12, 13, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contactos', '', 'Contactos', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 37, 42, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contactos', '', 'Contactos/Contactos', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 38, 39, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categorías', '', 'Contactos/Categorías', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 40, 41, 0, '*', 1),
(10, 'menu', 'com_messages', 'Mensajes', '', 'Mensajes', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 43, 48, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'Nuevo mensaje privado', '', 'Mensajes/Nuevo mensaje privado', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 44, 45, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Leer mensaje privado', '', 'Mensajes/Leer mensaje privado', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 46, 47, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'Noticias Feeds', '', 'Noticias Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 49, 54, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'Noticias Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 50, 51, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categorías', '', 'Noticias Feeds/Categorías', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 52, 53, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redireccionar', '', 'Redireccionar', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 63, 64, 0, '*', 1),
(17, 'menu', 'com_search', 'Buscar', '', 'Buscar', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 55, 56, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Enlaces', '', 'Enlaces', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 57, 62, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Enlaces web', '', 'Enlaces/Enlaces web', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 58, 59, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categorías', '', 'Enlaces/Categorías', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 60, 61, 0, '*', 1),
(21, 'menu', 'com_finder', 'Búsqueda inteligente', '', 'Búsqueda inteligente', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 67, 68, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Actualizar Joomla!', '', 'Actualizar Joomla!', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 65, 66, 0, '*', 1),
(101, 'mainmenu', 'Inicio', 'home', '', 'home', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 1, 2, 1, '*', 0),
(102, 'mainmenu', 'Consejo Editorial', '2013-05-21-20-01-51', '', '2013-05-22-20-42-35/2013-05-21-20-01-51', 'index.php?option=com_content&view=article&id=2', 'component', -2, 127, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 16, 17, 0, '*', 0),
(103, 'mainmenu', 'Artículos', 'articulos', '', 'articulos', 'index.php?option=com_content&view=category&id=9', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_heading_title_text":"0","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 3, 4, 0, '*', 0),
(104, 'mainmenu', 'IUS Noticias', 'ius-noticias', '', 'ius-noticias', 'index.php?option=com_content&view=article&id=52', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 21, 22, 0, '*', 0),
(105, 'mainmenu', 'Enlaces', 'enlaces', '', 'enlaces', 'index.php?option=com_weblinks&view=categories&id=0', 'component', 1, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"","categories_description":"","maxLevelcat":"-1","show_empty_categories_cat":"","show_subcat_desc_cat":"","show_cat_num_links_cat":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_subcat_desc":"","show_cat_num_links":"","show_pagination_limit":"","show_headings":"","show_link_description":"","show_link_hits":"","show_pagination":"","show_pagination_results":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 25, 26, 0, '*', 0),
(106, 'mainmenu', 'Contacto', 'contacto', '', 'contacto', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"presentation_style":"","show_contact_category":"","show_contact_list":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 29, 30, 0, '*', 0),
(107, 'mainmenu', 'Cátedras', 'catedras', '', 'catedras', 'index.php?option=com_content&view=category&id=10', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 23, 24, 0, '*', 0),
(109, 'mainmenu', 'Requisitos para publicar', '2013-05-21-20-04-43', '', '2013-05-22-20-42-35/2013-05-21-20-04-43', 'index.php?option=com_content&view=article&id=3', 'component', -2, 127, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 18, 19, 0, '*', 0),
(110, 'mainmenu', 'GLIN UCR', 'glin-ucr', '', 'glin-ucr', 'index.php?option=com_content&view=article&id=53', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 27, 28, 0, '*', 0),
(111, 'main', 'COM_DJIMAGESLIDER', 'com-djimageslider', '', 'com-djimageslider', 'index.php?option=com_djimageslider', 'component', 0, 1, 1, 10000, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_djimageslider/assets/icon-16-djimageslider.png', 0, '', 69, 74, 0, '', 1),
(112, 'main', 'COM_DJIMAGESLIDER_SLIDES', 'com-djimageslider-slides', '', 'com-djimageslider/com-djimageslider-slides', 'index.php?option=com_djimageslider&view=items', 'component', 0, 111, 2, 10000, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_djimageslider/assets/icon-16-menu-slides.png', 0, '', 70, 71, 0, '', 1),
(113, 'main', 'COM_DJIMAGESLIDER_CATEGORIES', 'com-djimageslider-categories', '', 'com-djimageslider/com-djimageslider-categories', 'index.php?option=com_categories&extension=com_djimageslider', 'component', 0, 111, 2, 10000, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:category', 0, '', 72, 73, 0, '', 1),
(114, 'main', 'JCE', 'jce', '', 'jce', 'index.php?option=com_jce', 'component', 0, 1, 1, 10006, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, '', 75, 84, 0, '', 1),
(115, 'main', 'WF_MENU_CPANEL', 'wf-menu-cpanel', '', 'jce/wf-menu-cpanel', 'index.php?option=com_jce', 'component', 0, 114, 2, 10006, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-cpanel.png', 0, '', 76, 77, 0, '', 1),
(116, 'main', 'WF_MENU_CONFIG', 'wf-menu-config', '', 'jce/wf-menu-config', 'index.php?option=com_jce&view=config', 'component', 0, 114, 2, 10006, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-config.png', 0, '', 78, 79, 0, '', 1),
(117, 'main', 'WF_MENU_PROFILES', 'wf-menu-profiles', '', 'jce/wf-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 0, 114, 2, 10006, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-profiles.png', 0, '', 80, 81, 0, '', 1),
(118, 'main', 'WF_MENU_INSTALL', 'wf-menu-install', '', 'jce/wf-menu-install', 'index.php?option=com_jce&view=installer', 'component', 0, 114, 2, 10006, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-install.png', 0, '', 82, 83, 0, '', 1),
(119, 'ediciones', 'Volumen No. II', 'volumen-no-ii', '', 'volumen-no-ii', 'index.php?option=com_content&view=category&id=16', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 33, 34, 0, '*', 0),
(120, 'ediciones', 'Volumen No. I', 'volumen-no-i', '', 'volumen-no-i', 'index.php?option=com_content&view=category&id=15', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 31, 32, 0, '*', 0),
(121, 'ediciones', 'Volumen No. III', 'volumen-no-iii', '', 'volumen-no-iii', 'index.php?option=com_content&view=category&id=17', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 35, 36, 0, '*', 0),
(122, 'ediciones', 'Volumen No. IV', 'volumen-no-iv', '', 'volumen-no-iv', 'index.php?option=com_content&view=category&id=18', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 85, 86, 0, '*', 0),
(123, 'ediciones', 'Volumen No. V', 'volumen-no-v', '', 'volumen-no-v', 'index.php?option=com_content&view=category&id=19', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 87, 88, 0, '*', 0),
(124, 'ediciones', 'Volumen No. VI', 'volumen-no-vi', '', 'volumen-no-vi', 'index.php?option=com_content&view=category&id=20', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 89, 90, 0, '*', 0),
(125, 'ediciones', 'Volumen No. VII', 'volumen-no-vii', '', 'volumen-no-vii', 'index.php?option=com_content&view=category&id=21', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 91, 92, 0, '*', 0),
(126, 'ediciones', 'Volumen No. VIII', 'volumen-no-viii', '', 'volumen-no-viii', 'index.php?option=com_content&view=category&id=22', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 93, 94, 0, '*', 0),
(127, 'mainmenu', 'Editorial', '2013-05-22-20-42-35', '', '2013-05-22-20-42-35', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 15, 20, 0, '*', 0),
(130, 'mainmenu', 'Requisitos para publicar', '2013-05-21-20-04-43', '', '2013-05-21-20-04-43', 'index.php?option=com_content&view=article&id=3', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 95, 96, 0, '*', 0),
(131, 'editorial', 'Consejo Editorial', 'consejo-editorial', '', 'consejo-editorial', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 97, 98, 0, '*', 0),
(132, 'editorial', 'Requisitos para publicar', 'requisitos-para-publicar', '', 'requisitos-para-publicar', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 99, 100, 0, '*', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_menu_types`
--

CREATE TABLE IF NOT EXISTS `jo_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `jo_menu_types`
--

INSERT INTO `jo_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Menú Principal', 'El menú principal del sitio'),
(2, 'ediciones', 'Ediciones', ''),
(3, 'editorial', 'Editorial', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_messages`
--

CREATE TABLE IF NOT EXISTS `jo_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `jo_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_modules`
--

CREATE TABLE IF NOT EXISTS `jo_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=91 ;

--
-- Volcado de datos para la tabla `jo_modules`
--

INSERT INTO `jo_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Menú Principal', '', '', 1, 'izquierda_arriba', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 'Acceso', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Artículos populares', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 'Últimos artículos añadidos', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 'Barra de herramientas', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Iconos rápidos', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Usuarios conectados', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '', 1, '*'),
(12, 'Menú Administrador', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Submenú Administrador', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'Estado usuarios', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Título', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Formulario de acceso', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 'Ruta', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"Inicio","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(18, 'Anuncio', '', '', 1, 'position-10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_banners', 1, 0, '{"target":"1","count":"1","cid":"3","catid":[""],"tag_search":"0","ordering":"0","header_text":"","footer_text":"Cursos Online","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(79, 'Estatus Multilenguaje', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Versión de Joomla', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 'Noticias Actuales', '', '', 1, 'logo', 30, '2013-05-24 14:21:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_djimageslider', 1, 1, '{"slider_source":"1","slider_type":"0","link_image":"1","image_folder":"images\\/sampledata\\/fruitshop","link":"","category":"13","show_title":"1","show_desc":"1","show_readmore":"0","readmore_text":"","link_title":"1","link_desc":"0","limit_desc":"","image_width":"284","image_height":"212","fit_to":"0","visible_images":"3","space_between_images":"10","max_images":"20","sort_by":"1","effect":"Expo","autoplay":"1","show_buttons":"0","show_arrows":"1","show_custom_nav":"1","desc_width":"","desc_bottom":"0","desc_horizontal":"0","left_arrow":"","right_arrow":"","play_button":"","pause_button":"","arrows_top":"30","arrows_horizontal":"5","effect_type":"0","duration":"","delay":"","preload":"800","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(88, 'Buscador', '', '', 1, 'arriba_derecha', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 0, '{"label":"","width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(89, 'Ediciones', '', '', 1, 'derecha', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"ediciones","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(90, 'Editorial', '', '', 1, 'izquierda_arriba', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"editorial","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_modules_menu`
--

CREATE TABLE IF NOT EXISTS `jo_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jo_modules_menu`
--

INSERT INTO `jo_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 101),
(88, 0),
(89, 0),
(90, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `jo_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'Una referencia para los vínculos a datos externos conjuntos.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_overrider`
--

CREATE TABLE IF NOT EXISTS `jo_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_redirect_links`
--

CREATE TABLE IF NOT EXISTS `jo_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_schemas`
--

CREATE TABLE IF NOT EXISTS `jo_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jo_schemas`
--

INSERT INTO `jo_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.11'),
(10000, '2.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_session`
--

CREATE TABLE IF NOT EXISTS `jo_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jo_session`
--

INSERT INTO `jo_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('68d3740d5255b19b40597c4fa593a056', 0, 1, '1442856572', '__default|a:7:{s:22:"session.client.browser";s:103:"Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36";s:15:"session.counter";i:4;s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:0:{}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:1:{i:0;i:1;}s:14:"\0*\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:19:"session.timer.start";i:1442856443;s:18:"session.timer.last";i:1442856463;s:17:"session.timer.now";i:1442856572;}', 0, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_template_styles`
--

CREATE TABLE IF NOT EXISTS `jo_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `jo_template_styles`
--

INSERT INTO `jo_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Defecto', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(7, 'ucr2', 0, '1', 'UCR2 - Defecto', '{"dimensiones":"mediano","ancho_fijo":"no","ancho":"930","alto_pestana":"0","menu_acordeon":"si","listas_estilo":"si","nombre_sitio_izquierda":"no"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_updates`
--

CREATE TABLE IF NOT EXISTS `jo_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Actualizaciones disponibles' AUTO_INCREMENT=145 ;

--
-- Volcado de datos para la tabla `jo_updates`
--

INSERT INTO `jo_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(1, 3, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(2, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(3, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(4, 3, 0, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/km-KH_details.xml', ''),
(5, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(6, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(7, 3, 0, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/bg-BG_details.xml', ''),
(8, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(9, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(10, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(11, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(12, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(13, 3, 0, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/uk-UA_details.xml', ''),
(14, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(15, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(16, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(17, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(18, 3, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(19, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(20, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(21, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(22, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(23, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(24, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(25, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.9.2', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(26, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(27, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(28, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(29, 3, 0, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/lt-LT_details.xml', ''),
(30, 3, 0, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '2.5.1.5', '', 'http://update.joomla.org/language/details/sq-AL_details.xml', ''),
(31, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(32, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(33, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(34, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(35, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(36, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(37, 3, 0, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/he-IL_details.xml', ''),
(38, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(39, 3, 0, 0, 'Laotian', '', 'pkg_lo-LA', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/lo-LA_details.xml', ''),
(40, 3, 0, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/af-ZA_details.xml', ''),
(41, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(42, 3, 0, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/el-GR_details.xml', ''),
(43, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(44, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(45, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(46, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(47, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(48, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(49, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(50, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(51, 3, 0, 0, 'Azeri', '', 'pkg_az-AZ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/az-AZ_details.xml', ''),
(52, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(53, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(54, 3, 0, 0, 'Scottish Gaelic', '', 'pkg_gd-GB', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gd-GB_details.xml', ''),
(55, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(56, 3, 0, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '1.7.0.1', '', 'http://update.joomla.org/language/details/eu-ES_details.xml', ''),
(57, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(58, 3, 0, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/ko-KR_details.xml', ''),
(59, 3, 0, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/hi-IN_details.xml', ''),
(60, 3, 0, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/cy-GB_details.xml', ''),
(61, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(62, 1, 700, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(63, 3, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.28.3', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(64, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(65, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(66, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(67, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(68, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(69, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(70, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(71, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(72, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(73, 3, 0, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '2.5.13.11', '', 'http://update.joomla.org/language/details/uk-UA_details.xml', ''),
(74, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(75, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(76, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(77, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(78, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(79, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(80, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(81, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(82, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(83, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(84, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.22.2', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(85, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(86, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(87, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(88, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(89, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(90, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(91, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(92, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(93, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(94, 3, 0, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/af-ZA_details.xml', ''),
(95, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(96, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(97, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(98, 3, 0, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '2.5.0.1', '', 'http://update.joomla.org/language/details/bn-BD_details.xml', ''),
(99, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(100, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(101, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(102, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(103, 3, 0, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ko-KR_details.xml', ''),
(104, 3, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.28.3', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(105, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(106, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(107, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(108, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(109, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(110, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(111, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(112, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(113, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(114, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(115, 3, 0, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '2.5.13.11', '', 'http://update.joomla.org/language/details/uk-UA_details.xml', ''),
(116, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(117, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(118, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(119, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(120, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(121, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(122, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(123, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(124, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(125, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(126, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.22.2', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(127, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(128, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(129, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(130, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(131, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(132, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(133, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(134, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(135, 3, 0, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/af-ZA_details.xml', ''),
(136, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(137, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(138, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(139, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(140, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(141, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(142, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(143, 3, 0, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ko-KR_details.xml', ''),
(144, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_update_categories`
--

CREATE TABLE IF NOT EXISTS `jo_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Actualizar Categorías' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_update_sites`
--

CREATE TABLE IF NOT EXISTS `jo_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Actualizar Sitios' AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `jo_update_sites`
--

INSERT INTO `jo_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1442847389),
(2, 'Directorio de Extensiones Joomla', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1442847389),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist.xml', 1, 1442847391),
(4, 'JCE Editor Updates', 'extension', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1', 0, 1369167028);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `jo_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Enlaces de los sitios de extensiones para actualizar';

--
-- Volcado de datos para la tabla `jo_update_sites_extensions`
--

INSERT INTO `jo_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 10006);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_usergroups`
--

CREATE TABLE IF NOT EXISTS `jo_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID Lista de referencia adyacente',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas conjunto lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas conjunto rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `jo_usergroups`
--

INSERT INTO `jo_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Publico'),
(2, 1, 6, 17, 'Registrado'),
(3, 2, 7, 14, 'Autor'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publicador'),
(6, 1, 2, 5, 'Gestor'),
(7, 6, 3, 4, 'Administrador'),
(8, 1, 18, 19, 'Super Usuarios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_users`
--

CREATE TABLE IF NOT EXISTS `jo_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Volcado de datos para la tabla `jo_users`
--

INSERT INTO `jo_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(30, 'Super User', 'admin', 'brojask@gmail.com', '8d51b1b4e1a988f9ee54a613757ccc39:ER0qIggYMQCamARbyVUuwRJuBHOQflQa', 'deprecated', 0, 1, '2013-05-21 19:59:57', '2015-09-21 14:56:29', '0', '', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_user_notes`
--

CREATE TABLE IF NOT EXISTS `jo_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_user_profiles`
--

CREATE TABLE IF NOT EXISTS `jo_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla para almacenar el perfil de usuario';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `jo_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Clave externa a #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Clave externa a #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jo_user_usergroup_map`
--

INSERT INTO `jo_user_usergroup_map` (`user_id`, `group_id`) VALUES
(30, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_viewlevels`
--

CREATE TABLE IF NOT EXISTS `jo_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `jo_viewlevels`
--

INSERT INTO `jo_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Publico', 0, '[1]'),
(2, 'Registrado', 1, '[6,2,8]'),
(3, 'Especial', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_weblinks`
--

CREATE TABLE IF NOT EXISTS `jo_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Volcado de datos para la tabla `jo_weblinks`
--

INSERT INTO `jo_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `state`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `access`, `params`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 33, 0, ' Boletín de Derecho de Autor ', 'boletin-de-derecho-de-autor', 'http://portal.unesco.org/culture/es/ev.php-URL_ID=5130&URL_DO=DO_TOPIC&URL_SECTION=201.html', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 1, '{"target":"","width":"","height":"","count_clicks":""}', '*', '2013-05-21 22:24:58', 30, '', '2013-05-21 22:25:14', 30, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 33, 0, 'Boletin Judicial', 'boletin-judicial', 'http://www.boletinjudicial.go.cr/pub/index.html', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 1, '{"target":"","width":"","height":"","count_clicks":""}', '*', '2013-05-21 22:25:59', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 33, 0, 'Boletín oficial del Estado de España	', 'boletin-oficial-del-estado-de-espana', 'http://www.boe.es/', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, 1, '{"target":"","width":"","height":"","count_clicks":""}', '*', '2013-05-21 22:26:19', 30, '', '2013-05-21 22:27:03', 30, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 34, 0, 'Diccionario Jurídico', 'diccionario-juridico', 'http://www.lexjuridica.com/diccionario.php', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:19:23', 30, '', '2013-05-22 16:20:50', 30, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 34, 0, 'Diccionarios y enciclopedias legales	', 'diccionarios-y-enciclopedias-legales', 'http://www.todoelderecho.com/Colombia/diccionarios.htm', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 5, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:23:48', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 34, 0, 'Recursos en Derecho, Universidad de Cádiz', 'recursos-en-derecho-universidad-de-cadiz', 'http://biblioteca.uca.es/sbuca/bibcjer/recursos.asp?capbd=7', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 6, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:25:15', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 34, 0, 'Documento digitales y referenciales', 'documento-digitales-y-referenciales', 'http://www.law.harvard.edu/library/', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 7, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:27:15', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 34, 0, 'Diamond Law Library website (Columbia School)', 'diamond-law-library-website-columbia-school', 'http://www.law.columbia.edu/library', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 8, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:28:10', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 34, 0, 'Biblioteca Digital de la Universidad de Mannheim Alemania', 'biblioteca-digital-de-la-universidad-de-mannheim-alemania', 'http://www.uni-mannheim.de/mateo/epo.html', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 9, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:29:32', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 34, 0, 'Biblioteca Digital de la Universidad de Bielefeld en Alemania', 'biblioteca-digital-de-la-universidad-de-bielefeld-en-alemania', 'http://ds.ub.uni-bielefeld.de/viewer/browse/digitaledrucke*/-/1/SORT_TITLE/-/', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 10, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:30:32', 30, '', '2013-05-22 18:11:48', 30, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 34, 0, 'Diccionario Legal Alemán', 'diccionario-legal-aleman', 'http://digi.ub.uni-heidelberg.de/de/sammlungen/rechtsquellen.html', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 11, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:31:12', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 34, 0, 'Biblioteca Digital de Valencia España', 'biblioteca-digital-de-valencia-espana', 'http://roderic.uv.es/handle/10550/43', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 12, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:32:34', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 34, 0, 'Material Digitalizado de la Biblioteca Nacional de España', 'material-digitalizado-de-la-biblioteca-nacional-de-espana', 'http://www.bne.es/cgi-bin/wsirtex?FOR=WBNCONS4', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 13, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:34:19', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 34, 0, 'Biblioteca Digital de Madrid España', 'biblioteca-digital-de-madrid-espana', 'http://www.ateneodemadrid.com/biblioteca_digital/BibliotecaDigital.htm', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 14, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:35:06', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 34, 0, 'Biblioteca de Bizkaia en España', 'biblioteca-de-bizkaia-en-espana', 'http://bibliotecaforal.bizkaia.net/screens/bibdigital_spi.html', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 15, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:35:43', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 35, 0, 'Biblioteca Jurídica en línea', 'biblioteca-juridica-en-linea', 'http://www.eldial.com/nuevo/index.asp', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 16, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:37:36', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 35, 0, 'Vermont Law School Library', 'vermont-law-school-library', 'http://www.vermontlaw.edu/About_the_Library.htm', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 17, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:39:07', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 35, 0, 'Documentos Legales Referenciales', 'documentos-legales-referenciales', 'http://www.law.nyu.edu/library/tools.html', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 18, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:39:50', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 35, 0, 'Catálogo Referencial de Documentos Jurídicos', 'catalogo-referencial-de-documentos-juridicos', 'http://www.bu.edu/lawlibrary/', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 19, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:40:51', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 35, 0, 'Información Referencial de la Biblioteca de la Escuela de Leyes de la Univerisdad de Indiana', 'informacion-referencial-de-la-biblioteca-de-la-escuela-de-leyes-de-la-univerisdad-de-indiana', 'http://law.indiana.edu/lawlibrary/index.shtml', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 20, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:42:26', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 35, 0, 'Material Referencial de la Biblioteca de Derecho de Georgetown', 'material-referencial-de-la-biblioteca-de-derecho-de-georgetown', 'http://www.law.georgetown.edu/library/', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 21, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:43:04', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 35, 0, 'Material Jurídico Referencial de la Biblioteca de Derecho de la Universidad de San Francisco', 'material-juridico-referencial-de-la-biblioteca-de-derecho-de-la-universidad-de-san-francisco', 'http://www.usfca.edu/law/library/', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 22, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:44:57', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 35, 0, 'Material Referencial de la Biblioteca de la Facultad de Derecho de la UCLA Estados Unidos', 'material-referencial-de-la-biblioteca-de-la-facultad-de-derecho-de-la-ucla-estados-unidos', 'http://www.law.ucla.edu/library/Pages/default.aspx', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 23, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:45:29', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 35, 0, 'Documentación Referencial de la Biblioteca de la Universidad de Granada en España', 'documentacion-referencial-de-la-biblioteca-de-la-universidad-de-granada-en-espana', 'http://www.ugr.es/', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 24, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:46:03', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 35, 0, 'Biblioteca jurídico económica Giovanni Ghirotti', 'biblioteca-juridico-economica-giovanni-ghirotti', 'http://www.ghirotti.it/', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 25, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:46:35', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 35, 0, 'Biblioteca de la O.I.T.', 'biblioteca-de-la-o-i-t', 'http://www.oit.org.ar/portal/', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 26, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:48:05', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 35, 0, 'The British Library', 'the-british-library', 'http://www.bl.uk/', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 27, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:49:30', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 35, 0, 'Biblioteca del Congreso de los Estados Unidos de America', 'biblioteca-del-congreso-de-los-estados-unidos-de-america', 'http://www.loc.gov/index.html', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 28, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:49:59', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 35, 0, 'Biblioteca jurídica del Registro Nacional de Costa Rica', 'biblioteca-juridica-del-registro-nacional-de-costa-rica', 'http://www.rnpdigital.com/index.htm', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 29, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:52:35', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 35, 0, 'Biblioteca jurídica', 'biblioteca-juridica', 'http://www.bibliojuridica.org/', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 30, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:53:19', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 36, 0, 'Red Iberoamericana de Información y Documentación Judicial, Iberius', 'red-iberoamericana-de-informacion-y-documentacion-judicial-iberius', 'http://www.iberius.org/web/guest/inicio', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 31, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:55:04', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 36, 0, 'Revista Electrónica de Ciencia Penal y Criminología', 'revista-electronica-de-ciencia-penal-y-criminologia', 'http://criminet.ugr.es/recpc/', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 32, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:55:34', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 36, 0, 'El criminalista digital', 'el-criminalista-digital', 'http://criminet.ugr.es/', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 33, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:56:16', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 36, 0, 'Centro de Estudio de Justicia de las Américas', 'centro-de-estudio-de-justicia-de-las-americas', 'http://caj.fiu.edu/', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 34, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:56:46', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 36, 0, 'Asociación de ciencias penales de Costa Rica', 'asociacion-de-ciencias-penales-de-costa-rica', 'http://www.cienciaspenales.org/', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 35, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:57:18', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 36, 0, 'Legislación Penal de España	', 'legislacion-penal-de-espana', 'http://noticias.juridicas.com/base_datos/Penal/', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 36, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:57:49', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 35, 0, 'Legislación Juvenil en Costa Rica	', 'legislacion-juvenil-en-costa-rica', 'http://www.oitcinterfor.org/', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 37, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:58:18', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 36, 0, 'Centro de Estudios Superiores de Derecho Público de Costa Rica, Revista Jurídica Electrónica', 'centro-de-estudios-superiores-de-derecho-publico-de-costa-rica-revista-juridica-electronica', 'http://www.cesdepu.com/revelec/revelec.htm', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 38, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:58:51', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 36, 0, 'Normas Básicas de Derecho Público de Costa Rica', 'normas-basicas-de-derecho-publico-de-costa-rica', 'http://www.cesdepu.com/nbdp.htm', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 39, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 16:59:27', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 36, 0, 'JurisWeb', 'jurisweb', 'http://legislacion.derecho.com/', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 40, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 17:01:33', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 36, 0, 'LEGISLACIÓN ESPAÑOLA PARA USO DIDÁCTICO', 'legislacion-espanola-para-uso-didactico', 'http://www2.gobiernodecanarias.org/educacion/17/WebC/Apdorta/ley/index.htm', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 41, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 17:02:06', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 36, 0, 'Revista de la Procuraduría General de la República', 'revista-de-la-procuraduria-general-de-la-republica', 'http://www.pgr.go.cr/revista/default.aspx', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 42, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 17:02:47', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 36, 0, 'Actas de la Asamblea Nacional Constituyente de 1949 Versión Digital	', 'actas-de-la-asamblea-nacional-constituyente-de-1949-version-digital', 'http://www.cesdepu.com/actas.htm', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 43, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 17:03:10', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 36, 0, 'Centro de Información Jurídica en Línea (Colegio de Abogados, UCR)', 'centro-de-informacion-juridica-en-linea-colegio-de-abogados-ucr', 'http://www.cijulenlinea.ucr.ac.cr/', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 44, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 17:06:38', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 36, 0, 'SINALEVI (Sistema Nacional de Legislación Vigente)', 'sinalevi-sistema-nacional-de-legislacion-vigente', 'http://www.pgr.go.cr/scij/', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 45, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 17:08:22', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 36, 0, 'Jurisprudencia de la Sala Segunda', 'jurisprudencia-de-la-sala-segunda', 'http://sitios.poder-judicial.go.cr/salasegunda/jurisprudencia.asp', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 46, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 17:09:27', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 36, 0, 'Normativa, Jurisprudencia, Tesinas y Ensayos', 'normativa-jurisprudencia-tesinas-y-ensayos', 'http://bioetica.org/', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 47, 0, 1, 1, '{"target":"1","width":"","height":"","count_clicks":""}', '*', '2013-05-22 17:10:10', 30, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jo_wf_profiles`
--

CREATE TABLE IF NOT EXISTS `jo_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `jo_wf_profiles`
--

INSERT INTO `jo_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,browser,inlinepopups,media,help,clipboard,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists', 1, 1, 0, '0000-00-00 00:00:00', ''),
(2, 'Front End', 'Sample Front-end Profile', '', '3,4,5', '', 1, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists', 0, 2, 0, '0000-00-00 00:00:00', ''),
(3, 'Blogger', 'Simple Blogging Profile', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,underline,justifyfull,forecolor,clipboard,removeformat,charmap,indent,outdent,undo,redo,help', 'link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists', 0, 3, 0, '0000-00-00 00:00:00', '{"editor":{"toggle":"0"}}'),
(4, 'Mobile', 'Sample Mobile Profile', '', '3,4,5,6,8,7', '', 0, 'tablet,phone', 'undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink', 'fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists', 0, 4, 0, '0000-00-00 00:00:00', '{"editor":{"toolbar_theme":"mobile","resizing":"0","resize_horizontal":"0","resizing_use_cookie":"0","toggle":"0","links":{"popups":{"default":"","jcemediabox":{"enable":"0"},"window":{"enable":"0"}}}}}');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
