/*
 Navicat Premium Data Transfer

 Source Server         : liqh-123456
 Source Server Type    : MySQL
 Source Server Version : 80034 (8.0.34)
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 80034 (8.0.34)
 File Encoding         : 65001

 Date: 22/08/2024 16:45:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tenant
-- ----------------------------
DROP TABLE IF EXISTS `tenant`;
CREATE TABLE `tenant`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `uuid` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商户UUID',
  `parent_tenant_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '父商户id[如果有代表自己是分店]',
  `tenant_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商户类型[0:个人，1：个体：2:企业3:事业]',
  `tenant_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商户名称',
  `access_key_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '访问秘钥',
  `access_key_secret` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '系统用户' COMMENT '访问秘钥密码',
  `status` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '创建' COMMENT '状态',
  `header_img` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主图',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_sys_tenant_uuid`(`uuid` ASC) USING BTREE,
  INDEX `idx_sys_tenant_name`(`tenant_name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tenant
-- ----------------------------

-- ----------------------------
-- Table structure for tenant_info
-- ----------------------------
DROP TABLE IF EXISTS `tenant_info`;
CREATE TABLE `tenant_info`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '租户id',
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `base_color` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '基础颜色',
  `liaison` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '租户联系人',
  `phone` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '电话',
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '系统用户' COMMENT '邮箱',
  `owner_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'dark' COMMENT '负责人姓名',
  `owner_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人身份证号码',
  `owner_id_card_front` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人身份证正面',
  `owner_id_card_back` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人身份证背面',
  `owner_self_tack_card_pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人手持身份证照片',
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
  `qual_business_license_pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '租户证照照片',
  `bank_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收款银行名称',
  `bank_user_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收款银行用户名称',
  `bank_account` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收款银行卡号',
  `alipay_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付宝用户名',
  `alipay_account` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付宝账号',
  `wechat_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信用户名',
  `wechat_account` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信账号',
  `status` int NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_sys_tenant_info_tenant_id`(`tenant_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tenant_info
-- ----------------------------

-- ----------------------------
-- Table structure for tenant_info_review_log
-- ----------------------------
DROP TABLE IF EXISTS `tenant_info_review_log`;
CREATE TABLE `tenant_info_review_log`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '组织id',
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `data` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '要审核的数据{json}',
  `process` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '进度',
  `process_desc` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '进度说明',
  `opt_user` bigint NULL DEFAULT NULL COMMENT '操作用户id',
  PRIMARY KEY (`id`, `process`) USING BTREE,
  INDEX `idx_sys_tenant_id_opt_user`(`opt_user` ASC) USING BTREE,
  INDEX `idx_sys_tenant_id_process`(`process` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tenant_info_review_log
-- ----------------------------

-- ----------------------------
-- Table structure for tenant_info_review_process
-- ----------------------------
DROP TABLE IF EXISTS `tenant_info_review_process`;
CREATE TABLE `tenant_info_review_process`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint NULL DEFAULT NULL COMMENT '组织id',
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `data` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '要审核的数据{json}',
  `process` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '进度',
  `process_desc` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '进度说明',
  `opt_user` bigint NULL DEFAULT NULL COMMENT '操作用户id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_tenant_info_review_process_opt_user`(`opt_user` ASC) USING BTREE,
  INDEX `idx_sys_tenant_info_review_process_process`(`process` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tenant_info_review_process
-- ----------------------------

-- ----------------------------
-- Table structure for tenant_invite_user_process
-- ----------------------------
DROP TABLE IF EXISTS `tenant_invite_user_process`;
CREATE TABLE `tenant_invite_user_process`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `tenant_id` bigint NOT NULL COMMENT '租户id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `process` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '处理进度，字典定义',
  `opt_user_id` bigint NULL DEFAULT NULL COMMENT '操作者id',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作原因',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_user_apply_join_tenant_process_tenant_id`(`tenant_id` ASC) USING BTREE,
  INDEX `idx_sys_user_apply_join_tenant_process_user_id`(`user_id` ASC) USING BTREE,
  INDEX `idx_sys_user_apply_join_tenant_process_opt_id`(`opt_user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '租户邀请用户加入\r\n通过后再关联表中加一个记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tenant_invite_user_process
-- ----------------------------

-- ----------------------------
-- Table structure for tenant_invite_user_process_log
-- ----------------------------
DROP TABLE IF EXISTS `tenant_invite_user_process_log`;
CREATE TABLE `tenant_invite_user_process_log`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `invite_id` bigint NULL DEFAULT NULL COMMENT '申请id',
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `tenant_id` bigint NOT NULL COMMENT '租户id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `process` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '处理进度',
  `opt_user_id` bigint NULL DEFAULT NULL COMMENT '操作者id',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作原因',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_tenant_user_rel_tenant_id`(`tenant_id` ASC) USING BTREE,
  INDEX `idx_sys_tenant_user_user_id`(`user_id` ASC) USING BTREE,
  INDEX `idx_sys_tenant_invite_id`(`invite_id` ASC) USING BTREE,
  INDEX `idx_sys_tenant_invite_user_process_opt_user_id`(`opt_user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '组织邀请用户加入操作日志' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tenant_invite_user_process_log
-- ----------------------------

-- ----------------------------
-- Table structure for tenant_user_rel
-- ----------------------------
DROP TABLE IF EXISTS `tenant_user_rel`;
CREATE TABLE `tenant_user_rel`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `tenant_id` bigint NOT NULL COMMENT '租户id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_sys_tenant_user`(`tenant_id` ASC, `user_id` ASC) USING BTREE,
  INDEX `idx_sys_tenant_user_rel_tenant_id`(`tenant_id` ASC) USING BTREE,
  INDEX `idx_sys_tenant_user_user_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和租户关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tenant_user_rel
-- ----------------------------

-- ----------------------------
-- Table structure for user_apply_join_tenant_process
-- ----------------------------
DROP TABLE IF EXISTS `user_apply_join_tenant_process`;
CREATE TABLE `user_apply_join_tenant_process`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `tenant_id` bigint NOT NULL COMMENT '租户id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `process` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '处理进度，字典定义： 0：提交申请，1通过申请，2拒绝申请',
  `opt_user_id` bigint NULL DEFAULT NULL COMMENT '操作者id',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作原因',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_user_apply_join_tenant_process_tenant_id`(`tenant_id` ASC) USING BTREE,
  INDEX `idx_sys_user_apply_join_tenant_process_user_id`(`user_id` ASC) USING BTREE,
  INDEX `idx_sys_user_apply_join_tenant_process_opt_id`(`opt_user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户申请加入组织' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_apply_join_tenant_process
-- ----------------------------

-- ----------------------------
-- Table structure for user_apply_join_tenant_process_flow
-- ----------------------------
DROP TABLE IF EXISTS `user_apply_join_tenant_process_flow`;
CREATE TABLE `user_apply_join_tenant_process_flow`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `tenant_id` bigint NOT NULL COMMENT '租户id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `process` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `opt_user_id` bigint NULL DEFAULT NULL COMMENT '操作者id',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作原因',
  `apply_id` bigint NULL DEFAULT NULL COMMENT '申请id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_tenant_user_rel_tenant_id`(`tenant_id` ASC) USING BTREE,
  INDEX `idx_sys_tenant_user_user_id`(`user_id` ASC) USING BTREE,
  INDEX `idx_sys_user_apply_join_tenant_process_flow_id`(`apply_id` ASC) USING BTREE,
  INDEX `idx_sys_user_apply_join_tenant_process_opt_user_id`(`opt_user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户申请加入组织操作流程日志\r\n通过后在关联表中加一个记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_apply_join_tenant_process_flow
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户UUID',
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户登录名',
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户登录密码',
  `nick_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '系统用户' COMMENT '用户昵称',
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'https://qmplusimg.henrongyi.top/gva_header.jpg' COMMENT '用户头像',
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户手机号',
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `status` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '正常' COMMENT '用户状态 0:正常 1冻结',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_users_uuid`(`uuid` ASC) USING BTREE,
  INDEX `idx_sys_users_username`(`username` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
