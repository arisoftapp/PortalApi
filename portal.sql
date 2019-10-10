/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 100316
 Source Host           : localhost:3306
 Source Schema         : portal

 Target Server Type    : MySQL
 Target Server Version : 100316
 File Encoding         : 65001

 Date: 10/10/2019 11:56:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for almacen
-- ----------------------------
DROP TABLE IF EXISTS `almacen`;
CREATE TABLE `almacen`  (
  `id_almacen` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_almacen`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for articulos
-- ----------------------------
DROP TABLE IF EXISTS `articulos`;
CREATE TABLE `articulos`  (
  `id_articulo` int(10) NOT NULL AUTO_INCREMENT,
  `articulo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_articulo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for detalles_folio
-- ----------------------------
DROP TABLE IF EXISTS `detalles_folio`;
CREATE TABLE `detalles_folio`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_detalles` int(10) NULL DEFAULT NULL,
  `id_articulo` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for empresa
-- ----------------------------
DROP TABLE IF EXISTS `empresa`;
CREATE TABLE `empresa`  (
  `id_empresa` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_empresa`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for folios
-- ----------------------------
DROP TABLE IF EXISTS `folios`;
CREATE TABLE `folios`  (
  `folio_previo` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fecha_previo` date NULL DEFAULT NULL,
  `folio_oc` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `fecha_oc` date NULL DEFAULT NULL,
  `id_provedor` int(10) NULL DEFAULT NULL,
  `id_almacen` int(10) NULL DEFAULT NULL,
  `comentario` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_detalles` int(10) NULL DEFAULT NULL,
  `id_empresa` int(10) NULL DEFAULT NULL,
  `usuario` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `comentario_in` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `estatus` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`folio_previo`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for proveedor
-- ----------------------------
DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE `proveedor`  (
  `id_pro` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_pro`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_empresa` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
