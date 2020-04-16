/*
 Navicat Premium Data Transfer

 Source Server         : 黄启迪property
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : 172.16.11.94:3306
 Source Schema         : property

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 03/07/2019 18:35:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for access
-- ----------------------------
DROP TABLE IF EXISTS `access`;
CREATE TABLE `access`  (
  `Access_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `Access_carcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车牌号',
  `Access_startdate` datetime(0) NULL DEFAULT NULL COMMENT '入场时间',
  `Access_enddate` datetime(0) NULL DEFAULT NULL COMMENT '退场时间',
  `Access_cost` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用',
  `Access_other1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `Access_other2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段2',
  PRIMARY KEY (`Access_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车辆出入表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of access
-- ----------------------------
INSERT INTO `access` VALUES (1, '川ABV370', '2019-07-01 15:56:24', '2019-07-01 17:25:10', '10', NULL, NULL);
INSERT INTO `access` VALUES (2, '冀FD78M6', '2019-07-01 16:13:13', '2019-07-01 17:23:05', '10', NULL, NULL);
INSERT INTO `access` VALUES (3, '津C8GC65', '2019-07-01 16:13:16', '2019-07-01 17:25:04', '10', NULL, NULL);
INSERT INTO `access` VALUES (4, '冀D61Q31', '2019-07-01 16:14:33', NULL, '10', NULL, NULL);
INSERT INTO `access` VALUES (5, '渝B72E01', '2019-07-01 16:14:34', NULL, '10', NULL, NULL);
INSERT INTO `access` VALUES (6, '沪DW4G96', '2019-07-01 16:14:34', NULL, '10', NULL, NULL);
INSERT INTO `access` VALUES (7, '渝B27K4F', '2019-07-01 16:14:35', NULL, '10', NULL, NULL);
INSERT INTO `access` VALUES (8, '冀A7640B', '2019-07-01 16:14:35', NULL, '10', NULL, NULL);
INSERT INTO `access` VALUES (9, '津BI58V2', '2019-07-01 16:14:35', NULL, '10', NULL, NULL);
INSERT INTO `access` VALUES (10, '沪A26R4I', '2019-07-01 16:14:35', NULL, '10', NULL, NULL);
INSERT INTO `access` VALUES (11, '京A679VZ', '2019-07-01 16:14:35', NULL, '10', NULL, NULL);
INSERT INTO `access` VALUES (12, '沪BK80X2', '2019-07-01 16:14:36', NULL, '10', NULL, NULL);
INSERT INTO `access` VALUES (13, '冀C4ZA79', '2019-07-01 16:14:36', NULL, '10', NULL, NULL);
INSERT INTO `access` VALUES (14, '冀GJ05Q6', '2019-07-01 16:14:36', NULL, '10', NULL, NULL);
INSERT INTO `access` VALUES (15, '渝H08RH4', '2019-07-01 16:14:36', NULL, '10', NULL, NULL);
INSERT INTO `access` VALUES (16, '冀T8QT03', '2019-07-01 16:14:36', NULL, '10', NULL, NULL);
INSERT INTO `access` VALUES (17, '冀CA633O', '2019-07-01 16:14:36', NULL, '10', NULL, NULL);
INSERT INTO `access` VALUES (18, '津E1L0G4', '2019-07-01 16:14:36', NULL, '10', NULL, NULL);
INSERT INTO `access` VALUES (19, '冀F23S1Y', '2019-07-01 16:14:37', '2019-07-03 11:45:37', '10', NULL, NULL);
INSERT INTO `access` VALUES (20, '京EK0245', '2019-07-01 16:14:37', '2019-07-03 11:45:49', '10', NULL, NULL);
INSERT INTO `access` VALUES (21, '冀HU9V61', '2019-07-01 16:14:37', '2019-07-03 16:19:27', '10', NULL, NULL);

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `admin_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `admin_password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `admin_phonenumber` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `admin_post` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工岗位',
  `admin_power` int(12) NULL DEFAULT NULL COMMENT '管理员权限(0.超级管理员 1.客服 2.无权限)',
  `admin_salary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工薪资',
  `admin_date` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工加入公司时间',
  `admin_status` int(1) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '员工在职状态(0.在职 1.离职)',
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '物业人员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '张大千', '123', '18718824595', '维修人员', 2, '4000', '2019-06-04 ', 0);
INSERT INTO `admin` VALUES (2, '王小玉', '123', '17213383627', '客服', 1, '5000', '2019-06-04 ', 0);
INSERT INTO `admin` VALUES (3, '王大', '123456', '1530801708', '项目经理', 0, '20000', '2019-06-04 ', 1);
INSERT INTO `admin` VALUES (4, '王二', '123456', '1530801708', '项目副经理', 0, '20000', '2019-06-04 ', 0);
INSERT INTO `admin` VALUES (5, '王三', '123456', '1530801708', '保安队长', 0, '20000', '2019-06-04 ', 0);
INSERT INTO `admin` VALUES (6, 'aaa', '55bd8ebac92eb9f36bfe108cbdde75a1', '13555555555', NULL, 0, NULL, NULL, NULL);
INSERT INTO `admin` VALUES (7, '123', '123', '13111111111', NULL, 0, NULL, NULL, 0);
INSERT INTO `admin` VALUES (8, 'sdfghjkhgsdfkj', '123456', '15347895621', 'dfdfsd', 0, '111', '2019-07-03', 1);
INSERT INTO `admin` VALUES (9, '小黄', '7057449c40e3807419827bc62dbe26bc', '15678562465', 'mklmkl', 1, 'aaa', '2019-07-03', 0);
INSERT INTO `admin` VALUES (10, 'cong', '123456', '15325468452', '11', 0, '55555', '2019-07-03', 1);

-- ----------------------------
-- Table structure for appeal
-- ----------------------------
DROP TABLE IF EXISTS `appeal`;
CREATE TABLE `appeal`  (
  `appeal_id` int(11) NOT NULL AUTO_INCREMENT,
  `appeal_uid` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `appeal_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `appeal_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `appeal_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '提交内容',
  `appeal_state` int(11) NULL DEFAULT NULL COMMENT '状态(0.未处理，1.处理中，2.处理完成待评价，3.已评价)',
  `admin_id` int(11) NULL DEFAULT NULL COMMENT '客服',
  `appeal_eva` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '评价',
  PRIMARY KEY (`appeal_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '投诉评价' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of appeal
-- ----------------------------
INSERT INTO `appeal` VALUES (1, 1, '环境卫生', '2019-06-26 14:28:51', '垃圾清理不干净', 2, 2, '太好');
INSERT INTO `appeal` VALUES (2, 1, '太吵', '2019-06-26 14:28:51', '吵啊', 1, 2, '未评价');
INSERT INTO `appeal` VALUES (3, 1, '太吵', '2019-06-26 14:28:51', '吵啊', 0, 1, '已评价');
INSERT INTO `appeal` VALUES (4, 1, '环境卫生', '2019-06-26 14:28:51', '床架坏了', 0, 1, '未评价');
INSERT INTO `appeal` VALUES (5, 1, '环境卫生', '2019-06-26 14:28:51', '邻居晚上太吵', 0, 1, '未评价');
INSERT INTO `appeal` VALUES (6, 1, '邻居晚上太吵', '2019-06-26 14:28:51', '整啊', 0, 1, '未评价');
INSERT INTO `appeal` VALUES (7, 1, '邻居晚上太吵', '2019-06-26 14:28:51', '邻居晚上太吵', 0, 1, '未评价');
INSERT INTO `appeal` VALUES (8, 1, '邻居晚上太吵', '2019-07-01 09:20:15', '邻居晚上太吵', 3, 2, '狗匆匆');
INSERT INTO `appeal` VALUES (9, 1, '邻居晚上太吵', '2019-07-02 15:51:31', '邻居晚上太吵', 2, 2, '未评价');
INSERT INTO `appeal` VALUES (10, 1, '邻居晚上太吵', '2019-07-02 15:51:47', '邻居晚上太吵', 2, 2, '未评价');
INSERT INTO `appeal` VALUES (11, 1, '邻居晚上太吵', '2019-07-02 15:51:47', '邻居晚上太吵', 0, 1, '未评价');
INSERT INTO `appeal` VALUES (12, 1, '邻居晚上太吵', '2019-07-02 15:51:47', '邻居晚上太吵', 0, 1, '未评价');
INSERT INTO `appeal` VALUES (13, 1, '邻居晚上太吵', '2019-07-02 15:51:47', '邻居晚上太吵', 0, 1, '未评价');
INSERT INTO `appeal` VALUES (14, 1, '邻居晚上太吵', '2019-07-02 15:51:47', '邻居晚上太吵', 0, 1, '未评价');
INSERT INTO `appeal` VALUES (15, 1, '邻居晚上太吵', '2019-07-02 15:51:47', '邻居晚上太吵', 0, 1, '未评价');
INSERT INTO `appeal` VALUES (16, 1, '邻居晚上太吵', '2019-07-03 11:22:03', '个个环境规划金龟换酒', 0, 1, '未评价');

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `Car_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `Car_card` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车牌号',
  `Car_exhaust` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排量',
  `Car_pid` int(11) NULL DEFAULT NULL COMMENT '车位id（0代表无车位）',
  `Car_uid` int(11) NULL DEFAULT NULL COMMENT '业主id',
  `Car_startdate` datetime(0) NULL DEFAULT NULL COMMENT '无车位时，通行证开始时间',
  `Car_enddate` datetime(0) NULL DEFAULT NULL COMMENT '无车位时，通行证结束时间',
  `Car_other1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `Car_other2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段2',
  PRIMARY KEY (`Car_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车辆表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES (1, '川AR7125', NULL, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `car` VALUES (2, '川A12345', NULL, 3, 2, NULL, NULL, NULL, NULL);
INSERT INTO `car` VALUES (3, '川AT5126', NULL, 2, 3, NULL, NULL, NULL, NULL);
INSERT INTO `car` VALUES (4, '川CT5621', NULL, 5, 9, NULL, NULL, NULL, NULL);
INSERT INTO `car` VALUES (5, '川AY52016', NULL, 3, 6, NULL, NULL, NULL, NULL);
INSERT INTO `car` VALUES (6, '川AF9560', NULL, NULL, 3, '2019-07-01 00:00:00', '2020-08-01 00:00:00', NULL, NULL);
INSERT INTO `car` VALUES (7, '川BA12345', NULL, 7, 8, NULL, NULL, NULL, NULL);
INSERT INTO `car` VALUES (8, '川AB88888', NULL, 8, 9, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for cost
-- ----------------------------
DROP TABLE IF EXISTS `cost`;
CREATE TABLE `cost`  (
  `cost_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `cost_water` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '水费表',
  `cost_gas` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '燃气费',
  `cost_power` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电费',
  `cost_air` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '空调费',
  `cost_other` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其他费用',
  `cost_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `cost_state` int(10) NULL DEFAULT NULL COMMENT '缴费状态(0.未缴费，1.已缴费)',
  `cost_uid` int(100) NULL DEFAULT NULL COMMENT '业主id',
  PRIMARY KEY (`cost_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '缴费表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cost
-- ----------------------------
INSERT INTO `cost` VALUES (1, '11', '22', '20', '100', '100', '2019-05-01 09:07:42', 0, 2);
INSERT INTO `cost` VALUES (2, '86', '69', '76', '66', '35', '2019-06-01 09:07:42', 1, 2);
INSERT INTO `cost` VALUES (4, '109', '123', '334', '241', '323', '2019-10-01 09:07:42', 1, 1);
INSERT INTO `cost` VALUES (5, '25', '22', '20', '30', '40', '2019-12-01 09:07:42', 1, 1);
INSERT INTO `cost` VALUES (6, '223', '254', '212', '331', '355', '2019-02-01 09:07:42', 1, 1);
INSERT INTO `cost` VALUES (7, '343', '252', '100', '250', '180', '2019-03-01 09:07:42', 1, 1);
INSERT INTO `cost` VALUES (8, '222', '341', '252', '200', '3332', '2019-08-01 00:00:00', 0, 7);
INSERT INTO `cost` VALUES (9, '50000', '50000', '50000', '50000', '50000', '2019-07-01 00:00:00', 1, 7);

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg`  (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `msg_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT ' 标题',
  `msg_partstarttime` datetime(0) NULL DEFAULT NULL COMMENT '活动发起时间',
  `msg_partendtime` datetime(0) NULL DEFAULT NULL COMMENT '活动结束时间',
  `msg_createtime` date NULL DEFAULT NULL COMMENT '创建时间',
  `msg_partstate` int(255) NULL DEFAULT NULL COMMENT '发布状态(0.进行中1.已过期)',
  `msg_admin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布人',
  `msg_class` int(255) NOT NULL COMMENT '分类(0.公司1.小区2.公告3.社区活动）',
  `msg_other1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文本内容',
  `msg_other2` int(11) NULL DEFAULT NULL COMMENT '预留字段2',
  `msg_other3` varchar(0) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段3',
  PRIMARY KEY (`msg_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of msg
-- ----------------------------
INSERT INTO `msg` VALUES (2, 'hhhhhh骨灰盒', '2019-07-03 13:37:50', '2019-07-03 13:37:43', '2019-07-03', 2, '小黄', 5, 'sdfsdfsfsdf', NULL, NULL);
INSERT INTO `msg` VALUES (3, 'dfsdfsdf', '2019-07-03 10:50:27', '2019-07-03 00:00:00', '2019-07-03', 0, '小黄', 5, 'sdfsdfsdff', NULL, NULL);
INSERT INTO `msg` VALUES (4, 'ghjfghjfghj', '2019-07-03 10:50:37', '2019-07-03 10:50:39', '2019-07-03', 3, '小黄', 2, 'fghfghfgh', NULL, NULL);
INSERT INTO `msg` VALUES (5, '水电费水电费水电费', '2019-07-03 13:37:54', '2019-07-03 13:38:04', '2019-07-03', 2, '小黄', 5, '环境', NULL, NULL);
INSERT INTO `msg` VALUES (6, '电饭锅电饭锅电饭锅电饭锅', '2019-07-03 13:37:58', '2019-07-03 13:38:01', '2019-07-03', 1, '小黄', 5, '电饭锅电饭锅电饭锅水电费规定', NULL, NULL);
INSERT INTO `msg` VALUES (7, '11', NULL, NULL, '2019-07-03', NULL, '小黄', 2, '351', NULL, NULL);
INSERT INTO `msg` VALUES (8, '12', '2019-07-11 00:00:00', '2019-07-26 00:00:00', '2019-07-03', NULL, '小黄', 3, '123', NULL, NULL);
INSERT INTO `msg` VALUES (9, 'yjfghfgh', NULL, NULL, '2019-07-03', NULL, '小黄', 5, 'fghdfgdfghdfg', NULL, NULL);
INSERT INTO `msg` VALUES (10, 'hjkhjkhjkhjk', '2019-07-03 18:03:08', '2019-07-03 18:03:09', '2019-07-03', NULL, '小黄', 3, 'hjkhjkhjkjk', NULL, NULL);

-- ----------------------------
-- Table structure for msgcount
-- ----------------------------
DROP TABLE IF EXISTS `msgcount`;
CREATE TABLE `msgcount`  (
  `msgcount_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `msgcount_pid` int(11) NULL DEFAULT NULL COMMENT '社区活动表',
  `msgcount_uid` int(11) NULL DEFAULT NULL COMMENT '用户表',
  `msgcount_readtime` datetime(0) NULL DEFAULT NULL COMMENT '阅读时间',
  PRIMARY KEY (`msgcount_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '浏览表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of msgcount
-- ----------------------------
INSERT INTO `msgcount` VALUES (1, 4, 2, '2019-07-03 15:13:29');
INSERT INTO `msgcount` VALUES (2, 7, 2, '2019-07-03 18:24:46');
INSERT INTO `msgcount` VALUES (3, 10, 2, '2019-07-03 18:24:52');

-- ----------------------------
-- Table structure for park
-- ----------------------------
DROP TABLE IF EXISTS `park`;
CREATE TABLE `park`  (
  `Park_id` int(11) NOT NULL COMMENT '主键id',
  `Park_cid` int(11) NULL DEFAULT NULL COMMENT '车辆id',
  `Park_uid` int(11) NULL DEFAULT NULL COMMENT '私有车位业主id（0表示此车位非私有）',
  `Park_local` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车位位置(A-1-03)',
  `Park_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '价格',
  `Park_saledate` datetime(6) NULL DEFAULT NULL COMMENT '出售时间',
  PRIMARY KEY (`Park_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of park
-- ----------------------------
INSERT INTO `park` VALUES (1, 1, 2, '13栋地下2层', '130000', NULL);
INSERT INTO `park` VALUES (2, 3, 8, '13栋地下2层', '120000', '2019-07-02 22:00:23.000000');
INSERT INTO `park` VALUES (3, 2, 6, '13栋地下2层', '125000', '2019-07-02 21:37:30.000000');
INSERT INTO `park` VALUES (4, 5, 3, '13栋地下2层', '126000', '2019-07-02 21:46:09.000000');
INSERT INTO `park` VALUES (5, 3, 7, '11栋地下1层', '180000', '2019-07-02 21:28:56.000000');
INSERT INTO `park` VALUES (6, NULL, 5, '18栋地下2层', '120000', NULL);
INSERT INTO `park` VALUES (7, 7, 8, '9栋地下1层', '180000', '2019-07-02 22:08:30.000000');
INSERT INTO `park` VALUES (8, 8, 9, '9栋地下1层', '160000', '2019-07-02 22:39:32.000000');

-- ----------------------------
-- Table structure for pay
-- ----------------------------
DROP TABLE IF EXISTS `pay`;
CREATE TABLE `pay`  (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_costid` int(255) NULL DEFAULT NULL COMMENT '缴费表id',
  `pay_date` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `pay_way` int(11) NULL DEFAULT NULL COMMENT '支付方式（0.线下，1.线上）',
  PRIMARY KEY (`pay_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '支付信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pay
-- ----------------------------
INSERT INTO `pay` VALUES (1, 1, '2019-06-13 23:00:01', 1);
INSERT INTO `pay` VALUES (2, 2, '2019-07-01 09:07:42', 1);
INSERT INTO `pay` VALUES (10, 2, '2019-06-28 12:48:36', 0);
INSERT INTO `pay` VALUES (11, 7, '2019-06-28 15:06:53', 0);
INSERT INTO `pay` VALUES (12, 8, '2019-06-28 21:26:50', 0);
INSERT INTO `pay` VALUES (14, 5, '2019-07-01 09:07:42', 1);
INSERT INTO `pay` VALUES (15, 6, '2019-07-01 09:07:42', 1);
INSERT INTO `pay` VALUES (16, 4, '2019-07-01 09:07:42', 1);
INSERT INTO `pay` VALUES (17, 6, '2019-07-01 09:07:42', 1);
INSERT INTO `pay` VALUES (18, 5, '2019-07-01 09:07:42', 1);
INSERT INTO `pay` VALUES (19, 4, '2019-07-01 09:07:42', 1);
INSERT INTO `pay` VALUES (20, 5, '2019-07-01 09:10:45', 1);
INSERT INTO `pay` VALUES (21, 7, '2019-07-01 10:22:07', 1);
INSERT INTO `pay` VALUES (22, 7, '2019-07-02 15:36:57', 1);
INSERT INTO `pay` VALUES (23, 6, '2019-07-02 15:38:19', 1);
INSERT INTO `pay` VALUES (24, 5, '2019-07-02 15:39:15', 1);
INSERT INTO `pay` VALUES (25, 6, '2019-07-02 16:05:33', 1);
INSERT INTO `pay` VALUES (26, 9, '2019-07-02 17:27:01', 0);
INSERT INTO `pay` VALUES (27, 5, '2019-07-02 18:58:38', 1);
INSERT INTO `pay` VALUES (28, 4, '2019-07-03 11:23:04', 1);
INSERT INTO `pay` VALUES (29, 7, '2019-07-03 14:44:34', 1);
INSERT INTO `pay` VALUES (30, 6, '2019-07-03 14:47:18', 1);
INSERT INTO `pay` VALUES (31, 5, '2019-07-03 18:26:39', 1);
INSERT INTO `pay` VALUES (32, 5, '2019-07-03 18:27:17', 0);
INSERT INTO `pay` VALUES (33, 4, '2019-07-03 18:27:58', 1);

-- ----------------------------
-- Table structure for repair
-- ----------------------------
DROP TABLE IF EXISTS `repair`;
CREATE TABLE `repair`  (
  `repair_id` int(11) NOT NULL AUTO_INCREMENT,
  `repair_uid` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `repair_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `repair_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `repair_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '提交内容',
  `repair_state` int(11) NULL DEFAULT NULL COMMENT '状态(0.未处理，1.处理中，2.处理完成待评价，3.已评价)',
  `repair_eva` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '评价',
  `admin_id` int(11) NULL DEFAULT NULL COMMENT '客服/员工id',
  PRIMARY KEY (`repair_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '报修表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of repair
-- ----------------------------
INSERT INTO `repair` VALUES (1, 1, '漏水了', '2019-06-07 19:42:27', '水管爆裂', 3, '狗从', 1);
INSERT INTO `repair` VALUES (3, 1, '裤子坏了', '2019-06-27 13:46:13', '床坏了', 1, '未评价', 1);
INSERT INTO `repair` VALUES (4, 1, '裤子坏了', '2019-06-27 13:47:27', '床坏了', 1, '未评价', 1);
INSERT INTO `repair` VALUES (5, 1, '回国', '2019-06-27 16:19:42', '床坏了', 3, '哈哈哈哈', 1);
INSERT INTO `repair` VALUES (6, 1, '回国', '2019-06-27 16:19:52', '床坏了', 1, '未评价', 1);
INSERT INTO `repair` VALUES (7, 1, '床坏了', '2019-06-27 16:23:09', '床坏了', 1, '未评价', 1);
INSERT INTO `repair` VALUES (9, 2, '水管爆裂', '2019-06-28 10:39:53', '水管爆裂,好.............', 0, '未评价', 1);
INSERT INTO `repair` VALUES (10, 2, '水管爆裂', '2019-06-28 14:48:50', '水管爆裂', 0, '未评价', 1);
INSERT INTO `repair` VALUES (11, 2, '水管爆裂', '2019-07-01 09:17:28', '水管爆裂', 0, '未评价', 1);
INSERT INTO `repair` VALUES (12, 2, '水管爆裂', '2019-07-01 09:19:31', '爆裂', 0, '未评价', 0);
INSERT INTO `repair` VALUES (13, 2, '水管爆裂', '2019-07-02 15:35:59', 'ai', 2, '未评价', 1);

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply`  (
  `reply_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `reply_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回复类容',
  `reply_date` datetime(0) NULL DEFAULT NULL COMMENT '回复时间',
  `reply_appid` int(11) NULL DEFAULT NULL COMMENT '投诉表(报修表)id',
  `reply_person` int(25) NULL DEFAULT NULL COMMENT '添加该回复人员(0.用户 1.客服)',
  `reply_type` int(11) NULL DEFAULT NULL COMMENT '回复类型（0.报修表，1.投诉表）',
  PRIMARY KEY (`reply_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '回复表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES (1, '赶快处理', '2019-06-24 19:22:53', 1, 0, 0);
INSERT INTO `reply` VALUES (2, '正在处理', '2019-06-24 19:25:28', 1, 1, 0);
INSERT INTO `reply` VALUES (3, '处理完成', '2019-06-26 21:48:10', 1, 1, 0);
INSERT INTO `reply` VALUES (4, '正在处理', '2019-06-26 21:50:02', 1, 1, 1);
INSERT INTO `reply` VALUES (5, '处理完成', '2019-06-26 21:50:23', 1, 1, 1);
INSERT INTO `reply` VALUES (6, '处理中', '2019-06-27 17:00:39', 3, 1, 0);
INSERT INTO `reply` VALUES (8, '不好意思，请稍等', '2019-06-28 15:20:58', 10, 0, 0);
INSERT INTO `reply` VALUES (9, '正在处理', '2019-06-28 21:22:59', 7, 1, 0);
INSERT INTO `reply` VALUES (10, '我们已经和他人沟通了', '2019-06-28 21:24:29', 2, 1, 1);
INSERT INTO `reply` VALUES (11, '马上处理', '2019-07-01 11:37:22', 12, 1, 0);
INSERT INTO `reply` VALUES (15, '快点\n', '2019-07-01 15:33:01', 7, 0, 0);
INSERT INTO `reply` VALUES (16, '处理中', '2019-07-01 15:33:55', 7, 1, 0);
INSERT INTO `reply` VALUES (20, '快处理', '2019-07-02 10:05:16', 2, 0, 1);
INSERT INTO `reply` VALUES (21, '处理', '2019-07-02 10:55:14', 1, 0, 1);
INSERT INTO `reply` VALUES (22, '快', '2019-07-02 11:19:56', 1, 0, 0);
INSERT INTO `reply` VALUES (23, '你们不行哦\n', '2019-07-02 11:28:04', 8, 0, 1);
INSERT INTO `reply` VALUES (24, '我们会尽快处理', '2019-07-02 11:28:21', 8, 1, 1);
INSERT INTO `reply` VALUES (25, '完成处理', '2019-07-02 11:28:47', 8, 1, 1);
INSERT INTO `reply` VALUES (26, 'caonima', '2019-07-03 10:28:13', 6, 1, 0);
INSERT INTO `reply` VALUES (27, 'dgdfgdf dfsdf', '2019-07-03 10:28:37', 10, 1, 1);
INSERT INTO `reply` VALUES (28, 'ghjksdfghjkasdfhjkl', '2019-07-03 10:51:02', 5, 1, 0);
INSERT INTO `reply` VALUES (29, 'xcvxcvbxcv', '2019-07-03 10:51:25', 9, 1, 1);
INSERT INTO `reply` VALUES (30, '的非官方个风格和', '2019-07-03 11:21:55', 15, 0, 1);
INSERT INTO `reply` VALUES (31, '快速反应小女生R吧', '2019-07-03 12:26:56', 16, 0, 1);
INSERT INTO `reply` VALUES (32, '131', '2019-07-03 16:18:56', 13, 1, 0);
INSERT INTO `reply` VALUES (33, 'lpkolpklp', '2019-07-03 18:25:20', 7, 0, 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `user_password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `user_phonenumber` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `user_dress` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业主地址',
  `user_size` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间大小',
  `user_type` int(11) NULL DEFAULT NULL COMMENT '状态(0.未删除，1.已删除)',
  `user_auth` int(255) NULL DEFAULT NULL COMMENT '权限（1.超级管理员2.管理员3.用户）',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '业主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '张静', 'd029c3068728d50e26fc0e2ba92ead92', '15357634211', 'A-02-1606', '2000平', 0, 3);
INSERT INTO `user` VALUES (2, '汪富贵', 'f64c6ad430031f1f61afdfd47d3a79d9', '15357634212', 'B-01-2101', '200平', 0, 3);
INSERT INTO `user` VALUES (3, '何碧', '8399df25ca283b21ffe2165b68cc7cff', '14275639822', 'B-03-2603', '1300平', 0, 3);
INSERT INTO `user` VALUES (4, '钟深', '1d1a86e69394eb22252237ed57aaef9b', '14275639823', 'C-02-2501', '2000平', 0, 3);
INSERT INTO `user` VALUES (5, '蒋聪聪', '0d5cd980dd9f17df53180908f8998962', '18718623602', 'A-03-2601', '10000平', 0, 3);
INSERT INTO `user` VALUES (6, '陈晓', 'aeab5f7983283db3172e0723e9138c04', '15657634233', 'C-03-2111', '400平', 0, 3);
INSERT INTO `user` VALUES (7, '陈发林', 'c5ce77f95bb43b24334bd5ecdbc27ac9', '15983019221', 'B-03-1003', '10000平', 0, 3);
INSERT INTO `user` VALUES (8, '刘东', 'fb4044420b88c8f7ffdc126fd631e678', '17357634234', 'A-02-1006', '3000平', 0, 3);
INSERT INTO `user` VALUES (9, '钱龙', '15b382950130c344f41769211de010a2', '12357634513', 'B-07-2006', '3000平', 0, 3);

-- ----------------------------
-- Procedure structure for access
-- ----------------------------
DROP PROCEDURE IF EXISTS `access`;
delimiter ;;
CREATE PROCEDURE `access`(in page INT(11),in limits INT(11),out rows int(11))
BEGIN
     set @rs=0;
     set @sqls=CONCAT('select * from access order by Access_startdate  desc ',' limit ',limits*(page-1),',',limits);
     set @r=CONCAT('select count(*) into @rs from access');
     PREPARE sql1 from @sqls;
     EXECUTE sql1;
     PREPARE sql2 from @r;
     EXECUTE sql2;
     set rows=@rs;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for admin
-- ----------------------------
DROP PROCEDURE IF EXISTS `admin`;
delimiter ;;
CREATE PROCEDURE `admin`(IN adminStatus int(11),in page INT(11),in limits INT(11),out rows int(11))
BEGIN
     set @rs=0;
     set @sqls=CONCAT(' SELECT * FROM admin WHERE admin_status =', 
    adminStatus,' limit ',limits*(page-1),',',limits);
     set @r=CONCAT('select count(*) into @rs from admin WHERE admin_status =', adminStatus);
     PREPARE sql1 from @sqls;
     EXECUTE sql1;
     PREPARE sql2 from @r;
     EXECUTE sql2;
     set rows=@rs;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for cars
-- ----------------------------
DROP PROCEDURE IF EXISTS `cars`;
delimiter ;;
CREATE PROCEDURE `cars`(in page INT(11),in limits INT(11),out rows int(11))
BEGIN
     set @rs=0;
     set @sqls=CONCAT('select car.Car_id,car.Car_card,car.Car_pid,u.user_name Car_other1,Car_startdate,Car_enddate,u.user_phonenumber ,car.Car_other2  
		 from car car left join user u
     on car.Car_uid = u.user_id order by car.Car_id desc ',' limit ',limits*(page-1),',',limits);
     set @r=CONCAT('select count(*) into @rs from access');
     PREPARE sql1 from @sqls;
     EXECUTE sql1;
     PREPARE sql2 from @r;
     EXECUTE sql2;
     set rows=@rs;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for costccfy
-- ----------------------------
DROP PROCEDURE IF EXISTS `costccfy`;
delimiter ;;
CREATE PROCEDURE `costccfy`(in userName varchar(255),in userPhonenumber varchar(255),in page int,in limits int,out count int)
BEGIN
set @rows=0;
    set @sqls=CONCAT("select * FROM cost,user where cost_uid=user_id  order by cost_date desc  limit ",limits*(page-1),',',limits);
     set @c=CONCAT("select count(*) into @rows FROM cost,user where cost_uid=user_id ");
     if userName is not NULL THEN
     set @sqls=CONCAT("select*from cost,user where cost_uid=user_id and user_name=",userName,"  order by cost_date desc limit ",limits*(page-1),',',limits);
     set @c=CONCAT("select count(*) into @rows from cost,user where cost_uid=user_id and user_name=",userName );
     ELSEIF userPhonenumber is not NULL THEN
      set @sqls=CONCAT("select*from cost,user where cost_uid=user_id and user_phonenumber=",userPhonenumber,"  order by cost_date desc limit ",limits*(page-1),',',limits);
      set @c=CONCAT("select count(*) into @rows from cost,user where cost_uid=user_id and user_phonenumber=",userPhonenumber );
     END IF;
    PREPARE s from @sqls;
    EXECUTE s;
    PREPARE s1 from @c;
    EXECUTE s1;
    set count=@rows;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for costfy
-- ----------------------------
DROP PROCEDURE IF EXISTS `costfy`;
delimiter ;;
CREATE PROCEDURE `costfy`(in userName varchar(255),in userPhonenumber varchar(255),in page int,in limits int,out count int)
BEGIN
set @rows=0;
    set @sqls=CONCAT("select * FROM cost,user where cost_uid=user_id and cost_state=0 order by cost_date desc  limit ",limits*(page-1),',',limits);
     set @c=CONCAT("select count(*) into @rows FROM cost,user where cost_uid=user_id and cost_state=0");
     if userName is not NULL THEN
     set @sqls=CONCAT("select*from cost,user where cost_uid=user_id and user_name=",userName," and cost_state=0 order by cost_date desc limit ",limits*(page-1),',',limits);
     set @c=CONCAT("select count(*) into @rows from cost,user where cost_uid=user_id and user_name=",userName," and cost_state=0" );
     ELSEIF userPhonenumber is not NULL THEN
      set @sqls=CONCAT("select*from cost,user where cost_uid=user_id and user_phonenumber=",userPhonenumber," and cost_state=0 order by cost_date desc limit ",limits*(page-1),',',limits);
      set @c=CONCAT("select count(*) into @rows from cost,user where cost_uid=user_id and user_phonenumber=",userPhonenumber," and cost_state=0" );
     END IF;
    PREPARE s from @sqls;
    EXECUTE s;
    PREPARE s1 from @c;
    EXECUTE s1;
    set count=@rows;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for cuser
-- ----------------------------
DROP PROCEDURE IF EXISTS `cuser`;
delimiter ;;
CREATE PROCEDURE `cuser`(in uid VARCHAR(255),in page INT(11),in limits INT(11),out rowis int)
BEGIN
	 set @rs=0;
     set @sqls=CONCAT('select*from user where user_id = ',uid,' limit ',limits*(page-1),',',limits);
     set @r=CONCAT('select count(*) into @rs from user where user_id = ',uid);
     PREPARE sql1 from @sqls;
     EXECUTE sql1;
     PREPARE sql2 from @r;
     EXECUTE sql2;
     set rowis=@rs;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for fy
-- ----------------------------
DROP PROCEDURE IF EXISTS `fy`;
delimiter ;;
CREATE PROCEDURE `fy`(in tablename VARCHAR(255),in page INT(11),in limits INT(11),out rows int(11))
BEGIN
     set @rs=0;
     set @sqls=CONCAT('select * from ',tablename,' order by ',tablename,'_','date desc ',' limit ',limits*(page-1),',',limits);
     set @r=CONCAT('select count(*) into @rs from ',tablename);
     PREPARE sql1 from @sqls;
     EXECUTE sql1;
     PREPARE sql2 from @r;
     EXECUTE sql2;
     set rows=@rs;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for msg
-- ----------------------------
DROP PROCEDURE IF EXISTS `msg`;
delimiter ;;
CREATE PROCEDURE `msg`(IN msgClass int(11),in page INT(11),in limits INT(11),out rows int(11))
BEGIN
     set @rs=0;
     set @sqls=CONCAT(' SELECT * FROM msg left JOIN msgcount on msg.msg_id = msgcount.msgcount_pid left JOIN `user` u on msgcount.msgcount_uid = u.user_id WHERE msg.msg_class =', 
    msgClass,' order by msg.msg_createtime desc,msg.msg_id desc',' limit ',limits*(page-1),',',limits);
     set @r=CONCAT('select count(*) into @rs from msg left JOIN msgcount on msg.msg_id = msgcount.msgcount_pid left JOIN `user` u on msgcount.msgcount_uid = u.user_id WHERE msg.msg_class =', msgClass);
     PREPARE sql1 from @sqls;
     EXECUTE sql1;
     PREPARE sql2 from @r;
     EXECUTE sql2;
     set rows=@rs;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for msgs
-- ----------------------------
DROP PROCEDURE IF EXISTS `msgs`;
delimiter ;;
CREATE PROCEDURE `msgs`(in page INT(11),in limits INT(11),out rowis int)
BEGIN
	 set @rs=0;
     set @sqls=CONCAT('select*from  msg limit ',limits*(page-1),',',limits);
     set @r=CONCAT('select count(*) into @rs from msg ');
     PREPARE sql1 from @sqls;
     EXECUTE sql1;
     PREPARE sql2 from @r;
     EXECUTE sql2;
     set rowis=@rs;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for myAccountpay
-- ----------------------------
DROP PROCEDURE IF EXISTS `myAccountpay`;
delimiter ;;
CREATE PROCEDURE `myAccountpay`(in uid VARCHAR(255),in page INT(11),in limits INT(11),out rows int(11))
BEGIN
     set @rs=0;
     set @sqls=CONCAT('select*from pay,cost,user where cost_id=pay_costid  and cost_uid=user_id and user_id=',uid,' limit ',limits*(page-1),',',limits);
     set @r=CONCAT('select count(*) into @rs from pay,cost,user where cost_id=pay_costid  and cost_uid=user_id and user_id=',uid);
     PREPARE sql1 from @sqls;
     EXECUTE sql1;
     PREPARE sql2 from @r;
     EXECUTE sql2;
     set rows=@rs;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for noappeal
-- ----------------------------
DROP PROCEDURE IF EXISTS `noappeal`;
delimiter ;;
CREATE PROCEDURE `noappeal`(in uid VARCHAR(255),in page INT(11),in limits INT(11),out rowis int)
BEGIN
	 set @rs=0;
     set @sqls=CONCAT('select*from  appeal where appeal_uid=',uid,' and  appeal_eva=未评价 and appeal_state between 0 and 1 order by  appeal_id DESC limit ',limits*(page-1),',',limits);
     set @r=CONCAT('select count(*) into @rs from appeal where appeal_uid=',uid,' and  appeal_eva=未评价 and appeal_state between 0 and 1 ');
     PREPARE sql1 from @sqls;
     EXECUTE sql1;
     PREPARE sql2 from @r;
     EXECUTE sql2;
     set rowis=@rs;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for norepair
-- ----------------------------
DROP PROCEDURE IF EXISTS `norepair`;
delimiter ;;
CREATE PROCEDURE `norepair`(in uid VARCHAR(255),in page INT(11),in limits INT(11),out rowis int)
BEGIN
	 set @rs=0;
     set @sqls=CONCAT('select*from  repair_uid=',uid,' and  repair_eva=未评价 and repair_state between 0 and 1 order by  repair_id DESC limit ',limits*(page-1),',',limits);
     set @r=CONCAT('select count(*) into @rs from repair where repair_uid=',uid,' and  repair_eva=未评价 and repair_state between 0 and 1 ');
     PREPARE sql1 from @sqls;
     EXECUTE sql1;
     PREPARE sql2 from @r;
     EXECUTE sql2;
     set rowis=@rs;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for onpays
-- ----------------------------
DROP PROCEDURE IF EXISTS `onpays`;
delimiter ;;
CREATE PROCEDURE `onpays`(in uid VARCHAR(255),in page INT(11),in limits INT(11),out rowis int)
BEGIN
	 set @rs=0;
     set @sqls=CONCAT('select*from  cost where cost_uid=',uid ,' and cost_state=0 order by  cost_id DESC limit ',limits*(page-1),',',limits);
     set @r=CONCAT('select count(*) into @rs from cost where cost_uid=',uid ,' and cost_state=0 ');
     PREPARE sql1 from @sqls;
     EXECUTE sql1;
     PREPARE sql2 from @r;
     EXECUTE sql2;
     set rowis=@rs;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pastappeal
-- ----------------------------
DROP PROCEDURE IF EXISTS `pastappeal`;
delimiter ;;
CREATE PROCEDURE `pastappeal`(in uid VARCHAR(255),in page INT(11),in limits INT(11),out rowis int)
BEGIN
	 set @rs=0;
     set @sqls=CONCAT('select*from  appeal where appeal_uid=',uid,' and appeal_state between 2 and 3 order by  appeal_id DESC limit ',limits*(page-1),',',limits);
     set @r=CONCAT('select count(*) into @rs from appeal where appeal_uid=',uid,' and appeal_state between 2 and 3 ');
     PREPARE sql1 from @sqls;
     EXECUTE sql1;
     PREPARE sql2 from @r;
     EXECUTE sql2;
     set rowis=@rs;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pastrepair
-- ----------------------------
DROP PROCEDURE IF EXISTS `pastrepair`;
delimiter ;;
CREATE PROCEDURE `pastrepair`(in uid VARCHAR(255),in page INT(11),in limits INT(11),out rowis int)
BEGIN
	 set @rs=0;
     set @sqls=CONCAT('select*from  repair where repair_uid=',uid,' and repair_state between 2 and 3 order by  repair_id DESC limit ',limits*(page-1),',',limits);
     set @r=CONCAT('select count(*) into @rs from repair where repair_uid=',uid,' and repair_state between 2 and 3 ');
     PREPARE sql1 from @sqls;
     EXECUTE sql1;
     PREPARE sql2 from @r;
     EXECUTE sql2;
     set rowis=@rs;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for payfy
-- ----------------------------
DROP PROCEDURE IF EXISTS `payfy`;
delimiter ;;
CREATE PROCEDURE `payfy`(IN `userName` varchar(255),IN `userPhonenumber` varchar(255),IN `page` int,IN `limits` int,OUT `count` int)
BEGIN
	set @rows=0;
    set @sqls=CONCAT("select * from pay,cost,user where pay_costid=cost_id and cost_uid=user_id order by pay_date desc  limit ",limits*(page-1),',',limits);
     set @c=CONCAT("select count(*) into @rows FROM pay,cost,user where pay_costid=cost_id and cost_uid=user_id");
     if userName is not NULL THEN
     set @sqls=CONCAT("select*from pay,cost,user where pay_costid=cost_id and cost_uid=user_id and user_name=",userName," order by pay_date desc limit ",limits*(page-1),',',limits);
     set @c=CONCAT("select count(*) into @rows from pay,cost,user where pay_costid=cost_id and cost_uid=user_id and user_name=",userName);
     ELSEIF userPhonenumber is not NULL THEN
      set @sqls=CONCAT("select*from pay,cost,user where pay_costid=cost_id and cost_uid=user_id and user_phonenumber=",userPhonenumber," order by pay_date desc limit ",limits*(page-1),',',limits);
      set @c=CONCAT("select count(*) into @rows from pay,cost,user where pay_costid=cost_id and cost_uid=user_id and user_phonenumber=",userPhonenumber );
     END IF;
    PREPARE s from @sqls;
    EXECUTE s;
    PREPARE s1 from @c;
    EXECUTE s1;
    set count=@rows;


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for userfy
-- ----------------------------
DROP PROCEDURE IF EXISTS `userfy`;
delimiter ;;
CREATE PROCEDURE `userfy`(IN `userName` varchar(255),IN `page` int,IN `limits` int,OUT `count` int)
BEGIN
	  set @rows=0;
    set @sqls=CONCAT("select * FROM user where user_type=0 and user_auth=3 limit ",limits*(page-1),',',limits);
     set @c=CONCAT("select count(*) into @rows FROM user where user_type=0 and user_auth=3");
     if userName is not NULL THEN
     set @sqls=CONCAT("select*from user where user_name=",userName," and user_type=0 and user_auth=3 limit ",limits*(page-1),',',limits);
     set @c=CONCAT("select count(*) into @rows from user where user_name=",userName," and user_type=0 and user_auth=3" );
     END IF;
    PREPARE s from @sqls;
    EXECUTE s;
    PREPARE s1 from @c;
    EXECUTE s1;
    set count=@rows;

END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
