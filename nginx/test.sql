/*
Navicat MySQL Data Transfer

Source Server         : jst
Source Server Version : 50714
Source Host           : jst:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-02-27 17:08:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `mg_org_register`
-- ----------------------------
DROP TABLE IF EXISTS `mg_org_register`;
CREATE TABLE `mg_org_register` (
  `id` varchar(36) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `flag` varchar(50) DEFAULT NULL,
  `create_user` varchar(36) DEFAULT NULL,
  `update_user` varchar(36) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mg_org_register
-- ----------------------------
INSERT INTO `mg_org_register` VALUES ('6427944f86d040f8bd9feaf99412d611', 'Test', 'xvxc', 'test', 'te', 'tefgdgssd', 'admin', 'admin', '2', null);
INSERT INTO `mg_org_register` VALUES ('843d4f023ec0455490ab9e1e9670ff94', 'ada', 'fda', 'da', 'daf', 'fdas', 'admin', 'admin', '2', null);
INSERT INTO `mg_org_register` VALUES ('ce2a16d0a97b4238976b8d6d2c13c56f', 'Test', 'Test', 'Test', 'Test', 'Test', 'admin', 'admin', '2', null);

-- ----------------------------
-- Table structure for `sys_approval_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_approval_config`;
CREATE TABLE `sys_approval_config` (
  `id` varchar(36) NOT NULL,
  `obj_name` varchar(200) DEFAULT NULL,
  `max_status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_approval_config
-- ----------------------------
INSERT INTO `sys_approval_config` VALUES ('MgOrgRegisterDTO', 'MgOrgRegisterDTO', '2');

-- ----------------------------
-- Table structure for `sys_approval_list`
-- ----------------------------
DROP TABLE IF EXISTS `sys_approval_list`;
CREATE TABLE `sys_approval_list` (
  `id` varchar(36) NOT NULL,
  `bill_id` varchar(36) DEFAULT NULL,
  `bill_name` varchar(200) DEFAULT NULL,
  `create_user` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_approval_list_index` (`bill_id`),
  KEY `sys_approval_list_index2` (`bill_id`,`bill_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_approval_list
-- ----------------------------
INSERT INTO `sys_approval_list` VALUES ('1cceeaeb23964f35a4071da044a92975', '6427944f86d040f8bd9feaf99412d611', 'MgOrgRegisterDTO', 'admin', '2017-02-27 17:06:47', '99', 'tretretre');
INSERT INTO `sys_approval_list` VALUES ('2a59aced4007466c9ab92c51e7b75535', '6427944f86d040f8bd9feaf99412d611', 'MgOrgRegisterDTO', 'admin', '2017-02-27 17:07:28', '2', '');
INSERT INTO `sys_approval_list` VALUES ('319f7b8ff6c44670ae2a88271df95c24', '843d4f023ec0455490ab9e1e9670ff94', 'MgOrgRegisterDTO', 'admin', '2017-02-27 15:33:57', '2', '');
INSERT INTO `sys_approval_list` VALUES ('617e9648a1ca47a9a9a9c2793c4ab838', 'ce2a16d0a97b4238976b8d6d2c13c56f', 'MgOrgRegisterDTO', 'admin', '2017-02-27 15:37:38', '1', '');
INSERT INTO `sys_approval_list` VALUES ('6449a456c8ae4abda4f9ce8a1e100c1f', 'ce2a16d0a97b4238976b8d6d2c13c56f', 'MgOrgRegisterDTO', 'admin', '2017-02-27 15:38:08', '99', 'Test');
INSERT INTO `sys_approval_list` VALUES ('6ba1f351cd7740499ca1e6e54f4a8771', '6427944f86d040f8bd9feaf99412d611', 'MgOrgRegisterDTO', 'admin', '2017-02-27 17:06:43', '1', '');
INSERT INTO `sys_approval_list` VALUES ('74404ffc05b5488989efd43795dac5a4', 'ce2a16d0a97b4238976b8d6d2c13c56f', 'MgOrgRegisterDTO', 'admin', '2017-02-27 15:38:21', '2', '');
INSERT INTO `sys_approval_list` VALUES ('947712880d22407a8d59ea4d954317d3', '6427944f86d040f8bd9feaf99412d611', 'MgOrgRegisterDTO', 'admin', '2017-02-27 17:07:13', '99', 'WWWWW');
INSERT INTO `sys_approval_list` VALUES ('9f204e2aa5344d10abf190b0e498667b', '6427944f86d040f8bd9feaf99412d611', 'MgOrgRegisterDTO', 'admin', '2017-02-27 17:07:25', '1', '');
INSERT INTO `sys_approval_list` VALUES ('cf904d4cd08b40db8b51333b44ad4c67', 'ce2a16d0a97b4238976b8d6d2c13c56f', 'MgOrgRegisterDTO', 'admin', '2017-02-27 15:33:29', '99', 'Test');
INSERT INTO `sys_approval_list` VALUES ('d095f7b0f66c437db93bee89c77a571a', '6427944f86d040f8bd9feaf99412d611', 'MgOrgRegisterDTO', 'admin', '2017-02-27 17:07:02', '1', '');
INSERT INTO `sys_approval_list` VALUES ('f6862ef50c3140388fe61bb8e3ce2da2', 'ce2a16d0a97b4238976b8d6d2c13c56f', 'MgOrgRegisterDTO', 'admin', '2017-02-27 15:38:17', '1', '');

-- ----------------------------
-- Table structure for `sys_auth`
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth`;
CREATE TABLE `sys_auth` (
  `id` varchar(36) NOT NULL DEFAULT '' COMMENT 'id',
  `parent_id` varchar(36) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL COMMENT '名称',
  `auth_type` varchar(5) DEFAULT NULL,
  `auth_url` varchar(50) DEFAULT NULL,
  `auth_icon` varchar(100) DEFAULT NULL,
  `auth_value` varchar(10) DEFAULT NULL,
  `mg_type` varchar(5) DEFAULT NULL,
  `is_init` varchar(5) DEFAULT NULL,
  `create_time` time DEFAULT NULL,
  `update_time` time DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_auth
-- ----------------------------
INSERT INTO `sys_auth` VALUES ('02a18777e6774e5482488297fcf26653', '2', '新增', '2', 'auth/define/save.do', 'fa-plus', 'add', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('1', '0', '平台管理', '1', '', '', '', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('1096978102094137b78bebc1de645e65', '479852e16c834956b8b6c3b801ffd11c', '新增人员', '2', 'org/dept/role/user/save.do', 'fa-plus', 'addUser', null, null, null, null, '7');
INSERT INTO `sys_auth` VALUES ('2', '1', '权限定义', '1', '/admin/mg/authDefine', '', '', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('28d0694acd354be7ad1264cad548ce2e', '76737c29c36a4d449b50a58137504355', '删除', '2', 'mg/org/register/remove.do', 'fa-remove', 'remove', null, null, null, null, '99');
INSERT INTO `sys_auth` VALUES ('39b352a998a3499183295152e7e7e541', '1', '授权组织', '1', '/admin/mg/authOrg', '', '', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('3a5d809b46484cce85a7a18fb0445df5', '479852e16c834956b8b6c3b801ffd11c', '删除', '2', 'org/dept/remove.do', 'fa-remove', 'remove', null, null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('3c856ca262be4c09afd1aa66f372039d', '39b352a998a3499183295152e7e7e541', '修改', '2', 'org/save.do', 'fa-edit', 'mod', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('479852e16c834956b8b6c3b801ffd11c', 'f70012acb9f940bbb583fcd63e9af5ab', '组织管理', '1', '/admin/sys/orgDefine', null, null, null, null, null, null, null);
INSERT INTO `sys_auth` VALUES ('4ac1d4f894704f45b779de16b723ec04', '479852e16c834956b8b6c3b801ffd11c', '修改', '2', 'org/dept/save.do', 'fa-edit', 'mod', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('4b8d8cd29a634d2ba2e44ba1e9b7cf47', '76737c29c36a4d449b50a58137504355', '否决', '2', 'mg/org/register/reject.do', 'fa-remove', 'reject', null, null, null, null, '5');
INSERT INTO `sys_auth` VALUES ('50c1cb37d53e4ea39da31b039b656364', 'e666e48e9d8b44a0a34ff136bcf2ad14', '客户模组', '1', '/admin/mg/org/list', '', '', null, null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('67340c3f1b634546950bdb255e5982ac', 'a15ae14869f04822849571fb6ada622b', '用户管理', '1', '/admin/personnel/mgUser', null, null, null, null, null, null, null);
INSERT INTO `sys_auth` VALUES ('67d5e55ab8cb4d5b93220645e6e85c99', '39b352a998a3499183295152e7e7e541', '权限保存', '2', 'org/auth/save', 'fa-save', 'save', null, null, null, null, '4');
INSERT INTO `sys_auth` VALUES ('6db97da52d0d494fa8cc81c59329b179', '2', '删除', '2', 'auth/define/remove.do', 'fa-remove', 'remove', null, null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('6f55a605da78479db8d53489b02b56f8', '67340c3f1b634546950bdb255e5982ac', '删除', '2', 'user/remove.do', 'fa-remove', 'remove', null, null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('76737c29c36a4d449b50a58137504355', 'e666e48e9d8b44a0a34ff136bcf2ad14', '机构登记', '1', '/admin/mg/org/register', '', '', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('81064737ff3f4f0da71141ec42f366ce', '479852e16c834956b8b6c3b801ffd11c', '删除人员', '2', 'org/dept/role/user/remove.do', 'fa-remove', 'removeUser', null, null, null, null, '8');
INSERT INTO `sys_auth` VALUES ('8f8a71e10f5c46c695e8f1c2303a3b2f', '76737c29c36a4d449b50a58137504355', '提交', '2', 'mg/org/register/app.do', 'fa-check', 'app', null, null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('8fb8b57f988a49c39e7398f7e4a88f31', '479852e16c834956b8b6c3b801ffd11c', '新增', '2', 'org/dept/save.do', 'fa-plus', 'add', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('a15ae14869f04822849571fb6ada622b', '0', '人事管理', '1', '', '', '', null, null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('a406460ce4ef4fa1a7743c724613feda', '67340c3f1b634546950bdb255e5982ac', '修改', '2', 'user/save.do', 'fa-edit', 'mod', null, null, null, null, null);
INSERT INTO `sys_auth` VALUES ('a4ca0b3ac0a54e23a3e295380c4e1c79', '76737c29c36a4d449b50a58137504355', '查看', '2', 'mg/org/register/save.do', 'fa-edit', 'mod', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('aaf82f26159f426581e59355c7b610b1', '39b352a998a3499183295152e7e7e541', '删除', '2', 'org/remove.do', 'fa-remove', 'remove', null, null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('ad9d8b44b586456180a751fb87db8db2', '2', '保存', '2', 'auth/define/save.do', 'fa-mod', 'mod', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('b8e10a35c90e4b5596a5eed52397373d', '67340c3f1b634546950bdb255e5982ac', '新增', '2', 'user/save.do', 'fa-plus', 'add', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('bbf82dfc30d54277a32d50189ce66030', '479852e16c834956b8b6c3b801ffd11c', '新增职务', '2', 'org/dept/role/save.do', 'fa-plus', 'addRole', null, null, null, null, '4');
INSERT INTO `sys_auth` VALUES ('c9228a9899dc4f98b576a1f0e049e175', '39b352a998a3499183295152e7e7e541', '新增', '2', 'org/save.do', 'fa-plus', 'add', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('d03715b26c894a59a99fc64351b2013a', '479852e16c834956b8b6c3b801ffd11c', '权限配置', '2', 'org/dept/role/save.do', 'fa-edit', 'modRole', null, null, null, null, '5');
INSERT INTO `sys_auth` VALUES ('d3ecb27d914d427d95d4d8194b00d4ad', 'e666e48e9d8b44a0a34ff136bcf2ad14', '模组授权', '1', '/admin/mg/org/auth', '', '', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('e50a1c4f4fcd48a89d2428933741426a', '76737c29c36a4d449b50a58137504355', '审核', '2', 'mg/org/register/auth.do', 'fa-check', 'auth', null, null, null, null, '4');
INSERT INTO `sys_auth` VALUES ('e666e48e9d8b44a0a34ff136bcf2ad14', '0', '机构授权', '1', '', '', '', null, null, null, null, '4');
INSERT INTO `sys_auth` VALUES ('f70012acb9f940bbb583fcd63e9af5ab', '0', '系统管理', '1', '', '', '', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('f7adb4149aa0406d891fec5be6e151e3', '479852e16c834956b8b6c3b801ffd11c', '删除职务', '2', 'org/dept/role/remove.do', 'fa-remove', 'removeRole', null, null, null, null, '6');
INSERT INTO `sys_auth` VALUES ('fafa0ee12ddf4e6598e816935c6ee168', '76737c29c36a4d449b50a58137504355', '新增', '2', 'mg/org/register/save.do', 'fa-plus', 'add', null, null, null, null, '1');

-- ----------------------------
-- Table structure for `sys_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `org_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('8f0e49cf3d784bfba92df5790d520741', 'JAVA部门', 'e2ff5e22cfe94054932ffca05e145934', 'e2ff5e22cfe94054932ffca05e145934');

-- ----------------------------
-- Table structure for `sys_dic`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dic`;
CREATE TABLE `sys_dic` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `val` varchar(50) DEFAULT NULL,
  `dic_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_dic
-- ----------------------------
INSERT INTO `sys_dic` VALUES ('-101', '参数错误', '-101', 'msg');
INSERT INTO `sys_dic` VALUES ('-201', '用户不存在', '-201', 'msg');
INSERT INTO `sys_dic` VALUES ('-202', '密码错误', '-202', 'msg');
INSERT INTO `sys_dic` VALUES ('-203', '用户已存在', '-203', 'msg');
INSERT INTO `sys_dic` VALUES ('-301', '此单据不能提交', '-301', 'msg');
INSERT INTO `sys_dic` VALUES ('-302', '不存在此单据', '-302', 'msg');
INSERT INTO `sys_dic` VALUES ('-303', '此单据不能删除', '-303', 'msg');
INSERT INTO `sys_dic` VALUES ('-304', '此单据不能修改', '-304', 'msg');
INSERT INTO `sys_dic` VALUES ('-305', '此单据不能审核', '-305', 'msg');
INSERT INTO `sys_dic` VALUES ('-401', '无权限', '-401', 'msg');
INSERT INTO `sys_dic` VALUES ('-501', '审核流程未配置', '-501', 'msg');
INSERT INTO `sys_dic` VALUES ('-502', '不能审核,已经完成', '-502', 'msg');
INSERT INTO `sys_dic` VALUES ('-503', '不能否决,已经完成', '-503', 'msg');
INSERT INTO `sys_dic` VALUES ('status0', '新建', '0', 'status');
INSERT INTO `sys_dic` VALUES ('status1', '已提交', '1', 'status');
INSERT INTO `sys_dic` VALUES ('status2', '已审核', '2', 'status');
INSERT INTO `sys_dic` VALUES ('status99', '已否决', '99', 'status');

-- ----------------------------
-- Table structure for `sys_org`
-- ----------------------------
DROP TABLE IF EXISTS `sys_org`;
CREATE TABLE `sys_org` (
  `id` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `flag` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_org
-- ----------------------------
INSERT INTO `sys_org` VALUES ('09e11ca049094c1fa3b65226c81b9b72', '公司２', 'com');
INSERT INTO `sys_org` VALUES ('e2ff5e22cfe94054932ffca05e145934', '开发公司', 'dev');

-- ----------------------------
-- Table structure for `sys_org_auth`
-- ----------------------------
DROP TABLE IF EXISTS `sys_org_auth`;
CREATE TABLE `sys_org_auth` (
  `id` varchar(36) NOT NULL,
  `org_id` varchar(36) DEFAULT NULL,
  `auth_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_org_auth
-- ----------------------------
INSERT INTO `sys_org_auth` VALUES ('cabc5fed-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '02a18777e6774e5482488297fcf26653');
INSERT INTO `sys_org_auth` VALUES ('cabc625d-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '1');
INSERT INTO `sys_org_auth` VALUES ('cabc63b9-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '1096978102094137b78bebc1de645e65');
INSERT INTO `sys_org_auth` VALUES ('cabc6480-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '2');
INSERT INTO `sys_org_auth` VALUES ('cabc65f2-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '28d0694acd354be7ad1264cad548ce2e');
INSERT INTO `sys_org_auth` VALUES ('cabc6a3f-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '39b352a998a3499183295152e7e7e541');
INSERT INTO `sys_org_auth` VALUES ('cabc6be3-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_org_auth` VALUES ('cabc6cd0-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '3c856ca262be4c09afd1aa66f372039d');
INSERT INTO `sys_org_auth` VALUES ('cabc6dc6-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_org_auth` VALUES ('cabc6ecb-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_org_auth` VALUES ('cabc7038-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '4b8d8cd29a634d2ba2e44ba1e9b7cf47');
INSERT INTO `sys_org_auth` VALUES ('cabc71b8-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '50c1cb37d53e4ea39da31b039b656364');
INSERT INTO `sys_org_auth` VALUES ('cabc72e1-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '67340c3f1b634546950bdb255e5982ac');
INSERT INTO `sys_org_auth` VALUES ('cabc73c1-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '67d5e55ab8cb4d5b93220645e6e85c99');
INSERT INTO `sys_org_auth` VALUES ('cabc7481-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '6db97da52d0d494fa8cc81c59329b179');
INSERT INTO `sys_org_auth` VALUES ('cabc75c4-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '6f55a605da78479db8d53489b02b56f8');
INSERT INTO `sys_org_auth` VALUES ('cabc7703-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '76737c29c36a4d449b50a58137504355');
INSERT INTO `sys_org_auth` VALUES ('cabc781f-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `sys_org_auth` VALUES ('cabc796f-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '8f8a71e10f5c46c695e8f1c2303a3b2f');
INSERT INTO `sys_org_auth` VALUES ('cabc7a61-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_org_auth` VALUES ('cabc7b7f-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'a15ae14869f04822849571fb6ada622b');
INSERT INTO `sys_org_auth` VALUES ('cabc7cb3-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'a406460ce4ef4fa1a7743c724613feda');
INSERT INTO `sys_org_auth` VALUES ('cabc7dfb-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'a4ca0b3ac0a54e23a3e295380c4e1c79');
INSERT INTO `sys_org_auth` VALUES ('cabc7ed9-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'aaf82f26159f426581e59355c7b610b1');
INSERT INTO `sys_org_auth` VALUES ('cabc7f97-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'ad9d8b44b586456180a751fb87db8db2');
INSERT INTO `sys_org_auth` VALUES ('cabc80c5-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'b8e10a35c90e4b5596a5eed52397373d');
INSERT INTO `sys_org_auth` VALUES ('cabc81c7-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_org_auth` VALUES ('cabc828f-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'c9228a9899dc4f98b576a1f0e049e175');
INSERT INTO `sys_org_auth` VALUES ('cabc8427-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_org_auth` VALUES ('cabc85b9-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'd3ecb27d914d427d95d4d8194b00d4ad');
INSERT INTO `sys_org_auth` VALUES ('cabc871f-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'e50a1c4f4fcd48a89d2428933741426a');
INSERT INTO `sys_org_auth` VALUES ('cabc887d-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'e666e48e9d8b44a0a34ff136bcf2ad14');
INSERT INTO `sys_org_auth` VALUES ('cabc895f-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_org_auth` VALUES ('cabc8a6f-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_org_auth` VALUES ('cabc8bad-fcb3-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'fafa0ee12ddf4e6598e816935c6ee168');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `dept_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('2c5e728bf9c345ba848fa71d3446cd8d', '主管', '8f0e49cf3d784bfba92df5790d520741');
INSERT INTO `sys_role` VALUES ('a5af2cc9a5244fd3a50728b24b513451', 'admin', 'e2ff5e22cfe94054932ffca05e145934');

-- ----------------------------
-- Table structure for `sys_role_auth`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_auth`;
CREATE TABLE `sys_role_auth` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `auth_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role_auth
-- ----------------------------
INSERT INTO `sys_role_auth` VALUES ('db902e30-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '02a18777e6774e5482488297fcf26653');
INSERT INTO `sys_role_auth` VALUES ('db9030eb-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '1');
INSERT INTO `sys_role_auth` VALUES ('db903278-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '1096978102094137b78bebc1de645e65');
INSERT INTO `sys_role_auth` VALUES ('db903341-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '2');
INSERT INTO `sys_role_auth` VALUES ('db903413-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '39b352a998a3499183295152e7e7e541');
INSERT INTO `sys_role_auth` VALUES ('db9052e2-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_role_auth` VALUES ('db905414-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '3c856ca262be4c09afd1aa66f372039d');
INSERT INTO `sys_role_auth` VALUES ('db905542-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_role_auth` VALUES ('db905663-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_role_auth` VALUES ('db9057f2-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '67340c3f1b634546950bdb255e5982ac');
INSERT INTO `sys_role_auth` VALUES ('db9058cd-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '67d5e55ab8cb4d5b93220645e6e85c99');
INSERT INTO `sys_role_auth` VALUES ('db905985-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '6db97da52d0d494fa8cc81c59329b179');
INSERT INTO `sys_role_auth` VALUES ('db905a71-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '6f55a605da78479db8d53489b02b56f8');
INSERT INTO `sys_role_auth` VALUES ('db905c30-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `sys_role_auth` VALUES ('db905d50-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_role_auth` VALUES ('db905efb-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'a15ae14869f04822849571fb6ada622b');
INSERT INTO `sys_role_auth` VALUES ('db905ff9-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'a406460ce4ef4fa1a7743c724613feda');
INSERT INTO `sys_role_auth` VALUES ('db9060cd-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'aaf82f26159f426581e59355c7b610b1');
INSERT INTO `sys_role_auth` VALUES ('db906191-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'ad9d8b44b586456180a751fb87db8db2');
INSERT INTO `sys_role_auth` VALUES ('db906287-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'b8e10a35c90e4b5596a5eed52397373d');
INSERT INTO `sys_role_auth` VALUES ('db9063b2-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_role_auth` VALUES ('db906488-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'c9228a9899dc4f98b576a1f0e049e175');
INSERT INTO `sys_role_auth` VALUES ('db9065b0-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_role_auth` VALUES ('db9067fc-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_role_auth` VALUES ('db90693f-faf7-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_role_auth` VALUES ('e03d1d6d-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '02a18777e6774e5482488297fcf26653');
INSERT INTO `sys_role_auth` VALUES ('e03d2074-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '1');
INSERT INTO `sys_role_auth` VALUES ('e03d2200-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '1096978102094137b78bebc1de645e65');
INSERT INTO `sys_role_auth` VALUES ('e03d22d3-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '2');
INSERT INTO `sys_role_auth` VALUES ('e03d23fe-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '28d0694acd354be7ad1264cad548ce2e');
INSERT INTO `sys_role_auth` VALUES ('e03d24da-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '39b352a998a3499183295152e7e7e541');
INSERT INTO `sys_role_auth` VALUES ('e03d262e-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_role_auth` VALUES ('e03d26fe-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '3c856ca262be4c09afd1aa66f372039d');
INSERT INTO `sys_role_auth` VALUES ('e03d283f-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_role_auth` VALUES ('e03d298d-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_role_auth` VALUES ('e03d2afd-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '4b8d8cd29a634d2ba2e44ba1e9b7cf47');
INSERT INTO `sys_role_auth` VALUES ('e03d2c02-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '50c1cb37d53e4ea39da31b039b656364');
INSERT INTO `sys_role_auth` VALUES ('e03d2cee-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '67340c3f1b634546950bdb255e5982ac');
INSERT INTO `sys_role_auth` VALUES ('e03d2dc3-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '67d5e55ab8cb4d5b93220645e6e85c99');
INSERT INTO `sys_role_auth` VALUES ('e03d2e81-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '6db97da52d0d494fa8cc81c59329b179');
INSERT INTO `sys_role_auth` VALUES ('e03d2f6e-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '6f55a605da78479db8d53489b02b56f8');
INSERT INTO `sys_role_auth` VALUES ('e03d307c-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '76737c29c36a4d449b50a58137504355');
INSERT INTO `sys_role_auth` VALUES ('e03d31dc-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `sys_role_auth` VALUES ('e03d32fb-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '8f8a71e10f5c46c695e8f1c2303a3b2f');
INSERT INTO `sys_role_auth` VALUES ('e03d3565-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_role_auth` VALUES ('e03d36ab-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'a15ae14869f04822849571fb6ada622b');
INSERT INTO `sys_role_auth` VALUES ('e03d37ab-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'a406460ce4ef4fa1a7743c724613feda');
INSERT INTO `sys_role_auth` VALUES ('e03d3a67-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'a4ca0b3ac0a54e23a3e295380c4e1c79');
INSERT INTO `sys_role_auth` VALUES ('e03d3baf-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'aaf82f26159f426581e59355c7b610b1');
INSERT INTO `sys_role_auth` VALUES ('e03d3c79-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'ad9d8b44b586456180a751fb87db8db2');
INSERT INTO `sys_role_auth` VALUES ('e03d3f11-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'b8e10a35c90e4b5596a5eed52397373d');
INSERT INTO `sys_role_auth` VALUES ('e03d408a-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_role_auth` VALUES ('e03d416c-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'c9228a9899dc4f98b576a1f0e049e175');
INSERT INTO `sys_role_auth` VALUES ('e03d451c-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_role_auth` VALUES ('e03d46fe-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'd3ecb27d914d427d95d4d8194b00d4ad');
INSERT INTO `sys_role_auth` VALUES ('e03d4851-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'e50a1c4f4fcd48a89d2428933741426a');
INSERT INTO `sys_role_auth` VALUES ('e03d4954-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'e666e48e9d8b44a0a34ff136bcf2ad14');
INSERT INTO `sys_role_auth` VALUES ('e03d4a84-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_role_auth` VALUES ('e03d4c5d-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_role_auth` VALUES ('e03d4da1-fcb3-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'fafa0ee12ddf4e6598e816935c6ee168');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(36) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `pass_word` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `org_id` varchar(36) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('54657a25b0f843cc97b2cf5253a91519', 'test', 'e10adc3949ba59abbe56e057f20f883e', 'testaa', 'test', 'e2ff5e22cfe94054932ffca05e145934', null);
INSERT INTO `sys_user` VALUES ('admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 'admin', 'e2ff5e22cfe94054932ffca05e145934', null);
INSERT INTO `sys_user` VALUES ('e477bcd43884408fb5500e050131e7ac', '231', 'e10adc3949ba59abbe56e057f20f883e', '123', '1321', 'e2ff5e22cfe94054932ffca05e145934', null);

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('a22fd0cd-fa71-11e6-a606-00163e028d22', 'admin', 'a5af2cc9a5244fd3a50728b24b513451');
INSERT INTO `sys_user_role` VALUES ('df7902d8-faf7-11e6-a606-00163e028d22', 'admin', '2c5e728bf9c345ba848fa71d3446cd8d');

-- ----------------------------
-- Function structure for `getSysAuthNodeID`
-- ----------------------------
DROP FUNCTION IF EXISTS `getSysAuthNodeID`;
DELIMITER ;;
CREATE DEFINER=`jst`@`%` FUNCTION `getSysAuthNodeID`(rootId VARCHAR(50)) RETURNS varchar(2000) CHARSET utf8mb4
BEGIN
	DECLARE
		sTemp VARCHAR (2000);

DECLARE
	sTempChd VARCHAR (2000);


SET sTemp = '$';


SET sTempChd = rootId;


WHILE sTempChd IS NOT NULL DO

SET sTemp = concat(sTemp, ',', sTempChd);

SELECT
	group_concat(id) INTO sTempChd
FROM
	sys_auth a
WHERE
	FIND_IN_SET(a.parent_id, sTempChd) > 0;


END
WHILE;

RETURN sTemp;


END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `getSysAuthParentList`
-- ----------------------------
DROP FUNCTION IF EXISTS `getSysAuthParentList`;
DELIMITER ;;
CREATE DEFINER=`jst`@`%` FUNCTION `getSysAuthParentList`(rootId varchar(36)) RETURNS varchar(3000) CHARSET utf8mb4
BEGIN
      DECLARE sParentList varchar(3000);
      DECLARE sParentTemp varchar(3000);
      SET sParentTemp =cast(rootId as CHAR);
      WHILE sParentTemp is not null DO
    IF (sParentList is not null) THEN
         SET sParentList = concat(sParentTemp,',',sParentList);
    ELSE
     SET sParentList = concat(sParentTemp);
    END IF;
        SELECT group_concat(parent_id) INTO sParentTemp FROM sys_auth where FIND_IN_SET(id,sParentTemp)>0;
      END WHILE;
      RETURN sParentList;
    END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `getSysDeptNodeId`
-- ----------------------------
DROP FUNCTION IF EXISTS `getSysDeptNodeId`;
DELIMITER ;;
CREATE DEFINER=`jst`@`%` FUNCTION `getSysDeptNodeId`(rootId VARCHAR(50)) RETURNS varchar(2000) CHARSET utf8mb4
BEGIN
	DECLARE
		sTemp VARCHAR (2000);

DECLARE
	sTempChd VARCHAR (2000);


SET sTemp = '$';


SET sTempChd = rootId;


WHILE sTempChd IS NOT NULL DO

SET sTemp = concat(sTemp, ',', sTempChd);

SELECT
	group_concat(id) INTO sTempChd
FROM
	sys_dept a
WHERE
	FIND_IN_SET(a.parent_id, sTempChd) > 0;


END
WHILE;

RETURN sTemp;


END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `getUserRole`
-- ----------------------------
DROP FUNCTION IF EXISTS `getUserRole`;
DELIMITER ;;
CREATE DEFINER=`jst`@`%` FUNCTION `getUserRole`(p_userId varchar(36)) RETURNS varchar(2000) CHARSET utf8mb4
BEGIN
	DECLARE
		v_ret VARCHAR (2000);

SELECT
	GROUP_CONCAT(b.`name` SEPARATOR ',') INTO v_ret
FROM
	sys_user_role a,
	sys_role b
WHERE
	a.role_id = b.id
AND a.user_id = p_userId;

RETURN v_ret;


END
;;
DELIMITER ;
