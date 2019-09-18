/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 100316
 Source Host           : localhost:3306
 Source Schema         : medical_db

 Target Server Type    : MySQL
 Target Server Version : 100316
 File Encoding         : 65001

 Date: 18/09/2019 12:29:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for asis_medico
-- ----------------------------
DROP TABLE IF EXISTS `asis_medico`;
CREATE TABLE `asis_medico`  (
  `id_asistente` int(10) NOT NULL,
  `id_medico` int(10) NOT NULL,
  PRIMARY KEY (`id_asistente`, `id_medico`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of asis_medico
-- ----------------------------
INSERT INTO `asis_medico` VALUES (1, 1);
INSERT INTO `asis_medico` VALUES (1, 2);
INSERT INTO `asis_medico` VALUES (1, 5);
INSERT INTO `asis_medico` VALUES (1, 9);
INSERT INTO `asis_medico` VALUES (2, 1);
INSERT INTO `asis_medico` VALUES (2, 8);
INSERT INTO `asis_medico` VALUES (5, 1);
INSERT INTO `asis_medico` VALUES (6, 5);
INSERT INTO `asis_medico` VALUES (6, 6);
INSERT INTO `asis_medico` VALUES (6, 9);
INSERT INTO `asis_medico` VALUES (7, 5);
INSERT INTO `asis_medico` VALUES (7, 6);
INSERT INTO `asis_medico` VALUES (7, 9);
INSERT INTO `asis_medico` VALUES (8, 1);
INSERT INTO `asis_medico` VALUES (8, 5);
INSERT INTO `asis_medico` VALUES (8, 6);
INSERT INTO `asis_medico` VALUES (8, 9);

-- ----------------------------
-- Table structure for asistente
-- ----------------------------
DROP TABLE IF EXISTS `asistente`;
CREATE TABLE `asistente`  (
  `id_asistente` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ap_paterno` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ap_materno` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `calle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_ext` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_int` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `colonia` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telefono` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tel_add` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `permisos` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_asistente`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of asistente
-- ----------------------------
INSERT INTO `asistente` VALUES (1, 'carmen', 'asis', 'Carmen', 'Romero', 'Verdugo', 'Prados', '2066', 'null', 'jardines del bosque', '2147483647', '6681245872', '1,1,1,1,1,1,1,1,1');
INSERT INTO `asistente` VALUES (2, 'evelyn', 'asis', 'Evelyn Guadalupe', 'Castro', 'Galaviz', 'Zapotillo', '2515', '', 'Zapotillo 1', '6684258696', '6666666666', '1,1,1,0,0,0,0,1,0');
INSERT INTO `asistente` VALUES (4, '', '', 'Juan Manuel', 'Rocha ', 'Chavez', 'de la soledad', '568', 'null', 'amargura', '6684628456', '6682463135', '1,1,1,0,0,0,0,1,0');
INSERT INTO `asistente` VALUES (5, 'null', 'null', 'Placido', 'Lopez', 'Perez', 'Rosales', '501', 'null', 'Centro', '6682563654', '6685654545', '0,0,0,0,0,0,0,0,0,0');
INSERT INTO `asistente` VALUES (6, NULL, NULL, 'Sofia', 'Vergara', 'De la Cruz', 'Ingacio Ayende', '258', '', 'Por Ahi', '2147483647', '6681241186', '0,0,0,0,0,0,0,0,0,0');
INSERT INTO `asistente` VALUES (7, NULL, NULL, 'Eduardo', 'Castro', 'Quintero', 'lluevia de plata', '345', NULL, 'Zapotillo ', '6681241183', '6685247274', '0,0,0,0,0,0,0,0,0,0');
INSERT INTO `asistente` VALUES (8, NULL, NULL, 'Joel', 'Martines', 'de la cueba', 'retorno los murcielagos', '2299', NULL, 'Mallorca', '6682456896', '6681693214', '0,0,0,0,0,0,0,0,0,0');

-- ----------------------------
-- Table structure for citas
-- ----------------------------
DROP TABLE IF EXISTS `citas`;
CREATE TABLE `citas`  (
  `id_cita` int(10) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(10) NULL DEFAULT NULL,
  `id_medico` int(10) NULL DEFAULT NULL,
  `id_prioridad` int(10) NULL DEFAULT NULL,
  `id_tipo` int(10) NULL DEFAULT NULL,
  `fecha` date NULL DEFAULT NULL,
  `hora` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hora_f` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `duracion` int(4) NULL DEFAULT NULL,
  `sintomas` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` int(5) NULL DEFAULT NULL,
  PRIMARY KEY (`id_cita`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of citas
-- ----------------------------
INSERT INTO `citas` VALUES (1, 5, 9, 2, 1, '2019-07-26', '10:30', '11:03', 30, 'tivia perone', 1);
INSERT INTO `citas` VALUES (2, 4, 10, 2, 1, '2019-07-30', '10:00', '11:03', 30, 'le apesta la boca', 1);
INSERT INTO `citas` VALUES (3, 5, 11, 1, 5, '2019-07-31', '11:30', '12:03', 30, 'la persona presenta perdida auditiva en el oido izquierdo por lo que debe hacerse un analisis y revicion para descartar que exista cualquier anomalia en su canal auditivo', 1);
INSERT INTO `citas` VALUES (4, 3, 1, 1, 1, '2019-07-29', '11:30', '12:03', 30, 'sintomas', 2);
INSERT INTO `citas` VALUES (5, 5, 1, 1, 4, '2019-07-29', '11:00', '11:03', 30, 'comezón ', 1);
INSERT INTO `citas` VALUES (6, 1, 10, 1, 5, '2019-07-31', '09:30', '11:03', 30, 'dolor en el oído ', 1);
INSERT INTO `citas` VALUES (7, 2, 11, 3, 1, '2019-08-07', '12:30', '13:03', 30, 'no lo se', 1);
INSERT INTO `citas` VALUES (8, 5, 9, 3, 3, '2019-08-06', '10:00', '11:03', 30, 'le pica una muela\n', 2);
INSERT INTO `citas` VALUES (9, 1, 1, 1, 1, '2019-08-05', '09:00', '11:03', 30, 'dolor de estomago\n', 1);
INSERT INTO `citas` VALUES (10, 5, 9, 3, 1, '2019-08-15', '10:33', '11:03', 30, 'hambre', 1);
INSERT INTO `citas` VALUES (14, 5, 9, 3, 1, '2019-08-15', '05:05', '05:35', NULL, 'hambre', 1);
INSERT INTO `citas` VALUES (16, 5, 9, 3, 1, '2019-08-14', '06:30', '07:00', NULL, 'hambre', 1);
INSERT INTO `citas` VALUES (17, 4, 8, 4, 1, '2019-08-22', '02:24', '02:54', NULL, 'no hay', 1);
INSERT INTO `citas` VALUES (18, 5, 1, 2, 1, '2019-08-22', '05:04', '05:34', NULL, 'no hay', 1);
INSERT INTO `citas` VALUES (19, 2, 2, 3, 1, '2019-08-23', '06:02', '06:33', NULL, 'sda', 1);
INSERT INTO `citas` VALUES (20, 1, 1, 1, 1, '2019-09-12', '10:05', '10:35', NULL, 'ninguno viene por gusto', 2);
INSERT INTO `citas` VALUES (21, 5, 1, 1, 2, '2019-09-06', '06:31', '07:01', NULL, 'no existe', 1);
INSERT INTO `citas` VALUES (22, 5, 1, 2, 1, '2019-09-12', '12:04', '12:34', NULL, NULL, 3);
INSERT INTO `citas` VALUES (23, 2, 1, 1, 5, '2019-09-18', '10:30', '11:00', NULL, 'no escucha, creo es sorda', 1);

-- ----------------------------
-- Table structure for consulta
-- ----------------------------
DROP TABLE IF EXISTS `consulta`;
CREATE TABLE `consulta`  (
  `id_consulta` int(10) NOT NULL AUTO_INCREMENT,
  `id_cita` int(10) NULL DEFAULT NULL,
  `id_medico` int(10) NULL DEFAULT NULL,
  `id_paciente` int(255) NULL DEFAULT NULL,
  `peso` int(10) NULL DEFAULT NULL,
  `altura` int(10) NULL DEFAULT NULL,
  `presion` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `glucosa` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `diagnostico` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `fecha` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `motivo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `interrogatorio` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FR` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FC` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `temperatura` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `imc` double(5, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_consulta`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of consulta
-- ----------------------------
INSERT INTO `consulta` VALUES (1, 22, 1, 5, 60, 180, '120/80', '60', 'se siente mal', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `consulta` VALUES (2, 20, 1, 1, 75, 165, '120/80', '75', 'se siente malita ', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `consulta` VALUES (3, 23, 1, 2, 60, 170, '120/80', '65', 'sorda', '2019-9-17', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for consultorio
-- ----------------------------
DROP TABLE IF EXISTS `consultorio`;
CREATE TABLE `consultorio`  (
  `id_consultorio` int(255) NOT NULL AUTO_INCREMENT,
  `nombre_consultorio` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  PRIMARY KEY (`id_consultorio`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of consultorio
-- ----------------------------
INSERT INTO `consultorio` VALUES (0, 'Sin Asignar');
INSERT INTO `consultorio` VALUES (1, 'Urgencias');
INSERT INTO `consultorio` VALUES (2, 'Mujeres');
INSERT INTO `consultorio` VALUES (3, 'Cuidados intensivos ');
INSERT INTO `consultorio` VALUES (5, 'Pediatría');

-- ----------------------------
-- Table structure for empresa
-- ----------------------------
DROP TABLE IF EXISTS `empresa`;
CREATE TABLE `empresa`  (
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nombre_comercial` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `calle` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_ext` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_int` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_edo` int(8) NULL DEFAULT NULL,
  `id_mun` int(8) NULL DEFAULT NULL,
  `ciudad` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `colonia` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url_platilla_fact` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url_certificado` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url_sello` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `clave` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of empresa
-- ----------------------------
INSERT INTO `empresa` VALUES ('Admin', 'admin', 'Hospital Sharp Mazatlán', 'Dr. Jesús Kumate', 's/n', NULL, 25, 1884, 'Mazatán', 'Fraccionamiento Hacienda las Cruces', '', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for entidad_fed
-- ----------------------------
DROP TABLE IF EXISTS `entidad_fed`;
CREATE TABLE `entidad_fed`  (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_estado` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_estado`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of entidad_fed
-- ----------------------------
INSERT INTO `entidad_fed` VALUES (1, 'Aguascalientes');
INSERT INTO `entidad_fed` VALUES (2, 'Baja California');
INSERT INTO `entidad_fed` VALUES (3, 'Baja California Sur');
INSERT INTO `entidad_fed` VALUES (4, 'Campeche');
INSERT INTO `entidad_fed` VALUES (5, 'Coahuila de Zaragoza');
INSERT INTO `entidad_fed` VALUES (6, 'Colima');
INSERT INTO `entidad_fed` VALUES (7, 'Chiapas');
INSERT INTO `entidad_fed` VALUES (8, 'Chihuahua');
INSERT INTO `entidad_fed` VALUES (9, 'Distrito Federal');
INSERT INTO `entidad_fed` VALUES (10, 'Durango');
INSERT INTO `entidad_fed` VALUES (11, 'Guanajuato');
INSERT INTO `entidad_fed` VALUES (12, 'Guerrero');
INSERT INTO `entidad_fed` VALUES (13, 'Hidalgo');
INSERT INTO `entidad_fed` VALUES (14, 'Jalisco');
INSERT INTO `entidad_fed` VALUES (15, 'México');
INSERT INTO `entidad_fed` VALUES (16, 'Michoacán de Ocampo');
INSERT INTO `entidad_fed` VALUES (17, 'Morelos');
INSERT INTO `entidad_fed` VALUES (18, 'Nayarit');
INSERT INTO `entidad_fed` VALUES (19, 'Nuevo León');
INSERT INTO `entidad_fed` VALUES (20, 'Oaxaca de Juárez');
INSERT INTO `entidad_fed` VALUES (21, 'Puebla');
INSERT INTO `entidad_fed` VALUES (22, 'Querétaro');
INSERT INTO `entidad_fed` VALUES (23, 'Quintana Roo');
INSERT INTO `entidad_fed` VALUES (24, 'San Luis Potosí');
INSERT INTO `entidad_fed` VALUES (25, 'Sinaloa');
INSERT INTO `entidad_fed` VALUES (26, 'Sonora');
INSERT INTO `entidad_fed` VALUES (27, 'Tabasco');
INSERT INTO `entidad_fed` VALUES (28, 'Tamaulipas');
INSERT INTO `entidad_fed` VALUES (29, 'Tlaxcala');
INSERT INTO `entidad_fed` VALUES (30, 'Veracruz de Ignacio de la Llave');
INSERT INTO `entidad_fed` VALUES (31, 'Yucatán');
INSERT INTO `entidad_fed` VALUES (32, 'Zacatecas');
INSERT INTO `entidad_fed` VALUES (33, '');

-- ----------------------------
-- Table structure for especialidad
-- ----------------------------
DROP TABLE IF EXISTS `especialidad`;
CREATE TABLE `especialidad`  (
  `id_especialidad` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_especialidad` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  PRIMARY KEY (`id_especialidad`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of especialidad
-- ----------------------------
INSERT INTO `especialidad` VALUES (1, 'General');
INSERT INTO `especialidad` VALUES (2, 'Medicina Interna');
INSERT INTO `especialidad` VALUES (3, 'Ginecología');
INSERT INTO `especialidad` VALUES (4, 'Traumatología');
INSERT INTO `especialidad` VALUES (5, 'Neurología');
INSERT INTO `especialidad` VALUES (6, 'Terapia Física y Rehabilitación');
INSERT INTO `especialidad` VALUES (7, 'Oncología');
INSERT INTO `especialidad` VALUES (8, 'Pediatría');
INSERT INTO `especialidad` VALUES (9, 'Angiología');
INSERT INTO `especialidad` VALUES (10, ' Cirugía Plástica ');

-- ----------------------------
-- Table structure for estatus_cita
-- ----------------------------
DROP TABLE IF EXISTS `estatus_cita`;
CREATE TABLE `estatus_cita`  (
  `id_estatus` int(255) NOT NULL AUTO_INCREMENT,
  `estatus_cita` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_estatus`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of estatus_cita
-- ----------------------------
INSERT INTO `estatus_cita` VALUES (1, 'Agendada');
INSERT INTO `estatus_cita` VALUES (2, 'Por llegar');
INSERT INTO `estatus_cita` VALUES (3, 'En espera');
INSERT INTO `estatus_cita` VALUES (4, 'En consulta');
INSERT INTO `estatus_cita` VALUES (5, 'Finalizada');
INSERT INTO `estatus_cita` VALUES (6, 'No asistió');
INSERT INTO `estatus_cita` VALUES (7, 'Cancelada');

-- ----------------------------
-- Table structure for fact_paciente
-- ----------------------------
DROP TABLE IF EXISTS `fact_paciente`;
CREATE TABLE `fact_paciente`  (
  `id_paciente` int(255) NULL DEFAULT NULL,
  `persona_fisica` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `razon_soc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `rfc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `cp` varchar(5) CHARACTER SET koi8u COLLATE koi8u_general_ci NULL DEFAULT '0',
  `calle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `no_ext` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `no_int` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `id_edo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `id_mun` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `colonia` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT ''
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for historial_medico
-- ----------------------------
DROP TABLE IF EXISTS `historial_medico`;
CREATE TABLE `historial_medico`  (
  `id_consulta` int(255) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(255) NULL DEFAULT NULL,
  `id_medico` int(255) NULL DEFAULT NULL,
  `fecha` datetime(6) NULL DEFAULT NULL,
  `dx` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `recurso1` mediumblob NULL,
  `recurso2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `recurso3` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_consulta`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for medico
-- ----------------------------
DROP TABLE IF EXISTS `medico`;
CREATE TABLE `medico`  (
  `id_medico` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `nombre` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `ap_paterno` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `ap_materno` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `sexo` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `fecha_nac` date NULL DEFAULT NULL,
  `RFC` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `cedula_prof` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `universidad` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `especialidad_1` int(255) NOT NULL DEFAULT 0,
  `especialidad_2` int(255) NOT NULL DEFAULT 0,
  `tel_fijo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `tel_cel` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `tel_adicional` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `id_consultorio` int(255) NOT NULL DEFAULT 0,
  `calle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `no_ext` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `no_int` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `id_estado` int(255) NOT NULL DEFAULT 0,
  `id_municipio` int(255) NOT NULL DEFAULT 0,
  `ciudad` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `colonia` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `url_receta` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `url_solic_analisis` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `url_constacia` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `url_cert_med` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `url_fact` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `certificado` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `url_sello` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `tipo_sangre` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alergias` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `enfermedad_cronica` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `anotacion` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `permisos` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_medico`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of medico
-- ----------------------------
INSERT INTO `medico` VALUES (1, 'medico', 'medico', 'Joaquín', 'Cervantes', 'Díaz', '1', '1970-07-16', '', '85214700', 'Universidad Autónoma de Sinaloa', 4, 3, '9901136', '6691113926', '', 'j.cervantes@miclinica.com', 0, 'Av. Insurgentes', '1596', '0', 0, 0, 'Mazatlán', 'La Marina', '', '', '', '', '', '', '', 'A+', 'ninguna', 'Gastritis', 'anotacion', '1,1,1,1,1,1,1,1,1,1');
INSERT INTO `medico` VALUES (2, 'medicasa', 'medico', 'Grace', 'Valenzuela', 'Camaccho', '2', '1997-10-08', '', '66645789', 'UAD', 2, 4, '6681546936', '6681246958', '', 'Grace@hotmail.com', 0, 'Alfredo Aladama', '1452', '', 0, 0, 'Rosales', 'Rosales', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'ORH+', 'NIN', 'estar fea', 'NIN', '1,1,1,1,1,1,0,1,1');
INSERT INTO `medico` VALUES (4, '', '', 'Janeth', 'Sosa', 'Guevara', '2', '1980-12-07', '', '85221477', '', 4, 3, '', '', '', '', 1, '', '', '', 25, 1878, '', '', '', '', '', '', '', '', '', 'null', '', '', '', '1,1,1,1,0,1,0,1,0,1,1');
INSERT INTO `medico` VALUES (5, 'med2', 'medico', 'Edgar Rafael', 'Rembao', 'Quintero', '1', '1997-01-08', '', '25', 'UAS', 4, 5, '6681241186', '6681241186', '6681241186', 'edgarembao18@hotmail.com', 0, 'lluevia de plata', '2066', '', 25, 1878, 'Los Mochis', 'jardines del bosque', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OHR+', 'niguna', 'ninguna', 'ahorita no joven', '1,1,1,1,1,1,0,1,1,1,1');
INSERT INTO `medico` VALUES (6, 'undefined', 'undefined', 'Kevin', 'Vazquez', 'Niebla', '2', '1997-03-01', '', '25366946', 'UAS', 1, 2, '6681256341', '6681693214', '6681996633', 'Kevin@hotmail.com', 0, 'Centenario', '3334', '', 0, 0, 'Los Mochis', 'Nuevo Horizonte', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'polvo', 'feo', 'no sirve para nada pero es buen compa', '1,1,1,1,1,1,1,1,1,1');
INSERT INTO `medico` VALUES (7, 'med4', 'medico', 'Eduardo', 'Cota', 'Cota', '1', '1997-12-12', '', '20', 'UNIVERSIDAD AUTONOMA DE SINALO', 2, 1, '6682456896', '6682456896', '', 'Lalocota@hotmail.com', 0, 'lluevia de plata', '2066', '', 0, 0, 'Los mochis', 'Teresita', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'ORH+', 'las mujeres', 'ser feo', 'medio mamon', '1,1,1,1,1,1,0,1,1,1,1');
INSERT INTO `medico` VALUES (8, '', '', 'Ignacio', 'Sanchez', 'Mundo', '1', '1998-07-09', '', '66896854', 'UAS', 2, 4, '6684596958', '6687589632', '', 'nachitop@hotmail.co', 0, 'Prados', '2545', '', 25, 1878, 'Los Mochis', 'El Parque', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'A-', 'ninguna', 'ninguna', 'ninguna', '1,1,1,1,1,1,0,1,1,1,1');
INSERT INTO `medico` VALUES (9, 'med3', 'medico', 'Elizabeth', 'Gaxiola', 'Carrillo', '2', '2019-07-21', '', '20', 'UAS', 1, 2, '6681265843', '6684568569', '6684568568', 'Elyzabet@hotmail.com', 0, 'Tortugas', '1230', '', 25, 1878, 'Tortugas 1', 'Las tortugas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ninguna', 'ninguna', NULL, '1,1,1,1,1,1,0,1,1,1,1');

-- ----------------------------
-- Table structure for municipio
-- ----------------------------
DROP TABLE IF EXISTS `municipio`;
CREATE TABLE `municipio`  (
  `id_estado` int(255) NULL DEFAULT NULL,
  `id_municipio` int(255) NULL DEFAULT NULL,
  `nombre_municipio` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT ''
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of municipio
-- ----------------------------
INSERT INTO `municipio` VALUES (1, 1, 'Aguascalientes');
INSERT INTO `municipio` VALUES (1, 2, 'San Francisco de los Romo');
INSERT INTO `municipio` VALUES (1, 3, 'El Llano');
INSERT INTO `municipio` VALUES (1, 4, 'Rincón de Romos');
INSERT INTO `municipio` VALUES (1, 5, 'Cosío');
INSERT INTO `municipio` VALUES (1, 6, 'San José de Gracia');
INSERT INTO `municipio` VALUES (1, 7, 'Tepezalá');
INSERT INTO `municipio` VALUES (1, 8, 'Pabellón de Arteaga');
INSERT INTO `municipio` VALUES (1, 9, 'Asientos');
INSERT INTO `municipio` VALUES (1, 10, 'Calvillo');
INSERT INTO `municipio` VALUES (1, 11, 'Jesús María');
INSERT INTO `municipio` VALUES (2, 12, 'Mexicali');
INSERT INTO `municipio` VALUES (2, 13, 'Tecate');
INSERT INTO `municipio` VALUES (2, 14, 'Tijuana');
INSERT INTO `municipio` VALUES (2, 15, 'Playas de Rosarito');
INSERT INTO `municipio` VALUES (2, 16, 'Ensenada');
INSERT INTO `municipio` VALUES (3, 17, 'La Paz');
INSERT INTO `municipio` VALUES (3, 18, 'Los Cabos');
INSERT INTO `municipio` VALUES (3, 19, 'Comondú');
INSERT INTO `municipio` VALUES (3, 20, 'Loreto');
INSERT INTO `municipio` VALUES (3, 21, 'Mulegé');
INSERT INTO `municipio` VALUES (4, 22, 'Campeche');
INSERT INTO `municipio` VALUES (4, 23, 'Carmen');
INSERT INTO `municipio` VALUES (4, 24, 'Palizada');
INSERT INTO `municipio` VALUES (4, 25, 'Candelaria');
INSERT INTO `municipio` VALUES (4, 26, 'Escárcega');
INSERT INTO `municipio` VALUES (4, 27, 'Champotón');
INSERT INTO `municipio` VALUES (4, 28, 'Hopelchén');
INSERT INTO `municipio` VALUES (4, 29, 'Calakmul');
INSERT INTO `municipio` VALUES (4, 30, 'Tenabo');
INSERT INTO `municipio` VALUES (4, 31, 'Hecelchakán');
INSERT INTO `municipio` VALUES (4, 32, 'Calkiní');
INSERT INTO `municipio` VALUES (5, 33, 'Saltillo');
INSERT INTO `municipio` VALUES (5, 34, 'Arteaga');
INSERT INTO `municipio` VALUES (5, 35, 'Juárez');
INSERT INTO `municipio` VALUES (5, 36, 'Progreso');
INSERT INTO `municipio` VALUES (5, 37, 'Escobedo');
INSERT INTO `municipio` VALUES (5, 38, 'San Buenaventura');
INSERT INTO `municipio` VALUES (5, 39, 'Abasolo');
INSERT INTO `municipio` VALUES (5, 40, 'Candela');
INSERT INTO `municipio` VALUES (5, 41, 'Frontera');
INSERT INTO `municipio` VALUES (5, 42, 'Monclova');
INSERT INTO `municipio` VALUES (5, 43, 'Castaños');
INSERT INTO `municipio` VALUES (5, 44, 'Ramos Arizpe');
INSERT INTO `municipio` VALUES (5, 45, 'General Cepeda');
INSERT INTO `municipio` VALUES (5, 46, 'Piedras Negras');
INSERT INTO `municipio` VALUES (5, 47, 'Nava');
INSERT INTO `municipio` VALUES (5, 48, 'Acuña');
INSERT INTO `municipio` VALUES (5, 49, 'Múzquiz');
INSERT INTO `municipio` VALUES (5, 50, 'Jiménez');
INSERT INTO `municipio` VALUES (5, 51, 'Zaragoza');
INSERT INTO `municipio` VALUES (5, 52, 'Morelos');
INSERT INTO `municipio` VALUES (5, 53, 'Allende');
INSERT INTO `municipio` VALUES (5, 54, 'Villa Unión');
INSERT INTO `municipio` VALUES (5, 55, 'Guerrero');
INSERT INTO `municipio` VALUES (5, 56, 'Hidalgo');
INSERT INTO `municipio` VALUES (5, 57, 'Sabinas');
INSERT INTO `municipio` VALUES (5, 58, 'San Juan de Sabinas');
INSERT INTO `municipio` VALUES (5, 59, 'Torreón');
INSERT INTO `municipio` VALUES (5, 60, 'Matamoros');
INSERT INTO `municipio` VALUES (5, 61, 'Viesca');
INSERT INTO `municipio` VALUES (5, 62, 'Ocampo');
INSERT INTO `municipio` VALUES (5, 63, 'Nadadores');
INSERT INTO `municipio` VALUES (5, 64, 'Sierra Mojada');
INSERT INTO `municipio` VALUES (5, 65, 'Cuatro Ciénegas');
INSERT INTO `municipio` VALUES (5, 66, 'Lamadrid');
INSERT INTO `municipio` VALUES (5, 67, 'Sacramento');
INSERT INTO `municipio` VALUES (5, 68, 'San Pedro');
INSERT INTO `municipio` VALUES (5, 69, 'Francisco I. Madero');
INSERT INTO `municipio` VALUES (5, 70, 'Parras');
INSERT INTO `municipio` VALUES (6, 71, 'Colima');
INSERT INTO `municipio` VALUES (6, 72, 'Tecomán');
INSERT INTO `municipio` VALUES (6, 73, 'Manzanillo');
INSERT INTO `municipio` VALUES (6, 74, 'Armería');
INSERT INTO `municipio` VALUES (6, 75, 'Coquimatlán');
INSERT INTO `municipio` VALUES (6, 76, 'Comala');
INSERT INTO `municipio` VALUES (6, 77, 'Cuauhtémoc');
INSERT INTO `municipio` VALUES (6, 78, 'Ixtlahuacán');
INSERT INTO `municipio` VALUES (6, 79, 'Minatitlán');
INSERT INTO `municipio` VALUES (6, 80, 'Villa de Álvarez');
INSERT INTO `municipio` VALUES (7, 81, 'Tuxtla Gutiérrez');
INSERT INTO `municipio` VALUES (7, 82, 'San Fernando');
INSERT INTO `municipio` VALUES (7, 83, 'Berriozábal');
INSERT INTO `municipio` VALUES (7, 84, 'Ocozocoautla de Espinosa');
INSERT INTO `municipio` VALUES (7, 85, 'Suchiapa');
INSERT INTO `municipio` VALUES (7, 86, 'Chiapa de Corzo');
INSERT INTO `municipio` VALUES (7, 87, 'Osumacinta');
INSERT INTO `municipio` VALUES (7, 88, 'San Cristóbal de las Casas');
INSERT INTO `municipio` VALUES (7, 89, 'Chamula');
INSERT INTO `municipio` VALUES (7, 90, 'Ixtapa');
INSERT INTO `municipio` VALUES (7, 91, 'Zinacantán');
INSERT INTO `municipio` VALUES (7, 92, 'Acala');
INSERT INTO `municipio` VALUES (7, 93, 'Chiapilla');
INSERT INTO `municipio` VALUES (7, 94, 'San Lucas');
INSERT INTO `municipio` VALUES (7, 95, 'Teopisca');
INSERT INTO `municipio` VALUES (7, 96, 'Amatenango del Valle');
INSERT INTO `municipio` VALUES (7, 97, 'Chanal');
INSERT INTO `municipio` VALUES (7, 98, 'Oxchuc');
INSERT INTO `municipio` VALUES (7, 99, 'Huixtán');
INSERT INTO `municipio` VALUES (7, 100, 'Tenejapa');
INSERT INTO `municipio` VALUES (7, 101, 'Mitontic');
INSERT INTO `municipio` VALUES (7, 102, 'Reforma');
INSERT INTO `municipio` VALUES (7, 103, 'Juárez');
INSERT INTO `municipio` VALUES (7, 104, 'Pichucalco');
INSERT INTO `municipio` VALUES (7, 105, 'Sunuapa');
INSERT INTO `municipio` VALUES (7, 106, 'Ostuacán');
INSERT INTO `municipio` VALUES (7, 107, 'Francisco León');
INSERT INTO `municipio` VALUES (7, 108, 'Ixtacomitán');
INSERT INTO `municipio` VALUES (7, 109, 'Solosuchiapa');
INSERT INTO `municipio` VALUES (7, 110, 'Ixtapangajoya');
INSERT INTO `municipio` VALUES (7, 111, 'Tecpatán');
INSERT INTO `municipio` VALUES (7, 112, 'Copainalá');
INSERT INTO `municipio` VALUES (7, 113, 'Chicoasén');
INSERT INTO `municipio` VALUES (7, 114, 'Coapilla');
INSERT INTO `municipio` VALUES (7, 115, 'Pantepec');
INSERT INTO `municipio` VALUES (7, 116, 'Tapalapa');
INSERT INTO `municipio` VALUES (7, 117, 'Ocotepec');
INSERT INTO `municipio` VALUES (7, 118, 'Chapultenango');
INSERT INTO `municipio` VALUES (7, 119, 'Amatán');
INSERT INTO `municipio` VALUES (7, 120, 'Huitiupán');
INSERT INTO `municipio` VALUES (7, 121, 'Ixhuatán');
INSERT INTO `municipio` VALUES (7, 122, 'Tapilula');
INSERT INTO `municipio` VALUES (7, 123, 'Rayón');
INSERT INTO `municipio` VALUES (7, 124, 'Pueblo Nuevo Solistahuacán');
INSERT INTO `municipio` VALUES (7, 125, 'Jitotol');
INSERT INTO `municipio` VALUES (7, 126, 'Bochil');
INSERT INTO `municipio` VALUES (7, 127, 'Soyaló');
INSERT INTO `municipio` VALUES (7, 128, 'San Juan Cancuc');
INSERT INTO `municipio` VALUES (7, 129, 'Sabanilla');
INSERT INTO `municipio` VALUES (7, 130, 'Simojovel');
INSERT INTO `municipio` VALUES (7, 131, 'San Andrés Duraznal');
INSERT INTO `municipio` VALUES (7, 132, 'El Bosque');
INSERT INTO `municipio` VALUES (7, 133, 'Chalchihuitán');
INSERT INTO `municipio` VALUES (7, 134, 'Larráinzar');
INSERT INTO `municipio` VALUES (7, 135, 'Santiago el Pinar');
INSERT INTO `municipio` VALUES (7, 136, 'Chenalhó');
INSERT INTO `municipio` VALUES (7, 137, 'Aldama');
INSERT INTO `municipio` VALUES (7, 138, 'Pantelhó');
INSERT INTO `municipio` VALUES (7, 139, 'Sitalá');
INSERT INTO `municipio` VALUES (7, 140, 'Salto de Agua');
INSERT INTO `municipio` VALUES (7, 141, 'Tila');
INSERT INTO `municipio` VALUES (7, 142, 'Tumbalá');
INSERT INTO `municipio` VALUES (7, 143, 'Yajalón');
INSERT INTO `municipio` VALUES (7, 144, 'Ocosingo');
INSERT INTO `municipio` VALUES (7, 145, 'Chilón');
INSERT INTO `municipio` VALUES (7, 146, 'Benemérito de las Américas');
INSERT INTO `municipio` VALUES (7, 147, 'Marqués de Comillas');
INSERT INTO `municipio` VALUES (7, 148, 'Palenque');
INSERT INTO `municipio` VALUES (7, 149, 'La Libertad');
INSERT INTO `municipio` VALUES (7, 150, 'Catazajá');
INSERT INTO `municipio` VALUES (7, 151, 'Comitán de Domínguez');
INSERT INTO `municipio` VALUES (7, 152, 'Tzimol');
INSERT INTO `municipio` VALUES (7, 153, 'Chicomuselo');
INSERT INTO `municipio` VALUES (7, 154, 'Bella Vista');
INSERT INTO `municipio` VALUES (7, 155, 'Frontera Comalapa');
INSERT INTO `municipio` VALUES (7, 156, 'La Trinitaria');
INSERT INTO `municipio` VALUES (7, 157, 'La Independencia');
INSERT INTO `municipio` VALUES (7, 158, 'Maravilla Tenejapa');
INSERT INTO `municipio` VALUES (7, 159, 'Las Margaritas');
INSERT INTO `municipio` VALUES (7, 160, 'Altamirano');
INSERT INTO `municipio` VALUES (7, 161, 'Venustiano Carranza');
INSERT INTO `municipio` VALUES (7, 162, 'Totolapa');
INSERT INTO `municipio` VALUES (7, 163, 'Nicolás Ruíz');
INSERT INTO `municipio` VALUES (7, 164, 'Las Rosas');
INSERT INTO `municipio` VALUES (7, 165, 'La Concordia');
INSERT INTO `municipio` VALUES (7, 166, 'Angel Albino Corzo');
INSERT INTO `municipio` VALUES (7, 167, 'Montecristo de Guerrero');
INSERT INTO `municipio` VALUES (7, 168, 'Socoltenango');
INSERT INTO `municipio` VALUES (7, 169, 'Cintalapa');
INSERT INTO `municipio` VALUES (7, 170, 'Jiquipilas');
INSERT INTO `municipio` VALUES (7, 171, 'Arriaga');
INSERT INTO `municipio` VALUES (7, 172, 'Villaflores');
INSERT INTO `municipio` VALUES (7, 173, 'Tonalá');
INSERT INTO `municipio` VALUES (7, 174, 'Villa Corzo');
INSERT INTO `municipio` VALUES (7, 175, 'Pijijiapan');
INSERT INTO `municipio` VALUES (7, 176, 'Mapastepec');
INSERT INTO `municipio` VALUES (7, 177, 'Acapetahua');
INSERT INTO `municipio` VALUES (7, 178, 'Acacoyagua');
INSERT INTO `municipio` VALUES (7, 179, 'Escuintla');
INSERT INTO `municipio` VALUES (7, 180, 'Villa Comaltitlán');
INSERT INTO `municipio` VALUES (7, 181, 'Huixtla');
INSERT INTO `municipio` VALUES (7, 182, 'Mazatán');
INSERT INTO `municipio` VALUES (7, 183, 'Huehuetán');
INSERT INTO `municipio` VALUES (7, 184, 'Tuzantán');
INSERT INTO `municipio` VALUES (7, 185, 'Tapachula');
INSERT INTO `municipio` VALUES (7, 186, 'Suchiate');
INSERT INTO `municipio` VALUES (7, 187, 'Frontera Hidalgo');
INSERT INTO `municipio` VALUES (7, 188, 'Metapa');
INSERT INTO `municipio` VALUES (7, 189, 'Tuxtla Chico');
INSERT INTO `municipio` VALUES (7, 190, 'Unión Juárez');
INSERT INTO `municipio` VALUES (7, 191, 'Cacahoatán');
INSERT INTO `municipio` VALUES (7, 192, 'Motozintla');
INSERT INTO `municipio` VALUES (7, 193, 'Mazapa de Madero');
INSERT INTO `municipio` VALUES (7, 194, 'Amatenango de la Frontera');
INSERT INTO `municipio` VALUES (7, 195, 'Bejucal de Ocampo');
INSERT INTO `municipio` VALUES (7, 196, 'La Grandeza');
INSERT INTO `municipio` VALUES (7, 197, 'El Porvenir');
INSERT INTO `municipio` VALUES (7, 198, 'Siltepec');
INSERT INTO `municipio` VALUES (8, 199, 'Chihuahua');
INSERT INTO `municipio` VALUES (8, 200, 'Cuauhtémoc');
INSERT INTO `municipio` VALUES (8, 201, 'Riva Palacio');
INSERT INTO `municipio` VALUES (8, 202, 'Aquiles Serdán');
INSERT INTO `municipio` VALUES (8, 203, 'Bachíniva');
INSERT INTO `municipio` VALUES (8, 204, 'Guerrero');
INSERT INTO `municipio` VALUES (8, 205, 'Nuevo Casas Grandes');
INSERT INTO `municipio` VALUES (8, 206, 'Ascensión');
INSERT INTO `municipio` VALUES (8, 207, 'Janos');
INSERT INTO `municipio` VALUES (8, 208, 'Casas Grandes');
INSERT INTO `municipio` VALUES (8, 209, 'Galeana');
INSERT INTO `municipio` VALUES (8, 210, 'Buenaventura');
INSERT INTO `municipio` VALUES (8, 211, 'Gómez Farías');
INSERT INTO `municipio` VALUES (8, 212, 'Ignacio Zaragoza');
INSERT INTO `municipio` VALUES (8, 213, 'Madera');
INSERT INTO `municipio` VALUES (8, 214, 'Namiquipa');
INSERT INTO `municipio` VALUES (8, 215, 'Temósachic');
INSERT INTO `municipio` VALUES (8, 216, 'Matachí');
INSERT INTO `municipio` VALUES (8, 217, 'Juárez');
INSERT INTO `municipio` VALUES (8, 218, 'Guadalupe');
INSERT INTO `municipio` VALUES (8, 219, 'Praxedis G. Guerrero');
INSERT INTO `municipio` VALUES (8, 220, 'Ahumada');
INSERT INTO `municipio` VALUES (8, 221, 'Coyame del Sotol');
INSERT INTO `municipio` VALUES (8, 222, 'Ojinaga');
INSERT INTO `municipio` VALUES (8, 223, 'Aldama');
INSERT INTO `municipio` VALUES (8, 224, 'Julimes');
INSERT INTO `municipio` VALUES (8, 225, 'Manuel Benavides');
INSERT INTO `municipio` VALUES (8, 226, 'Delicias');
INSERT INTO `municipio` VALUES (8, 227, 'Rosales');
INSERT INTO `municipio` VALUES (8, 228, 'Meoqui');
INSERT INTO `municipio` VALUES (8, 229, 'Dr. Belisario Domínguez');
INSERT INTO `municipio` VALUES (8, 230, 'Satevó');
INSERT INTO `municipio` VALUES (8, 231, 'San Francisco de Borja');
INSERT INTO `municipio` VALUES (8, 232, 'Nonoava');
INSERT INTO `municipio` VALUES (8, 233, 'Guachochi');
INSERT INTO `municipio` VALUES (8, 234, 'Bocoyna');
INSERT INTO `municipio` VALUES (8, 235, 'Cusihuiriachi');
INSERT INTO `municipio` VALUES (8, 236, 'Gran Morelos');
INSERT INTO `municipio` VALUES (8, 237, 'Santa Isabel');
INSERT INTO `municipio` VALUES (8, 238, 'Carichí');
INSERT INTO `municipio` VALUES (8, 239, 'Uruachi');
INSERT INTO `municipio` VALUES (8, 240, 'Ocampo');
INSERT INTO `municipio` VALUES (8, 241, 'Moris');
INSERT INTO `municipio` VALUES (8, 242, 'Chínipas');
INSERT INTO `municipio` VALUES (8, 243, 'Maguarichi');
INSERT INTO `municipio` VALUES (8, 244, 'Guazapares');
INSERT INTO `municipio` VALUES (8, 245, 'Batopilas');
INSERT INTO `municipio` VALUES (8, 246, 'Urique');
INSERT INTO `municipio` VALUES (8, 247, 'Morelos');
INSERT INTO `municipio` VALUES (8, 248, 'Guadalupe y Calvo');
INSERT INTO `municipio` VALUES (8, 249, 'San Francisco del Oro');
INSERT INTO `municipio` VALUES (8, 250, 'Rosario');
INSERT INTO `municipio` VALUES (8, 251, 'Huejotitán');
INSERT INTO `municipio` VALUES (8, 252, 'El Tule');
INSERT INTO `municipio` VALUES (8, 253, 'Balleza');
INSERT INTO `municipio` VALUES (8, 254, 'Santa Bárbara');
INSERT INTO `municipio` VALUES (8, 255, 'Camargo');
INSERT INTO `municipio` VALUES (8, 256, 'Saucillo');
INSERT INTO `municipio` VALUES (8, 257, 'Valle de Zaragoza');
INSERT INTO `municipio` VALUES (8, 258, 'La Cruz');
INSERT INTO `municipio` VALUES (8, 259, 'San Francisco de Conchos');
INSERT INTO `municipio` VALUES (8, 260, 'Hidalgo del Parral');
INSERT INTO `municipio` VALUES (8, 261, 'Allende');
INSERT INTO `municipio` VALUES (8, 262, 'López');
INSERT INTO `municipio` VALUES (8, 263, 'Matamoros');
INSERT INTO `municipio` VALUES (8, 264, 'Jiménez');
INSERT INTO `municipio` VALUES (8, 265, 'Coronado');
INSERT INTO `municipio` VALUES (9, 266, 'Álvaro Obregón');
INSERT INTO `municipio` VALUES (9, 267, 'Azcapotzalco');
INSERT INTO `municipio` VALUES (9, 268, 'Benito Juárez');
INSERT INTO `municipio` VALUES (9, 269, 'Coyoacán');
INSERT INTO `municipio` VALUES (9, 270, 'Cuajimalpa de Morelos');
INSERT INTO `municipio` VALUES (9, 271, 'Cuauhtémoc');
INSERT INTO `municipio` VALUES (9, 272, 'Gustavo A. Madero');
INSERT INTO `municipio` VALUES (9, 273, 'Iztacalco');
INSERT INTO `municipio` VALUES (9, 274, 'Iztapalapa');
INSERT INTO `municipio` VALUES (9, 275, 'La Magdalena Contreras');
INSERT INTO `municipio` VALUES (9, 276, 'Miguel Hidalgo');
INSERT INTO `municipio` VALUES (9, 277, 'Milpa Alta');
INSERT INTO `municipio` VALUES (9, 278, 'Tláhuac');
INSERT INTO `municipio` VALUES (9, 279, 'Tlalpan');
INSERT INTO `municipio` VALUES (9, 280, 'Venustiano Carranza');
INSERT INTO `municipio` VALUES (9, 281, 'Xochimilco');
INSERT INTO `municipio` VALUES (10, 282, 'Durango');
INSERT INTO `municipio` VALUES (10, 283, 'Canatlán');
INSERT INTO `municipio` VALUES (10, 284, 'Nuevo Ideal');
INSERT INTO `municipio` VALUES (10, 285, 'Coneto de Comonfort');
INSERT INTO `municipio` VALUES (10, 286, 'San Juan del Río');
INSERT INTO `municipio` VALUES (10, 287, 'Canelas');
INSERT INTO `municipio` VALUES (10, 288, 'Topia');
INSERT INTO `municipio` VALUES (10, 289, 'Tamazula');
INSERT INTO `municipio` VALUES (10, 290, 'Santiago Papasquiaro');
INSERT INTO `municipio` VALUES (10, 291, 'Otáez');
INSERT INTO `municipio` VALUES (10, 292, 'San Dimas');
INSERT INTO `municipio` VALUES (10, 293, 'Guadalupe Victoria');
INSERT INTO `municipio` VALUES (10, 294, 'Peñón Blanco');
INSERT INTO `municipio` VALUES (10, 295, 'Pánuco de Coronado');
INSERT INTO `municipio` VALUES (10, 296, 'Poanas');
INSERT INTO `municipio` VALUES (10, 297, 'Nombre de Dios');
INSERT INTO `municipio` VALUES (10, 298, 'Vicente Guerrero');
INSERT INTO `municipio` VALUES (10, 299, 'Súchil');
INSERT INTO `municipio` VALUES (10, 300, 'Pueblo Nuevo');
INSERT INTO `municipio` VALUES (10, 301, 'Mezquital');
INSERT INTO `municipio` VALUES (10, 302, 'Gómez Palacio');
INSERT INTO `municipio` VALUES (10, 303, 'Lerdo');
INSERT INTO `municipio` VALUES (10, 304, 'Mapimí');
INSERT INTO `municipio` VALUES (10, 305, 'Tlahualilo');
INSERT INTO `municipio` VALUES (10, 306, 'Hidalgo');
INSERT INTO `municipio` VALUES (10, 307, 'Ocampo');
INSERT INTO `municipio` VALUES (10, 308, 'Guanaceví');
INSERT INTO `municipio` VALUES (10, 309, 'San Bernardo');
INSERT INTO `municipio` VALUES (10, 310, 'Indé');
INSERT INTO `municipio` VALUES (10, 311, 'San Pedro del Gallo');
INSERT INTO `municipio` VALUES (10, 312, 'Tepehuanes');
INSERT INTO `municipio` VALUES (10, 313, 'El Oro');
INSERT INTO `municipio` VALUES (10, 314, 'Nazas');
INSERT INTO `municipio` VALUES (10, 315, 'San Luis del Cordero');
INSERT INTO `municipio` VALUES (10, 316, 'Rodeo');
INSERT INTO `municipio` VALUES (10, 317, 'Cuencamé');
INSERT INTO `municipio` VALUES (10, 318, 'Santa Clara');
INSERT INTO `municipio` VALUES (10, 319, 'San Juan de Guadalupe');
INSERT INTO `municipio` VALUES (10, 320, 'General Simón Bolívar');
INSERT INTO `municipio` VALUES (11, 321, 'Guanajuato');
INSERT INTO `municipio` VALUES (11, 322, 'Silao de la Victoria');
INSERT INTO `municipio` VALUES (11, 323, 'Romita');
INSERT INTO `municipio` VALUES (11, 324, 'San Francisco del Rincón');
INSERT INTO `municipio` VALUES (11, 325, 'Purísima del Rincón');
INSERT INTO `municipio` VALUES (11, 326, 'Manuel Doblado');
INSERT INTO `municipio` VALUES (11, 327, 'Irapuato');
INSERT INTO `municipio` VALUES (11, 328, 'Salamanca');
INSERT INTO `municipio` VALUES (11, 329, 'Pueblo Nuevo');
INSERT INTO `municipio` VALUES (11, 330, 'Pénjamo');
INSERT INTO `municipio` VALUES (11, 331, 'Cuerámaro');
INSERT INTO `municipio` VALUES (11, 332, 'Abasolo');
INSERT INTO `municipio` VALUES (11, 333, 'Huanímaro');
INSERT INTO `municipio` VALUES (11, 334, 'León');
INSERT INTO `municipio` VALUES (11, 335, 'San Felipe');
INSERT INTO `municipio` VALUES (11, 336, 'Ocampo');
INSERT INTO `municipio` VALUES (11, 337, 'San Miguel de Allende');
INSERT INTO `municipio` VALUES (11, 338, 'Dolores Hidalgo Cuna de la Independencia Nacional');
INSERT INTO `municipio` VALUES (11, 339, 'San Diego de la Unión');
INSERT INTO `municipio` VALUES (11, 340, 'San Luis de la Paz');
INSERT INTO `municipio` VALUES (11, 341, 'Victoria');
INSERT INTO `municipio` VALUES (11, 342, 'Xichú');
INSERT INTO `municipio` VALUES (11, 343, 'Atarjea');
INSERT INTO `municipio` VALUES (11, 344, 'Santa Catarina');
INSERT INTO `municipio` VALUES (11, 345, 'Doctor Mora');
INSERT INTO `municipio` VALUES (11, 346, 'Tierra Blanca');
INSERT INTO `municipio` VALUES (11, 347, 'San José Iturbide');
INSERT INTO `municipio` VALUES (11, 348, 'Celaya');
INSERT INTO `municipio` VALUES (11, 349, 'Apaseo el Grande');
INSERT INTO `municipio` VALUES (11, 350, 'Comonfort');
INSERT INTO `municipio` VALUES (11, 351, 'Santa Cruz de Juventino Rosas');
INSERT INTO `municipio` VALUES (11, 352, 'Villagrán');
INSERT INTO `municipio` VALUES (11, 353, 'Cortazar');
INSERT INTO `municipio` VALUES (11, 354, 'Valle de Santiago');
INSERT INTO `municipio` VALUES (11, 355, 'Jaral del Progreso');
INSERT INTO `municipio` VALUES (11, 356, 'Apaseo el Alto');
INSERT INTO `municipio` VALUES (11, 357, 'Jerécuaro');
INSERT INTO `municipio` VALUES (11, 358, 'Coroneo');
INSERT INTO `municipio` VALUES (11, 359, 'Acámbaro');
INSERT INTO `municipio` VALUES (11, 360, 'Tarimoro');
INSERT INTO `municipio` VALUES (11, 361, 'Tarandacuao');
INSERT INTO `municipio` VALUES (11, 362, 'Moroleón');
INSERT INTO `municipio` VALUES (11, 363, 'Salvatierra');
INSERT INTO `municipio` VALUES (11, 364, 'Yuriria');
INSERT INTO `municipio` VALUES (11, 365, 'Santiago Maravatío');
INSERT INTO `municipio` VALUES (11, 366, 'Uriangato');
INSERT INTO `municipio` VALUES (12, 367, 'Chilpancingo de los Bravo');
INSERT INTO `municipio` VALUES (12, 368, 'General Heliodoro Castillo');
INSERT INTO `municipio` VALUES (12, 369, 'Leonardo Bravo');
INSERT INTO `municipio` VALUES (12, 370, 'Tixtla de Guerrero');
INSERT INTO `municipio` VALUES (12, 371, 'Ayutla de los Libres');
INSERT INTO `municipio` VALUES (12, 372, 'Mochitlán');
INSERT INTO `municipio` VALUES (12, 373, 'Quechultenango');
INSERT INTO `municipio` VALUES (12, 374, 'Tecoanapa');
INSERT INTO `municipio` VALUES (12, 375, 'Acapulco de Juárez');
INSERT INTO `municipio` VALUES (12, 376, 'Juan R. Escudero');
INSERT INTO `municipio` VALUES (12, 377, 'San Marcos');
INSERT INTO `municipio` VALUES (12, 378, 'Iguala de la Independencia');
INSERT INTO `municipio` VALUES (12, 379, 'Huitzuco de los Figueroa');
INSERT INTO `municipio` VALUES (12, 380, 'Tepecoacuilco de Trujano');
INSERT INTO `municipio` VALUES (12, 381, 'Eduardo Neri');
INSERT INTO `municipio` VALUES (12, 382, 'Taxco de Alarcón');
INSERT INTO `municipio` VALUES (12, 383, 'Buenavista de Cuéllar');
INSERT INTO `municipio` VALUES (12, 384, 'Tetipac');
INSERT INTO `municipio` VALUES (12, 385, 'Pilcaya');
INSERT INTO `municipio` VALUES (12, 386, 'Teloloapan');
INSERT INTO `municipio` VALUES (12, 387, 'Ixcateopan de Cuauhtémoc');
INSERT INTO `municipio` VALUES (12, 388, 'Pedro Ascencio Alquisiras');
INSERT INTO `municipio` VALUES (12, 389, 'General Canuto A. Neri');
INSERT INTO `municipio` VALUES (12, 390, 'Arcelia');
INSERT INTO `municipio` VALUES (12, 391, 'Apaxtla');
INSERT INTO `municipio` VALUES (12, 392, 'Cuetzala del Progreso');
INSERT INTO `municipio` VALUES (12, 393, 'Cocula');
INSERT INTO `municipio` VALUES (12, 394, 'Tlapehuala');
INSERT INTO `municipio` VALUES (12, 395, 'Cutzamala de Pinzón');
INSERT INTO `municipio` VALUES (12, 396, 'Pungarabato');
INSERT INTO `municipio` VALUES (12, 397, 'Tlalchapa');
INSERT INTO `municipio` VALUES (12, 398, 'Coyuca de Catalán');
INSERT INTO `municipio` VALUES (12, 399, 'Ajuchitlán del Progreso');
INSERT INTO `municipio` VALUES (12, 400, 'Zirándaro');
INSERT INTO `municipio` VALUES (12, 401, 'San Miguel Totolapan');
INSERT INTO `municipio` VALUES (12, 402, 'La Unión de Isidoro Montes de Oca');
INSERT INTO `municipio` VALUES (12, 403, 'Petatlán');
INSERT INTO `municipio` VALUES (12, 404, 'Coahuayutla de José María Izazaga');
INSERT INTO `municipio` VALUES (12, 405, 'Zihuatanejo de Azueta');
INSERT INTO `municipio` VALUES (12, 406, 'Técpan de Galeana');
INSERT INTO `municipio` VALUES (12, 407, 'Atoyac de Álvarez');
INSERT INTO `municipio` VALUES (12, 408, 'Benito Juárez');
INSERT INTO `municipio` VALUES (12, 409, 'Coyuca de Benítez');
INSERT INTO `municipio` VALUES (12, 410, 'Olinalá');
INSERT INTO `municipio` VALUES (12, 411, 'Atenango del Río');
INSERT INTO `municipio` VALUES (12, 412, 'Copalillo');
INSERT INTO `municipio` VALUES (12, 413, 'Cualác');
INSERT INTO `municipio` VALUES (12, 414, 'Chilapa de Álvarez');
INSERT INTO `municipio` VALUES (12, 415, 'José Joaquín de Herrera');
INSERT INTO `municipio` VALUES (12, 416, 'Ahuacuotzingo');
INSERT INTO `municipio` VALUES (12, 417, 'Zitlala');
INSERT INTO `municipio` VALUES (12, 418, 'Mártir de Cuilapan');
INSERT INTO `municipio` VALUES (12, 419, 'Huamuxtitlán');
INSERT INTO `municipio` VALUES (12, 420, 'Xochihuehuetlán');
INSERT INTO `municipio` VALUES (12, 421, 'Alpoyeca');
INSERT INTO `municipio` VALUES (12, 422, 'Tlapa de Comonfort');
INSERT INTO `municipio` VALUES (12, 423, 'Tlalixtaquilla de Maldonado');
INSERT INTO `municipio` VALUES (12, 424, 'Xalpatláhuac');
INSERT INTO `municipio` VALUES (12, 425, 'Zapotitlán Tablas');
INSERT INTO `municipio` VALUES (12, 426, 'Acatepec');
INSERT INTO `municipio` VALUES (12, 427, 'Atlixtac');
INSERT INTO `municipio` VALUES (12, 428, 'Copanatoyac');
INSERT INTO `municipio` VALUES (12, 429, 'Malinaltepec');
INSERT INTO `municipio` VALUES (12, 430, 'Iliatenco');
INSERT INTO `municipio` VALUES (12, 431, 'Tlacoapa');
INSERT INTO `municipio` VALUES (12, 432, 'Atlamajalcingo del Monte');
INSERT INTO `municipio` VALUES (12, 433, 'San Luis Acatlán');
INSERT INTO `municipio` VALUES (12, 434, 'Metlatónoc');
INSERT INTO `municipio` VALUES (12, 435, 'Cochoapa el Grande');
INSERT INTO `municipio` VALUES (12, 436, 'Alcozauca de Guerrero');
INSERT INTO `municipio` VALUES (12, 437, 'Ometepec');
INSERT INTO `municipio` VALUES (12, 438, 'Tlacoachistlahuaca');
INSERT INTO `municipio` VALUES (12, 439, 'Xochistlahuaca');
INSERT INTO `municipio` VALUES (12, 440, 'Florencio Villarreal');
INSERT INTO `municipio` VALUES (12, 441, 'Cuautepec');
INSERT INTO `municipio` VALUES (12, 442, 'Copala');
INSERT INTO `municipio` VALUES (12, 443, 'Azoyú');
INSERT INTO `municipio` VALUES (12, 444, 'Juchitán');
INSERT INTO `municipio` VALUES (12, 445, 'Marquelia');
INSERT INTO `municipio` VALUES (12, 446, 'Cuajinicuilapa');
INSERT INTO `municipio` VALUES (12, 447, 'Igualapa');
INSERT INTO `municipio` VALUES (13, 448, 'Pachuca de Soto');
INSERT INTO `municipio` VALUES (13, 449, 'Mineral del Chico');
INSERT INTO `municipio` VALUES (13, 450, 'Mineral del Monte');
INSERT INTO `municipio` VALUES (13, 451, 'Ajacuba');
INSERT INTO `municipio` VALUES (13, 452, 'San Agustín Tlaxiaca');
INSERT INTO `municipio` VALUES (13, 453, 'Mineral de la Reforma');
INSERT INTO `municipio` VALUES (13, 454, 'Zapotlán de Juárez');
INSERT INTO `municipio` VALUES (13, 455, 'Jacala de Ledezma');
INSERT INTO `municipio` VALUES (13, 456, 'Pisaflores');
INSERT INTO `municipio` VALUES (13, 457, 'Pacula');
INSERT INTO `municipio` VALUES (13, 458, 'La Misión');
INSERT INTO `municipio` VALUES (13, 459, 'Chapulhuacán');
INSERT INTO `municipio` VALUES (13, 460, 'Ixmiquilpan');
INSERT INTO `municipio` VALUES (13, 461, 'Zimapán');
INSERT INTO `municipio` VALUES (13, 462, 'Nicolás Flores');
INSERT INTO `municipio` VALUES (13, 463, 'Cardonal');
INSERT INTO `municipio` VALUES (13, 464, 'Tasquillo');
INSERT INTO `municipio` VALUES (13, 465, 'Alfajayucan');
INSERT INTO `municipio` VALUES (13, 466, 'Huichapan');
INSERT INTO `municipio` VALUES (13, 467, 'Tecozautla');
INSERT INTO `municipio` VALUES (13, 468, 'Nopala de Villagrán');
INSERT INTO `municipio` VALUES (13, 469, 'Actopan');
INSERT INTO `municipio` VALUES (13, 470, 'Santiago de Anaya');
INSERT INTO `municipio` VALUES (13, 471, 'San Salvador');
INSERT INTO `municipio` VALUES (13, 472, 'Francisco I. Madero');
INSERT INTO `municipio` VALUES (13, 473, 'El Arenal');
INSERT INTO `municipio` VALUES (13, 474, 'Mixquiahuala de Juárez');
INSERT INTO `municipio` VALUES (13, 475, 'Progreso de Obregón');
INSERT INTO `municipio` VALUES (13, 476, 'Chilcuautla');
INSERT INTO `municipio` VALUES (13, 477, 'Tezontepec de Aldama');
INSERT INTO `municipio` VALUES (13, 478, 'Tlahuelilpan');
INSERT INTO `municipio` VALUES (13, 479, 'Tula de Allende');
INSERT INTO `municipio` VALUES (13, 480, 'Tepeji del Río de Ocampo');
INSERT INTO `municipio` VALUES (13, 481, 'Chapantongo');
INSERT INTO `municipio` VALUES (13, 482, 'Tepetitlán');
INSERT INTO `municipio` VALUES (13, 483, 'Tetepango');
INSERT INTO `municipio` VALUES (13, 484, 'Tlaxcoapan');
INSERT INTO `municipio` VALUES (13, 485, 'Atitalaquia');
INSERT INTO `municipio` VALUES (13, 486, 'Atotonilco de Tula');
INSERT INTO `municipio` VALUES (13, 487, 'Huejutla de Reyes');
INSERT INTO `municipio` VALUES (13, 488, 'San Felipe Orizatlán');
INSERT INTO `municipio` VALUES (13, 489, 'Jaltocán');
INSERT INTO `municipio` VALUES (13, 490, 'Huautla');
INSERT INTO `municipio` VALUES (13, 491, 'Atlapexco');
INSERT INTO `municipio` VALUES (13, 492, 'Huazalingo');
INSERT INTO `municipio` VALUES (13, 493, 'Yahualica');
INSERT INTO `municipio` VALUES (13, 494, 'Xochiatipan');
INSERT INTO `municipio` VALUES (13, 495, 'Molango de Escamilla');
INSERT INTO `municipio` VALUES (13, 496, 'Tepehuacán de Guerrero');
INSERT INTO `municipio` VALUES (13, 497, 'Lolotla');
INSERT INTO `municipio` VALUES (13, 498, 'Tlanchinol');
INSERT INTO `municipio` VALUES (13, 499, 'Tlahuiltepa');
INSERT INTO `municipio` VALUES (13, 500, 'Juárez Hidalgo');
INSERT INTO `municipio` VALUES (13, 501, 'Zacualtipán de Ángeles');
INSERT INTO `municipio` VALUES (13, 502, 'Calnali');
INSERT INTO `municipio` VALUES (13, 503, 'Xochicoatlán');
INSERT INTO `municipio` VALUES (13, 504, 'Tianguistengo');
INSERT INTO `municipio` VALUES (13, 505, 'Atotonilco el Grande');
INSERT INTO `municipio` VALUES (13, 506, 'Eloxochitlán');
INSERT INTO `municipio` VALUES (13, 507, 'Metztitlán');
INSERT INTO `municipio` VALUES (13, 508, 'San Agustín Metzquititlán');
INSERT INTO `municipio` VALUES (13, 509, 'Metepec');
INSERT INTO `municipio` VALUES (13, 510, 'Huehuetla');
INSERT INTO `municipio` VALUES (13, 511, 'San Bartolo Tutotepec');
INSERT INTO `municipio` VALUES (13, 512, 'Agua Blanca de Iturbide');
INSERT INTO `municipio` VALUES (13, 513, 'Tenango de Doria');
INSERT INTO `municipio` VALUES (13, 514, 'Huasca de Ocampo');
INSERT INTO `municipio` VALUES (13, 515, 'Acatlán');
INSERT INTO `municipio` VALUES (13, 516, 'Omitlán de Juárez');
INSERT INTO `municipio` VALUES (13, 517, 'Epazoyucan');
INSERT INTO `municipio` VALUES (13, 518, 'Tulancingo de Bravo');
INSERT INTO `municipio` VALUES (13, 519, 'Acaxochitlán');
INSERT INTO `municipio` VALUES (13, 520, 'Cuautepec de Hinojosa');
INSERT INTO `municipio` VALUES (13, 521, 'Santiago Tulantepec de Lugo Guerrero');
INSERT INTO `municipio` VALUES (13, 522, 'Singuilucan');
INSERT INTO `municipio` VALUES (13, 523, 'Tizayuca');
INSERT INTO `municipio` VALUES (13, 524, 'Zempoala');
INSERT INTO `municipio` VALUES (13, 525, 'Tolcayuca');
INSERT INTO `municipio` VALUES (13, 526, 'Villa de Tezontepec');
INSERT INTO `municipio` VALUES (13, 527, 'Apan');
INSERT INTO `municipio` VALUES (13, 528, 'Tlanalapa');
INSERT INTO `municipio` VALUES (13, 529, 'Almoloya');
INSERT INTO `municipio` VALUES (13, 530, 'Emiliano Zapata');
INSERT INTO `municipio` VALUES (13, 531, 'Tepeapulco');
INSERT INTO `municipio` VALUES (14, 532, 'Guadalajara');
INSERT INTO `municipio` VALUES (14, 533, 'Zapopan');
INSERT INTO `municipio` VALUES (14, 534, 'San Cristóbal de la Barranca');
INSERT INTO `municipio` VALUES (14, 535, 'Ixtlahuacán del Río');
INSERT INTO `municipio` VALUES (14, 536, 'Tala');
INSERT INTO `municipio` VALUES (14, 537, 'El Arenal');
INSERT INTO `municipio` VALUES (14, 538, 'Amatitán');
INSERT INTO `municipio` VALUES (14, 539, 'Tonalá');
INSERT INTO `municipio` VALUES (14, 540, 'Zapotlanejo');
INSERT INTO `municipio` VALUES (14, 541, 'Acatic');
INSERT INTO `municipio` VALUES (14, 542, 'Cuquío');
INSERT INTO `municipio` VALUES (14, 543, 'San Pedro Tlaquepaque');
INSERT INTO `municipio` VALUES (14, 544, 'Tlajomulco de Zúñiga');
INSERT INTO `municipio` VALUES (14, 545, 'El Salto');
INSERT INTO `municipio` VALUES (14, 546, 'Acatlán de Juárez');
INSERT INTO `municipio` VALUES (14, 547, 'Villa Corona');
INSERT INTO `municipio` VALUES (14, 548, 'Zacoalco de Torres');
INSERT INTO `municipio` VALUES (14, 549, 'Atemajac de Brizuela');
INSERT INTO `municipio` VALUES (14, 550, 'Jocotepec');
INSERT INTO `municipio` VALUES (14, 551, 'Ixtlahuacán de los Membrillos');
INSERT INTO `municipio` VALUES (14, 552, 'Juanacatlán');
INSERT INTO `municipio` VALUES (14, 553, 'Chapala');
INSERT INTO `municipio` VALUES (14, 554, 'Poncitlán');
INSERT INTO `municipio` VALUES (14, 555, 'Zapotlán del Rey');
INSERT INTO `municipio` VALUES (14, 556, 'Huejuquilla el Alto');
INSERT INTO `municipio` VALUES (14, 557, 'Mezquitic');
INSERT INTO `municipio` VALUES (14, 558, 'Villa Guerrero');
INSERT INTO `municipio` VALUES (14, 559, 'Bolaños');
INSERT INTO `municipio` VALUES (14, 560, 'Totatiche');
INSERT INTO `municipio` VALUES (14, 561, 'Colotlán');
INSERT INTO `municipio` VALUES (14, 562, 'Santa María de los Ángeles');
INSERT INTO `municipio` VALUES (14, 563, 'Huejúcar');
INSERT INTO `municipio` VALUES (14, 564, 'Chimaltitán');
INSERT INTO `municipio` VALUES (14, 565, 'San Martín de Bolaños');
INSERT INTO `municipio` VALUES (14, 566, 'Tequila');
INSERT INTO `municipio` VALUES (14, 567, 'Hostotipaquillo');
INSERT INTO `municipio` VALUES (14, 568, 'Magdalena');
INSERT INTO `municipio` VALUES (14, 569, 'Etzatlán');
INSERT INTO `municipio` VALUES (14, 570, 'San Marcos');
INSERT INTO `municipio` VALUES (14, 571, 'San Juanito de Escobedo');
INSERT INTO `municipio` VALUES (14, 572, 'Ameca');
INSERT INTO `municipio` VALUES (14, 573, 'Ahualulco de Mercado');
INSERT INTO `municipio` VALUES (14, 574, 'Teuchitlán');
INSERT INTO `municipio` VALUES (14, 575, 'San Martín Hidalgo');
INSERT INTO `municipio` VALUES (14, 576, 'Guachinango');
INSERT INTO `municipio` VALUES (14, 577, 'Mixtlán');
INSERT INTO `municipio` VALUES (14, 578, 'Mascota');
INSERT INTO `municipio` VALUES (14, 579, 'San Sebastián del Oeste');
INSERT INTO `municipio` VALUES (14, 580, 'San Juan de los Lagos');
INSERT INTO `municipio` VALUES (14, 581, 'Jalostotitlán');
INSERT INTO `municipio` VALUES (14, 582, 'San Miguel el Alto');
INSERT INTO `municipio` VALUES (14, 583, 'San Julián');
INSERT INTO `municipio` VALUES (14, 584, 'Arandas');
INSERT INTO `municipio` VALUES (14, 585, 'San Ignacio Cerro Gordo');
INSERT INTO `municipio` VALUES (14, 586, 'Teocaltiche');
INSERT INTO `municipio` VALUES (14, 587, 'Villa Hidalgo');
INSERT INTO `municipio` VALUES (14, 588, 'Encarnación de Díaz');
INSERT INTO `municipio` VALUES (14, 589, 'Yahualica de González Gallo');
INSERT INTO `municipio` VALUES (14, 590, 'Mexticacán');
INSERT INTO `municipio` VALUES (14, 591, 'Cañadas de Obregón');
INSERT INTO `municipio` VALUES (14, 592, 'Valle de Guadalupe');
INSERT INTO `municipio` VALUES (14, 593, 'Lagos de Moreno');
INSERT INTO `municipio` VALUES (14, 594, 'Ojuelos de Jalisco');
INSERT INTO `municipio` VALUES (14, 595, 'Unión de San Antonio');
INSERT INTO `municipio` VALUES (14, 596, 'San Diego de Alejandría');
INSERT INTO `municipio` VALUES (14, 597, 'Tepatitlán de Morelos');
INSERT INTO `municipio` VALUES (14, 598, 'Tototlán');
INSERT INTO `municipio` VALUES (14, 599, 'Atotonilco el Alto');
INSERT INTO `municipio` VALUES (14, 600, 'Ocotlán');
INSERT INTO `municipio` VALUES (14, 601, 'Jamay');
INSERT INTO `municipio` VALUES (14, 602, 'La Barca');
INSERT INTO `municipio` VALUES (14, 603, 'Ayotlán');
INSERT INTO `municipio` VALUES (14, 604, 'Jesús María');
INSERT INTO `municipio` VALUES (14, 605, 'Degollado');
INSERT INTO `municipio` VALUES (14, 606, 'Unión de Tula');
INSERT INTO `municipio` VALUES (14, 607, 'Ayutla');
INSERT INTO `municipio` VALUES (14, 608, 'Atenguillo');
INSERT INTO `municipio` VALUES (14, 609, 'Cuautla');
INSERT INTO `municipio` VALUES (14, 610, 'Atengo');
INSERT INTO `municipio` VALUES (14, 611, 'Talpa de Allende');
INSERT INTO `municipio` VALUES (14, 612, 'Puerto Vallarta');
INSERT INTO `municipio` VALUES (14, 613, 'Cabo Corrientes');
INSERT INTO `municipio` VALUES (14, 614, 'Tomatlán');
INSERT INTO `municipio` VALUES (14, 615, 'Cocula');
INSERT INTO `municipio` VALUES (14, 616, 'Tecolotlán');
INSERT INTO `municipio` VALUES (14, 617, 'Tenamaxtlán');
INSERT INTO `municipio` VALUES (14, 618, 'Juchitlán');
INSERT INTO `municipio` VALUES (14, 619, 'Chiquilistlán');
INSERT INTO `municipio` VALUES (14, 620, 'Ejutla');
INSERT INTO `municipio` VALUES (14, 621, 'El Limón');
INSERT INTO `municipio` VALUES (14, 622, 'El Grullo');
INSERT INTO `municipio` VALUES (14, 623, 'Tonaya');
INSERT INTO `municipio` VALUES (14, 624, 'Tuxcacuesco');
INSERT INTO `municipio` VALUES (14, 625, 'Villa Purificación');
INSERT INTO `municipio` VALUES (14, 626, 'La Huerta');
INSERT INTO `municipio` VALUES (14, 627, 'Autlán de Navarro');
INSERT INTO `municipio` VALUES (14, 628, 'Casimiro Castillo');
INSERT INTO `municipio` VALUES (14, 629, 'Cuautitlán de García Barragán');
INSERT INTO `municipio` VALUES (14, 630, 'Cihuatlán');
INSERT INTO `municipio` VALUES (14, 631, 'Zapotlán el Grande');
INSERT INTO `municipio` VALUES (14, 632, 'Gómez Farías');
INSERT INTO `municipio` VALUES (14, 633, 'Concepción de Buenos Aires');
INSERT INTO `municipio` VALUES (14, 634, 'Atoyac');
INSERT INTO `municipio` VALUES (14, 635, 'Techaluta de Montenegro');
INSERT INTO `municipio` VALUES (14, 636, 'Teocuitatlán de Corona');
INSERT INTO `municipio` VALUES (14, 637, 'Sayula');
INSERT INTO `municipio` VALUES (14, 638, 'Tapalpa');
INSERT INTO `municipio` VALUES (14, 639, 'Amacueca');
INSERT INTO `municipio` VALUES (14, 640, 'Tizapán el Alto');
INSERT INTO `municipio` VALUES (14, 641, 'Tuxcueca');
INSERT INTO `municipio` VALUES (14, 642, 'La Manzanilla de la Paz');
INSERT INTO `municipio` VALUES (14, 643, 'Mazamitla');
INSERT INTO `municipio` VALUES (14, 644, 'Valle de Juárez');
INSERT INTO `municipio` VALUES (14, 645, 'Quitupan');
INSERT INTO `municipio` VALUES (14, 646, 'Zapotiltic');
INSERT INTO `municipio` VALUES (14, 647, 'Tamazula de Gordiano');
INSERT INTO `municipio` VALUES (14, 648, 'San Gabriel');
INSERT INTO `municipio` VALUES (14, 649, 'Tolimán');
INSERT INTO `municipio` VALUES (14, 650, 'Zapotitlán de Vadillo');
INSERT INTO `municipio` VALUES (14, 651, 'Tuxpan');
INSERT INTO `municipio` VALUES (14, 652, 'Tonila');
INSERT INTO `municipio` VALUES (14, 653, 'Pihuamo');
INSERT INTO `municipio` VALUES (14, 654, 'Tecalitlán');
INSERT INTO `municipio` VALUES (14, 655, 'Jilotlán de los Dolores');
INSERT INTO `municipio` VALUES (14, 656, 'Santa María del Oro');
INSERT INTO `municipio` VALUES (15, 657, 'Toluca');
INSERT INTO `municipio` VALUES (15, 658, 'Acambay de Ruíz Castañeda');
INSERT INTO `municipio` VALUES (15, 659, 'Aculco');
INSERT INTO `municipio` VALUES (15, 660, 'Temascalcingo');
INSERT INTO `municipio` VALUES (15, 661, 'Atlacomulco');
INSERT INTO `municipio` VALUES (15, 662, 'Timilpan');
INSERT INTO `municipio` VALUES (15, 663, 'Morelos');
INSERT INTO `municipio` VALUES (15, 664, 'El Oro');
INSERT INTO `municipio` VALUES (15, 665, 'San Felipe del Progreso');
INSERT INTO `municipio` VALUES (15, 666, 'San José del Rincón');
INSERT INTO `municipio` VALUES (15, 667, 'Jocotitlán');
INSERT INTO `municipio` VALUES (15, 668, 'Ixtlahuaca');
INSERT INTO `municipio` VALUES (15, 669, 'Jiquipilco');
INSERT INTO `municipio` VALUES (15, 670, 'Temoaya');
INSERT INTO `municipio` VALUES (15, 671, 'Almoloya de Juárez');
INSERT INTO `municipio` VALUES (15, 672, 'Villa Victoria');
INSERT INTO `municipio` VALUES (15, 673, 'Villa de Allende');
INSERT INTO `municipio` VALUES (15, 674, 'Donato Guerra');
INSERT INTO `municipio` VALUES (15, 675, 'Ixtapan del Oro');
INSERT INTO `municipio` VALUES (15, 676, 'Santo Tomás');
INSERT INTO `municipio` VALUES (15, 677, 'Otzoloapan');
INSERT INTO `municipio` VALUES (15, 678, 'Zacazonapan');
INSERT INTO `municipio` VALUES (15, 679, 'Valle de Bravo');
INSERT INTO `municipio` VALUES (15, 680, 'Amanalco');
INSERT INTO `municipio` VALUES (15, 681, 'Temascaltepec');
INSERT INTO `municipio` VALUES (15, 682, 'Zinacantepec');
INSERT INTO `municipio` VALUES (15, 683, 'Tejupilco');
INSERT INTO `municipio` VALUES (15, 684, 'Luvianos');
INSERT INTO `municipio` VALUES (15, 685, 'San Simón de Guerrero');
INSERT INTO `municipio` VALUES (15, 686, 'Amatepec');
INSERT INTO `municipio` VALUES (15, 687, 'Tlatlaya');
INSERT INTO `municipio` VALUES (15, 688, 'Sultepec');
INSERT INTO `municipio` VALUES (15, 689, 'Texcaltitlán');
INSERT INTO `municipio` VALUES (15, 690, 'Coatepec Harinas');
INSERT INTO `municipio` VALUES (15, 691, 'Villa Guerrero');
INSERT INTO `municipio` VALUES (15, 692, 'Zacualpan');
INSERT INTO `municipio` VALUES (15, 693, 'Almoloya de Alquisiras');
INSERT INTO `municipio` VALUES (15, 694, 'Ixtapan de la Sal');
INSERT INTO `municipio` VALUES (15, 695, 'Tonatico');
INSERT INTO `municipio` VALUES (15, 696, 'Zumpahuacán');
INSERT INTO `municipio` VALUES (15, 697, 'Lerma');
INSERT INTO `municipio` VALUES (15, 698, 'Xonacatlán');
INSERT INTO `municipio` VALUES (15, 699, 'Otzolotepec');
INSERT INTO `municipio` VALUES (15, 700, 'San Mateo Atenco');
INSERT INTO `municipio` VALUES (15, 701, 'Metepec');
INSERT INTO `municipio` VALUES (15, 702, 'Mexicaltzingo');
INSERT INTO `municipio` VALUES (15, 703, 'Calimaya');
INSERT INTO `municipio` VALUES (15, 704, 'Chapultepec');
INSERT INTO `municipio` VALUES (15, 705, 'San Antonio la Isla');
INSERT INTO `municipio` VALUES (15, 706, 'Tenango del Valle');
INSERT INTO `municipio` VALUES (15, 707, 'Rayón');
INSERT INTO `municipio` VALUES (15, 708, 'Joquicingo');
INSERT INTO `municipio` VALUES (15, 709, 'Tenancingo');
INSERT INTO `municipio` VALUES (15, 710, 'Malinalco');
INSERT INTO `municipio` VALUES (15, 711, 'Ocuilan');
INSERT INTO `municipio` VALUES (15, 712, 'Atizapán');
INSERT INTO `municipio` VALUES (15, 713, 'Almoloya del Río');
INSERT INTO `municipio` VALUES (15, 714, 'Texcalyacac');
INSERT INTO `municipio` VALUES (15, 715, 'Tianguistenco');
INSERT INTO `municipio` VALUES (15, 716, 'Xalatlaco');
INSERT INTO `municipio` VALUES (15, 717, 'Capulhuac');
INSERT INTO `municipio` VALUES (15, 718, 'Ocoyoacac');
INSERT INTO `municipio` VALUES (15, 719, 'Huixquilucan');
INSERT INTO `municipio` VALUES (15, 720, 'Atizapán de Zaragoza');
INSERT INTO `municipio` VALUES (15, 721, 'Naucalpan de Juárez');
INSERT INTO `municipio` VALUES (15, 722, 'Tlalnepantla de Baz');
INSERT INTO `municipio` VALUES (15, 723, 'Polotitlán');
INSERT INTO `municipio` VALUES (15, 724, 'Jilotepec');
INSERT INTO `municipio` VALUES (15, 725, 'Soyaniquilpan de Juárez');
INSERT INTO `municipio` VALUES (15, 726, 'Villa del Carbón');
INSERT INTO `municipio` VALUES (15, 727, 'Chapa de Mota');
INSERT INTO `municipio` VALUES (15, 728, 'Nicolás Romero');
INSERT INTO `municipio` VALUES (15, 729, 'Isidro Fabela');
INSERT INTO `municipio` VALUES (15, 730, 'Jilotzingo');
INSERT INTO `municipio` VALUES (15, 731, 'Tepotzotlán');
INSERT INTO `municipio` VALUES (15, 732, 'Coyotepec');
INSERT INTO `municipio` VALUES (15, 733, 'Huehuetoca');
INSERT INTO `municipio` VALUES (15, 734, 'Cuautitlán Izcalli');
INSERT INTO `municipio` VALUES (15, 735, 'Teoloyucan');
INSERT INTO `municipio` VALUES (15, 736, 'Cuautitlán');
INSERT INTO `municipio` VALUES (15, 737, 'Melchor Ocampo');
INSERT INTO `municipio` VALUES (15, 738, 'Tultitlán');
INSERT INTO `municipio` VALUES (15, 739, 'Tultepec');
INSERT INTO `municipio` VALUES (15, 740, 'Ecatepec de Morelos');
INSERT INTO `municipio` VALUES (15, 741, 'Zumpango');
INSERT INTO `municipio` VALUES (15, 742, 'Tequixquiac');
INSERT INTO `municipio` VALUES (15, 743, 'Apaxco');
INSERT INTO `municipio` VALUES (15, 744, 'Hueypoxtla');
INSERT INTO `municipio` VALUES (15, 745, 'Coacalco de Berriozábal');
INSERT INTO `municipio` VALUES (15, 746, 'Tecámac');
INSERT INTO `municipio` VALUES (15, 747, 'Jaltenco');
INSERT INTO `municipio` VALUES (15, 748, 'Tonanitla');
INSERT INTO `municipio` VALUES (15, 749, 'Nextlalpan');
INSERT INTO `municipio` VALUES (15, 750, 'Teotihuacán');
INSERT INTO `municipio` VALUES (15, 751, 'San Martín de las Pirámides');
INSERT INTO `municipio` VALUES (15, 752, 'Acolman');
INSERT INTO `municipio` VALUES (15, 753, 'Otumba');
INSERT INTO `municipio` VALUES (15, 754, 'Axapusco');
INSERT INTO `municipio` VALUES (15, 755, 'Nopaltepec');
INSERT INTO `municipio` VALUES (15, 756, 'Temascalapa');
INSERT INTO `municipio` VALUES (15, 757, 'Tezoyuca');
INSERT INTO `municipio` VALUES (15, 758, 'Chiautla');
INSERT INTO `municipio` VALUES (15, 759, 'Papalotla');
INSERT INTO `municipio` VALUES (15, 760, 'Tepetlaoxtoc');
INSERT INTO `municipio` VALUES (15, 761, 'Texcoco');
INSERT INTO `municipio` VALUES (15, 762, 'Chiconcuac');
INSERT INTO `municipio` VALUES (15, 763, 'Atenco');
INSERT INTO `municipio` VALUES (15, 764, 'Chimalhuacán');
INSERT INTO `municipio` VALUES (15, 765, 'Chicoloapan');
INSERT INTO `municipio` VALUES (15, 766, 'La Paz');
INSERT INTO `municipio` VALUES (15, 767, 'Ixtapaluca');
INSERT INTO `municipio` VALUES (15, 768, 'Chalco');
INSERT INTO `municipio` VALUES (15, 769, 'Valle de Chalco Solidaridad');
INSERT INTO `municipio` VALUES (15, 770, 'Temamatla');
INSERT INTO `municipio` VALUES (15, 771, 'Cocotitlán');
INSERT INTO `municipio` VALUES (15, 772, 'Tlalmanalco');
INSERT INTO `municipio` VALUES (15, 773, 'Ayapango');
INSERT INTO `municipio` VALUES (15, 774, 'Tenango del Aire');
INSERT INTO `municipio` VALUES (15, 775, 'Ozumba');
INSERT INTO `municipio` VALUES (15, 776, 'Juchitepec');
INSERT INTO `municipio` VALUES (15, 777, 'Tepetlixpa');
INSERT INTO `municipio` VALUES (15, 778, 'Amecameca');
INSERT INTO `municipio` VALUES (15, 779, 'Atlautla');
INSERT INTO `municipio` VALUES (15, 780, 'Ecatzingo');
INSERT INTO `municipio` VALUES (15, 781, 'Nezahualcóyotl');
INSERT INTO `municipio` VALUES (16, 782, 'Morelia');
INSERT INTO `municipio` VALUES (16, 783, 'Huaniqueo');
INSERT INTO `municipio` VALUES (16, 784, 'Coeneo');
INSERT INTO `municipio` VALUES (16, 785, 'Quiroga');
INSERT INTO `municipio` VALUES (16, 786, 'Tzintzuntzan');
INSERT INTO `municipio` VALUES (16, 787, 'Lagunillas');
INSERT INTO `municipio` VALUES (16, 788, 'Acuitzio');
INSERT INTO `municipio` VALUES (16, 789, 'Madero');
INSERT INTO `municipio` VALUES (16, 790, 'Puruándiro');
INSERT INTO `municipio` VALUES (16, 791, 'José Sixto Verduzco');
INSERT INTO `municipio` VALUES (16, 792, 'Angamacutiro');
INSERT INTO `municipio` VALUES (16, 793, 'Panindícuaro');
INSERT INTO `municipio` VALUES (16, 794, 'Zacapu');
INSERT INTO `municipio` VALUES (16, 795, 'Tlazazalca');
INSERT INTO `municipio` VALUES (16, 796, 'Purépero');
INSERT INTO `municipio` VALUES (16, 797, 'Jiménez');
INSERT INTO `municipio` VALUES (16, 798, 'Morelos');
INSERT INTO `municipio` VALUES (16, 799, 'Huandacareo');
INSERT INTO `municipio` VALUES (16, 800, 'Cuitzeo');
INSERT INTO `municipio` VALUES (16, 801, 'Chucándiro');
INSERT INTO `municipio` VALUES (16, 802, 'Copándaro');
INSERT INTO `municipio` VALUES (16, 803, 'Tarímbaro');
INSERT INTO `municipio` VALUES (16, 804, 'Santa Ana Maya');
INSERT INTO `municipio` VALUES (16, 805, 'Álvaro Obregón');
INSERT INTO `municipio` VALUES (16, 806, 'Zinapécuaro');
INSERT INTO `municipio` VALUES (16, 807, 'Indaparapeo');
INSERT INTO `municipio` VALUES (16, 808, 'Queréndaro');
INSERT INTO `municipio` VALUES (16, 809, 'Sahuayo');
INSERT INTO `municipio` VALUES (16, 810, 'Briseñas');
INSERT INTO `municipio` VALUES (16, 811, 'Cojumatlán de Régules');
INSERT INTO `municipio` VALUES (16, 812, 'Venustiano Carranza');
INSERT INTO `municipio` VALUES (16, 813, 'Pajacuarán');
INSERT INTO `municipio` VALUES (16, 814, 'Vista Hermosa');
INSERT INTO `municipio` VALUES (16, 815, 'Tanhuato');
INSERT INTO `municipio` VALUES (16, 816, 'Yurécuaro');
INSERT INTO `municipio` VALUES (16, 817, 'Ixtlán');
INSERT INTO `municipio` VALUES (16, 818, 'La Piedad');
INSERT INTO `municipio` VALUES (16, 819, 'Numarán');
INSERT INTO `municipio` VALUES (16, 820, 'Churintzio');
INSERT INTO `municipio` VALUES (16, 821, 'Zináparo');
INSERT INTO `municipio` VALUES (16, 822, 'Penjamillo');
INSERT INTO `municipio` VALUES (16, 823, 'Marcos Castellanos');
INSERT INTO `municipio` VALUES (16, 824, 'Jiquilpan');
INSERT INTO `municipio` VALUES (16, 825, 'Villamar');
INSERT INTO `municipio` VALUES (16, 826, 'Chavinda');
INSERT INTO `municipio` VALUES (16, 827, 'Zamora');
INSERT INTO `municipio` VALUES (16, 828, 'Ecuandureo');
INSERT INTO `municipio` VALUES (16, 829, 'Tangancícuaro');
INSERT INTO `municipio` VALUES (16, 830, 'Chilchota');
INSERT INTO `municipio` VALUES (16, 831, 'Jacona');
INSERT INTO `municipio` VALUES (16, 832, 'Tangamandapio');
INSERT INTO `municipio` VALUES (16, 833, 'Cotija');
INSERT INTO `municipio` VALUES (16, 834, 'Tocumbo');
INSERT INTO `municipio` VALUES (16, 835, 'Tingüindín');
INSERT INTO `municipio` VALUES (16, 836, 'Uruapan');
INSERT INTO `municipio` VALUES (16, 837, 'Charapan');
INSERT INTO `municipio` VALUES (16, 838, 'Paracho');
INSERT INTO `municipio` VALUES (16, 839, 'Cherán');
INSERT INTO `municipio` VALUES (16, 840, 'Nahuatzen');
INSERT INTO `municipio` VALUES (16, 841, 'Tingambato');
INSERT INTO `municipio` VALUES (16, 842, 'Los Reyes');
INSERT INTO `municipio` VALUES (16, 843, 'Peribán');
INSERT INTO `municipio` VALUES (16, 844, 'Tancítaro');
INSERT INTO `municipio` VALUES (16, 845, 'Nuevo Parangaricutiro');
INSERT INTO `municipio` VALUES (16, 846, 'Buenavista');
INSERT INTO `municipio` VALUES (16, 847, 'Tepalcatepec');
INSERT INTO `municipio` VALUES (16, 848, 'Aguililla');
INSERT INTO `municipio` VALUES (16, 849, 'Apatzingán');
INSERT INTO `municipio` VALUES (16, 850, 'Parácuaro');
INSERT INTO `municipio` VALUES (16, 851, 'Coahuayana');
INSERT INTO `municipio` VALUES (16, 852, 'Chinicuila');
INSERT INTO `municipio` VALUES (16, 853, 'Coalcomán de Vázquez Pallares');
INSERT INTO `municipio` VALUES (16, 854, 'Aquila');
INSERT INTO `municipio` VALUES (16, 855, 'Tumbiscatío');
INSERT INTO `municipio` VALUES (16, 856, 'Arteaga');
INSERT INTO `municipio` VALUES (16, 857, 'Lázaro Cárdenas');
INSERT INTO `municipio` VALUES (16, 858, 'Epitacio Huerta');
INSERT INTO `municipio` VALUES (16, 859, 'Contepec');
INSERT INTO `municipio` VALUES (16, 860, 'Tlalpujahua');
INSERT INTO `municipio` VALUES (16, 861, 'Hidalgo');
INSERT INTO `municipio` VALUES (16, 862, 'Maravatío');
INSERT INTO `municipio` VALUES (16, 863, 'Irimbo');
INSERT INTO `municipio` VALUES (16, 864, 'Senguio');
INSERT INTO `municipio` VALUES (16, 865, 'Charo');
INSERT INTO `municipio` VALUES (16, 866, 'Tzitzio');
INSERT INTO `municipio` VALUES (16, 867, 'Tiquicheo de Nicolás Romero');
INSERT INTO `municipio` VALUES (16, 868, 'Aporo');
INSERT INTO `municipio` VALUES (16, 869, 'Angangueo');
INSERT INTO `municipio` VALUES (16, 870, 'Tuxpan');
INSERT INTO `municipio` VALUES (16, 871, 'Ocampo');
INSERT INTO `municipio` VALUES (16, 872, 'Jungapeo');
INSERT INTO `municipio` VALUES (16, 873, 'Zitácuaro');
INSERT INTO `municipio` VALUES (16, 874, 'Tuzantla');
INSERT INTO `municipio` VALUES (16, 875, 'Juárez');
INSERT INTO `municipio` VALUES (16, 876, 'Susupuato');
INSERT INTO `municipio` VALUES (16, 877, 'Pátzcuaro');
INSERT INTO `municipio` VALUES (16, 878, 'Erongarícuaro');
INSERT INTO `municipio` VALUES (16, 879, 'Huiramba');
INSERT INTO `municipio` VALUES (16, 880, 'Tacámbaro');
INSERT INTO `municipio` VALUES (16, 881, 'Turicato');
INSERT INTO `municipio` VALUES (16, 882, 'Ziracuaretiro');
INSERT INTO `municipio` VALUES (16, 883, 'Taretan');
INSERT INTO `municipio` VALUES (16, 884, 'Gabriel Zamora');
INSERT INTO `municipio` VALUES (16, 885, 'Nuevo Urecho');
INSERT INTO `municipio` VALUES (16, 886, 'Múgica');
INSERT INTO `municipio` VALUES (16, 887, 'Salvador Escalante');
INSERT INTO `municipio` VALUES (16, 888, 'Ario');
INSERT INTO `municipio` VALUES (16, 889, 'La Huacana');
INSERT INTO `municipio` VALUES (16, 890, 'Churumuco');
INSERT INTO `municipio` VALUES (16, 891, 'Nocupétaro');
INSERT INTO `municipio` VALUES (16, 892, 'Carácuaro');
INSERT INTO `municipio` VALUES (16, 893, 'Huetamo');
INSERT INTO `municipio` VALUES (16, 894, 'San Lucas');
INSERT INTO `municipio` VALUES (17, 895, 'Cuernavaca');
INSERT INTO `municipio` VALUES (17, 896, 'Huitzilac');
INSERT INTO `municipio` VALUES (17, 897, 'Tepoztlán');
INSERT INTO `municipio` VALUES (17, 898, 'Tlalnepantla');
INSERT INTO `municipio` VALUES (17, 899, 'Tlayacapan');
INSERT INTO `municipio` VALUES (17, 900, 'Jiutepec');
INSERT INTO `municipio` VALUES (17, 901, 'Temixco');
INSERT INTO `municipio` VALUES (17, 902, 'Miacatlán');
INSERT INTO `municipio` VALUES (17, 903, 'Coatlán del Río');
INSERT INTO `municipio` VALUES (17, 904, 'Tetecala');
INSERT INTO `municipio` VALUES (17, 905, 'Mazatepec');
INSERT INTO `municipio` VALUES (17, 906, 'Amacuzac');
INSERT INTO `municipio` VALUES (17, 907, 'Puente de Ixtla');
INSERT INTO `municipio` VALUES (17, 908, 'Ayala');
INSERT INTO `municipio` VALUES (17, 909, 'Yautepec');
INSERT INTO `municipio` VALUES (17, 910, 'Cuautla');
INSERT INTO `municipio` VALUES (17, 911, 'Emiliano Zapata');
INSERT INTO `municipio` VALUES (17, 912, 'Tlaltizapán de Zapata');
INSERT INTO `municipio` VALUES (17, 913, 'Zacatepec');
INSERT INTO `municipio` VALUES (17, 914, 'Xochitepec');
INSERT INTO `municipio` VALUES (17, 915, 'Tetela del Volcán');
INSERT INTO `municipio` VALUES (17, 916, 'Yecapixtla');
INSERT INTO `municipio` VALUES (17, 917, 'Totolapan');
INSERT INTO `municipio` VALUES (17, 918, 'Atlatlahucan');
INSERT INTO `municipio` VALUES (17, 919, 'Ocuituco');
INSERT INTO `municipio` VALUES (17, 920, 'Temoac');
INSERT INTO `municipio` VALUES (17, 921, 'Zacualpan');
INSERT INTO `municipio` VALUES (17, 922, 'Jojutla');
INSERT INTO `municipio` VALUES (17, 923, 'Tepalcingo');
INSERT INTO `municipio` VALUES (17, 924, 'Jonacatepec');
INSERT INTO `municipio` VALUES (17, 925, 'Axochiapan');
INSERT INTO `municipio` VALUES (17, 926, 'Jantetelco');
INSERT INTO `municipio` VALUES (17, 927, 'Tlaquiltenango');
INSERT INTO `municipio` VALUES (18, 928, 'Tepic');
INSERT INTO `municipio` VALUES (18, 929, 'Tuxpan');
INSERT INTO `municipio` VALUES (18, 930, 'Santiago Ixcuintla');
INSERT INTO `municipio` VALUES (18, 931, 'Acaponeta');
INSERT INTO `municipio` VALUES (18, 932, 'Tecuala');
INSERT INTO `municipio` VALUES (18, 933, 'Huajicori');
INSERT INTO `municipio` VALUES (18, 934, 'Del Nayar');
INSERT INTO `municipio` VALUES (18, 935, 'La Yesca');
INSERT INTO `municipio` VALUES (18, 936, 'Ruíz');
INSERT INTO `municipio` VALUES (18, 937, 'Rosamorada');
INSERT INTO `municipio` VALUES (18, 938, 'Compostela');
INSERT INTO `municipio` VALUES (18, 939, 'Bahía de Banderas');
INSERT INTO `municipio` VALUES (18, 940, 'San Blas');
INSERT INTO `municipio` VALUES (18, 941, 'Xalisco');
INSERT INTO `municipio` VALUES (18, 942, 'San Pedro Lagunillas');
INSERT INTO `municipio` VALUES (18, 943, 'Santa María del Oro');
INSERT INTO `municipio` VALUES (18, 944, 'Jala');
INSERT INTO `municipio` VALUES (18, 945, 'Ahuacatlán');
INSERT INTO `municipio` VALUES (18, 946, 'Ixtlán del Río');
INSERT INTO `municipio` VALUES (18, 947, 'Amatlán de Cañas');
INSERT INTO `municipio` VALUES (19, 948, 'Monterrey');
INSERT INTO `municipio` VALUES (19, 949, 'Anáhuac');
INSERT INTO `municipio` VALUES (19, 950, 'Lampazos de Naranjo');
INSERT INTO `municipio` VALUES (19, 951, 'Mina');
INSERT INTO `municipio` VALUES (19, 952, 'Bustamante');
INSERT INTO `municipio` VALUES (19, 953, 'Sabinas Hidalgo');
INSERT INTO `municipio` VALUES (19, 954, 'Villaldama');
INSERT INTO `municipio` VALUES (19, 955, 'Vallecillo');
INSERT INTO `municipio` VALUES (19, 956, 'Parás');
INSERT INTO `municipio` VALUES (19, 957, 'Salinas Victoria');
INSERT INTO `municipio` VALUES (19, 958, 'Ciénega de Flores');
INSERT INTO `municipio` VALUES (19, 959, 'Hidalgo');
INSERT INTO `municipio` VALUES (19, 960, 'Abasolo');
INSERT INTO `municipio` VALUES (19, 961, 'Higueras');
INSERT INTO `municipio` VALUES (19, 962, 'General Zuazua');
INSERT INTO `municipio` VALUES (19, 963, 'Agualeguas');
INSERT INTO `municipio` VALUES (19, 964, 'General Treviño');
INSERT INTO `municipio` VALUES (19, 965, 'Cerralvo');
INSERT INTO `municipio` VALUES (19, 966, 'Melchor Ocampo');
INSERT INTO `municipio` VALUES (19, 967, 'García');
INSERT INTO `municipio` VALUES (19, 968, 'General Escobedo');
INSERT INTO `municipio` VALUES (19, 969, 'Santa Catarina');
INSERT INTO `municipio` VALUES (19, 970, 'San Pedro Garza García');
INSERT INTO `municipio` VALUES (19, 971, 'San Nicolás de los Garza');
INSERT INTO `municipio` VALUES (19, 972, 'El Carmen');
INSERT INTO `municipio` VALUES (19, 973, 'Apodaca');
INSERT INTO `municipio` VALUES (19, 974, 'Pesquería');
INSERT INTO `municipio` VALUES (19, 975, 'Marín');
INSERT INTO `municipio` VALUES (19, 976, 'Doctor González');
INSERT INTO `municipio` VALUES (19, 977, 'Los Ramones');
INSERT INTO `municipio` VALUES (19, 978, 'Los Herreras');
INSERT INTO `municipio` VALUES (19, 979, 'Los Aldamas');
INSERT INTO `municipio` VALUES (19, 980, 'Doctor Coss');
INSERT INTO `municipio` VALUES (19, 981, 'General Bravo');
INSERT INTO `municipio` VALUES (19, 982, 'China');
INSERT INTO `municipio` VALUES (19, 983, 'Guadalupe');
INSERT INTO `municipio` VALUES (19, 984, 'Juárez');
INSERT INTO `municipio` VALUES (19, 985, 'Santiago');
INSERT INTO `municipio` VALUES (19, 986, 'Allende');
INSERT INTO `municipio` VALUES (19, 987, 'General Terán');
INSERT INTO `municipio` VALUES (19, 988, 'Cadereyta Jiménez');
INSERT INTO `municipio` VALUES (19, 989, 'Montemorelos');
INSERT INTO `municipio` VALUES (19, 990, 'Rayones');
INSERT INTO `municipio` VALUES (19, 991, 'Linares');
INSERT INTO `municipio` VALUES (19, 992, 'Iturbide');
INSERT INTO `municipio` VALUES (19, 993, 'Galeana');
INSERT INTO `municipio` VALUES (19, 994, 'Hualahuises');
INSERT INTO `municipio` VALUES (19, 995, 'Doctor Arroyo');
INSERT INTO `municipio` VALUES (19, 996, 'Aramberri');
INSERT INTO `municipio` VALUES (19, 997, 'General Zaragoza');
INSERT INTO `municipio` VALUES (19, 998, 'Mier y Noriega');
INSERT INTO `municipio` VALUES (20, 999, 'Oaxaca de Juárez');
INSERT INTO `municipio` VALUES (20, 1000, 'Villa de Etla');
INSERT INTO `municipio` VALUES (20, 1001, 'San Juan Bautista Atatlahuca');
INSERT INTO `municipio` VALUES (20, 1002, 'San Jerónimo Sosola');
INSERT INTO `municipio` VALUES (20, 1003, 'San Juan Bautista Jayacatlán');
INSERT INTO `municipio` VALUES (20, 1004, 'San Francisco Telixtlahuaca');
INSERT INTO `municipio` VALUES (20, 1005, 'Santiago Tenango');
INSERT INTO `municipio` VALUES (20, 1006, 'San Pablo Huitzo');
INSERT INTO `municipio` VALUES (20, 1007, 'San Juan del Estado');
INSERT INTO `municipio` VALUES (20, 1008, 'Magdalena Apasco');
INSERT INTO `municipio` VALUES (20, 1009, 'Santiago Suchilquitongo');
INSERT INTO `municipio` VALUES (20, 1010, 'San Juan Bautista Guelache');
INSERT INTO `municipio` VALUES (20, 1011, 'Reyes Etla');
INSERT INTO `municipio` VALUES (20, 1012, 'Nazareno Etla');
INSERT INTO `municipio` VALUES (20, 1013, 'San Andrés Zautla');
INSERT INTO `municipio` VALUES (20, 1014, 'San Agustín Etla');
INSERT INTO `municipio` VALUES (20, 1015, 'Soledad Etla');
INSERT INTO `municipio` VALUES (20, 1016, 'Santo Tomás Mazaltepec');
INSERT INTO `municipio` VALUES (20, 1017, 'Guadalupe Etla');
INSERT INTO `municipio` VALUES (20, 1018, 'San Pablo Etla');
INSERT INTO `municipio` VALUES (20, 1019, 'San Felipe Tejalápam');
INSERT INTO `municipio` VALUES (20, 1020, 'San Lorenzo Cacaotepec');
INSERT INTO `municipio` VALUES (20, 1021, 'Santa María Peñoles');
INSERT INTO `municipio` VALUES (20, 1022, 'Santiago Tlazoyaltepec');
INSERT INTO `municipio` VALUES (20, 1023, 'Tlalixtac de Cabrera');
INSERT INTO `municipio` VALUES (20, 1024, 'San Jacinto Amilpas');
INSERT INTO `municipio` VALUES (20, 1025, 'San Andrés Huayápam');
INSERT INTO `municipio` VALUES (20, 1026, 'San Agustín Yatareni');
INSERT INTO `municipio` VALUES (20, 1027, 'Santo Domingo Tomaltepec');
INSERT INTO `municipio` VALUES (20, 1028, 'Santa María del Tule');
INSERT INTO `municipio` VALUES (20, 1029, 'San Juan Bautista Tuxtepec');
INSERT INTO `municipio` VALUES (20, 1030, 'Loma Bonita');
INSERT INTO `municipio` VALUES (20, 1031, 'San José Independencia');
INSERT INTO `municipio` VALUES (20, 1032, 'Cosolapa');
INSERT INTO `municipio` VALUES (20, 1033, 'Acatlán de Pérez Figueroa');
INSERT INTO `municipio` VALUES (20, 1034, 'San Miguel Soyaltepec');
INSERT INTO `municipio` VALUES (20, 1035, 'Ayotzintepec');
INSERT INTO `municipio` VALUES (20, 1036, 'San Pedro Ixcatlán');
INSERT INTO `municipio` VALUES (20, 1037, 'San José Chiltepec');
INSERT INTO `municipio` VALUES (20, 1038, 'San Felipe Jalapa de Díaz');
INSERT INTO `municipio` VALUES (20, 1039, 'Santa María Jacatepec');
INSERT INTO `municipio` VALUES (20, 1040, 'San Lucas Ojitlán');
INSERT INTO `municipio` VALUES (20, 1041, 'San Juan Bautista Valle Nacional');
INSERT INTO `municipio` VALUES (20, 1042, 'San Felipe Usila');
INSERT INTO `municipio` VALUES (20, 1043, 'Huautla de Jiménez');
INSERT INTO `municipio` VALUES (20, 1044, 'Santa María Chilchotla');
INSERT INTO `municipio` VALUES (20, 1045, 'Santa Ana Ateixtlahuaca');
INSERT INTO `municipio` VALUES (20, 1046, 'San Lorenzo Cuaunecuiltitla');
INSERT INTO `municipio` VALUES (20, 1047, 'San Francisco Huehuetlán');
INSERT INTO `municipio` VALUES (20, 1048, 'San Pedro Ocopetatillo');
INSERT INTO `municipio` VALUES (20, 1049, 'Santa Cruz Acatepec');
INSERT INTO `municipio` VALUES (20, 1050, 'Eloxochitlán de Flores Magón');
INSERT INTO `municipio` VALUES (20, 1051, 'Santiago Texcalcingo');
INSERT INTO `municipio` VALUES (20, 1052, 'Teotitlán de Flores Magón');
INSERT INTO `municipio` VALUES (20, 1053, 'Santa María Teopoxco');
INSERT INTO `municipio` VALUES (20, 1054, 'San Martín Toxpalan');
INSERT INTO `municipio` VALUES (20, 1055, 'San Jerónimo Tecóatl');
INSERT INTO `municipio` VALUES (20, 1056, 'Santa María la Asunción');
INSERT INTO `municipio` VALUES (20, 1057, 'Huautepec');
INSERT INTO `municipio` VALUES (20, 1058, 'San Juan Coatzóspam');
INSERT INTO `municipio` VALUES (20, 1059, 'San Lucas Zoquiápam');
INSERT INTO `municipio` VALUES (20, 1060, 'San Antonio Nanahuatípam');
INSERT INTO `municipio` VALUES (20, 1061, 'San José Tenango');
INSERT INTO `municipio` VALUES (20, 1062, 'San Mateo Yoloxochitlán');
INSERT INTO `municipio` VALUES (20, 1063, 'San Bartolomé Ayautla');
INSERT INTO `municipio` VALUES (20, 1064, 'Mazatlán Villa de Flores');
INSERT INTO `municipio` VALUES (20, 1065, 'San Juan de los Cués');
INSERT INTO `municipio` VALUES (20, 1066, 'Santa María Tecomavaca');
INSERT INTO `municipio` VALUES (20, 1067, 'Santa María Ixcatlán');
INSERT INTO `municipio` VALUES (20, 1068, 'San Juan Bautista Cuicatlán');
INSERT INTO `municipio` VALUES (20, 1069, 'Cuyamecalco Villa de Zaragoza');
INSERT INTO `municipio` VALUES (20, 1070, 'Santa Ana Cuauhtémoc');
INSERT INTO `municipio` VALUES (20, 1071, 'Chiquihuitlán de Benito Juárez');
INSERT INTO `municipio` VALUES (20, 1072, 'San Pedro Teutila');
INSERT INTO `municipio` VALUES (20, 1073, 'San Miguel Santa Flor');
INSERT INTO `municipio` VALUES (20, 1074, 'Santa María Tlalixtac');
INSERT INTO `municipio` VALUES (20, 1075, 'San Andrés Teotilálpam');
INSERT INTO `municipio` VALUES (20, 1076, 'San Francisco Chapulapa');
INSERT INTO `municipio` VALUES (20, 1077, 'Concepción Pápalo');
INSERT INTO `municipio` VALUES (20, 1078, 'Santos Reyes Pápalo');
INSERT INTO `municipio` VALUES (20, 1079, 'San Juan Bautista Tlacoatzintepec');
INSERT INTO `municipio` VALUES (20, 1080, 'Santa María Pápalo');
INSERT INTO `municipio` VALUES (20, 1081, 'San Juan Tepeuxila');
INSERT INTO `municipio` VALUES (20, 1082, 'San Pedro Sochiápam');
INSERT INTO `municipio` VALUES (20, 1083, 'Valerio Trujano');
INSERT INTO `municipio` VALUES (20, 1084, 'San Pedro Jocotipac');
INSERT INTO `municipio` VALUES (20, 1085, 'Santa María Texcatitlán');
INSERT INTO `municipio` VALUES (20, 1086, 'San Pedro Jaltepetongo');
INSERT INTO `municipio` VALUES (20, 1087, 'Santiago Nacaltepec');
INSERT INTO `municipio` VALUES (20, 1088, 'Natividad');
INSERT INTO `municipio` VALUES (20, 1089, 'San Juan Quiotepec');
INSERT INTO `municipio` VALUES (20, 1090, 'San Pedro Yólox');
INSERT INTO `municipio` VALUES (20, 1091, 'Santiago Comaltepec');
INSERT INTO `municipio` VALUES (20, 1092, 'Abejones');
INSERT INTO `municipio` VALUES (20, 1093, 'San Pablo Macuiltianguis');
INSERT INTO `municipio` VALUES (20, 1094, 'Ixtlán de Juárez');
INSERT INTO `municipio` VALUES (20, 1095, 'San Juan Atepec');
INSERT INTO `municipio` VALUES (20, 1096, 'San Pedro Yaneri');
INSERT INTO `municipio` VALUES (20, 1097, 'San Miguel Aloápam');
INSERT INTO `municipio` VALUES (20, 1098, 'Teococuilco de Marcos Pérez');
INSERT INTO `municipio` VALUES (20, 1099, 'Santa Ana Yareni');
INSERT INTO `municipio` VALUES (20, 1100, 'San Juan Evangelista Analco');
INSERT INTO `municipio` VALUES (20, 1101, 'Santa María Jaltianguis');
INSERT INTO `municipio` VALUES (20, 1102, 'San Miguel del Río');
INSERT INTO `municipio` VALUES (20, 1103, 'San Juan Chicomezúchil');
INSERT INTO `municipio` VALUES (20, 1104, 'Capulálpam de Méndez');
INSERT INTO `municipio` VALUES (20, 1105, 'Nuevo Zoquiápam');
INSERT INTO `municipio` VALUES (20, 1106, 'Santiago Xiacuí');
INSERT INTO `municipio` VALUES (20, 1107, 'Guelatao de Juárez');
INSERT INTO `municipio` VALUES (20, 1108, 'Santa Catarina Ixtepeji');
INSERT INTO `municipio` VALUES (20, 1109, 'San Miguel Yotao');
INSERT INTO `municipio` VALUES (20, 1110, 'Santa Catarina Lachatao');
INSERT INTO `municipio` VALUES (20, 1111, 'San Miguel Amatlán');
INSERT INTO `municipio` VALUES (20, 1112, 'Santa María Yavesía');
INSERT INTO `municipio` VALUES (20, 1113, 'Santiago Laxopa');
INSERT INTO `municipio` VALUES (20, 1114, 'San Ildefonso Villa Alta');
INSERT INTO `municipio` VALUES (20, 1115, 'Santiago Camotlán');
INSERT INTO `municipio` VALUES (20, 1116, 'San Juan Yaeé');
INSERT INTO `municipio` VALUES (20, 1117, 'Santiago Lalopa');
INSERT INTO `municipio` VALUES (20, 1118, 'San Juan Yatzona');
INSERT INTO `municipio` VALUES (20, 1119, 'Villa Talea de Castro');
INSERT INTO `municipio` VALUES (20, 1120, 'Tanetze de Zaragoza');
INSERT INTO `municipio` VALUES (20, 1121, 'San Juan Juquila Vijanos');
INSERT INTO `municipio` VALUES (20, 1122, 'San Cristóbal Lachirioag');
INSERT INTO `municipio` VALUES (20, 1123, 'Santa María Temaxcalapa');
INSERT INTO `municipio` VALUES (20, 1124, 'Santo Domingo Roayaga');
INSERT INTO `municipio` VALUES (20, 1125, 'Santa María Yalina');
INSERT INTO `municipio` VALUES (20, 1126, 'San Andrés Solaga');
INSERT INTO `municipio` VALUES (20, 1127, 'San Juan Tabaá');
INSERT INTO `municipio` VALUES (20, 1128, 'San Melchor Betaza');
INSERT INTO `municipio` VALUES (20, 1129, 'San Andrés Yaá');
INSERT INTO `municipio` VALUES (20, 1130, 'San Bartolomé Zoogocho');
INSERT INTO `municipio` VALUES (20, 1131, 'San Baltazar Yatzachi el Bajo');
INSERT INTO `municipio` VALUES (20, 1132, 'Santiago Zoochila');
INSERT INTO `municipio` VALUES (20, 1133, 'Villa Hidalgo');
INSERT INTO `municipio` VALUES (20, 1134, 'San Francisco Cajonos');
INSERT INTO `municipio` VALUES (20, 1135, 'San Mateo Cajonos');
INSERT INTO `municipio` VALUES (20, 1136, 'San Pedro Cajonos');
INSERT INTO `municipio` VALUES (20, 1137, 'Santo Domingo Xagacía');
INSERT INTO `municipio` VALUES (20, 1138, 'San Pablo Yaganiza');
INSERT INTO `municipio` VALUES (20, 1139, 'Santiago Choápam');
INSERT INTO `municipio` VALUES (20, 1140, 'Santiago Jocotepec');
INSERT INTO `municipio` VALUES (20, 1141, 'San Juan Lalana');
INSERT INTO `municipio` VALUES (20, 1142, 'Santiago Yaveo');
INSERT INTO `municipio` VALUES (20, 1143, 'San Juan Petlapa');
INSERT INTO `municipio` VALUES (20, 1144, 'San Juan Comaltepec');
INSERT INTO `municipio` VALUES (20, 1145, 'Heroica Ciudad de Huajuapan de León');
INSERT INTO `municipio` VALUES (20, 1146, 'Santiago Chazumba');
INSERT INTO `municipio` VALUES (20, 1147, 'Cosoltepec');
INSERT INTO `municipio` VALUES (20, 1148, 'San Pedro y San Pablo Tequixtepec');
INSERT INTO `municipio` VALUES (20, 1149, 'San Juan Bautista Suchitepec');
INSERT INTO `municipio` VALUES (20, 1150, 'Santa Catarina Zapoquila');
INSERT INTO `municipio` VALUES (20, 1151, 'Santiago Miltepec');
INSERT INTO `municipio` VALUES (20, 1152, 'San Jerónimo Silacayoapilla');
INSERT INTO `municipio` VALUES (20, 1153, 'Zapotitlán Palmas');
INSERT INTO `municipio` VALUES (20, 1154, 'San Andrés Dinicuiti');
INSERT INTO `municipio` VALUES (20, 1155, 'Santiago Cacaloxtepec');
INSERT INTO `municipio` VALUES (20, 1156, 'Asunción Cuyotepeji');
INSERT INTO `municipio` VALUES (20, 1157, 'Santa María Camotlán');
INSERT INTO `municipio` VALUES (20, 1158, 'Santiago Huajolotitlán');
INSERT INTO `municipio` VALUES (20, 1159, 'Santiago Tamazola');
INSERT INTO `municipio` VALUES (20, 1160, 'San Juan Cieneguilla');
INSERT INTO `municipio` VALUES (20, 1161, 'Zapotitlán Lagunas');
INSERT INTO `municipio` VALUES (20, 1162, 'San Juan Ihualtepec');
INSERT INTO `municipio` VALUES (20, 1163, 'San Nicolás Hidalgo');
INSERT INTO `municipio` VALUES (20, 1164, 'Guadalupe de Ramírez');
INSERT INTO `municipio` VALUES (20, 1165, 'San Andrés Tepetlapa');
INSERT INTO `municipio` VALUES (20, 1166, 'San Miguel Ahuehuetitlán');
INSERT INTO `municipio` VALUES (20, 1167, 'San Mateo Nejápam');
INSERT INTO `municipio` VALUES (20, 1168, 'San Juan Bautista Tlachichilco');
INSERT INTO `municipio` VALUES (20, 1169, 'Tezoatlán de Segura y Luna');
INSERT INTO `municipio` VALUES (20, 1170, 'Fresnillo de Trujano');
INSERT INTO `municipio` VALUES (20, 1171, 'Santiago Ayuquililla');
INSERT INTO `municipio` VALUES (20, 1172, 'San José Ayuquila');
INSERT INTO `municipio` VALUES (20, 1173, 'San Martín Zacatepec');
INSERT INTO `municipio` VALUES (20, 1174, 'San Miguel Amatitlán');
INSERT INTO `municipio` VALUES (20, 1175, 'Mariscala de Juárez');
INSERT INTO `municipio` VALUES (20, 1176, 'Santa Cruz Tacache de Mina');
INSERT INTO `municipio` VALUES (20, 1177, 'San Simón Zahuatlán');
INSERT INTO `municipio` VALUES (20, 1178, 'San Marcos Arteaga');
INSERT INTO `municipio` VALUES (20, 1179, 'San Jorge Nuchita');
INSERT INTO `municipio` VALUES (20, 1180, 'Santos Reyes Yucuná');
INSERT INTO `municipio` VALUES (20, 1181, 'Santo Domingo Tonalá');
INSERT INTO `municipio` VALUES (20, 1182, 'Santo Domingo Yodohino');
INSERT INTO `municipio` VALUES (20, 1183, 'San Juan Bautista Coixtlahuaca');
INSERT INTO `municipio` VALUES (20, 1184, 'Tepelmeme Villa de Morelos');
INSERT INTO `municipio` VALUES (20, 1185, 'Concepción Buenavista');
INSERT INTO `municipio` VALUES (20, 1186, 'Santiago Ihuitlán Plumas');
INSERT INTO `municipio` VALUES (20, 1187, 'Tlacotepec Plumas');
INSERT INTO `municipio` VALUES (20, 1188, 'San Francisco Teopan');
INSERT INTO `municipio` VALUES (20, 1189, 'Santa Magdalena Jicotlán');
INSERT INTO `municipio` VALUES (20, 1190, 'San Mateo Tlapiltepec');
INSERT INTO `municipio` VALUES (20, 1191, 'San Miguel Tequixtepec');
INSERT INTO `municipio` VALUES (20, 1192, 'San Miguel Tulancingo');
INSERT INTO `municipio` VALUES (20, 1193, 'Santiago Tepetlapa');
INSERT INTO `municipio` VALUES (20, 1194, 'San Cristóbal Suchixtlahuaca');
INSERT INTO `municipio` VALUES (20, 1195, 'Santa María Nativitas');
INSERT INTO `municipio` VALUES (20, 1196, 'Silacayoápam');
INSERT INTO `municipio` VALUES (20, 1197, 'Santiago Yucuyachi');
INSERT INTO `municipio` VALUES (20, 1198, 'San Lorenzo Victoria');
INSERT INTO `municipio` VALUES (20, 1199, 'San Agustín Atenango');
INSERT INTO `municipio` VALUES (20, 1200, 'Calihualá');
INSERT INTO `municipio` VALUES (20, 1201, 'Santa Cruz de Bravo');
INSERT INTO `municipio` VALUES (20, 1202, 'Ixpantepec Nieves');
INSERT INTO `municipio` VALUES (20, 1203, 'San Francisco Tlapancingo');
INSERT INTO `municipio` VALUES (20, 1204, 'Santiago del Río');
INSERT INTO `municipio` VALUES (20, 1205, 'San Pedro y San Pablo Teposcolula');
INSERT INTO `municipio` VALUES (20, 1206, 'La Trinidad Vista Hermosa');
INSERT INTO `municipio` VALUES (20, 1207, 'Villa de Tamazulápam del Progreso');
INSERT INTO `municipio` VALUES (20, 1208, 'San Pedro Nopala');
INSERT INTO `municipio` VALUES (20, 1209, 'Teotongo');
INSERT INTO `municipio` VALUES (20, 1210, 'San Antonio Acutla');
INSERT INTO `municipio` VALUES (20, 1211, 'Villa Tejúpam de la Unión');
INSERT INTO `municipio` VALUES (20, 1212, 'Santo Domingo Tonaltepec');
INSERT INTO `municipio` VALUES (20, 1213, 'Villa de Chilapa de Díaz');
INSERT INTO `municipio` VALUES (20, 1214, 'San Antonino Monte Verde');
INSERT INTO `municipio` VALUES (20, 1215, 'San Andrés Lagunas');
INSERT INTO `municipio` VALUES (20, 1216, 'San Pedro Yucunama');
INSERT INTO `municipio` VALUES (20, 1217, 'San Juan Teposcolula');
INSERT INTO `municipio` VALUES (20, 1218, 'San Bartolo Soyaltepec');
INSERT INTO `municipio` VALUES (20, 1219, 'Santiago Yolomécatl');
INSERT INTO `municipio` VALUES (20, 1220, 'San Sebastián Nicananduta');
INSERT INTO `municipio` VALUES (20, 1221, 'Santo Domingo Tlatayápam');
INSERT INTO `municipio` VALUES (20, 1222, 'Santa María Nduayaco');
INSERT INTO `municipio` VALUES (20, 1223, 'San Vicente Nuñú');
INSERT INTO `municipio` VALUES (20, 1224, 'San Pedro Topiltepec');
INSERT INTO `municipio` VALUES (20, 1225, 'Santiago Nejapilla');
INSERT INTO `municipio` VALUES (20, 1226, 'Asunción Nochixtlán');
INSERT INTO `municipio` VALUES (20, 1227, 'San Miguel Huautla');
INSERT INTO `municipio` VALUES (20, 1228, 'San Miguel Chicahua');
INSERT INTO `municipio` VALUES (20, 1229, 'Santa María Apazco');
INSERT INTO `municipio` VALUES (20, 1230, 'Santiago Apoala');
INSERT INTO `municipio` VALUES (20, 1231, 'Santa María Chachoápam');
INSERT INTO `municipio` VALUES (20, 1232, 'San Pedro Coxcaltepec Cántaros');
INSERT INTO `municipio` VALUES (20, 1233, 'Santiago Huauclilla');
INSERT INTO `municipio` VALUES (20, 1234, 'Santo Domingo Yanhuitlán');
INSERT INTO `municipio` VALUES (20, 1235, 'San Andrés Sinaxtla');
INSERT INTO `municipio` VALUES (20, 1236, 'San Juan Yucuita');
INSERT INTO `municipio` VALUES (20, 1237, 'San Juan Sayultepec');
INSERT INTO `municipio` VALUES (20, 1238, 'Santiago Tillo');
INSERT INTO `municipio` VALUES (20, 1239, 'San Francisco Chindúa');
INSERT INTO `municipio` VALUES (20, 1240, 'San Mateo Etlatongo');
INSERT INTO `municipio` VALUES (20, 1241, 'Santa Inés de Zaragoza');
INSERT INTO `municipio` VALUES (20, 1242, 'Santiago Juxtlahuaca');
INSERT INTO `municipio` VALUES (20, 1243, 'San Miguel Tlacotepec');
INSERT INTO `municipio` VALUES (20, 1244, 'San Sebastián Tecomaxtlahuaca');
INSERT INTO `municipio` VALUES (20, 1245, 'Santos Reyes Tepejillo');
INSERT INTO `municipio` VALUES (20, 1246, 'San Juan Mixtepec -Dto. 08 -');
INSERT INTO `municipio` VALUES (20, 1247, 'San Martín Peras');
INSERT INTO `municipio` VALUES (20, 1248, 'Coicoyán de las Flores');
INSERT INTO `municipio` VALUES (20, 1249, 'Heroica Ciudad de Tlaxiaco');
INSERT INTO `municipio` VALUES (20, 1250, 'San Juan Ñumí');
INSERT INTO `municipio` VALUES (20, 1251, 'San Pedro Mártir Yucuxaco');
INSERT INTO `municipio` VALUES (20, 1252, 'San Martín Huamelúlpam');
INSERT INTO `municipio` VALUES (20, 1253, 'Santa Cruz Tayata');
INSERT INTO `municipio` VALUES (20, 1254, 'Santiago Nundiche');
INSERT INTO `municipio` VALUES (20, 1255, 'Santa María del Rosario');
INSERT INTO `municipio` VALUES (20, 1256, 'San Juan Achiutla');
INSERT INTO `municipio` VALUES (20, 1257, 'Santa Catarina Tayata');
INSERT INTO `municipio` VALUES (20, 1258, 'San Cristóbal Amoltepec');
INSERT INTO `municipio` VALUES (20, 1259, 'San Miguel Achiutla');
INSERT INTO `municipio` VALUES (20, 1260, 'San Martín Itunyoso');
INSERT INTO `municipio` VALUES (20, 1261, 'Magdalena Peñasco');
INSERT INTO `municipio` VALUES (20, 1262, 'San Bartolomé Yucuañe');
INSERT INTO `municipio` VALUES (20, 1263, 'Santa Cruz Nundaco');
INSERT INTO `municipio` VALUES (20, 1264, 'San Agustín Tlacotepec');
INSERT INTO `municipio` VALUES (20, 1265, 'Santo Tomás Ocotepec');
INSERT INTO `municipio` VALUES (20, 1266, 'San Antonio Sinicahua');
INSERT INTO `municipio` VALUES (20, 1267, 'San Mateo Peñasco');
INSERT INTO `municipio` VALUES (20, 1268, 'Santa María Tataltepec');
INSERT INTO `municipio` VALUES (20, 1269, 'San Pedro Molinos');
INSERT INTO `municipio` VALUES (20, 1270, 'Santa María Yosoyúa');
INSERT INTO `municipio` VALUES (20, 1271, 'San Juan Teita');
INSERT INTO `municipio` VALUES (20, 1272, 'Magdalena Jaltepec');
INSERT INTO `municipio` VALUES (20, 1273, 'Magdalena Yodocono de Porfirio Díaz');
INSERT INTO `municipio` VALUES (20, 1274, 'San Miguel Tecomatlán');
INSERT INTO `municipio` VALUES (20, 1275, 'Magdalena Zahuatlán');
INSERT INTO `municipio` VALUES (20, 1276, 'San Francisco Nuxaño');
INSERT INTO `municipio` VALUES (20, 1277, 'San Pedro Tidaá');
INSERT INTO `municipio` VALUES (20, 1278, 'San Francisco Jaltepetongo');
INSERT INTO `municipio` VALUES (20, 1279, 'Santiago Tilantongo');
INSERT INTO `municipio` VALUES (20, 1280, 'San Juan Diuxi');
INSERT INTO `municipio` VALUES (20, 1281, 'San Andrés Nuxiño');
INSERT INTO `municipio` VALUES (20, 1282, 'San Juan Tamazola');
INSERT INTO `municipio` VALUES (20, 1283, 'Santo Domingo Nuxaá');
INSERT INTO `municipio` VALUES (20, 1284, 'Yutanduchi de Guerrero');
INSERT INTO `municipio` VALUES (20, 1285, 'San Pedro Teozacoalco');
INSERT INTO `municipio` VALUES (20, 1286, 'San Miguel Piedras');
INSERT INTO `municipio` VALUES (20, 1287, 'San Mateo Sindihui');
INSERT INTO `municipio` VALUES (20, 1288, 'Heroica Ciudad de Juchitán de Zaragoza');
INSERT INTO `municipio` VALUES (20, 1289, 'Ciudad Ixtepec');
INSERT INTO `municipio` VALUES (20, 1290, 'El Espinal');
INSERT INTO `municipio` VALUES (20, 1291, 'Santo Domingo Ingenio');
INSERT INTO `municipio` VALUES (20, 1292, 'Santa María Xadani');
INSERT INTO `municipio` VALUES (20, 1293, 'Santiago Niltepec');
INSERT INTO `municipio` VALUES (20, 1294, 'San Dionisio del Mar');
INSERT INTO `municipio` VALUES (20, 1295, 'Asunción Ixtaltepec');
INSERT INTO `municipio` VALUES (20, 1296, 'San Francisco del Mar');
INSERT INTO `municipio` VALUES (20, 1297, 'Unión Hidalgo');
INSERT INTO `municipio` VALUES (20, 1298, 'San Miguel Chimalapa');
INSERT INTO `municipio` VALUES (20, 1299, 'Santo Domingo Zanatepec');
INSERT INTO `municipio` VALUES (20, 1300, 'Reforma de Pineda');
INSERT INTO `municipio` VALUES (20, 1301, 'San Francisco Ixhuatán');
INSERT INTO `municipio` VALUES (20, 1302, 'San Pedro Tapanatepec');
INSERT INTO `municipio` VALUES (20, 1303, 'Chahuites');
INSERT INTO `municipio` VALUES (20, 1304, 'Santiago Zacatepec');
INSERT INTO `municipio` VALUES (20, 1305, 'Santo Domingo Tepuxtepec');
INSERT INTO `municipio` VALUES (20, 1306, 'San Juan Cotzocón');
INSERT INTO `municipio` VALUES (20, 1307, 'San Juan Mazatlán');
INSERT INTO `municipio` VALUES (20, 1308, 'Totontepec Villa de Morelos');
INSERT INTO `municipio` VALUES (20, 1309, 'Mixistlán de la Reforma');
INSERT INTO `municipio` VALUES (20, 1310, 'Santa María Tlahuitoltepec');
INSERT INTO `municipio` VALUES (20, 1311, 'Santa María Alotepec');
INSERT INTO `municipio` VALUES (20, 1312, 'Santiago Atitlán');
INSERT INTO `municipio` VALUES (20, 1313, 'Tamazulápam del Espíritu Santo');
INSERT INTO `municipio` VALUES (20, 1314, 'San Pedro y San Pablo Ayutla');
INSERT INTO `municipio` VALUES (20, 1315, 'Santa María Tepantlali');
INSERT INTO `municipio` VALUES (20, 1316, 'San Miguel Quetzaltepec');
INSERT INTO `municipio` VALUES (20, 1317, 'Asunción Cacalotepec');
INSERT INTO `municipio` VALUES (20, 1318, 'San Pedro Ocotepec');
INSERT INTO `municipio` VALUES (20, 1319, 'San Lucas Camotlán');
INSERT INTO `municipio` VALUES (20, 1320, 'Santiago Ixcuintepec');
INSERT INTO `municipio` VALUES (20, 1321, 'Matías Romero Avendaño');
INSERT INTO `municipio` VALUES (20, 1322, 'San Juan Guichicovi');
INSERT INTO `municipio` VALUES (20, 1323, 'Santo Domingo Petapa');
INSERT INTO `municipio` VALUES (20, 1324, 'Santa María Chimalapa');
INSERT INTO `municipio` VALUES (20, 1325, 'Santa María Petapa');
INSERT INTO `municipio` VALUES (20, 1326, 'El Barrio de la Soledad');
INSERT INTO `municipio` VALUES (20, 1327, 'Tlacolula de Matamoros');
INSERT INTO `municipio` VALUES (20, 1328, 'San Sebastián Abasolo');
INSERT INTO `municipio` VALUES (20, 1329, 'Villa Díaz Ordaz');
INSERT INTO `municipio` VALUES (20, 1330, 'Santa María Guelacé');
INSERT INTO `municipio` VALUES (20, 1331, 'Teotitlán del Valle');
INSERT INTO `municipio` VALUES (20, 1332, 'San Francisco Lachigoló');
INSERT INTO `municipio` VALUES (20, 1333, 'San Sebastián Teitipac');
INSERT INTO `municipio` VALUES (20, 1334, 'Santa Ana del Valle');
INSERT INTO `municipio` VALUES (20, 1335, 'San Pablo Villa de Mitla');
INSERT INTO `municipio` VALUES (20, 1336, 'Santiago Matatlán');
INSERT INTO `municipio` VALUES (20, 1337, 'Santo Domingo Albarradas');
INSERT INTO `municipio` VALUES (20, 1338, 'Rojas de Cuauhtémoc');
INSERT INTO `municipio` VALUES (20, 1339, 'San Juan Teitipac');
INSERT INTO `municipio` VALUES (20, 1340, 'Santa Cruz Papalutla');
INSERT INTO `municipio` VALUES (20, 1341, 'Magdalena Teitipac');
INSERT INTO `municipio` VALUES (20, 1342, 'San Jerónimo Tlacochahuaya');
INSERT INTO `municipio` VALUES (20, 1343, 'San Juan Guelavía');
INSERT INTO `municipio` VALUES (20, 1344, 'San Lucas Quiaviní');
INSERT INTO `municipio` VALUES (20, 1345, 'San Juan del Río');
INSERT INTO `municipio` VALUES (20, 1346, 'San Bartolomé Quialana');
INSERT INTO `municipio` VALUES (20, 1347, 'San Lorenzo Albarradas');
INSERT INTO `municipio` VALUES (20, 1348, 'San Pedro Totolápam');
INSERT INTO `municipio` VALUES (20, 1349, 'San Pedro Quiatoni');
INSERT INTO `municipio` VALUES (20, 1350, 'Santa María Zoquitlán');
INSERT INTO `municipio` VALUES (20, 1351, 'San Dionisio Ocotepec');
INSERT INTO `municipio` VALUES (20, 1352, 'San Carlos Yautepec');
INSERT INTO `municipio` VALUES (20, 1353, 'San Juan Juquila Mixes');
INSERT INTO `municipio` VALUES (20, 1354, 'Nejapa de Madero');
INSERT INTO `municipio` VALUES (20, 1355, 'Santa Ana Tavela');
INSERT INTO `municipio` VALUES (20, 1356, 'San Juan Lajarcia');
INSERT INTO `municipio` VALUES (20, 1357, 'San Bartolo Yautepec');
INSERT INTO `municipio` VALUES (20, 1358, 'Santa María Ecatepec');
INSERT INTO `municipio` VALUES (20, 1359, 'Asunción Tlacolulita');
INSERT INTO `municipio` VALUES (20, 1360, 'San Pedro Mártir Quiechapa');
INSERT INTO `municipio` VALUES (20, 1361, 'Santa María Quiegolani');
INSERT INTO `municipio` VALUES (20, 1362, 'Santa Catarina Quioquitani');
INSERT INTO `municipio` VALUES (20, 1363, 'Santa Catalina Quierí');
INSERT INTO `municipio` VALUES (20, 1364, 'Salina Cruz');
INSERT INTO `municipio` VALUES (20, 1365, 'Santiago Lachiguiri');
INSERT INTO `municipio` VALUES (20, 1366, 'Santa María Jalapa del Marqués');
INSERT INTO `municipio` VALUES (20, 1367, 'Santa María Totolapilla');
INSERT INTO `municipio` VALUES (20, 1368, 'Santiago Laollaga');
INSERT INTO `municipio` VALUES (20, 1369, 'Guevea de Humboldt');
INSERT INTO `municipio` VALUES (20, 1370, 'Santo Domingo Chihuitán');
INSERT INTO `municipio` VALUES (20, 1371, 'Santa María Guienagati');
INSERT INTO `municipio` VALUES (20, 1372, 'Magdalena Tequisistlán');
INSERT INTO `municipio` VALUES (20, 1373, 'Magdalena Tlacotepec');
INSERT INTO `municipio` VALUES (20, 1374, 'San Pedro Comitancillo');
INSERT INTO `municipio` VALUES (20, 1375, 'Santa María Mixtequilla');
INSERT INTO `municipio` VALUES (20, 1376, 'Santo Domingo Tehuantepec');
INSERT INTO `municipio` VALUES (20, 1377, 'San Pedro Huamelula');
INSERT INTO `municipio` VALUES (20, 1378, 'San Pedro Huilotepec');
INSERT INTO `municipio` VALUES (20, 1379, 'San Mateo del Mar');
INSERT INTO `municipio` VALUES (20, 1380, 'San Blas Atempa');
INSERT INTO `municipio` VALUES (20, 1381, 'Santiago Astata');
INSERT INTO `municipio` VALUES (20, 1382, 'San Miguel Tenango');
INSERT INTO `municipio` VALUES (20, 1383, 'Miahuatlán de Porfirio Díaz');
INSERT INTO `municipio` VALUES (20, 1384, 'San Nicolás');
INSERT INTO `municipio` VALUES (20, 1385, 'San Simón Almolongas');
INSERT INTO `municipio` VALUES (20, 1386, 'San Luis Amatlán');
INSERT INTO `municipio` VALUES (20, 1387, 'San José Lachiguiri');
INSERT INTO `municipio` VALUES (20, 1388, 'Sitio de Xitlapehua');
INSERT INTO `municipio` VALUES (20, 1389, 'San Francisco Logueche');
INSERT INTO `municipio` VALUES (20, 1390, 'Santa Ana');
INSERT INTO `municipio` VALUES (20, 1391, 'Santa Cruz Xitla');
INSERT INTO `municipio` VALUES (20, 1392, 'Monjas');
INSERT INTO `municipio` VALUES (20, 1393, 'San Ildefonso Amatlán');
INSERT INTO `municipio` VALUES (20, 1394, 'Santa Catarina Cuixtla');
INSERT INTO `municipio` VALUES (20, 1395, 'San José del Peñasco');
INSERT INTO `municipio` VALUES (20, 1396, 'San Cristóbal Amatlán');
INSERT INTO `municipio` VALUES (20, 1397, 'San Juan Mixtepec -Dto. 26 -');
INSERT INTO `municipio` VALUES (20, 1398, 'San Pedro Mixtepec -Dto. 26 -');
INSERT INTO `municipio` VALUES (20, 1399, 'Santa Lucía Miahuatlán');
INSERT INTO `municipio` VALUES (20, 1400, 'San Jerónimo Coatlán');
INSERT INTO `municipio` VALUES (20, 1401, 'San Sebastián Coatlán');
INSERT INTO `municipio` VALUES (20, 1402, 'San Pablo Coatlán');
INSERT INTO `municipio` VALUES (20, 1403, 'San Mateo Río Hondo');
INSERT INTO `municipio` VALUES (20, 1404, 'Santo Tomás Tamazulapan');
INSERT INTO `municipio` VALUES (20, 1405, 'San Andrés Paxtlán');
INSERT INTO `municipio` VALUES (20, 1406, 'Santa María Ozolotepec');
INSERT INTO `municipio` VALUES (20, 1407, 'San Miguel Coatlán');
INSERT INTO `municipio` VALUES (20, 1408, 'San Sebastián Río Hondo');
INSERT INTO `municipio` VALUES (20, 1409, 'San Miguel Suchixtepec');
INSERT INTO `municipio` VALUES (20, 1410, 'Santo Domingo Ozolotepec');
INSERT INTO `municipio` VALUES (20, 1411, 'San Francisco Ozolotepec');
INSERT INTO `municipio` VALUES (20, 1412, 'Santiago Xanica');
INSERT INTO `municipio` VALUES (20, 1413, 'San Marcial Ozolotepec');
INSERT INTO `municipio` VALUES (20, 1414, 'San Juan Ozolotepec');
INSERT INTO `municipio` VALUES (20, 1415, 'San Pedro Pochutla');
INSERT INTO `municipio` VALUES (20, 1416, 'Santo Domingo de Morelos');
INSERT INTO `municipio` VALUES (20, 1417, 'Santa Catarina Loxicha');
INSERT INTO `municipio` VALUES (20, 1418, 'San Agustín Loxicha');
INSERT INTO `municipio` VALUES (20, 1419, 'San Baltazar Loxicha');
INSERT INTO `municipio` VALUES (20, 1420, 'Santa María Colotepec');
INSERT INTO `municipio` VALUES (20, 1421, 'San Bartolomé Loxicha');
INSERT INTO `municipio` VALUES (20, 1422, 'Santa María Tonameca');
INSERT INTO `municipio` VALUES (20, 1423, 'Candelaria Loxicha');
INSERT INTO `municipio` VALUES (20, 1424, 'Pluma Hidalgo');
INSERT INTO `municipio` VALUES (20, 1425, 'San Pedro el Alto');
INSERT INTO `municipio` VALUES (20, 1426, 'San Mateo Piñas');
INSERT INTO `municipio` VALUES (20, 1427, 'Santa María Huatulco');
INSERT INTO `municipio` VALUES (20, 1428, 'San Miguel del Puerto');
INSERT INTO `municipio` VALUES (20, 1429, 'Putla Villa de Guerrero');
INSERT INTO `municipio` VALUES (20, 1430, 'Constancia del Rosario');
INSERT INTO `municipio` VALUES (20, 1431, 'Mesones Hidalgo');
INSERT INTO `municipio` VALUES (20, 1432, 'Santa María Zacatepec');
INSERT INTO `municipio` VALUES (20, 1433, 'San Pedro Amuzgos');
INSERT INTO `municipio` VALUES (20, 1434, 'La Reforma');
INSERT INTO `municipio` VALUES (20, 1435, 'Santa María Ipalapa');
INSERT INTO `municipio` VALUES (20, 1436, 'Chalcatongo de Hidalgo');
INSERT INTO `municipio` VALUES (20, 1437, 'Santa María Yucuhiti');
INSERT INTO `municipio` VALUES (20, 1438, 'San Esteban Atatlahuca');
INSERT INTO `municipio` VALUES (20, 1439, 'Santa Catarina Ticuá');
INSERT INTO `municipio` VALUES (20, 1440, 'Santiago Nuyoó');
INSERT INTO `municipio` VALUES (20, 1441, 'Santa Catarina Yosonotú');
INSERT INTO `municipio` VALUES (20, 1442, 'San Miguel el Grande');
INSERT INTO `municipio` VALUES (20, 1443, 'Santo Domingo Ixcatlán');
INSERT INTO `municipio` VALUES (20, 1444, 'San Pablo Tijaltepec');
INSERT INTO `municipio` VALUES (20, 1445, 'Santa Cruz Tacahua');
INSERT INTO `municipio` VALUES (20, 1446, 'Santa Lucía Monteverde');
INSERT INTO `municipio` VALUES (20, 1447, 'San Andrés Cabecera Nueva');
INSERT INTO `municipio` VALUES (20, 1448, 'Santa María Yolotepec');
INSERT INTO `municipio` VALUES (20, 1449, 'Santiago Yosondúa');
INSERT INTO `municipio` VALUES (20, 1450, 'Santa Cruz Itundujia');
INSERT INTO `municipio` VALUES (20, 1451, 'Zimatlán de Álvarez');
INSERT INTO `municipio` VALUES (20, 1452, 'San Bernardo Mixtepec');
INSERT INTO `municipio` VALUES (20, 1453, 'Santa Cruz Mixtepec');
INSERT INTO `municipio` VALUES (20, 1454, 'San Miguel Mixtepec');
INSERT INTO `municipio` VALUES (20, 1455, 'Santa María Atzompa');
INSERT INTO `municipio` VALUES (20, 1456, 'San Andrés Ixtlahuaca');
INSERT INTO `municipio` VALUES (20, 1457, 'Santa Cruz Amilpas');
INSERT INTO `municipio` VALUES (20, 1458, 'Santa Cruz Xoxocotlán');
INSERT INTO `municipio` VALUES (20, 1459, 'Santa Lucía del Camino');
INSERT INTO `municipio` VALUES (20, 1460, 'San Pedro Ixtlahuaca');
INSERT INTO `municipio` VALUES (20, 1461, 'San Antonio de la Cal');
INSERT INTO `municipio` VALUES (20, 1462, 'San Agustín de las Juntas');
INSERT INTO `municipio` VALUES (20, 1463, 'San Pablo Huixtepec');
INSERT INTO `municipio` VALUES (20, 1464, 'Ánimas Trujano');
INSERT INTO `municipio` VALUES (20, 1465, 'San Jacinto Tlacotepec');
INSERT INTO `municipio` VALUES (20, 1466, 'San Raymundo Jalpan');
INSERT INTO `municipio` VALUES (20, 1467, 'Trinidad Zaachila');
INSERT INTO `municipio` VALUES (20, 1468, 'Santa María Coyotepec');
INSERT INTO `municipio` VALUES (20, 1469, 'San Bartolo Coyotepec');
INSERT INTO `municipio` VALUES (20, 1470, 'Santa Inés Yatzeche');
INSERT INTO `municipio` VALUES (20, 1471, 'Ciénega de Zimatlán');
INSERT INTO `municipio` VALUES (20, 1472, 'San Antonio Huitepec');
INSERT INTO `municipio` VALUES (20, 1473, 'Villa de Zaachila');
INSERT INTO `municipio` VALUES (20, 1474, 'San Sebastián Tutla');
INSERT INTO `municipio` VALUES (20, 1475, 'San Miguel Peras');
INSERT INTO `municipio` VALUES (20, 1476, 'San Pablo Cuatro Venados');
INSERT INTO `municipio` VALUES (20, 1477, 'Santa Inés del Monte');
INSERT INTO `municipio` VALUES (20, 1478, 'Santa Gertrudis');
INSERT INTO `municipio` VALUES (20, 1479, 'San Antonino el Alto');
INSERT INTO `municipio` VALUES (20, 1480, 'Magdalena Mixtepec');
INSERT INTO `municipio` VALUES (20, 1481, 'Santa Catarina Quiané');
INSERT INTO `municipio` VALUES (20, 1482, 'Ayoquezco de Aldama');
INSERT INTO `municipio` VALUES (20, 1483, 'Santa Ana Tlapacoyan');
INSERT INTO `municipio` VALUES (20, 1484, 'Santa Cruz Zenzontepec');
INSERT INTO `municipio` VALUES (20, 1485, 'San Francisco Cahuacuá');
INSERT INTO `municipio` VALUES (20, 1486, 'San Mateo Yucutindoo');
INSERT INTO `municipio` VALUES (20, 1487, 'Santiago Textitlán');
INSERT INTO `municipio` VALUES (20, 1488, 'Santiago Amoltepec');
INSERT INTO `municipio` VALUES (20, 1489, 'Santa María Zaniza');
INSERT INTO `municipio` VALUES (20, 1490, 'Santo Domingo Teojomulco');
INSERT INTO `municipio` VALUES (20, 1491, 'Cuilápam de Guerrero');
INSERT INTO `municipio` VALUES (20, 1492, 'Villa Sola de Vega');
INSERT INTO `municipio` VALUES (20, 1493, 'Santa María Lachixío');
INSERT INTO `municipio` VALUES (20, 1494, 'San Vicente Lachixío');
INSERT INTO `municipio` VALUES (20, 1495, 'San Lorenzo Texmelúcan');
INSERT INTO `municipio` VALUES (20, 1496, 'Santa María Sola');
INSERT INTO `municipio` VALUES (20, 1497, 'San Francisco Sola');
INSERT INTO `municipio` VALUES (20, 1498, 'San Ildefonso Sola');
INSERT INTO `municipio` VALUES (20, 1499, 'Santiago Minas');
INSERT INTO `municipio` VALUES (20, 1500, 'Heroica Ciudad de Ejutla de Crespo');
INSERT INTO `municipio` VALUES (20, 1501, 'San Martín Tilcajete');
INSERT INTO `municipio` VALUES (20, 1502, 'Santo Tomás Jalieza');
INSERT INTO `municipio` VALUES (20, 1503, 'San Juan Chilateca');
INSERT INTO `municipio` VALUES (20, 1504, 'Ocotlán de Morelos');
INSERT INTO `municipio` VALUES (20, 1505, 'Santa Ana Zegache');
INSERT INTO `municipio` VALUES (20, 1506, 'Santiago Apóstol');
INSERT INTO `municipio` VALUES (20, 1507, 'San Antonino Castillo Velasco');
INSERT INTO `municipio` VALUES (20, 1508, 'Asunción Ocotlán');
INSERT INTO `municipio` VALUES (20, 1509, 'San Pedro Mártir');
INSERT INTO `municipio` VALUES (20, 1510, 'San Dionisio Ocotlán');
INSERT INTO `municipio` VALUES (20, 1511, 'Magdalena Ocotlán');
INSERT INTO `municipio` VALUES (20, 1512, 'San Miguel Tilquiápam');
INSERT INTO `municipio` VALUES (20, 1513, 'Santa Catarina Minas');
INSERT INTO `municipio` VALUES (20, 1514, 'San Baltazar Chichicápam');
INSERT INTO `municipio` VALUES (20, 1515, 'San Pedro Apóstol');
INSERT INTO `municipio` VALUES (20, 1516, 'Santa Lucía Ocotlán');
INSERT INTO `municipio` VALUES (20, 1517, 'San Jerónimo Taviche');
INSERT INTO `municipio` VALUES (20, 1518, 'San Andrés Zabache');
INSERT INTO `municipio` VALUES (20, 1519, 'San José del Progreso');
INSERT INTO `municipio` VALUES (20, 1520, 'Yaxe');
INSERT INTO `municipio` VALUES (20, 1521, 'San Pedro Taviche');
INSERT INTO `municipio` VALUES (20, 1522, 'San Martín de los Cansecos');
INSERT INTO `municipio` VALUES (20, 1523, 'San Martín Lachilá');
INSERT INTO `municipio` VALUES (20, 1524, 'La Pe');
INSERT INTO `municipio` VALUES (20, 1525, 'La Compañía');
INSERT INTO `municipio` VALUES (20, 1526, 'Coatecas Altas');
INSERT INTO `municipio` VALUES (20, 1527, 'San Juan Lachigalla');
INSERT INTO `municipio` VALUES (20, 1528, 'San Agustín Amatengo');
INSERT INTO `municipio` VALUES (20, 1529, 'Taniche');
INSERT INTO `municipio` VALUES (20, 1530, 'San Miguel Ejutla');
INSERT INTO `municipio` VALUES (20, 1531, 'Yogana');
INSERT INTO `municipio` VALUES (20, 1532, 'San Vicente Coatlán');
INSERT INTO `municipio` VALUES (20, 1533, 'Santiago Pinotepa Nacional');
INSERT INTO `municipio` VALUES (20, 1534, 'San Juan Cacahuatepec');
INSERT INTO `municipio` VALUES (20, 1535, 'San Juan Bautista Lo de Soto');
INSERT INTO `municipio` VALUES (20, 1536, 'Mártires de Tacubaya');
INSERT INTO `municipio` VALUES (20, 1537, 'San Sebastián Ixcapa');
INSERT INTO `municipio` VALUES (20, 1538, 'San Antonio Tepetlapa');
INSERT INTO `municipio` VALUES (20, 1539, 'Santa María Cortijo');
INSERT INTO `municipio` VALUES (20, 1540, 'Santiago Llano Grande');
INSERT INTO `municipio` VALUES (20, 1541, 'San Miguel Tlacamama');
INSERT INTO `municipio` VALUES (20, 1542, 'Santiago Tapextla');
INSERT INTO `municipio` VALUES (20, 1543, 'San José Estancia Grande');
INSERT INTO `municipio` VALUES (20, 1544, 'Santo Domingo Armenta');
INSERT INTO `municipio` VALUES (20, 1545, 'Santiago Jamiltepec');
INSERT INTO `municipio` VALUES (20, 1546, 'San Pedro Atoyac');
INSERT INTO `municipio` VALUES (20, 1547, 'San Juan Colorado');
INSERT INTO `municipio` VALUES (20, 1548, 'Santiago Ixtayutla');
INSERT INTO `municipio` VALUES (20, 1549, 'San Pedro Jicayán');
INSERT INTO `municipio` VALUES (20, 1550, 'Pinotepa de Don Luis');
INSERT INTO `municipio` VALUES (20, 1551, 'San Lorenzo');
INSERT INTO `municipio` VALUES (20, 1552, 'San Agustín Chayuco');
INSERT INTO `municipio` VALUES (20, 1553, 'San Andrés Huaxpaltepec');
INSERT INTO `municipio` VALUES (20, 1554, 'Santa Catarina Mechoacán');
INSERT INTO `municipio` VALUES (20, 1555, 'Santiago Tetepec');
INSERT INTO `municipio` VALUES (20, 1556, 'Santa María Huazolotitlán');
INSERT INTO `municipio` VALUES (20, 1557, 'Villa de Tututepec de Melchor Ocampo');
INSERT INTO `municipio` VALUES (20, 1558, 'Tataltepec de Valdés');
INSERT INTO `municipio` VALUES (20, 1559, 'San Juan Quiahije');
INSERT INTO `municipio` VALUES (20, 1560, 'San Miguel Panixtlahuaca');
INSERT INTO `municipio` VALUES (20, 1561, 'Santa Catarina Juquila');
INSERT INTO `municipio` VALUES (20, 1562, 'San Pedro Juchatengo');
INSERT INTO `municipio` VALUES (20, 1563, 'Santiago Yaitepec');
INSERT INTO `municipio` VALUES (20, 1564, 'San Juan Lachao');
INSERT INTO `municipio` VALUES (20, 1565, 'Santa María Temaxcaltepec');
INSERT INTO `municipio` VALUES (20, 1566, 'Santos Reyes Nopala');
INSERT INTO `municipio` VALUES (20, 1567, 'San Gabriel Mixtepec');
INSERT INTO `municipio` VALUES (20, 1568, 'San Pedro Mixtepec -Dto. 22 -');
INSERT INTO `municipio` VALUES (21, 1569, 'Puebla');
INSERT INTO `municipio` VALUES (21, 1570, 'Tlaltenango');
INSERT INTO `municipio` VALUES (21, 1571, 'San Miguel Xoxtla');
INSERT INTO `municipio` VALUES (21, 1572, 'Juan C. Bonilla');
INSERT INTO `municipio` VALUES (21, 1573, 'Coronango');
INSERT INTO `municipio` VALUES (21, 1574, 'Cuautlancingo');
INSERT INTO `municipio` VALUES (21, 1575, 'San Pedro Cholula');
INSERT INTO `municipio` VALUES (21, 1576, 'San Andrés Cholula');
INSERT INTO `municipio` VALUES (21, 1577, 'Ocoyucan');
INSERT INTO `municipio` VALUES (21, 1578, 'Amozoc');
INSERT INTO `municipio` VALUES (21, 1579, 'Francisco Z. Mena');
INSERT INTO `municipio` VALUES (21, 1580, 'Pantepec');
INSERT INTO `municipio` VALUES (21, 1581, 'Venustiano Carranza');
INSERT INTO `municipio` VALUES (21, 1582, 'Jalpan');
INSERT INTO `municipio` VALUES (21, 1583, 'Tlaxco');
INSERT INTO `municipio` VALUES (21, 1584, 'Tlacuilotepec');
INSERT INTO `municipio` VALUES (21, 1585, 'Xicotepec');
INSERT INTO `municipio` VALUES (21, 1586, 'Pahuatlán');
INSERT INTO `municipio` VALUES (21, 1587, 'Honey');
INSERT INTO `municipio` VALUES (21, 1588, 'Naupan');
INSERT INTO `municipio` VALUES (21, 1589, 'Huauchinango');
INSERT INTO `municipio` VALUES (21, 1590, 'Ahuazotepec');
INSERT INTO `municipio` VALUES (21, 1591, 'Juan Galindo');
INSERT INTO `municipio` VALUES (21, 1592, 'Tlaola');
INSERT INTO `municipio` VALUES (21, 1593, 'Zihuateutla');
INSERT INTO `municipio` VALUES (21, 1594, 'Jopala');
INSERT INTO `municipio` VALUES (21, 1595, 'Tlapacoya');
INSERT INTO `municipio` VALUES (21, 1596, 'Chignahuapan');
INSERT INTO `municipio` VALUES (21, 1597, 'Zacatlán');
INSERT INTO `municipio` VALUES (21, 1598, 'Chiconcuautla');
INSERT INTO `municipio` VALUES (21, 1599, 'Ahuacatlán');
INSERT INTO `municipio` VALUES (21, 1600, 'Tepetzintla');
INSERT INTO `municipio` VALUES (21, 1601, 'San Felipe Tepatlán');
INSERT INTO `municipio` VALUES (21, 1602, 'Amixtlán');
INSERT INTO `municipio` VALUES (21, 1603, 'Tepango de Rodríguez');
INSERT INTO `municipio` VALUES (21, 1604, 'Zongozotla');
INSERT INTO `municipio` VALUES (21, 1605, 'Hermenegildo Galeana');
INSERT INTO `municipio` VALUES (21, 1606, 'Olintla');
INSERT INTO `municipio` VALUES (21, 1607, 'Coatepec');
INSERT INTO `municipio` VALUES (21, 1608, 'Camocuautla');
INSERT INTO `municipio` VALUES (21, 1609, 'Hueytlalpan');
INSERT INTO `municipio` VALUES (21, 1610, 'Zapotitlán de Méndez');
INSERT INTO `municipio` VALUES (21, 1611, 'Huitzilan de Serdán');
INSERT INTO `municipio` VALUES (21, 1612, 'Xochitlán de Vicente Suárez');
INSERT INTO `municipio` VALUES (21, 1613, 'Huehuetla');
INSERT INTO `municipio` VALUES (21, 1614, 'Ixtepec');
INSERT INTO `municipio` VALUES (21, 1615, 'Atlequizayan');
INSERT INTO `municipio` VALUES (21, 1616, 'Tenampulco');
INSERT INTO `municipio` VALUES (21, 1617, 'Tuzamapan de Galeana');
INSERT INTO `municipio` VALUES (21, 1618, 'Caxhuacan');
INSERT INTO `municipio` VALUES (21, 1619, 'Jonotla');
INSERT INTO `municipio` VALUES (21, 1620, 'Zoquiapan');
INSERT INTO `municipio` VALUES (21, 1621, 'Nauzontla');
INSERT INTO `municipio` VALUES (21, 1622, 'Cuetzalan del Progreso');
INSERT INTO `municipio` VALUES (21, 1623, 'Ayotoxco de Guerrero');
INSERT INTO `municipio` VALUES (21, 1624, 'Hueytamalco');
INSERT INTO `municipio` VALUES (21, 1625, 'Acateno');
INSERT INTO `municipio` VALUES (21, 1626, 'Cuautempan');
INSERT INTO `municipio` VALUES (21, 1627, 'Aquixtla');
INSERT INTO `municipio` VALUES (21, 1628, 'Tetela de Ocampo');
INSERT INTO `municipio` VALUES (21, 1629, 'Xochiapulco');
INSERT INTO `municipio` VALUES (21, 1630, 'Zacapoaxtla');
INSERT INTO `municipio` VALUES (21, 1631, 'Zaragoza');
INSERT INTO `municipio` VALUES (21, 1632, 'Ixtacamaxtitlán');
INSERT INTO `municipio` VALUES (21, 1633, 'Zautla');
INSERT INTO `municipio` VALUES (21, 1634, 'Ocotepec');
INSERT INTO `municipio` VALUES (21, 1635, 'Libres');
INSERT INTO `municipio` VALUES (21, 1636, 'Teziutlán');
INSERT INTO `municipio` VALUES (21, 1637, 'Tlatlauquitepec');
INSERT INTO `municipio` VALUES (21, 1638, 'Yaonáhuac');
INSERT INTO `municipio` VALUES (21, 1639, 'Hueyapan');
INSERT INTO `municipio` VALUES (21, 1640, 'Teteles de Avila Castillo');
INSERT INTO `municipio` VALUES (21, 1641, 'Atempan');
INSERT INTO `municipio` VALUES (21, 1642, 'Chignautla');
INSERT INTO `municipio` VALUES (21, 1643, 'Xiutetelco');
INSERT INTO `municipio` VALUES (21, 1644, 'Cuyoaco');
INSERT INTO `municipio` VALUES (21, 1645, 'Tepeyahualco');
INSERT INTO `municipio` VALUES (21, 1646, 'San Martín Texmelucan');
INSERT INTO `municipio` VALUES (21, 1647, 'Tlahuapan');
INSERT INTO `municipio` VALUES (21, 1648, 'San Matías Tlalancaleca');
INSERT INTO `municipio` VALUES (21, 1649, 'San Salvador el Verde');
INSERT INTO `municipio` VALUES (21, 1650, 'San Felipe Teotlalcingo');
INSERT INTO `municipio` VALUES (21, 1651, 'Chiautzingo');
INSERT INTO `municipio` VALUES (21, 1652, 'Huejotzingo');
INSERT INTO `municipio` VALUES (21, 1653, 'Domingo Arenas');
INSERT INTO `municipio` VALUES (21, 1654, 'Calpan');
INSERT INTO `municipio` VALUES (21, 1655, 'San Nicolás de los Ranchos');
INSERT INTO `municipio` VALUES (21, 1656, 'Atlixco');
INSERT INTO `municipio` VALUES (21, 1657, 'Nealtican');
INSERT INTO `municipio` VALUES (21, 1658, 'San Jerónimo Tecuanipan');
INSERT INTO `municipio` VALUES (21, 1659, 'San Gregorio Atzompa');
INSERT INTO `municipio` VALUES (21, 1660, 'Tochimilco');
INSERT INTO `municipio` VALUES (21, 1661, 'Tianguismanalco');
INSERT INTO `municipio` VALUES (21, 1662, 'Santa Isabel Cholula');
INSERT INTO `municipio` VALUES (21, 1663, 'Huaquechula');
INSERT INTO `municipio` VALUES (21, 1664, 'San Diego la Mesa Tochimiltzingo');
INSERT INTO `municipio` VALUES (21, 1665, 'Tepeojuma');
INSERT INTO `municipio` VALUES (21, 1666, 'Izúcar de Matamoros');
INSERT INTO `municipio` VALUES (21, 1667, 'Atzitzihuacán');
INSERT INTO `municipio` VALUES (21, 1668, 'Acteopan');
INSERT INTO `municipio` VALUES (21, 1669, 'Cohuecan');
INSERT INTO `municipio` VALUES (21, 1670, 'Tepemaxalco');
INSERT INTO `municipio` VALUES (21, 1671, 'Tlapanalá');
INSERT INTO `municipio` VALUES (21, 1672, 'Tepexco');
INSERT INTO `municipio` VALUES (21, 1673, 'Tilapa');
INSERT INTO `municipio` VALUES (21, 1674, 'Chietla');
INSERT INTO `municipio` VALUES (21, 1675, 'Atzala');
INSERT INTO `municipio` VALUES (21, 1676, 'Teopantlán');
INSERT INTO `municipio` VALUES (21, 1677, 'San Martín Totoltepec');
INSERT INTO `municipio` VALUES (21, 1678, 'Xochiltepec');
INSERT INTO `municipio` VALUES (21, 1679, 'Epatlán');
INSERT INTO `municipio` VALUES (21, 1680, 'Ahuatlán');
INSERT INTO `municipio` VALUES (21, 1681, 'Coatzingo');
INSERT INTO `municipio` VALUES (21, 1682, 'Santa Catarina Tlaltempan');
INSERT INTO `municipio` VALUES (21, 1683, 'Chigmecatitlán');
INSERT INTO `municipio` VALUES (21, 1684, 'Zacapala');
INSERT INTO `municipio` VALUES (21, 1685, 'Tepexi de Rodríguez');
INSERT INTO `municipio` VALUES (21, 1686, 'Teotlalco');
INSERT INTO `municipio` VALUES (21, 1687, 'Jolalpan');
INSERT INTO `municipio` VALUES (21, 1688, 'Huehuetlán el Chico');
INSERT INTO `municipio` VALUES (21, 1689, 'Chiautla');
INSERT INTO `municipio` VALUES (21, 1690, 'Cohetzala');
INSERT INTO `municipio` VALUES (21, 1691, 'Xicotlán');
INSERT INTO `municipio` VALUES (21, 1692, 'Chila de la Sal');
INSERT INTO `municipio` VALUES (21, 1693, 'Ixcamilpa de Guerrero');
INSERT INTO `municipio` VALUES (21, 1694, 'Albino Zertuche');
INSERT INTO `municipio` VALUES (21, 1695, 'Tulcingo');
INSERT INTO `municipio` VALUES (21, 1696, 'Tehuitzingo');
INSERT INTO `municipio` VALUES (21, 1697, 'Cuayuca de Andrade');
INSERT INTO `municipio` VALUES (21, 1698, 'Santa Inés Ahuatempan');
INSERT INTO `municipio` VALUES (21, 1699, 'Axutla');
INSERT INTO `municipio` VALUES (21, 1700, 'Chinantla');
INSERT INTO `municipio` VALUES (21, 1701, 'Ahuehuetitla');
INSERT INTO `municipio` VALUES (21, 1702, 'San Pablo Anicano');
INSERT INTO `municipio` VALUES (21, 1703, 'Tecomatlán');
INSERT INTO `municipio` VALUES (21, 1704, 'Piaxtla');
INSERT INTO `municipio` VALUES (21, 1705, 'Guadalupe');
INSERT INTO `municipio` VALUES (21, 1706, 'Ixcaquixtla');
INSERT INTO `municipio` VALUES (21, 1707, 'Coyotepec');
INSERT INTO `municipio` VALUES (21, 1708, 'Xayacatlán de Bravo');
INSERT INTO `municipio` VALUES (21, 1709, 'Totoltepec de Guerrero');
INSERT INTO `municipio` VALUES (21, 1710, 'Acatlán');
INSERT INTO `municipio` VALUES (21, 1711, 'San Jerónimo Xayacatlán');
INSERT INTO `municipio` VALUES (21, 1712, 'San Pedro Yeloixtlahuaca');
INSERT INTO `municipio` VALUES (21, 1713, 'Petlalcingo');
INSERT INTO `municipio` VALUES (21, 1714, 'San Miguel Ixitlán');
INSERT INTO `municipio` VALUES (21, 1715, 'Chila');
INSERT INTO `municipio` VALUES (21, 1716, 'Rafael Lara Grajales');
INSERT INTO `municipio` VALUES (21, 1717, 'San José Chiapa');
INSERT INTO `municipio` VALUES (21, 1718, 'Oriental');
INSERT INTO `municipio` VALUES (21, 1719, 'San Nicolás Buenos Aires');
INSERT INTO `municipio` VALUES (21, 1720, 'Guadalupe Victoria');
INSERT INTO `municipio` VALUES (21, 1721, 'Tlachichuca');
INSERT INTO `municipio` VALUES (21, 1722, 'Lafragua');
INSERT INTO `municipio` VALUES (21, 1723, 'Chilchotla');
INSERT INTO `municipio` VALUES (21, 1724, 'Quimixtlán');
INSERT INTO `municipio` VALUES (21, 1725, 'Chichiquila');
INSERT INTO `municipio` VALUES (21, 1726, 'Tepatlaxco de Hidalgo');
INSERT INTO `municipio` VALUES (21, 1727, 'Acajete');
INSERT INTO `municipio` VALUES (21, 1728, 'Nopalucan');
INSERT INTO `municipio` VALUES (21, 1729, 'Mazapiltepec de Juárez');
INSERT INTO `municipio` VALUES (21, 1730, 'Soltepec');
INSERT INTO `municipio` VALUES (21, 1731, 'Acatzingo');
INSERT INTO `municipio` VALUES (21, 1732, 'San Salvador el Seco');
INSERT INTO `municipio` VALUES (21, 1733, 'General Felipe Ángeles');
INSERT INTO `municipio` VALUES (21, 1734, 'Aljojuca');
INSERT INTO `municipio` VALUES (21, 1735, 'San Juan Atenco');
INSERT INTO `municipio` VALUES (21, 1736, 'Tepeaca');
INSERT INTO `municipio` VALUES (21, 1737, 'Cuautinchán');
INSERT INTO `municipio` VALUES (21, 1738, 'Tecali de Herrera');
INSERT INTO `municipio` VALUES (21, 1739, 'Mixtla');
INSERT INTO `municipio` VALUES (21, 1740, 'Santo Tomás Hueyotlipan');
INSERT INTO `municipio` VALUES (21, 1741, 'Tzicatlacoyan');
INSERT INTO `municipio` VALUES (21, 1742, 'Huehuetlán el Grande');
INSERT INTO `municipio` VALUES (21, 1743, 'La Magdalena Tlatlauquitepec');
INSERT INTO `municipio` VALUES (21, 1744, 'San Juan Atzompa');
INSERT INTO `municipio` VALUES (21, 1745, 'Huatlatlauca');
INSERT INTO `municipio` VALUES (21, 1746, 'Los Reyes de Juárez');
INSERT INTO `municipio` VALUES (21, 1747, 'Cuapiaxtla de Madero');
INSERT INTO `municipio` VALUES (21, 1748, 'San Salvador Huixcolotla');
INSERT INTO `municipio` VALUES (21, 1749, 'Quecholac');
INSERT INTO `municipio` VALUES (21, 1750, 'Tecamachalco');
INSERT INTO `municipio` VALUES (21, 1751, 'Palmar de Bravo');
INSERT INTO `municipio` VALUES (21, 1752, 'Chalchicomula de Sesma');
INSERT INTO `municipio` VALUES (21, 1753, 'Atzitzintla');
INSERT INTO `municipio` VALUES (21, 1754, 'Esperanza');
INSERT INTO `municipio` VALUES (21, 1755, 'Cañada Morelos');
INSERT INTO `municipio` VALUES (21, 1756, 'Tlanepantla');
INSERT INTO `municipio` VALUES (21, 1757, 'Tochtepec');
INSERT INTO `municipio` VALUES (21, 1758, 'Atoyatempan');
INSERT INTO `municipio` VALUES (21, 1759, 'Tepeyahualco de Cuauhtémoc');
INSERT INTO `municipio` VALUES (21, 1760, 'Huitziltepec');
INSERT INTO `municipio` VALUES (21, 1761, 'Molcaxac');
INSERT INTO `municipio` VALUES (21, 1762, 'Xochitlán Todos Santos');
INSERT INTO `municipio` VALUES (21, 1763, 'Yehualtepec');
INSERT INTO `municipio` VALUES (21, 1764, 'Tlacotepec de Benito Juárez');
INSERT INTO `municipio` VALUES (21, 1765, 'Juan N. Méndez');
INSERT INTO `municipio` VALUES (21, 1766, 'Tehuacán');
INSERT INTO `municipio` VALUES (21, 1767, 'Tepanco de López');
INSERT INTO `municipio` VALUES (21, 1768, 'Chapulco');
INSERT INTO `municipio` VALUES (21, 1769, 'Santiago Miahuatlán');
INSERT INTO `municipio` VALUES (21, 1770, 'Nicolás Bravo');
INSERT INTO `municipio` VALUES (21, 1771, 'Atexcal');
INSERT INTO `municipio` VALUES (21, 1772, 'San Antonio Cañada');
INSERT INTO `municipio` VALUES (21, 1773, 'Zapotitlán');
INSERT INTO `municipio` VALUES (21, 1774, 'San Gabriel Chilac');
INSERT INTO `municipio` VALUES (21, 1775, 'Caltepec');
INSERT INTO `municipio` VALUES (21, 1776, 'Vicente Guerrero');
INSERT INTO `municipio` VALUES (21, 1777, 'Ajalpan');
INSERT INTO `municipio` VALUES (21, 1778, 'Eloxochitlán');
INSERT INTO `municipio` VALUES (21, 1779, 'Zoquitlán');
INSERT INTO `municipio` VALUES (21, 1780, 'San Sebastián Tlacotepec');
INSERT INTO `municipio` VALUES (21, 1781, 'Altepexi');
INSERT INTO `municipio` VALUES (21, 1782, 'Zinacatepec');
INSERT INTO `municipio` VALUES (21, 1783, 'San José Miahuatlán');
INSERT INTO `municipio` VALUES (21, 1784, 'Coxcatlán');
INSERT INTO `municipio` VALUES (21, 1785, 'Coyomeapan');
INSERT INTO `municipio` VALUES (22, 1786, 'Querétaro');
INSERT INTO `municipio` VALUES (22, 1787, 'El Marqués');
INSERT INTO `municipio` VALUES (22, 1788, 'Colón');
INSERT INTO `municipio` VALUES (22, 1789, 'Pinal de Amoles');
INSERT INTO `municipio` VALUES (22, 1790, 'Jalpan de Serra');
INSERT INTO `municipio` VALUES (22, 1791, 'Landa de Matamoros');
INSERT INTO `municipio` VALUES (22, 1792, 'Arroyo Seco');
INSERT INTO `municipio` VALUES (22, 1793, 'Peñamiller');
INSERT INTO `municipio` VALUES (22, 1794, 'Cadereyta de Montes');
INSERT INTO `municipio` VALUES (22, 1795, 'San Joaquín');
INSERT INTO `municipio` VALUES (22, 1796, 'Tolimán');
INSERT INTO `municipio` VALUES (22, 1797, 'Ezequiel Montes');
INSERT INTO `municipio` VALUES (22, 1798, 'Pedro Escobedo');
INSERT INTO `municipio` VALUES (22, 1799, 'Tequisquiapan');
INSERT INTO `municipio` VALUES (22, 1800, 'San Juan del Río');
INSERT INTO `municipio` VALUES (22, 1801, 'Amealco de Bonfil');
INSERT INTO `municipio` VALUES (22, 1802, 'Corregidora');
INSERT INTO `municipio` VALUES (22, 1803, 'Huimilpan');
INSERT INTO `municipio` VALUES (23, 1804, 'Othón P. Blanco');
INSERT INTO `municipio` VALUES (23, 1805, 'Felipe Carrillo Puerto');
INSERT INTO `municipio` VALUES (23, 1806, 'Lázaro Cárdenas');
INSERT INTO `municipio` VALUES (23, 1807, 'Isla Mujeres');
INSERT INTO `municipio` VALUES (23, 1808, 'Benito Juárez');
INSERT INTO `municipio` VALUES (23, 1809, 'Cozumel');
INSERT INTO `municipio` VALUES (23, 1810, 'Solidaridad');
INSERT INTO `municipio` VALUES (23, 1811, 'Tulum');
INSERT INTO `municipio` VALUES (23, 1812, 'José María Morelos');
INSERT INTO `municipio` VALUES (23, 1813, 'Bacalar');
INSERT INTO `municipio` VALUES (24, 1814, 'San Luis Potosí');
INSERT INTO `municipio` VALUES (24, 1815, 'Soledad de Graciano Sánchez');
INSERT INTO `municipio` VALUES (24, 1816, 'Cerro de San Pedro');
INSERT INTO `municipio` VALUES (24, 1817, 'Ahualulco');
INSERT INTO `municipio` VALUES (24, 1818, 'Mexquitic de Carmona');
INSERT INTO `municipio` VALUES (24, 1819, 'Villa de Arriaga');
INSERT INTO `municipio` VALUES (24, 1820, 'Vanegas');
INSERT INTO `municipio` VALUES (24, 1821, 'Cedral');
INSERT INTO `municipio` VALUES (24, 1822, 'Catorce');
INSERT INTO `municipio` VALUES (24, 1823, 'Charcas');
INSERT INTO `municipio` VALUES (24, 1824, 'Salinas');
INSERT INTO `municipio` VALUES (24, 1825, 'Santo Domingo');
INSERT INTO `municipio` VALUES (24, 1826, 'Villa de Ramos');
INSERT INTO `municipio` VALUES (24, 1827, 'Matehuala');
INSERT INTO `municipio` VALUES (24, 1828, 'Villa de la Paz');
INSERT INTO `municipio` VALUES (24, 1829, 'Villa de Guadalupe');
INSERT INTO `municipio` VALUES (24, 1830, 'Guadalcázar');
INSERT INTO `municipio` VALUES (24, 1831, 'Moctezuma');
INSERT INTO `municipio` VALUES (24, 1832, 'Venado');
INSERT INTO `municipio` VALUES (24, 1833, 'Villa de Arista');
INSERT INTO `municipio` VALUES (24, 1834, 'Villa Hidalgo');
INSERT INTO `municipio` VALUES (24, 1835, 'Armadillo de los Infante');
INSERT INTO `municipio` VALUES (24, 1836, 'Ciudad Valles');
INSERT INTO `municipio` VALUES (24, 1837, 'Ebano');
INSERT INTO `municipio` VALUES (24, 1838, 'Tamuín');
INSERT INTO `municipio` VALUES (24, 1839, 'El Naranjo');
INSERT INTO `municipio` VALUES (24, 1840, 'Ciudad del Maíz');
INSERT INTO `municipio` VALUES (24, 1841, 'Alaquines');
INSERT INTO `municipio` VALUES (24, 1842, 'Cárdenas');
INSERT INTO `municipio` VALUES (24, 1843, 'Cerritos');
INSERT INTO `municipio` VALUES (24, 1844, 'Villa Juárez');
INSERT INTO `municipio` VALUES (24, 1845, 'San Nicolás Tolentino');
INSERT INTO `municipio` VALUES (24, 1846, 'Villa de Reyes');
INSERT INTO `municipio` VALUES (24, 1847, 'Zaragoza');
INSERT INTO `municipio` VALUES (24, 1848, 'Santa María del Río');
INSERT INTO `municipio` VALUES (24, 1849, 'Tierra Nueva');
INSERT INTO `municipio` VALUES (24, 1850, 'Rioverde');
INSERT INTO `municipio` VALUES (24, 1851, 'Ciudad Fernández');
INSERT INTO `municipio` VALUES (24, 1852, 'San Ciro de Acosta');
INSERT INTO `municipio` VALUES (24, 1853, 'Tamasopo');
INSERT INTO `municipio` VALUES (24, 1854, 'Rayón');
INSERT INTO `municipio` VALUES (24, 1855, 'Aquismón');
INSERT INTO `municipio` VALUES (24, 1856, 'Lagunillas');
INSERT INTO `municipio` VALUES (24, 1857, 'Santa Catarina');
INSERT INTO `municipio` VALUES (24, 1858, 'Tancanhuitz');
INSERT INTO `municipio` VALUES (24, 1859, 'Tanlajás');
INSERT INTO `municipio` VALUES (24, 1860, 'San Vicente Tancuayalab');
INSERT INTO `municipio` VALUES (24, 1861, 'San Antonio');
INSERT INTO `municipio` VALUES (24, 1862, 'Tanquián de Escobedo');
INSERT INTO `municipio` VALUES (24, 1863, 'Tampamolón Corona');
INSERT INTO `municipio` VALUES (24, 1864, 'Coxcatlán');
INSERT INTO `municipio` VALUES (24, 1865, 'Huehuetlán');
INSERT INTO `municipio` VALUES (24, 1866, 'Xilitla');
INSERT INTO `municipio` VALUES (24, 1867, 'Axtla de Terrazas');
INSERT INTO `municipio` VALUES (24, 1868, 'Tampacán');
INSERT INTO `municipio` VALUES (24, 1869, 'San Martín Chalchicuautla');
INSERT INTO `municipio` VALUES (24, 1870, 'Tamazunchale');
INSERT INTO `municipio` VALUES (24, 1871, 'Matlapa');
INSERT INTO `municipio` VALUES (25, 1872, 'Culiacán');
INSERT INTO `municipio` VALUES (25, 1873, 'Navolato');
INSERT INTO `municipio` VALUES (25, 1874, 'Badiraguato');
INSERT INTO `municipio` VALUES (25, 1875, 'Cosalá');
INSERT INTO `municipio` VALUES (25, 1876, 'Mocorito');
INSERT INTO `municipio` VALUES (25, 1877, 'Guasave');
INSERT INTO `municipio` VALUES (25, 1878, 'Ahome');
INSERT INTO `municipio` VALUES (25, 1879, 'Salvador Alvarado');
INSERT INTO `municipio` VALUES (25, 1880, 'Angostura');
INSERT INTO `municipio` VALUES (25, 1881, 'Choix');
INSERT INTO `municipio` VALUES (25, 1882, 'El Fuerte');
INSERT INTO `municipio` VALUES (25, 1883, 'Sinaloa');
INSERT INTO `municipio` VALUES (25, 1884, 'Mazatlán');
INSERT INTO `municipio` VALUES (25, 1885, 'Escuinapa');
INSERT INTO `municipio` VALUES (25, 1886, 'Concordia');
INSERT INTO `municipio` VALUES (25, 1887, 'Elota');
INSERT INTO `municipio` VALUES (25, 1888, 'Rosario');
INSERT INTO `municipio` VALUES (25, 1889, 'San Ignacio');
INSERT INTO `municipio` VALUES (26, 1890, 'Hermosillo');
INSERT INTO `municipio` VALUES (26, 1891, 'San Miguel de Horcasitas');
INSERT INTO `municipio` VALUES (26, 1892, 'Carbó');
INSERT INTO `municipio` VALUES (26, 1893, 'San Luis Río Colorado');
INSERT INTO `municipio` VALUES (26, 1894, 'Puerto Peñasco');
INSERT INTO `municipio` VALUES (26, 1895, 'General Plutarco Elías Calles');
INSERT INTO `municipio` VALUES (26, 1896, 'Caborca');
INSERT INTO `municipio` VALUES (26, 1897, 'Altar');
INSERT INTO `municipio` VALUES (26, 1898, 'Tubutama');
INSERT INTO `municipio` VALUES (26, 1899, 'Atil');
INSERT INTO `municipio` VALUES (26, 1900, 'Oquitoa');
INSERT INTO `municipio` VALUES (26, 1901, 'Sáric');
INSERT INTO `municipio` VALUES (26, 1902, 'Benjamín Hill');
INSERT INTO `municipio` VALUES (26, 1903, 'Trincheras');
INSERT INTO `municipio` VALUES (26, 1904, 'Pitiquito');
INSERT INTO `municipio` VALUES (26, 1905, 'Nogales');
INSERT INTO `municipio` VALUES (26, 1906, 'Imuris');
INSERT INTO `municipio` VALUES (26, 1907, 'Santa Cruz');
INSERT INTO `municipio` VALUES (26, 1908, 'Magdalena');
INSERT INTO `municipio` VALUES (26, 1909, 'Naco');
INSERT INTO `municipio` VALUES (26, 1910, 'Agua Prieta');
INSERT INTO `municipio` VALUES (26, 1911, 'Fronteras');
INSERT INTO `municipio` VALUES (26, 1912, 'Nacozari de García');
INSERT INTO `municipio` VALUES (26, 1913, 'Bavispe');
INSERT INTO `municipio` VALUES (26, 1914, 'Bacerac');
INSERT INTO `municipio` VALUES (26, 1915, 'Huachinera');
INSERT INTO `municipio` VALUES (26, 1916, 'Nácori Chico');
INSERT INTO `municipio` VALUES (26, 1917, 'Granados');
INSERT INTO `municipio` VALUES (26, 1918, 'Bacadéhuachi');
INSERT INTO `municipio` VALUES (26, 1919, 'Cumpas');
INSERT INTO `municipio` VALUES (26, 1920, 'Huásabas');
INSERT INTO `municipio` VALUES (26, 1921, 'Moctezuma');
INSERT INTO `municipio` VALUES (26, 1922, 'Villa Hidalgo');
INSERT INTO `municipio` VALUES (26, 1923, 'Santa Ana');
INSERT INTO `municipio` VALUES (26, 1924, 'Cananea');
INSERT INTO `municipio` VALUES (26, 1925, 'Arizpe');
INSERT INTO `municipio` VALUES (26, 1926, 'Cucurpe');
INSERT INTO `municipio` VALUES (26, 1927, 'Bacoachi');
INSERT INTO `municipio` VALUES (26, 1928, 'San Pedro de la Cueva');
INSERT INTO `municipio` VALUES (26, 1929, 'Divisaderos');
INSERT INTO `municipio` VALUES (26, 1930, 'Tepache');
INSERT INTO `municipio` VALUES (26, 1931, 'Villa Pesqueira');
INSERT INTO `municipio` VALUES (26, 1932, 'Opodepe');
INSERT INTO `municipio` VALUES (26, 1933, 'Huépac');
INSERT INTO `municipio` VALUES (26, 1934, 'Banámichi');
INSERT INTO `municipio` VALUES (26, 1935, 'Ures');
INSERT INTO `municipio` VALUES (26, 1936, 'Aconchi');
INSERT INTO `municipio` VALUES (26, 1937, 'Baviácora');
INSERT INTO `municipio` VALUES (26, 1938, 'San Felipe de Jesús');
INSERT INTO `municipio` VALUES (26, 1939, 'Rayón');
INSERT INTO `municipio` VALUES (26, 1940, 'Cajeme');
INSERT INTO `municipio` VALUES (26, 1941, 'Navojoa');
INSERT INTO `municipio` VALUES (26, 1942, 'Huatabampo');
INSERT INTO `municipio` VALUES (26, 1943, 'Bácum');
INSERT INTO `municipio` VALUES (26, 1944, 'Etchojoa');
INSERT INTO `municipio` VALUES (26, 1945, 'Benito Juárez');
INSERT INTO `municipio` VALUES (26, 1946, 'Empalme');
INSERT INTO `municipio` VALUES (26, 1947, 'Guaymas');
INSERT INTO `municipio` VALUES (26, 1948, 'San Ignacio Río Muerto');
INSERT INTO `municipio` VALUES (26, 1949, 'La Colorada');
INSERT INTO `municipio` VALUES (26, 1950, 'Mazatán');
INSERT INTO `municipio` VALUES (26, 1951, 'Suaqui Grande');
INSERT INTO `municipio` VALUES (26, 1952, 'Sahuaripa');
INSERT INTO `municipio` VALUES (26, 1953, 'San Javier');
INSERT INTO `municipio` VALUES (26, 1954, 'Soyopa');
INSERT INTO `municipio` VALUES (26, 1955, 'Bacanora');
INSERT INTO `municipio` VALUES (26, 1956, 'Arivechi');
INSERT INTO `municipio` VALUES (26, 1957, 'Rosario');
INSERT INTO `municipio` VALUES (26, 1958, 'Quiriego');
INSERT INTO `municipio` VALUES (26, 1959, 'Onavas');
INSERT INTO `municipio` VALUES (26, 1960, 'Alamos');
INSERT INTO `municipio` VALUES (26, 1961, 'Yécora');
INSERT INTO `municipio` VALUES (27, 1962, 'Centro');
INSERT INTO `municipio` VALUES (27, 1963, 'Jalpa de Méndez');
INSERT INTO `municipio` VALUES (27, 1964, 'Nacajuca');
INSERT INTO `municipio` VALUES (27, 1965, 'Comalcalco');
INSERT INTO `municipio` VALUES (27, 1966, 'Huimanguillo');
INSERT INTO `municipio` VALUES (27, 1967, 'Cárdenas');
INSERT INTO `municipio` VALUES (27, 1968, 'Paraíso');
INSERT INTO `municipio` VALUES (27, 1969, 'Cunduacán');
INSERT INTO `municipio` VALUES (27, 1970, 'Macuspana');
INSERT INTO `municipio` VALUES (27, 1971, 'Centla');
INSERT INTO `municipio` VALUES (27, 1972, 'Jonuta');
INSERT INTO `municipio` VALUES (27, 1973, 'Teapa');
INSERT INTO `municipio` VALUES (27, 1974, 'Jalapa');
INSERT INTO `municipio` VALUES (27, 1975, 'Tacotalpa');
INSERT INTO `municipio` VALUES (27, 1976, 'Tenosique');
INSERT INTO `municipio` VALUES (27, 1977, 'Balancán');
INSERT INTO `municipio` VALUES (27, 1978, 'Emiliano Zapata');
INSERT INTO `municipio` VALUES (28, 1979, 'Victoria');
INSERT INTO `municipio` VALUES (28, 1980, 'Llera');
INSERT INTO `municipio` VALUES (28, 1981, 'Güémez');
INSERT INTO `municipio` VALUES (28, 1982, 'Casas');
INSERT INTO `municipio` VALUES (28, 1983, 'Matamoros');
INSERT INTO `municipio` VALUES (28, 1984, 'Valle Hermoso');
INSERT INTO `municipio` VALUES (28, 1985, 'San Fernando');
INSERT INTO `municipio` VALUES (28, 1986, 'Cruillas');
INSERT INTO `municipio` VALUES (28, 1987, 'San Nicolás');
INSERT INTO `municipio` VALUES (28, 1988, 'Soto la Marina');
INSERT INTO `municipio` VALUES (28, 1989, 'Jiménez');
INSERT INTO `municipio` VALUES (28, 1990, 'San Carlos');
INSERT INTO `municipio` VALUES (28, 1991, 'Abasolo');
INSERT INTO `municipio` VALUES (28, 1992, 'Padilla');
INSERT INTO `municipio` VALUES (28, 1993, 'Hidalgo');
INSERT INTO `municipio` VALUES (28, 1994, 'Mainero');
INSERT INTO `municipio` VALUES (28, 1995, 'Villagrán');
INSERT INTO `municipio` VALUES (28, 1996, 'Tula');
INSERT INTO `municipio` VALUES (28, 1997, 'Jaumave');
INSERT INTO `municipio` VALUES (28, 1998, 'Miquihuana');
INSERT INTO `municipio` VALUES (28, 1999, 'Bustamante');
INSERT INTO `municipio` VALUES (28, 2000, 'Palmillas');
INSERT INTO `municipio` VALUES (28, 2001, 'Ocampo');
INSERT INTO `municipio` VALUES (28, 2002, 'Nuevo Laredo');
INSERT INTO `municipio` VALUES (28, 2003, 'Miguel Alemán');
INSERT INTO `municipio` VALUES (28, 2004, 'Guerrero');
INSERT INTO `municipio` VALUES (28, 2005, 'Mier');
INSERT INTO `municipio` VALUES (28, 2006, 'Gustavo Díaz Ordaz');
INSERT INTO `municipio` VALUES (28, 2007, 'Camargo');
INSERT INTO `municipio` VALUES (28, 2008, 'Reynosa');
INSERT INTO `municipio` VALUES (28, 2009, 'Río Bravo');
INSERT INTO `municipio` VALUES (28, 2010, 'Méndez');
INSERT INTO `municipio` VALUES (28, 2011, 'Burgos');
INSERT INTO `municipio` VALUES (28, 2012, 'Tampico');
INSERT INTO `municipio` VALUES (28, 2013, 'Ciudad Madero');
INSERT INTO `municipio` VALUES (28, 2014, 'Altamira');
INSERT INTO `municipio` VALUES (28, 2015, 'Aldama');
INSERT INTO `municipio` VALUES (28, 2016, 'González');
INSERT INTO `municipio` VALUES (28, 2017, 'Xicoténcatl');
INSERT INTO `municipio` VALUES (28, 2018, 'Gómez Farías');
INSERT INTO `municipio` VALUES (28, 2019, 'El Mante');
INSERT INTO `municipio` VALUES (28, 2020, 'Antiguo Morelos');
INSERT INTO `municipio` VALUES (28, 2021, 'Nuevo Morelos');
INSERT INTO `municipio` VALUES (29, 2022, 'Tlaxcala');
INSERT INTO `municipio` VALUES (29, 2023, 'Ixtacuixtla de Mariano Matamoros');
INSERT INTO `municipio` VALUES (29, 2024, 'Santa Ana Nopalucan');
INSERT INTO `municipio` VALUES (29, 2025, 'Panotla');
INSERT INTO `municipio` VALUES (29, 2026, 'Totolac');
INSERT INTO `municipio` VALUES (29, 2027, 'Tepeyanco');
INSERT INTO `municipio` VALUES (29, 2028, 'Santa Isabel Xiloxoxtla');
INSERT INTO `municipio` VALUES (29, 2029, 'San Juan Huactzinco');
INSERT INTO `municipio` VALUES (29, 2030, 'Calpulalpan');
INSERT INTO `municipio` VALUES (29, 2031, 'Sanctórum de Lázaro Cárdenas');
INSERT INTO `municipio` VALUES (29, 2032, 'Benito Juárez');
INSERT INTO `municipio` VALUES (29, 2033, 'Hueyotlipan');
INSERT INTO `municipio` VALUES (29, 2034, 'Tlaxco');
INSERT INTO `municipio` VALUES (29, 2035, 'Nanacamilpa de Mariano Arista');
INSERT INTO `municipio` VALUES (29, 2036, 'Españita');
INSERT INTO `municipio` VALUES (29, 2037, 'Apizaco');
INSERT INTO `municipio` VALUES (29, 2038, 'Atlangatepec');
INSERT INTO `municipio` VALUES (29, 2039, 'Muñoz de Domingo Arenas');
INSERT INTO `municipio` VALUES (29, 2040, 'Tetla de la Solidaridad');
INSERT INTO `municipio` VALUES (29, 2041, 'Xaltocan');
INSERT INTO `municipio` VALUES (29, 2042, 'San Lucas Tecopilco');
INSERT INTO `municipio` VALUES (29, 2043, 'Yauhquemehcan');
INSERT INTO `municipio` VALUES (29, 2044, 'Xaloztoc');
INSERT INTO `municipio` VALUES (29, 2045, 'Tocatlán');
INSERT INTO `municipio` VALUES (29, 2046, 'Tzompantepec');
INSERT INTO `municipio` VALUES (29, 2047, 'San José Teacalco');
INSERT INTO `municipio` VALUES (29, 2048, 'Huamantla');
INSERT INTO `municipio` VALUES (29, 2049, 'Terrenate');
INSERT INTO `municipio` VALUES (29, 2050, 'Lázaro Cárdenas');
INSERT INTO `municipio` VALUES (29, 2051, 'Emiliano Zapata');
INSERT INTO `municipio` VALUES (29, 2052, 'Atltzayanca');
INSERT INTO `municipio` VALUES (29, 2053, 'Cuapiaxtla');
INSERT INTO `municipio` VALUES (29, 2054, 'El Carmen Tequexquitla');
INSERT INTO `municipio` VALUES (29, 2055, 'Ixtenco');
INSERT INTO `municipio` VALUES (29, 2056, 'Ziltlaltépec de Trinidad Sánchez Santos');
INSERT INTO `municipio` VALUES (29, 2057, 'Apetatitlán de Antonio Carvajal');
INSERT INTO `municipio` VALUES (29, 2058, 'Amaxac de Guerrero');
INSERT INTO `municipio` VALUES (29, 2059, 'Santa Cruz Tlaxcala');
INSERT INTO `municipio` VALUES (29, 2060, 'Cuaxomulco');
INSERT INTO `municipio` VALUES (29, 2061, 'Contla de Juan Cuamatzi');
INSERT INTO `municipio` VALUES (29, 2062, 'Tepetitla de Lardizábal');
INSERT INTO `municipio` VALUES (29, 2063, 'Natívitas');
INSERT INTO `municipio` VALUES (29, 2064, 'Santa Apolonia Teacalco');
INSERT INTO `municipio` VALUES (29, 2065, 'Tetlatlahuca');
INSERT INTO `municipio` VALUES (29, 2066, 'San Damián Texóloc');
INSERT INTO `municipio` VALUES (29, 2067, 'San Jerónimo Zacualpan');
INSERT INTO `municipio` VALUES (29, 2068, 'Zacatelco');
INSERT INTO `municipio` VALUES (29, 2069, 'San Lorenzo Axocomanitla');
INSERT INTO `municipio` VALUES (29, 2070, 'Santa Catarina Ayometla');
INSERT INTO `municipio` VALUES (29, 2071, 'Xicohtzinco');
INSERT INTO `municipio` VALUES (29, 2072, 'Papalotla de Xicohténcatl');
INSERT INTO `municipio` VALUES (29, 2073, 'Chiautempan');
INSERT INTO `municipio` VALUES (29, 2074, 'La Magdalena Tlaltelulco');
INSERT INTO `municipio` VALUES (29, 2075, 'San Francisco Tetlanohcan');
INSERT INTO `municipio` VALUES (29, 2076, 'Teolocholco');
INSERT INTO `municipio` VALUES (29, 2077, 'Acuamanala de Miguel Hidalgo');
INSERT INTO `municipio` VALUES (29, 2078, 'Santa Cruz Quilehtla');
INSERT INTO `municipio` VALUES (29, 2079, 'Mazatecochco de José María Morelos');
INSERT INTO `municipio` VALUES (29, 2080, 'Tenancingo');
INSERT INTO `municipio` VALUES (29, 2081, 'San Pablo del Monte');
INSERT INTO `municipio` VALUES (30, 2082, 'Xalapa');
INSERT INTO `municipio` VALUES (30, 2083, 'Tlalnelhuayocan');
INSERT INTO `municipio` VALUES (30, 2084, 'Xico');
INSERT INTO `municipio` VALUES (30, 2085, 'Ixhuacán de los Reyes');
INSERT INTO `municipio` VALUES (30, 2086, 'Ayahualulco');
INSERT INTO `municipio` VALUES (30, 2087, 'Perote');
INSERT INTO `municipio` VALUES (30, 2088, 'Banderilla');
INSERT INTO `municipio` VALUES (30, 2089, 'Rafael Lucio');
INSERT INTO `municipio` VALUES (30, 2090, 'Acajete');
INSERT INTO `municipio` VALUES (30, 2091, 'Las Vigas de Ramírez');
INSERT INTO `municipio` VALUES (30, 2092, 'Villa Aldama');
INSERT INTO `municipio` VALUES (30, 2093, 'Tlacolulan');
INSERT INTO `municipio` VALUES (30, 2094, 'Tonayán');
INSERT INTO `municipio` VALUES (30, 2095, 'Coacoatzintla');
INSERT INTO `municipio` VALUES (30, 2096, 'Jilotepec');
INSERT INTO `municipio` VALUES (30, 2097, 'Naolinco');
INSERT INTO `municipio` VALUES (30, 2098, 'Miahuatlán');
INSERT INTO `municipio` VALUES (30, 2099, 'Acatlán');
INSERT INTO `municipio` VALUES (30, 2100, 'Tepetlán');
INSERT INTO `municipio` VALUES (30, 2101, 'Juchique de Ferrer');
INSERT INTO `municipio` VALUES (30, 2102, 'Alto Lucero de Gutiérrez Barrios');
INSERT INTO `municipio` VALUES (30, 2103, 'Actopan');
INSERT INTO `municipio` VALUES (30, 2104, 'Coatepec');
INSERT INTO `municipio` VALUES (30, 2105, 'Teocelo');
INSERT INTO `municipio` VALUES (30, 2106, 'Cosautlán de Carvajal');
INSERT INTO `municipio` VALUES (30, 2107, 'Emiliano Zapata');
INSERT INTO `municipio` VALUES (30, 2108, 'Apazapan');
INSERT INTO `municipio` VALUES (30, 2109, 'Puente Nacional');
INSERT INTO `municipio` VALUES (30, 2110, 'Ursulo Galván');
INSERT INTO `municipio` VALUES (30, 2111, 'Paso de Ovejas');
INSERT INTO `municipio` VALUES (30, 2112, 'La Antigua');
INSERT INTO `municipio` VALUES (30, 2113, 'Veracruz');
INSERT INTO `municipio` VALUES (30, 2114, 'Pánuco');
INSERT INTO `municipio` VALUES (30, 2115, 'Pueblo Viejo');
INSERT INTO `municipio` VALUES (30, 2116, 'Tampico Alto');
INSERT INTO `municipio` VALUES (30, 2117, 'Tempoal');
INSERT INTO `municipio` VALUES (30, 2118, 'Ozuluama de Mascareñas');
INSERT INTO `municipio` VALUES (30, 2119, 'Tantoyuca');
INSERT INTO `municipio` VALUES (30, 2120, 'Platón Sánchez');
INSERT INTO `municipio` VALUES (30, 2121, 'Chiconamel');
INSERT INTO `municipio` VALUES (30, 2122, 'Chalma');
INSERT INTO `municipio` VALUES (30, 2123, 'Chontla');
INSERT INTO `municipio` VALUES (30, 2124, 'Citlaltépetl');
INSERT INTO `municipio` VALUES (30, 2125, 'Ixcatepec');
INSERT INTO `municipio` VALUES (30, 2126, 'Naranjos Amatlán');
INSERT INTO `municipio` VALUES (30, 2127, 'El Higo');
INSERT INTO `municipio` VALUES (30, 2128, 'Chinampa de Gorostiza');
INSERT INTO `municipio` VALUES (30, 2129, 'Tantima');
INSERT INTO `municipio` VALUES (30, 2130, 'Tamalín');
INSERT INTO `municipio` VALUES (30, 2131, 'Cerro Azul');
INSERT INTO `municipio` VALUES (30, 2132, 'Tepetzintla');
INSERT INTO `municipio` VALUES (30, 2133, 'Tancoco');
INSERT INTO `municipio` VALUES (30, 2134, 'Tamiahua');
INSERT INTO `municipio` VALUES (30, 2135, 'Huayacocotla');
INSERT INTO `municipio` VALUES (30, 2136, 'Ilamatlán');
INSERT INTO `municipio` VALUES (30, 2137, 'Zontecomatlán de López y Fuentes');
INSERT INTO `municipio` VALUES (30, 2138, 'Texcatepec');
INSERT INTO `municipio` VALUES (30, 2139, 'Zacualpan');
INSERT INTO `municipio` VALUES (30, 2140, 'Benito Juárez');
INSERT INTO `municipio` VALUES (30, 2141, 'Tlachichilco');
INSERT INTO `municipio` VALUES (30, 2142, 'Ixhuatlán de Madero');
INSERT INTO `municipio` VALUES (30, 2143, 'Chicontepec');
INSERT INTO `municipio` VALUES (30, 2144, 'Álamo Temapache');
INSERT INTO `municipio` VALUES (30, 2145, 'Tuxpan');
INSERT INTO `municipio` VALUES (30, 2146, 'Tihuatlán');
INSERT INTO `municipio` VALUES (30, 2147, 'Castillo de Teayo');
INSERT INTO `municipio` VALUES (30, 2148, 'Cazones de Herrera');
INSERT INTO `municipio` VALUES (30, 2149, 'Zozocolco de Hidalgo');
INSERT INTO `municipio` VALUES (30, 2150, 'Chumatlán');
INSERT INTO `municipio` VALUES (30, 2151, 'Coxquihui');
INSERT INTO `municipio` VALUES (30, 2152, 'Mecatlán');
INSERT INTO `municipio` VALUES (30, 2153, 'Filomeno Mata');
INSERT INTO `municipio` VALUES (30, 2154, 'Coahuitlán');
INSERT INTO `municipio` VALUES (30, 2155, 'Coyutla');
INSERT INTO `municipio` VALUES (30, 2156, 'Coatzintla');
INSERT INTO `municipio` VALUES (30, 2157, 'Espinal');
INSERT INTO `municipio` VALUES (30, 2158, 'Poza Rica de Hidalgo');
INSERT INTO `municipio` VALUES (30, 2159, 'Papantla');
INSERT INTO `municipio` VALUES (30, 2160, 'Gutiérrez Zamora');
INSERT INTO `municipio` VALUES (30, 2161, 'Tecolutla');
INSERT INTO `municipio` VALUES (30, 2162, 'Martínez de la Torre');
INSERT INTO `municipio` VALUES (30, 2163, 'San Rafael');
INSERT INTO `municipio` VALUES (30, 2164, 'Tlapacoyan');
INSERT INTO `municipio` VALUES (30, 2165, 'Jalacingo');
INSERT INTO `municipio` VALUES (30, 2166, 'Atzalan');
INSERT INTO `municipio` VALUES (30, 2167, 'Altotonga');
INSERT INTO `municipio` VALUES (30, 2168, 'Las Minas');
INSERT INTO `municipio` VALUES (30, 2169, 'Tatatila');
INSERT INTO `municipio` VALUES (30, 2170, 'Tenochtitlán');
INSERT INTO `municipio` VALUES (30, 2171, 'Nautla');
INSERT INTO `municipio` VALUES (30, 2172, 'Misantla');
INSERT INTO `municipio` VALUES (30, 2173, 'Landero y Coss');
INSERT INTO `municipio` VALUES (30, 2174, 'Chiconquiaco');
INSERT INTO `municipio` VALUES (30, 2175, 'Yecuatla');
INSERT INTO `municipio` VALUES (30, 2176, 'Colipa');
INSERT INTO `municipio` VALUES (30, 2177, 'Vega de Alatorre');
INSERT INTO `municipio` VALUES (30, 2178, 'Jalcomulco');
INSERT INTO `municipio` VALUES (30, 2179, 'Tlaltetela');
INSERT INTO `municipio` VALUES (30, 2180, 'Tenampa');
INSERT INTO `municipio` VALUES (30, 2181, 'Totutla');
INSERT INTO `municipio` VALUES (30, 2182, 'Sochiapa');
INSERT INTO `municipio` VALUES (30, 2183, 'Tlacotepec de Mejía');
INSERT INTO `municipio` VALUES (30, 2184, 'Huatusco');
INSERT INTO `municipio` VALUES (30, 2185, 'Calcahualco');
INSERT INTO `municipio` VALUES (30, 2186, 'Alpatláhuac');
INSERT INTO `municipio` VALUES (30, 2187, 'Coscomatepec');
INSERT INTO `municipio` VALUES (30, 2188, 'La Perla');
INSERT INTO `municipio` VALUES (30, 2189, 'Chocamán');
INSERT INTO `municipio` VALUES (30, 2190, 'Tomatlán');
INSERT INTO `municipio` VALUES (30, 2191, 'Ixhuatlán del Café');
INSERT INTO `municipio` VALUES (30, 2192, 'Tepatlaxco');
INSERT INTO `municipio` VALUES (30, 2193, 'Comapa');
INSERT INTO `municipio` VALUES (30, 2194, 'Zentla');
INSERT INTO `municipio` VALUES (30, 2195, 'Camarón de Tejeda');
INSERT INTO `municipio` VALUES (30, 2196, 'Soledad de Doblado');
INSERT INTO `municipio` VALUES (30, 2197, 'Manlio Fabio Altamirano');
INSERT INTO `municipio` VALUES (30, 2198, 'Jamapa');
INSERT INTO `municipio` VALUES (30, 2199, 'Medellín');
INSERT INTO `municipio` VALUES (30, 2200, 'Boca del Río');
INSERT INTO `municipio` VALUES (30, 2201, 'Orizaba');
INSERT INTO `municipio` VALUES (30, 2202, 'Rafael Delgado');
INSERT INTO `municipio` VALUES (30, 2203, 'Mariano Escobedo');
INSERT INTO `municipio` VALUES (30, 2204, 'Ixhuatlancillo');
INSERT INTO `municipio` VALUES (30, 2205, 'Atzacan');
INSERT INTO `municipio` VALUES (30, 2206, 'Ixtaczoquitlán');
INSERT INTO `municipio` VALUES (30, 2207, 'Fortín');
INSERT INTO `municipio` VALUES (30, 2208, 'Córdoba');
INSERT INTO `municipio` VALUES (30, 2209, 'Maltrata');
INSERT INTO `municipio` VALUES (30, 2210, 'Nogales');
INSERT INTO `municipio` VALUES (30, 2211, 'Río Blanco');
INSERT INTO `municipio` VALUES (30, 2212, 'Camerino Z. Mendoza');
INSERT INTO `municipio` VALUES (30, 2213, 'Aquila');
INSERT INTO `municipio` VALUES (30, 2214, 'Acultzingo');
INSERT INTO `municipio` VALUES (30, 2215, 'Soledad Atzompa');
INSERT INTO `municipio` VALUES (30, 2216, 'Huiloapan de Cuauhtémoc');
INSERT INTO `municipio` VALUES (30, 2217, 'Tlaquilpa');
INSERT INTO `municipio` VALUES (30, 2218, 'Astacinga');
INSERT INTO `municipio` VALUES (30, 2219, 'Xoxocotla');
INSERT INTO `municipio` VALUES (30, 2220, 'Atlahuilco');
INSERT INTO `municipio` VALUES (30, 2221, 'Tequila');
INSERT INTO `municipio` VALUES (30, 2222, 'San Andrés Tenejapan');
INSERT INTO `municipio` VALUES (30, 2223, 'Tlilapan');
INSERT INTO `municipio` VALUES (30, 2224, 'Magdalena');
INSERT INTO `municipio` VALUES (30, 2225, 'Naranjal');
INSERT INTO `municipio` VALUES (30, 2226, 'Coetzala');
INSERT INTO `municipio` VALUES (30, 2227, 'Omealca');
INSERT INTO `municipio` VALUES (30, 2228, 'Cuitláhuac');
INSERT INTO `municipio` VALUES (30, 2229, 'Cuichapa');
INSERT INTO `municipio` VALUES (30, 2230, 'Yanga');
INSERT INTO `municipio` VALUES (30, 2231, 'Amatlán de los Reyes');
INSERT INTO `municipio` VALUES (30, 2232, 'Atoyac');
INSERT INTO `municipio` VALUES (30, 2233, 'Paso del Macho');
INSERT INTO `municipio` VALUES (30, 2234, 'Carrillo Puerto');
INSERT INTO `municipio` VALUES (30, 2235, 'Cotaxtla');
INSERT INTO `municipio` VALUES (30, 2236, 'Zongolica');
INSERT INTO `municipio` VALUES (30, 2237, 'Tehuipango');
INSERT INTO `municipio` VALUES (30, 2238, 'Mixtla de Altamirano');
INSERT INTO `municipio` VALUES (30, 2239, 'Los Reyes');
INSERT INTO `municipio` VALUES (30, 2240, 'Texhuacán');
INSERT INTO `municipio` VALUES (30, 2241, 'Tezonapa');
INSERT INTO `municipio` VALUES (30, 2242, 'Tierra Blanca');
INSERT INTO `municipio` VALUES (30, 2243, 'Tlalixcoyan');
INSERT INTO `municipio` VALUES (30, 2244, 'Ignacio de la Llave');
INSERT INTO `municipio` VALUES (30, 2245, 'Alvarado');
INSERT INTO `municipio` VALUES (30, 2246, 'Lerdo de Tejada');
INSERT INTO `municipio` VALUES (30, 2247, 'Tres Valles');
INSERT INTO `municipio` VALUES (30, 2248, 'Carlos A. Carrillo');
INSERT INTO `municipio` VALUES (30, 2249, 'Cosamaloapan de Carpio');
INSERT INTO `municipio` VALUES (30, 2250, 'Ixmatlahuacan');
INSERT INTO `municipio` VALUES (30, 2251, 'Acula');
INSERT INTO `municipio` VALUES (30, 2252, 'Amatitlán');
INSERT INTO `municipio` VALUES (30, 2253, 'Tlacotalpan');
INSERT INTO `municipio` VALUES (30, 2254, 'Saltabarranca');
INSERT INTO `municipio` VALUES (30, 2255, 'Otatitlán');
INSERT INTO `municipio` VALUES (30, 2256, 'Tlacojalpan');
INSERT INTO `municipio` VALUES (30, 2257, 'Tuxtilla');
INSERT INTO `municipio` VALUES (30, 2258, 'Chacaltianguis');
INSERT INTO `municipio` VALUES (30, 2259, 'José Azueta');
INSERT INTO `municipio` VALUES (30, 2260, 'Playa Vicente');
INSERT INTO `municipio` VALUES (30, 2261, 'Santiago Sochiapan');
INSERT INTO `municipio` VALUES (30, 2262, 'Isla');
INSERT INTO `municipio` VALUES (30, 2263, 'Juan Rodríguez Clara');
INSERT INTO `municipio` VALUES (30, 2264, 'San Andrés Tuxtla');
INSERT INTO `municipio` VALUES (30, 2265, 'Santiago Tuxtla');
INSERT INTO `municipio` VALUES (30, 2266, 'Angel R. Cabada');
INSERT INTO `municipio` VALUES (30, 2267, 'Hueyapan de Ocampo');
INSERT INTO `municipio` VALUES (30, 2268, 'Catemaco');
INSERT INTO `municipio` VALUES (30, 2269, 'Soteapan');
INSERT INTO `municipio` VALUES (30, 2270, 'Mecayapan');
INSERT INTO `municipio` VALUES (30, 2271, 'Tatahuicapan de Juárez');
INSERT INTO `municipio` VALUES (30, 2272, 'Pajapan');
INSERT INTO `municipio` VALUES (30, 2273, 'Chinameca');
INSERT INTO `municipio` VALUES (30, 2274, 'Acayucan');
INSERT INTO `municipio` VALUES (30, 2275, 'San Juan Evangelista');
INSERT INTO `municipio` VALUES (30, 2276, 'Sayula de Alemán');
INSERT INTO `municipio` VALUES (30, 2277, 'Oluta');
INSERT INTO `municipio` VALUES (30, 2278, 'Soconusco');
INSERT INTO `municipio` VALUES (30, 2279, 'Texistepec');
INSERT INTO `municipio` VALUES (30, 2280, 'Jáltipan');
INSERT INTO `municipio` VALUES (30, 2281, 'Zaragoza');
INSERT INTO `municipio` VALUES (30, 2282, 'Oteapan');
INSERT INTO `municipio` VALUES (30, 2283, 'Cosoleacaque');
INSERT INTO `municipio` VALUES (30, 2284, 'Nanchital de Lázaro Cárdenas del Río');
INSERT INTO `municipio` VALUES (30, 2285, 'Ixhuatlán del Sureste');
INSERT INTO `municipio` VALUES (30, 2286, 'Moloacán');
INSERT INTO `municipio` VALUES (30, 2287, 'Coatzacoalcos');
INSERT INTO `municipio` VALUES (30, 2288, 'Agua Dulce');
INSERT INTO `municipio` VALUES (30, 2289, 'Minatitlán');
INSERT INTO `municipio` VALUES (30, 2290, 'Hidalgotitlán');
INSERT INTO `municipio` VALUES (30, 2291, 'Jesús Carranza');
INSERT INTO `municipio` VALUES (30, 2292, 'Las Choapas');
INSERT INTO `municipio` VALUES (30, 2293, 'Uxpanapa');
INSERT INTO `municipio` VALUES (31, 2294, 'Mérida');
INSERT INTO `municipio` VALUES (31, 2295, 'Progreso');
INSERT INTO `municipio` VALUES (31, 2296, 'Chicxulub Pueblo');
INSERT INTO `municipio` VALUES (31, 2297, 'Ixil');
INSERT INTO `municipio` VALUES (31, 2298, 'Conkal');
INSERT INTO `municipio` VALUES (31, 2299, 'Yaxkukul');
INSERT INTO `municipio` VALUES (31, 2300, 'Hunucmá');
INSERT INTO `municipio` VALUES (31, 2301, 'Ucú');
INSERT INTO `municipio` VALUES (31, 2302, 'Kinchil');
INSERT INTO `municipio` VALUES (31, 2303, 'Tetiz');
INSERT INTO `municipio` VALUES (31, 2304, 'Celestún');
INSERT INTO `municipio` VALUES (31, 2305, 'Kanasín');
INSERT INTO `municipio` VALUES (31, 2306, 'Timucuy');
INSERT INTO `municipio` VALUES (31, 2307, 'Acanceh');
INSERT INTO `municipio` VALUES (31, 2308, 'Tixpéhual');
INSERT INTO `municipio` VALUES (31, 2309, 'Umán');
INSERT INTO `municipio` VALUES (31, 2310, 'Telchac Pueblo');
INSERT INTO `municipio` VALUES (31, 2311, 'Dzemul');
INSERT INTO `municipio` VALUES (31, 2312, 'Telchac Puerto');
INSERT INTO `municipio` VALUES (31, 2313, 'Cansahcab');
INSERT INTO `municipio` VALUES (31, 2314, 'Sinanché');
INSERT INTO `municipio` VALUES (31, 2315, 'Yobaín');
INSERT INTO `municipio` VALUES (31, 2316, 'Motul');
INSERT INTO `municipio` VALUES (31, 2317, 'Baca');
INSERT INTO `municipio` VALUES (31, 2318, 'Mocochá');
INSERT INTO `municipio` VALUES (31, 2319, 'Muxupip');
INSERT INTO `municipio` VALUES (31, 2320, 'Cacalchén');
INSERT INTO `municipio` VALUES (31, 2321, 'Bokobá');
INSERT INTO `municipio` VALUES (31, 2322, 'Tixkokob');
INSERT INTO `municipio` VALUES (31, 2323, 'Hoctún');
INSERT INTO `municipio` VALUES (31, 2324, 'Tahmek');
INSERT INTO `municipio` VALUES (31, 2325, 'Dzidzantún');
INSERT INTO `municipio` VALUES (31, 2326, 'Temax');
INSERT INTO `municipio` VALUES (31, 2327, 'Tekantó');
INSERT INTO `municipio` VALUES (31, 2328, 'Teya');
INSERT INTO `municipio` VALUES (31, 2329, 'Suma');
INSERT INTO `municipio` VALUES (31, 2330, 'Tepakán');
INSERT INTO `municipio` VALUES (31, 2331, 'Tekal de Venegas');
INSERT INTO `municipio` VALUES (31, 2332, 'Izamal');
INSERT INTO `municipio` VALUES (31, 2333, 'Hocabá');
INSERT INTO `municipio` VALUES (31, 2334, 'Xocchel');
INSERT INTO `municipio` VALUES (31, 2335, 'Seyé');
INSERT INTO `municipio` VALUES (31, 2336, 'Cuzamá');
INSERT INTO `municipio` VALUES (31, 2337, 'Homún');
INSERT INTO `municipio` VALUES (31, 2338, 'Sanahcat');
INSERT INTO `municipio` VALUES (31, 2339, 'Huhí');
INSERT INTO `municipio` VALUES (31, 2340, 'Dzilam González');
INSERT INTO `municipio` VALUES (31, 2341, 'Dzilam de Bravo');
INSERT INTO `municipio` VALUES (31, 2342, 'Panabá');
INSERT INTO `municipio` VALUES (31, 2343, 'San Felipe');
INSERT INTO `municipio` VALUES (31, 2344, 'Buctzotz');
INSERT INTO `municipio` VALUES (31, 2345, 'Sucilá');
INSERT INTO `municipio` VALUES (31, 2346, 'Cenotillo');
INSERT INTO `municipio` VALUES (31, 2347, 'Dzoncauich');
INSERT INTO `municipio` VALUES (31, 2348, 'Tunkás');
INSERT INTO `municipio` VALUES (31, 2349, 'Quintana Roo');
INSERT INTO `municipio` VALUES (31, 2350, 'Dzitás');
INSERT INTO `municipio` VALUES (31, 2351, 'Kantunil');
INSERT INTO `municipio` VALUES (31, 2352, 'Sudzal');
INSERT INTO `municipio` VALUES (31, 2353, 'Tekit');
INSERT INTO `municipio` VALUES (31, 2354, 'Sotuta');
INSERT INTO `municipio` VALUES (31, 2355, 'Tizimín');
INSERT INTO `municipio` VALUES (31, 2356, 'Río Lagartos');
INSERT INTO `municipio` VALUES (31, 2357, 'Espita');
INSERT INTO `municipio` VALUES (31, 2358, 'Temozón');
INSERT INTO `municipio` VALUES (31, 2359, 'Calotmul');
INSERT INTO `municipio` VALUES (31, 2360, 'Tinum');
INSERT INTO `municipio` VALUES (31, 2361, 'Chankom');
INSERT INTO `municipio` VALUES (31, 2362, 'Chichimilá');
INSERT INTO `municipio` VALUES (31, 2363, 'Tixcacalcupul');
INSERT INTO `municipio` VALUES (31, 2364, 'Kaua');
INSERT INTO `municipio` VALUES (31, 2365, 'Cuncunul');
INSERT INTO `municipio` VALUES (31, 2366, 'Tekom');
INSERT INTO `municipio` VALUES (31, 2367, 'Chemax');
INSERT INTO `municipio` VALUES (31, 2368, 'Valladolid');
INSERT INTO `municipio` VALUES (31, 2369, 'Uayma');
INSERT INTO `municipio` VALUES (31, 2370, 'Maxcanú');
INSERT INTO `municipio` VALUES (31, 2371, 'Samahil');
INSERT INTO `municipio` VALUES (31, 2372, 'Opichén');
INSERT INTO `municipio` VALUES (31, 2373, 'Chocholá');
INSERT INTO `municipio` VALUES (31, 2374, 'Kopomá');
INSERT INTO `municipio` VALUES (31, 2375, 'Tecoh');
INSERT INTO `municipio` VALUES (31, 2376, 'Abalá');
INSERT INTO `municipio` VALUES (31, 2377, 'Halachó');
INSERT INTO `municipio` VALUES (31, 2378, 'Muna');
INSERT INTO `municipio` VALUES (31, 2379, 'Sacalum');
INSERT INTO `municipio` VALUES (31, 2380, 'Maní');
INSERT INTO `municipio` VALUES (31, 2381, 'Dzán');
INSERT INTO `municipio` VALUES (31, 2382, 'Chapab');
INSERT INTO `municipio` VALUES (31, 2383, 'Ticul');
INSERT INTO `municipio` VALUES (31, 2384, 'Oxkutzcab');
INSERT INTO `municipio` VALUES (31, 2385, 'Santa Elena');
INSERT INTO `municipio` VALUES (31, 2386, 'Mama');
INSERT INTO `municipio` VALUES (31, 2387, 'Chumayel');
INSERT INTO `municipio` VALUES (31, 2388, 'Mayapán');
INSERT INTO `municipio` VALUES (31, 2389, 'Teabo');
INSERT INTO `municipio` VALUES (31, 2390, 'Cantamayec');
INSERT INTO `municipio` VALUES (31, 2391, 'Yaxcabá');
INSERT INTO `municipio` VALUES (31, 2392, 'Peto');
INSERT INTO `municipio` VALUES (31, 2393, 'Chikindzonot');
INSERT INTO `municipio` VALUES (31, 2394, 'Tahdziú');
INSERT INTO `municipio` VALUES (31, 2395, 'Tixmehuac');
INSERT INTO `municipio` VALUES (31, 2396, 'Chacsinkín');
INSERT INTO `municipio` VALUES (31, 2397, 'Tzucacab');
INSERT INTO `municipio` VALUES (31, 2398, 'Tekax');
INSERT INTO `municipio` VALUES (31, 2399, 'Akil');
INSERT INTO `municipio` VALUES (32, 2400, 'Zacatecas');
INSERT INTO `municipio` VALUES (32, 2401, 'Morelos');
INSERT INTO `municipio` VALUES (32, 2402, 'Vetagrande');
INSERT INTO `municipio` VALUES (32, 2403, 'Concepción del Oro');
INSERT INTO `municipio` VALUES (32, 2404, 'Melchor Ocampo');
INSERT INTO `municipio` VALUES (32, 2405, 'Mazapil');
INSERT INTO `municipio` VALUES (32, 2406, 'El Salvador');
INSERT INTO `municipio` VALUES (32, 2407, 'Juan Aldama');
INSERT INTO `municipio` VALUES (32, 2408, 'Miguel Auza');
INSERT INTO `municipio` VALUES (32, 2409, 'General Francisco R. Murguía');
INSERT INTO `municipio` VALUES (32, 2410, 'Río Grande');
INSERT INTO `municipio` VALUES (32, 2411, 'Villa de Cos');
INSERT INTO `municipio` VALUES (32, 2412, 'Cañitas de Felipe Pescador');
INSERT INTO `municipio` VALUES (32, 2413, 'Calera');
INSERT INTO `municipio` VALUES (32, 2414, 'Pánuco');
INSERT INTO `municipio` VALUES (32, 2415, 'General Enrique Estrada');
INSERT INTO `municipio` VALUES (32, 2416, 'Guadalupe');
INSERT INTO `municipio` VALUES (32, 2417, 'Trancoso');
INSERT INTO `municipio` VALUES (32, 2418, 'Genaro Codina');
INSERT INTO `municipio` VALUES (32, 2419, 'Cuauhtémoc');
INSERT INTO `municipio` VALUES (32, 2420, 'Ojocaliente');
INSERT INTO `municipio` VALUES (32, 2421, 'General Pánfilo Natera');
INSERT INTO `municipio` VALUES (32, 2422, 'Luis Moya');
INSERT INTO `municipio` VALUES (32, 2423, 'Loreto');
INSERT INTO `municipio` VALUES (32, 2424, 'Villa González Ortega');
INSERT INTO `municipio` VALUES (32, 2425, 'Noria de Ángeles');
INSERT INTO `municipio` VALUES (32, 2426, 'Villa García');
INSERT INTO `municipio` VALUES (32, 2427, 'Pinos');
INSERT INTO `municipio` VALUES (32, 2428, 'Villa Hidalgo');
INSERT INTO `municipio` VALUES (32, 2429, 'Fresnillo');
INSERT INTO `municipio` VALUES (32, 2430, 'Sombrerete');
INSERT INTO `municipio` VALUES (32, 2431, 'Sain Alto');
INSERT INTO `municipio` VALUES (32, 2432, 'Valparaíso');
INSERT INTO `municipio` VALUES (32, 2433, 'Chalchihuites');
INSERT INTO `municipio` VALUES (32, 2434, 'Jiménez del Teul');
INSERT INTO `municipio` VALUES (32, 2435, 'Jerez');
INSERT INTO `municipio` VALUES (32, 2436, 'Monte Escobedo');
INSERT INTO `municipio` VALUES (32, 2437, 'Susticacán');
INSERT INTO `municipio` VALUES (32, 2438, 'Villanueva');
INSERT INTO `municipio` VALUES (32, 2439, 'Tepetongo');
INSERT INTO `municipio` VALUES (32, 2440, 'El Plateado de Joaquín Amaro');
INSERT INTO `municipio` VALUES (32, 2441, 'Jalpa');
INSERT INTO `municipio` VALUES (32, 2442, 'Tabasco');
INSERT INTO `municipio` VALUES (32, 2443, 'Huanusco');
INSERT INTO `municipio` VALUES (32, 2444, 'Tlaltenango de Sánchez Román');
INSERT INTO `municipio` VALUES (32, 2445, 'Momax');
INSERT INTO `municipio` VALUES (32, 2446, 'Atolinga');
INSERT INTO `municipio` VALUES (32, 2447, 'Tepechitlán');
INSERT INTO `municipio` VALUES (32, 2448, 'Benito Juárez');
INSERT INTO `municipio` VALUES (32, 2449, 'Teúl de González Ortega');
INSERT INTO `municipio` VALUES (32, 2450, 'Santa María de la Paz');
INSERT INTO `municipio` VALUES (32, 2451, 'Trinidad García de la Cadena');
INSERT INTO `municipio` VALUES (32, 2452, 'Mezquital del Oro');
INSERT INTO `municipio` VALUES (32, 2453, 'Nochistlán de Mejía');
INSERT INTO `municipio` VALUES (32, 2454, 'Apulco');
INSERT INTO `municipio` VALUES (32, 2455, 'Apozol');
INSERT INTO `municipio` VALUES (32, 2456, 'Juchipila');
INSERT INTO `municipio` VALUES (32, 2457, 'Moyahua de Estrada');
INSERT INTO `municipio` VALUES (0, 0, '');

-- ----------------------------
-- Table structure for paciente
-- ----------------------------
DROP TABLE IF EXISTS `paciente`;
CREATE TABLE `paciente`  (
  `id_paciente` int(255) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ap_paterno` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ap_materno` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `fecha_nac` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sexo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tel_fijo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tel_cel` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tel_alter` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `RFC` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `calle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_ext` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_int` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_edo` int(255) NULL DEFAULT 0,
  `id_mun` int(255) NULL DEFAULT 0,
  `ciudad` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `colonia` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `datos_fact` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `tipo_sangre` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alergias` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `cronicas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `anotacion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  PRIMARY KEY (`id_paciente`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of paciente
-- ----------------------------
INSERT INTO `paciente` VALUES (1, 'Azucena', 'Reyes', 'Cuadras', '1992-09-09T06:00:00.000Z', '2', '8524556', '6684555255', '', 'reyes@miclicnica.com', '', 'Blvd. Chihuahua', '211', '0', 25, 0, 'Ahome', 'Inf. Mochicahui', 1, 'A+', 'Paracetamol', 'Gastritis', '');
INSERT INTO `paciente` VALUES (2, 'Lidia Aracely', 'Lau', 'Valenzuela', '1992-09-09T06:00:00.000Z', '2', '8524556', '6684555255', '', 'lachina@miclicnica.com', '', 'Blvd. Chihuahua', '211', '0', 0, NULL, 'Ahome', 'Inf. Mochicahui', 1, 'A+', 'Paracetamol', 'Gastritis', '');
INSERT INTO `paciente` VALUES (3, 'Adan', 'Crow', 'Bernal', '1973-05-31T06:00:00.000Z', '1', '6691123568', '6684555255', '', 'Adan@miclicnica.com', '', 'Blvd. Chihuahua', '211', '0', 0, NULL, 'Ahome', 'Inf. Mochicahui', 1, 'A+', 'Paracetamol', 'Gastritis', '');
INSERT INTO `paciente` VALUES (4, 'César', 'Gutierrez', 'Nájera', '1992-09-09T06:00:00.000Z', '1', '8524556', '6684555255', '', 'Cesar@gmail.com', '', 'Blvd. Chihuahua', '211', '0', 25, NULL, 'Ahome', 'Inf. Mochicahui', 1, 'A+', 'Paracetamol', 'Gastritis', '');
INSERT INTO `paciente` VALUES (5, 'Edgar', 'Rembao', 'Quintero', '1997-01-26T06:00:00.000Z', '2', '6681241183', '6681565656', '6681241183', 'edgarembao@hotmail.com', '', 'LLUVIA DE ORO', '2066', '', 25, 1878, 'LOS MOCHIS', 'JARDINES DEL BOSQUE', 1, 'ORH-', 'picadura de abejas', 'estar bien  guapo', 'le asustan las inyecciones ');

-- ----------------------------
-- Table structure for perfil_usuario
-- ----------------------------
DROP TABLE IF EXISTS `perfil_usuario`;
CREATE TABLE `perfil_usuario`  (
  `id_perfil` int(3) NOT NULL AUTO_INCREMENT,
  `nombre_perfil` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `inicio` int(1) NOT NULL DEFAULT 0,
  `citas` int(1) NOT NULL DEFAULT 0,
  `pacientes` int(1) NOT NULL DEFAULT 0,
  `medicos` int(1) NOT NULL DEFAULT 0,
  `consultorios` int(1) NOT NULL DEFAULT 0,
  `especialidades` int(1) NOT NULL DEFAULT 0,
  `configuraciones` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_perfil`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of perfil_usuario
-- ----------------------------
INSERT INTO `perfil_usuario` VALUES (1, NULL, 1, 1, 1, 1, 1, 1, 1);

-- ----------------------------
-- Table structure for prioridad_cita
-- ----------------------------
DROP TABLE IF EXISTS `prioridad_cita`;
CREATE TABLE `prioridad_cita`  (
  `id_prioridad` int(255) NOT NULL AUTO_INCREMENT,
  `prioridad` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_prioridad`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of prioridad_cita
-- ----------------------------
INSERT INTO `prioridad_cita` VALUES (1, 'Consulta');
INSERT INTO `prioridad_cita` VALUES (2, 'Emergencia');
INSERT INTO `prioridad_cita` VALUES (3, 'Post operatorio');
INSERT INTO `prioridad_cita` VALUES (4, 'Revisión');

-- ----------------------------
-- Table structure for tipo_cita
-- ----------------------------
DROP TABLE IF EXISTS `tipo_cita`;
CREATE TABLE `tipo_cita`  (
  `id_tipo` int(10) NULL DEFAULT NULL,
  `tipo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tipo_cita
-- ----------------------------
INSERT INTO `tipo_cita` VALUES (1, 'General');
INSERT INTO `tipo_cita` VALUES (0, 'Sin Asignar');
INSERT INTO `tipo_cita` VALUES (2, 'Extracción Molar');
INSERT INTO `tipo_cita` VALUES (3, 'Limpieza dental');
INSERT INTO `tipo_cita` VALUES (4, 'Irritacion capilar');
INSERT INTO `tipo_cita` VALUES (5, 'Limpieza de Oido');

-- ----------------------------
-- Table structure for tratamiento
-- ----------------------------
DROP TABLE IF EXISTS `tratamiento`;
CREATE TABLE `tratamiento`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_consulta` int(10) NULL DEFAULT NULL,
  `medicamento` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `docis` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `via` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `frecuencia` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `duracion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tratamiento
-- ----------------------------
INSERT INTO `tratamiento` VALUES (1, 1, 'paracetamol', '2 tabletas', 'oral', '8hrs', '1 semana');
INSERT INTO `tratamiento` VALUES (2, 1, 'ibuprufeno', '1 tableta', 'oral', '12 hrs', '2 semanas');
INSERT INTO `tratamiento` VALUES (3, 2, 'lomecan', '1 tableta', 'oral', '8hrs', '1 semana');
INSERT INTO `tratamiento` VALUES (4, 2, 'lupirionol', '1 tableta', 'oral', '12 hrs', '1 semana');
INSERT INTO `tratamiento` VALUES (5, 2, 'lupirinol', '1', 'oral', '12 hrs', '1 semana');
INSERT INTO `tratamiento` VALUES (6, 2, 'lupirinol', '1', 'oral', '12 hrs', '1 semana');
INSERT INTO `tratamiento` VALUES (7, 2, 'paracetamol', '2 tabletas', 'oral', '12 hrs', '1 semana');
INSERT INTO `tratamiento` VALUES (8, 2, 'lupirinol', '1', 'oral', '12 hrs', '1 semana');
INSERT INTO `tratamiento` VALUES (9, 2, 'paracetamol', '2 tabletas', 'oral', '12 hrs', '1 semana');
INSERT INTO `tratamiento` VALUES (10, 2, 'lupirinol', '1', 'oral', '12 hrs', '1 semana');
INSERT INTO `tratamiento` VALUES (11, 3, 'lupirinol', '1', 'oral', '12 hrs', '1 semana');
INSERT INTO `tratamiento` VALUES (12, 3, 'paracetamol', '2 tabletas', 'oral', '12 hrs', '1 semana');

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario`  (
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `asistente` int(1) NOT NULL DEFAULT 0,
  `medico` int(1) NOT NULL DEFAULT 0,
  `admin` int(1) NOT NULL DEFAULT 0,
  `id_personal` int(255) NULL DEFAULT NULL,
  `id_permisos` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Procedure structure for b
-- ----------------------------
DROP PROCEDURE IF EXISTS `b`;
delimiter ;;
CREATE PROCEDURE `b`()
BEGIN
	SET @con := 1;
		WHILE @con <= (select count(id) from edos_municipios) DO
		SET @estadoid := 0;
		SET @idm := 0;
			SELECT @estadoid := `estados_id`, @idm := `municipios_id` FROM edos_municipios WHERE id = @con;
			SELECT @nombrem := municipio FROM muns WHERE id = @idm;
			insert into municipio(id_estado,id_municipio,nombre_municipio) values(@estadoid,@idm,@nombrem);
			set @con = @con + 1;
		END WHILE;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
