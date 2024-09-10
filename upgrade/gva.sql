/*
 Navicat Premium Data Transfer

 Source Server         : liqh-123456
 Source Server Type    : MySQL
 Source Server Version : 80034 (8.0.34)
 Source Host           : localhost:3306
 Source Schema         : gva

 Target Server Type    : MySQL
 Target Server Version : 80034 (8.0.34)
 File Encoding         : 65001

 Date: 22/08/2024 16:40:12
*/

CREATE DATABASE IF NOT EXISTS `gva_v0` CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_bin';
USE `gva_v0`;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for casbin_rule
-- ----------------------------
DROP TABLE IF EXISTS `casbin_rule`;
CREATE TABLE `casbin_rule`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ptype` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v0` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v5` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_casbin_rule`(`ptype` ASC, `v0` ASC, `v1` ASC, `v2` ASC, `v3` ASC, `v4` ASC, `v5` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 189 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of casbin_rule
-- ----------------------------
INSERT INTO `casbin_rule` VALUES (2, 'p', '888', '/api/createApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (5, 'p', '888', '/api/deleteApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (8, 'p', '888', '/api/deleteApisByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (11, 'p', '888', '/api/enterSyncApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (7, 'p', '888', '/api/getAllApis', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (4, 'p', '888', '/api/getApiById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (10, 'p', '888', '/api/getApiGroups', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (3, 'p', '888', '/api/getApiList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (12, 'p', '888', '/api/ignoreApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (9, 'p', '888', '/api/syncApi', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (6, 'p', '888', '/api/updateApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (13, 'p', '888', '/authority/copyAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (15, 'p', '888', '/authority/createAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (16, 'p', '888', '/authority/deleteAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (17, 'p', '888', '/authority/getAuthorityList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (18, 'p', '888', '/authority/setDataAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (14, 'p', '888', '/authority/updateAuthority', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES (96, 'p', '888', '/authorityBtn/canRemoveAuthorityBtn', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (95, 'p', '888', '/authorityBtn/getAuthorityBtn', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (94, 'p', '888', '/authorityBtn/setAuthorityBtn', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (72, 'p', '888', '/autoCode/addFunc', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (65, 'p', '888', '/autoCode/createPackage', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (69, 'p', '888', '/autoCode/createPlug', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (62, 'p', '888', '/autoCode/createTemp', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (68, 'p', '888', '/autoCode/delPackage', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (63, 'p', '888', '/autoCode/delSysHistory', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (60, 'p', '888', '/autoCode/getColumn', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (56, 'p', '888', '/autoCode/getDB', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (57, 'p', '888', '/autoCode/getMeta', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (67, 'p', '888', '/autoCode/getPackage', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (64, 'p', '888', '/autoCode/getSysHistory', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (59, 'p', '888', '/autoCode/getTables', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (66, 'p', '888', '/autoCode/getTemplates', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (70, 'p', '888', '/autoCode/installPlugin', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (58, 'p', '888', '/autoCode/preview', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (71, 'p', '888', '/autoCode/pubPlug', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (61, 'p', '888', '/autoCode/rollback', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (46, 'p', '888', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (45, 'p', '888', '/casbin/updateCasbin', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (54, 'p', '888', '/customer/customer', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (51, 'p', '888', '/customer/customer', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (53, 'p', '888', '/customer/customer', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (52, 'p', '888', '/customer/customer', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES (55, 'p', '888', '/customer/customerList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (89, 'p', '888', '/email/emailTest', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (90, 'p', '888', '/email/sendEmail', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (39, 'p', '888', '/fileUploadAndDownload/breakpointContinue', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (38, 'p', '888', '/fileUploadAndDownload/breakpointContinueFinish', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (42, 'p', '888', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (43, 'p', '888', '/fileUploadAndDownload/editFileName', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (37, 'p', '888', '/fileUploadAndDownload/findFile', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (44, 'p', '888', '/fileUploadAndDownload/getFileList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (40, 'p', '888', '/fileUploadAndDownload/removeChunk', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (41, 'p', '888', '/fileUploadAndDownload/upload', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (106, 'p', '888', '/info/createInfo', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (107, 'p', '888', '/info/deleteInfo', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (108, 'p', '888', '/info/deleteInfoByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (110, 'p', '888', '/info/findInfo', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (111, 'p', '888', '/info/getInfoList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (109, 'p', '888', '/info/updateInfo', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES (47, 'p', '888', '/jwt/jsonInBlacklist', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (21, 'p', '888', '/menu/addBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (23, 'p', '888', '/menu/addMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (25, 'p', '888', '/menu/deleteBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (27, 'p', '888', '/menu/getBaseMenuById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (22, 'p', '888', '/menu/getBaseMenuTree', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (19, 'p', '888', '/menu/getMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (24, 'p', '888', '/menu/getMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (20, 'p', '888', '/menu/getMenuList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (26, 'p', '888', '/menu/updateBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (92, 'p', '888', '/simpleUploader/checkFileMd5', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (93, 'p', '888', '/simpleUploader/mergeFileMd5', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (91, 'p', '888', '/simpleUploader/upload', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (81, 'p', '888', '/sysDictionary/createSysDictionary', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (82, 'p', '888', '/sysDictionary/deleteSysDictionary', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (78, 'p', '888', '/sysDictionary/findSysDictionary', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (80, 'p', '888', '/sysDictionary/getSysDictionaryList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (79, 'p', '888', '/sysDictionary/updateSysDictionary', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES (75, 'p', '888', '/sysDictionaryDetail/createSysDictionaryDetail', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (77, 'p', '888', '/sysDictionaryDetail/deleteSysDictionaryDetail', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (73, 'p', '888', '/sysDictionaryDetail/findSysDictionaryDetail', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (76, 'p', '888', '/sysDictionaryDetail/getSysDictionaryDetailList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (74, 'p', '888', '/sysDictionaryDetail/updateSysDictionaryDetail', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES (97, 'p', '888', '/sysExportTemplate/createSysExportTemplate', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (98, 'p', '888', '/sysExportTemplate/deleteSysExportTemplate', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (99, 'p', '888', '/sysExportTemplate/deleteSysExportTemplateByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (103, 'p', '888', '/sysExportTemplate/exportExcel', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (104, 'p', '888', '/sysExportTemplate/exportTemplate', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (101, 'p', '888', '/sysExportTemplate/findSysExportTemplate', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (102, 'p', '888', '/sysExportTemplate/getSysExportTemplateList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (105, 'p', '888', '/sysExportTemplate/importExcel', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (100, 'p', '888', '/sysExportTemplate/updateSysExportTemplate', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES (85, 'p', '888', '/sysOperationRecord/createSysOperationRecord', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (87, 'p', '888', '/sysOperationRecord/deleteSysOperationRecord', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (88, 'p', '888', '/sysOperationRecord/deleteSysOperationRecordByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (83, 'p', '888', '/sysOperationRecord/findSysOperationRecord', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (86, 'p', '888', '/sysOperationRecord/getSysOperationRecordList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (84, 'p', '888', '/sysOperationRecord/updateSysOperationRecord', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES (50, 'p', '888', '/system/getServerInfo', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (48, 'p', '888', '/system/getSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (49, 'p', '888', '/system/setSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (1, 'p', '888', '/user/admin_register', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (33, 'p', '888', '/user/changePassword', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (32, 'p', '888', '/user/deleteUser', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (28, 'p', '888', '/user/getUserInfo', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (31, 'p', '888', '/user/getUserList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (36, 'p', '888', '/user/resetPassword', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (30, 'p', '888', '/user/setSelfInfo', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES (35, 'p', '888', '/user/setUserAuthorities', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (34, 'p', '888', '/user/setUserAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (29, 'p', '888', '/user/setUserInfo', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES (113, 'p', '8881', '/api/createApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (116, 'p', '8881', '/api/deleteApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (118, 'p', '8881', '/api/getAllApis', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (115, 'p', '8881', '/api/getApiById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (114, 'p', '8881', '/api/getApiList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (117, 'p', '8881', '/api/updateApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (119, 'p', '8881', '/authority/createAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (120, 'p', '8881', '/authority/deleteAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (121, 'p', '8881', '/authority/getAuthorityList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (122, 'p', '8881', '/authority/setDataAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (140, 'p', '8881', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (139, 'p', '8881', '/casbin/updateCasbin', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (146, 'p', '8881', '/customer/customer', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (147, 'p', '8881', '/customer/customer', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (144, 'p', '8881', '/customer/customer', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (145, 'p', '8881', '/customer/customer', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES (148, 'p', '8881', '/customer/customerList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (137, 'p', '8881', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (138, 'p', '8881', '/fileUploadAndDownload/editFileName', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (136, 'p', '8881', '/fileUploadAndDownload/getFileList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (135, 'p', '8881', '/fileUploadAndDownload/upload', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (141, 'p', '8881', '/jwt/jsonInBlacklist', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (125, 'p', '8881', '/menu/addBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (127, 'p', '8881', '/menu/addMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (129, 'p', '8881', '/menu/deleteBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (131, 'p', '8881', '/menu/getBaseMenuById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (126, 'p', '8881', '/menu/getBaseMenuTree', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (123, 'p', '8881', '/menu/getMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (128, 'p', '8881', '/menu/getMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (124, 'p', '8881', '/menu/getMenuList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (130, 'p', '8881', '/menu/updateBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (142, 'p', '8881', '/system/getSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (143, 'p', '8881', '/system/setSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (112, 'p', '8881', '/user/admin_register', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (132, 'p', '8881', '/user/changePassword', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (149, 'p', '8881', '/user/getUserInfo', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (133, 'p', '8881', '/user/getUserList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (134, 'p', '8881', '/user/setUserAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (151, 'p', '9528', '/api/createApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (154, 'p', '9528', '/api/deleteApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (156, 'p', '9528', '/api/getAllApis', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (153, 'p', '9528', '/api/getApiById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (152, 'p', '9528', '/api/getApiList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (155, 'p', '9528', '/api/updateApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (157, 'p', '9528', '/authority/createAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (158, 'p', '9528', '/authority/deleteAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (159, 'p', '9528', '/authority/getAuthorityList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (160, 'p', '9528', '/authority/setDataAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (187, 'p', '9528', '/autoCode/createTemp', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (178, 'p', '9528', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (177, 'p', '9528', '/casbin/updateCasbin', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (185, 'p', '9528', '/customer/customer', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (183, 'p', '9528', '/customer/customer', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (184, 'p', '9528', '/customer/customer', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (182, 'p', '9528', '/customer/customer', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES (186, 'p', '9528', '/customer/customerList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (175, 'p', '9528', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (176, 'p', '9528', '/fileUploadAndDownload/editFileName', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (174, 'p', '9528', '/fileUploadAndDownload/getFileList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (173, 'p', '9528', '/fileUploadAndDownload/upload', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (179, 'p', '9528', '/jwt/jsonInBlacklist', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (163, 'p', '9528', '/menu/addBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (165, 'p', '9528', '/menu/addMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (167, 'p', '9528', '/menu/deleteBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (169, 'p', '9528', '/menu/getBaseMenuById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (164, 'p', '9528', '/menu/getBaseMenuTree', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (161, 'p', '9528', '/menu/getMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (166, 'p', '9528', '/menu/getMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (162, 'p', '9528', '/menu/getMenuList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (168, 'p', '9528', '/menu/updateBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (180, 'p', '9528', '/system/getSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (181, 'p', '9528', '/system/setSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (150, 'p', '9528', '/user/admin_register', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (170, 'p', '9528', '/user/changePassword', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (188, 'p', '9528', '/user/getUserInfo', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (171, 'p', '9528', '/user/getUserList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (172, 'p', '9528', '/user/setUserAuthority', 'POST', '', '', '');

-- ----------------------------
-- Table structure for exa_customers
-- ----------------------------
DROP TABLE IF EXISTS `exa_customers`;
CREATE TABLE `exa_customers`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NULL DEFAULT NULL,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `customer_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户名',
  `customer_phone_data` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户手机号',
  `sys_user_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '管理ID',
  `sys_user_authority_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '管理角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exa_customers
-- ----------------------------

-- ----------------------------
-- Table structure for exa_file_chunks
-- ----------------------------
DROP TABLE IF EXISTS `exa_file_chunks`;
CREATE TABLE `exa_file_chunks`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NULL DEFAULT NULL,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `exa_file_id` bigint UNSIGNED NULL DEFAULT NULL,
  `file_chunk_number` bigint NULL DEFAULT NULL,
  `file_chunk_path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exa_file_chunks
-- ----------------------------

-- ----------------------------
-- Table structure for exa_file_upload_and_downloads
-- ----------------------------
DROP TABLE IF EXISTS `exa_file_upload_and_downloads`;
CREATE TABLE `exa_file_upload_and_downloads`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NULL DEFAULT NULL,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件地址',
  `tag` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件标签',
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exa_file_upload_and_downloads
-- ----------------------------
INSERT INTO `exa_file_upload_and_downloads` VALUES (1, 0, '2024-08-03 15:27:53.872', '2024-08-03 15:27:53.872', '10.png', 'https://qmplusimg.henrongyi.top/gvalogo.png', 'png', '158787308910.png');
INSERT INTO `exa_file_upload_and_downloads` VALUES (2, 0, '2024-08-03 15:27:53.872', '2024-08-03 15:27:53.872', 'logo.png', 'https://qmplusimg.henrongyi.top/1576554439myAvatar.png', 'png', '1587973709logo.png');

-- ----------------------------
-- Table structure for exa_files
-- ----------------------------
DROP TABLE IF EXISTS `exa_files`;
CREATE TABLE `exa_files`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NULL DEFAULT NULL,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `file_md5` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `file_path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `chunk_total` bigint NULL DEFAULT NULL,
  `is_finish` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exa_files
-- ----------------------------

-- ----------------------------
-- Table structure for gva_announcements_info
-- ----------------------------
DROP TABLE IF EXISTS `gva_announcements_info`;
CREATE TABLE `gva_announcements_info`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NULL DEFAULT NULL,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公告标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '公告内容',
  `user_id` bigint NULL DEFAULT NULL COMMENT '发布者',
  `attachments` json NULL COMMENT '相关附件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gva_announcements_info
-- ----------------------------

-- ----------------------------
-- Table structure for jwt_blacklists
-- ----------------------------
DROP TABLE IF EXISTS `jwt_blacklists`;
CREATE TABLE `jwt_blacklists`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `jwt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'jwt',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jwt_blacklists
-- ----------------------------

-- ----------------------------
-- Table structure for sys_apis
-- ----------------------------
DROP TABLE IF EXISTS `sys_apis`;
CREATE TABLE `sys_apis`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'api路径',
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'api中文描述',
  `api_group` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'api组',
  `method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'POST' COMMENT '方法',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 164 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_apis
-- ----------------------------
INSERT INTO `sys_apis` VALUES (1, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/jwt/jsonInBlacklist', 'jwt加入黑名单(退出，必选)', 'jwt', 'POST');
INSERT INTO `sys_apis` VALUES (2, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/user/deleteUser', '删除用户', '系统用户', 'DELETE');
INSERT INTO `sys_apis` VALUES (3, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/user/admin_register', '用户注册', '系统用户', 'POST');
INSERT INTO `sys_apis` VALUES (4, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/user/getUserList', '获取用户列表', '系统用户', 'POST');
INSERT INTO `sys_apis` VALUES (5, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/user/setUserInfo', '设置用户信息', '系统用户', 'PUT');
INSERT INTO `sys_apis` VALUES (6, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/user/setSelfInfo', '设置自身信息(必选)', '系统用户', 'PUT');
INSERT INTO `sys_apis` VALUES (7, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/user/getUserInfo', '获取自身信息(必选)', '系统用户', 'GET');
INSERT INTO `sys_apis` VALUES (8, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/user/setUserAuthorities', '设置权限组', '系统用户', 'POST');
INSERT INTO `sys_apis` VALUES (9, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/user/changePassword', '修改密码（建议选择)', '系统用户', 'POST');
INSERT INTO `sys_apis` VALUES (10, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/user/setUserAuthority', '修改用户角色(必选)', '系统用户', 'POST');
INSERT INTO `sys_apis` VALUES (11, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/user/resetPassword', '重置用户密码', '系统用户', 'POST');
INSERT INTO `sys_apis` VALUES (12, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/api/createApi', '创建api', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (13, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/api/deleteApi', '删除Api', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (14, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/api/updateApi', '更新Api', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (15, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/api/getApiList', '获取api列表', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (16, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/api/getAllApis', '获取所有api', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (17, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/api/getApiById', '获取api详细信息', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (18, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/api/deleteApisByIds', '批量删除api', 'api', 'DELETE');
INSERT INTO `sys_apis` VALUES (19, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/api/syncApi', '获取待同步API', 'api', 'GET');
INSERT INTO `sys_apis` VALUES (20, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/api/getApiGroups', '获取路由组', 'api', 'GET');
INSERT INTO `sys_apis` VALUES (21, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/api/enterSyncApi', '确认同步API', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (22, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/api/ignoreApi', '忽略API', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (23, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/authority/copyAuthority', '拷贝角色', '角色', 'POST');
INSERT INTO `sys_apis` VALUES (24, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/authority/createAuthority', '创建角色', '角色', 'POST');
INSERT INTO `sys_apis` VALUES (25, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/authority/deleteAuthority', '删除角色', '角色', 'POST');
INSERT INTO `sys_apis` VALUES (26, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/authority/updateAuthority', '更新角色信息', '角色', 'PUT');
INSERT INTO `sys_apis` VALUES (27, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/authority/getAuthorityList', '获取角色列表', '角色', 'POST');
INSERT INTO `sys_apis` VALUES (28, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/authority/setDataAuthority', '设置角色资源权限', '角色', 'POST');
INSERT INTO `sys_apis` VALUES (29, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/casbin/updateCasbin', '更改角色api权限', 'casbin', 'POST');
INSERT INTO `sys_apis` VALUES (30, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/casbin/getPolicyPathByAuthorityId', '获取权限列表', 'casbin', 'POST');
INSERT INTO `sys_apis` VALUES (31, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/menu/addBaseMenu', '新增菜单', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (32, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/menu/getMenu', '获取菜单树(必选)', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (33, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/menu/deleteBaseMenu', '删除菜单', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (34, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/menu/updateBaseMenu', '更新菜单', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (35, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/menu/getBaseMenuById', '根据id获取菜单', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (36, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/menu/getMenuList', '分页获取基础menu列表', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (37, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/menu/getBaseMenuTree', '获取用户动态路由', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (38, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/menu/getMenuAuthority', '获取指定角色menu', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (39, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/menu/addMenuAuthority', '增加menu和角色关联关系', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (40, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/fileUploadAndDownload/findFile', '寻找目标文件（秒传）', '分片上传', 'GET');
INSERT INTO `sys_apis` VALUES (41, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/fileUploadAndDownload/breakpointContinue', '断点续传', '分片上传', 'POST');
INSERT INTO `sys_apis` VALUES (42, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/fileUploadAndDownload/breakpointContinueFinish', '断点续传完成', '分片上传', 'POST');
INSERT INTO `sys_apis` VALUES (43, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/fileUploadAndDownload/removeChunk', '上传完成移除文件', '分片上传', 'POST');
INSERT INTO `sys_apis` VALUES (44, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/fileUploadAndDownload/upload', '文件上传示例', '文件上传与下载', 'POST');
INSERT INTO `sys_apis` VALUES (45, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/fileUploadAndDownload/deleteFile', '删除文件', '文件上传与下载', 'POST');
INSERT INTO `sys_apis` VALUES (46, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/fileUploadAndDownload/editFileName', '文件名或者备注编辑', '文件上传与下载', 'POST');
INSERT INTO `sys_apis` VALUES (47, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/fileUploadAndDownload/getFileList', '获取上传文件列表', '文件上传与下载', 'POST');
INSERT INTO `sys_apis` VALUES (48, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/system/getServerInfo', '获取服务器信息', '系统服务', 'POST');
INSERT INTO `sys_apis` VALUES (49, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/system/getSystemConfig', '获取配置文件内容', '系统服务', 'POST');
INSERT INTO `sys_apis` VALUES (50, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/system/setSystemConfig', '设置配置文件内容', '系统服务', 'POST');
INSERT INTO `sys_apis` VALUES (51, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/customer/customer', '更新客户', '客户', 'PUT');
INSERT INTO `sys_apis` VALUES (52, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/customer/customer', '创建客户', '客户', 'POST');
INSERT INTO `sys_apis` VALUES (53, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/customer/customer', '删除客户', '客户', 'DELETE');
INSERT INTO `sys_apis` VALUES (54, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/customer/customer', '获取单一客户', '客户', 'GET');
INSERT INTO `sys_apis` VALUES (55, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/customer/customerList', '获取客户列表', '客户', 'GET');
INSERT INTO `sys_apis` VALUES (56, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/autoCode/getDB', '获取所有数据库', '代码生成器', 'GET');
INSERT INTO `sys_apis` VALUES (57, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/autoCode/getTables', '获取数据库表', '代码生成器', 'GET');
INSERT INTO `sys_apis` VALUES (58, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/autoCode/createTemp', '自动化代码', '代码生成器', 'POST');
INSERT INTO `sys_apis` VALUES (59, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/autoCode/preview', '预览自动化代码', '代码生成器', 'POST');
INSERT INTO `sys_apis` VALUES (60, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/autoCode/getColumn', '获取所选table的所有字段', '代码生成器', 'GET');
INSERT INTO `sys_apis` VALUES (61, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/autoCode/installPlugin', '安装插件', '代码生成器', 'POST');
INSERT INTO `sys_apis` VALUES (62, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/autoCode/pubPlug', '打包插件', '代码生成器', 'POST');
INSERT INTO `sys_apis` VALUES (63, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/autoCode/createPackage', '配置模板', '模板配置', 'POST');
INSERT INTO `sys_apis` VALUES (64, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/autoCode/getTemplates', '获取模板文件', '模板配置', 'GET');
INSERT INTO `sys_apis` VALUES (65, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/autoCode/getPackage', '获取所有模板', '模板配置', 'POST');
INSERT INTO `sys_apis` VALUES (66, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/autoCode/delPackage', '删除模板', '模板配置', 'POST');
INSERT INTO `sys_apis` VALUES (67, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/autoCode/getMeta', '获取meta信息', '代码生成器历史', 'POST');
INSERT INTO `sys_apis` VALUES (68, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/autoCode/rollback', '回滚自动生成代码', '代码生成器历史', 'POST');
INSERT INTO `sys_apis` VALUES (69, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/autoCode/getSysHistory', '查询回滚记录', '代码生成器历史', 'POST');
INSERT INTO `sys_apis` VALUES (70, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/autoCode/delSysHistory', '删除回滚记录', '代码生成器历史', 'POST');
INSERT INTO `sys_apis` VALUES (71, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/autoCode/addFunc', '增加模板方法', '代码生成器历史', 'POST');
INSERT INTO `sys_apis` VALUES (72, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysDictionaryDetail/updateSysDictionaryDetail', '更新字典内容', '系统字典详情', 'PUT');
INSERT INTO `sys_apis` VALUES (73, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysDictionaryDetail/createSysDictionaryDetail', '新增字典内容', '系统字典详情', 'POST');
INSERT INTO `sys_apis` VALUES (74, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysDictionaryDetail/deleteSysDictionaryDetail', '删除字典内容', '系统字典详情', 'DELETE');
INSERT INTO `sys_apis` VALUES (75, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysDictionaryDetail/findSysDictionaryDetail', '根据ID获取字典内容', '系统字典详情', 'GET');
INSERT INTO `sys_apis` VALUES (76, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysDictionaryDetail/getSysDictionaryDetailList', '获取字典内容列表', '系统字典详情', 'GET');
INSERT INTO `sys_apis` VALUES (77, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysDictionary/createSysDictionary', '新增字典', '系统字典', 'POST');
INSERT INTO `sys_apis` VALUES (78, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysDictionary/deleteSysDictionary', '删除字典', '系统字典', 'DELETE');
INSERT INTO `sys_apis` VALUES (79, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysDictionary/updateSysDictionary', '更新字典', '系统字典', 'PUT');
INSERT INTO `sys_apis` VALUES (80, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysDictionary/findSysDictionary', '根据ID获取字典', '系统字典', 'GET');
INSERT INTO `sys_apis` VALUES (81, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysDictionary/getSysDictionaryList', '获取字典列表', '系统字典', 'GET');
INSERT INTO `sys_apis` VALUES (82, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysOperationRecord/createSysOperationRecord', '新增操作记录', '操作记录', 'POST');
INSERT INTO `sys_apis` VALUES (83, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysOperationRecord/findSysOperationRecord', '根据ID获取操作记录', '操作记录', 'GET');
INSERT INTO `sys_apis` VALUES (84, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysOperationRecord/getSysOperationRecordList', '获取操作记录列表', '操作记录', 'GET');
INSERT INTO `sys_apis` VALUES (85, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysOperationRecord/deleteSysOperationRecord', '删除操作记录', '操作记录', 'DELETE');
INSERT INTO `sys_apis` VALUES (86, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysOperationRecord/deleteSysOperationRecordByIds', '批量删除操作历史', '操作记录', 'DELETE');
INSERT INTO `sys_apis` VALUES (87, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/simpleUploader/upload', '插件版分片上传', '断点续传(插件版)', 'POST');
INSERT INTO `sys_apis` VALUES (88, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/simpleUploader/checkFileMd5', '文件完整度验证', '断点续传(插件版)', 'GET');
INSERT INTO `sys_apis` VALUES (89, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/simpleUploader/mergeFileMd5', '上传完成合并文件', '断点续传(插件版)', 'GET');
INSERT INTO `sys_apis` VALUES (90, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/email/emailTest', '发送测试邮件', 'email', 'POST');
INSERT INTO `sys_apis` VALUES (91, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/email/sendEmail', '发送邮件', 'email', 'POST');
INSERT INTO `sys_apis` VALUES (92, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/authorityBtn/setAuthorityBtn', '设置按钮权限', '按钮权限', 'POST');
INSERT INTO `sys_apis` VALUES (93, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/authorityBtn/getAuthorityBtn', '获取已有按钮权限', '按钮权限', 'POST');
INSERT INTO `sys_apis` VALUES (94, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/authorityBtn/canRemoveAuthorityBtn', '删除按钮', '按钮权限', 'POST');
INSERT INTO `sys_apis` VALUES (95, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysExportTemplate/createSysExportTemplate', '新增导出模板', '表格模板', 'POST');
INSERT INTO `sys_apis` VALUES (96, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysExportTemplate/deleteSysExportTemplate', '删除导出模板', '表格模板', 'DELETE');
INSERT INTO `sys_apis` VALUES (97, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysExportTemplate/deleteSysExportTemplateByIds', '批量删除导出模板', '表格模板', 'DELETE');
INSERT INTO `sys_apis` VALUES (98, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysExportTemplate/updateSysExportTemplate', '更新导出模板', '表格模板', 'PUT');
INSERT INTO `sys_apis` VALUES (99, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysExportTemplate/findSysExportTemplate', '根据ID获取导出模板', '表格模板', 'GET');
INSERT INTO `sys_apis` VALUES (100, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysExportTemplate/getSysExportTemplateList', '获取导出模板列表', '表格模板', 'GET');
INSERT INTO `sys_apis` VALUES (101, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysExportTemplate/exportExcel', '导出Excel', '表格模板', 'GET');
INSERT INTO `sys_apis` VALUES (102, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysExportTemplate/exportTemplate', '下载模板', '表格模板', 'GET');
INSERT INTO `sys_apis` VALUES (103, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/sysExportTemplate/importExcel', '导入Excel', '表格模板', 'POST');
INSERT INTO `sys_apis` VALUES (104, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/info/createInfo', '新建公告', '公告', 'POST');
INSERT INTO `sys_apis` VALUES (105, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/info/deleteInfo', '删除公告', '公告', 'DELETE');
INSERT INTO `sys_apis` VALUES (106, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/info/deleteInfoByIds', '批量删除公告', '公告', 'DELETE');
INSERT INTO `sys_apis` VALUES (107, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/info/updateInfo', '更新公告', '公告', 'PUT');
INSERT INTO `sys_apis` VALUES (108, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/info/findInfo', '根据ID获取公告', '公告', 'GET');
INSERT INTO `sys_apis` VALUES (109, '2024-08-03 15:27:53.638', '2024-08-03 15:27:53.638', '/info/getInfoList', '获取公告列表', '公告', 'GET');
INSERT INTO `sys_apis` VALUES (110, '2024-08-08 16:56:10.810', '2024-08-08 16:56:10.810', '/tenant/createTenant', '新增tenant表', 'tenant表', 'POST');
INSERT INTO `sys_apis` VALUES (111, '2024-08-08 16:56:10.811', '2024-08-08 16:56:10.811', '/tenant/deleteTenant', '删除tenant表', 'tenant表', 'DELETE');
INSERT INTO `sys_apis` VALUES (112, '2024-08-08 16:56:10.813', '2024-08-08 16:56:10.813', '/tenant/deleteTenantByIds', '批量删除tenant表', 'tenant表', 'DELETE');
INSERT INTO `sys_apis` VALUES (113, '2024-08-08 16:56:10.813', '2024-08-08 16:56:10.813', '/tenant/updateTenant', '更新tenant表', 'tenant表', 'PUT');
INSERT INTO `sys_apis` VALUES (114, '2024-08-08 16:56:10.814', '2024-08-08 16:56:10.814', '/tenant/findTenant', '根据ID获取tenant表', 'tenant表', 'GET');
INSERT INTO `sys_apis` VALUES (115, '2024-08-08 16:56:10.816', '2024-08-08 16:56:10.816', '/tenant/getTenantList', '获取tenant表列表', 'tenant表', 'GET');
INSERT INTO `sys_apis` VALUES (116, '2024-08-08 17:38:09.065', '2024-08-08 17:38:09.065', '/tenantInfo/createTenantInfo', '新增tenantInfo表', 'tenantInfo表', 'POST');
INSERT INTO `sys_apis` VALUES (117, '2024-08-08 17:38:09.066', '2024-08-08 17:38:09.066', '/tenantInfo/deleteTenantInfo', '删除tenantInfo表', 'tenantInfo表', 'DELETE');
INSERT INTO `sys_apis` VALUES (118, '2024-08-08 17:38:09.068', '2024-08-08 17:38:09.068', '/tenantInfo/deleteTenantInfoByIds', '批量删除tenantInfo表', 'tenantInfo表', 'DELETE');
INSERT INTO `sys_apis` VALUES (119, '2024-08-08 17:38:09.069', '2024-08-08 17:38:09.069', '/tenantInfo/updateTenantInfo', '更新tenantInfo表', 'tenantInfo表', 'PUT');
INSERT INTO `sys_apis` VALUES (120, '2024-08-08 17:38:09.070', '2024-08-08 17:38:09.070', '/tenantInfo/findTenantInfo', '根据ID获取tenantInfo表', 'tenantInfo表', 'GET');
INSERT INTO `sys_apis` VALUES (121, '2024-08-08 17:38:09.071', '2024-08-08 17:38:09.071', '/tenantInfo/getTenantInfoList', '获取tenantInfo表列表', 'tenantInfo表', 'GET');
INSERT INTO `sys_apis` VALUES (122, '2024-08-08 17:50:31.380', '2024-08-08 17:50:31.380', '/tenantInfoReviewProcess/createTenantInfoReviewProcess', '新增tenantInfoReviewProcess表', 'tenantInfoReviewProcess表', 'POST');
INSERT INTO `sys_apis` VALUES (123, '2024-08-08 17:50:31.381', '2024-08-08 17:50:31.381', '/tenantInfoReviewProcess/deleteTenantInfoReviewProcess', '删除tenantInfoReviewProcess表', 'tenantInfoReviewProcess表', 'DELETE');
INSERT INTO `sys_apis` VALUES (124, '2024-08-08 17:50:31.382', '2024-08-08 17:50:31.382', '/tenantInfoReviewProcess/deleteTenantInfoReviewProcessByIds', '批量删除tenantInfoReviewProcess表', 'tenantInfoReviewProcess表', 'DELETE');
INSERT INTO `sys_apis` VALUES (125, '2024-08-08 17:50:31.383', '2024-08-08 17:50:31.383', '/tenantInfoReviewProcess/updateTenantInfoReviewProcess', '更新tenantInfoReviewProcess表', 'tenantInfoReviewProcess表', 'PUT');
INSERT INTO `sys_apis` VALUES (126, '2024-08-08 17:50:31.385', '2024-08-08 17:50:31.385', '/tenantInfoReviewProcess/findTenantInfoReviewProcess', '根据ID获取tenantInfoReviewProcess表', 'tenantInfoReviewProcess表', 'GET');
INSERT INTO `sys_apis` VALUES (127, '2024-08-08 17:50:31.386', '2024-08-08 17:50:31.386', '/tenantInfoReviewProcess/getTenantInfoReviewProcessList', '获取tenantInfoReviewProcess表列表', 'tenantInfoReviewProcess表', 'GET');
INSERT INTO `sys_apis` VALUES (128, '2024-08-08 17:53:37.277', '2024-08-08 17:53:37.277', '/tenantInfoReviewLog/createTenantInfoReviewLog', '新增tenantInfoReviewLog表', 'tenantInfoReviewLog表', 'POST');
INSERT INTO `sys_apis` VALUES (129, '2024-08-08 17:53:37.278', '2024-08-08 17:53:37.278', '/tenantInfoReviewLog/deleteTenantInfoReviewLog', '删除tenantInfoReviewLog表', 'tenantInfoReviewLog表', 'DELETE');
INSERT INTO `sys_apis` VALUES (130, '2024-08-08 17:53:37.279', '2024-08-08 17:53:37.279', '/tenantInfoReviewLog/deleteTenantInfoReviewLogByIds', '批量删除tenantInfoReviewLog表', 'tenantInfoReviewLog表', 'DELETE');
INSERT INTO `sys_apis` VALUES (131, '2024-08-08 17:53:37.280', '2024-08-08 17:53:37.280', '/tenantInfoReviewLog/updateTenantInfoReviewLog', '更新tenantInfoReviewLog表', 'tenantInfoReviewLog表', 'PUT');
INSERT INTO `sys_apis` VALUES (132, '2024-08-08 17:53:37.281', '2024-08-08 17:53:37.281', '/tenantInfoReviewLog/findTenantInfoReviewLog', '根据ID获取tenantInfoReviewLog表', 'tenantInfoReviewLog表', 'GET');
INSERT INTO `sys_apis` VALUES (133, '2024-08-08 17:53:37.282', '2024-08-08 17:53:37.282', '/tenantInfoReviewLog/getTenantInfoReviewLogList', '获取tenantInfoReviewLog表列表', 'tenantInfoReviewLog表', 'GET');
INSERT INTO `sys_apis` VALUES (134, '2024-08-09 17:09:33.436', '2024-08-09 17:09:33.436', '/users/createUsers', '新增users表', 'users表', 'POST');
INSERT INTO `sys_apis` VALUES (135, '2024-08-09 17:09:33.437', '2024-08-09 17:09:33.437', '/users/deleteUsers', '删除users表', 'users表', 'DELETE');
INSERT INTO `sys_apis` VALUES (136, '2024-08-09 17:09:33.439', '2024-08-09 17:09:33.439', '/users/deleteUsersByIds', '批量删除users表', 'users表', 'DELETE');
INSERT INTO `sys_apis` VALUES (137, '2024-08-09 17:09:33.440', '2024-08-09 17:09:33.440', '/users/updateUsers', '更新users表', 'users表', 'PUT');
INSERT INTO `sys_apis` VALUES (138, '2024-08-09 17:09:33.441', '2024-08-09 17:09:33.441', '/users/findUsers', '根据ID获取users表', 'users表', 'GET');
INSERT INTO `sys_apis` VALUES (139, '2024-08-09 17:09:33.442', '2024-08-09 17:09:33.442', '/users/getUsersList', '获取users表列表', 'users表', 'GET');
INSERT INTO `sys_apis` VALUES (140, '2024-08-09 17:43:53.485', '2024-08-09 17:43:53.485', '/userApplyJoinTenantProcess/createUserApplyJoinTenantProcess', '新增userApplyJoinTenantProcess表', 'userApplyJoinTenantProcess表', 'POST');
INSERT INTO `sys_apis` VALUES (141, '2024-08-09 17:43:53.488', '2024-08-09 17:43:53.488', '/userApplyJoinTenantProcess/deleteUserApplyJoinTenantProcess', '删除userApplyJoinTenantProcess表', 'userApplyJoinTenantProcess表', 'DELETE');
INSERT INTO `sys_apis` VALUES (142, '2024-08-09 17:43:53.489', '2024-08-09 17:43:53.489', '/userApplyJoinTenantProcess/deleteUserApplyJoinTenantProcessByIds', '批量删除userApplyJoinTenantProcess表', 'userApplyJoinTenantProcess表', 'DELETE');
INSERT INTO `sys_apis` VALUES (143, '2024-08-09 17:43:53.490', '2024-08-09 17:43:53.490', '/userApplyJoinTenantProcess/updateUserApplyJoinTenantProcess', '更新userApplyJoinTenantProcess表', 'userApplyJoinTenantProcess表', 'PUT');
INSERT INTO `sys_apis` VALUES (144, '2024-08-09 17:43:53.491', '2024-08-09 17:43:53.491', '/userApplyJoinTenantProcess/findUserApplyJoinTenantProcess', '根据ID获取userApplyJoinTenantProcess表', 'userApplyJoinTenantProcess表', 'GET');
INSERT INTO `sys_apis` VALUES (145, '2024-08-09 17:43:53.493', '2024-08-09 17:43:53.493', '/userApplyJoinTenantProcess/getUserApplyJoinTenantProcessList', '获取userApplyJoinTenantProcess表列表', 'userApplyJoinTenantProcess表', 'GET');
INSERT INTO `sys_apis` VALUES (146, '2024-08-09 17:47:05.821', '2024-08-09 17:47:05.821', '/userApplyJoinTenantProcessFlow/createUserApplyJoinTenantProcessFlow', '新增userApplyJoinTenantProcessFlow表', 'userApplyJoinTenantProcessFlow表', 'POST');
INSERT INTO `sys_apis` VALUES (147, '2024-08-09 17:47:05.822', '2024-08-09 17:47:05.822', '/userApplyJoinTenantProcessFlow/deleteUserApplyJoinTenantProcessFlow', '删除userApplyJoinTenantProcessFlow表', 'userApplyJoinTenantProcessFlow表', 'DELETE');
INSERT INTO `sys_apis` VALUES (148, '2024-08-09 17:47:05.823', '2024-08-09 17:47:05.823', '/userApplyJoinTenantProcessFlow/deleteUserApplyJoinTenantProcessFlowByIds', '批量删除userApplyJoinTenantProcessFlow表', 'userApplyJoinTenantProcessFlow表', 'DELETE');
INSERT INTO `sys_apis` VALUES (149, '2024-08-09 17:47:05.824', '2024-08-09 17:47:05.824', '/userApplyJoinTenantProcessFlow/updateUserApplyJoinTenantProcessFlow', '更新userApplyJoinTenantProcessFlow表', 'userApplyJoinTenantProcessFlow表', 'PUT');
INSERT INTO `sys_apis` VALUES (150, '2024-08-09 17:47:05.825', '2024-08-09 17:47:05.825', '/userApplyJoinTenantProcessFlow/findUserApplyJoinTenantProcessFlow', '根据ID获取userApplyJoinTenantProcessFlow表', 'userApplyJoinTenantProcessFlow表', 'GET');
INSERT INTO `sys_apis` VALUES (151, '2024-08-09 17:47:05.826', '2024-08-09 17:47:05.826', '/userApplyJoinTenantProcessFlow/getUserApplyJoinTenantProcessFlowList', '获取userApplyJoinTenantProcessFlow表列表', 'userApplyJoinTenantProcessFlow表', 'GET');
INSERT INTO `sys_apis` VALUES (152, '2024-08-09 17:48:47.286', '2024-08-09 17:48:47.286', '/tenantInviteUserProcess/createTenantInviteUserProcess', '新增tenantInviteUserProcess表', 'tenantInviteUserProcess表', 'POST');
INSERT INTO `sys_apis` VALUES (153, '2024-08-09 17:48:47.288', '2024-08-09 17:48:47.288', '/tenantInviteUserProcess/deleteTenantInviteUserProcess', '删除tenantInviteUserProcess表', 'tenantInviteUserProcess表', 'DELETE');
INSERT INTO `sys_apis` VALUES (154, '2024-08-09 17:48:47.289', '2024-08-09 17:48:47.289', '/tenantInviteUserProcess/deleteTenantInviteUserProcessByIds', '批量删除tenantInviteUserProcess表', 'tenantInviteUserProcess表', 'DELETE');
INSERT INTO `sys_apis` VALUES (155, '2024-08-09 17:48:47.290', '2024-08-09 17:48:47.290', '/tenantInviteUserProcess/updateTenantInviteUserProcess', '更新tenantInviteUserProcess表', 'tenantInviteUserProcess表', 'PUT');
INSERT INTO `sys_apis` VALUES (156, '2024-08-09 17:48:47.291', '2024-08-09 17:48:47.291', '/tenantInviteUserProcess/findTenantInviteUserProcess', '根据ID获取tenantInviteUserProcess表', 'tenantInviteUserProcess表', 'GET');
INSERT INTO `sys_apis` VALUES (157, '2024-08-09 17:48:47.293', '2024-08-09 17:48:47.293', '/tenantInviteUserProcess/getTenantInviteUserProcessList', '获取tenantInviteUserProcess表列表', 'tenantInviteUserProcess表', 'GET');
INSERT INTO `sys_apis` VALUES (158, '2024-08-09 17:50:04.267', '2024-08-09 17:50:04.267', '/tenantInviteUserProcessLog/createTenantInviteUserProcessLog', '新增tenantInviteUserProcessLog表', 'tenantInviteUserProcessLog表', 'POST');
INSERT INTO `sys_apis` VALUES (159, '2024-08-09 17:50:04.268', '2024-08-09 17:50:04.268', '/tenantInviteUserProcessLog/deleteTenantInviteUserProcessLog', '删除tenantInviteUserProcessLog表', 'tenantInviteUserProcessLog表', 'DELETE');
INSERT INTO `sys_apis` VALUES (160, '2024-08-09 17:50:04.270', '2024-08-09 17:50:04.270', '/tenantInviteUserProcessLog/deleteTenantInviteUserProcessLogByIds', '批量删除tenantInviteUserProcessLog表', 'tenantInviteUserProcessLog表', 'DELETE');
INSERT INTO `sys_apis` VALUES (161, '2024-08-09 17:50:04.271', '2024-08-09 17:50:04.271', '/tenantInviteUserProcessLog/updateTenantInviteUserProcessLog', '更新tenantInviteUserProcessLog表', 'tenantInviteUserProcessLog表', 'PUT');
INSERT INTO `sys_apis` VALUES (162, '2024-08-09 17:50:04.272', '2024-08-09 17:50:04.272', '/tenantInviteUserProcessLog/findTenantInviteUserProcessLog', '根据ID获取tenantInviteUserProcessLog表', 'tenantInviteUserProcessLog表', 'GET');
INSERT INTO `sys_apis` VALUES (163, '2024-08-09 17:50:04.273', '2024-08-09 17:50:04.273', '/tenantInviteUserProcessLog/getTenantInviteUserProcessLogList', '获取tenantInviteUserProcessLog表列表', 'tenantInviteUserProcessLog表', 'GET');

-- ----------------------------
-- Table structure for sys_authorities
-- ----------------------------
DROP TABLE IF EXISTS `sys_authorities`;
CREATE TABLE `sys_authorities`  (
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `deleted_at` datetime(3) NULL DEFAULT NULL,
  `authority_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `authority_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色名',
  `parent_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '父角色ID',
  `default_router` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'dashboard' COMMENT '默认菜单',
  PRIMARY KEY (`authority_id`) USING BTREE,
  UNIQUE INDEX `uni_sys_authorities_authority_id`(`authority_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9529 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_authorities
-- ----------------------------
INSERT INTO `sys_authorities` VALUES ('2024-08-03 15:27:53.653', '2024-08-03 15:27:53.858', NULL, 888, '普通用户', 0, 'dashboard');
INSERT INTO `sys_authorities` VALUES ('2024-08-03 15:27:53.653', '2024-08-03 15:27:53.869', NULL, 8881, '普通用户子角色', 888, 'dashboard');
INSERT INTO `sys_authorities` VALUES ('2024-08-03 15:27:53.653', '2024-08-03 15:27:53.863', NULL, 9528, '测试角色', 0, 'dashboard');

-- ----------------------------
-- Table structure for sys_authority_btns
-- ----------------------------
DROP TABLE IF EXISTS `sys_authority_btns`;
CREATE TABLE `sys_authority_btns`  (
  `authority_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '角色ID',
  `sys_menu_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '菜单ID',
  `sys_base_menu_btn_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '菜单按钮ID'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_authority_btns
-- ----------------------------

-- ----------------------------
-- Table structure for sys_authority_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_authority_menus`;
CREATE TABLE `sys_authority_menus`  (
  `sys_base_menu_id` bigint UNSIGNED NOT NULL,
  `sys_authority_authority_id` bigint UNSIGNED NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_base_menu_id`, `sys_authority_authority_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_authority_menus
-- ----------------------------
INSERT INTO `sys_authority_menus` VALUES (1, 888);
INSERT INTO `sys_authority_menus` VALUES (1, 8881);
INSERT INTO `sys_authority_menus` VALUES (1, 9528);
INSERT INTO `sys_authority_menus` VALUES (2, 888);
INSERT INTO `sys_authority_menus` VALUES (2, 8881);
INSERT INTO `sys_authority_menus` VALUES (2, 9528);
INSERT INTO `sys_authority_menus` VALUES (3, 888);
INSERT INTO `sys_authority_menus` VALUES (4, 888);
INSERT INTO `sys_authority_menus` VALUES (4, 8881);
INSERT INTO `sys_authority_menus` VALUES (5, 888);
INSERT INTO `sys_authority_menus` VALUES (5, 8881);
INSERT INTO `sys_authority_menus` VALUES (6, 888);
INSERT INTO `sys_authority_menus` VALUES (6, 8881);
INSERT INTO `sys_authority_menus` VALUES (7, 888);
INSERT INTO `sys_authority_menus` VALUES (7, 8881);
INSERT INTO `sys_authority_menus` VALUES (8, 888);
INSERT INTO `sys_authority_menus` VALUES (8, 8881);
INSERT INTO `sys_authority_menus` VALUES (8, 9528);
INSERT INTO `sys_authority_menus` VALUES (9, 888);
INSERT INTO `sys_authority_menus` VALUES (9, 8881);
INSERT INTO `sys_authority_menus` VALUES (10, 888);
INSERT INTO `sys_authority_menus` VALUES (10, 8881);
INSERT INTO `sys_authority_menus` VALUES (11, 888);
INSERT INTO `sys_authority_menus` VALUES (11, 8881);
INSERT INTO `sys_authority_menus` VALUES (12, 888);
INSERT INTO `sys_authority_menus` VALUES (13, 888);
INSERT INTO `sys_authority_menus` VALUES (13, 8881);
INSERT INTO `sys_authority_menus` VALUES (14, 888);
INSERT INTO `sys_authority_menus` VALUES (14, 8881);
INSERT INTO `sys_authority_menus` VALUES (15, 888);
INSERT INTO `sys_authority_menus` VALUES (15, 8881);
INSERT INTO `sys_authority_menus` VALUES (16, 888);
INSERT INTO `sys_authority_menus` VALUES (16, 8881);
INSERT INTO `sys_authority_menus` VALUES (17, 888);
INSERT INTO `sys_authority_menus` VALUES (17, 8881);
INSERT INTO `sys_authority_menus` VALUES (18, 888);
INSERT INTO `sys_authority_menus` VALUES (19, 888);
INSERT INTO `sys_authority_menus` VALUES (20, 888);
INSERT INTO `sys_authority_menus` VALUES (21, 888);
INSERT INTO `sys_authority_menus` VALUES (22, 888);
INSERT INTO `sys_authority_menus` VALUES (23, 888);
INSERT INTO `sys_authority_menus` VALUES (24, 888);
INSERT INTO `sys_authority_menus` VALUES (25, 888);
INSERT INTO `sys_authority_menus` VALUES (26, 888);
INSERT INTO `sys_authority_menus` VALUES (27, 888);
INSERT INTO `sys_authority_menus` VALUES (28, 888);
INSERT INTO `sys_authority_menus` VALUES (29, 888);
INSERT INTO `sys_authority_menus` VALUES (30, 888);

-- ----------------------------
-- Table structure for sys_auto_code_histories
-- ----------------------------
DROP TABLE IF EXISTS `sys_auto_code_histories`;
CREATE TABLE `sys_auto_code_histories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `table_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表名',
  `package` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模块名/插件名',
  `request` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '前端传入的结构化信息',
  `struct_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '结构体名称',
  `business_db` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务库',
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Struct中文名称',
  `templates` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '模板信息',
  `Injections` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '注入路径',
  `flag` bigint NULL DEFAULT NULL COMMENT '[0:创建,1:回滚]',
  `api_ids` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'api表注册内容',
  `menu_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '菜单ID',
  `package_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '包ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_auto_code_histories
-- ----------------------------
INSERT INTO `sys_auto_code_histories` VALUES (1, '2024-08-08 16:56:10.820', '2024-08-08 16:56:10.820', 'tenant', 'shop', '{\"package\":\"shop\",\"tableName\":\"tenant\",\"businessDB\":\"shop\",\"structName\":\"Tenant\",\"packageName\":\"tenant\",\"description\":\"tenant表\",\"abbreviation\":\"tenant\",\"humpPackageName\":\"tenant\",\"gvaModel\":false,\"autoMigrate\":true,\"autoCreateResource\":false,\"autoCreateApiToSql\":true,\"autoCreateMenuToSql\":true,\"fields\":[{\"fieldName\":\"Id\",\"fieldDesc\":\"id字段\",\"fieldType\":\"int\",\"fieldJson\":\"id\",\"dataTypeLong\":\"20\",\"comment\":\"\",\"columnName\":\"id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":true,\"primaryKey\":true,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"CreatedAt\",\"fieldDesc\":\"createdAt字段\",\"fieldType\":\"time.Time\",\"fieldJson\":\"createdAt\",\"dataTypeLong\":\"\",\"comment\":\"\",\"columnName\":\"created_at\",\"fieldSearchType\":\"BETWEEN\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":true,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"UpdatedAt\",\"fieldDesc\":\"updatedAt字段\",\"fieldType\":\"time.Time\",\"fieldJson\":\"updatedAt\",\"dataTypeLong\":\"\",\"comment\":\"\",\"columnName\":\"updated_at\",\"fieldSearchType\":\"BETWEEN\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":true,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"Uuid\",\"fieldDesc\":\"商户UUID\",\"fieldType\":\"string\",\"fieldJson\":\"uuid\",\"dataTypeLong\":\"128\",\"comment\":\"商户UUID\",\"columnName\":\"uuid\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"TenantName\",\"fieldDesc\":\"商户名称\",\"fieldType\":\"string\",\"fieldJson\":\"tenantName\",\"dataTypeLong\":\"256\",\"comment\":\"商户名称\",\"columnName\":\"tenant_name\",\"fieldSearchType\":\"LIKE\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":true,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"AccessKeyId\",\"fieldDesc\":\"访问秘钥\",\"fieldType\":\"string\",\"fieldJson\":\"accessKeyId\",\"dataTypeLong\":\"32\",\"comment\":\"访问秘钥\",\"columnName\":\"access_key_id\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"AccessKeySecret\",\"fieldDesc\":\"访问秘钥密码\",\"fieldType\":\"string\",\"fieldJson\":\"accessKeySecret\",\"dataTypeLong\":\"64\",\"comment\":\"访问秘钥密码\",\"columnName\":\"access_key_secret\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"Status\",\"fieldDesc\":\"状态\",\"fieldType\":\"string\",\"fieldJson\":\"status\",\"dataTypeLong\":\"32\",\"comment\":\"状态\",\"columnName\":\"status\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"tenantStatus\",\"front\":true,\"require\":false,\"defaultValue\":\"创建\",\"errorText\":\"\",\"clearable\":true,\"sort\":true,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"HeaderImg\",\"fieldDesc\":\"主图\",\"fieldType\":\"string\",\"fieldJson\":\"headerImg\",\"dataTypeLong\":\"191\",\"comment\":\"主图\",\"columnName\":\"header_img\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"}],\"primaryField\":{\"fieldName\":\"Id\",\"fieldDesc\":\"id字段\",\"fieldType\":\"int\",\"fieldJson\":\"id\",\"dataTypeLong\":\"20\",\"comment\":\"\",\"columnName\":\"id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":true,\"primaryKey\":true,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"}}', 'Tenant', 'shop', 'tenant表', '{\"resource/package/server/api/api.go.tpl\":\"api/v1/shop/tenant.go\",\"resource/package/server/model/model.go.tpl\":\"model/shop/tenant.go\",\"resource/package/server/model/request/request.go.tpl\":\"model/shop/request/tenant.go\",\"resource/package/server/router/router.go.tpl\":\"router/shop/tenant.go\",\"resource/package/server/service/service.go.tpl\":\"service/shop/tenant.go\",\"resource/package/web/api/api.js.tpl\":\"api/shop/tenant.js\",\"resource/package/web/view/form.vue.tpl\":\"view/shop/tenant/tenantForm.vue\",\"resource/package/web/view/table.vue.tpl\":\"view/shop/tenant/tenant.vue\"}', '{\"PackageApiEnter\":\"{\\\"Type\\\":\\\"PackageApiEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\api\\\\\\\\v1\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"ShopApiGroup\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"api/v1/enter.go\\\",\\\"PackageStructName\\\":\\\"ApiGroup\\\"}\",\"PackageApiModuleEnter\":\"{\\\"Type\\\":\\\"PackageApiModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\api\\\\\\\\v1\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/service\\\\\\\"\\\",\\\"RelativePath\\\":\\\"api/v1/shop/enter.go\\\",\\\"StructName\\\":\\\"TenantApi\\\",\\\"AppName\\\":\\\"ServiceGroupApp\\\",\\\"GroupName\\\":\\\"ShopServiceGroup\\\",\\\"ModuleName\\\":\\\"tenantService\\\",\\\"PackageName\\\":\\\"service\\\",\\\"ServiceName\\\":\\\"TenantService\\\"}\",\"PackageInitializeGorm\":\"{\\\"Type\\\":\\\"PackageInitializeGorm\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\initialize\\\\\\\\gorm_biz.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/model/shop\\\\\\\"\\\",\\\"Business\\\":\\\"shop\\\",\\\"StructName\\\":\\\"Tenant\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"initialize/gorm_biz.go\\\",\\\"IsNew\\\":true}\",\"PackageInitializeRouter\":\"{\\\"Type\\\":\\\"PackageInitializeRouter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\initialize\\\\\\\\router_biz.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/router\\\\\\\"\\\",\\\"RelativePath\\\":\\\"initialize/router_biz.go\\\",\\\"AppName\\\":\\\"RouterGroupApp\\\",\\\"GroupName\\\":\\\"Shop\\\",\\\"ModuleName\\\":\\\"shopRouter\\\",\\\"PackageName\\\":\\\"router\\\",\\\"FunctionName\\\":\\\"InitTenantRouter\\\",\\\"RouterGroupName\\\":\\\"\\\",\\\"LeftRouterGroupName\\\":\\\"privateGroup\\\",\\\"RightRouterGroupName\\\":\\\"publicGroup\\\"}\",\"PackageRouterEnter\":\"{\\\"Type\\\":\\\"PackageRouterEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\router\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/router/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"Shop\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"router/enter.go\\\",\\\"PackageStructName\\\":\\\"RouterGroup\\\"}\",\"PackageRouterModuleEnter\":\"{\\\"Type\\\":\\\"PackageRouterModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\router\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"api \\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1\\\\\\\"\\\",\\\"RelativePath\\\":\\\"router/shop/enter.go\\\",\\\"StructName\\\":\\\"TenantRouter\\\",\\\"AppName\\\":\\\"ApiGroupApp\\\",\\\"GroupName\\\":\\\"ShopApiGroup\\\",\\\"ModuleName\\\":\\\"tenantApi\\\",\\\"PackageName\\\":\\\"api\\\",\\\"ServiceName\\\":\\\"TenantApi\\\"}\",\"PackageServiceEnter\":\"{\\\"Type\\\":\\\"PackageServiceEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\service\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/service/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"ShopServiceGroup\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"service/enter.go\\\",\\\"PackageStructName\\\":\\\"ServiceGroup\\\"}\",\"PackageServiceModuleEnter\":\"{\\\"Type\\\":\\\"PackageServiceModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\service\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\",\\\"RelativePath\\\":\\\"service/shop/enter.go\\\",\\\"StructName\\\":\\\"TenantService\\\",\\\"AppName\\\":\\\"\\\",\\\"GroupName\\\":\\\"\\\",\\\"ModuleName\\\":\\\"\\\",\\\"PackageName\\\":\\\"\\\",\\\"ServiceName\\\":\\\"\\\"}\"}', 0, '[110,111,112,113,114,115]', 31, 0);
INSERT INTO `sys_auto_code_histories` VALUES (2, '2024-08-08 17:38:09.075', '2024-08-08 17:38:09.075', 'tenant_info', 'shop', '{\"package\":\"shop\",\"tableName\":\"tenant_info\",\"businessDB\":\"shop\",\"structName\":\"TenantInfo\",\"packageName\":\"tenantInfo\",\"description\":\"tenantInfo表\",\"abbreviation\":\"tenantInfo\",\"humpPackageName\":\"tenant_info\",\"gvaModel\":false,\"autoMigrate\":true,\"autoCreateResource\":false,\"autoCreateApiToSql\":true,\"autoCreateMenuToSql\":true,\"fields\":[{\"fieldName\":\"Id\",\"fieldDesc\":\"数据编号\",\"fieldType\":\"int\",\"fieldJson\":\"id\",\"dataTypeLong\":\"20\",\"comment\":\"\",\"columnName\":\"id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":true,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"TenantId\",\"fieldDesc\":\"租户id\",\"fieldType\":\"int\",\"fieldJson\":\"tenantId\",\"dataTypeLong\":\"20\",\"comment\":\"租户id\",\"columnName\":\"tenant_id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"CreatedAt\",\"fieldDesc\":\"创建时间\",\"fieldType\":\"time.Time\",\"fieldJson\":\"createdAt\",\"dataTypeLong\":\"\",\"comment\":\"\",\"columnName\":\"created_at\",\"fieldSearchType\":\"BETWEEN\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"UpdatedAt\",\"fieldDesc\":\"更新时间\",\"fieldType\":\"time.Time\",\"fieldJson\":\"updatedAt\",\"dataTypeLong\":\"\",\"comment\":\"\",\"columnName\":\"updated_at\",\"fieldSearchType\":\"BETWEEN\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"BaseColor\",\"fieldDesc\":\"基础颜色\",\"fieldType\":\"string\",\"fieldJson\":\"baseColor\",\"dataTypeLong\":\"32\",\"comment\":\"基础颜色\",\"columnName\":\"base_color\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"Liaison\",\"fieldDesc\":\"租户联系人\",\"fieldType\":\"string\",\"fieldJson\":\"liaison\",\"dataTypeLong\":\"128\",\"comment\":\"租户联系人\",\"columnName\":\"liaison\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"Phone\",\"fieldDesc\":\"电话\",\"fieldType\":\"string\",\"fieldJson\":\"phone\",\"dataTypeLong\":\"16\",\"comment\":\"电话\",\"columnName\":\"phone\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"Email\",\"fieldDesc\":\"邮箱\",\"fieldType\":\"string\",\"fieldJson\":\"email\",\"dataTypeLong\":\"191\",\"comment\":\"邮箱\",\"columnName\":\"email\",\"fieldSearchType\":\"LIKE\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"OwnerName\",\"fieldDesc\":\"负责人姓名\",\"fieldType\":\"string\",\"fieldJson\":\"ownerName\",\"dataTypeLong\":\"128\",\"comment\":\"负责人姓名\",\"columnName\":\"owner_name\",\"fieldSearchType\":\"LIKE\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"OwnerCode\",\"fieldDesc\":\"负责人身份证号码\",\"fieldType\":\"string\",\"fieldJson\":\"ownerCode\",\"dataTypeLong\":\"32\",\"comment\":\"负责人身份证号码\",\"columnName\":\"owner_code\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"OwnerIdCardFront\",\"fieldDesc\":\"负责人身份证正面\",\"fieldType\":\"string\",\"fieldJson\":\"ownerIdCardFront\",\"dataTypeLong\":\"255\",\"comment\":\"负责人身份证正面\",\"columnName\":\"owner_id_card_front\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"OwnerIdCardBack\",\"fieldDesc\":\"负责人身份证背面\",\"fieldType\":\"string\",\"fieldJson\":\"ownerIdCardBack\",\"dataTypeLong\":\"255\",\"comment\":\"负责人身份证背面\",\"columnName\":\"owner_id_card_back\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"OwnerSelfTackCardPic\",\"fieldDesc\":\"负责人手持身份证照片\",\"fieldType\":\"string\",\"fieldJson\":\"ownerSelfTackCardPic\",\"dataTypeLong\":\"255\",\"comment\":\"负责人手持身份证照片\",\"columnName\":\"owner_self_tack_card_pic\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"OwnerAddr\",\"fieldDesc\":\"负责人地址\",\"fieldType\":\"string\",\"fieldJson\":\"ownerAddr\",\"dataTypeLong\":\"191\",\"comment\":\"负责人地址\",\"columnName\":\"owner_addr\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"OwnerPhone\",\"fieldDesc\":\"负责人手机\",\"fieldType\":\"string\",\"fieldJson\":\"ownerPhone\",\"dataTypeLong\":\"16\",\"comment\":\"负责人手机\",\"columnName\":\"owner_phone\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"OwnerEmail\",\"fieldDesc\":\"负责人邮箱\",\"fieldType\":\"string\",\"fieldJson\":\"ownerEmail\",\"dataTypeLong\":\"64\",\"comment\":\"负责人邮箱\",\"columnName\":\"owner_email\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"OwnerSex\",\"fieldDesc\":\"负责人性别 \",\"fieldType\":\"int\",\"fieldJson\":\"ownerSex\",\"dataTypeLong\":\"10\",\"comment\":\"负责人性别 \",\"columnName\":\"owner_sex\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"QualOrgLegal\",\"fieldDesc\":\"租户主体法人代表\",\"fieldType\":\"string\",\"fieldJson\":\"qualOrgLegal\",\"dataTypeLong\":\"128\",\"comment\":\"租户主体法人代表\",\"columnName\":\"qual_org_legal\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"QualOrgName\",\"fieldDesc\":\"租户主体名称\",\"fieldType\":\"string\",\"fieldJson\":\"qualOrgName\",\"dataTypeLong\":\"255\",\"comment\":\"租户主体名称\",\"columnName\":\"qual_org_name\",\"fieldSearchType\":\"LIKE\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"QualOrgAddr\",\"fieldDesc\":\"租户主体地址\",\"fieldType\":\"string\",\"fieldJson\":\"qualOrgAddr\",\"dataTypeLong\":\"512\",\"comment\":\"租户主体地址\",\"columnName\":\"qual_org_addr\",\"fieldSearchType\":\"LIKE\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"QualOrgExpireTime\",\"fieldDesc\":\"租户主体过期时间\",\"fieldType\":\"time.Time\",\"fieldJson\":\"qualOrgExpireTime\",\"dataTypeLong\":\"\",\"comment\":\"租户主体过期时间\",\"columnName\":\"qual_org_expire_time\",\"fieldSearchType\":\"BETWEEN\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"QualBusinessScope\",\"fieldDesc\":\"租户主体经营范围\",\"fieldType\":\"string\",\"fieldJson\":\"qualBusinessScope\",\"dataTypeLong\":\"1024\",\"comment\":\"租户主体经营范围\",\"columnName\":\"qual_business_scope\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"QualSocialCode\",\"fieldDesc\":\"租户主体社会一致性代码\",\"fieldType\":\"string\",\"fieldJson\":\"qualSocialCode\",\"dataTypeLong\":\"64\",\"comment\":\"租户主体社会一致性代码\",\"columnName\":\"qual_social_code\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"QualBusinessLicensePic\",\"fieldDesc\":\"租户证照照片\",\"fieldType\":\"string\",\"fieldJson\":\"qualBusinessLicensePic\",\"dataTypeLong\":\"255\",\"comment\":\"租户证照照片\",\"columnName\":\"qual_business_license_pic\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"BankName\",\"fieldDesc\":\"收款银行名称\",\"fieldType\":\"string\",\"fieldJson\":\"bankName\",\"dataTypeLong\":\"128\",\"comment\":\"收款银行名称\",\"columnName\":\"bank_name\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"BankUserName\",\"fieldDesc\":\"收款银行用户名称\",\"fieldType\":\"string\",\"fieldJson\":\"bankUserName\",\"dataTypeLong\":\"128\",\"comment\":\"收款银行用户名称\",\"columnName\":\"bank_user_name\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"BankAccount\",\"fieldDesc\":\"收款银行卡号\",\"fieldType\":\"string\",\"fieldJson\":\"bankAccount\",\"dataTypeLong\":\"64\",\"comment\":\"收款银行卡号\",\"columnName\":\"bank_account\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"AlipayName\",\"fieldDesc\":\"支付宝用户名\",\"fieldType\":\"string\",\"fieldJson\":\"alipayName\",\"dataTypeLong\":\"64\",\"comment\":\"支付宝用户名\",\"columnName\":\"alipay_name\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"AlipayAccount\",\"fieldDesc\":\"支付宝账号\",\"fieldType\":\"string\",\"fieldJson\":\"alipayAccount\",\"dataTypeLong\":\"64\",\"comment\":\"支付宝账号\",\"columnName\":\"alipay_account\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"WechatName\",\"fieldDesc\":\"微信用户名\",\"fieldType\":\"string\",\"fieldJson\":\"wechatName\",\"dataTypeLong\":\"64\",\"comment\":\"微信用户名\",\"columnName\":\"wechat_name\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"WechatAccount\",\"fieldDesc\":\"微信账号\",\"fieldType\":\"string\",\"fieldJson\":\"wechatAccount\",\"dataTypeLong\":\"64\",\"comment\":\"微信账号\",\"columnName\":\"wechat_account\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"Status\",\"fieldDesc\":\"状态\",\"fieldType\":\"int\",\"fieldJson\":\"status\",\"dataTypeLong\":\"10\",\"comment\":\"状态\",\"columnName\":\"status\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"}],\"primaryField\":{\"fieldName\":\"Id\",\"fieldDesc\":\"数据编号\",\"fieldType\":\"int\",\"fieldJson\":\"id\",\"dataTypeLong\":\"20\",\"comment\":\"\",\"columnName\":\"id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":true,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"}}', 'TenantInfo', 'shop', 'tenantInfo表', '{\"resource/package/server/api/api.go.tpl\":\"api/v1/shop/tenant_info.go\",\"resource/package/server/model/model.go.tpl\":\"model/shop/tenant_info.go\",\"resource/package/server/model/request/request.go.tpl\":\"model/shop/request/tenant_info.go\",\"resource/package/server/router/router.go.tpl\":\"router/shop/tenant_info.go\",\"resource/package/server/service/service.go.tpl\":\"service/shop/tenant_info.go\",\"resource/package/web/api/api.js.tpl\":\"api/shop/tenantInfo.js\",\"resource/package/web/view/form.vue.tpl\":\"view/shop/tenantInfo/tenantInfoForm.vue\",\"resource/package/web/view/table.vue.tpl\":\"view/shop/tenantInfo/tenantInfo.vue\"}', '{\"PackageApiEnter\":\"{\\\"Type\\\":\\\"PackageApiEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\api\\\\\\\\v1\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"ShopApiGroup\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"api/v1/enter.go\\\",\\\"PackageStructName\\\":\\\"ApiGroup\\\"}\",\"PackageApiModuleEnter\":\"{\\\"Type\\\":\\\"PackageApiModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\api\\\\\\\\v1\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/service\\\\\\\"\\\",\\\"RelativePath\\\":\\\"api/v1/shop/enter.go\\\",\\\"StructName\\\":\\\"TenantInfoApi\\\",\\\"AppName\\\":\\\"ServiceGroupApp\\\",\\\"GroupName\\\":\\\"ShopServiceGroup\\\",\\\"ModuleName\\\":\\\"tenantInfoService\\\",\\\"PackageName\\\":\\\"service\\\",\\\"ServiceName\\\":\\\"TenantInfoService\\\"}\",\"PackageInitializeGorm\":\"{\\\"Type\\\":\\\"PackageInitializeGorm\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\initialize\\\\\\\\gorm_biz.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/model/shop\\\\\\\"\\\",\\\"Business\\\":\\\"shop\\\",\\\"StructName\\\":\\\"TenantInfo\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"initialize/gorm_biz.go\\\",\\\"IsNew\\\":true}\",\"PackageInitializeRouter\":\"{\\\"Type\\\":\\\"PackageInitializeRouter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\initialize\\\\\\\\router_biz.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/router\\\\\\\"\\\",\\\"RelativePath\\\":\\\"initialize/router_biz.go\\\",\\\"AppName\\\":\\\"RouterGroupApp\\\",\\\"GroupName\\\":\\\"Shop\\\",\\\"ModuleName\\\":\\\"shopRouter\\\",\\\"PackageName\\\":\\\"router\\\",\\\"FunctionName\\\":\\\"InitTenantInfoRouter\\\",\\\"RouterGroupName\\\":\\\"\\\",\\\"LeftRouterGroupName\\\":\\\"privateGroup\\\",\\\"RightRouterGroupName\\\":\\\"publicGroup\\\"}\",\"PackageRouterEnter\":\"{\\\"Type\\\":\\\"PackageRouterEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\router\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/router/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"Shop\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"router/enter.go\\\",\\\"PackageStructName\\\":\\\"RouterGroup\\\"}\",\"PackageRouterModuleEnter\":\"{\\\"Type\\\":\\\"PackageRouterModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\router\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"api \\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1\\\\\\\"\\\",\\\"RelativePath\\\":\\\"router/shop/enter.go\\\",\\\"StructName\\\":\\\"TenantInfoRouter\\\",\\\"AppName\\\":\\\"ApiGroupApp\\\",\\\"GroupName\\\":\\\"ShopApiGroup\\\",\\\"ModuleName\\\":\\\"tenantInfoApi\\\",\\\"PackageName\\\":\\\"api\\\",\\\"ServiceName\\\":\\\"TenantInfoApi\\\"}\",\"PackageServiceEnter\":\"{\\\"Type\\\":\\\"PackageServiceEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\service\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/service/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"ShopServiceGroup\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"service/enter.go\\\",\\\"PackageStructName\\\":\\\"ServiceGroup\\\"}\",\"PackageServiceModuleEnter\":\"{\\\"Type\\\":\\\"PackageServiceModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\service\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\",\\\"RelativePath\\\":\\\"service/shop/enter.go\\\",\\\"StructName\\\":\\\"TenantInfoService\\\",\\\"AppName\\\":\\\"\\\",\\\"GroupName\\\":\\\"\\\",\\\"ModuleName\\\":\\\"\\\",\\\"PackageName\\\":\\\"\\\",\\\"ServiceName\\\":\\\"\\\"}\"}', 0, '[116,117,118,119,120,121]', 32, 0);
INSERT INTO `sys_auto_code_histories` VALUES (3, '2024-08-08 17:50:31.390', '2024-08-08 17:50:31.390', 'tenant_info_review_process', 'shop', '{\"package\":\"shop\",\"tableName\":\"tenant_info_review_process\",\"businessDB\":\"shop\",\"structName\":\"TenantInfoReviewProcess\",\"packageName\":\"tenantInfoReviewProcess\",\"description\":\"tenantInfoReviewProcess表\",\"abbreviation\":\"tenantInfoReviewProcess\",\"humpPackageName\":\"tenant_info_review_process\",\"gvaModel\":false,\"autoMigrate\":true,\"autoCreateResource\":false,\"autoCreateApiToSql\":true,\"autoCreateMenuToSql\":true,\"fields\":[{\"fieldName\":\"Id\",\"fieldDesc\":\"编号\",\"fieldType\":\"int\",\"fieldJson\":\"id\",\"dataTypeLong\":\"20\",\"comment\":\"\",\"columnName\":\"id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":true,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"TenantId\",\"fieldDesc\":\"商户编号\",\"fieldType\":\"int\",\"fieldJson\":\"tenantId\",\"dataTypeLong\":\"19\",\"comment\":\"组织id\",\"columnName\":\"tenant_id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"CreatedAt\",\"fieldDesc\":\"创建日期\",\"fieldType\":\"time.Time\",\"fieldJson\":\"createdAt\",\"dataTypeLong\":\"\",\"comment\":\"\",\"columnName\":\"created_at\",\"fieldSearchType\":\"BETWEEN\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"UpdatedAt\",\"fieldDesc\":\"更新日期\",\"fieldType\":\"time.Time\",\"fieldJson\":\"updatedAt\",\"dataTypeLong\":\"\",\"comment\":\"\",\"columnName\":\"updated_at\",\"fieldSearchType\":\"BETWEEN\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"Data\",\"fieldDesc\":\"审核内容{json}\",\"fieldType\":\"string\",\"fieldJson\":\"data\",\"dataTypeLong\":\"1024\",\"comment\":\"要审核的数据{json}\",\"columnName\":\"data\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"Process\",\"fieldDesc\":\"进度\",\"fieldType\":\"string\",\"fieldJson\":\"process\",\"dataTypeLong\":\"32\",\"comment\":\"进度\",\"columnName\":\"process\",\"fieldSearchType\":\"\\u003c\\u003e\",\"fieldSearchHide\":false,\"dictType\":\"tenant_review_process\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"ProcessDesc\",\"fieldDesc\":\"进度说明\",\"fieldType\":\"string\",\"fieldJson\":\"processDesc\",\"dataTypeLong\":\"128\",\"comment\":\"进度说明\",\"columnName\":\"process_desc\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"OptUser\",\"fieldDesc\":\"操作用户id\",\"fieldType\":\"int\",\"fieldJson\":\"optUser\",\"dataTypeLong\":\"19\",\"comment\":\"操作用户id\",\"columnName\":\"opt_user\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"}],\"primaryField\":{\"fieldName\":\"Id\",\"fieldDesc\":\"编号\",\"fieldType\":\"int\",\"fieldJson\":\"id\",\"dataTypeLong\":\"20\",\"comment\":\"\",\"columnName\":\"id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":true,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"}}', 'TenantInfoReviewProcess', 'shop', 'tenantInfoReviewProcess表', '{\"resource/package/server/api/api.go.tpl\":\"api/v1/shop/tenant_info_review_process.go\",\"resource/package/server/model/model.go.tpl\":\"model/shop/tenant_info_review_process.go\",\"resource/package/server/model/request/request.go.tpl\":\"model/shop/request/tenant_info_review_process.go\",\"resource/package/server/router/router.go.tpl\":\"router/shop/tenant_info_review_process.go\",\"resource/package/server/service/service.go.tpl\":\"service/shop/tenant_info_review_process.go\",\"resource/package/web/api/api.js.tpl\":\"api/shop/tenantInfoReviewProcess.js\",\"resource/package/web/view/form.vue.tpl\":\"view/shop/tenantInfoReviewProcess/tenantInfoReviewProcessForm.vue\",\"resource/package/web/view/table.vue.tpl\":\"view/shop/tenantInfoReviewProcess/tenantInfoReviewProcess.vue\"}', '{\"PackageApiEnter\":\"{\\\"Type\\\":\\\"PackageApiEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\api\\\\\\\\v1\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"ShopApiGroup\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"api/v1/enter.go\\\",\\\"PackageStructName\\\":\\\"ApiGroup\\\"}\",\"PackageApiModuleEnter\":\"{\\\"Type\\\":\\\"PackageApiModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\api\\\\\\\\v1\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/service\\\\\\\"\\\",\\\"RelativePath\\\":\\\"api/v1/shop/enter.go\\\",\\\"StructName\\\":\\\"TenantInfoReviewProcessApi\\\",\\\"AppName\\\":\\\"ServiceGroupApp\\\",\\\"GroupName\\\":\\\"ShopServiceGroup\\\",\\\"ModuleName\\\":\\\"tenantInfoReviewProcessService\\\",\\\"PackageName\\\":\\\"service\\\",\\\"ServiceName\\\":\\\"TenantInfoReviewProcessService\\\"}\",\"PackageInitializeGorm\":\"{\\\"Type\\\":\\\"PackageInitializeGorm\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\initialize\\\\\\\\gorm_biz.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/model/shop\\\\\\\"\\\",\\\"Business\\\":\\\"shop\\\",\\\"StructName\\\":\\\"TenantInfoReviewProcess\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"initialize/gorm_biz.go\\\",\\\"IsNew\\\":true}\",\"PackageInitializeRouter\":\"{\\\"Type\\\":\\\"PackageInitializeRouter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\initialize\\\\\\\\router_biz.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/router\\\\\\\"\\\",\\\"RelativePath\\\":\\\"initialize/router_biz.go\\\",\\\"AppName\\\":\\\"RouterGroupApp\\\",\\\"GroupName\\\":\\\"Shop\\\",\\\"ModuleName\\\":\\\"shopRouter\\\",\\\"PackageName\\\":\\\"router\\\",\\\"FunctionName\\\":\\\"InitTenantInfoReviewProcessRouter\\\",\\\"RouterGroupName\\\":\\\"\\\",\\\"LeftRouterGroupName\\\":\\\"privateGroup\\\",\\\"RightRouterGroupName\\\":\\\"publicGroup\\\"}\",\"PackageRouterEnter\":\"{\\\"Type\\\":\\\"PackageRouterEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\router\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/router/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"Shop\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"router/enter.go\\\",\\\"PackageStructName\\\":\\\"RouterGroup\\\"}\",\"PackageRouterModuleEnter\":\"{\\\"Type\\\":\\\"PackageRouterModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\router\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"api \\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1\\\\\\\"\\\",\\\"RelativePath\\\":\\\"router/shop/enter.go\\\",\\\"StructName\\\":\\\"TenantInfoReviewProcessRouter\\\",\\\"AppName\\\":\\\"ApiGroupApp\\\",\\\"GroupName\\\":\\\"ShopApiGroup\\\",\\\"ModuleName\\\":\\\"tenantInfoReviewProcessApi\\\",\\\"PackageName\\\":\\\"api\\\",\\\"ServiceName\\\":\\\"TenantInfoReviewProcessApi\\\"}\",\"PackageServiceEnter\":\"{\\\"Type\\\":\\\"PackageServiceEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\service\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/service/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"ShopServiceGroup\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"service/enter.go\\\",\\\"PackageStructName\\\":\\\"ServiceGroup\\\"}\",\"PackageServiceModuleEnter\":\"{\\\"Type\\\":\\\"PackageServiceModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\service\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\",\\\"RelativePath\\\":\\\"service/shop/enter.go\\\",\\\"StructName\\\":\\\"TenantInfoReviewProcessService\\\",\\\"AppName\\\":\\\"\\\",\\\"GroupName\\\":\\\"\\\",\\\"ModuleName\\\":\\\"\\\",\\\"PackageName\\\":\\\"\\\",\\\"ServiceName\\\":\\\"\\\"}\"}', 0, '[122,123,124,125,126,127]', 33, 0);
INSERT INTO `sys_auto_code_histories` VALUES (4, '2024-08-08 17:53:37.286', '2024-08-08 17:53:37.286', 'tenant_info_review_log', 'shop', '{\"package\":\"shop\",\"tableName\":\"tenant_info_review_log\",\"businessDB\":\"shop\",\"structName\":\"TenantInfoReviewLog\",\"packageName\":\"tenantInfoReviewLog\",\"description\":\"tenantInfoReviewLog表\",\"abbreviation\":\"tenantInfoReviewLog\",\"humpPackageName\":\"tenant_info_review_log\",\"gvaModel\":false,\"autoMigrate\":true,\"autoCreateResource\":false,\"autoCreateApiToSql\":true,\"autoCreateMenuToSql\":true,\"fields\":[{\"fieldName\":\"Id\",\"fieldDesc\":\"记录编号\",\"fieldType\":\"int\",\"fieldJson\":\"id\",\"dataTypeLong\":\"20\",\"comment\":\"\",\"columnName\":\"id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":true,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"TenantId\",\"fieldDesc\":\"组织编号\",\"fieldType\":\"int\",\"fieldJson\":\"tenantId\",\"dataTypeLong\":\"20\",\"comment\":\"组织id\",\"columnName\":\"tenant_id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"CreatedAt\",\"fieldDesc\":\"创建时间\",\"fieldType\":\"time.Time\",\"fieldJson\":\"createdAt\",\"dataTypeLong\":\"\",\"comment\":\"\",\"columnName\":\"created_at\",\"fieldSearchType\":\"BETWEEN\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"UpdatedAt\",\"fieldDesc\":\"更新时间\",\"fieldType\":\"time.Time\",\"fieldJson\":\"updatedAt\",\"dataTypeLong\":\"\",\"comment\":\"\",\"columnName\":\"updated_at\",\"fieldSearchType\":\"BETWEEN\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"Data\",\"fieldDesc\":\"审核内容{json}\",\"fieldType\":\"string\",\"fieldJson\":\"data\",\"dataTypeLong\":\"1024\",\"comment\":\"要审核的数据{json}\",\"columnName\":\"data\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"Process\",\"fieldDesc\":\"进度\",\"fieldType\":\"string\",\"fieldJson\":\"process\",\"dataTypeLong\":\"32\",\"comment\":\"进度\",\"columnName\":\"process\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"tenant_review_process\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"ProcessDesc\",\"fieldDesc\":\"进度说明\",\"fieldType\":\"string\",\"fieldJson\":\"processDesc\",\"dataTypeLong\":\"128\",\"comment\":\"进度说明\",\"columnName\":\"process_desc\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"OptUser\",\"fieldDesc\":\"操作用户id\",\"fieldType\":\"int\",\"fieldJson\":\"optUser\",\"dataTypeLong\":\"19\",\"comment\":\"操作用户id\",\"columnName\":\"opt_user\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"}],\"primaryField\":{\"fieldName\":\"Id\",\"fieldDesc\":\"记录编号\",\"fieldType\":\"int\",\"fieldJson\":\"id\",\"dataTypeLong\":\"20\",\"comment\":\"\",\"columnName\":\"id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":true,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"}}', 'TenantInfoReviewLog', 'shop', 'tenantInfoReviewLog表', '{\"resource/package/server/api/api.go.tpl\":\"api/v1/shop/tenant_info_review_log.go\",\"resource/package/server/model/model.go.tpl\":\"model/shop/tenant_info_review_log.go\",\"resource/package/server/model/request/request.go.tpl\":\"model/shop/request/tenant_info_review_log.go\",\"resource/package/server/router/router.go.tpl\":\"router/shop/tenant_info_review_log.go\",\"resource/package/server/service/service.go.tpl\":\"service/shop/tenant_info_review_log.go\",\"resource/package/web/api/api.js.tpl\":\"api/shop/tenantInfoReviewLog.js\",\"resource/package/web/view/form.vue.tpl\":\"view/shop/tenantInfoReviewLog/tenantInfoReviewLogForm.vue\",\"resource/package/web/view/table.vue.tpl\":\"view/shop/tenantInfoReviewLog/tenantInfoReviewLog.vue\"}', '{\"PackageApiEnter\":\"{\\\"Type\\\":\\\"PackageApiEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\api\\\\\\\\v1\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"ShopApiGroup\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"api/v1/enter.go\\\",\\\"PackageStructName\\\":\\\"ApiGroup\\\"}\",\"PackageApiModuleEnter\":\"{\\\"Type\\\":\\\"PackageApiModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\api\\\\\\\\v1\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/service\\\\\\\"\\\",\\\"RelativePath\\\":\\\"api/v1/shop/enter.go\\\",\\\"StructName\\\":\\\"TenantInfoReviewLogApi\\\",\\\"AppName\\\":\\\"ServiceGroupApp\\\",\\\"GroupName\\\":\\\"ShopServiceGroup\\\",\\\"ModuleName\\\":\\\"tenantInfoReviewLogService\\\",\\\"PackageName\\\":\\\"service\\\",\\\"ServiceName\\\":\\\"TenantInfoReviewLogService\\\"}\",\"PackageInitializeGorm\":\"{\\\"Type\\\":\\\"PackageInitializeGorm\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\initialize\\\\\\\\gorm_biz.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/model/shop\\\\\\\"\\\",\\\"Business\\\":\\\"shop\\\",\\\"StructName\\\":\\\"TenantInfoReviewLog\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"initialize/gorm_biz.go\\\",\\\"IsNew\\\":true}\",\"PackageInitializeRouter\":\"{\\\"Type\\\":\\\"PackageInitializeRouter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\initialize\\\\\\\\router_biz.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/router\\\\\\\"\\\",\\\"RelativePath\\\":\\\"initialize/router_biz.go\\\",\\\"AppName\\\":\\\"RouterGroupApp\\\",\\\"GroupName\\\":\\\"Shop\\\",\\\"ModuleName\\\":\\\"shopRouter\\\",\\\"PackageName\\\":\\\"router\\\",\\\"FunctionName\\\":\\\"InitTenantInfoReviewLogRouter\\\",\\\"RouterGroupName\\\":\\\"\\\",\\\"LeftRouterGroupName\\\":\\\"privateGroup\\\",\\\"RightRouterGroupName\\\":\\\"publicGroup\\\"}\",\"PackageRouterEnter\":\"{\\\"Type\\\":\\\"PackageRouterEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\router\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/router/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"Shop\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"router/enter.go\\\",\\\"PackageStructName\\\":\\\"RouterGroup\\\"}\",\"PackageRouterModuleEnter\":\"{\\\"Type\\\":\\\"PackageRouterModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\router\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"api \\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1\\\\\\\"\\\",\\\"RelativePath\\\":\\\"router/shop/enter.go\\\",\\\"StructName\\\":\\\"TenantInfoReviewLogRouter\\\",\\\"AppName\\\":\\\"ApiGroupApp\\\",\\\"GroupName\\\":\\\"ShopApiGroup\\\",\\\"ModuleName\\\":\\\"tenantInfoReviewLogApi\\\",\\\"PackageName\\\":\\\"api\\\",\\\"ServiceName\\\":\\\"TenantInfoReviewLogApi\\\"}\",\"PackageServiceEnter\":\"{\\\"Type\\\":\\\"PackageServiceEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\service\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/service/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"ShopServiceGroup\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"service/enter.go\\\",\\\"PackageStructName\\\":\\\"ServiceGroup\\\"}\",\"PackageServiceModuleEnter\":\"{\\\"Type\\\":\\\"PackageServiceModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\service\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\",\\\"RelativePath\\\":\\\"service/shop/enter.go\\\",\\\"StructName\\\":\\\"TenantInfoReviewLogService\\\",\\\"AppName\\\":\\\"\\\",\\\"GroupName\\\":\\\"\\\",\\\"ModuleName\\\":\\\"\\\",\\\"PackageName\\\":\\\"\\\",\\\"ServiceName\\\":\\\"\\\"}\"}', 0, '[128,129,130,131,132,133]', 34, 0);
INSERT INTO `sys_auto_code_histories` VALUES (5, '2024-08-09 17:09:33.446', '2024-08-09 17:09:33.446', 'users', 'shop', '{\"package\":\"shop\",\"tableName\":\"users\",\"businessDB\":\"shop\",\"structName\":\"Users\",\"packageName\":\"users\",\"description\":\"users表\",\"abbreviation\":\"users\",\"humpPackageName\":\"users\",\"gvaModel\":true,\"autoMigrate\":true,\"autoCreateResource\":false,\"autoCreateApiToSql\":true,\"autoCreateMenuToSql\":true,\"fields\":[{\"fieldName\":\"Avatar\",\"fieldDesc\":\"用户头像\",\"fieldType\":\"string\",\"fieldJson\":\"avatar\",\"dataTypeLong\":\"191\",\"comment\":\"用户头像\",\"columnName\":\"avatar\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"Email\",\"fieldDesc\":\"用户邮箱\",\"fieldType\":\"string\",\"fieldJson\":\"email\",\"dataTypeLong\":\"191\",\"comment\":\"用户邮箱\",\"columnName\":\"email\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"NickName\",\"fieldDesc\":\"用户昵称\",\"fieldType\":\"string\",\"fieldJson\":\"nickName\",\"dataTypeLong\":\"191\",\"comment\":\"用户昵称\",\"columnName\":\"nick_name\",\"fieldSearchType\":\"LIKE\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"Password\",\"fieldDesc\":\"用户登录密码\",\"fieldType\":\"string\",\"fieldJson\":\"password\",\"dataTypeLong\":\"191\",\"comment\":\"用户登录密码\",\"columnName\":\"password\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"Phone\",\"fieldDesc\":\"用户手机号\",\"fieldType\":\"string\",\"fieldJson\":\"phone\",\"dataTypeLong\":\"191\",\"comment\":\"用户手机号\",\"columnName\":\"phone\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"Status\",\"fieldDesc\":\"用户状态 0:正常 1冻结\",\"fieldType\":\"string\",\"fieldJson\":\"status\",\"dataTypeLong\":\"32\",\"comment\":\"用户状态 0:正常 1冻结\",\"columnName\":\"status\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"user_status\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"Username\",\"fieldDesc\":\"用户登录名\",\"fieldType\":\"string\",\"fieldJson\":\"username\",\"dataTypeLong\":\"191\",\"comment\":\"用户登录名\",\"columnName\":\"username\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"Uuid\",\"fieldDesc\":\"用户UUID\",\"fieldType\":\"string\",\"fieldJson\":\"uuid\",\"dataTypeLong\":\"191\",\"comment\":\"用户UUID\",\"columnName\":\"uuid\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"}],\"primaryField\":{\"fieldName\":\"ID\",\"fieldDesc\":\"ID\",\"fieldType\":\"uint\",\"fieldJson\":\"ID\",\"dataTypeLong\":\"20\",\"comment\":\"主键ID\",\"columnName\":\"id\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":false,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":false,\"sort\":false,\"primaryKey\":false,\"dataSource\":null,\"checkDataSource\":false,\"fieldIndexType\":\"\"}}', 'Users', 'shop', 'users表', '{\"resource/package/server/api/api.go.tpl\":\"api/v1/shop/users.go\",\"resource/package/server/model/model.go.tpl\":\"model/shop/users.go\",\"resource/package/server/model/request/request.go.tpl\":\"model/shop/request/users.go\",\"resource/package/server/router/router.go.tpl\":\"router/shop/users.go\",\"resource/package/server/service/service.go.tpl\":\"service/shop/users.go\",\"resource/package/web/api/api.js.tpl\":\"api/shop/users.js\",\"resource/package/web/view/form.vue.tpl\":\"view/shop/users/usersForm.vue\",\"resource/package/web/view/table.vue.tpl\":\"view/shop/users/users.vue\"}', '{\"PackageApiEnter\":\"{\\\"Type\\\":\\\"PackageApiEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\api\\\\\\\\v1\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"ShopApiGroup\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"api/v1/enter.go\\\",\\\"PackageStructName\\\":\\\"ApiGroup\\\"}\",\"PackageApiModuleEnter\":\"{\\\"Type\\\":\\\"PackageApiModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\api\\\\\\\\v1\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/service\\\\\\\"\\\",\\\"RelativePath\\\":\\\"api/v1/shop/enter.go\\\",\\\"StructName\\\":\\\"UsersApi\\\",\\\"AppName\\\":\\\"ServiceGroupApp\\\",\\\"GroupName\\\":\\\"ShopServiceGroup\\\",\\\"ModuleName\\\":\\\"usersService\\\",\\\"PackageName\\\":\\\"service\\\",\\\"ServiceName\\\":\\\"UsersService\\\"}\",\"PackageInitializeGorm\":\"{\\\"Type\\\":\\\"PackageInitializeGorm\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\initialize\\\\\\\\gorm_biz.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/model/shop\\\\\\\"\\\",\\\"Business\\\":\\\"shop\\\",\\\"StructName\\\":\\\"Users\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"initialize/gorm_biz.go\\\",\\\"IsNew\\\":true}\",\"PackageInitializeRouter\":\"{\\\"Type\\\":\\\"PackageInitializeRouter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\initialize\\\\\\\\router_biz.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/router\\\\\\\"\\\",\\\"RelativePath\\\":\\\"initialize/router_biz.go\\\",\\\"AppName\\\":\\\"RouterGroupApp\\\",\\\"GroupName\\\":\\\"Shop\\\",\\\"ModuleName\\\":\\\"shopRouter\\\",\\\"PackageName\\\":\\\"router\\\",\\\"FunctionName\\\":\\\"InitUsersRouter\\\",\\\"RouterGroupName\\\":\\\"\\\",\\\"LeftRouterGroupName\\\":\\\"privateGroup\\\",\\\"RightRouterGroupName\\\":\\\"publicGroup\\\"}\",\"PackageRouterEnter\":\"{\\\"Type\\\":\\\"PackageRouterEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\router\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/router/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"Shop\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"router/enter.go\\\",\\\"PackageStructName\\\":\\\"RouterGroup\\\"}\",\"PackageRouterModuleEnter\":\"{\\\"Type\\\":\\\"PackageRouterModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\router\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"api \\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1\\\\\\\"\\\",\\\"RelativePath\\\":\\\"router/shop/enter.go\\\",\\\"StructName\\\":\\\"UsersRouter\\\",\\\"AppName\\\":\\\"ApiGroupApp\\\",\\\"GroupName\\\":\\\"ShopApiGroup\\\",\\\"ModuleName\\\":\\\"usersApi\\\",\\\"PackageName\\\":\\\"api\\\",\\\"ServiceName\\\":\\\"UsersApi\\\"}\",\"PackageServiceEnter\":\"{\\\"Type\\\":\\\"PackageServiceEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\service\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/service/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"ShopServiceGroup\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"service/enter.go\\\",\\\"PackageStructName\\\":\\\"ServiceGroup\\\"}\",\"PackageServiceModuleEnter\":\"{\\\"Type\\\":\\\"PackageServiceModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\service\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\",\\\"RelativePath\\\":\\\"service/shop/enter.go\\\",\\\"StructName\\\":\\\"UsersService\\\",\\\"AppName\\\":\\\"\\\",\\\"GroupName\\\":\\\"\\\",\\\"ModuleName\\\":\\\"\\\",\\\"PackageName\\\":\\\"\\\",\\\"ServiceName\\\":\\\"\\\"}\"}', 0, '[134,135,136,137,138,139]', 35, 0);
INSERT INTO `sys_auto_code_histories` VALUES (6, '2024-08-09 17:43:53.497', '2024-08-09 17:43:53.497', 'user_apply_join_tenant_process', 'shop', '{\"package\":\"shop\",\"tableName\":\"user_apply_join_tenant_process\",\"businessDB\":\"shop\",\"structName\":\"UserApplyJoinTenantProcess\",\"packageName\":\"userApplyJoinTenantProcess\",\"description\":\"userApplyJoinTenantProcess表\",\"abbreviation\":\"userApplyJoinTenantProcess\",\"humpPackageName\":\"user_apply_join_tenant_process\",\"gvaModel\":true,\"autoMigrate\":true,\"autoCreateResource\":false,\"autoCreateApiToSql\":true,\"autoCreateMenuToSql\":true,\"fields\":[{\"fieldName\":\"Desc\",\"fieldDesc\":\"操作原因\",\"fieldType\":\"string\",\"fieldJson\":\"desc\",\"dataTypeLong\":\"255\",\"comment\":\"操作原因\",\"columnName\":\"desc\",\"fieldSearchType\":\"LIKE\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"OptUserId\",\"fieldDesc\":\"操作者id\",\"fieldType\":\"int\",\"fieldJson\":\"optUserId\",\"dataTypeLong\":\"19\",\"comment\":\"操作者id\",\"columnName\":\"opt_user_id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"Process\",\"fieldDesc\":\"处理进度，字典定义： 0：提交申请，1通过申请，2拒绝申请\",\"fieldType\":\"string\",\"fieldJson\":\"process\",\"dataTypeLong\":\"32\",\"comment\":\"处理进度，字典定义： 0：提交申请，1通过申请，2拒绝申请\",\"columnName\":\"process\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"user_apply_tenant_process\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"TenantId\",\"fieldDesc\":\"租户id\",\"fieldType\":\"int\",\"fieldJson\":\"tenantId\",\"dataTypeLong\":\"19\",\"comment\":\"租户id\",\"columnName\":\"tenant_id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"UserId\",\"fieldDesc\":\"用户id\",\"fieldType\":\"int\",\"fieldJson\":\"userId\",\"dataTypeLong\":\"19\",\"comment\":\"用户id\",\"columnName\":\"user_id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"}],\"primaryField\":{\"fieldName\":\"ID\",\"fieldDesc\":\"ID\",\"fieldType\":\"uint\",\"fieldJson\":\"ID\",\"dataTypeLong\":\"20\",\"comment\":\"主键ID\",\"columnName\":\"id\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":false,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":false,\"sort\":false,\"primaryKey\":false,\"dataSource\":null,\"checkDataSource\":false,\"fieldIndexType\":\"\"}}', 'UserApplyJoinTenantProcess', 'shop', 'userApplyJoinTenantProcess表', '{\"resource/package/server/api/api.go.tpl\":\"api/v1/shop/user_apply_join_tenant_process.go\",\"resource/package/server/model/model.go.tpl\":\"model/shop/user_apply_join_tenant_process.go\",\"resource/package/server/model/request/request.go.tpl\":\"model/shop/request/user_apply_join_tenant_process.go\",\"resource/package/server/router/router.go.tpl\":\"router/shop/user_apply_join_tenant_process.go\",\"resource/package/server/service/service.go.tpl\":\"service/shop/user_apply_join_tenant_process.go\",\"resource/package/web/api/api.js.tpl\":\"api/shop/userApplyJoinTenantProcess.js\",\"resource/package/web/view/form.vue.tpl\":\"view/shop/userApplyJoinTenantProcess/userApplyJoinTenantProcessForm.vue\",\"resource/package/web/view/table.vue.tpl\":\"view/shop/userApplyJoinTenantProcess/userApplyJoinTenantProcess.vue\"}', '{\"PackageApiEnter\":\"{\\\"Type\\\":\\\"PackageApiEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\api\\\\\\\\v1\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"ShopApiGroup\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"api/v1/enter.go\\\",\\\"PackageStructName\\\":\\\"ApiGroup\\\"}\",\"PackageApiModuleEnter\":\"{\\\"Type\\\":\\\"PackageApiModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\api\\\\\\\\v1\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/service\\\\\\\"\\\",\\\"RelativePath\\\":\\\"api/v1/shop/enter.go\\\",\\\"StructName\\\":\\\"UserApplyJoinTenantProcessApi\\\",\\\"AppName\\\":\\\"ServiceGroupApp\\\",\\\"GroupName\\\":\\\"ShopServiceGroup\\\",\\\"ModuleName\\\":\\\"userApplyJoinTenantProcessService\\\",\\\"PackageName\\\":\\\"service\\\",\\\"ServiceName\\\":\\\"UserApplyJoinTenantProcessService\\\"}\",\"PackageInitializeGorm\":\"{\\\"Type\\\":\\\"PackageInitializeGorm\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\initialize\\\\\\\\gorm_biz.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/model/shop\\\\\\\"\\\",\\\"Business\\\":\\\"shop\\\",\\\"StructName\\\":\\\"UserApplyJoinTenantProcess\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"initialize/gorm_biz.go\\\",\\\"IsNew\\\":true}\",\"PackageInitializeRouter\":\"{\\\"Type\\\":\\\"PackageInitializeRouter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\initialize\\\\\\\\router_biz.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/router\\\\\\\"\\\",\\\"RelativePath\\\":\\\"initialize/router_biz.go\\\",\\\"AppName\\\":\\\"RouterGroupApp\\\",\\\"GroupName\\\":\\\"Shop\\\",\\\"ModuleName\\\":\\\"shopRouter\\\",\\\"PackageName\\\":\\\"router\\\",\\\"FunctionName\\\":\\\"InitUserApplyJoinTenantProcessRouter\\\",\\\"RouterGroupName\\\":\\\"\\\",\\\"LeftRouterGroupName\\\":\\\"privateGroup\\\",\\\"RightRouterGroupName\\\":\\\"publicGroup\\\"}\",\"PackageRouterEnter\":\"{\\\"Type\\\":\\\"PackageRouterEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\router\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/router/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"Shop\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"router/enter.go\\\",\\\"PackageStructName\\\":\\\"RouterGroup\\\"}\",\"PackageRouterModuleEnter\":\"{\\\"Type\\\":\\\"PackageRouterModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\router\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"api \\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1\\\\\\\"\\\",\\\"RelativePath\\\":\\\"router/shop/enter.go\\\",\\\"StructName\\\":\\\"UserApplyJoinTenantProcessRouter\\\",\\\"AppName\\\":\\\"ApiGroupApp\\\",\\\"GroupName\\\":\\\"ShopApiGroup\\\",\\\"ModuleName\\\":\\\"userApplyJoinTenantProcessApi\\\",\\\"PackageName\\\":\\\"api\\\",\\\"ServiceName\\\":\\\"UserApplyJoinTenantProcessApi\\\"}\",\"PackageServiceEnter\":\"{\\\"Type\\\":\\\"PackageServiceEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\service\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/service/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"ShopServiceGroup\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"service/enter.go\\\",\\\"PackageStructName\\\":\\\"ServiceGroup\\\"}\",\"PackageServiceModuleEnter\":\"{\\\"Type\\\":\\\"PackageServiceModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\service\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\",\\\"RelativePath\\\":\\\"service/shop/enter.go\\\",\\\"StructName\\\":\\\"UserApplyJoinTenantProcessService\\\",\\\"AppName\\\":\\\"\\\",\\\"GroupName\\\":\\\"\\\",\\\"ModuleName\\\":\\\"\\\",\\\"PackageName\\\":\\\"\\\",\\\"ServiceName\\\":\\\"\\\"}\"}', 0, '[140,141,142,143,144,145]', 36, 0);
INSERT INTO `sys_auto_code_histories` VALUES (7, '2024-08-09 17:47:05.831', '2024-08-09 17:47:05.831', 'user_apply_join_tenant_process_flow', 'shop', '{\"package\":\"shop\",\"tableName\":\"user_apply_join_tenant_process_flow\",\"businessDB\":\"shop\",\"structName\":\"UserApplyJoinTenantProcessFlow\",\"packageName\":\"userApplyJoinTenantProcessFlow\",\"description\":\"userApplyJoinTenantProcessFlow表\",\"abbreviation\":\"userApplyJoinTenantProcessFlow\",\"humpPackageName\":\"user_apply_join_tenant_process_flow\",\"gvaModel\":true,\"autoMigrate\":true,\"autoCreateResource\":false,\"autoCreateApiToSql\":true,\"autoCreateMenuToSql\":true,\"fields\":[{\"fieldName\":\"ApplyId\",\"fieldDesc\":\"申请id\",\"fieldType\":\"int\",\"fieldJson\":\"applyId\",\"dataTypeLong\":\"19\",\"comment\":\"申请id\",\"columnName\":\"apply_id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"Desc\",\"fieldDesc\":\"操作原因\",\"fieldType\":\"string\",\"fieldJson\":\"desc\",\"dataTypeLong\":\"255\",\"comment\":\"操作原因\",\"columnName\":\"desc\",\"fieldSearchType\":\"LIKE\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"OptUserId\",\"fieldDesc\":\"操作者id\",\"fieldType\":\"int\",\"fieldJson\":\"optUserId\",\"dataTypeLong\":\"19\",\"comment\":\"操作者id\",\"columnName\":\"opt_user_id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"Process\",\"fieldDesc\":\"process字段\",\"fieldType\":\"string\",\"fieldJson\":\"process\",\"dataTypeLong\":\"32\",\"comment\":\"\",\"columnName\":\"process\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"user_apply_tenant_process\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"TenantId\",\"fieldDesc\":\"租户id\",\"fieldType\":\"int\",\"fieldJson\":\"tenantId\",\"dataTypeLong\":\"19\",\"comment\":\"租户id\",\"columnName\":\"tenant_id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"UserId\",\"fieldDesc\":\"用户id\",\"fieldType\":\"int\",\"fieldJson\":\"userId\",\"dataTypeLong\":\"19\",\"comment\":\"用户id\",\"columnName\":\"user_id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"}],\"primaryField\":{\"fieldName\":\"ID\",\"fieldDesc\":\"ID\",\"fieldType\":\"uint\",\"fieldJson\":\"ID\",\"dataTypeLong\":\"20\",\"comment\":\"主键ID\",\"columnName\":\"id\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":false,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":false,\"sort\":false,\"primaryKey\":false,\"dataSource\":null,\"checkDataSource\":false,\"fieldIndexType\":\"\"}}', 'UserApplyJoinTenantProcessFlow', 'shop', 'userApplyJoinTenantProcessFlow表', '{\"resource/package/server/api/api.go.tpl\":\"api/v1/shop/user_apply_join_tenant_process_flow.go\",\"resource/package/server/model/model.go.tpl\":\"model/shop/user_apply_join_tenant_process_flow.go\",\"resource/package/server/model/request/request.go.tpl\":\"model/shop/request/user_apply_join_tenant_process_flow.go\",\"resource/package/server/router/router.go.tpl\":\"router/shop/user_apply_join_tenant_process_flow.go\",\"resource/package/server/service/service.go.tpl\":\"service/shop/user_apply_join_tenant_process_flow.go\",\"resource/package/web/api/api.js.tpl\":\"api/shop/userApplyJoinTenantProcessFlow.js\",\"resource/package/web/view/form.vue.tpl\":\"view/shop/userApplyJoinTenantProcessFlow/userApplyJoinTenantProcessFlowForm.vue\",\"resource/package/web/view/table.vue.tpl\":\"view/shop/userApplyJoinTenantProcessFlow/userApplyJoinTenantProcessFlow.vue\"}', '{\"PackageApiEnter\":\"{\\\"Type\\\":\\\"PackageApiEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\api\\\\\\\\v1\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"ShopApiGroup\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"api/v1/enter.go\\\",\\\"PackageStructName\\\":\\\"ApiGroup\\\"}\",\"PackageApiModuleEnter\":\"{\\\"Type\\\":\\\"PackageApiModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\api\\\\\\\\v1\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/service\\\\\\\"\\\",\\\"RelativePath\\\":\\\"api/v1/shop/enter.go\\\",\\\"StructName\\\":\\\"UserApplyJoinTenantProcessFlowApi\\\",\\\"AppName\\\":\\\"ServiceGroupApp\\\",\\\"GroupName\\\":\\\"ShopServiceGroup\\\",\\\"ModuleName\\\":\\\"userApplyJoinTenantProcessFlowService\\\",\\\"PackageName\\\":\\\"service\\\",\\\"ServiceName\\\":\\\"UserApplyJoinTenantProcessFlowService\\\"}\",\"PackageInitializeGorm\":\"{\\\"Type\\\":\\\"PackageInitializeGorm\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\initialize\\\\\\\\gorm_biz.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/model/shop\\\\\\\"\\\",\\\"Business\\\":\\\"shop\\\",\\\"StructName\\\":\\\"UserApplyJoinTenantProcessFlow\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"initialize/gorm_biz.go\\\",\\\"IsNew\\\":true}\",\"PackageInitializeRouter\":\"{\\\"Type\\\":\\\"PackageInitializeRouter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\initialize\\\\\\\\router_biz.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/router\\\\\\\"\\\",\\\"RelativePath\\\":\\\"initialize/router_biz.go\\\",\\\"AppName\\\":\\\"RouterGroupApp\\\",\\\"GroupName\\\":\\\"Shop\\\",\\\"ModuleName\\\":\\\"shopRouter\\\",\\\"PackageName\\\":\\\"router\\\",\\\"FunctionName\\\":\\\"InitUserApplyJoinTenantProcessFlowRouter\\\",\\\"RouterGroupName\\\":\\\"\\\",\\\"LeftRouterGroupName\\\":\\\"privateGroup\\\",\\\"RightRouterGroupName\\\":\\\"publicGroup\\\"}\",\"PackageRouterEnter\":\"{\\\"Type\\\":\\\"PackageRouterEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\router\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/router/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"Shop\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"router/enter.go\\\",\\\"PackageStructName\\\":\\\"RouterGroup\\\"}\",\"PackageRouterModuleEnter\":\"{\\\"Type\\\":\\\"PackageRouterModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\router\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"api \\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1\\\\\\\"\\\",\\\"RelativePath\\\":\\\"router/shop/enter.go\\\",\\\"StructName\\\":\\\"UserApplyJoinTenantProcessFlowRouter\\\",\\\"AppName\\\":\\\"ApiGroupApp\\\",\\\"GroupName\\\":\\\"ShopApiGroup\\\",\\\"ModuleName\\\":\\\"userApplyJoinTenantProcessFlowApi\\\",\\\"PackageName\\\":\\\"api\\\",\\\"ServiceName\\\":\\\"UserApplyJoinTenantProcessFlowApi\\\"}\",\"PackageServiceEnter\":\"{\\\"Type\\\":\\\"PackageServiceEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\service\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/service/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"ShopServiceGroup\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"service/enter.go\\\",\\\"PackageStructName\\\":\\\"ServiceGroup\\\"}\",\"PackageServiceModuleEnter\":\"{\\\"Type\\\":\\\"PackageServiceModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\service\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\",\\\"RelativePath\\\":\\\"service/shop/enter.go\\\",\\\"StructName\\\":\\\"UserApplyJoinTenantProcessFlowService\\\",\\\"AppName\\\":\\\"\\\",\\\"GroupName\\\":\\\"\\\",\\\"ModuleName\\\":\\\"\\\",\\\"PackageName\\\":\\\"\\\",\\\"ServiceName\\\":\\\"\\\"}\"}', 0, '[146,147,148,149,150,151]', 37, 0);
INSERT INTO `sys_auto_code_histories` VALUES (8, '2024-08-09 17:48:47.297', '2024-08-09 17:48:47.297', 'tenant_invite_user_process', 'shop', '{\"package\":\"shop\",\"tableName\":\"tenant_invite_user_process\",\"businessDB\":\"shop\",\"structName\":\"TenantInviteUserProcess\",\"packageName\":\"tenantInviteUserProcess\",\"description\":\"tenantInviteUserProcess表\",\"abbreviation\":\"tenantInviteUserProcess\",\"humpPackageName\":\"tenant_invite_user_process\",\"gvaModel\":true,\"autoMigrate\":true,\"autoCreateResource\":false,\"autoCreateApiToSql\":true,\"autoCreateMenuToSql\":true,\"fields\":[{\"fieldName\":\"Desc\",\"fieldDesc\":\"操作原因\",\"fieldType\":\"string\",\"fieldJson\":\"desc\",\"dataTypeLong\":\"255\",\"comment\":\"操作原因\",\"columnName\":\"desc\",\"fieldSearchType\":\"LIKE\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"OptUserId\",\"fieldDesc\":\"操作者id\",\"fieldType\":\"int\",\"fieldJson\":\"optUserId\",\"dataTypeLong\":\"19\",\"comment\":\"操作者id\",\"columnName\":\"opt_user_id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"Process\",\"fieldDesc\":\"处理进度，字典定义\",\"fieldType\":\"string\",\"fieldJson\":\"process\",\"dataTypeLong\":\"32\",\"comment\":\"处理进度，字典定义\",\"columnName\":\"process\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"tenant_invite_user_precess\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"TenantId\",\"fieldDesc\":\"租户id\",\"fieldType\":\"int\",\"fieldJson\":\"tenantId\",\"dataTypeLong\":\"19\",\"comment\":\"租户id\",\"columnName\":\"tenant_id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"UserId\",\"fieldDesc\":\"用户id\",\"fieldType\":\"int\",\"fieldJson\":\"userId\",\"dataTypeLong\":\"19\",\"comment\":\"用户id\",\"columnName\":\"user_id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"}],\"primaryField\":{\"fieldName\":\"ID\",\"fieldDesc\":\"ID\",\"fieldType\":\"uint\",\"fieldJson\":\"ID\",\"dataTypeLong\":\"20\",\"comment\":\"主键ID\",\"columnName\":\"id\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":false,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":false,\"sort\":false,\"primaryKey\":false,\"dataSource\":null,\"checkDataSource\":false,\"fieldIndexType\":\"\"}}', 'TenantInviteUserProcess', 'shop', 'tenantInviteUserProcess表', '{\"resource/package/server/api/api.go.tpl\":\"api/v1/shop/tenant_invite_user_process.go\",\"resource/package/server/model/model.go.tpl\":\"model/shop/tenant_invite_user_process.go\",\"resource/package/server/model/request/request.go.tpl\":\"model/shop/request/tenant_invite_user_process.go\",\"resource/package/server/router/router.go.tpl\":\"router/shop/tenant_invite_user_process.go\",\"resource/package/server/service/service.go.tpl\":\"service/shop/tenant_invite_user_process.go\",\"resource/package/web/api/api.js.tpl\":\"api/shop/tenantInviteUserProcess.js\",\"resource/package/web/view/form.vue.tpl\":\"view/shop/tenantInviteUserProcess/tenantInviteUserProcessForm.vue\",\"resource/package/web/view/table.vue.tpl\":\"view/shop/tenantInviteUserProcess/tenantInviteUserProcess.vue\"}', '{\"PackageApiEnter\":\"{\\\"Type\\\":\\\"PackageApiEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\api\\\\\\\\v1\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"ShopApiGroup\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"api/v1/enter.go\\\",\\\"PackageStructName\\\":\\\"ApiGroup\\\"}\",\"PackageApiModuleEnter\":\"{\\\"Type\\\":\\\"PackageApiModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\api\\\\\\\\v1\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/service\\\\\\\"\\\",\\\"RelativePath\\\":\\\"api/v1/shop/enter.go\\\",\\\"StructName\\\":\\\"TenantInviteUserProcessApi\\\",\\\"AppName\\\":\\\"ServiceGroupApp\\\",\\\"GroupName\\\":\\\"ShopServiceGroup\\\",\\\"ModuleName\\\":\\\"tenantInviteUserProcessService\\\",\\\"PackageName\\\":\\\"service\\\",\\\"ServiceName\\\":\\\"TenantInviteUserProcessService\\\"}\",\"PackageInitializeGorm\":\"{\\\"Type\\\":\\\"PackageInitializeGorm\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\initialize\\\\\\\\gorm_biz.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/model/shop\\\\\\\"\\\",\\\"Business\\\":\\\"shop\\\",\\\"StructName\\\":\\\"TenantInviteUserProcess\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"initialize/gorm_biz.go\\\",\\\"IsNew\\\":true}\",\"PackageInitializeRouter\":\"{\\\"Type\\\":\\\"PackageInitializeRouter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\initialize\\\\\\\\router_biz.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/router\\\\\\\"\\\",\\\"RelativePath\\\":\\\"initialize/router_biz.go\\\",\\\"AppName\\\":\\\"RouterGroupApp\\\",\\\"GroupName\\\":\\\"Shop\\\",\\\"ModuleName\\\":\\\"shopRouter\\\",\\\"PackageName\\\":\\\"router\\\",\\\"FunctionName\\\":\\\"InitTenantInviteUserProcessRouter\\\",\\\"RouterGroupName\\\":\\\"\\\",\\\"LeftRouterGroupName\\\":\\\"privateGroup\\\",\\\"RightRouterGroupName\\\":\\\"publicGroup\\\"}\",\"PackageRouterEnter\":\"{\\\"Type\\\":\\\"PackageRouterEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\router\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/router/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"Shop\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"router/enter.go\\\",\\\"PackageStructName\\\":\\\"RouterGroup\\\"}\",\"PackageRouterModuleEnter\":\"{\\\"Type\\\":\\\"PackageRouterModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\router\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"api \\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1\\\\\\\"\\\",\\\"RelativePath\\\":\\\"router/shop/enter.go\\\",\\\"StructName\\\":\\\"TenantInviteUserProcessRouter\\\",\\\"AppName\\\":\\\"ApiGroupApp\\\",\\\"GroupName\\\":\\\"ShopApiGroup\\\",\\\"ModuleName\\\":\\\"tenantInviteUserProcessApi\\\",\\\"PackageName\\\":\\\"api\\\",\\\"ServiceName\\\":\\\"TenantInviteUserProcessApi\\\"}\",\"PackageServiceEnter\":\"{\\\"Type\\\":\\\"PackageServiceEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\service\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/service/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"ShopServiceGroup\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"service/enter.go\\\",\\\"PackageStructName\\\":\\\"ServiceGroup\\\"}\",\"PackageServiceModuleEnter\":\"{\\\"Type\\\":\\\"PackageServiceModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\service\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\",\\\"RelativePath\\\":\\\"service/shop/enter.go\\\",\\\"StructName\\\":\\\"TenantInviteUserProcessService\\\",\\\"AppName\\\":\\\"\\\",\\\"GroupName\\\":\\\"\\\",\\\"ModuleName\\\":\\\"\\\",\\\"PackageName\\\":\\\"\\\",\\\"ServiceName\\\":\\\"\\\"}\"}', 0, '[152,153,154,155,156,157]', 38, 0);
INSERT INTO `sys_auto_code_histories` VALUES (9, '2024-08-09 17:50:04.278', '2024-08-09 17:50:04.278', 'tenant_invite_user_process_log', 'shop', '{\"package\":\"shop\",\"tableName\":\"tenant_invite_user_process_log\",\"businessDB\":\"shop\",\"structName\":\"TenantInviteUserProcessLog\",\"packageName\":\"tenantInviteUserProcessLog\",\"description\":\"tenantInviteUserProcessLog表\",\"abbreviation\":\"tenantInviteUserProcessLog\",\"humpPackageName\":\"tenant_invite_user_process_log\",\"gvaModel\":true,\"autoMigrate\":true,\"autoCreateResource\":false,\"autoCreateApiToSql\":true,\"autoCreateMenuToSql\":true,\"fields\":[{\"fieldName\":\"Desc\",\"fieldDesc\":\"操作原因\",\"fieldType\":\"string\",\"fieldJson\":\"desc\",\"dataTypeLong\":\"255\",\"comment\":\"操作原因\",\"columnName\":\"desc\",\"fieldSearchType\":\"LIKE\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"InviteId\",\"fieldDesc\":\"申请id\",\"fieldType\":\"int\",\"fieldJson\":\"inviteId\",\"dataTypeLong\":\"19\",\"comment\":\"申请id\",\"columnName\":\"invite_id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"OptUserId\",\"fieldDesc\":\"操作者id\",\"fieldType\":\"int\",\"fieldJson\":\"optUserId\",\"dataTypeLong\":\"19\",\"comment\":\"操作者id\",\"columnName\":\"opt_user_id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"Process\",\"fieldDesc\":\"处理进度\",\"fieldType\":\"string\",\"fieldJson\":\"process\",\"dataTypeLong\":\"32\",\"comment\":\"处理进度\",\"columnName\":\"process\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"tenant_invite_user_precess\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"TenantId\",\"fieldDesc\":\"租户id\",\"fieldType\":\"int\",\"fieldJson\":\"tenantId\",\"dataTypeLong\":\"19\",\"comment\":\"租户id\",\"columnName\":\"tenant_id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"},{\"fieldName\":\"UserId\",\"fieldDesc\":\"用户id\",\"fieldType\":\"int\",\"fieldJson\":\"userId\",\"dataTypeLong\":\"19\",\"comment\":\"用户id\",\"columnName\":\"user_id\",\"fieldSearchType\":\"=\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":true,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":true,\"sort\":false,\"primaryKey\":false,\"dataSource\":{\"table\":\"\",\"label\":\"\",\"value\":\"\",\"association\":1},\"checkDataSource\":false,\"fieldIndexType\":\"\"}],\"primaryField\":{\"fieldName\":\"ID\",\"fieldDesc\":\"ID\",\"fieldType\":\"uint\",\"fieldJson\":\"ID\",\"dataTypeLong\":\"20\",\"comment\":\"主键ID\",\"columnName\":\"id\",\"fieldSearchType\":\"\",\"fieldSearchHide\":false,\"dictType\":\"\",\"front\":false,\"require\":false,\"defaultValue\":\"\",\"errorText\":\"\",\"clearable\":false,\"sort\":false,\"primaryKey\":false,\"dataSource\":null,\"checkDataSource\":false,\"fieldIndexType\":\"\"}}', 'TenantInviteUserProcessLog', 'shop', 'tenantInviteUserProcessLog表', '{\"resource/package/server/api/api.go.tpl\":\"api/v1/shop/tenant_invite_user_process_log.go\",\"resource/package/server/model/model.go.tpl\":\"model/shop/tenant_invite_user_process_log.go\",\"resource/package/server/model/request/request.go.tpl\":\"model/shop/request/tenant_invite_user_process_log.go\",\"resource/package/server/router/router.go.tpl\":\"router/shop/tenant_invite_user_process_log.go\",\"resource/package/server/service/service.go.tpl\":\"service/shop/tenant_invite_user_process_log.go\",\"resource/package/web/api/api.js.tpl\":\"api/shop/tenantInviteUserProcessLog.js\",\"resource/package/web/view/form.vue.tpl\":\"view/shop/tenantInviteUserProcessLog/tenantInviteUserProcessLogForm.vue\",\"resource/package/web/view/table.vue.tpl\":\"view/shop/tenantInviteUserProcessLog/tenantInviteUserProcessLog.vue\"}', '{\"PackageApiEnter\":\"{\\\"Type\\\":\\\"PackageApiEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\api\\\\\\\\v1\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"ShopApiGroup\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"api/v1/enter.go\\\",\\\"PackageStructName\\\":\\\"ApiGroup\\\"}\",\"PackageApiModuleEnter\":\"{\\\"Type\\\":\\\"PackageApiModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\api\\\\\\\\v1\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/service\\\\\\\"\\\",\\\"RelativePath\\\":\\\"api/v1/shop/enter.go\\\",\\\"StructName\\\":\\\"TenantInviteUserProcessLogApi\\\",\\\"AppName\\\":\\\"ServiceGroupApp\\\",\\\"GroupName\\\":\\\"ShopServiceGroup\\\",\\\"ModuleName\\\":\\\"tenantInviteUserProcessLogService\\\",\\\"PackageName\\\":\\\"service\\\",\\\"ServiceName\\\":\\\"TenantInviteUserProcessLogService\\\"}\",\"PackageInitializeGorm\":\"{\\\"Type\\\":\\\"PackageInitializeGorm\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\initialize\\\\\\\\gorm_biz.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/model/shop\\\\\\\"\\\",\\\"Business\\\":\\\"shop\\\",\\\"StructName\\\":\\\"TenantInviteUserProcessLog\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"initialize/gorm_biz.go\\\",\\\"IsNew\\\":true}\",\"PackageInitializeRouter\":\"{\\\"Type\\\":\\\"PackageInitializeRouter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\initialize\\\\\\\\router_biz.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/router\\\\\\\"\\\",\\\"RelativePath\\\":\\\"initialize/router_biz.go\\\",\\\"AppName\\\":\\\"RouterGroupApp\\\",\\\"GroupName\\\":\\\"Shop\\\",\\\"ModuleName\\\":\\\"shopRouter\\\",\\\"PackageName\\\":\\\"router\\\",\\\"FunctionName\\\":\\\"InitTenantInviteUserProcessLogRouter\\\",\\\"RouterGroupName\\\":\\\"\\\",\\\"LeftRouterGroupName\\\":\\\"privateGroup\\\",\\\"RightRouterGroupName\\\":\\\"publicGroup\\\"}\",\"PackageRouterEnter\":\"{\\\"Type\\\":\\\"PackageRouterEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\router\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/router/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"Shop\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"router/enter.go\\\",\\\"PackageStructName\\\":\\\"RouterGroup\\\"}\",\"PackageRouterModuleEnter\":\"{\\\"Type\\\":\\\"PackageRouterModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\router\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"api \\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/api/v1\\\\\\\"\\\",\\\"RelativePath\\\":\\\"router/shop/enter.go\\\",\\\"StructName\\\":\\\"TenantInviteUserProcessLogRouter\\\",\\\"AppName\\\":\\\"ApiGroupApp\\\",\\\"GroupName\\\":\\\"ShopApiGroup\\\",\\\"ModuleName\\\":\\\"tenantInviteUserProcessLogApi\\\",\\\"PackageName\\\":\\\"api\\\",\\\"ServiceName\\\":\\\"TenantInviteUserProcessLogApi\\\"}\",\"PackageServiceEnter\":\"{\\\"Type\\\":\\\"PackageServiceEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\service\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\\\\\"github.com/flipped-aurora/gin-vue-admin/server/service/shop\\\\\\\"\\\",\\\"StructName\\\":\\\"ShopServiceGroup\\\",\\\"PackageName\\\":\\\"shop\\\",\\\"RelativePath\\\":\\\"service/enter.go\\\",\\\"PackageStructName\\\":\\\"ServiceGroup\\\"}\",\"PackageServiceModuleEnter\":\"{\\\"Type\\\":\\\"PackageServiceModuleEnter\\\",\\\"Path\\\":\\\"D:\\\\\\\\work\\\\\\\\commim\\\\\\\\gin-vue-admin-mult\\\\\\\\server\\\\\\\\service\\\\\\\\shop\\\\\\\\enter.go\\\",\\\"ImportPath\\\":\\\"\\\",\\\"RelativePath\\\":\\\"service/shop/enter.go\\\",\\\"StructName\\\":\\\"TenantInviteUserProcessLogService\\\",\\\"AppName\\\":\\\"\\\",\\\"GroupName\\\":\\\"\\\",\\\"ModuleName\\\":\\\"\\\",\\\"PackageName\\\":\\\"\\\",\\\"ServiceName\\\":\\\"\\\"}\"}', 0, '[158,159,160,161,162,163]', 39, 0);

-- ----------------------------
-- Table structure for sys_auto_code_packages
-- ----------------------------
DROP TABLE IF EXISTS `sys_auto_code_packages`;
CREATE TABLE `sys_auto_code_packages`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `desc` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '展示名',
  `template` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模版',
  `package_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '包名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_auto_code_packages
-- ----------------------------
INSERT INTO `sys_auto_code_packages` VALUES (1, '2024-08-08 16:25:46.375', '2024-08-08 16:25:46.375', '实体店铺功能', '店铺', 'package', 'shop');

-- ----------------------------
-- Table structure for sys_base_menu_btns
-- ----------------------------
DROP TABLE IF EXISTS `sys_base_menu_btns`;
CREATE TABLE `sys_base_menu_btns`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '按钮关键key',
  `desc` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sys_base_menu_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_base_menu_btns
-- ----------------------------

-- ----------------------------
-- Table structure for sys_base_menu_parameters
-- ----------------------------
DROP TABLE IF EXISTS `sys_base_menu_parameters`;
CREATE TABLE `sys_base_menu_parameters`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `sys_base_menu_id` bigint UNSIGNED NULL DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址栏携带参数为params还是query',
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址栏携带参数的key',
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址栏携带参数的值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_base_menu_parameters
-- ----------------------------

-- ----------------------------
-- Table structure for sys_base_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_base_menus`;
CREATE TABLE `sys_base_menus`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `menu_level` bigint UNSIGNED NULL DEFAULT NULL,
  `parent_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '父菜单ID',
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由path',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由name',
  `hidden` tinyint(1) NULL DEFAULT NULL COMMENT '是否在列表隐藏',
  `component` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '对应前端文件路径',
  `sort` bigint NULL DEFAULT NULL COMMENT '排序标记',
  `active_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '附加属性',
  `keep_alive` tinyint(1) NULL DEFAULT NULL COMMENT '附加属性',
  `default_menu` tinyint(1) NULL DEFAULT NULL COMMENT '附加属性',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '附加属性',
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '附加属性',
  `close_tab` tinyint(1) NULL DEFAULT NULL COMMENT '附加属性',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_base_menus
-- ----------------------------
INSERT INTO `sys_base_menus` VALUES (1, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 0, 'dashboard', 'dashboard', 0, 'view/dashboard/index.vue', 1, '', 0, 0, '仪表盘', 'odometer', 0);
INSERT INTO `sys_base_menus` VALUES (2, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 0, 'about', 'about', 0, 'view/about/index.vue', 9, '', 0, 0, '关于我们', 'info-filled', 0);
INSERT INTO `sys_base_menus` VALUES (3, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 0, 'admin', 'superAdmin', 0, 'view/superAdmin/index.vue', 3, '', 0, 0, '超级管理员', 'user', 0);
INSERT INTO `sys_base_menus` VALUES (4, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 3, 'authority', 'authority', 0, 'view/superAdmin/authority/authority.vue', 1, '', 0, 0, '角色管理', 'avatar', 0);
INSERT INTO `sys_base_menus` VALUES (5, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 3, 'menu', 'menu', 0, 'view/superAdmin/menu/menu.vue', 2, '', 1, 0, '菜单管理', 'tickets', 0);
INSERT INTO `sys_base_menus` VALUES (6, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 3, 'api', 'api', 0, 'view/superAdmin/api/api.vue', 3, '', 1, 0, 'api管理', 'platform', 0);
INSERT INTO `sys_base_menus` VALUES (7, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 3, 'user', 'user', 0, 'view/superAdmin/user/user.vue', 4, '', 0, 0, '用户管理', 'coordinate', 0);
INSERT INTO `sys_base_menus` VALUES (8, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 3, 'dictionary', 'dictionary', 0, 'view/superAdmin/dictionary/sysDictionary.vue', 5, '', 0, 0, '字典管理', 'notebook', 0);
INSERT INTO `sys_base_menus` VALUES (9, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 3, 'operation', 'operation', 0, 'view/superAdmin/operation/sysOperationRecord.vue', 6, '', 0, 0, '操作历史', 'pie-chart', 0);
INSERT INTO `sys_base_menus` VALUES (10, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 0, 'person', 'person', 1, 'view/person/person.vue', 4, '', 0, 0, '个人信息', 'message', 0);
INSERT INTO `sys_base_menus` VALUES (11, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 0, 'example', 'example', 0, 'view/example/index.vue', 7, '', 0, 0, '示例文件', 'management', 0);
INSERT INTO `sys_base_menus` VALUES (12, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 11, 'upload', 'upload', 0, 'view/example/upload/upload.vue', 5, '', 0, 0, '媒体库（上传下载）', 'upload', 0);
INSERT INTO `sys_base_menus` VALUES (13, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 11, 'breakpoint', 'breakpoint', 0, 'view/example/breakpoint/breakpoint.vue', 6, '', 0, 0, '断点续传', 'upload-filled', 0);
INSERT INTO `sys_base_menus` VALUES (14, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 11, 'customer', 'customer', 0, 'view/example/customer/customer.vue', 7, '', 0, 0, '客户列表（资源示例）', 'avatar', 0);
INSERT INTO `sys_base_menus` VALUES (15, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 0, 'systemTools', 'systemTools', 0, 'view/systemTools/index.vue', 5, '', 0, 0, '系统工具', 'tools', 0);
INSERT INTO `sys_base_menus` VALUES (16, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 15, 'autoCode', 'autoCode', 0, 'view/systemTools/autoCode/index.vue', 1, '', 1, 0, '代码生成器', 'cpu', 0);
INSERT INTO `sys_base_menus` VALUES (17, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 15, 'formCreate', 'formCreate', 0, 'view/systemTools/formCreate/index.vue', 3, '', 1, 0, '表单生成器', 'magic-stick', 0);
INSERT INTO `sys_base_menus` VALUES (18, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 15, 'system', 'system', 0, 'view/systemTools/system/system.vue', 4, '', 0, 0, '系统配置', 'operation', 0);
INSERT INTO `sys_base_menus` VALUES (19, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 15, 'autoCodeAdmin', 'autoCodeAdmin', 0, 'view/systemTools/autoCodeAdmin/index.vue', 2, '', 0, 0, '自动化代码管理', 'magic-stick', 0);
INSERT INTO `sys_base_menus` VALUES (20, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 15, 'autoCodeEdit/:id', 'autoCodeEdit', 1, 'view/systemTools/autoCode/index.vue', 0, '', 0, 0, '自动化代码-${id}', 'magic-stick', 0);
INSERT INTO `sys_base_menus` VALUES (21, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 15, 'autoPkg', 'autoPkg', 0, 'view/systemTools/autoPkg/autoPkg.vue', 0, '', 0, 0, '模板配置', 'folder', 0);
INSERT INTO `sys_base_menus` VALUES (22, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 0, 'https://www.gin-vue-admin.com', 'https://www.gin-vue-admin.com', 0, '/', 0, '', 0, 0, '官方网站', 'customer-gva', 0);
INSERT INTO `sys_base_menus` VALUES (23, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 0, 'state', 'state', 0, 'view/system/state.vue', 8, '', 0, 0, '服务器状态', 'cloudy', 0);
INSERT INTO `sys_base_menus` VALUES (24, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 0, 'plugin', 'plugin', 0, 'view/routerHolder.vue', 6, '', 0, 0, '插件系统', 'cherry', 0);
INSERT INTO `sys_base_menus` VALUES (25, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 24, 'https://plugin.gin-vue-admin.com/', 'https://plugin.gin-vue-admin.com/', 0, 'https://plugin.gin-vue-admin.com/', 0, '', 0, 0, '插件市场', 'shop', 0);
INSERT INTO `sys_base_menus` VALUES (26, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 24, 'installPlugin', 'installPlugin', 0, 'view/systemTools/installPlugin/index.vue', 1, '', 0, 0, '插件安装', 'box', 0);
INSERT INTO `sys_base_menus` VALUES (27, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 24, 'pubPlug', 'pubPlug', 0, 'view/systemTools/pubPlug/pubPlug.vue', 3, '', 0, 0, '打包插件', 'files', 0);
INSERT INTO `sys_base_menus` VALUES (28, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 24, 'plugin-email', 'plugin-email', 0, 'plugin/email/view/index.vue', 4, '', 0, 0, '邮件插件', 'message', 0);
INSERT INTO `sys_base_menus` VALUES (29, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 15, 'exportTemplate', 'exportTemplate', 0, 'view/systemTools/exportTemplate/exportTemplate.vue', 5, '', 0, 0, '表格模板', 'reading', 0);
INSERT INTO `sys_base_menus` VALUES (30, '2024-08-03 15:27:53.677', '2024-08-03 15:27:53.677', 0, 24, 'anInfo', 'anInfo', 0, 'plugin/announcement/view/info.vue', 5, '', 0, 0, '公告管理[示例]', 'scaleToOriginal', 0);
INSERT INTO `sys_base_menus` VALUES (31, '2024-08-08 16:56:10.818', '2024-08-08 16:56:10.818', 0, 0, 'tenant', 'tenant', 0, 'view/shop/tenant/tenant.vue', 0, '', 0, 0, 'tenant表', '', 0);
INSERT INTO `sys_base_menus` VALUES (32, '2024-08-08 17:38:09.073', '2024-08-08 17:38:09.073', 0, 0, 'tenantInfo', 'tenantInfo', 0, 'view/shop/tenantInfo/tenantInfo.vue', 0, '', 0, 0, 'tenantInfo表', '', 0);
INSERT INTO `sys_base_menus` VALUES (33, '2024-08-08 17:50:31.388', '2024-08-08 17:50:31.388', 0, 0, 'tenantInfoReviewProcess', 'tenantInfoReviewProcess', 0, 'view/shop/tenantInfoReviewProcess/tenantInfoReviewProcess.vue', 0, '', 0, 0, 'tenantInfoReviewProcess表', '', 0);
INSERT INTO `sys_base_menus` VALUES (34, '2024-08-08 17:53:37.284', '2024-08-08 17:53:37.284', 0, 0, 'tenantInfoReviewLog', 'tenantInfoReviewLog', 0, 'view/shop/tenantInfoReviewLog/tenantInfoReviewLog.vue', 0, '', 0, 0, 'tenantInfoReviewLog表', '', 0);
INSERT INTO `sys_base_menus` VALUES (35, '2024-08-09 17:09:33.444', '2024-08-09 17:09:33.444', 0, 0, 'users', 'users', 0, 'view/shop/users/users.vue', 0, '', 0, 0, 'users表', '', 0);
INSERT INTO `sys_base_menus` VALUES (36, '2024-08-09 17:43:53.495', '2024-08-09 17:43:53.495', 0, 0, 'userApplyJoinTenantProcess', 'userApplyJoinTenantProcess', 0, 'view/shop/userApplyJoinTenantProcess/userApplyJoinTenantProcess.vue', 0, '', 0, 0, 'userApplyJoinTenantProcess表', '', 0);
INSERT INTO `sys_base_menus` VALUES (37, '2024-08-09 17:47:05.829', '2024-08-09 17:47:05.829', 0, 0, 'userApplyJoinTenantProcessFlow', 'userApplyJoinTenantProcessFlow', 0, 'view/shop/userApplyJoinTenantProcessFlow/userApplyJoinTenantProcessFlow.vue', 0, '', 0, 0, 'userApplyJoinTenantProcessFlow表', '', 0);
INSERT INTO `sys_base_menus` VALUES (38, '2024-08-09 17:48:47.295', '2024-08-09 17:48:47.295', 0, 0, 'tenantInviteUserProcess', 'tenantInviteUserProcess', 0, 'view/shop/tenantInviteUserProcess/tenantInviteUserProcess.vue', 0, '', 0, 0, 'tenantInviteUserProcess表', '', 0);
INSERT INTO `sys_base_menus` VALUES (39, '2024-08-09 17:50:04.277', '2024-08-09 17:50:04.277', 0, 0, 'tenantInviteUserProcessLog', 'tenantInviteUserProcessLog', 0, 'view/shop/tenantInviteUserProcessLog/tenantInviteUserProcessLog.vue', 0, '', 0, 0, 'tenantInviteUserProcessLog表', '', 0);

-- ----------------------------
-- Table structure for sys_data_authority_id
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_authority_id`;
CREATE TABLE `sys_data_authority_id`  (
  `sys_authority_authority_id` bigint UNSIGNED NOT NULL COMMENT '角色ID',
  `data_authority_id_authority_id` bigint UNSIGNED NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_authority_authority_id`, `data_authority_id_authority_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_data_authority_id
-- ----------------------------
INSERT INTO `sys_data_authority_id` VALUES (888, 888);
INSERT INTO `sys_data_authority_id` VALUES (888, 8881);
INSERT INTO `sys_data_authority_id` VALUES (888, 9528);
INSERT INTO `sys_data_authority_id` VALUES (9528, 8881);
INSERT INTO `sys_data_authority_id` VALUES (9528, 9528);

-- ----------------------------
-- Table structure for sys_dictionaries
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionaries`;
CREATE TABLE `sys_dictionaries`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典名（中）',
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典名（英）',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `desc` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dictionaries
-- ----------------------------
INSERT INTO `sys_dictionaries` VALUES (1, '2024-08-03 15:27:53.660', '2024-08-03 15:27:53.662', '性别', 'gender', 1, '性别字典');
INSERT INTO `sys_dictionaries` VALUES (2, '2024-08-03 15:27:53.660', '2024-08-03 15:27:53.665', '数据库int类型', 'int', 1, 'int类型对应的数据库类型');
INSERT INTO `sys_dictionaries` VALUES (3, '2024-08-03 15:27:53.660', '2024-08-03 15:27:53.667', '数据库时间日期类型', 'time.Time', 1, '数据库时间日期类型');
INSERT INTO `sys_dictionaries` VALUES (4, '2024-08-03 15:27:53.660', '2024-08-03 15:27:53.670', '数据库浮点型', 'float64', 1, '数据库浮点型');
INSERT INTO `sys_dictionaries` VALUES (5, '2024-08-03 15:27:53.660', '2024-08-03 15:27:53.672', '数据库字符串', 'string', 1, '数据库字符串');
INSERT INTO `sys_dictionaries` VALUES (6, '2024-08-03 15:27:53.660', '2024-08-03 15:27:53.675', '数据库bool类型', 'bool', 1, '数据库bool类型');
INSERT INTO `sys_dictionaries` VALUES (7, '2024-08-08 16:40:14.652', '2024-08-08 16:46:49.575', '商户状态', 'tenantStatus', 1, '商户状态');
INSERT INTO `sys_dictionaries` VALUES (8, '2024-08-08 17:44:50.177', '2024-08-08 17:44:50.177', '商户审核进度', 'tenant_review_process', 1, '商户审核进度');
INSERT INTO `sys_dictionaries` VALUES (9, '2024-08-09 17:05:19.844', '2024-08-09 17:05:19.844', '用户状态', 'user_status', 1, '用户状态');
INSERT INTO `sys_dictionaries` VALUES (10, '2024-08-09 17:12:59.748', '2024-08-09 17:12:59.748', '申请加入商户进度', 'user_apply_tenant_process', 1, '用户申请加入商户处理进度');
INSERT INTO `sys_dictionaries` VALUES (11, '2024-08-09 17:13:55.940', '2024-08-09 17:13:55.940', '商户邀请用户加入进度', 'tenant_invite_user_precess', 1, '商户邀请用户加入处理进度');

-- ----------------------------
-- Table structure for sys_dictionary_details
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionary_details`;
CREATE TABLE `sys_dictionary_details`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '展示值',
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典值',
  `extend` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '扩展值',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '启用状态',
  `sort` bigint NULL DEFAULT NULL COMMENT '排序标记',
  `sys_dictionary_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '关联标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dictionary_details
-- ----------------------------
INSERT INTO `sys_dictionary_details` VALUES (1, '2024-08-03 15:27:53.662', '2024-08-03 15:27:53.662', '男', '1', '', 1, 1, 1);
INSERT INTO `sys_dictionary_details` VALUES (2, '2024-08-03 15:27:53.662', '2024-08-03 15:27:53.662', '女', '2', '', 1, 2, 1);
INSERT INTO `sys_dictionary_details` VALUES (3, '2024-08-03 15:27:53.665', '2024-08-03 15:27:53.665', 'smallint', '1', 'mysql', 1, 1, 2);
INSERT INTO `sys_dictionary_details` VALUES (4, '2024-08-03 15:27:53.665', '2024-08-03 15:27:53.665', 'mediumint', '2', 'mysql', 1, 2, 2);
INSERT INTO `sys_dictionary_details` VALUES (5, '2024-08-03 15:27:53.665', '2024-08-03 15:27:53.665', 'int', '3', 'mysql', 1, 3, 2);
INSERT INTO `sys_dictionary_details` VALUES (6, '2024-08-03 15:27:53.665', '2024-08-03 15:27:53.665', 'bigint', '4', 'mysql', 1, 4, 2);
INSERT INTO `sys_dictionary_details` VALUES (7, '2024-08-03 15:27:53.665', '2024-08-03 15:27:53.665', 'int2', '5', 'pgsql', 1, 5, 2);
INSERT INTO `sys_dictionary_details` VALUES (8, '2024-08-03 15:27:53.665', '2024-08-03 15:27:53.665', 'int4', '6', 'pgsql', 1, 6, 2);
INSERT INTO `sys_dictionary_details` VALUES (9, '2024-08-03 15:27:53.665', '2024-08-03 15:27:53.665', 'int6', '7', 'pgsql', 1, 7, 2);
INSERT INTO `sys_dictionary_details` VALUES (10, '2024-08-03 15:27:53.665', '2024-08-03 15:27:53.665', 'int8', '8', 'pgsql', 1, 8, 2);
INSERT INTO `sys_dictionary_details` VALUES (11, '2024-08-03 15:27:53.667', '2024-08-03 15:27:53.667', 'date', '', '', 1, 0, 3);
INSERT INTO `sys_dictionary_details` VALUES (12, '2024-08-03 15:27:53.667', '2024-08-03 15:27:53.667', 'time', '1', 'mysql', 1, 1, 3);
INSERT INTO `sys_dictionary_details` VALUES (13, '2024-08-03 15:27:53.667', '2024-08-03 15:27:53.667', 'year', '2', 'mysql', 1, 2, 3);
INSERT INTO `sys_dictionary_details` VALUES (14, '2024-08-03 15:27:53.667', '2024-08-03 15:27:53.667', 'datetime', '3', 'mysql', 1, 3, 3);
INSERT INTO `sys_dictionary_details` VALUES (15, '2024-08-03 15:27:53.667', '2024-08-03 15:27:53.667', 'timestamp', '5', 'mysql', 1, 5, 3);
INSERT INTO `sys_dictionary_details` VALUES (16, '2024-08-03 15:27:53.667', '2024-08-03 15:27:53.667', 'timestamptz', '6', 'pgsql', 1, 5, 3);
INSERT INTO `sys_dictionary_details` VALUES (17, '2024-08-03 15:27:53.670', '2024-08-03 15:27:53.670', 'float', '', '', 1, 0, 4);
INSERT INTO `sys_dictionary_details` VALUES (18, '2024-08-03 15:27:53.670', '2024-08-03 15:27:53.670', 'double', '1', 'mysql', 1, 1, 4);
INSERT INTO `sys_dictionary_details` VALUES (19, '2024-08-03 15:27:53.670', '2024-08-03 15:27:53.670', 'decimal', '2', 'mysql', 1, 2, 4);
INSERT INTO `sys_dictionary_details` VALUES (20, '2024-08-03 15:27:53.670', '2024-08-03 15:27:53.670', 'numeric', '3', 'pgsql', 1, 3, 4);
INSERT INTO `sys_dictionary_details` VALUES (21, '2024-08-03 15:27:53.670', '2024-08-03 15:27:53.670', 'smallserial', '4', 'pgsql', 1, 4, 4);
INSERT INTO `sys_dictionary_details` VALUES (22, '2024-08-03 15:27:53.673', '2024-08-03 15:27:53.673', 'char', '', '', 1, 0, 5);
INSERT INTO `sys_dictionary_details` VALUES (23, '2024-08-03 15:27:53.673', '2024-08-03 15:27:53.673', 'varchar', '1', 'mysql', 1, 1, 5);
INSERT INTO `sys_dictionary_details` VALUES (24, '2024-08-03 15:27:53.673', '2024-08-03 15:27:53.673', 'tinyblob', '2', 'mysql', 1, 2, 5);
INSERT INTO `sys_dictionary_details` VALUES (25, '2024-08-03 15:27:53.673', '2024-08-03 15:27:53.673', 'tinytext', '3', 'mysql', 1, 3, 5);
INSERT INTO `sys_dictionary_details` VALUES (26, '2024-08-03 15:27:53.673', '2024-08-03 15:27:53.673', 'text', '4', 'mysql', 1, 4, 5);
INSERT INTO `sys_dictionary_details` VALUES (27, '2024-08-03 15:27:53.673', '2024-08-03 15:27:53.673', 'blob', '5', 'mysql', 1, 5, 5);
INSERT INTO `sys_dictionary_details` VALUES (28, '2024-08-03 15:27:53.673', '2024-08-03 15:27:53.673', 'mediumblob', '6', 'mysql', 1, 6, 5);
INSERT INTO `sys_dictionary_details` VALUES (29, '2024-08-03 15:27:53.673', '2024-08-03 15:27:53.673', 'mediumtext', '7', 'mysql', 1, 7, 5);
INSERT INTO `sys_dictionary_details` VALUES (30, '2024-08-03 15:27:53.673', '2024-08-03 15:27:53.673', 'longblob', '8', 'mysql', 1, 8, 5);
INSERT INTO `sys_dictionary_details` VALUES (31, '2024-08-03 15:27:53.673', '2024-08-03 15:27:53.673', 'longtext', '9', 'mysql', 1, 9, 5);
INSERT INTO `sys_dictionary_details` VALUES (32, '2024-08-03 15:27:53.675', '2024-08-03 15:27:53.675', 'tinyint', '1', 'mysql', 1, 0, 6);
INSERT INTO `sys_dictionary_details` VALUES (33, '2024-08-03 15:27:53.675', '2024-08-03 15:27:53.675', 'bool', '2', 'pgsql', 1, 0, 6);
INSERT INTO `sys_dictionary_details` VALUES (34, '2024-08-08 16:41:04.957', '2024-08-08 16:41:04.957', '创建', '0', '', 1, 0, 7);
INSERT INTO `sys_dictionary_details` VALUES (35, '2024-08-08 16:41:34.201', '2024-08-08 16:41:34.201', '提交审核', '1', '', 1, 1, 7);
INSERT INTO `sys_dictionary_details` VALUES (36, '2024-08-08 16:41:56.260', '2024-08-08 16:41:56.260', '审核通过', '2', '', 1, 2, 7);
INSERT INTO `sys_dictionary_details` VALUES (37, '2024-08-08 16:42:29.341', '2024-08-08 16:42:29.341', '审核不通过', '3', '', 1, 3, 7);
INSERT INTO `sys_dictionary_details` VALUES (38, '2024-08-08 16:43:05.101', '2024-08-08 16:43:05.101', '关停', '4', '', 1, 4, 7);
INSERT INTO `sys_dictionary_details` VALUES (39, '2024-08-08 16:43:24.685', '2024-08-08 16:43:24.685', '封禁', '5', '', 1, 5, 7);
INSERT INTO `sys_dictionary_details` VALUES (40, '2024-08-08 17:45:19.114', '2024-08-08 17:45:19.114', '创建', '0', '', 1, 0, 8);
INSERT INTO `sys_dictionary_details` VALUES (41, '2024-08-08 17:45:46.352', '2024-08-08 17:45:46.352', '审核中', '1', '', 1, 1, 8);
INSERT INTO `sys_dictionary_details` VALUES (42, '2024-08-08 17:47:13.246', '2024-08-08 17:47:13.246', '审核通过', '2', '', 1, 2, 8);
INSERT INTO `sys_dictionary_details` VALUES (43, '2024-08-08 17:47:44.722', '2024-08-08 17:47:44.722', '审核不通过', '3', '', 1, 3, 8);
INSERT INTO `sys_dictionary_details` VALUES (44, '2024-08-09 17:05:38.076', '2024-08-09 17:05:38.076', '正常', '0', '', 1, 0, 9);
INSERT INTO `sys_dictionary_details` VALUES (45, '2024-08-09 17:05:50.379', '2024-08-09 17:05:50.379', '冻结', '1', '', 1, 1, 9);
INSERT INTO `sys_dictionary_details` VALUES (46, '2024-08-09 17:15:06.301', '2024-08-09 17:15:06.301', '创建申请', '0', '', 1, 0, 10);
INSERT INTO `sys_dictionary_details` VALUES (47, '2024-08-09 17:15:21.844', '2024-08-09 17:15:21.844', '审核中', '1', '', 1, 1, 10);
INSERT INTO `sys_dictionary_details` VALUES (48, '2024-08-09 17:15:33.148', '2024-08-09 17:15:33.148', '审核通过', '2', '', 1, 2, 10);
INSERT INTO `sys_dictionary_details` VALUES (49, '2024-08-09 17:15:55.860', '2024-08-09 17:15:55.860', '拒绝申请', '3', '', 1, 3, 10);
INSERT INTO `sys_dictionary_details` VALUES (50, '2024-08-09 17:16:23.324', '2024-08-09 17:16:23.324', '创建邀请', '0', '', 1, 0, 11);
INSERT INTO `sys_dictionary_details` VALUES (51, '2024-08-09 17:16:58.606', '2024-08-09 17:16:58.606', '等待接受邀请', '1', '', 1, 1, 11);
INSERT INTO `sys_dictionary_details` VALUES (52, '2024-08-09 17:17:13.301', '2024-08-09 17:17:13.301', '接受邀请', '2', '', 1, 2, 11);
INSERT INTO `sys_dictionary_details` VALUES (53, '2024-08-09 17:17:27.380', '2024-08-09 17:17:27.380', '拒绝邀请', '3', '', 1, 3, 11);

-- ----------------------------
-- Table structure for sys_export_template_condition
-- ----------------------------
DROP TABLE IF EXISTS `sys_export_template_condition`;
CREATE TABLE `sys_export_template_condition`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `template_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模板标识',
  `from` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '条件取的key',
  `column` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作为查询条件的字段',
  `operator` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作符',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_export_template_condition
-- ----------------------------

-- ----------------------------
-- Table structure for sys_export_template_join
-- ----------------------------
DROP TABLE IF EXISTS `sys_export_template_join`;
CREATE TABLE `sys_export_template_join`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `template_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模板标识',
  `joins` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联',
  `table` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联表',
  `on` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联条件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_export_template_join
-- ----------------------------

-- ----------------------------
-- Table structure for sys_export_templates
-- ----------------------------
DROP TABLE IF EXISTS `sys_export_templates`;
CREATE TABLE `sys_export_templates`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `db_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据库名称',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模板名称',
  `table_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表名称',
  `template_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模板标识',
  `template_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `limit` bigint NULL DEFAULT NULL COMMENT '导出限制',
  `order` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_export_templates
-- ----------------------------
INSERT INTO `sys_export_templates` VALUES (1, '2024-08-03 15:27:53.856', '2024-08-03 15:27:53.856', '', 'api', 'sys_apis', 'api', '{\n\"path\":\"路径\",\n\"method\":\"方法（大写）\",\n\"description\":\"方法介绍\",\n\"api_group\":\"方法分组\"\n}', NULL, '');

-- ----------------------------
-- Table structure for sys_ignore_apis
-- ----------------------------
DROP TABLE IF EXISTS `sys_ignore_apis`;
CREATE TABLE `sys_ignore_apis`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'api路径',
  `method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'POST' COMMENT '方法',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_ignore_apis
-- ----------------------------
INSERT INTO `sys_ignore_apis` VALUES (1, '2024-08-03 15:27:53.644', '2024-08-03 15:27:53.644', '/swagger/*any', 'GET');
INSERT INTO `sys_ignore_apis` VALUES (2, '2024-08-03 15:27:53.644', '2024-08-03 15:27:53.644', '/api/freshCasbin', 'GET');
INSERT INTO `sys_ignore_apis` VALUES (3, '2024-08-03 15:27:53.644', '2024-08-03 15:27:53.644', '/uploads/file/*filepath', 'GET');
INSERT INTO `sys_ignore_apis` VALUES (4, '2024-08-03 15:27:53.644', '2024-08-03 15:27:53.644', '/health', 'GET');
INSERT INTO `sys_ignore_apis` VALUES (5, '2024-08-03 15:27:53.644', '2024-08-03 15:27:53.644', '/uploads/file/*filepath', 'HEAD');
INSERT INTO `sys_ignore_apis` VALUES (6, '2024-08-03 15:27:53.644', '2024-08-03 15:27:53.644', '/autoCode/llmAuto', 'POST');
INSERT INTO `sys_ignore_apis` VALUES (7, '2024-08-03 15:27:53.644', '2024-08-03 15:27:53.644', '/system/reloadSystem', 'POST');
INSERT INTO `sys_ignore_apis` VALUES (8, '2024-08-03 15:27:53.644', '2024-08-03 15:27:53.644', '/base/login', 'POST');
INSERT INTO `sys_ignore_apis` VALUES (9, '2024-08-03 15:27:53.644', '2024-08-03 15:27:53.644', '/base/captcha', 'POST');
INSERT INTO `sys_ignore_apis` VALUES (10, '2024-08-03 15:27:53.644', '2024-08-03 15:27:53.644', '/init/initdb', 'POST');
INSERT INTO `sys_ignore_apis` VALUES (11, '2024-08-03 15:27:53.644', '2024-08-03 15:27:53.644', '/init/checkdb', 'POST');

-- ----------------------------
-- Table structure for sys_operation_records
-- ----------------------------
DROP TABLE IF EXISTS `sys_operation_records`;
CREATE TABLE `sys_operation_records`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NULL DEFAULT NULL,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求ip',
  `method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求方法',
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求路径',
  `status` bigint NULL DEFAULT NULL COMMENT '请求状态',
  `latency` bigint NULL DEFAULT NULL COMMENT '延迟',
  `agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '代理',
  `error_message` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '错误信息',
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '请求Body',
  `resp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '响应Body',
  `user_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_operation_records
-- ----------------------------
INSERT INTO `sys_operation_records` VALUES (1, 0, '2024-08-03 15:28:31.188', '2024-08-03 15:28:31.188', '127.0.0.1', 'GET', '/api/getApiGroups', 200, 6177500, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{}', '{\"code\":0,\"data\":{\"apiGroupMap\":{\"api\":\"api\",\"authority\":\"角色\",\"authorityBtn\":\"按钮权限\",\"autoCode\":\"代码生成器历史\",\"casbin\":\"casbin\",\"customer\":\"客户\",\"email\":\"email\",\"fileUploadAndDownload\":\"文件上传与下载\",\"info\":\"公告\",\"jwt\":\"jwt\",\"menu\":\"菜单\",\"simpleUploader\":\"断点续传(插件版)\",\"sysDictionary\":\"系统字典\",\"sysDictionaryDetail\":\"系统字典详情\",\"sysExportTemplate\":\"表格模板\",\"sysOperationRecord\":\"操作记录\",\"system\":\"系统服务\",\"user\":\"系统用户\"},\"groups\":[\"jwt\",\"系统用户\",\"api\",\"角色\",\"casbin\",\"菜单\",\"分片上传\",\"文件上传与下载\",\"系统服务\",\"客户\",\"代码生成器\",\"模板配置\",\"代码生成器历史\",\"系统字典详情\",\"系统字典\",\"操作记录\",\"断点续传(插件版)\",\"email\",\"按钮权限\",\"表格模板\",\"公告\"]},\"msg\":\"成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (2, 0, '2024-08-08 16:40:14.663', '2024-08-08 16:40:14.663', '127.0.0.1', 'POST', '/sysDictionary/createSysDictionary', 200, 11405100, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"name\":\"商户状态\",\"type\":\"tenantStatus\",\"status\":true,\"desc\":\"商户状态\"}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (3, 0, '2024-08-08 16:41:04.961', '2024-08-08 16:41:04.961', '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 3213600, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"label\":\"创建\",\"value\":\"0\",\"status\":true,\"sort\":0,\"sysDictionaryID\":7}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (4, 0, '2024-08-08 16:41:34.204', '2024-08-08 16:41:34.204', '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 3982200, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"label\":\"提交审核\",\"value\":\"1\",\"status\":true,\"sort\":1,\"sysDictionaryID\":7}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (5, 0, '2024-08-08 16:41:56.264', '2024-08-08 16:41:56.264', '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 3884100, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"label\":\"审核通过\",\"value\":\"2\",\"status\":true,\"sort\":2,\"sysDictionaryID\":7}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (6, 0, '2024-08-08 16:42:29.345', '2024-08-08 16:42:29.345', '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 3991200, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"label\":\"审核不通过\",\"value\":\"3\",\"status\":true,\"sort\":3,\"sysDictionaryID\":7}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (7, 0, '2024-08-08 16:43:05.104', '2024-08-08 16:43:05.104', '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 2859200, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"label\":\"关停\",\"value\":\"4\",\"status\":true,\"sort\":4,\"sysDictionaryID\":7}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (8, 0, '2024-08-08 16:43:24.689', '2024-08-08 16:43:24.689', '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 3874700, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"label\":\"封禁\",\"value\":\"5\",\"status\":true,\"sort\":5,\"sysDictionaryID\":7}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (9, 0, '2024-08-08 16:46:49.579', '2024-08-08 16:46:49.579', '127.0.0.1', 'PUT', '/sysDictionary/updateSysDictionary', 200, 5023700, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (10, 0, '2024-08-08 17:44:50.180', '2024-08-08 17:44:50.180', '127.0.0.1', 'POST', '/sysDictionary/createSysDictionary', 200, 4285000, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"name\":\"商户审核进度\",\"type\":\"tenant_review_process\",\"status\":true,\"desc\":\"商户审核进度\"}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (11, 0, '2024-08-08 17:45:19.118', '2024-08-08 17:45:19.118', '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 3692700, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"label\":\"创建\",\"value\":\"0\",\"status\":true,\"sort\":0,\"sysDictionaryID\":8}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (12, 0, '2024-08-08 17:45:46.356', '2024-08-08 17:45:46.356', '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 3838300, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"label\":\"审核中\",\"value\":\"1\",\"status\":true,\"sort\":1,\"sysDictionaryID\":8}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (13, 0, '2024-08-08 17:47:13.250', '2024-08-08 17:47:13.250', '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 3285800, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"label\":\"审核通过\",\"value\":\"2\",\"status\":true,\"sort\":2,\"sysDictionaryID\":8}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (14, 0, '2024-08-08 17:47:44.726', '2024-08-08 17:47:44.726', '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 3957200, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"label\":\"审核不通过\",\"value\":\"3\",\"status\":true,\"sort\":3,\"sysDictionaryID\":8,\"extend\":\"\"}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (15, 0, '2024-08-09 17:05:19.848', '2024-08-09 17:05:19.848', '127.0.0.1', 'POST', '/sysDictionary/createSysDictionary', 200, 4513300, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"name\":\"用户状态\",\"type\":\"user_status\",\"status\":true,\"desc\":\"用户状态\"}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (16, 0, '2024-08-09 17:05:38.080', '2024-08-09 17:05:38.080', '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 3851100, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"label\":\"正常\",\"value\":\"0\",\"status\":true,\"sort\":0,\"sysDictionaryID\":9}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (17, 0, '2024-08-09 17:05:50.382', '2024-08-09 17:05:50.382', '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 3010900, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"label\":\"冻结\",\"value\":\"1\",\"status\":true,\"sort\":1,\"sysDictionaryID\":9}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (18, 0, '2024-08-09 17:12:59.752', '2024-08-09 17:12:59.752', '127.0.0.1', 'POST', '/sysDictionary/createSysDictionary', 200, 4203400, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"name\":\"申请加入商户进度\",\"type\":\"user_apply_tenant_process\",\"status\":true,\"desc\":\"用户申请加入商户处理进度\"}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (19, 0, '2024-08-09 17:13:55.944', '2024-08-09 17:13:55.944', '127.0.0.1', 'POST', '/sysDictionary/createSysDictionary', 200, 4200500, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"name\":\"商户邀请用户加入进度\",\"type\":\"tenant_invite_user_precess\",\"status\":true,\"desc\":\"商户邀请用户加入处理进度\"}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (20, 0, '2024-08-09 17:15:06.305', '2024-08-09 17:15:06.305', '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 3903000, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"label\":\"创建申请\",\"value\":\"0\",\"status\":true,\"sort\":0,\"sysDictionaryID\":10}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (21, 0, '2024-08-09 17:15:21.847', '2024-08-09 17:15:21.847', '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 3801200, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"label\":\"审核中\",\"value\":\"1\",\"status\":true,\"sort\":1,\"sysDictionaryID\":10}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (22, 0, '2024-08-09 17:15:33.151', '2024-08-09 17:15:33.151', '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 3471800, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"label\":\"审核通过\",\"value\":\"2\",\"status\":true,\"sort\":2,\"sysDictionaryID\":10}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (23, 0, '2024-08-09 17:15:55.861', '2024-08-09 17:15:55.861', '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 1811900, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"label\":\"拒绝申请\",\"value\":\"3\",\"status\":true,\"sort\":3,\"sysDictionaryID\":10}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (24, 0, '2024-08-09 17:16:23.327', '2024-08-09 17:16:23.327', '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 3840500, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"label\":\"创建邀请\",\"value\":\"0\",\"status\":true,\"sort\":0,\"sysDictionaryID\":11}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (25, 0, '2024-08-09 17:16:58.610', '2024-08-09 17:16:58.610', '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 3692000, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"label\":\"等待接受邀请\",\"value\":\"1\",\"status\":true,\"sort\":1,\"sysDictionaryID\":11}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (26, 0, '2024-08-09 17:17:13.304', '2024-08-09 17:17:13.304', '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 3429000, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"label\":\"接受邀请\",\"value\":\"2\",\"status\":true,\"sort\":2,\"sysDictionaryID\":11}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (27, 0, '2024-08-09 17:17:27.383', '2024-08-09 17:17:27.383', '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 4069600, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '{\"label\":\"拒绝邀请\",\"value\":\"3\",\"status\":true,\"sort\":3,\"sysDictionaryID\":11}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);

-- ----------------------------
-- Table structure for sys_tenant
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant`;
CREATE TABLE `sys_tenant`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `uuid` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户UUID',
  `tenant_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户登录名',
  `access_key_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户登录密码',
  `access_key_secret` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '系统用户' COMMENT '用户昵称',
  `status` int NULL DEFAULT NULL COMMENT '用户侧边主题',
  `header_img` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_sys_tenant_uuid`(`uuid` ASC) USING BTREE,
  INDEX `idx_sys_tenant_name`(`tenant_name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_tenant
-- ----------------------------

-- ----------------------------
-- Table structure for sys_tenant_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_info`;
CREATE TABLE `sys_tenant_info`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `base_color` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '基础颜色',
  `liaison` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '租户联系人',
  `phone` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '电话',
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '系统用户' COMMENT '邮箱',
  `owner_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'dark' COMMENT '负责人姓名',
  `owner_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人身份证号码',
  `owner_addr` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#fff' COMMENT '负责人地址',
  `owner_phone` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '888' COMMENT '负责人手机',
  `owner_email` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人邮箱',
  `owner_sex` int NULL DEFAULT NULL COMMENT '负责人性别 ',
  `qual_org_legal` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '租户主体法人代表',
  `qual_org_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '租户主体名称',
  `qual_org_addr` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '租户主体地址',
  `qual_org_expire_time` datetime NULL DEFAULT NULL COMMENT '租户主体过期时间',
  `qual_business_scope` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '租户主体经营范围',
  `qual_social_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '租户主体社会一致性代码',
  `bank_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收款银行名称',
  `bank_user_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收款银行用户名称',
  `bank_account` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收款银行卡号',
  `alipay_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付宝用户名',
  `alipay_account` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付宝账号',
  `wechat_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信用户名',
  `wechat_account` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信账号',
  `status` int NULL DEFAULT NULL COMMENT '状态',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_sys_tenant_info_tenant_id`(`tenant_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_tenant_info
-- ----------------------------

-- ----------------------------
-- Table structure for sys_tenant_info_review_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_info_review_log`;
CREATE TABLE `sys_tenant_info_review_log`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `data` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '要审核的数据{json}',
  `process` int NULL DEFAULT NULL COMMENT '进度',
  `process_desc` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '进度说明',
  `opt_user` bigint NULL DEFAULT NULL COMMENT '操作用户id',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '组织id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_tenant_id`(`tenant_id` ASC) USING BTREE,
  INDEX `idx_sys_tenant_id_opt_user`(`opt_user` ASC) USING BTREE,
  INDEX `idx_sys_tenant_id_process`(`process` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_tenant_info_review_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_tenant_info_review_process
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_info_review_process`;
CREATE TABLE `sys_tenant_info_review_process`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `data` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '要审核的数据{json}',
  `process` int NULL DEFAULT NULL COMMENT '进度',
  `process_desc` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '进度说明',
  `opt_user` bigint NULL DEFAULT NULL COMMENT '操作用户id',
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '组织id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_tenant_info_review_process_tenant_id`(`tenant_id` ASC) USING BTREE,
  INDEX `idx_sys_tenant_info_review_process_opt_user`(`opt_user` ASC) USING BTREE,
  INDEX `idx_sys_tenant_info_review_process_process`(`process` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_tenant_info_review_process
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_authority
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_authority`;
CREATE TABLE `sys_user_authority`  (
  `sys_user_id` bigint UNSIGNED NOT NULL,
  `sys_authority_authority_id` bigint UNSIGNED NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_user_id`, `sys_authority_authority_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_authority
-- ----------------------------
INSERT INTO `sys_user_authority` VALUES (1, 888);
INSERT INTO `sys_user_authority` VALUES (1, 8881);
INSERT INTO `sys_user_authority` VALUES (1, 9528);
INSERT INTO `sys_user_authority` VALUES (2, 888);

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户UUID',
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户登录名',
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户登录密码',
  `nick_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '系统用户' COMMENT '用户昵称',
  `side_mode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'dark' COMMENT '用户侧边主题',
  `header_img` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'https://qmplusimg.henrongyi.top/gva_header.jpg' COMMENT '用户头像',
  `base_color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#fff' COMMENT '基础颜色',
  `authority_id` bigint UNSIGNED NULL DEFAULT 888 COMMENT '用户角色ID',
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户手机号',
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `enable` bigint NULL DEFAULT 1 COMMENT '用户是否被冻结 1正常 2冻结',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_users_uuid`(`uuid` ASC) USING BTREE,
  INDEX `idx_sys_users_username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users` VALUES (1, '2024-08-03 15:27:53.848', '2024-08-03 15:27:53.850', '92b187fd-8f6d-490e-9de4-057e38646843', 'admin', '$2a$10$13y/u3p0.SMzPkquFgnifedLuJ8M05fk7izaW7G2KqWvrGDn8Xrjm', 'Mr.奇淼', 'dark', 'https://qmplusimg.henrongyi.top/gva_header.jpg', '#fff', 888, '17611111111', '333333333@qq.com', 1);
INSERT INTO `sys_users` VALUES (2, '2024-08-03 15:27:53.848', '2024-08-03 15:27:53.853', 'a8dc8e61-87ba-43ed-a230-ec32356b6e5d', 'a303176530', '$2a$10$Qw2F2x/MxAdumqVjp2N0HuaAsgY4WYqEeg/rbqPcOYJ2IfK.FatZa', '用户1', 'dark', 'https:///qmplusimg.henrongyi.top/1572075907logo.png', '#fff', 9528, '17611111111', '333333333@qq.com', 1);

SET FOREIGN_KEY_CHECKS = 1;
