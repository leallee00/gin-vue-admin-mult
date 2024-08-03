SET FOREIGN_KEY_CHECKS=0;
/*
 Navicat Premium Data Transfer

 Source Server         : local-root-Hello
 Source Server Type    : MySQL
 Source Server Version : 80034 (8.0.34)
 Source Host           : localhost:3306
 Source Schema         : gva

 Target Server Type    : MySQL
 Target Server Version : 80034 (8.0.34)
 File Encoding         : 65001

 Date: 01/08/2024 18:36:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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

SET FOREIGN_KEY_CHECKS = 1;
/*
 Navicat Premium Data Transfer

 Source Server         : local-root-Hello
 Source Server Type    : MySQL
 Source Server Version : 80034 (8.0.34)
 Source Host           : localhost:3306
 Source Schema         : gva

 Target Server Type    : MySQL
 Target Server Version : 80034 (8.0.34)
 File Encoding         : 65001

 Date: 01/08/2024 18:37:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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

SET FOREIGN_KEY_CHECKS = 1;

    /*
 Navicat Premium Data Transfer

 Source Server         : local-root-Hello
 Source Server Type    : MySQL
 Source Server Version : 80034 (8.0.34)
 Source Host           : localhost:3306
 Source Schema         : gva

 Target Server Type    : MySQL
 Target Server Version : 80034 (8.0.34)
 File Encoding         : 65001

 Date: 01/08/2024 18:37:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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

SET FOREIGN_KEY_CHECKS = 1;

    /*
 Navicat Premium Data Transfer

 Source Server         : local-root-Hello
 Source Server Type    : MySQL
 Source Server Version : 80034 (8.0.34)
 Source Host           : localhost:3306
 Source Schema         : gva

 Target Server Type    : MySQL
 Target Server Version : 80034 (8.0.34)
 File Encoding         : 65001

 Date: 01/08/2024 18:38:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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

SET FOREIGN_KEY_CHECKS = 1;
