/*
Navicat MySQL Data Transfer

Source Server         : jst
Source Server Version : 50714
Source Host           : jst:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-02-23 17:44:11
*/

SET FOREIGN_KEY_CHECKS=0;

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
INSERT INTO `sys_auth` VALUES ('2', '1', '权限定义', '1', '/admin/mg/authDefine', '', '', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('39b352a998a3499183295152e7e7e541', '1', '授权组织', '1', '/admin/mg/authOrg', '', '', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('3a5d809b46484cce85a7a18fb0445df5', '479852e16c834956b8b6c3b801ffd11c', '删除', '2', 'org/dept/remove.do', 'fa-remove', 'remove', null, null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('3c856ca262be4c09afd1aa66f372039d', '39b352a998a3499183295152e7e7e541', '修改', '2', 'org/save.do', 'fa-edit', 'mod', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('479852e16c834956b8b6c3b801ffd11c', 'f70012acb9f940bbb583fcd63e9af5ab', '组织管理', '1', '/admin/sys/orgDefine', null, null, null, null, null, null, null);
INSERT INTO `sys_auth` VALUES ('4ac1d4f894704f45b779de16b723ec04', '479852e16c834956b8b6c3b801ffd11c', '修改', '2', 'org/dept/save.do', 'fa-edit', 'mod', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('50c1cb37d53e4ea39da31b039b656364', 'e666e48e9d8b44a0a34ff136bcf2ad14', '客户模组', '1', '/admin/mg/org/list', null, null, null, null, null, null, null);
INSERT INTO `sys_auth` VALUES ('67340c3f1b634546950bdb255e5982ac', 'a15ae14869f04822849571fb6ada622b', '用户管理', '1', '/admin/personnel/mgUser', null, null, null, null, null, null, null);
INSERT INTO `sys_auth` VALUES ('67d5e55ab8cb4d5b93220645e6e85c99', '39b352a998a3499183295152e7e7e541', '权限保存', '2', 'org/auth/save', 'fa-save', 'save', null, null, null, null, '4');
INSERT INTO `sys_auth` VALUES ('6db97da52d0d494fa8cc81c59329b179', '2', '删除', '2', 'auth/define/remove.do', 'fa-remove', 'remove', null, null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('6f55a605da78479db8d53489b02b56f8', '67340c3f1b634546950bdb255e5982ac', '删除', '2', 'user/remove.do', 'fa-remove', 'remove', null, null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('76737c29c36a4d449b50a58137504355', 'e666e48e9d8b44a0a34ff136bcf2ad14', '机构登记', '1', '/admin/mg/org/register', null, null, null, null, null, null, null);
INSERT INTO `sys_auth` VALUES ('8fb8b57f988a49c39e7398f7e4a88f31', '479852e16c834956b8b6c3b801ffd11c', '新增', '2', 'org/dept/save.do', 'fa-plus', 'add', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('a15ae14869f04822849571fb6ada622b', '0', '人事管理', '1', '', '', '', null, null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('a406460ce4ef4fa1a7743c724613feda', '67340c3f1b634546950bdb255e5982ac', '修改', '2', 'user/save.do', 'fa-edit', 'mod', null, null, null, null, null);
INSERT INTO `sys_auth` VALUES ('aaf82f26159f426581e59355c7b610b1', '39b352a998a3499183295152e7e7e541', '删除', '2', 'org/remove.do', 'fa-remove', 'remove', null, null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('ad9d8b44b586456180a751fb87db8db2', '2', '保存', '2', 'auth/define/save.do', 'fa-mod', 'mod', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('b8e10a35c90e4b5596a5eed52397373d', '67340c3f1b634546950bdb255e5982ac', '新增', '2', 'user/save.do', 'fa-plus', 'add', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('bbf82dfc30d54277a32d50189ce66030', '479852e16c834956b8b6c3b801ffd11c', '新增职务', '2', 'org/dept/role/save.do', 'fa-plus', 'addRole', null, null, null, null, '4');
INSERT INTO `sys_auth` VALUES ('c9228a9899dc4f98b576a1f0e049e175', '39b352a998a3499183295152e7e7e541', '新增', '2', 'org/save.do', 'fa-plus', 'add', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('d03715b26c894a59a99fc64351b2013a', '479852e16c834956b8b6c3b801ffd11c', '权限配置', '2', 'org/dept/role/save.do', 'fa-edit', 'modRole', null, null, null, null, '5');
INSERT INTO `sys_auth` VALUES ('d3ecb27d914d427d95d4d8194b00d4ad', 'e666e48e9d8b44a0a34ff136bcf2ad14', '模组授权', '1', '/admin/mg/org/auth', null, null, null, null, null, null, null);
INSERT INTO `sys_auth` VALUES ('e666e48e9d8b44a0a34ff136bcf2ad14', '0', '机构授权', '1', '', '', '', null, null, null, null, '4');
INSERT INTO `sys_auth` VALUES ('f70012acb9f940bbb583fcd63e9af5ab', '0', '系统管理', '1', '', '', '', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('f7adb4149aa0406d891fec5be6e151e3', '479852e16c834956b8b6c3b801ffd11c', '删除职务', '2', 'org/dept/role/remove.do', 'fa-remove', 'removeRole', null, null, null, null, '6');

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
INSERT INTO `sys_dept` VALUES ('4056026fd5d54543bacaed1f966b8bdc', 'JS部门', 'e2ff5e22cfe94054932ffca05e145934', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `sys_dept` VALUES ('f3cba9023cd34bd1aa82b05d1aa5ddb2', 'JAVA部门', 'e2ff5e22cfe94054932ffca05e145934', 'e2ff5e22cfe94054932ffca05e145934');

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
INSERT INTO `sys_dic` VALUES ('-401', '无权限', '-401', 'msg');

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
INSERT INTO `sys_org_auth` VALUES ('b88244ff-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '02a18777e6774e5482488297fcf26653');
INSERT INTO `sys_org_auth` VALUES ('b88247ff-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '1');
INSERT INTO `sys_org_auth` VALUES ('b88248e8-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '2');
INSERT INTO `sys_org_auth` VALUES ('b88249c6-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '39b352a998a3499183295152e7e7e541');
INSERT INTO `sys_org_auth` VALUES ('b8824add-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_org_auth` VALUES ('b8824bc2-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '3c856ca262be4c09afd1aa66f372039d');
INSERT INTO `sys_org_auth` VALUES ('b8824cb2-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_org_auth` VALUES ('b8824db2-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_org_auth` VALUES ('b8824f36-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '50c1cb37d53e4ea39da31b039b656364');
INSERT INTO `sys_org_auth` VALUES ('b88250ba-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '67340c3f1b634546950bdb255e5982ac');
INSERT INTO `sys_org_auth` VALUES ('b88251bc-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '67d5e55ab8cb4d5b93220645e6e85c99');
INSERT INTO `sys_org_auth` VALUES ('b882527b-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '6db97da52d0d494fa8cc81c59329b179');
INSERT INTO `sys_org_auth` VALUES ('b88253b4-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '76737c29c36a4d449b50a58137504355');
INSERT INTO `sys_org_auth` VALUES ('b88254ae-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_org_auth` VALUES ('b88255c5-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'a15ae14869f04822849571fb6ada622b');
INSERT INTO `sys_org_auth` VALUES ('b88256a6-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'aaf82f26159f426581e59355c7b610b1');
INSERT INTO `sys_org_auth` VALUES ('b8825762-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'ad9d8b44b586456180a751fb87db8db2');
INSERT INTO `sys_org_auth` VALUES ('b8825860-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_org_auth` VALUES ('b882592d-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'c9228a9899dc4f98b576a1f0e049e175');
INSERT INTO `sys_org_auth` VALUES ('b8825a3c-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_org_auth` VALUES ('b8825b63-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'd3ecb27d914d427d95d4d8194b00d4ad');
INSERT INTO `sys_org_auth` VALUES ('b8825c84-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'e666e48e9d8b44a0a34ff136bcf2ad14');
INSERT INTO `sys_org_auth` VALUES ('b8825e27-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_org_auth` VALUES ('b8825f53-f99f-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'f7adb4149aa0406d891fec5be6e151e3');

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
INSERT INTO `sys_role` VALUES ('4e8121e1b7784f208bf32bbcdc9627e9', '项目组长', 'f3cba9023cd34bd1aa82b05d1aa5ddb2');
INSERT INTO `sys_role` VALUES ('e4dec7c2f5954e03984f90a6e03a59b4', '组长', '4056026fd5d54543bacaed1f966b8bdc');
INSERT INTO `sys_role` VALUES ('fe242a8a14b848309e38a2653d5311b4', '项目经理', 'f3cba9023cd34bd1aa82b05d1aa5ddb2');

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
INSERT INTO `sys_role_auth` VALUES ('aa4e60d7-f99f-11e6-a606-00163e028d22', 'fe242a8a14b848309e38a2653d5311b4', '02a18777e6774e5482488297fcf26653');
INSERT INTO `sys_role_auth` VALUES ('aa4e635e-f99f-11e6-a606-00163e028d22', 'fe242a8a14b848309e38a2653d5311b4', '1');
INSERT INTO `sys_role_auth` VALUES ('aa4e6480-f99f-11e6-a606-00163e028d22', 'fe242a8a14b848309e38a2653d5311b4', '2');
INSERT INTO `sys_role_auth` VALUES ('aa4e661b-f99f-11e6-a606-00163e028d22', 'fe242a8a14b848309e38a2653d5311b4', '39b352a998a3499183295152e7e7e541');
INSERT INTO `sys_role_auth` VALUES ('aa4e674a-f99f-11e6-a606-00163e028d22', 'fe242a8a14b848309e38a2653d5311b4', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_role_auth` VALUES ('aa4e68d8-f99f-11e6-a606-00163e028d22', 'fe242a8a14b848309e38a2653d5311b4', '3c856ca262be4c09afd1aa66f372039d');
INSERT INTO `sys_role_auth` VALUES ('aa4e69b0-f99f-11e6-a606-00163e028d22', 'fe242a8a14b848309e38a2653d5311b4', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_role_auth` VALUES ('aa4e6a7c-f99f-11e6-a606-00163e028d22', 'fe242a8a14b848309e38a2653d5311b4', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_role_auth` VALUES ('aa4e6c85-f99f-11e6-a606-00163e028d22', 'fe242a8a14b848309e38a2653d5311b4', '67d5e55ab8cb4d5b93220645e6e85c99');
INSERT INTO `sys_role_auth` VALUES ('aa4e6d7f-f99f-11e6-a606-00163e028d22', 'fe242a8a14b848309e38a2653d5311b4', '6db97da52d0d494fa8cc81c59329b179');
INSERT INTO `sys_role_auth` VALUES ('aa4e6ec8-f99f-11e6-a606-00163e028d22', 'fe242a8a14b848309e38a2653d5311b4', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_role_auth` VALUES ('aa4e7043-f99f-11e6-a606-00163e028d22', 'fe242a8a14b848309e38a2653d5311b4', 'aaf82f26159f426581e59355c7b610b1');
INSERT INTO `sys_role_auth` VALUES ('aa4e7133-f99f-11e6-a606-00163e028d22', 'fe242a8a14b848309e38a2653d5311b4', 'ad9d8b44b586456180a751fb87db8db2');
INSERT INTO `sys_role_auth` VALUES ('aa4e7204-f99f-11e6-a606-00163e028d22', 'fe242a8a14b848309e38a2653d5311b4', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_role_auth` VALUES ('aa4e7311-f99f-11e6-a606-00163e028d22', 'fe242a8a14b848309e38a2653d5311b4', 'c9228a9899dc4f98b576a1f0e049e175');
INSERT INTO `sys_role_auth` VALUES ('aa4e73ec-f99f-11e6-a606-00163e028d22', 'fe242a8a14b848309e38a2653d5311b4', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_role_auth` VALUES ('aa4e7588-f99f-11e6-a606-00163e028d22', 'fe242a8a14b848309e38a2653d5311b4', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_role_auth` VALUES ('aa4e766a-f99f-11e6-a606-00163e028d22', 'fe242a8a14b848309e38a2653d5311b4', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_role_auth` VALUES ('ae2ef4c1-f99f-11e6-a606-00163e028d22', '4e8121e1b7784f208bf32bbcdc9627e9', '02a18777e6774e5482488297fcf26653');
INSERT INTO `sys_role_auth` VALUES ('ae2ef7ad-f99f-11e6-a606-00163e028d22', '4e8121e1b7784f208bf32bbcdc9627e9', '1');
INSERT INTO `sys_role_auth` VALUES ('ae2ef8c3-f99f-11e6-a606-00163e028d22', '4e8121e1b7784f208bf32bbcdc9627e9', '2');
INSERT INTO `sys_role_auth` VALUES ('ae2efa62-f99f-11e6-a606-00163e028d22', '4e8121e1b7784f208bf32bbcdc9627e9', '39b352a998a3499183295152e7e7e541');
INSERT INTO `sys_role_auth` VALUES ('ae2efc16-f99f-11e6-a606-00163e028d22', '4e8121e1b7784f208bf32bbcdc9627e9', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_role_auth` VALUES ('ae2efd3e-f99f-11e6-a606-00163e028d22', '4e8121e1b7784f208bf32bbcdc9627e9', '3c856ca262be4c09afd1aa66f372039d');
INSERT INTO `sys_role_auth` VALUES ('ae2efec9-f99f-11e6-a606-00163e028d22', '4e8121e1b7784f208bf32bbcdc9627e9', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_role_auth` VALUES ('ae2efff8-f99f-11e6-a606-00163e028d22', '4e8121e1b7784f208bf32bbcdc9627e9', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_role_auth` VALUES ('ae2f0215-f99f-11e6-a606-00163e028d22', '4e8121e1b7784f208bf32bbcdc9627e9', '67d5e55ab8cb4d5b93220645e6e85c99');
INSERT INTO `sys_role_auth` VALUES ('ae2f0375-f99f-11e6-a606-00163e028d22', '4e8121e1b7784f208bf32bbcdc9627e9', '6db97da52d0d494fa8cc81c59329b179');
INSERT INTO `sys_role_auth` VALUES ('ae2f05c1-f99f-11e6-a606-00163e028d22', '4e8121e1b7784f208bf32bbcdc9627e9', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_role_auth` VALUES ('ae2f076d-f99f-11e6-a606-00163e028d22', '4e8121e1b7784f208bf32bbcdc9627e9', 'aaf82f26159f426581e59355c7b610b1');
INSERT INTO `sys_role_auth` VALUES ('ae2f0832-f99f-11e6-a606-00163e028d22', '4e8121e1b7784f208bf32bbcdc9627e9', 'ad9d8b44b586456180a751fb87db8db2');
INSERT INTO `sys_role_auth` VALUES ('ae2f0931-f99f-11e6-a606-00163e028d22', '4e8121e1b7784f208bf32bbcdc9627e9', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_role_auth` VALUES ('ae2f0a0d-f99f-11e6-a606-00163e028d22', '4e8121e1b7784f208bf32bbcdc9627e9', 'c9228a9899dc4f98b576a1f0e049e175');
INSERT INTO `sys_role_auth` VALUES ('ae2f0b4c-f99f-11e6-a606-00163e028d22', '4e8121e1b7784f208bf32bbcdc9627e9', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_role_auth` VALUES ('ae2f0e85-f99f-11e6-a606-00163e028d22', '4e8121e1b7784f208bf32bbcdc9627e9', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_role_auth` VALUES ('ae2f0ffb-f99f-11e6-a606-00163e028d22', '4e8121e1b7784f208bf32bbcdc9627e9', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_role_auth` VALUES ('b33cadbe-f99f-11e6-a606-00163e028d22', 'e4dec7c2f5954e03984f90a6e03a59b4', '02a18777e6774e5482488297fcf26653');
INSERT INTO `sys_role_auth` VALUES ('b33cb058-f99f-11e6-a606-00163e028d22', 'e4dec7c2f5954e03984f90a6e03a59b4', '1');
INSERT INTO `sys_role_auth` VALUES ('b33cb141-f99f-11e6-a606-00163e028d22', 'e4dec7c2f5954e03984f90a6e03a59b4', '2');
INSERT INTO `sys_role_auth` VALUES ('b33cb228-f99f-11e6-a606-00163e028d22', 'e4dec7c2f5954e03984f90a6e03a59b4', '39b352a998a3499183295152e7e7e541');
INSERT INTO `sys_role_auth` VALUES ('b33cb332-f99f-11e6-a606-00163e028d22', 'e4dec7c2f5954e03984f90a6e03a59b4', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_role_auth` VALUES ('b33cb417-f99f-11e6-a606-00163e028d22', 'e4dec7c2f5954e03984f90a6e03a59b4', '3c856ca262be4c09afd1aa66f372039d');
INSERT INTO `sys_role_auth` VALUES ('b33cb50d-f99f-11e6-a606-00163e028d22', 'e4dec7c2f5954e03984f90a6e03a59b4', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_role_auth` VALUES ('b33cb659-f99f-11e6-a606-00163e028d22', 'e4dec7c2f5954e03984f90a6e03a59b4', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_role_auth` VALUES ('b33cb84e-f99f-11e6-a606-00163e028d22', 'e4dec7c2f5954e03984f90a6e03a59b4', '67d5e55ab8cb4d5b93220645e6e85c99');
INSERT INTO `sys_role_auth` VALUES ('b33cb915-f99f-11e6-a606-00163e028d22', 'e4dec7c2f5954e03984f90a6e03a59b4', '6db97da52d0d494fa8cc81c59329b179');
INSERT INTO `sys_role_auth` VALUES ('b33cbb60-f99f-11e6-a606-00163e028d22', 'e4dec7c2f5954e03984f90a6e03a59b4', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_role_auth` VALUES ('b33cbcb0-f99f-11e6-a606-00163e028d22', 'e4dec7c2f5954e03984f90a6e03a59b4', 'aaf82f26159f426581e59355c7b610b1');
INSERT INTO `sys_role_auth` VALUES ('b33cbd74-f99f-11e6-a606-00163e028d22', 'e4dec7c2f5954e03984f90a6e03a59b4', 'ad9d8b44b586456180a751fb87db8db2');
INSERT INTO `sys_role_auth` VALUES ('b33cbe73-f99f-11e6-a606-00163e028d22', 'e4dec7c2f5954e03984f90a6e03a59b4', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_role_auth` VALUES ('b33cbf4e-f99f-11e6-a606-00163e028d22', 'e4dec7c2f5954e03984f90a6e03a59b4', 'c9228a9899dc4f98b576a1f0e049e175');
INSERT INTO `sys_role_auth` VALUES ('b33cc04f-f99f-11e6-a606-00163e028d22', 'e4dec7c2f5954e03984f90a6e03a59b4', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_role_auth` VALUES ('b33cc20c-f99f-11e6-a606-00163e028d22', 'e4dec7c2f5954e03984f90a6e03a59b4', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_role_auth` VALUES ('b33cc31e-f99f-11e6-a606-00163e028d22', 'e4dec7c2f5954e03984f90a6e03a59b4', 'f7adb4149aa0406d891fec5be6e151e3');

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
