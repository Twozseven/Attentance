/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : 127.0.0.1:3306
 Source Schema         : attentancesystem

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 09/08/2019 10:27:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attentance
-- ----------------------------
DROP TABLE IF EXISTS `attentance`;
CREATE TABLE `attentance`  (
  `id` int(50) NOT NULL COMMENT '每次出勤的编号',
  `firsttime` time NULL DEFAULT NULL COMMENT '第一次打卡时间',
  `lasttime` time NULL DEFAULT NULL COMMENT '最后一次打卡时间',
  `user_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工Id',
  `operation` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作员编码',
  `operator_id` int(11) NULL DEFAULT NULL COMMENT '操作员id',
  `working_time` double NULL DEFAULT NULL COMMENT '工作时长',
  `date` date NULL DEFAULT NULL COMMENT '打卡日期',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `attendance_record_ibfk_1`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '打卡出勤记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of attentance
-- ----------------------------
INSERT INTO `attentance` VALUES (1, '18:32:00', '18:32:00', 'JX00001', 'System', 1, 0, '2011-03-01');
INSERT INTO `attentance` VALUES (2, '10:02:00', '16:26:00', 'JX00001', 'System', 1, 6.4, '2012-03-01');
INSERT INTO `attentance` VALUES (3, '09:57:00', '09:57:00', 'JX00001', 'System', 1, 0, '2015-03-01');
INSERT INTO `attentance` VALUES (4, '16:23:00', '16:23:00', 'JX00001', 'System', 1, 0, '2022-03-01');
INSERT INTO `attentance` VALUES (5, '17:20:00', '17:20:00', 'JX00001', 'System', 1, 0, '2025-03-01');
INSERT INTO `attentance` VALUES (6, '14:48:00', '14:48:00', 'JX00002', 'System', 1, 0, '2001-03-01');
INSERT INTO `attentance` VALUES (7, '14:23:00', '14:23:00', 'JX00002', 'System', 1, 0, '2011-03-01');
INSERT INTO `attentance` VALUES (8, '09:48:00', '09:48:00', 'JX00002', 'System', 1, 0, '2016-03-01');
INSERT INTO `attentance` VALUES (9, '12:47:00', '12:47:00', 'JX00002', 'System', 1, 0, '2019-03-01');
INSERT INTO `attentance` VALUES (10, '12:49:00', '15:34:00', 'JX00002', 'System', 1, 2.75, '2020-03-01');
INSERT INTO `attentance` VALUES (11, '12:54:00', '12:54:00', 'JX00002', 'System', 1, 0, '2021-03-01');
INSERT INTO `attentance` VALUES (12, '09:35:00', '09:35:00', 'JX00002', 'System', 1, 0, '2022-03-01');
INSERT INTO `attentance` VALUES (13, '10:03:00', '15:41:00', 'JX00002', 'System', 1, 5.63, '2025-03-01');
INSERT INTO `attentance` VALUES (14, '12:46:00', '12:46:00', 'JX00002', 'System', 1, 0, '2029-03-01');
INSERT INTO `attentance` VALUES (15, '16:01:00', '16:01:00', 'JX00003', 'System', 1, 0, '2011-03-01');
INSERT INTO `attentance` VALUES (16, '12:41:00', '12:41:00', 'JX00003', 'System', 1, 0, '2012-03-01');
INSERT INTO `attentance` VALUES (17, '12:15:00', '12:15:00', 'JX00003', 'System', 1, 0, '2013-03-01');
INSERT INTO `attentance` VALUES (18, '12:48:00', '12:48:00', 'JX00003', 'System', 1, 0, '2022-03-01');
INSERT INTO `attentance` VALUES (19, '12:55:00', '12:55:00', 'JX00003', 'System', 1, 0, '2028-03-01');
INSERT INTO `attentance` VALUES (20, '09:18:00', '09:18:00', 'JX00004', 'System', 1, 0, '2001-03-01');
INSERT INTO `attentance` VALUES (21, '20:33:00', '20:43:00', 'JX00004', 'System', 1, 0.17, '2002-03-01');
INSERT INTO `attentance` VALUES (22, '08:48:00', '08:48:00', 'JX00004', 'System', 1, 0, '2004-03-01');
INSERT INTO `attentance` VALUES (23, '15:05:00', '22:00:00', 'JX00004', 'System', 1, 6.92, '2005-03-01');
INSERT INTO `attentance` VALUES (24, '19:04:00', '19:04:00', 'JX00004', 'System', 1, 0, '2006-03-01');
INSERT INTO `attentance` VALUES (25, '10:08:00', '12:48:00', 'JX00004', 'System', 1, 2.67, '2008-03-01');
INSERT INTO `attentance` VALUES (26, '09:17:00', '09:17:00', 'JX00004', 'System', 1, 0, '2011-03-01');
INSERT INTO `attentance` VALUES (27, '16:09:00', '21:01:00', 'JX00004', 'System', 1, 4.87, '2015-03-01');
INSERT INTO `attentance` VALUES (28, '09:51:00', '09:51:00', 'JX00004', 'System', 1, 0, '2016-03-01');
INSERT INTO `attentance` VALUES (29, '19:13:00', '19:13:00', 'JX00004', 'System', 1, 0, '2019-03-01');
INSERT INTO `attentance` VALUES (30, '10:12:00', '21:32:00', 'JX00004', 'System', 1, 11.33, '2024-03-01');
INSERT INTO `attentance` VALUES (31, '19:20:00', '19:20:00', 'JX00004', 'System', 1, 0, '2028-03-01');
INSERT INTO `attentance` VALUES (32, '19:34:00', '19:34:00', 'JX00004', 'System', 1, 0, '2029-03-01');
INSERT INTO `attentance` VALUES (33, '09:16:00', '09:16:00', 'JX00030', 'System', 1, 0, '2028-02-01');
INSERT INTO `attentance` VALUES (34, '09:18:00', '18:50:00', 'JX00030', 'System', 1, 9.53, '2001-03-01');
INSERT INTO `attentance` VALUES (35, '09:13:00', '09:13:00', 'JX00030', 'System', 1, 0, '2005-03-01');
INSERT INTO `attentance` VALUES (36, '11:13:00', '11:13:00', 'JX00030', 'System', 1, 0, '2007-03-01');
INSERT INTO `attentance` VALUES (37, '13:01:00', '13:01:00', 'JX00030', 'System', 1, 0, '2008-03-01');
INSERT INTO `attentance` VALUES (38, '19:17:00', '19:17:00', 'JX00030', 'System', 1, 0, '2011-03-01');
INSERT INTO `attentance` VALUES (39, '12:07:00', '12:07:00', 'JX00030', 'System', 1, 0, '2012-03-01');
INSERT INTO `attentance` VALUES (40, '09:11:00', '09:11:00', 'JX00030', 'System', 1, 0, '2013-03-01');
INSERT INTO `attentance` VALUES (41, '18:13:00', '18:13:00', 'JX00030', 'System', 1, 0, '2014-03-01');
INSERT INTO `attentance` VALUES (42, '09:26:00', '09:26:00', 'JX00030', 'System', 1, 0, '2015-03-01');
INSERT INTO `attentance` VALUES (43, '14:59:00', '19:44:00', 'JX00030', 'System', 1, 4.75, '2018-03-01');
INSERT INTO `attentance` VALUES (44, '19:11:00', '19:11:00', 'JX00030', 'System', 1, 0, '2019-03-01');
INSERT INTO `attentance` VALUES (45, '09:16:00', '19:21:00', 'JX00030', 'System', 1, 10.08, '2020-03-01');
INSERT INTO `attentance` VALUES (46, '18:29:00', '20:56:00', 'JX00030', 'System', 1, 2.45, '2022-03-01');
INSERT INTO `attentance` VALUES (47, '14:42:00', '14:42:00', 'JX00030', 'System', 1, 0, '2025-03-01');
INSERT INTO `attentance` VALUES (48, '12:48:00', '12:48:00', 'JX00030', 'System', 1, 0, '2026-03-01');
INSERT INTO `attentance` VALUES (49, '09:12:00', '19:34:00', 'JX00030', 'System', 1, 10.37, '2027-03-01');
INSERT INTO `attentance` VALUES (50, '09:42:00', '18:48:00', 'JX00005', 'System', 1, 9.1, '2028-02-01');
INSERT INTO `attentance` VALUES (51, '09:49:00', '18:53:00', 'JX00005', 'System', 1, 9.07, '2005-03-01');
INSERT INTO `attentance` VALUES (52, '18:37:00', '18:37:00', 'JX00005', 'System', 1, 0, '2006-03-01');
INSERT INTO `attentance` VALUES (53, '09:55:00', '20:24:00', 'JX00005', 'System', 1, 10.48, '2007-03-01');
INSERT INTO `attentance` VALUES (54, '09:43:00', '12:46:00', 'JX00005', 'System', 1, 3.05, '2008-03-01');
INSERT INTO `attentance` VALUES (55, '16:33:00', '16:33:00', 'JX00005', 'System', 1, 0, '2009-03-01');
INSERT INTO `attentance` VALUES (56, '09:26:00', '20:19:00', 'JX00005', 'System', 1, 10.88, '2011-03-01');
INSERT INTO `attentance` VALUES (57, '09:20:00', '19:20:00', 'JX00005', 'System', 1, 10, '2012-03-01');
INSERT INTO `attentance` VALUES (58, '09:12:00', '19:48:00', 'JX00005', 'System', 1, 10.6, '2013-03-01');
INSERT INTO `attentance` VALUES (59, '09:22:00', '18:49:00', 'JX00005', 'System', 1, 9.45, '2014-03-01');
INSERT INTO `attentance` VALUES (60, '09:17:00', '20:36:00', 'JX00005', 'System', 1, 11.32, '2015-03-01');
INSERT INTO `attentance` VALUES (61, '09:53:00', '09:53:00', 'JX00005', 'System', 1, 0, '2016-03-01');
INSERT INTO `attentance` VALUES (62, '09:49:00', '20:22:00', 'JX00005', 'System', 1, 10.55, '2018-03-01');
INSERT INTO `attentance` VALUES (63, '09:07:00', '19:44:00', 'JX00005', 'System', 1, 10.62, '2019-03-01');
INSERT INTO `attentance` VALUES (64, '09:07:00', '19:49:00', 'JX00005', 'System', 1, 10.7, '2020-03-01');
INSERT INTO `attentance` VALUES (65, '09:20:00', '19:43:00', 'JX00005', 'System', 1, 10.38, '2021-03-01');
INSERT INTO `attentance` VALUES (66, '09:15:00', '20:56:00', 'JX00005', 'System', 1, 11.68, '2022-03-01');
INSERT INTO `attentance` VALUES (67, '19:09:00', '19:09:00', 'JX00005', 'System', 1, 0, '2025-03-01');
INSERT INTO `attentance` VALUES (68, '09:21:00', '20:46:00', 'JX00005', 'System', 1, 11.42, '2026-03-01');
INSERT INTO `attentance` VALUES (69, '09:36:00', '19:22:00', 'JX00005', 'System', 1, 9.77, '2027-03-01');
INSERT INTO `attentance` VALUES (70, '09:17:00', '19:22:00', 'JX00005', 'System', 1, 10.08, '2028-03-01');
INSERT INTO `attentance` VALUES (71, '09:21:00', '18:45:00', 'JX00005', 'System', 1, 9.4, '2029-03-01');
INSERT INTO `attentance` VALUES (72, '09:19:00', '18:46:00', 'JX00046', 'System', 1, 9.45, '2028-02-01');
INSERT INTO `attentance` VALUES (73, '10:38:00', '19:14:00', 'JX00046', 'System', 1, 8.6, '2001-03-01');
INSERT INTO `attentance` VALUES (74, '09:23:00', '18:41:00', 'JX00046', 'System', 1, 9.3, '2004-03-01');
INSERT INTO `attentance` VALUES (75, '09:23:00', '20:13:00', 'JX00046', 'System', 1, 10.83, '2005-03-01');
INSERT INTO `attentance` VALUES (76, '09:21:00', '19:52:00', 'JX00046', 'System', 1, 10.52, '2006-03-01');
INSERT INTO `attentance` VALUES (77, '09:23:00', '19:56:00', 'JX00046', 'System', 1, 10.55, '2007-03-01');
INSERT INTO `attentance` VALUES (78, '09:16:00', '12:46:00', 'JX00046', 'System', 1, 3.5, '2008-03-01');
INSERT INTO `attentance` VALUES (79, '09:22:00', '20:25:00', 'JX00046', 'System', 1, 11.05, '2011-03-01');
INSERT INTO `attentance` VALUES (80, '14:19:00', '18:47:00', 'JX00046', 'System', 1, 4.47, '2012-03-01');
INSERT INTO `attentance` VALUES (81, '09:12:00', '19:39:00', 'JX00046', 'System', 1, 10.45, '2013-03-01');
INSERT INTO `attentance` VALUES (82, '09:15:00', '18:49:00', 'JX00046', 'System', 1, 9.57, '2014-03-01');
INSERT INTO `attentance` VALUES (83, '09:13:00', '20:36:00', 'JX00046', 'System', 1, 11.38, '2015-03-01');
INSERT INTO `attentance` VALUES (84, '09:16:00', '20:22:00', 'JX00046', 'System', 1, 11.1, '2018-03-01');
INSERT INTO `attentance` VALUES (85, '09:23:00', '19:43:00', 'JX00046', 'System', 1, 10.33, '2019-03-01');
INSERT INTO `attentance` VALUES (86, '09:25:00', '19:49:00', 'JX00046', 'System', 1, 10.4, '2020-03-01');
INSERT INTO `attentance` VALUES (87, '09:23:00', '19:43:00', 'JX00046', 'System', 1, 10.33, '2021-03-01');
INSERT INTO `attentance` VALUES (88, '13:42:00', '19:56:00', 'JX00046', 'System', 1, 6.23, '2022-03-01');
INSERT INTO `attentance` VALUES (89, '09:22:00', '15:49:00', 'JX00046', 'System', 1, 6.45, '2025-03-01');
INSERT INTO `attentance` VALUES (90, '09:56:00', '20:41:00', 'JX00046', 'System', 1, 10.75, '2026-03-01');
INSERT INTO `attentance` VALUES (91, '11:24:00', '18:50:00', 'JX00046', 'System', 1, 7.43, '2027-03-01');
INSERT INTO `attentance` VALUES (92, '09:01:00', '19:57:00', 'JX00046', 'System', 1, 10.93, '2028-03-01');
INSERT INTO `attentance` VALUES (93, '09:00:00', '19:12:00', 'JX00046', 'System', 1, 10.2, '2029-03-01');
INSERT INTO `attentance` VALUES (94, '18:57:00', '18:57:00', 'JX00046', 'System', 1, 0, '2030-03-01');
INSERT INTO `attentance` VALUES (95, '10:45:00', '18:35:00', 'JX00100', 'System', 1, 7.83, '2011-03-01');
INSERT INTO `attentance` VALUES (96, '09:26:00', '18:34:00', 'JX00100', 'System', 1, 9.13, '2012-03-01');
INSERT INTO `attentance` VALUES (97, '08:59:00', '18:36:00', 'JX00100', 'System', 1, 9.62, '2013-03-01');
INSERT INTO `attentance` VALUES (98, '09:18:00', '18:35:00', 'JX00100', 'System', 1, 9.28, '2014-03-01');
INSERT INTO `attentance` VALUES (99, '09:11:00', '18:54:00', 'JX00100', 'System', 1, 9.72, '2015-03-01');
INSERT INTO `attentance` VALUES (100, '13:37:00', '18:35:00', 'JX00100', 'System', 1, 4.97, '2018-03-01');
INSERT INTO `attentance` VALUES (101, '09:12:00', '18:32:00', 'JX00100', 'System', 1, 9.33, '2019-03-01');
INSERT INTO `attentance` VALUES (102, '09:11:00', '18:32:00', 'JX00100', 'System', 1, 9.35, '2020-03-01');
INSERT INTO `attentance` VALUES (103, '08:57:00', '18:32:00', 'JX00100', 'System', 1, 9.58, '2021-03-01');
INSERT INTO `attentance` VALUES (104, '09:12:00', '18:34:00', 'JX00100', 'System', 1, 9.37, '2022-03-01');
INSERT INTO `attentance` VALUES (105, '09:01:00', '13:39:00', 'JX00100', 'System', 1, 4.63, '2025-03-01');
INSERT INTO `attentance` VALUES (106, '09:18:00', '18:36:00', 'JX00100', 'System', 1, 9.3, '2026-03-01');
INSERT INTO `attentance` VALUES (107, '09:22:00', '18:37:00', 'JX00100', 'System', 1, 9.25, '2027-03-01');
INSERT INTO `attentance` VALUES (108, '09:01:00', '14:27:00', 'JX00100', 'System', 1, 5.43, '2028-03-01');
INSERT INTO `attentance` VALUES (109, '09:03:00', '16:40:00', 'JX00100', 'System', 1, 7.62, '2029-03-01');
INSERT INTO `attentance` VALUES (110, '12:51:00', '12:51:00', 'JX00120', 'System', 1, 0, '2026-03-01');
INSERT INTO `attentance` VALUES (111, '09:05:00', '18:34:00', 'JX00007', 'System', 1, 9.48, '2028-02-01');
INSERT INTO `attentance` VALUES (112, '09:00:00', '18:59:00', 'JX00007', 'System', 1, 9.98, '2001-03-01');
INSERT INTO `attentance` VALUES (113, '08:56:00', '18:35:00', 'JX00007', 'System', 1, 9.65, '2004-03-01');
INSERT INTO `attentance` VALUES (114, '09:03:00', '18:37:00', 'JX00007', 'System', 1, 9.57, '2005-03-01');
INSERT INTO `attentance` VALUES (115, '09:04:00', '18:53:00', 'JX00007', 'System', 1, 9.82, '2006-03-01');
INSERT INTO `attentance` VALUES (116, '08:59:00', '18:44:00', 'JX00007', 'System', 1, 9.75, '2007-03-01');
INSERT INTO `attentance` VALUES (117, '09:02:00', '18:42:00', 'JX00007', 'System', 1, 9.67, '2008-03-01');
INSERT INTO `attentance` VALUES (118, '09:00:00', '18:32:00', 'JX00007', 'System', 1, 9.53, '2011-03-01');
INSERT INTO `attentance` VALUES (119, '09:06:00', '18:35:00', 'JX00007', 'System', 1, 9.48, '2012-03-01');
INSERT INTO `attentance` VALUES (120, '09:01:00', '18:44:00', 'JX00007', 'System', 1, 9.72, '2013-03-01');
INSERT INTO `attentance` VALUES (121, '09:06:00', '18:34:00', 'JX00007', 'System', 1, 9.47, '2014-03-01');
INSERT INTO `attentance` VALUES (122, '09:00:00', '18:34:00', 'JX00007', 'System', 1, 9.57, '2015-03-01');
INSERT INTO `attentance` VALUES (123, '09:12:00', '18:34:00', 'JX00007', 'System', 1, 9.37, '2018-03-01');
INSERT INTO `attentance` VALUES (124, '09:06:00', '18:36:00', 'JX00007', 'System', 1, 9.5, '2019-03-01');
INSERT INTO `attentance` VALUES (125, '09:01:00', '18:37:00', 'JX00007', 'System', 1, 9.6, '2020-03-01');
INSERT INTO `attentance` VALUES (126, '08:58:00', '18:35:00', 'JX00007', 'System', 1, 9.62, '2021-03-01');
INSERT INTO `attentance` VALUES (127, '09:02:00', '20:52:00', 'JX00007', 'System', 1, 11.83, '2022-03-01');
INSERT INTO `attentance` VALUES (128, '08:55:00', '19:40:00', 'JX00007', 'System', 1, 10.75, '2025-03-01');
INSERT INTO `attentance` VALUES (129, '08:58:00', '20:04:00', 'JX00007', 'System', 1, 11.1, '2026-03-01');
INSERT INTO `attentance` VALUES (130, '09:07:00', '19:00:00', 'JX00007', 'System', 1, 9.88, '2027-03-01');
INSERT INTO `attentance` VALUES (131, '09:06:00', '18:40:00', 'JX00007', 'System', 1, 9.57, '2028-03-01');
INSERT INTO `attentance` VALUES (132, '09:01:00', '18:45:00', 'JX00007', 'System', 1, 9.73, '2029-03-01');
INSERT INTO `attentance` VALUES (133, '09:16:00', '19:04:00', 'JX00052', 'System', 1, 9.8, '2028-02-01');
INSERT INTO `attentance` VALUES (134, '09:18:00', '09:18:00', 'JX00052', 'System', 1, 0, '2001-03-01');
INSERT INTO `attentance` VALUES (135, '09:13:00', '19:04:00', 'JX00052', 'System', 1, 9.85, '2004-03-01');
INSERT INTO `attentance` VALUES (136, '09:13:00', '19:30:00', 'JX00052', 'System', 1, 10.28, '2005-03-01');
INSERT INTO `attentance` VALUES (137, '09:20:00', '19:11:00', 'JX00052', 'System', 1, 9.85, '2006-03-01');
INSERT INTO `attentance` VALUES (138, '09:13:00', '09:13:00', 'JX00052', 'System', 1, 0, '2007-03-01');
INSERT INTO `attentance` VALUES (139, '01:05:00', '04:28:00', 'JX00052', 'System', 1, 3.38, '2008-03-01');
INSERT INTO `attentance` VALUES (140, '09:08:00', '19:17:00', 'JX00052', 'System', 1, 10.15, '2011-03-01');
INSERT INTO `attentance` VALUES (141, '09:22:00', '18:51:00', 'JX00052', 'System', 1, 9.48, '2012-03-01');
INSERT INTO `attentance` VALUES (142, '09:11:00', '19:48:00', 'JX00052', 'System', 1, 10.62, '2013-03-01');
INSERT INTO `attentance` VALUES (143, '09:15:00', '19:25:00', 'JX00052', 'System', 1, 10.17, '2014-03-01');
INSERT INTO `attentance` VALUES (144, '09:26:00', '19:32:00', 'JX00052', 'System', 1, 10.1, '2015-03-01');
INSERT INTO `attentance` VALUES (145, '09:52:00', '20:25:00', 'JX00052', 'System', 1, 10.55, '2016-03-01');
INSERT INTO `attentance` VALUES (146, '09:15:00', '20:01:00', 'JX00052', 'System', 1, 10.77, '2018-03-01');
INSERT INTO `attentance` VALUES (147, '09:20:00', '20:29:00', 'JX00052', 'System', 1, 11.15, '2019-03-01');
INSERT INTO `attentance` VALUES (148, '09:16:00', '19:20:00', 'JX00052', 'System', 1, 10.07, '2020-03-01');
INSERT INTO `attentance` VALUES (149, '09:12:00', '18:48:00', 'JX00052', 'System', 1, 9.6, '2021-03-01');
INSERT INTO `attentance` VALUES (150, '09:20:00', '19:23:00', 'JX00052', 'System', 1, 10.05, '2028-03-01');
INSERT INTO `attentance` VALUES (151, '09:15:00', '18:47:00', 'JX00052', 'System', 1, 9.53, '2029-03-01');
INSERT INTO `attentance` VALUES (152, '09:34:00', '17:50:00', 'JX00052', 'System', 1, 8.27, '2030-03-01');
INSERT INTO `attentance` VALUES (153, '09:16:00', '19:05:00', 'JX00065', 'System', 1, 9.82, '2028-02-01');
INSERT INTO `attentance` VALUES (154, '09:16:00', '21:13:00', 'JX00065', 'System', 1, 11.95, '2001-03-01');
INSERT INTO `attentance` VALUES (155, '11:16:00', '11:16:00', 'JX00065', 'System', 1, 0, '2002-03-01');
INSERT INTO `attentance` VALUES (156, '09:14:00', '19:04:00', 'JX00065', 'System', 1, 9.83, '2004-03-01');
INSERT INTO `attentance` VALUES (157, '09:13:00', '19:28:00', 'JX00065', 'System', 1, 10.25, '2005-03-01');
INSERT INTO `attentance` VALUES (158, '08:31:00', '19:11:00', 'JX00065', 'System', 1, 10.67, '2006-03-01');
INSERT INTO `attentance` VALUES (159, '09:13:00', '09:13:00', 'JX00065', 'System', 1, 0, '2007-03-01');
INSERT INTO `attentance` VALUES (160, '01:03:00', '09:29:00', 'JX00065', 'System', 1, 8.43, '2008-03-01');
INSERT INTO `attentance` VALUES (161, '01:31:00', '01:31:00', 'JX00065', 'System', 1, 0, '2009-03-01');
INSERT INTO `attentance` VALUES (162, '09:07:00', '19:15:00', 'JX00065', 'System', 1, 10.13, '2011-03-01');
INSERT INTO `attentance` VALUES (163, '09:15:00', '12:32:00', 'JX00065', 'System', 1, 3.28, '2012-03-01');
INSERT INTO `attentance` VALUES (164, '09:11:00', '19:46:00', 'JX00065', 'System', 1, 10.58, '2013-03-01');
INSERT INTO `attentance` VALUES (165, '09:15:00', '19:25:00', 'JX00065', 'System', 1, 10.17, '2014-03-01');
INSERT INTO `attentance` VALUES (166, '09:26:00', '19:33:00', 'JX00065', 'System', 1, 10.12, '2015-03-01');
INSERT INTO `attentance` VALUES (167, '16:54:00', '16:54:00', 'JX00065', 'System', 1, 0, '2016-03-01');
INSERT INTO `attentance` VALUES (168, '09:15:00', '20:01:00', 'JX00065', 'System', 1, 10.77, '2018-03-01');
INSERT INTO `attentance` VALUES (169, '09:21:00', '20:32:00', 'JX00065', 'System', 1, 11.18, '2019-03-01');
INSERT INTO `attentance` VALUES (170, '09:16:00', '19:21:00', 'JX00065', 'System', 1, 10.08, '2020-03-01');
INSERT INTO `attentance` VALUES (171, '09:12:00', '20:06:00', 'JX00065', 'System', 1, 10.9, '2021-03-01');
INSERT INTO `attentance` VALUES (172, '09:13:00', '19:38:00', 'JX00065', 'System', 1, 10.42, '2022-03-01');
INSERT INTO `attentance` VALUES (173, '11:38:00', '11:38:00', 'JX00065', 'System', 1, 0, '2024-03-01');
INSERT INTO `attentance` VALUES (174, '09:20:00', '19:43:00', 'JX00065', 'System', 1, 10.38, '2025-03-01');
INSERT INTO `attentance` VALUES (175, '09:10:00', '20:43:00', 'JX00065', 'System', 1, 11.55, '2026-03-01');
INSERT INTO `attentance` VALUES (176, '09:12:00', '19:34:00', 'JX00065', 'System', 1, 10.37, '2027-03-01');
INSERT INTO `attentance` VALUES (177, '09:20:00', '19:26:00', 'JX00065', 'System', 1, 10.1, '2028-03-01');
INSERT INTO `attentance` VALUES (178, '09:15:00', '18:48:00', 'JX00065', 'System', 1, 9.55, '2029-03-01');
INSERT INTO `attentance` VALUES (179, '09:14:00', '18:36:00', 'JX00081', 'System', 1, 9.37, '2028-02-01');
INSERT INTO `attentance` VALUES (180, '09:20:00', '19:06:00', 'JX00081', 'System', 1, 9.77, '2001-03-01');
INSERT INTO `attentance` VALUES (181, '09:14:00', '18:41:00', 'JX00081', 'System', 1, 9.45, '2004-03-01');
INSERT INTO `attentance` VALUES (182, '09:08:00', '18:39:00', 'JX00081', 'System', 1, 9.52, '2005-03-01');
INSERT INTO `attentance` VALUES (183, '08:55:00', '18:54:00', 'JX00081', 'System', 1, 9.98, '2006-03-01');
INSERT INTO `attentance` VALUES (184, '09:02:00', '18:46:00', 'JX00081', 'System', 1, 9.73, '2007-03-01');
INSERT INTO `attentance` VALUES (185, '09:01:00', '18:45:00', 'JX00081', 'System', 1, 9.73, '2008-03-01');
INSERT INTO `attentance` VALUES (186, '08:56:00', '18:38:00', 'JX00081', 'System', 1, 9.7, '2011-03-01');
INSERT INTO `attentance` VALUES (187, '09:06:00', '18:56:00', 'JX00081', 'System', 1, 9.83, '2012-03-01');
INSERT INTO `attentance` VALUES (188, '09:02:00', '18:57:00', 'JX00081', 'System', 1, 9.92, '2013-03-01');
INSERT INTO `attentance` VALUES (189, '09:03:00', '18:37:00', 'JX00081', 'System', 1, 9.57, '2014-03-01');
INSERT INTO `attentance` VALUES (190, '09:06:00', '18:37:00', 'JX00081', 'System', 1, 9.52, '2015-03-01');
INSERT INTO `attentance` VALUES (191, '09:21:00', '18:36:00', 'JX00081', 'System', 1, 9.25, '2018-03-01');
INSERT INTO `attentance` VALUES (192, '09:00:00', '18:35:00', 'JX00081', 'System', 1, 9.58, '2019-03-01');
INSERT INTO `attentance` VALUES (193, '09:02:00', '18:39:00', 'JX00081', 'System', 1, 9.62, '2020-03-01');
INSERT INTO `attentance` VALUES (194, '09:05:00', '18:37:00', 'JX00081', 'System', 1, 9.53, '2021-03-01');
INSERT INTO `attentance` VALUES (195, '09:06:00', '09:06:00', 'JX00081', 'System', 1, 0, '2022-03-01');
INSERT INTO `attentance` VALUES (196, '10:19:00', '10:19:00', 'JX00081', 'System', 1, 0, '2024-03-01');
INSERT INTO `attentance` VALUES (197, '09:24:00', '19:40:00', 'JX00081', 'System', 1, 10.27, '2025-03-01');
INSERT INTO `attentance` VALUES (198, '09:05:00', '20:04:00', 'JX00081', 'System', 1, 10.98, '2026-03-01');
INSERT INTO `attentance` VALUES (199, '09:01:00', '18:57:00', 'JX00081', 'System', 1, 9.93, '2027-03-01');
INSERT INTO `attentance` VALUES (200, '09:04:00', '18:40:00', 'JX00081', 'System', 1, 9.6, '2028-03-01');
INSERT INTO `attentance` VALUES (201, '09:02:00', '18:40:00', 'JX00081', 'System', 1, 9.63, '2029-03-01');
INSERT INTO `attentance` VALUES (202, '09:18:00', '18:59:00', 'JX00084', 'System', 1, 9.68, '2028-02-01');
INSERT INTO `attentance` VALUES (203, '09:22:00', '19:13:00', 'JX00084', 'System', 1, 9.85, '2001-03-01');
INSERT INTO `attentance` VALUES (204, '09:18:00', '22:26:00', 'JX00084', 'System', 1, 13.13, '2005-03-01');
INSERT INTO `attentance` VALUES (205, '09:20:00', '23:38:00', 'JX00084', 'System', 1, 14.3, '2006-03-01');
INSERT INTO `attentance` VALUES (206, '08:50:00', '23:24:00', 'JX00084', 'System', 1, 14.57, '2007-03-01');
INSERT INTO `attentance` VALUES (207, '09:24:00', '12:57:00', 'JX00084', 'System', 1, 3.55, '2008-03-01');
INSERT INTO `attentance` VALUES (208, '00:01:00', '16:44:00', 'JX00084', 'System', 1, 16.72, '2009-03-01');
INSERT INTO `attentance` VALUES (209, '09:09:00', '23:04:00', 'JX00084', 'System', 1, 13.92, '2011-03-01');
INSERT INTO `attentance` VALUES (210, '09:15:00', '12:50:00', 'JX00084', 'System', 1, 3.58, '2012-03-01');
INSERT INTO `attentance` VALUES (211, '00:18:00', '20:16:00', 'JX00084', 'System', 1, 19.97, '2013-03-01');
INSERT INTO `attentance` VALUES (212, '09:22:00', '19:55:00', 'JX00084', 'System', 1, 10.55, '2014-03-01');
INSERT INTO `attentance` VALUES (213, '08:45:00', '20:54:00', 'JX00084', 'System', 1, 12.15, '2015-03-01');
INSERT INTO `attentance` VALUES (214, '11:48:00', '20:25:00', 'JX00084', 'System', 1, 8.62, '2016-03-01');
INSERT INTO `attentance` VALUES (215, '09:19:00', '19:20:00', 'JX00084', 'System', 1, 10.02, '2018-03-01');
INSERT INTO `attentance` VALUES (216, '09:16:00', '20:31:00', 'JX00084', 'System', 1, 11.25, '2019-03-01');
INSERT INTO `attentance` VALUES (217, '09:21:00', '20:04:00', 'JX00084', 'System', 1, 10.72, '2020-03-01');
INSERT INTO `attentance` VALUES (218, '09:22:00', '22:27:00', 'JX00084', 'System', 1, 13.08, '2021-03-01');
INSERT INTO `attentance` VALUES (219, '09:25:00', '19:51:00', 'JX00084', 'System', 1, 10.43, '2022-03-01');
INSERT INTO `attentance` VALUES (220, '09:21:00', '21:23:00', 'JX00084', 'System', 1, 12.03, '2025-03-01');
INSERT INTO `attentance` VALUES (221, '09:27:00', '20:42:00', 'JX00084', 'System', 1, 11.25, '2026-03-01');
INSERT INTO `attentance` VALUES (222, '09:27:00', '19:53:00', 'JX00084', 'System', 1, 10.43, '2027-03-01');
INSERT INTO `attentance` VALUES (223, '09:29:00', '20:44:00', 'JX00084', 'System', 1, 11.25, '2028-03-01');
INSERT INTO `attentance` VALUES (224, '09:19:00', '19:19:00', 'JX00084', 'System', 1, 10, '2029-03-01');
INSERT INTO `attentance` VALUES (225, '09:36:00', '18:33:00', 'JX00084', 'System', 1, 8.95, '2031-03-01');
INSERT INTO `attentance` VALUES (226, '17:28:00', '18:58:00', 'JX00105', 'System', 1, 1.5, '2027-03-01');
INSERT INTO `attentance` VALUES (227, '09:22:00', '18:41:00', 'JX00105', 'System', 1, 9.32, '2028-03-01');
INSERT INTO `attentance` VALUES (228, '09:29:00', '18:40:00', 'JX00105', 'System', 1, 9.18, '2029-03-01');
INSERT INTO `attentance` VALUES (229, '09:26:00', '18:42:00', 'JX00008', 'System', 1, 9.27, '2028-02-01');
INSERT INTO `attentance` VALUES (230, '09:30:00', '18:43:00', 'JX00008', 'System', 1, 9.22, '2001-03-01');
INSERT INTO `attentance` VALUES (231, '09:40:00', '18:39:00', 'JX00008', 'System', 1, 8.98, '2004-03-01');
INSERT INTO `attentance` VALUES (232, '09:33:00', '18:37:00', 'JX00008', 'System', 1, 9.07, '2005-03-01');
INSERT INTO `attentance` VALUES (233, '09:49:00', '18:39:00', 'JX00008', 'System', 1, 8.83, '2006-03-01');
INSERT INTO `attentance` VALUES (234, '09:38:00', '18:39:00', 'JX00008', 'System', 1, 9.02, '2007-03-01');
INSERT INTO `attentance` VALUES (235, '09:37:00', '18:39:00', 'JX00008', 'System', 1, 9.03, '2008-03-01');
INSERT INTO `attentance` VALUES (236, '09:33:00', '18:48:00', 'JX00008', 'System', 1, 9.25, '2011-03-01');
INSERT INTO `attentance` VALUES (237, '09:34:00', '18:42:00', 'JX00008', 'System', 1, 9.13, '2012-03-01');
INSERT INTO `attentance` VALUES (238, '09:28:00', '18:44:00', 'JX00008', 'System', 1, 9.27, '2013-03-01');
INSERT INTO `attentance` VALUES (239, '09:43:00', '18:42:00', 'JX00008', 'System', 1, 8.98, '2014-03-01');
INSERT INTO `attentance` VALUES (240, '09:32:00', '19:23:00', 'JX00008', 'System', 1, 9.85, '2015-03-01');
INSERT INTO `attentance` VALUES (241, '15:21:00', '15:21:00', 'JX00008', 'System', 1, 0, '2016-03-01');
INSERT INTO `attentance` VALUES (242, '08:01:00', '18:50:00', 'JX00008', 'System', 1, 10.82, '2018-03-01');
INSERT INTO `attentance` VALUES (243, '09:54:00', '18:35:00', 'JX00008', 'System', 1, 8.68, '2019-03-01');
INSERT INTO `attentance` VALUES (244, '09:19:00', '18:39:00', 'JX00008', 'System', 1, 9.33, '2020-03-01');
INSERT INTO `attentance` VALUES (245, '09:35:00', '18:52:00', 'JX00008', 'System', 1, 9.28, '2021-03-01');
INSERT INTO `attentance` VALUES (246, '09:31:00', '20:40:00', 'JX00008', 'System', 1, 11.15, '2022-03-01');
INSERT INTO `attentance` VALUES (247, '09:51:00', '19:44:00', 'JX00008', 'System', 1, 9.88, '2025-03-01');
INSERT INTO `attentance` VALUES (248, '19:54:00', '19:54:00', 'JX00008', 'System', 1, 0, '2026-03-01');
INSERT INTO `attentance` VALUES (249, '09:26:00', '18:36:00', 'JX00008', 'System', 1, 9.17, '2027-03-01');
INSERT INTO `attentance` VALUES (250, '09:48:00', '18:45:00', 'JX00008', 'System', 1, 8.95, '2028-03-01');
INSERT INTO `attentance` VALUES (251, '09:30:00', '18:38:00', 'JX00008', 'System', 1, 9.13, '2029-03-01');
INSERT INTO `attentance` VALUES (252, '09:21:00', '18:35:00', 'JX00009', 'System', 1, 9.23, '2028-02-01');
INSERT INTO `attentance` VALUES (253, '09:10:00', '18:41:00', 'JX00009', 'System', 1, 9.52, '2001-03-01');
INSERT INTO `attentance` VALUES (254, '09:18:00', '18:39:00', 'JX00009', 'System', 1, 9.35, '2004-03-01');
INSERT INTO `attentance` VALUES (255, '09:18:00', '18:38:00', 'JX00009', 'System', 1, 9.33, '2005-03-01');
INSERT INTO `attentance` VALUES (256, '09:08:00', '18:38:00', 'JX00009', 'System', 1, 9.5, '2006-03-01');
INSERT INTO `attentance` VALUES (257, '09:20:00', '18:38:00', 'JX00009', 'System', 1, 9.3, '2007-03-01');
INSERT INTO `attentance` VALUES (258, '09:23:00', '18:40:00', 'JX00009', 'System', 1, 9.28, '2008-03-01');
INSERT INTO `attentance` VALUES (259, '09:26:00', '18:42:00', 'JX00009', 'System', 1, 9.27, '2011-03-01');
INSERT INTO `attentance` VALUES (260, '09:13:00', '18:39:00', 'JX00009', 'System', 1, 9.43, '2012-03-01');
INSERT INTO `attentance` VALUES (261, '09:18:00', '18:46:00', 'JX00009', 'System', 1, 9.47, '2013-03-01');
INSERT INTO `attentance` VALUES (262, '09:23:00', '18:43:00', 'JX00009', 'System', 1, 9.33, '2014-03-01');
INSERT INTO `attentance` VALUES (263, '09:19:00', '09:19:00', 'JX00009', 'System', 1, 0, '2015-03-01');
INSERT INTO `attentance` VALUES (264, '09:03:00', '18:36:00', 'JX00009', 'System', 1, 9.55, '2018-03-01');
INSERT INTO `attentance` VALUES (265, '09:18:00', '18:37:00', 'JX00009', 'System', 1, 9.32, '2019-03-01');
INSERT INTO `attentance` VALUES (266, '09:18:00', '18:39:00', 'JX00009', 'System', 1, 9.35, '2020-03-01');
INSERT INTO `attentance` VALUES (267, '09:25:00', '18:52:00', 'JX00009', 'System', 1, 9.45, '2021-03-01');
INSERT INTO `attentance` VALUES (268, '09:26:00', '18:35:00', 'JX00009', 'System', 1, 9.15, '2022-03-01');
INSERT INTO `attentance` VALUES (269, '09:10:00', '18:35:00', 'JX00009', 'System', 1, 9.42, '2025-03-01');
INSERT INTO `attentance` VALUES (270, '09:29:00', '18:36:00', 'JX00009', 'System', 1, 9.12, '2026-03-01');
INSERT INTO `attentance` VALUES (271, '09:15:00', '18:37:00', 'JX00009', 'System', 1, 9.37, '2027-03-01');
INSERT INTO `attentance` VALUES (272, '09:18:00', '18:45:00', 'JX00009', 'System', 1, 9.45, '2028-03-01');
INSERT INTO `attentance` VALUES (273, '09:16:00', '18:43:00', 'JX00009', 'System', 1, 9.45, '2029-03-01');
INSERT INTO `attentance` VALUES (274, '09:51:00', '18:33:00', 'JX00010', 'System', 1, 8.7, '2028-02-01');
INSERT INTO `attentance` VALUES (275, '09:39:00', '18:43:00', 'JX00010', 'System', 1, 9.07, '2001-03-01');
INSERT INTO `attentance` VALUES (276, '09:45:00', '18:35:00', 'JX00010', 'System', 1, 8.83, '2004-03-01');
INSERT INTO `attentance` VALUES (277, '09:48:00', '18:36:00', 'JX00010', 'System', 1, 8.8, '2005-03-01');
INSERT INTO `attentance` VALUES (278, '09:39:00', '18:38:00', 'JX00010', 'System', 1, 8.98, '2006-03-01');
INSERT INTO `attentance` VALUES (279, '09:43:00', '18:35:00', 'JX00010', 'System', 1, 8.87, '2007-03-01');
INSERT INTO `attentance` VALUES (280, '09:46:00', '18:39:00', 'JX00010', 'System', 1, 8.88, '2008-03-01');
INSERT INTO `attentance` VALUES (281, '09:40:00', '18:42:00', 'JX00010', 'System', 1, 9.03, '2011-03-01');
INSERT INTO `attentance` VALUES (282, '09:45:00', '18:41:00', 'JX00010', 'System', 1, 8.93, '2012-03-01');
INSERT INTO `attentance` VALUES (283, '09:44:00', '18:45:00', 'JX00010', 'System', 1, 9.02, '2013-03-01');
INSERT INTO `attentance` VALUES (284, '09:44:00', '18:39:00', 'JX00010', 'System', 1, 8.92, '2014-03-01');
INSERT INTO `attentance` VALUES (285, '09:43:00', '19:19:00', 'JX00010', 'System', 1, 9.6, '2015-03-01');
INSERT INTO `attentance` VALUES (286, '09:50:00', '18:35:00', 'JX00010', 'System', 1, 8.75, '2018-03-01');
INSERT INTO `attentance` VALUES (287, '09:50:00', '18:37:00', 'JX00010', 'System', 1, 8.78, '2020-03-01');
INSERT INTO `attentance` VALUES (288, '09:34:00', '18:50:00', 'JX00010', 'System', 1, 9.27, '2021-03-01');
INSERT INTO `attentance` VALUES (289, '09:43:00', '18:35:00', 'JX00010', 'System', 1, 8.87, '2022-03-01');
INSERT INTO `attentance` VALUES (290, '09:54:00', '18:36:00', 'JX00010', 'System', 1, 8.7, '2025-03-01');
INSERT INTO `attentance` VALUES (291, '09:42:00', '18:35:00', 'JX00010', 'System', 1, 8.88, '2026-03-01');
INSERT INTO `attentance` VALUES (292, '09:43:00', '18:36:00', 'JX00010', 'System', 1, 8.88, '2027-03-01');
INSERT INTO `attentance` VALUES (293, '09:51:00', '18:45:00', 'JX00010', 'System', 1, 8.9, '2028-03-01');
INSERT INTO `attentance` VALUES (294, '09:52:00', '18:42:00', 'JX00010', 'System', 1, 8.83, '2029-03-01');
INSERT INTO `attentance` VALUES (295, '09:22:00', '18:47:00', 'JX00025', 'System', 1, 9.42, '2028-02-01');
INSERT INTO `attentance` VALUES (296, '09:20:00', '19:06:00', 'JX00025', 'System', 1, 9.77, '2001-03-01');
INSERT INTO `attentance` VALUES (297, '09:32:00', '19:00:00', 'JX00025', 'System', 1, 9.47, '2004-03-01');
INSERT INTO `attentance` VALUES (298, '09:12:00', '18:34:00', 'JX00025', 'System', 1, 9.37, '2005-03-01');
INSERT INTO `attentance` VALUES (299, '09:14:00', '18:34:00', 'JX00025', 'System', 1, 9.33, '2006-03-01');
INSERT INTO `attentance` VALUES (300, '09:27:00', '18:35:00', 'JX00025', 'System', 1, 9.13, '2007-03-01');
INSERT INTO `attentance` VALUES (301, '09:17:00', '19:01:00', 'JX00025', 'System', 1, 9.73, '2008-03-01');
INSERT INTO `attentance` VALUES (302, '09:21:00', '18:58:00', 'JX00025', 'System', 1, 9.62, '2011-03-01');
INSERT INTO `attentance` VALUES (303, '09:19:00', '18:34:00', 'JX00025', 'System', 1, 9.25, '2012-03-01');
INSERT INTO `attentance` VALUES (304, '09:19:00', '18:41:00', 'JX00025', 'System', 1, 9.37, '2013-03-01');
INSERT INTO `attentance` VALUES (305, '09:28:00', '18:34:00', 'JX00025', 'System', 1, 9.1, '2014-03-01');
INSERT INTO `attentance` VALUES (306, '09:21:00', '18:42:00', 'JX00025', 'System', 1, 9.35, '2015-03-01');
INSERT INTO `attentance` VALUES (307, '09:26:00', '18:32:00', 'JX00025', 'System', 1, 9.1, '2018-03-01');
INSERT INTO `attentance` VALUES (308, '09:20:00', '18:45:00', 'JX00025', 'System', 1, 9.42, '2019-03-01');
INSERT INTO `attentance` VALUES (309, '09:28:00', '18:32:00', 'JX00025', 'System', 1, 9.07, '2020-03-01');
INSERT INTO `attentance` VALUES (310, '09:18:00', '18:43:00', 'JX00025', 'System', 1, 9.42, '2021-03-01');
INSERT INTO `attentance` VALUES (311, '09:23:00', '18:34:00', 'JX00025', 'System', 1, 9.18, '2022-03-01');
INSERT INTO `attentance` VALUES (312, '09:44:00', '18:44:00', 'JX00025', 'System', 1, 9, '2025-03-01');
INSERT INTO `attentance` VALUES (313, '09:26:00', '18:36:00', 'JX00025', 'System', 1, 9.17, '2027-03-01');
INSERT INTO `attentance` VALUES (314, '09:20:00', '19:23:00', 'JX00025', 'System', 1, 10.05, '2028-03-01');
INSERT INTO `attentance` VALUES (315, '09:19:00', '18:36:00', 'JX00025', 'System', 1, 9.28, '2029-03-01');
INSERT INTO `attentance` VALUES (316, '09:18:00', '18:34:00', 'JX00027', 'System', 1, 9.27, '2028-02-01');
INSERT INTO `attentance` VALUES (317, '09:11:00', '18:37:00', 'JX00027', 'System', 1, 9.43, '2001-03-01');
INSERT INTO `attentance` VALUES (318, '09:18:00', '18:34:00', 'JX00027', 'System', 1, 9.27, '2004-03-01');
INSERT INTO `attentance` VALUES (319, '09:18:00', '18:37:00', 'JX00027', 'System', 1, 9.32, '2005-03-01');
INSERT INTO `attentance` VALUES (320, '09:08:00', '18:38:00', 'JX00027', 'System', 1, 9.5, '2006-03-01');
INSERT INTO `attentance` VALUES (321, '09:20:00', '18:38:00', 'JX00027', 'System', 1, 9.3, '2007-03-01');
INSERT INTO `attentance` VALUES (322, '09:23:00', '18:38:00', 'JX00027', 'System', 1, 9.25, '2008-03-01');
INSERT INTO `attentance` VALUES (323, '09:26:00', '18:41:00', 'JX00027', 'System', 1, 9.25, '2011-03-01');
INSERT INTO `attentance` VALUES (324, '09:13:00', '18:33:00', 'JX00027', 'System', 1, 9.33, '2012-03-01');
INSERT INTO `attentance` VALUES (325, '09:18:00', '18:46:00', 'JX00027', 'System', 1, 9.47, '2013-03-01');
INSERT INTO `attentance` VALUES (326, '09:23:00', '18:35:00', 'JX00027', 'System', 1, 9.2, '2014-03-01');
INSERT INTO `attentance` VALUES (327, '09:19:00', '18:37:00', 'JX00027', 'System', 1, 9.3, '2015-03-01');
INSERT INTO `attentance` VALUES (328, '09:03:00', '18:35:00', 'JX00027', 'System', 1, 9.53, '2018-03-01');
INSERT INTO `attentance` VALUES (329, '09:19:00', '18:34:00', 'JX00027', 'System', 1, 9.25, '2019-03-01');
INSERT INTO `attentance` VALUES (330, '09:19:00', '18:37:00', 'JX00027', 'System', 1, 9.3, '2020-03-01');
INSERT INTO `attentance` VALUES (331, '09:25:00', '18:50:00', 'JX00027', 'System', 1, 9.42, '2021-03-01');
INSERT INTO `attentance` VALUES (332, '09:26:00', '18:32:00', 'JX00027', 'System', 1, 9.1, '2022-03-01');
INSERT INTO `attentance` VALUES (333, '09:10:00', '18:35:00', 'JX00027', 'System', 1, 9.42, '2025-03-01');
INSERT INTO `attentance` VALUES (334, '09:29:00', '18:34:00', 'JX00027', 'System', 1, 9.08, '2026-03-01');
INSERT INTO `attentance` VALUES (335, '09:15:00', '18:35:00', 'JX00027', 'System', 1, 9.33, '2027-03-01');
INSERT INTO `attentance` VALUES (336, '09:18:00', '18:38:00', 'JX00027', 'System', 1, 9.33, '2028-03-01');
INSERT INTO `attentance` VALUES (337, '09:16:00', '18:36:00', 'JX00027', 'System', 1, 9.33, '2029-03-01');
INSERT INTO `attentance` VALUES (338, '09:27:00', '18:43:00', 'JX00058', 'System', 1, 9.27, '2028-02-01');
INSERT INTO `attentance` VALUES (339, '09:27:00', '18:37:00', 'JX00058', 'System', 1, 9.17, '2001-03-01');
INSERT INTO `attentance` VALUES (340, '09:25:00', '18:37:00', 'JX00058', 'System', 1, 9.2, '2004-03-01');
INSERT INTO `attentance` VALUES (341, '09:20:00', '18:40:00', 'JX00058', 'System', 1, 9.33, '2005-03-01');
INSERT INTO `attentance` VALUES (342, '09:17:00', '18:39:00', 'JX00058', 'System', 1, 9.37, '2006-03-01');
INSERT INTO `attentance` VALUES (343, '09:26:00', '18:42:00', 'JX00058', 'System', 1, 9.27, '2007-03-01');
INSERT INTO `attentance` VALUES (344, '09:28:00', '18:35:00', 'JX00058', 'System', 1, 9.12, '2008-03-01');
INSERT INTO `attentance` VALUES (345, '09:25:00', '18:38:00', 'JX00058', 'System', 1, 9.22, '2011-03-01');
INSERT INTO `attentance` VALUES (346, '09:25:00', '18:37:00', 'JX00058', 'System', 1, 9.2, '2012-03-01');
INSERT INTO `attentance` VALUES (347, '09:23:00', '18:36:00', 'JX00058', 'System', 1, 9.22, '2013-03-01');
INSERT INTO `attentance` VALUES (348, '09:30:00', '18:35:00', 'JX00058', 'System', 1, 9.08, '2014-03-01');
INSERT INTO `attentance` VALUES (349, '09:25:00', '18:37:00', 'JX00058', 'System', 1, 9.2, '2015-03-01');
INSERT INTO `attentance` VALUES (350, '09:28:00', '18:50:00', 'JX00058', 'System', 1, 9.37, '2018-03-01');
INSERT INTO `attentance` VALUES (351, '09:28:00', '18:41:00', 'JX00058', 'System', 1, 9.22, '2019-03-01');
INSERT INTO `attentance` VALUES (352, '09:28:00', '18:45:00', 'JX00058', 'System', 1, 9.28, '2020-03-01');
INSERT INTO `attentance` VALUES (353, '09:28:00', '18:39:00', 'JX00058', 'System', 1, 9.18, '2021-03-01');
INSERT INTO `attentance` VALUES (354, '09:28:00', '18:41:00', 'JX00058', 'System', 1, 9.22, '2022-03-01');
INSERT INTO `attentance` VALUES (355, '09:27:00', '18:38:00', 'JX00058', 'System', 1, 9.18, '2025-03-01');
INSERT INTO `attentance` VALUES (356, '09:29:00', '18:36:00', 'JX00058', 'System', 1, 9.12, '2026-03-01');
INSERT INTO `attentance` VALUES (357, '09:27:00', '18:35:00', 'JX00058', 'System', 1, 9.13, '2027-03-01');
INSERT INTO `attentance` VALUES (358, '09:05:00', '18:37:00', 'JX00058', 'System', 1, 9.53, '2028-03-01');
INSERT INTO `attentance` VALUES (359, '09:05:00', '18:37:00', 'JX00058', 'System', 1, 9.53, '2029-03-01');
INSERT INTO `attentance` VALUES (360, '09:47:00', '20:03:00', 'JX00013', 'System', 1, 10.27, '2028-02-01');
INSERT INTO `attentance` VALUES (361, '09:57:00', '19:06:00', 'JX00013', 'System', 1, 9.15, '2001-03-01');
INSERT INTO `attentance` VALUES (362, '09:58:00', '18:34:00', 'JX00013', 'System', 1, 8.6, '2004-03-01');
INSERT INTO `attentance` VALUES (363, '09:43:00', '18:56:00', 'JX00013', 'System', 1, 9.22, '2005-03-01');
INSERT INTO `attentance` VALUES (364, '09:35:00', '19:24:00', 'JX00013', 'System', 1, 9.82, '2006-03-01');
INSERT INTO `attentance` VALUES (365, '09:55:00', '19:46:00', 'JX00013', 'System', 1, 9.85, '2007-03-01');
INSERT INTO `attentance` VALUES (366, '09:43:00', '19:19:00', 'JX00013', 'System', 1, 9.6, '2008-03-01');
INSERT INTO `attentance` VALUES (367, '09:40:00', '14:11:00', 'JX00013', 'System', 1, 4.52, '2009-03-01');
INSERT INTO `attentance` VALUES (368, '09:33:00', '19:49:00', 'JX00013', 'System', 1, 10.27, '2011-03-01');
INSERT INTO `attentance` VALUES (369, '09:53:00', '19:40:00', 'JX00013', 'System', 1, 9.78, '2012-03-01');
INSERT INTO `attentance` VALUES (370, '09:44:00', '20:25:00', 'JX00013', 'System', 1, 10.68, '2013-03-01');
INSERT INTO `attentance` VALUES (371, '09:24:00', '21:05:00', 'JX00013', 'System', 1, 11.68, '2014-03-01');
INSERT INTO `attentance` VALUES (372, '10:22:00', '20:07:00', 'JX00013', 'System', 1, 9.75, '2015-03-01');
INSERT INTO `attentance` VALUES (373, '09:26:00', '14:14:00', 'JX00013', 'System', 1, 4.8, '2016-03-01');
INSERT INTO `attentance` VALUES (374, '09:28:00', '20:02:00', 'JX00013', 'System', 1, 10.57, '2018-03-01');
INSERT INTO `attentance` VALUES (375, '09:47:00', '19:57:00', 'JX00013', 'System', 1, 10.17, '2019-03-01');
INSERT INTO `attentance` VALUES (376, '09:07:00', '19:33:00', 'JX00013', 'System', 1, 10.43, '2020-03-01');
INSERT INTO `attentance` VALUES (377, '09:41:00', '19:31:00', 'JX00013', 'System', 1, 9.83, '2021-03-01');
INSERT INTO `attentance` VALUES (378, '09:43:00', '20:52:00', 'JX00013', 'System', 1, 11.15, '2022-03-01');
INSERT INTO `attentance` VALUES (379, '10:37:00', '19:27:00', 'JX00013', 'System', 1, 8.83, '2025-03-01');
INSERT INTO `attentance` VALUES (380, '09:47:00', '20:02:00', 'JX00013', 'System', 1, 10.25, '2026-03-01');
INSERT INTO `attentance` VALUES (381, '09:48:00', '19:51:00', 'JX00013', 'System', 1, 10.05, '2027-03-01');
INSERT INTO `attentance` VALUES (382, '09:51:00', '21:01:00', 'JX00013', 'System', 1, 11.17, '2028-03-01');
INSERT INTO `attentance` VALUES (383, '09:53:00', '18:48:00', 'JX00016', 'System', 1, 8.92, '2028-02-01');
INSERT INTO `attentance` VALUES (384, '09:51:00', '19:21:00', 'JX00016', 'System', 1, 9.5, '2001-03-01');
INSERT INTO `attentance` VALUES (385, '09:40:00', '19:02:00', 'JX00016', 'System', 1, 9.37, '2004-03-01');
INSERT INTO `attentance` VALUES (386, '09:49:00', '09:49:00', 'JX00016', 'System', 1, 0, '2005-03-01');
INSERT INTO `attentance` VALUES (387, '09:46:00', '19:48:00', 'JX00016', 'System', 1, 10.03, '2006-03-01');
INSERT INTO `attentance` VALUES (388, '09:55:00', '20:24:00', 'JX00016', 'System', 1, 10.48, '2007-03-01');
INSERT INTO `attentance` VALUES (389, '09:43:00', '20:32:00', 'JX00016', 'System', 1, 10.82, '2008-03-01');
INSERT INTO `attentance` VALUES (390, '09:49:00', '19:15:00', 'JX00016', 'System', 1, 9.43, '2011-03-01');
INSERT INTO `attentance` VALUES (391, '10:00:00', '20:03:00', 'JX00016', 'System', 1, 10.05, '2012-03-01');
INSERT INTO `attentance` VALUES (392, '09:43:00', '20:00:00', 'JX00016', 'System', 1, 10.28, '2013-03-01');
INSERT INTO `attentance` VALUES (393, '09:40:00', '20:39:00', 'JX00016', 'System', 1, 10.98, '2014-03-01');
INSERT INTO `attentance` VALUES (394, '09:52:00', '19:29:00', 'JX00016', 'System', 1, 9.62, '2015-03-01');
INSERT INTO `attentance` VALUES (395, '09:50:00', '20:23:00', 'JX00016', 'System', 1, 10.55, '2016-03-01');
INSERT INTO `attentance` VALUES (396, '09:49:00', '19:45:00', 'JX00016', 'System', 1, 9.93, '2018-03-01');
INSERT INTO `attentance` VALUES (397, '09:41:00', '20:29:00', 'JX00016', 'System', 1, 10.8, '2019-03-01');
INSERT INTO `attentance` VALUES (398, '09:47:00', '18:41:00', 'JX00016', 'System', 1, 8.9, '2020-03-01');
INSERT INTO `attentance` VALUES (399, '09:38:00', '18:17:00', 'JX00016', 'System', 1, 8.65, '2021-03-01');
INSERT INTO `attentance` VALUES (400, '09:40:00', '21:01:00', 'JX00016', 'System', 1, 11.35, '2022-03-01');
INSERT INTO `attentance` VALUES (401, '09:51:00', '19:06:00', 'JX00016', 'System', 1, 9.25, '2025-03-01');
INSERT INTO `attentance` VALUES (402, '09:48:00', '19:55:00', 'JX00016', 'System', 1, 10.12, '2026-03-01');
INSERT INTO `attentance` VALUES (403, '09:38:00', '18:55:00', 'JX00016', 'System', 1, 9.28, '2027-03-01');
INSERT INTO `attentance` VALUES (404, '09:48:00', '19:38:00', 'JX00016', 'System', 1, 9.83, '2028-03-01');
INSERT INTO `attentance` VALUES (405, '09:38:00', '20:25:00', 'JX00016', 'System', 1, 10.78, '2029-03-01');
INSERT INTO `attentance` VALUES (406, '08:38:00', '21:10:00', 'JX00019', 'System', 1, 12.53, '2028-02-01');
INSERT INTO `attentance` VALUES (407, '08:39:00', '19:25:00', 'JX00019', 'System', 1, 10.77, '2001-03-01');
INSERT INTO `attentance` VALUES (408, '15:28:00', '15:28:00', 'JX00019', 'System', 1, 0, '2003-03-01');
INSERT INTO `attentance` VALUES (409, '09:13:00', '21:46:00', 'JX00019', 'System', 1, 12.55, '2004-03-01');
INSERT INTO `attentance` VALUES (410, '08:01:00', '18:56:00', 'JX00019', 'System', 1, 10.92, '2005-03-01');
INSERT INTO `attentance` VALUES (411, '08:39:00', '22:34:00', 'JX00019', 'System', 1, 13.92, '2006-03-01');
INSERT INTO `attentance` VALUES (412, '09:16:00', '22:22:00', 'JX00019', 'System', 1, 13.1, '2007-03-01');
INSERT INTO `attentance` VALUES (413, '09:19:00', '20:03:00', 'JX00019', 'System', 1, 10.73, '2008-03-01');
INSERT INTO `attentance` VALUES (414, '09:15:00', '18:46:00', 'JX00019', 'System', 1, 9.52, '2009-03-01');
INSERT INTO `attentance` VALUES (415, '09:10:00', '21:38:00', 'JX00019', 'System', 1, 12.47, '2011-03-01');
INSERT INTO `attentance` VALUES (416, '09:19:00', '21:48:00', 'JX00019', 'System', 1, 12.48, '2012-03-01');
INSERT INTO `attentance` VALUES (417, '09:15:00', '22:26:00', 'JX00019', 'System', 1, 13.18, '2013-03-01');
INSERT INTO `attentance` VALUES (418, '09:45:00', '23:02:00', 'JX00019', 'System', 1, 13.28, '2014-03-01');
INSERT INTO `attentance` VALUES (419, '09:31:00', '23:07:00', 'JX00019', 'System', 1, 13.6, '2015-03-01');
INSERT INTO `attentance` VALUES (420, '09:28:00', '21:06:00', 'JX00019', 'System', 1, 11.63, '2018-03-01');
INSERT INTO `attentance` VALUES (421, '09:22:00', '22:11:00', 'JX00019', 'System', 1, 12.82, '2019-03-01');
INSERT INTO `attentance` VALUES (422, '09:25:00', '21:55:00', 'JX00019', 'System', 1, 12.5, '2020-03-01');
INSERT INTO `attentance` VALUES (423, '09:22:00', '21:26:00', 'JX00019', 'System', 1, 12.07, '2021-03-01');
INSERT INTO `attentance` VALUES (424, '09:29:00', '20:56:00', 'JX00019', 'System', 1, 11.45, '2022-03-01');
INSERT INTO `attentance` VALUES (425, '15:09:00', '22:06:00', 'JX00019', 'System', 1, 6.95, '2024-03-01');
INSERT INTO `attentance` VALUES (426, '09:23:00', '22:14:00', 'JX00019', 'System', 1, 12.85, '2025-03-01');
INSERT INTO `attentance` VALUES (427, '09:57:00', '23:22:00', 'JX00019', 'System', 1, 13.42, '2026-03-01');
INSERT INTO `attentance` VALUES (428, '09:58:00', '21:43:00', 'JX00019', 'System', 1, 11.75, '2027-03-01');
INSERT INTO `attentance` VALUES (429, '13:54:00', '13:54:00', 'JX00019', 'System', 1, 0, '2028-03-01');
INSERT INTO `attentance` VALUES (430, '00:01:00', '22:35:00', 'JX00019', 'System', 1, 22.57, '2029-03-01');
INSERT INTO `attentance` VALUES (431, '09:27:00', '18:34:00', 'JX00021', 'System', 1, 9.12, '2028-02-01');
INSERT INTO `attentance` VALUES (432, '09:30:00', '19:18:00', 'JX00021', 'System', 1, 9.8, '2001-03-01');
INSERT INTO `attentance` VALUES (433, '09:34:00', '18:35:00', 'JX00021', 'System', 1, 9.02, '2004-03-01');
INSERT INTO `attentance` VALUES (434, '09:29:00', '18:42:00', 'JX00021', 'System', 1, 9.22, '2005-03-01');
INSERT INTO `attentance` VALUES (435, '09:35:00', '18:41:00', 'JX00021', 'System', 1, 9.1, '2006-03-01');
INSERT INTO `attentance` VALUES (436, '09:32:00', '18:36:00', 'JX00021', 'System', 1, 9.07, '2007-03-01');
INSERT INTO `attentance` VALUES (437, '09:25:00', '18:38:00', 'JX00021', 'System', 1, 9.22, '2008-03-01');
INSERT INTO `attentance` VALUES (438, '09:30:00', '09:30:00', 'JX00021', 'System', 1, 0, '2009-03-01');
INSERT INTO `attentance` VALUES (439, '09:26:00', '18:49:00', 'JX00021', 'System', 1, 9.38, '2011-03-01');
INSERT INTO `attentance` VALUES (440, '09:31:00', '18:46:00', 'JX00021', 'System', 1, 9.25, '2012-03-01');
INSERT INTO `attentance` VALUES (441, '09:31:00', '18:46:00', 'JX00021', 'System', 1, 9.25, '2013-03-01');
INSERT INTO `attentance` VALUES (442, '09:47:00', '18:42:00', 'JX00021', 'System', 1, 8.92, '2014-03-01');
INSERT INTO `attentance` VALUES (443, '09:46:00', '19:10:00', 'JX00021', 'System', 1, 9.4, '2015-03-01');
INSERT INTO `attentance` VALUES (444, '09:33:00', '09:33:00', 'JX00021', 'System', 1, 0, '2016-03-01');
INSERT INTO `attentance` VALUES (445, '10:04:00', '18:44:00', 'JX00021', 'System', 1, 8.67, '2018-03-01');
INSERT INTO `attentance` VALUES (446, '09:20:00', '18:43:00', 'JX00021', 'System', 1, 9.38, '2019-03-01');
INSERT INTO `attentance` VALUES (447, '09:23:00', '18:37:00', 'JX00021', 'System', 1, 9.23, '2020-03-01');
INSERT INTO `attentance` VALUES (448, '09:09:00', '18:39:00', 'JX00021', 'System', 1, 9.5, '2021-03-01');
INSERT INTO `attentance` VALUES (449, '09:26:00', '20:48:00', 'JX00021', 'System', 1, 11.37, '2022-03-01');
INSERT INTO `attentance` VALUES (450, '09:37:00', '18:42:00', 'JX00021', 'System', 1, 9.08, '2025-03-01');
INSERT INTO `attentance` VALUES (451, '09:30:00', '18:43:00', 'JX00021', 'System', 1, 9.22, '2026-03-01');
INSERT INTO `attentance` VALUES (452, '09:39:00', '19:27:00', 'JX00021', 'System', 1, 9.8, '2027-03-01');
INSERT INTO `attentance` VALUES (453, '09:31:00', '18:49:00', 'JX00021', 'System', 1, 9.3, '2028-03-01');
INSERT INTO `attentance` VALUES (454, '09:41:00', '19:00:00', 'JX00021', 'System', 1, 9.32, '2029-03-01');
INSERT INTO `attentance` VALUES (455, '09:29:00', '19:23:00', 'JX00022', 'System', 1, 9.9, '2028-02-01');
INSERT INTO `attentance` VALUES (456, '09:26:00', '19:19:00', 'JX00022', 'System', 1, 9.88, '2001-03-01');
INSERT INTO `attentance` VALUES (457, '09:27:00', '18:58:00', 'JX00022', 'System', 1, 9.52, '2004-03-01');
INSERT INTO `attentance` VALUES (458, '09:26:00', '19:04:00', 'JX00022', 'System', 1, 9.63, '2005-03-01');
INSERT INTO `attentance` VALUES (459, '09:28:00', '19:06:00', 'JX00022', 'System', 1, 9.63, '2006-03-01');
INSERT INTO `attentance` VALUES (460, '09:27:00', '19:06:00', 'JX00022', 'System', 1, 9.65, '2007-03-01');
INSERT INTO `attentance` VALUES (461, '09:23:00', '19:06:00', 'JX00022', 'System', 1, 9.72, '2008-03-01');
INSERT INTO `attentance` VALUES (462, '09:26:00', '19:14:00', 'JX00022', 'System', 1, 9.8, '2011-03-01');
INSERT INTO `attentance` VALUES (463, '09:27:00', '19:03:00', 'JX00022', 'System', 1, 9.6, '2012-03-01');
INSERT INTO `attentance` VALUES (464, '09:27:00', '19:06:00', 'JX00022', 'System', 1, 9.65, '2013-03-01');
INSERT INTO `attentance` VALUES (465, '09:23:00', '19:07:00', 'JX00022', 'System', 1, 9.73, '2014-03-01');
INSERT INTO `attentance` VALUES (466, '09:25:00', '19:02:00', 'JX00022', 'System', 1, 9.62, '2015-03-01');
INSERT INTO `attentance` VALUES (467, '18:24:00', '18:24:00', 'JX00022', 'System', 1, 0, '2016-03-01');
INSERT INTO `attentance` VALUES (468, '09:28:00', '19:04:00', 'JX00022', 'System', 1, 9.6, '2018-03-01');
INSERT INTO `attentance` VALUES (469, '09:21:00', '20:47:00', 'JX00022', 'System', 1, 11.43, '2019-03-01');
INSERT INTO `attentance` VALUES (470, '09:49:00', '19:23:00', 'JX00022', 'System', 1, 9.57, '2020-03-01');
INSERT INTO `attentance` VALUES (471, '09:25:00', '20:44:00', 'JX00022', 'System', 1, 11.32, '2021-03-01');
INSERT INTO `attentance` VALUES (472, '09:26:00', '18:50:00', 'JX00022', 'System', 1, 9.4, '2022-03-01');
INSERT INTO `attentance` VALUES (473, '09:21:00', '20:43:00', 'JX00022', 'System', 1, 11.37, '2025-03-01');
INSERT INTO `attentance` VALUES (474, '10:03:00', '21:15:00', 'JX00022', 'System', 1, 11.2, '2026-03-01');
INSERT INTO `attentance` VALUES (475, '10:09:00', '21:07:00', 'JX00022', 'System', 1, 10.97, '2027-03-01');
INSERT INTO `attentance` VALUES (476, '10:22:00', '12:01:00', 'JX00022', 'System', 1, 1.65, '2028-03-01');
INSERT INTO `attentance` VALUES (477, '19:25:00', '21:10:00', 'JX00033', 'System', 1, 1.75, '2028-02-01');
INSERT INTO `attentance` VALUES (478, '09:45:00', '19:26:00', 'JX00033', 'System', 1, 9.68, '2001-03-01');
INSERT INTO `attentance` VALUES (479, '09:19:00', '20:38:00', 'JX00033', 'System', 1, 11.32, '2004-03-01');
INSERT INTO `attentance` VALUES (480, '08:34:00', '21:37:00', 'JX00033', 'System', 1, 13.05, '2005-03-01');
INSERT INTO `attentance` VALUES (481, '10:20:00', '21:33:00', 'JX00033', 'System', 1, 11.22, '2006-03-01');
INSERT INTO `attentance` VALUES (482, '10:13:00', '21:05:00', 'JX00033', 'System', 1, 10.87, '2007-03-01');
INSERT INTO `attentance` VALUES (483, '10:08:00', '20:15:00', 'JX00033', 'System', 1, 10.12, '2008-03-01');
INSERT INTO `attentance` VALUES (484, '09:26:00', '21:03:00', 'JX00033', 'System', 1, 11.62, '2011-03-01');
INSERT INTO `attentance` VALUES (485, '09:44:00', '21:01:00', 'JX00033', 'System', 1, 11.28, '2012-03-01');
INSERT INTO `attentance` VALUES (486, '10:04:00', '19:53:00', 'JX00033', 'System', 1, 9.82, '2013-03-01');
INSERT INTO `attentance` VALUES (487, '09:30:00', '21:29:00', 'JX00033', 'System', 1, 11.98, '2014-03-01');
INSERT INTO `attentance` VALUES (488, '10:10:00', '19:54:00', 'JX00033', 'System', 1, 9.73, '2015-03-01');
INSERT INTO `attentance` VALUES (489, '13:39:00', '13:39:00', 'JX00033', 'System', 1, 0, '2017-03-01');
INSERT INTO `attentance` VALUES (490, '09:28:00', '21:08:00', 'JX00033', 'System', 1, 11.67, '2018-03-01');
INSERT INTO `attentance` VALUES (491, '10:09:00', '21:02:00', 'JX00033', 'System', 1, 10.88, '2019-03-01');
INSERT INTO `attentance` VALUES (492, '09:42:00', '21:01:00', 'JX00033', 'System', 1, 11.32, '2020-03-01');
INSERT INTO `attentance` VALUES (493, '09:49:00', '21:26:00', 'JX00033', 'System', 1, 11.62, '2021-03-01');
INSERT INTO `attentance` VALUES (494, '10:21:00', '20:55:00', 'JX00033', 'System', 1, 10.57, '2022-03-01');
INSERT INTO `attentance` VALUES (495, '22:06:00', '22:06:00', 'JX00033', 'System', 1, 0, '2024-03-01');
INSERT INTO `attentance` VALUES (496, '09:23:00', '19:03:00', 'JX00033', 'System', 1, 9.67, '2025-03-01');
INSERT INTO `attentance` VALUES (497, '09:28:00', '21:27:00', 'JX00033', 'System', 1, 11.98, '2026-03-01');
INSERT INTO `attentance` VALUES (498, '09:57:00', '21:10:00', 'JX00033', 'System', 1, 11.22, '2027-03-01');
INSERT INTO `attentance` VALUES (499, '10:13:00', '21:57:00', 'JX00033', 'System', 1, 11.73, '2028-03-01');
INSERT INTO `attentance` VALUES (500, '10:18:00', '20:57:00', 'JX00033', 'System', 1, 10.65, '2029-03-01');
INSERT INTO `attentance` VALUES (501, '09:27:00', '18:56:00', 'JX00037', 'System', 1, 9.48, '2028-02-01');
INSERT INTO `attentance` VALUES (502, '09:28:00', '09:28:00', 'JX00037', 'System', 1, 0, '2001-03-01');
INSERT INTO `attentance` VALUES (503, '09:30:00', '19:03:00', 'JX00037', 'System', 1, 9.55, '2004-03-01');
INSERT INTO `attentance` VALUES (504, '09:28:00', '21:02:00', 'JX00037', 'System', 1, 11.57, '2005-03-01');
INSERT INTO `attentance` VALUES (505, '10:17:00', '19:06:00', 'JX00037', 'System', 1, 8.82, '2006-03-01');
INSERT INTO `attentance` VALUES (506, '09:29:00', '20:40:00', 'JX00037', 'System', 1, 11.18, '2007-03-01');
INSERT INTO `attentance` VALUES (507, '10:10:00', '20:04:00', 'JX00037', 'System', 1, 9.9, '2008-03-01');
INSERT INTO `attentance` VALUES (508, '09:36:00', '14:35:00', 'JX00037', 'System', 1, 4.98, '2009-03-01');
INSERT INTO `attentance` VALUES (509, '09:26:00', '21:38:00', 'JX00037', 'System', 1, 12.2, '2011-03-01');
INSERT INTO `attentance` VALUES (510, '09:23:00', '21:19:00', 'JX00037', 'System', 1, 11.93, '2015-03-01');
INSERT INTO `attentance` VALUES (511, '09:35:00', '17:59:00', 'JX00037', 'System', 1, 8.4, '2016-03-01');
INSERT INTO `attentance` VALUES (512, '09:24:00', '21:05:00', 'JX00037', 'System', 1, 11.68, '2018-03-01');
INSERT INTO `attentance` VALUES (513, '10:03:00', '21:00:00', 'JX00037', 'System', 1, 10.95, '2019-03-01');
INSERT INTO `attentance` VALUES (514, '10:02:00', '21:55:00', 'JX00037', 'System', 1, 11.88, '2020-03-01');
INSERT INTO `attentance` VALUES (515, '10:14:00', '21:26:00', 'JX00037', 'System', 1, 11.2, '2021-03-01');
INSERT INTO `attentance` VALUES (516, '10:06:00', '20:56:00', 'JX00037', 'System', 1, 10.83, '2022-03-01');
INSERT INTO `attentance` VALUES (517, '10:21:00', '10:21:00', 'JX00037', 'System', 1, 0, '2024-03-01');
INSERT INTO `attentance` VALUES (518, '09:59:00', '21:09:00', 'JX00037', 'System', 1, 11.17, '2025-03-01');
INSERT INTO `attentance` VALUES (519, '10:05:00', '22:34:00', 'JX00037', 'System', 1, 12.48, '2026-03-01');
INSERT INTO `attentance` VALUES (520, '10:10:00', '21:08:00', 'JX00037', 'System', 1, 10.97, '2027-03-01');
INSERT INTO `attentance` VALUES (521, '10:02:00', '22:30:00', 'JX00037', 'System', 1, 12.47, '2028-03-01');
INSERT INTO `attentance` VALUES (522, '10:21:00', '20:47:00', 'JX00037', 'System', 1, 10.43, '2029-03-01');
INSERT INTO `attentance` VALUES (523, '08:51:00', '18:02:00', 'JX00050', 'System', 1, 9.18, '2028-02-01');
INSERT INTO `attentance` VALUES (524, '08:49:00', '18:51:00', 'JX00050', 'System', 1, 10.03, '2001-03-01');
INSERT INTO `attentance` VALUES (525, '08:50:00', '18:16:00', 'JX00050', 'System', 1, 9.43, '2004-03-01');
INSERT INTO `attentance` VALUES (526, '08:25:00', '18:02:00', 'JX00050', 'System', 1, 9.62, '2005-03-01');
INSERT INTO `attentance` VALUES (527, '08:54:00', '18:18:00', 'JX00050', 'System', 1, 9.4, '2006-03-01');
INSERT INTO `attentance` VALUES (528, '08:50:00', '18:16:00', 'JX00050', 'System', 1, 9.43, '2007-03-01');
INSERT INTO `attentance` VALUES (529, '08:51:00', '18:38:00', 'JX00050', 'System', 1, 9.78, '2008-03-01');
INSERT INTO `attentance` VALUES (530, '09:40:00', '09:40:00', 'JX00050', 'System', 1, 0, '2009-03-01');
INSERT INTO `attentance` VALUES (531, '08:53:00', '18:09:00', 'JX00050', 'System', 1, 9.27, '2011-03-01');
INSERT INTO `attentance` VALUES (532, '08:55:00', '18:36:00', 'JX00050', 'System', 1, 9.68, '2012-03-01');
INSERT INTO `attentance` VALUES (533, '08:51:00', '18:47:00', 'JX00050', 'System', 1, 9.93, '2013-03-01');
INSERT INTO `attentance` VALUES (534, '13:14:00', '18:54:00', 'JX00050', 'System', 1, 5.67, '2014-03-01');
INSERT INTO `attentance` VALUES (535, '08:52:00', '18:56:00', 'JX00050', 'System', 1, 10.07, '2015-03-01');
INSERT INTO `attentance` VALUES (536, '09:26:00', '18:31:00', 'JX00050', 'System', 1, 9.08, '2016-03-01');
INSERT INTO `attentance` VALUES (537, '08:45:00', '18:17:00', 'JX00050', 'System', 1, 9.53, '2018-03-01');
INSERT INTO `attentance` VALUES (538, '08:52:00', '18:48:00', 'JX00050', 'System', 1, 9.93, '2019-03-01');
INSERT INTO `attentance` VALUES (539, '08:57:00', '18:05:00', 'JX00050', 'System', 1, 9.13, '2020-03-01');
INSERT INTO `attentance` VALUES (540, '08:41:00', '18:06:00', 'JX00050', 'System', 1, 9.42, '2021-03-01');
INSERT INTO `attentance` VALUES (541, '10:49:00', '20:48:00', 'JX00050', 'System', 1, 9.98, '2022-03-01');
INSERT INTO `attentance` VALUES (542, '08:54:00', '19:12:00', 'JX00050', 'System', 1, 10.3, '2025-03-01');
INSERT INTO `attentance` VALUES (543, '08:53:00', '18:32:00', 'JX00050', 'System', 1, 9.65, '2026-03-01');
INSERT INTO `attentance` VALUES (544, '08:45:00', '20:26:00', 'JX00050', 'System', 1, 11.68, '2027-03-01');
INSERT INTO `attentance` VALUES (545, '08:49:00', '18:24:00', 'JX00050', 'System', 1, 9.58, '2028-03-01');
INSERT INTO `attentance` VALUES (546, '08:52:00', '19:12:00', 'JX00050', 'System', 1, 10.33, '2029-03-01');
INSERT INTO `attentance` VALUES (547, '09:25:00', '18:51:00', 'JX00074', 'System', 1, 9.43, '2028-02-01');
INSERT INTO `attentance` VALUES (548, '09:21:00', '20:34:00', 'JX00074', 'System', 1, 11.22, '2001-03-01');
INSERT INTO `attentance` VALUES (549, '09:22:00', '18:50:00', 'JX00074', 'System', 1, 9.47, '2004-03-01');
INSERT INTO `attentance` VALUES (550, '08:20:00', '18:59:00', 'JX00074', 'System', 1, 10.65, '2005-03-01');
INSERT INTO `attentance` VALUES (551, '09:24:00', '18:59:00', 'JX00074', 'System', 1, 9.58, '2006-03-01');
INSERT INTO `attentance` VALUES (552, '09:27:00', '18:43:00', 'JX00074', 'System', 1, 9.27, '2007-03-01');
INSERT INTO `attentance` VALUES (553, '09:19:00', '19:02:00', 'JX00074', 'System', 1, 9.72, '2008-03-01');
INSERT INTO `attentance` VALUES (554, '09:23:00', '19:24:00', 'JX00074', 'System', 1, 10.02, '2011-03-01');
INSERT INTO `attentance` VALUES (555, '09:25:00', '20:36:00', 'JX00074', 'System', 1, 11.18, '2012-03-01');
INSERT INTO `attentance` VALUES (556, '09:42:00', '21:28:00', 'JX00074', 'System', 1, 11.77, '2013-03-01');
INSERT INTO `attentance` VALUES (557, '09:35:00', '22:33:00', 'JX00074', 'System', 1, 12.97, '2014-03-01');
INSERT INTO `attentance` VALUES (558, '09:48:00', '21:18:00', 'JX00074', 'System', 1, 11.5, '2015-03-01');
INSERT INTO `attentance` VALUES (559, '09:22:00', '21:06:00', 'JX00074', 'System', 1, 11.73, '2018-03-01');
INSERT INTO `attentance` VALUES (560, '09:43:00', '20:51:00', 'JX00074', 'System', 1, 11.13, '2019-03-01');
INSERT INTO `attentance` VALUES (561, '09:41:00', '20:51:00', 'JX00074', 'System', 1, 11.17, '2020-03-01');
INSERT INTO `attentance` VALUES (562, '09:27:00', '18:47:00', 'JX00074', 'System', 1, 9.33, '2021-03-01');
INSERT INTO `attentance` VALUES (563, '09:22:00', '18:59:00', 'JX00074', 'System', 1, 9.62, '2022-03-01');
INSERT INTO `attentance` VALUES (564, '09:19:00', '18:46:00', 'JX00074', 'System', 1, 9.45, '2025-03-01');
INSERT INTO `attentance` VALUES (565, '09:24:00', '21:09:00', 'JX00074', 'System', 1, 11.75, '2026-03-01');
INSERT INTO `attentance` VALUES (566, '09:35:00', '20:50:00', 'JX00074', 'System', 1, 11.25, '2027-03-01');
INSERT INTO `attentance` VALUES (567, '09:28:00', '21:30:00', 'JX00074', 'System', 1, 12.03, '2028-03-01');
INSERT INTO `attentance` VALUES (568, '09:29:00', '20:43:00', 'JX00074', 'System', 1, 11.23, '2029-03-01');
INSERT INTO `attentance` VALUES (569, '09:31:00', '20:08:00', 'JX00078', 'System', 1, 10.62, '2028-02-01');
INSERT INTO `attentance` VALUES (570, '09:26:00', '19:02:00', 'JX00078', 'System', 1, 9.6, '2001-03-01');
INSERT INTO `attentance` VALUES (571, '09:26:00', '18:39:00', 'JX00078', 'System', 1, 9.22, '2004-03-01');
INSERT INTO `attentance` VALUES (572, '09:27:00', '18:46:00', 'JX00078', 'System', 1, 9.32, '2005-03-01');
INSERT INTO `attentance` VALUES (573, '09:27:00', '20:43:00', 'JX00078', 'System', 1, 11.27, '2006-03-01');
INSERT INTO `attentance` VALUES (574, '09:38:00', '19:00:00', 'JX00078', 'System', 1, 9.37, '2007-03-01');
INSERT INTO `attentance` VALUES (575, '09:27:00', '18:44:00', 'JX00078', 'System', 1, 9.28, '2008-03-01');
INSERT INTO `attentance` VALUES (576, '09:27:00', '18:48:00', 'JX00078', 'System', 1, 9.35, '2011-03-01');
INSERT INTO `attentance` VALUES (577, '09:38:00', '18:45:00', 'JX00078', 'System', 1, 9.12, '2012-03-01');
INSERT INTO `attentance` VALUES (578, '09:22:00', '18:52:00', 'JX00078', 'System', 1, 9.5, '2013-03-01');
INSERT INTO `attentance` VALUES (579, '09:27:00', '18:54:00', 'JX00078', 'System', 1, 9.45, '2014-03-01');
INSERT INTO `attentance` VALUES (580, '09:29:00', '19:10:00', 'JX00078', 'System', 1, 9.68, '2015-03-01');
INSERT INTO `attentance` VALUES (581, '10:03:00', '18:24:00', 'JX00078', 'System', 1, 8.35, '2016-03-01');
INSERT INTO `attentance` VALUES (582, '09:24:00', '20:59:00', 'JX00078', 'System', 1, 11.58, '2018-03-01');
INSERT INTO `attentance` VALUES (583, '09:54:00', '21:38:00', 'JX00078', 'System', 1, 11.73, '2019-03-01');
INSERT INTO `attentance` VALUES (584, '09:27:00', '18:51:00', 'JX00078', 'System', 1, 9.4, '2020-03-01');
INSERT INTO `attentance` VALUES (585, '09:22:00', '21:17:00', 'JX00078', 'System', 1, 11.92, '2021-03-01');
INSERT INTO `attentance` VALUES (586, '09:26:00', '20:47:00', 'JX00078', 'System', 1, 11.35, '2022-03-01');
INSERT INTO `attentance` VALUES (587, '10:16:00', '10:16:00', 'JX00078', 'System', 1, 0, '2024-03-01');
INSERT INTO `attentance` VALUES (588, '09:27:00', '20:37:00', 'JX00078', 'System', 1, 11.17, '2025-03-01');
INSERT INTO `attentance` VALUES (589, '10:15:00', '18:57:00', 'JX00078', 'System', 1, 8.7, '2026-03-01');
INSERT INTO `attentance` VALUES (590, '09:24:00', '21:08:00', 'JX00078', 'System', 1, 11.73, '2027-03-01');
INSERT INTO `attentance` VALUES (591, '09:27:00', '21:48:00', 'JX00078', 'System', 1, 12.35, '2028-03-01');
INSERT INTO `attentance` VALUES (592, '10:09:00', '19:58:00', 'JX00078', 'System', 1, 9.82, '2029-03-01');
INSERT INTO `attentance` VALUES (593, '09:52:00', '19:24:00', 'JX00089', 'System', 1, 9.53, '2028-02-01');
INSERT INTO `attentance` VALUES (594, '09:51:00', '18:51:00', 'JX00089', 'System', 1, 9, '2001-03-01');
INSERT INTO `attentance` VALUES (595, '09:55:00', '18:40:00', 'JX00089', 'System', 1, 8.75, '2004-03-01');
INSERT INTO `attentance` VALUES (596, '08:04:00', '18:46:00', 'JX00089', 'System', 1, 10.7, '2005-03-01');
INSERT INTO `attentance` VALUES (597, '09:51:00', '18:57:00', 'JX00089', 'System', 1, 9.1, '2006-03-01');
INSERT INTO `attentance` VALUES (598, '09:52:00', '18:55:00', 'JX00089', 'System', 1, 9.05, '2007-03-01');
INSERT INTO `attentance` VALUES (599, '09:45:00', '18:44:00', 'JX00089', 'System', 1, 8.98, '2008-03-01');
INSERT INTO `attentance` VALUES (600, '09:59:00', '20:09:00', 'JX00089', 'System', 1, 10.17, '2011-03-01');
INSERT INTO `attentance` VALUES (601, '09:49:00', '18:45:00', 'JX00089', 'System', 1, 8.93, '2012-03-01');
INSERT INTO `attentance` VALUES (602, '09:49:00', '19:12:00', 'JX00089', 'System', 1, 9.38, '2013-03-01');
INSERT INTO `attentance` VALUES (603, '09:51:00', '21:10:00', 'JX00089', 'System', 1, 11.32, '2014-03-01');
INSERT INTO `attentance` VALUES (604, '10:01:00', '22:42:00', 'JX00089', 'System', 1, 12.68, '2015-03-01');
INSERT INTO `attentance` VALUES (605, '13:01:00', '18:24:00', 'JX00089', 'System', 1, 5.38, '2016-03-01');
INSERT INTO `attentance` VALUES (606, '09:58:00', '20:49:00', 'JX00089', 'System', 1, 10.85, '2018-03-01');
INSERT INTO `attentance` VALUES (607, '10:11:00', '20:14:00', 'JX00089', 'System', 1, 10.05, '2019-03-01');
INSERT INTO `attentance` VALUES (608, '09:54:00', '19:00:00', 'JX00089', 'System', 1, 9.1, '2020-03-01');
INSERT INTO `attentance` VALUES (609, '09:57:00', '18:53:00', 'JX00089', 'System', 1, 8.93, '2021-03-01');
INSERT INTO `attentance` VALUES (610, '09:56:00', '19:32:00', 'JX00089', 'System', 1, 9.6, '2022-03-01');
INSERT INTO `attentance` VALUES (611, '09:58:00', '18:58:00', 'JX00089', 'System', 1, 9, '2025-03-01');
INSERT INTO `attentance` VALUES (612, '09:54:00', '21:13:00', 'JX00089', 'System', 1, 11.32, '2026-03-01');
INSERT INTO `attentance` VALUES (613, '10:16:00', '21:08:00', 'JX00089', 'System', 1, 10.87, '2027-03-01');
INSERT INTO `attentance` VALUES (614, '10:18:00', '22:30:00', 'JX00089', 'System', 1, 12.2, '2028-03-01');
INSERT INTO `attentance` VALUES (615, '10:17:00', '20:38:00', 'JX00089', 'System', 1, 10.35, '2029-03-01');
INSERT INTO `attentance` VALUES (616, '09:13:00', '18:58:00', 'JX00090', 'System', 1, 9.75, '2028-02-01');
INSERT INTO `attentance` VALUES (617, '09:14:00', '19:26:00', 'JX00090', 'System', 1, 10.2, '2001-03-01');
INSERT INTO `attentance` VALUES (618, '09:18:00', '19:59:00', 'JX00090', 'System', 1, 10.68, '2004-03-01');
INSERT INTO `attentance` VALUES (619, '09:07:00', '19:04:00', 'JX00090', 'System', 1, 9.95, '2005-03-01');
INSERT INTO `attentance` VALUES (620, '09:15:00', '21:07:00', 'JX00090', 'System', 1, 11.87, '2006-03-01');
INSERT INTO `attentance` VALUES (621, '09:12:00', '20:48:00', 'JX00090', 'System', 1, 11.6, '2007-03-01');
INSERT INTO `attentance` VALUES (622, '09:23:00', '20:42:00', 'JX00090', 'System', 1, 11.32, '2008-03-01');
INSERT INTO `attentance` VALUES (623, '14:46:00', '14:46:00', 'JX00090', 'System', 1, 0, '2009-03-01');
INSERT INTO `attentance` VALUES (624, '09:18:00', '20:52:00', 'JX00090', 'System', 1, 11.57, '2011-03-01');
INSERT INTO `attentance` VALUES (625, '09:13:00', '20:55:00', 'JX00090', 'System', 1, 11.7, '2012-03-01');
INSERT INTO `attentance` VALUES (626, '09:09:00', '21:11:00', 'JX00090', 'System', 1, 12.03, '2013-03-01');
INSERT INTO `attentance` VALUES (627, '09:09:00', '21:07:00', 'JX00090', 'System', 1, 11.97, '2014-03-01');
INSERT INTO `attentance` VALUES (628, '09:15:00', '20:59:00', 'JX00090', 'System', 1, 11.73, '2015-03-01');
INSERT INTO `attentance` VALUES (629, '09:21:00', '21:02:00', 'JX00090', 'System', 1, 11.68, '2018-03-01');
INSERT INTO `attentance` VALUES (630, '09:04:00', '21:07:00', 'JX00090', 'System', 1, 12.05, '2019-03-01');
INSERT INTO `attentance` VALUES (631, '09:06:00', '21:06:00', 'JX00090', 'System', 1, 12, '2020-03-01');
INSERT INTO `attentance` VALUES (632, '09:11:00', '21:06:00', 'JX00090', 'System', 1, 11.92, '2021-03-01');
INSERT INTO `attentance` VALUES (633, '09:19:00', '20:46:00', 'JX00090', 'System', 1, 11.45, '2022-03-01');
INSERT INTO `attentance` VALUES (634, '09:27:00', '20:48:00', 'JX00090', 'System', 1, 11.35, '2025-03-01');
INSERT INTO `attentance` VALUES (635, '09:12:00', '20:52:00', 'JX00090', 'System', 1, 11.67, '2026-03-01');
INSERT INTO `attentance` VALUES (636, '09:08:00', '20:48:00', 'JX00090', 'System', 1, 11.67, '2027-03-01');
INSERT INTO `attentance` VALUES (637, '09:18:00', '20:59:00', 'JX00090', 'System', 1, 11.68, '2028-03-01');
INSERT INTO `attentance` VALUES (638, '09:02:00', '18:35:00', 'JX00090', 'System', 1, 9.55, '2029-03-01');
INSERT INTO `attentance` VALUES (639, '09:17:00', '09:17:00', 'JX00095', 'System', 1, 0, '2028-02-01');
INSERT INTO `attentance` VALUES (640, '09:21:00', '09:21:00', 'JX00095', 'System', 1, 0, '2001-03-01');
INSERT INTO `attentance` VALUES (641, '19:51:00', '19:51:00', 'JX00095', 'System', 1, 0, '2004-03-01');
INSERT INTO `attentance` VALUES (642, '16:39:00', '19:46:00', 'JX00095', 'System', 1, 3.12, '2005-03-01');
INSERT INTO `attentance` VALUES (643, '09:17:00', '20:39:00', 'JX00095', 'System', 1, 11.37, '2006-03-01');
INSERT INTO `attentance` VALUES (644, '09:16:00', '19:48:00', 'JX00095', 'System', 1, 10.53, '2007-03-01');
INSERT INTO `attentance` VALUES (645, '09:12:00', '18:58:00', 'JX00095', 'System', 1, 9.77, '2008-03-01');
INSERT INTO `attentance` VALUES (646, '09:18:00', '20:35:00', 'JX00095', 'System', 1, 11.28, '2011-03-01');
INSERT INTO `attentance` VALUES (647, '08:13:00', '20:19:00', 'JX00095', 'System', 1, 12.1, '2012-03-01');
INSERT INTO `attentance` VALUES (648, '08:55:00', '22:08:00', 'JX00095', 'System', 1, 13.22, '2013-03-01');
INSERT INTO `attentance` VALUES (649, '09:12:00', '21:22:00', 'JX00095', 'System', 1, 12.17, '2014-03-01');
INSERT INTO `attentance` VALUES (650, '08:42:00', '21:13:00', 'JX00095', 'System', 1, 12.52, '2015-03-01');
INSERT INTO `attentance` VALUES (651, '09:32:00', '16:22:00', 'JX00095', 'System', 1, 6.83, '2016-03-01');
INSERT INTO `attentance` VALUES (652, '09:09:00', '20:56:00', 'JX00095', 'System', 1, 11.78, '2018-03-01');
INSERT INTO `attentance` VALUES (653, '20:38:00', '20:38:00', 'JX00095', 'System', 1, 0, '2019-03-01');
INSERT INTO `attentance` VALUES (654, '08:28:00', '20:57:00', 'JX00095', 'System', 1, 12.48, '2020-03-01');
INSERT INTO `attentance` VALUES (655, '08:48:00', '20:27:00', 'JX00095', 'System', 1, 11.65, '2021-03-01');
INSERT INTO `attentance` VALUES (656, '08:41:00', '19:31:00', 'JX00095', 'System', 1, 10.83, '2022-03-01');
INSERT INTO `attentance` VALUES (657, '08:48:00', '20:43:00', 'JX00095', 'System', 1, 11.92, '2025-03-01');
INSERT INTO `attentance` VALUES (658, '08:37:00', '20:49:00', 'JX00095', 'System', 1, 12.2, '2026-03-01');
INSERT INTO `attentance` VALUES (659, '08:50:00', '21:02:00', 'JX00095', 'System', 1, 12.2, '2027-03-01');
INSERT INTO `attentance` VALUES (660, '08:58:00', '21:33:00', 'JX00095', 'System', 1, 12.58, '2028-03-01');
INSERT INTO `attentance` VALUES (661, '08:57:00', '18:41:00', 'JX00095', 'System', 1, 9.73, '2029-03-01');
INSERT INTO `attentance` VALUES (662, '18:17:00', '19:13:00', 'JX00096', 'System', 1, 0.93, '2005-03-01');
INSERT INTO `attentance` VALUES (663, '08:50:00', '08:50:00', 'JX00096', 'System', 1, 0, '2006-03-01');
INSERT INTO `attentance` VALUES (664, '08:56:00', '19:48:00', 'JX00096', 'System', 1, 10.87, '2007-03-01');
INSERT INTO `attentance` VALUES (665, '08:55:00', '20:11:00', 'JX00096', 'System', 1, 11.27, '2008-03-01');
INSERT INTO `attentance` VALUES (666, '08:54:00', '20:07:00', 'JX00096', 'System', 1, 11.22, '2011-03-01');
INSERT INTO `attentance` VALUES (667, '08:54:00', '20:00:00', 'JX00096', 'System', 1, 11.1, '2012-03-01');
INSERT INTO `attentance` VALUES (668, '08:53:00', '21:13:00', 'JX00096', 'System', 1, 12.33, '2013-03-01');
INSERT INTO `attentance` VALUES (669, '08:56:00', '21:22:00', 'JX00096', 'System', 1, 12.43, '2014-03-01');
INSERT INTO `attentance` VALUES (670, '08:59:00', '20:27:00', 'JX00096', 'System', 1, 11.47, '2015-03-01');
INSERT INTO `attentance` VALUES (671, '08:58:00', '08:58:00', 'JX00096', 'System', 1, 0, '2018-03-01');
INSERT INTO `attentance` VALUES (672, '08:53:00', '20:18:00', 'JX00096', 'System', 1, 11.42, '2019-03-01');
INSERT INTO `attentance` VALUES (673, '08:55:00', '20:13:00', 'JX00096', 'System', 1, 11.3, '2020-03-01');
INSERT INTO `attentance` VALUES (674, '08:55:00', '19:48:00', 'JX00096', 'System', 1, 10.88, '2021-03-01');
INSERT INTO `attentance` VALUES (675, '08:53:00', '18:53:00', 'JX00096', 'System', 1, 10, '2022-03-01');
INSERT INTO `attentance` VALUES (676, '08:57:00', '21:30:00', 'JX00096', 'System', 1, 12.55, '2025-03-01');
INSERT INTO `attentance` VALUES (677, '08:53:00', '20:03:00', 'JX00096', 'System', 1, 11.17, '2026-03-01');
INSERT INTO `attentance` VALUES (678, '08:56:00', '19:17:00', 'JX00096', 'System', 1, 10.35, '2027-03-01');
INSERT INTO `attentance` VALUES (679, '08:58:00', '21:33:00', 'JX00096', 'System', 1, 12.58, '2028-03-01');
INSERT INTO `attentance` VALUES (680, '08:52:00', '18:45:00', 'JX00096', 'System', 1, 9.88, '2029-03-01');
INSERT INTO `attentance` VALUES (681, '16:41:00', '18:46:00', 'JX00097', 'System', 1, 2.08, '2005-03-01');
INSERT INTO `attentance` VALUES (682, '09:28:00', '18:51:00', 'JX00097', 'System', 1, 9.38, '2006-03-01');
INSERT INTO `attentance` VALUES (683, '09:37:00', '18:55:00', 'JX00097', 'System', 1, 9.3, '2007-03-01');
INSERT INTO `attentance` VALUES (684, '09:39:00', '18:45:00', 'JX00097', 'System', 1, 9.1, '2008-03-01');
INSERT INTO `attentance` VALUES (685, '09:50:00', '20:10:00', 'JX00097', 'System', 1, 10.33, '2011-03-01');
INSERT INTO `attentance` VALUES (686, '09:53:00', '18:46:00', 'JX00097', 'System', 1, 8.88, '2012-03-01');
INSERT INTO `attentance` VALUES (687, '09:50:00', '19:12:00', 'JX00097', 'System', 1, 9.37, '2013-03-01');
INSERT INTO `attentance` VALUES (688, '09:56:00', '19:04:00', 'JX00097', 'System', 1, 9.13, '2014-03-01');
INSERT INTO `attentance` VALUES (689, '09:50:00', '22:35:00', 'JX00097', 'System', 1, 12.75, '2015-03-01');
INSERT INTO `attentance` VALUES (690, '10:15:00', '20:49:00', 'JX00097', 'System', 1, 10.57, '2018-03-01');
INSERT INTO `attentance` VALUES (691, '10:03:00', '19:43:00', 'JX00097', 'System', 1, 9.67, '2019-03-01');
INSERT INTO `attentance` VALUES (692, '09:46:00', '18:59:00', 'JX00097', 'System', 1, 9.22, '2020-03-01');
INSERT INTO `attentance` VALUES (693, '09:54:00', '18:53:00', 'JX00097', 'System', 1, 8.98, '2021-03-01');
INSERT INTO `attentance` VALUES (694, '09:54:00', '19:10:00', 'JX00097', 'System', 1, 9.27, '2022-03-01');
INSERT INTO `attentance` VALUES (695, '09:59:00', '19:57:00', 'JX00097', 'System', 1, 9.97, '2025-03-01');
INSERT INTO `attentance` VALUES (696, '09:58:00', '19:31:00', 'JX00097', 'System', 1, 9.55, '2026-03-01');
INSERT INTO `attentance` VALUES (697, '10:01:00', '21:15:00', 'JX00097', 'System', 1, 11.23, '2027-03-01');
INSERT INTO `attentance` VALUES (698, '10:03:00', '21:50:00', 'JX00097', 'System', 1, 11.78, '2028-03-01');
INSERT INTO `attentance` VALUES (699, '10:09:00', '19:10:00', 'JX00097', 'System', 1, 9.02, '2029-03-01');
INSERT INTO `attentance` VALUES (700, '16:33:00', '18:51:00', 'JX00099', 'System', 1, 2.3, '2005-03-01');
INSERT INTO `attentance` VALUES (701, '09:21:00', '18:57:00', 'JX00099', 'System', 1, 9.6, '2006-03-01');
INSERT INTO `attentance` VALUES (702, '09:20:00', '19:00:00', 'JX00099', 'System', 1, 9.67, '2007-03-01');
INSERT INTO `attentance` VALUES (703, '09:21:00', '19:09:00', 'JX00099', 'System', 1, 9.8, '2008-03-01');
INSERT INTO `attentance` VALUES (704, '09:18:00', '19:29:00', 'JX00099', 'System', 1, 10.18, '2011-03-01');
INSERT INTO `attentance` VALUES (705, '09:23:00', '18:35:00', 'JX00099', 'System', 1, 9.2, '2012-03-01');
INSERT INTO `attentance` VALUES (706, '09:17:00', '18:46:00', 'JX00099', 'System', 1, 9.48, '2013-03-01');
INSERT INTO `attentance` VALUES (707, '09:25:00', '18:43:00', 'JX00099', 'System', 1, 9.3, '2014-03-01');
INSERT INTO `attentance` VALUES (708, '09:18:00', '18:46:00', 'JX00099', 'System', 1, 9.47, '2015-03-01');
INSERT INTO `attentance` VALUES (709, '09:19:00', '19:55:00', 'JX00099', 'System', 1, 10.6, '2018-03-01');
INSERT INTO `attentance` VALUES (710, '09:20:00', '18:50:00', 'JX00099', 'System', 1, 9.5, '2019-03-01');
INSERT INTO `attentance` VALUES (711, '09:22:00', '18:45:00', 'JX00099', 'System', 1, 9.38, '2020-03-01');
INSERT INTO `attentance` VALUES (712, '09:24:00', '18:49:00', 'JX00099', 'System', 1, 9.42, '2021-03-01');
INSERT INTO `attentance` VALUES (713, '09:24:00', '21:02:00', 'JX00099', 'System', 1, 11.63, '2022-03-01');
INSERT INTO `attentance` VALUES (714, '13:18:00', '22:10:00', 'JX00099', 'System', 1, 8.87, '2024-03-01');
INSERT INTO `attentance` VALUES (715, '09:25:00', '19:19:00', 'JX00099', 'System', 1, 9.9, '2025-03-01');
INSERT INTO `attentance` VALUES (716, '09:26:00', '19:00:00', 'JX00099', 'System', 1, 9.57, '2026-03-01');
INSERT INTO `attentance` VALUES (717, '09:25:00', '19:45:00', 'JX00099', 'System', 1, 10.33, '2027-03-01');
INSERT INTO `attentance` VALUES (718, '18:55:00', '19:04:00', 'JX00103', 'System', 1, 0.15, '2020-03-01');
INSERT INTO `attentance` VALUES (719, '08:58:00', '19:06:00', 'JX00103', 'System', 1, 10.13, '2021-03-01');
INSERT INTO `attentance` VALUES (720, '08:53:00', '19:04:00', 'JX00103', 'System', 1, 10.18, '2022-03-01');
INSERT INTO `attentance` VALUES (721, '08:55:00', '19:22:00', 'JX00103', 'System', 1, 10.45, '2025-03-01');
INSERT INTO `attentance` VALUES (722, '09:08:00', '19:43:00', 'JX00103', 'System', 1, 10.58, '2026-03-01');
INSERT INTO `attentance` VALUES (723, '09:21:00', '19:05:00', 'JX00103', 'System', 1, 9.73, '2027-03-01');
INSERT INTO `attentance` VALUES (724, '09:04:00', '18:53:00', 'JX00103', 'System', 1, 9.82, '2028-03-01');
INSERT INTO `attentance` VALUES (725, '09:08:00', '19:41:00', 'JX00103', 'System', 1, 10.55, '2029-03-01');
INSERT INTO `attentance` VALUES (726, '09:30:00', '19:33:00', 'JX00006', 'System', 1, 10.05, '2028-02-01');
INSERT INTO `attentance` VALUES (727, '09:23:00', '19:18:00', 'JX00006', 'System', 1, 9.92, '2001-03-01');
INSERT INTO `attentance` VALUES (728, '12:54:00', '18:35:00', 'JX00006', 'System', 1, 5.68, '2002-03-01');
INSERT INTO `attentance` VALUES (729, '09:21:00', '18:38:00', 'JX00006', 'System', 1, 9.28, '2004-03-01');
INSERT INTO `attentance` VALUES (730, '09:25:00', '19:27:00', 'JX00006', 'System', 1, 10.03, '2005-03-01');
INSERT INTO `attentance` VALUES (731, '09:21:00', '18:54:00', 'JX00006', 'System', 1, 9.55, '2006-03-01');
INSERT INTO `attentance` VALUES (732, '09:26:00', '18:53:00', 'JX00006', 'System', 1, 9.45, '2007-03-01');
INSERT INTO `attentance` VALUES (733, '09:14:00', '18:43:00', 'JX00006', 'System', 1, 9.48, '2008-03-01');
INSERT INTO `attentance` VALUES (734, '09:19:00', '19:08:00', 'JX00006', 'System', 1, 9.82, '2011-03-01');
INSERT INTO `attentance` VALUES (735, '09:14:00', '19:30:00', 'JX00006', 'System', 1, 10.27, '2012-03-01');
INSERT INTO `attentance` VALUES (736, '09:19:00', '20:41:00', 'JX00006', 'System', 1, 11.37, '2013-03-01');
INSERT INTO `attentance` VALUES (737, '09:55:00', '19:12:00', 'JX00006', 'System', 1, 9.28, '2014-03-01');
INSERT INTO `attentance` VALUES (738, '09:23:00', '19:08:00', 'JX00006', 'System', 1, 9.75, '2015-03-01');
INSERT INTO `attentance` VALUES (739, '09:52:00', '12:26:00', 'JX00006', 'System', 1, 2.57, '2016-03-01');
INSERT INTO `attentance` VALUES (740, '09:16:00', '19:17:00', 'JX00006', 'System', 1, 10.02, '2018-03-01');
INSERT INTO `attentance` VALUES (741, '09:14:00', '19:44:00', 'JX00006', 'System', 1, 10.5, '2019-03-01');
INSERT INTO `attentance` VALUES (742, '09:12:00', '19:24:00', 'JX00006', 'System', 1, 10.2, '2020-03-01');
INSERT INTO `attentance` VALUES (743, '09:25:00', '19:30:00', 'JX00006', 'System', 1, 10.08, '2021-03-01');
INSERT INTO `attentance` VALUES (744, '09:21:00', '20:39:00', 'JX00006', 'System', 1, 11.3, '2022-03-01');
INSERT INTO `attentance` VALUES (745, '09:20:00', '19:57:00', 'JX00006', 'System', 1, 10.62, '2025-03-01');
INSERT INTO `attentance` VALUES (746, '09:24:00', '21:19:00', 'JX00006', 'System', 1, 11.92, '2026-03-01');
INSERT INTO `attentance` VALUES (747, '09:22:00', '21:33:00', 'JX00006', 'System', 1, 12.18, '2027-03-01');
INSERT INTO `attentance` VALUES (748, '09:04:00', '18:58:00', 'JX00006', 'System', 1, 9.9, '2028-03-01');
INSERT INTO `attentance` VALUES (749, '09:52:00', '09:52:00', 'JX00006', 'System', 1, 0, '2029-03-01');
INSERT INTO `attentance` VALUES (750, '10:14:00', '19:25:00', 'JX00024', 'System', 1, 9.18, '2028-02-01');
INSERT INTO `attentance` VALUES (751, '09:43:00', '19:29:00', 'JX00024', 'System', 1, 9.77, '2001-03-01');
INSERT INTO `attentance` VALUES (752, '19:33:00', '19:33:00', 'JX00024', 'System', 1, 0, '2005-03-01');
INSERT INTO `attentance` VALUES (753, '09:56:00', '19:10:00', 'JX00024', 'System', 1, 9.23, '2006-03-01');
INSERT INTO `attentance` VALUES (754, '09:52:00', '12:54:00', 'JX00024', 'System', 1, 3.03, '2007-03-01');
INSERT INTO `attentance` VALUES (755, '09:40:00', '09:40:00', 'JX00024', 'System', 1, 0, '2009-03-01');
INSERT INTO `attentance` VALUES (756, '09:32:00', '19:48:00', 'JX00024', 'System', 1, 10.27, '2011-03-01');
INSERT INTO `attentance` VALUES (757, '09:53:00', '09:53:00', 'JX00024', 'System', 1, 0, '2012-03-01');
INSERT INTO `attentance` VALUES (758, '09:35:00', '20:19:00', 'JX00024', 'System', 1, 10.73, '2013-03-01');
INSERT INTO `attentance` VALUES (759, '15:23:00', '19:47:00', 'JX00024', 'System', 1, 4.4, '2014-03-01');
INSERT INTO `attentance` VALUES (760, '09:44:00', '19:34:00', 'JX00024', 'System', 1, 9.83, '2015-03-01');
INSERT INTO `attentance` VALUES (761, '09:49:00', '09:49:00', 'JX00024', 'System', 1, 0, '2018-03-01');
INSERT INTO `attentance` VALUES (762, '09:50:00', '19:10:00', 'JX00024', 'System', 1, 9.33, '2019-03-01');
INSERT INTO `attentance` VALUES (763, '09:47:00', '17:10:00', 'JX00024', 'System', 1, 7.38, '2020-03-01');
INSERT INTO `attentance` VALUES (764, '09:45:00', '20:36:00', 'JX00024', 'System', 1, 10.85, '2021-03-01');
INSERT INTO `attentance` VALUES (765, '10:18:00', '20:43:00', 'JX00024', 'System', 1, 10.42, '2022-03-01');
INSERT INTO `attentance` VALUES (766, '09:44:00', '20:32:00', 'JX00024', 'System', 1, 10.8, '2025-03-01');
INSERT INTO `attentance` VALUES (767, '10:27:00', '19:25:00', 'JX00024', 'System', 1, 8.97, '2026-03-01');
INSERT INTO `attentance` VALUES (768, '09:48:00', '19:45:00', 'JX00024', 'System', 1, 9.95, '2027-03-01');
INSERT INTO `attentance` VALUES (769, '10:04:00', '17:33:00', 'JX00024', 'System', 1, 7.48, '2028-03-01');
INSERT INTO `attentance` VALUES (770, '09:26:00', '20:30:00', 'JX00064', 'System', 1, 11.07, '2028-02-01');
INSERT INTO `attentance` VALUES (771, '10:17:00', '20:44:00', 'JX00064', 'System', 1, 10.45, '2001-03-01');
INSERT INTO `attentance` VALUES (772, '09:27:00', '19:00:00', 'JX00064', 'System', 1, 9.55, '2004-03-01');
INSERT INTO `attentance` VALUES (773, '09:25:00', '20:31:00', 'JX00064', 'System', 1, 11.1, '2005-03-01');
INSERT INTO `attentance` VALUES (774, '10:31:00', '19:15:00', 'JX00064', 'System', 1, 8.73, '2006-03-01');
INSERT INTO `attentance` VALUES (775, '09:57:00', '18:58:00', 'JX00064', 'System', 1, 9.02, '2007-03-01');
INSERT INTO `attentance` VALUES (776, '09:30:00', '09:30:00', 'JX00064', 'System', 1, 0, '2008-03-01');
INSERT INTO `attentance` VALUES (777, '09:29:00', '19:06:00', 'JX00064', 'System', 1, 9.62, '2011-03-01');
INSERT INTO `attentance` VALUES (778, '09:29:00', '19:35:00', 'JX00064', 'System', 1, 10.1, '2012-03-01');
INSERT INTO `attentance` VALUES (779, '09:29:00', '20:41:00', 'JX00064', 'System', 1, 11.2, '2013-03-01');
INSERT INTO `attentance` VALUES (780, '10:26:00', '20:30:00', 'JX00064', 'System', 1, 10.07, '2014-03-01');
INSERT INTO `attentance` VALUES (781, '10:29:00', '21:29:00', 'JX00064', 'System', 1, 11, '2015-03-01');
INSERT INTO `attentance` VALUES (782, '09:29:00', '19:22:00', 'JX00064', 'System', 1, 9.88, '2018-03-01');
INSERT INTO `attentance` VALUES (783, '09:30:00', '19:14:00', 'JX00064', 'System', 1, 9.73, '2019-03-01');
INSERT INTO `attentance` VALUES (784, '09:42:00', '19:26:00', 'JX00064', 'System', 1, 9.73, '2020-03-01');
INSERT INTO `attentance` VALUES (785, '09:30:00', '21:10:00', 'JX00064', 'System', 1, 11.67, '2021-03-01');
INSERT INTO `attentance` VALUES (786, '21:25:00', '21:25:00', 'JX00064', 'System', 1, 0, '2022-03-01');
INSERT INTO `attentance` VALUES (787, '10:00:00', '21:27:00', 'JX00064', 'System', 1, 11.45, '2025-03-01');
INSERT INTO `attentance` VALUES (788, '10:29:00', '22:30:00', 'JX00064', 'System', 1, 12.02, '2026-03-01');
INSERT INTO `attentance` VALUES (789, '10:29:00', '10:29:00', 'JX00064', 'System', 1, 0, '2027-03-01');
INSERT INTO `attentance` VALUES (790, '03:10:00', '19:56:00', 'JX00064', 'System', 1, 16.77, '2028-03-01');
INSERT INTO `attentance` VALUES (791, '09:29:00', '19:06:00', 'JX00064', 'System', 1, 9.62, '2029-03-01');
INSERT INTO `attentance` VALUES (792, '09:53:00', '18:48:00', 'JX00020', 'System', 1, 8.92, '2028-02-01');
INSERT INTO `attentance` VALUES (793, '09:50:00', '19:21:00', 'JX00020', 'System', 1, 9.52, '2001-03-01');
INSERT INTO `attentance` VALUES (794, '12:05:00', '19:02:00', 'JX00020', 'System', 1, 6.95, '2004-03-01');
INSERT INTO `attentance` VALUES (795, '09:49:00', '18:52:00', 'JX00020', 'System', 1, 9.05, '2005-03-01');
INSERT INTO `attentance` VALUES (796, '09:43:00', '19:48:00', 'JX00020', 'System', 1, 10.08, '2006-03-01');
INSERT INTO `attentance` VALUES (797, '09:54:00', '20:24:00', 'JX00020', 'System', 1, 10.5, '2007-03-01');
INSERT INTO `attentance` VALUES (798, '09:43:00', '20:32:00', 'JX00020', 'System', 1, 10.82, '2008-03-01');
INSERT INTO `attentance` VALUES (799, '09:49:00', '19:15:00', 'JX00020', 'System', 1, 9.43, '2011-03-01');
INSERT INTO `attentance` VALUES (800, '09:59:00', '20:03:00', 'JX00020', 'System', 1, 10.07, '2012-03-01');
INSERT INTO `attentance` VALUES (801, '09:43:00', '20:00:00', 'JX00020', 'System', 1, 10.28, '2013-03-01');
INSERT INTO `attentance` VALUES (802, '09:40:00', '20:39:00', 'JX00020', 'System', 1, 10.98, '2014-03-01');
INSERT INTO `attentance` VALUES (803, '09:52:00', '19:29:00', 'JX00020', 'System', 1, 9.62, '2015-03-01');
INSERT INTO `attentance` VALUES (804, '09:52:00', '20:22:00', 'JX00020', 'System', 1, 10.5, '2016-03-01');
INSERT INTO `attentance` VALUES (805, '09:48:00', '19:45:00', 'JX00020', 'System', 1, 9.95, '2018-03-01');
INSERT INTO `attentance` VALUES (806, '09:37:00', '09:37:00', 'JX00020', 'System', 1, 0, '2019-03-01');
INSERT INTO `attentance` VALUES (807, '09:38:00', '18:48:00', 'JX00020', 'System', 1, 9.17, '2021-03-01');
INSERT INTO `attentance` VALUES (808, '09:40:00', '21:01:00', 'JX00020', 'System', 1, 11.35, '2022-03-01');
INSERT INTO `attentance` VALUES (809, '09:48:00', '19:06:00', 'JX00020', 'System', 1, 9.3, '2025-03-01');
INSERT INTO `attentance` VALUES (810, '09:48:00', '19:55:00', 'JX00020', 'System', 1, 10.12, '2026-03-01');
INSERT INTO `attentance` VALUES (811, '09:38:00', '18:55:00', 'JX00020', 'System', 1, 9.28, '2027-03-01');
INSERT INTO `attentance` VALUES (812, '09:48:00', '19:38:00', 'JX00020', 'System', 1, 9.83, '2028-03-01');
INSERT INTO `attentance` VALUES (813, '09:38:00', '20:25:00', 'JX00020', 'System', 1, 10.78, '2029-03-01');
INSERT INTO `attentance` VALUES (814, '09:39:00', '18:51:00', 'JX00042', 'System', 1, 9.2, '2028-02-01');
INSERT INTO `attentance` VALUES (815, '09:50:00', '19:44:00', 'JX00042', 'System', 1, 9.9, '2001-03-01');
INSERT INTO `attentance` VALUES (816, '09:54:00', '18:46:00', 'JX00042', 'System', 1, 8.87, '2004-03-01');
INSERT INTO `attentance` VALUES (817, '09:49:00', '19:00:00', 'JX00042', 'System', 1, 9.18, '2005-03-01');
INSERT INTO `attentance` VALUES (818, '09:40:00', '19:40:00', 'JX00042', 'System', 1, 10, '2006-03-01');
INSERT INTO `attentance` VALUES (819, '09:54:00', '18:59:00', 'JX00042', 'System', 1, 9.08, '2007-03-01');
INSERT INTO `attentance` VALUES (820, '09:43:00', '18:49:00', 'JX00042', 'System', 1, 9.1, '2008-03-01');
INSERT INTO `attentance` VALUES (821, '09:49:00', '19:09:00', 'JX00042', 'System', 1, 9.33, '2011-03-01');
INSERT INTO `attentance` VALUES (822, '10:00:00', '19:13:00', 'JX00042', 'System', 1, 9.22, '2012-03-01');
INSERT INTO `attentance` VALUES (823, '09:48:00', '20:49:00', 'JX00042', 'System', 1, 11.02, '2013-03-01');
INSERT INTO `attentance` VALUES (824, '10:17:00', '19:53:00', 'JX00042', 'System', 1, 9.6, '2014-03-01');
INSERT INTO `attentance` VALUES (825, '09:52:00', '19:10:00', 'JX00042', 'System', 1, 9.3, '2015-03-01');
INSERT INTO `attentance` VALUES (826, '09:45:00', '13:24:00', 'JX00042', 'System', 1, 3.65, '2018-03-01');
INSERT INTO `attentance` VALUES (827, '09:54:00', '19:19:00', 'JX00042', 'System', 1, 9.42, '2019-03-01');
INSERT INTO `attentance` VALUES (828, '09:57:00', '19:03:00', 'JX00042', 'System', 1, 9.1, '2020-03-01');
INSERT INTO `attentance` VALUES (829, '09:59:00', '19:08:00', 'JX00042', 'System', 1, 9.15, '2021-03-01');
INSERT INTO `attentance` VALUES (830, '09:58:00', '19:13:00', 'JX00042', 'System', 1, 9.25, '2022-03-01');
INSERT INTO `attentance` VALUES (831, '09:49:00', '20:43:00', 'JX00042', 'System', 1, 10.9, '2025-03-01');
INSERT INTO `attentance` VALUES (832, '10:44:00', '20:54:00', 'JX00042', 'System', 1, 10.17, '2026-03-01');
INSERT INTO `attentance` VALUES (833, '10:40:00', '20:50:00', 'JX00042', 'System', 1, 10.17, '2027-03-01');
INSERT INTO `attentance` VALUES (834, '10:18:00', '20:56:00', 'JX00042', 'System', 1, 10.63, '2028-03-01');
INSERT INTO `attentance` VALUES (835, '10:20:00', '20:50:00', 'JX00042', 'System', 1, 10.5, '2029-03-01');
INSERT INTO `attentance` VALUES (836, '09:27:00', '18:51:00', 'JX00053', 'System', 1, 9.4, '2028-02-01');
INSERT INTO `attentance` VALUES (837, '09:29:00', '19:21:00', 'JX00053', 'System', 1, 9.87, '2001-03-01');
INSERT INTO `attentance` VALUES (838, '09:30:00', '18:47:00', 'JX00053', 'System', 1, 9.28, '2004-03-01');
INSERT INTO `attentance` VALUES (839, '09:28:00', '19:00:00', 'JX00053', 'System', 1, 9.53, '2005-03-01');
INSERT INTO `attentance` VALUES (840, '11:52:00', '19:14:00', 'JX00053', 'System', 1, 7.37, '2006-03-01');
INSERT INTO `attentance` VALUES (841, '09:29:00', '19:00:00', 'JX00053', 'System', 1, 9.52, '2007-03-01');
INSERT INTO `attentance` VALUES (842, '09:29:00', '19:08:00', 'JX00053', 'System', 1, 9.65, '2008-03-01');
INSERT INTO `attentance` VALUES (843, '09:30:00', '19:17:00', 'JX00053', 'System', 1, 9.78, '2011-03-01');
INSERT INTO `attentance` VALUES (844, '09:26:00', '19:03:00', 'JX00053', 'System', 1, 9.62, '2012-03-01');
INSERT INTO `attentance` VALUES (845, '09:26:00', '20:47:00', 'JX00053', 'System', 1, 11.35, '2013-03-01');
INSERT INTO `attentance` VALUES (846, '09:53:00', '21:01:00', 'JX00053', 'System', 1, 11.13, '2014-03-01');
INSERT INTO `attentance` VALUES (847, '10:19:00', '19:03:00', 'JX00053', 'System', 1, 8.73, '2015-03-01');
INSERT INTO `attentance` VALUES (848, '09:37:00', '13:42:00', 'JX00053', 'System', 1, 4.08, '2016-03-01');
INSERT INTO `attentance` VALUES (849, '12:29:00', '18:55:00', 'JX00053', 'System', 1, 6.43, '2018-03-01');
INSERT INTO `attentance` VALUES (850, '09:20:00', '20:47:00', 'JX00053', 'System', 1, 11.45, '2019-03-01');
INSERT INTO `attentance` VALUES (851, '10:09:00', '20:39:00', 'JX00053', 'System', 1, 10.5, '2020-03-01');
INSERT INTO `attentance` VALUES (852, '10:11:00', '21:03:00', 'JX00053', 'System', 1, 10.87, '2021-03-01');
INSERT INTO `attentance` VALUES (853, '10:04:00', '21:56:00', 'JX00053', 'System', 1, 11.87, '2022-03-01');
INSERT INTO `attentance` VALUES (854, '09:31:00', '19:19:00', 'JX00053', 'System', 1, 9.8, '2025-03-01');
INSERT INTO `attentance` VALUES (855, '09:27:00', '19:49:00', 'JX00053', 'System', 1, 10.37, '2026-03-01');
INSERT INTO `attentance` VALUES (856, '09:28:00', '20:49:00', 'JX00053', 'System', 1, 11.35, '2027-03-01');
INSERT INTO `attentance` VALUES (857, '09:49:00', '23:24:00', 'JX00053', 'System', 1, 13.58, '2028-03-01');
INSERT INTO `attentance` VALUES (858, '09:54:00', '21:01:00', 'JX00053', 'System', 1, 11.12, '2029-03-01');
INSERT INTO `attentance` VALUES (859, '09:49:00', '19:19:00', 'JX00071', 'System', 1, 9.5, '2028-02-01');
INSERT INTO `attentance` VALUES (860, '09:54:00', '18:34:00', 'JX00071', 'System', 1, 8.67, '2001-03-01');
INSERT INTO `attentance` VALUES (861, '09:59:00', '19:14:00', 'JX00071', 'System', 1, 9.25, '2004-03-01');
INSERT INTO `attentance` VALUES (862, '10:00:00', '20:31:00', 'JX00071', 'System', 1, 10.52, '2005-03-01');
INSERT INTO `attentance` VALUES (863, '10:16:00', '19:15:00', 'JX00071', 'System', 1, 8.98, '2006-03-01');
INSERT INTO `attentance` VALUES (864, '10:00:00', '18:57:00', 'JX00071', 'System', 1, 8.95, '2007-03-01');
INSERT INTO `attentance` VALUES (865, '09:59:00', '12:13:00', 'JX00071', 'System', 1, 2.23, '2008-03-01');
INSERT INTO `attentance` VALUES (866, '09:51:00', '19:06:00', 'JX00071', 'System', 1, 9.25, '2011-03-01');
INSERT INTO `attentance` VALUES (867, '09:55:00', '18:40:00', 'JX00071', 'System', 1, 8.75, '2012-03-01');
INSERT INTO `attentance` VALUES (868, '13:31:00', '18:51:00', 'JX00071', 'System', 1, 5.33, '2014-03-01');
INSERT INTO `attentance` VALUES (869, '09:57:00', '19:49:00', 'JX00071', 'System', 1, 9.87, '2015-03-01');
INSERT INTO `attentance` VALUES (870, '09:55:00', '19:30:00', 'JX00071', 'System', 1, 9.58, '2018-03-01');
INSERT INTO `attentance` VALUES (871, '10:00:00', '19:14:00', 'JX00071', 'System', 1, 9.23, '2019-03-01');
INSERT INTO `attentance` VALUES (872, '09:57:00', '19:25:00', 'JX00071', 'System', 1, 9.47, '2020-03-01');
INSERT INTO `attentance` VALUES (873, '09:51:00', '18:59:00', 'JX00071', 'System', 1, 9.13, '2021-03-01');
INSERT INTO `attentance` VALUES (874, '09:56:00', '18:45:00', 'JX00071', 'System', 1, 8.82, '2022-03-01');
INSERT INTO `attentance` VALUES (875, '09:57:00', '19:05:00', 'JX00071', 'System', 1, 9.13, '2025-03-01');
INSERT INTO `attentance` VALUES (876, '09:54:00', '19:00:00', 'JX00071', 'System', 1, 9.1, '2026-03-01');
INSERT INTO `attentance` VALUES (877, '09:48:00', '19:07:00', 'JX00071', 'System', 1, 9.32, '2027-03-01');
INSERT INTO `attentance` VALUES (878, '09:58:00', '18:55:00', 'JX00071', 'System', 1, 8.95, '2028-03-01');
INSERT INTO `attentance` VALUES (879, '10:00:00', '19:03:00', 'JX00071', 'System', 1, 9.05, '2029-03-01');
INSERT INTO `attentance` VALUES (880, '09:49:00', '18:35:00', 'JX00072', 'System', 1, 8.77, '2028-02-01');
INSERT INTO `attentance` VALUES (881, '09:54:00', '19:20:00', 'JX00072', 'System', 1, 9.43, '2001-03-01');
INSERT INTO `attentance` VALUES (882, '09:59:00', '18:43:00', 'JX00072', 'System', 1, 8.73, '2004-03-01');
INSERT INTO `attentance` VALUES (883, '09:53:00', '18:49:00', 'JX00072', 'System', 1, 8.93, '2005-03-01');
INSERT INTO `attentance` VALUES (884, '09:55:00', '19:14:00', 'JX00072', 'System', 1, 9.32, '2006-03-01');
INSERT INTO `attentance` VALUES (885, '09:53:00', '18:55:00', 'JX00072', 'System', 1, 9.03, '2007-03-01');
INSERT INTO `attentance` VALUES (886, '09:59:00', '12:50:00', 'JX00072', 'System', 1, 2.85, '2008-03-01');
INSERT INTO `attentance` VALUES (887, '09:25:00', '19:17:00', 'JX00072', 'System', 1, 9.87, '2011-03-01');
INSERT INTO `attentance` VALUES (888, '09:23:00', '19:04:00', 'JX00072', 'System', 1, 9.68, '2012-03-01');
INSERT INTO `attentance` VALUES (889, '09:26:00', '20:47:00', 'JX00072', 'System', 1, 11.35, '2013-03-01');
INSERT INTO `attentance` VALUES (890, '10:20:00', '20:57:00', 'JX00072', 'System', 1, 10.62, '2014-03-01');
INSERT INTO `attentance` VALUES (891, '10:22:00', '19:03:00', 'JX00072', 'System', 1, 8.68, '2015-03-01');
INSERT INTO `attentance` VALUES (892, '09:28:00', '18:55:00', 'JX00072', 'System', 1, 9.45, '2018-03-01');
INSERT INTO `attentance` VALUES (893, '09:27:00', '20:47:00', 'JX00072', 'System', 1, 11.33, '2019-03-01');
INSERT INTO `attentance` VALUES (894, '10:24:00', '20:39:00', 'JX00072', 'System', 1, 10.25, '2020-03-01');
INSERT INTO `attentance` VALUES (895, '10:21:00', '21:02:00', 'JX00072', 'System', 1, 10.68, '2021-03-01');
INSERT INTO `attentance` VALUES (896, '10:16:00', '18:55:00', 'JX00072', 'System', 1, 8.65, '2022-03-01');
INSERT INTO `attentance` VALUES (897, '09:25:00', '19:19:00', 'JX00072', 'System', 1, 9.9, '2025-03-01');
INSERT INTO `attentance` VALUES (898, '09:27:00', '19:49:00', 'JX00072', 'System', 1, 10.37, '2026-03-01');
INSERT INTO `attentance` VALUES (899, '09:26:00', '20:49:00', 'JX00072', 'System', 1, 11.38, '2027-03-01');
INSERT INTO `attentance` VALUES (900, '10:12:00', '21:52:00', 'JX00072', 'System', 1, 11.67, '2028-03-01');
INSERT INTO `attentance` VALUES (901, '10:20:00', '21:01:00', 'JX00072', 'System', 1, 10.68, '2029-03-01');
INSERT INTO `attentance` VALUES (902, '09:32:00', '18:37:00', 'JX00082', 'System', 1, 9.08, '2004-03-01');
INSERT INTO `attentance` VALUES (903, '11:33:00', '18:38:00', 'JX00082', 'System', 1, 7.08, '2005-03-01');
INSERT INTO `attentance` VALUES (904, '18:40:00', '18:40:00', 'JX00082', 'System', 1, 0, '2006-03-01');
INSERT INTO `attentance` VALUES (905, '09:27:00', '18:31:00', 'JX00082', 'System', 1, 9.07, '2008-03-01');
INSERT INTO `attentance` VALUES (906, '09:24:00', '19:17:00', 'JX00082', 'System', 1, 9.88, '2011-03-01');
INSERT INTO `attentance` VALUES (907, '10:45:00', '10:45:00', 'JX00082', 'System', 1, 0, '2012-03-01');
INSERT INTO `attentance` VALUES (908, '09:30:00', '18:34:00', 'JX00082', 'System', 1, 9.07, '2013-03-01');
INSERT INTO `attentance` VALUES (909, '18:40:00', '18:40:00', 'JX00082', 'System', 1, 0, '2014-03-01');
INSERT INTO `attentance` VALUES (910, '18:37:00', '18:37:00', 'JX00082', 'System', 1, 0, '2015-03-01');
INSERT INTO `attentance` VALUES (911, '19:44:00', '19:44:00', 'JX00082', 'System', 1, 0, '2018-03-01');
INSERT INTO `attentance` VALUES (912, '15:35:00', '15:35:00', 'JX00082', 'System', 1, 0, '2019-03-01');
INSERT INTO `attentance` VALUES (913, '09:34:00', '09:34:00', 'JX00082', 'System', 1, 0, '2020-03-01');
INSERT INTO `attentance` VALUES (914, '18:34:00', '18:34:00', 'JX00082', 'System', 1, 0, '2022-03-01');
INSERT INTO `attentance` VALUES (915, '09:39:00', '09:39:00', 'JX00082', 'System', 1, 0, '2025-03-01');
INSERT INTO `attentance` VALUES (916, '18:53:00', '18:53:00', 'JX00082', 'System', 1, 0, '2026-03-01');
INSERT INTO `attentance` VALUES (917, '09:39:00', '09:39:00', 'JX00082', 'System', 1, 0, '2027-03-01');
INSERT INTO `attentance` VALUES (918, '10:09:00', '18:37:00', 'JX00087', 'System', 1, 8.47, '2004-03-01');
INSERT INTO `attentance` VALUES (919, '09:53:00', '16:44:00', 'JX00087', 'System', 1, 6.85, '2005-03-01');
INSERT INTO `attentance` VALUES (920, '09:55:00', '18:39:00', 'JX00087', 'System', 1, 8.73, '2006-03-01');
INSERT INTO `attentance` VALUES (921, '10:07:00', '11:55:00', 'JX00087', 'System', 1, 1.8, '2011-03-01');
INSERT INTO `attentance` VALUES (922, '10:00:00', '17:02:00', 'JX00087', 'System', 1, 7.03, '2012-03-01');
INSERT INTO `attentance` VALUES (923, '09:54:00', '15:04:00', 'JX00087', 'System', 1, 5.17, '2013-03-01');
INSERT INTO `attentance` VALUES (924, '09:59:00', '18:39:00', 'JX00087', 'System', 1, 8.67, '2018-03-01');
INSERT INTO `attentance` VALUES (925, '09:47:00', '11:47:00', 'JX00087', 'System', 1, 2, '2019-03-01');
INSERT INTO `attentance` VALUES (926, '10:02:00', '15:46:00', 'JX00087', 'System', 1, 5.73, '2022-03-01');
INSERT INTO `attentance` VALUES (927, '10:12:00', '18:35:00', 'JX00087', 'System', 1, 8.38, '2025-03-01');
INSERT INTO `attentance` VALUES (928, '09:56:00', '18:36:00', 'JX00087', 'System', 1, 8.67, '2026-03-01');
INSERT INTO `attentance` VALUES (929, '09:51:00', '09:51:00', 'JX00087', 'System', 1, 0, '2029-03-01');
INSERT INTO `attentance` VALUES (930, '10:16:00', '18:40:00', 'JX00086', 'System', 1, 8.4, '2004-03-01');
INSERT INTO `attentance` VALUES (931, '12:12:00', '20:24:00', 'JX00086', 'System', 1, 8.2, '2007-03-01');
INSERT INTO `attentance` VALUES (932, '10:35:00', '20:25:00', 'JX00086', 'System', 1, 9.83, '2011-03-01');
INSERT INTO `attentance` VALUES (933, '10:32:00', '10:32:00', 'JX00086', 'System', 1, 0, '2012-03-01');
INSERT INTO `attentance` VALUES (934, '10:24:00', '19:39:00', 'JX00086', 'System', 1, 9.25, '2013-03-01');
INSERT INTO `attentance` VALUES (935, '10:45:00', '18:49:00', 'JX00086', 'System', 1, 8.07, '2014-03-01');
INSERT INTO `attentance` VALUES (936, '10:07:00', '18:45:00', 'JX00086', 'System', 1, 8.63, '2019-03-01');
INSERT INTO `attentance` VALUES (937, '10:16:00', '19:49:00', 'JX00086', 'System', 1, 9.55, '2020-03-01');
INSERT INTO `attentance` VALUES (938, '10:40:00', '17:25:00', 'JX00086', 'System', 1, 6.75, '2025-03-01');
INSERT INTO `attentance` VALUES (939, '13:41:00', '15:12:00', 'JX00098', 'System', 1, 1.52, '2005-03-01');
INSERT INTO `attentance` VALUES (940, '07:59:00', '23:14:00', 'JX00098', 'System', 1, 15.25, '2006-03-01');
INSERT INTO `attentance` VALUES (941, '08:06:00', '19:35:00', 'JX00098', 'System', 1, 11.48, '2007-03-01');
INSERT INTO `attentance` VALUES (942, '07:53:00', '13:00:00', 'JX00098', 'System', 1, 5.12, '2008-03-01');
INSERT INTO `attentance` VALUES (943, '07:54:00', '19:22:00', 'JX00098', 'System', 1, 11.47, '2011-03-01');
INSERT INTO `attentance` VALUES (944, '07:25:00', '18:58:00', 'JX00098', 'System', 1, 11.55, '2012-03-01');
INSERT INTO `attentance` VALUES (945, '07:54:00', '20:06:00', 'JX00098', 'System', 1, 12.2, '2013-03-01');
INSERT INTO `attentance` VALUES (946, '08:10:00', '22:22:00', 'JX00098', 'System', 1, 14.2, '2014-03-01');
INSERT INTO `attentance` VALUES (947, '08:15:00', '19:09:00', 'JX00098', 'System', 1, 10.9, '2015-03-01');
INSERT INTO `attentance` VALUES (948, '09:31:00', '19:45:00', 'JX00098', 'System', 1, 10.23, '2018-03-01');
INSERT INTO `attentance` VALUES (949, '08:29:00', '19:51:00', 'JX00098', 'System', 1, 11.37, '2019-03-01');
INSERT INTO `attentance` VALUES (950, '08:08:00', '19:59:00', 'JX00098', 'System', 1, 11.85, '2020-03-01');
INSERT INTO `attentance` VALUES (951, '09:01:00', '09:01:00', 'JX00098', 'System', 1, 0, '2021-03-01');
INSERT INTO `attentance` VALUES (952, '09:10:00', '09:10:00', 'JX00098', 'System', 1, 0, '2022-03-01');
INSERT INTO `attentance` VALUES (953, '18:39:00', '18:39:00', 'JX00098', 'System', 1, 0, '2023-03-01');
INSERT INTO `attentance` VALUES (954, '08:23:00', '20:00:00', 'JX00098', 'System', 1, 11.62, '2025-03-01');
INSERT INTO `attentance` VALUES (955, '09:25:00', '23:44:00', 'JX00098', 'System', 1, 14.32, '2026-03-01');
INSERT INTO `attentance` VALUES (956, '10:09:00', '17:41:00', 'JX00098', 'System', 1, 7.53, '2031-03-01');
INSERT INTO `attentance` VALUES (957, '09:45:00', '09:45:00', 'JX00001', 'System', 1, 0, '2009-03-01');

-- ----------------------------
-- Table structure for attentance_rule_type
-- ----------------------------
DROP TABLE IF EXISTS `attentance_rule_type`;
CREATE TABLE `attentance_rule_type`  (
  `id` int(11) NOT NULL COMMENT '考勤规则对象的类型的序号',
  `type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考勤规则对象类型',
  `start_time` time NULL DEFAULT NULL COMMENT '最迟上班时间',
  `m_latetime` time NULL DEFAULT NULL COMMENT '上午迟到时间',
  `e_leavetime` time NULL DEFAULT NULL COMMENT '晚上早退时间',
  `end_time` time NULL DEFAULT NULL COMMENT '最早下班时间',
  `workingtime` double NULL DEFAULT NULL COMMENT '工作时长',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '考勤规则类型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of attentance_rule_type
-- ----------------------------
INSERT INTO `attentance_rule_type` VALUES (1, '正常考勤规则', '09:30:00', '10:00:00', '18:00:00', '18:30:00', NULL);
INSERT INTO `attentance_rule_type` VALUES (2, '特殊考勤规则A组', '10:00:00', '00:00:00', NULL, '00:00:00', 9);
INSERT INTO `attentance_rule_type` VALUES (3, '特殊考勤规则B组', '10:00:00', '10:30:00', NULL, NULL, NULL);
INSERT INTO `attentance_rule_type` VALUES (4, '特殊考勤规则C组', '09:00:00', NULL, NULL, '18:00:00', NULL);
INSERT INTO `attentance_rule_type` VALUES (5, '加班考勤A', '10:00:00', '10:30:00', '18:00:00', '18:30:00', NULL);
INSERT INTO `attentance_rule_type` VALUES (6, '加班考勤B', '13:00:00', '13:00:00', '18:00:00', '18:30:00', NULL);
INSERT INTO `attentance_rule_type` VALUES (7, '上午请假', '13:30:00', '14:00:00', '18:00:00', '18:30:00', NULL);
INSERT INTO `attentance_rule_type` VALUES (8, '下午请假', '09:30:00', '10:00:00', '11:30:00', '12:00:00', NULL);
INSERT INTO `attentance_rule_type` VALUES (9, '不考勤', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for leave
-- ----------------------------
DROP TABLE IF EXISTS `leave`;
CREATE TABLE `leave`  (
  `id` int(11) NULL DEFAULT NULL COMMENT '请假的编号',
  `leaver_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '请假员工id',
  `vocation_begin` datetime NULL DEFAULT NULL COMMENT '请假开始的时间',
  `vocation_end` datetime NULL DEFAULT NULL COMMENT '请假结束的时间',
  `vocation_days` double(255, 0) NULL DEFAULT NULL COMMENT '请假的时长',
  `type` int(11) NULL DEFAULT NULL COMMENT '请假的类型',
  PRIMARY KEY (`leaver_id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  CONSTRAINT `leave_ibfk_2` FOREIGN KEY (`type`) REFERENCES `leave_type` (`qid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '请假表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for leave_type
-- ----------------------------
DROP TABLE IF EXISTS `leave_type`;
CREATE TABLE `leave_type`  (
  `qid` int(11) NOT NULL COMMENT '请假类型的编号',
  `pid` int(11) NULL DEFAULT NULL COMMENT '请假类型的子编号',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请假的类型',
  PRIMARY KEY (`qid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '请假分类表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of leave_type
-- ----------------------------
INSERT INTO `leave_type` VALUES (1, 0, '公假');
INSERT INTO `leave_type` VALUES (2, 0, '事假');
INSERT INTO `leave_type` VALUES (3, 0, '病假');
INSERT INTO `leave_type` VALUES (4, 0, '年假');
INSERT INTO `leave_type` VALUES (5, 0, '其他');
INSERT INTO `leave_type` VALUES (6, 1, '婚假');
INSERT INTO `leave_type` VALUES (7, 1, '产假');
INSERT INTO `leave_type` VALUES (8, 1, '陪产假');
INSERT INTO `leave_type` VALUES (9, 1, '丧假');
INSERT INTO `leave_type` VALUES (10, 1, '工伤假');

-- ----------------------------
-- Table structure for out
-- ----------------------------
DROP TABLE IF EXISTS `out`;
CREATE TABLE `out`  (
  `id` int(255) NOT NULL DEFAULT 0 COMMENT '出差编号',
  `out_time` datetime NULL DEFAULT NULL COMMENT '出差的开始时间',
  `back_time` datetime NULL DEFAULT NULL COMMENT '出差的结束时间',
  `out_days` double(200, 0) NULL DEFAULT NULL COMMENT '出差的总时长',
  `outer_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工Id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `travel_record_ibfk_1`(`outer_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '出差表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of out
-- ----------------------------
INSERT INTO `out` VALUES (1, NULL, NULL, 2, 'JX0002', NULL);

-- ----------------------------
-- Table structure for over
-- ----------------------------
DROP TABLE IF EXISTS `over`;
CREATE TABLE `over`  (
  `id` int(200) NOT NULL AUTO_INCREMENT COMMENT '加班的编号',
  `over_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '加班员工id ',
  `overstart_time` time NULL DEFAULT NULL COMMENT '加班的开始时间',
  `overend_time` time NULL DEFAULT NULL COMMENT '加班的结束时间',
  `over_times` double NULL DEFAULT NULL COMMENT '加班的总时长',
  `over_days` double NULL DEFAULT NULL COMMENT '加班的天数',
  `over_date` date NULL DEFAULT NULL COMMENT '加班的日期',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `overtime_record_ibfk_1`(`over_id`) USING BTREE,
  CONSTRAINT `over_ibfk_1` FOREIGN KEY (`over_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '加班表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for rest
-- ----------------------------
DROP TABLE IF EXISTS `rest`;
CREATE TABLE `rest`  (
  `id` int(11) NOT NULL COMMENT '假期的编号Id',
  `rest_begin_time` date NULL DEFAULT NULL COMMENT '假期开始的时间',
  `rest_end_time` date NULL DEFAULT NULL COMMENT '假期结束的时间',
  `rest_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '假期类型，需要输入',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '假期表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工Id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `department_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门姓名',
  `rule_type` int(11) NULL DEFAULT NULL COMMENT '员工考勤规则类型',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_type`(`rule_type`) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`rule_type`) REFERENCES `attentance_rule_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '员工信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('JX00001', 'AA', NULL, 1);
INSERT INTO `user` VALUES ('JX00002', 'AB', NULL, 3);
INSERT INTO `user` VALUES ('JX00003', 'AC', NULL, 3);
INSERT INTO `user` VALUES ('JX00004', 'AD', NULL, 3);
INSERT INTO `user` VALUES ('JX00005', 'BA', NULL, 2);
INSERT INTO `user` VALUES ('JX00006', 'FA', NULL, 1);
INSERT INTO `user` VALUES ('JX00007', 'CA', NULL, 2);
INSERT INTO `user` VALUES ('JX00008', 'DA', NULL, 4);
INSERT INTO `user` VALUES ('JX00009', 'DB', NULL, 2);
INSERT INTO `user` VALUES ('JX00010', 'DC', NULL, 2);
INSERT INTO `user` VALUES ('JX00013', 'EA', NULL, 2);
INSERT INTO `user` VALUES ('JX00016', 'EB', NULL, 2);
INSERT INTO `user` VALUES ('JX00019', 'EC', NULL, 2);
INSERT INTO `user` VALUES ('JX00020', 'GA', NULL, 1);
INSERT INTO `user` VALUES ('JX00021', 'ED', NULL, 2);
INSERT INTO `user` VALUES ('JX00022', 'EE', NULL, 2);
INSERT INTO `user` VALUES ('JX00024', 'FB', NULL, 1);
INSERT INTO `user` VALUES ('JX00025', 'DD', NULL, 2);
INSERT INTO `user` VALUES ('JX00027', 'DE', NULL, 2);
INSERT INTO `user` VALUES ('JX00030', 'AE', NULL, 3);
INSERT INTO `user` VALUES ('JX00033', 'EF', NULL, 1);
INSERT INTO `user` VALUES ('JX00037', 'EG', NULL, 1);
INSERT INTO `user` VALUES ('JX00042', 'GB', NULL, 1);
INSERT INTO `user` VALUES ('JX00046', 'BB', NULL, 2);
INSERT INTO `user` VALUES ('JX00050', 'EH', NULL, 1);
INSERT INTO `user` VALUES ('JX00052', 'CB', NULL, 2);
INSERT INTO `user` VALUES ('JX00053', 'GC', NULL, 1);
INSERT INTO `user` VALUES ('JX00058', 'DF', NULL, 1);
INSERT INTO `user` VALUES ('JX00064', 'FC', NULL, 1);
INSERT INTO `user` VALUES ('JX00065', 'CC', NULL, 4);
INSERT INTO `user` VALUES ('JX00071', 'GD', NULL, 1);
INSERT INTO `user` VALUES ('JX00072', 'GE', NULL, 1);
INSERT INTO `user` VALUES ('JX00074', 'EI', NULL, 1);
INSERT INTO `user` VALUES ('JX00078', 'EJ', NULL, 1);
INSERT INTO `user` VALUES ('JX00081', 'CD', NULL, 4);
INSERT INTO `user` VALUES ('JX00082', 'HA', NULL, 1);
INSERT INTO `user` VALUES ('JX00084', 'CE', NULL, 3);
INSERT INTO `user` VALUES ('JX00086', 'IA', NULL, 1);
INSERT INTO `user` VALUES ('JX00087', 'HB', NULL, 1);
INSERT INTO `user` VALUES ('JX00089', 'EK', NULL, 1);
INSERT INTO `user` VALUES ('JX00090', 'EL', NULL, 1);
INSERT INTO `user` VALUES ('JX00095', 'EM', NULL, 1);
INSERT INTO `user` VALUES ('JX00096', 'EN', NULL, 1);
INSERT INTO `user` VALUES ('JX00097', 'EO', NULL, 1);
INSERT INTO `user` VALUES ('JX00098', 'IB', NULL, 1);
INSERT INTO `user` VALUES ('JX00099', 'EP', NULL, 1);
INSERT INTO `user` VALUES ('JX00100', 'BC', NULL, 2);
INSERT INTO `user` VALUES ('JX00103', 'EQ', NULL, 1);
INSERT INTO `user` VALUES ('JX00105', 'CF', NULL, 2);
INSERT INTO `user` VALUES ('JX00120', 'HD', NULL, 2);

SET FOREIGN_KEY_CHECKS = 1;
