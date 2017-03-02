/*
Navicat MySQL Data Transfer

Source Server         : jst
Source Server Version : 50714
Source Host           : jst:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-03-02 19:11:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `crm_cus_info`
-- ----------------------------
DROP TABLE IF EXISTS `crm_cus_info`;
CREATE TABLE `crm_cus_info` (
  `id` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `org_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of crm_cus_info
-- ----------------------------
INSERT INTO `crm_cus_info` VALUES ('ce59966a60a049ea8ac3fe3c96d5726f', 'f', 'f', 'fa', 'Te', 'fa', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `crm_cus_info` VALUES ('e876bdcfc6394ec8b4007e6585ed1832', 'bdxfv', 'ab', 'ab', 'a', 'ab', 'e2ff5e22cfe94054932ffca05e145934');

-- ----------------------------
-- Table structure for `crm_sup_info`
-- ----------------------------
DROP TABLE IF EXISTS `crm_sup_info`;
CREATE TABLE `crm_sup_info` (
  `id` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `org_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of crm_sup_info
-- ----------------------------
INSERT INTO `crm_sup_info` VALUES ('a187c76fcf7c4dda868773c4ce32c3be', 'tet', 'etes', 'testfsd', 'Testafdsafsdfafsafdsfds', 'fdsafdsa', 'e2ff5e22cfe94054932ffca05e145934');

-- ----------------------------
-- Table structure for `im_product_change`
-- ----------------------------
DROP TABLE IF EXISTS `im_product_change`;
CREATE TABLE `im_product_change` (
  `id` varchar(36) NOT NULL,
  `title` varchar(36) NOT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `org_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of im_product_change
-- ----------------------------
INSERT INTO `im_product_change` VALUES ('6c9f1c066a6c49aaa2c4cec375436a29', 'fdsgfdsg', 'testfdgsdfgfds', '2', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `im_product_change` VALUES ('b4e48ed392374296a47783503187149e', 'test', 'test', '2', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `im_product_change` VALUES ('f948c725636a4f3f9a4c7e3d39bc5d01', 'Test', 'aaa', '2', 'e2ff5e22cfe94054932ffca05e145934');

-- ----------------------------
-- Table structure for `im_product_change_detail`
-- ----------------------------
DROP TABLE IF EXISTS `im_product_change_detail`;
CREATE TABLE `im_product_change_detail` (
  `id` varchar(36) NOT NULL,
  `bill_id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of im_product_change_detail
-- ----------------------------
INSERT INTO `im_product_change_detail` VALUES ('61a9c851-ff34-11e6-a606-00163e028d22', 'f948c725636a4f3f9a4c7e3d39bc5d01', 'a5be8f77954d41c5a347b2461946006a', '2');
INSERT INTO `im_product_change_detail` VALUES ('9ce6dd83-ff32-11e6-a606-00163e028d22', 'f948c725636a4f3f9a4c7e3d39bc5d01', '7ec302194e7244839df7e95f39eae685', '12');
INSERT INTO `im_product_change_detail` VALUES ('a4da400d-ff2f-11e6-a606-00163e028d22', 'f948c725636a4f3f9a4c7e3d39bc5d01', '370d0ac76a79492eb9abac0e35e7537f', '212');
INSERT INTO `im_product_change_detail` VALUES ('afa2d3b7-ff22-11e6-a606-00163e028d22', '6c9f1c066a6c49aaa2c4cec375436a29', 'a5be8f77954d41c5a347b2461946006a', '13');
INSERT INTO `im_product_change_detail` VALUES ('b0d4cac7-ff36-11e6-a606-00163e028d22', '6c9f1c066a6c49aaa2c4cec375436a29', '370d0ac76a79492eb9abac0e35e7537f', '12');
INSERT INTO `im_product_change_detail` VALUES ('b0d4ce20-ff36-11e6-a606-00163e028d22', '6c9f1c066a6c49aaa2c4cec375436a29', '7ec302194e7244839df7e95f39eae685', '11');
INSERT INTO `im_product_change_detail` VALUES ('d5d616da-ff26-11e6-a606-00163e028d22', 'b4e48ed392374296a47783503187149e', '370d0ac76a79492eb9abac0e35e7537f', '13');
INSERT INTO `im_product_change_detail` VALUES ('d5d619ed-ff26-11e6-a606-00163e028d22', 'b4e48ed392374296a47783503187149e', '7ec302194e7244839df7e95f39eae685', '14');

-- ----------------------------
-- Table structure for `im_product_info`
-- ----------------------------
DROP TABLE IF EXISTS `im_product_info`;
CREATE TABLE `im_product_info` (
  `id` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `serial_num` varchar(200) DEFAULT NULL,
  `self_num` varchar(200) DEFAULT NULL,
  `depict` varchar(500) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `org_id` varchar(36) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of im_product_info
-- ----------------------------
INSERT INTO `im_product_info` VALUES ('370d0ac76a79492eb9abac0e35e7537f', 'vcx', null, 'vczx', 'cvzx', 'xcvz', null, 'e2ff5e22cfe94054932ffca05e145934', '237');
INSERT INTO `im_product_info` VALUES ('7ec302194e7244839df7e95f39eae685', 'aa', null, 'BB', 'BB', 'BB', null, 'e2ff5e22cfe94054932ffca05e145934', '37');
INSERT INTO `im_product_info` VALUES ('a5be8f77954d41c5a347b2461946006a', 'zcv', null, 'vcx', 'vcxz', 'vcx', null, 'e2ff5e22cfe94054932ffca05e145934', '15');

-- ----------------------------
-- Table structure for `mg_org_auth`
-- ----------------------------
DROP TABLE IF EXISTS `mg_org_auth`;
CREATE TABLE `mg_org_auth` (
  `id` varchar(36) NOT NULL,
  `org_id` varchar(36) DEFAULT NULL,
  `auth_type` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mg_org_auth
-- ----------------------------
INSERT INTO `mg_org_auth` VALUES ('405997fb523a4a79b9dc83e919164e44', 'f92ac73813eb4545bc29bde7e5f86e41', '1', '0');
INSERT INTO `mg_org_auth` VALUES ('58a7a53ae4c84b20b320bbafbdd56f19', '86b26d4b86ca409c9a726a2d9c0dec79', '1', '2');
INSERT INTO `mg_org_auth` VALUES ('85433893d097453dbac55f45da3ebc94', '86b26d4b86ca409c9a726a2d9c0dec79', '1', '2');
INSERT INTO `mg_org_auth` VALUES ('cc72d0bd1ac84cdabecdb1804c2ca07a', '86b26d4b86ca409c9a726a2d9c0dec79', '-1', '2');
INSERT INTO `mg_org_auth` VALUES ('da7fc8cdc660492ea972f65f93689955', '86b26d4b86ca409c9a726a2d9c0dec79', '1', '2');
INSERT INTO `mg_org_auth` VALUES ('e031579252e94ec5b6a23804aadd7eed', '86b26d4b86ca409c9a726a2d9c0dec79', '-1', '2');

-- ----------------------------
-- Table structure for `mg_org_auth_detail`
-- ----------------------------
DROP TABLE IF EXISTS `mg_org_auth_detail`;
CREATE TABLE `mg_org_auth_detail` (
  `id` varchar(36) NOT NULL,
  `bill_id` varchar(36) DEFAULT NULL,
  `auth_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mg_org_auth_detail
-- ----------------------------
INSERT INTO `mg_org_auth_detail` VALUES ('4cf5d314-fe5d-11e6-a606-00163e028d22', '405997fb523a4a79b9dc83e919164e44', '6cf1391a9e3c4ac5af95534de51d7bd6');
INSERT INTO `mg_org_auth_detail` VALUES ('4cf5d777-fe5d-11e6-a606-00163e028d22', '405997fb523a4a79b9dc83e919164e44', 'ba7aa68555d5474ca6a6e3a12ccd1afe');
INSERT INTO `mg_org_auth_detail` VALUES ('4cf5d87b-fe5d-11e6-a606-00163e028d22', '405997fb523a4a79b9dc83e919164e44', 'c3524525c489444aac421df515c63873');
INSERT INTO `mg_org_auth_detail` VALUES ('4cf5da14-fe5d-11e6-a606-00163e028d22', '405997fb523a4a79b9dc83e919164e44', 'da8bf91990b44726bfa4ea7a05a4499f');
INSERT INTO `mg_org_auth_detail` VALUES ('aa3185e3-fd98-11e6-a606-00163e028d22', '58a7a53ae4c84b20b320bbafbdd56f19', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `mg_org_auth_detail` VALUES ('c0328e3b-fd93-11e6-a606-00163e028d22', 'e031579252e94ec5b6a23804aadd7eed', '1096978102094137b78bebc1de645e65');
INSERT INTO `mg_org_auth_detail` VALUES ('c032927f-fd93-11e6-a606-00163e028d22', 'e031579252e94ec5b6a23804aadd7eed', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `mg_org_auth_detail` VALUES ('c0329561-fd93-11e6-a606-00163e028d22', 'e031579252e94ec5b6a23804aadd7eed', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `mg_org_auth_detail` VALUES ('c032966b-fd93-11e6-a606-00163e028d22', 'e031579252e94ec5b6a23804aadd7eed', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `mg_org_auth_detail` VALUES ('c03298a9-fd93-11e6-a606-00163e028d22', 'e031579252e94ec5b6a23804aadd7eed', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `mg_org_auth_detail` VALUES ('c03299bc-fd93-11e6-a606-00163e028d22', 'e031579252e94ec5b6a23804aadd7eed', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `mg_org_auth_detail` VALUES ('c0329c23-fd93-11e6-a606-00163e028d22', 'e031579252e94ec5b6a23804aadd7eed', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `mg_org_auth_detail` VALUES ('c1b5738c-fd98-11e6-a606-00163e028d22', 'cc72d0bd1ac84cdabecdb1804c2ca07a', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `mg_org_auth_detail` VALUES ('cc2b1af4-fd93-11e6-a606-00163e028d22', 'da7fc8cdc660492ea972f65f93689955', '67340c3f1b634546950bdb255e5982ac');
INSERT INTO `mg_org_auth_detail` VALUES ('cc2b1f84-fd93-11e6-a606-00163e028d22', 'da7fc8cdc660492ea972f65f93689955', '6f55a605da78479db8d53489b02b56f8');
INSERT INTO `mg_org_auth_detail` VALUES ('cc2b556d-fd93-11e6-a606-00163e028d22', 'da7fc8cdc660492ea972f65f93689955', 'a15ae14869f04822849571fb6ada622b');
INSERT INTO `mg_org_auth_detail` VALUES ('cc2b56c0-fd93-11e6-a606-00163e028d22', 'da7fc8cdc660492ea972f65f93689955', 'a406460ce4ef4fa1a7743c724613feda');
INSERT INTO `mg_org_auth_detail` VALUES ('cc2b5871-fd93-11e6-a606-00163e028d22', 'da7fc8cdc660492ea972f65f93689955', 'b8e10a35c90e4b5596a5eed52397373d');
INSERT INTO `mg_org_auth_detail` VALUES ('d79c9115-fd98-11e6-a606-00163e028d22', '85433893d097453dbac55f45da3ebc94', '1096978102094137b78bebc1de645e65');
INSERT INTO `mg_org_auth_detail` VALUES ('d79cc360-fd98-11e6-a606-00163e028d22', '85433893d097453dbac55f45da3ebc94', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `mg_org_auth_detail` VALUES ('d79cc4f8-fd98-11e6-a606-00163e028d22', '85433893d097453dbac55f45da3ebc94', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `mg_org_auth_detail` VALUES ('d79cc631-fd98-11e6-a606-00163e028d22', '85433893d097453dbac55f45da3ebc94', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `mg_org_auth_detail` VALUES ('d79cc99b-fd98-11e6-a606-00163e028d22', '85433893d097453dbac55f45da3ebc94', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `mg_org_auth_detail` VALUES ('d79ccabb-fd98-11e6-a606-00163e028d22', '85433893d097453dbac55f45da3ebc94', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `mg_org_auth_detail` VALUES ('d79ccd61-fd98-11e6-a606-00163e028d22', '85433893d097453dbac55f45da3ebc94', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `mg_org_auth_detail` VALUES ('d79cce80-fd98-11e6-a606-00163e028d22', '85433893d097453dbac55f45da3ebc94', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `mg_org_auth_detail` VALUES ('d79cd126-fd98-11e6-a606-00163e028d22', '85433893d097453dbac55f45da3ebc94', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `mg_org_auth_detail` VALUES ('d79cd1ff-fd98-11e6-a606-00163e028d22', '85433893d097453dbac55f45da3ebc94', 'f7adb4149aa0406d891fec5be6e151e3');

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
INSERT INTO `mg_org_register` VALUES ('2de4d1b1b33f48bcbe120b459c8744f3', 'a', 'a', 'a', 'qa', 'qa', 'admin', 'admin', '0', null);
INSERT INTO `mg_org_register` VALUES ('4d902e707a3d458fba4b3b66d040829f', 'a', 'a', 'a', 'a', 'a', 'admin', 'admin', '2', null);
INSERT INTO `mg_org_register` VALUES ('7a3422890ab547e78de73c4c375b3018', 'fsd', 'fds', 'fsdfds', 'fds', 'fds', 'admin', 'admin', '2', null);
INSERT INTO `mg_org_register` VALUES ('ea13706be922472c9bcf779b9822a1f6', 'b', 'b', 'b', 'b', 'b', 'admin', 'admin', '2', null);

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
INSERT INTO `sys_approval_config` VALUES ('ImProductChangeDTO', 'ImProductChangeDTO', '2');
INSERT INTO `sys_approval_config` VALUES ('MgOrgAuthDTO', 'MgOrgAuthDTO', '2');
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
INSERT INTO `sys_approval_list` VALUES ('00005de6892949c2b7c29ef9d010cb43', '85433893d097453dbac55f45da3ebc94', 'MgOrgAuthDTO', 'admin', '2017-02-28 17:32:41', '1', '');
INSERT INTO `sys_approval_list` VALUES ('0378e04a496a40f2b6c37abf66aa3ffb', '58a7a53ae4c84b20b320bbafbdd56f19', 'MgOrgAuthDTO', 'admin', '2017-02-28 17:31:29', '2', '');
INSERT INTO `sys_approval_list` VALUES ('07d9de6f80184811a49356461dcca67a', 'e1c01d9a97684a16891bcbc02ff43455', 'ImProductChangeDTO', 'admin', '2017-03-02 11:55:06', '1', '');
INSERT INTO `sys_approval_list` VALUES ('0c42b223848f46f5acd3e2ef7d0fc477', 'b7584c4cc6cd45269c241fbf644bba32', 'MgOrgRegisterDTO', 'admin', '2017-02-28 10:09:00', '1', '');
INSERT INTO `sys_approval_list` VALUES ('0ce0825c901444d8954811101271ff6c', 'e031579252e94ec5b6a23804aadd7eed', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:32:28', '99', 'dd');
INSERT INTO `sys_approval_list` VALUES ('10b2f86feb744009b8a79ffc5d3bc7e8', 'f948c725636a4f3f9a4c7e3d39bc5d01', 'ImProductChangeDTO', 'admin', '2017-03-02 19:08:50', '2', 'aaa');
INSERT INTO `sys_approval_list` VALUES ('117956d2eccb40b3b772117178ba7e42', '38b18de2453041c4ad46b86b18cd642a', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:05:22', '1', '');
INSERT INTO `sys_approval_list` VALUES ('148978567eb644ec9f464d40f868bc60', 'ea13706be922472c9bcf779b9822a1f6', 'MgOrgRegisterDTO', 'admin', '2017-02-28 19:11:04', '2', '');
INSERT INTO `sys_approval_list` VALUES ('166ae9a8ab414cdaadbe61292a6d5782', 'e1c01d9a97684a16891bcbc02ff43455', 'ImProductChangeDTO', 'admin', '2017-03-02 11:55:09', '2', 'testgdsg');
INSERT INTO `sys_approval_list` VALUES ('170bfd1d6f6c4d56a30fe4fe9bb1fc01', '13483c98a7104318bee76e18eb1c77dc', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:09:17', '1', '');
INSERT INTO `sys_approval_list` VALUES ('1cceeaeb23964f35a4071da044a92975', '6427944f86d040f8bd9feaf99412d611', 'MgOrgRegisterDTO', 'admin', '2017-02-27 17:06:47', '99', 'tretretre');
INSERT INTO `sys_approval_list` VALUES ('1ecfd3483625429f96d57c71b61e7810', '348cc8382cb6401bb86d3612a9b1528e', 'MgOrgRegisterDTO', 'admin', '2017-02-28 10:00:18', '99', 'Test');
INSERT INTO `sys_approval_list` VALUES ('26651526364b4e75ba7e998c50504556', 'e1c01d9a97684a16891bcbc02ff43455', 'ImProductChangeDTO', 'admin', '2017-03-02 11:54:58', '99', 'Test');
INSERT INTO `sys_approval_list` VALUES ('2a59aced4007466c9ab92c51e7b75535', '6427944f86d040f8bd9feaf99412d611', 'MgOrgRegisterDTO', 'admin', '2017-02-27 17:07:28', '2', '');
INSERT INTO `sys_approval_list` VALUES ('2dc9b6d6f8364934b6b66bbfa5c79591', 'a64f306d77d8486d87f237aca19a99a0', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:16:58', '1', '');
INSERT INTO `sys_approval_list` VALUES ('2f8aa0d00ef64b02949d29e7eb73615c', '7a3422890ab547e78de73c4c375b3018', 'MgOrgRegisterDTO', 'admin', '2017-03-01 15:55:29', '1', '');
INSERT INTO `sys_approval_list` VALUES ('2fae0d837d0a4f07a2b07c3e9220c10a', 'a64f306d77d8486d87f237aca19a99a0', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:11:38', '1', '');
INSERT INTO `sys_approval_list` VALUES ('319f7b8ff6c44670ae2a88271df95c24', '843d4f023ec0455490ab9e1e9670ff94', 'MgOrgRegisterDTO', 'admin', '2017-02-27 15:33:57', '2', '');
INSERT INTO `sys_approval_list` VALUES ('382ac611dc794dbf83682734cfeb9061', 'a64f306d77d8486d87f237aca19a99a0', 'MgOrgAuth', '', '2017-02-28 16:11:44', '2', '');
INSERT INTO `sys_approval_list` VALUES ('3aa5e0582b4e40d5861fcc449765a046', 'ea13706be922472c9bcf779b9822a1f6', 'MgOrgRegisterDTO', 'admin', '2017-02-28 19:11:02', '1', '');
INSERT INTO `sys_approval_list` VALUES ('3ce23b15bc224872994106f598ecc39f', '7a3422890ab547e78de73c4c375b3018', 'MgOrgRegisterDTO', 'admin', '2017-03-01 15:55:14', '1', '');
INSERT INTO `sys_approval_list` VALUES ('3e10fb8578f84462ad12da1cafde1313', '13483c98a7104318bee76e18eb1c77dc', 'MgOrgRegister', 'admin', '2017-02-28 11:09:20', '2', '');
INSERT INTO `sys_approval_list` VALUES ('4110e7ccbac947269134e81ca0ae288b', '83075a6faa8f4cc3b0e7f7bd34d58fe6', 'MgOrgRegisterDTO', 'admin', '2017-02-28 10:08:49', '1', '');
INSERT INTO `sys_approval_list` VALUES ('440eb3bc6d344e2caa7d51c331c107f0', '38b18de2453041c4ad46b86b18cd642a', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:27:18', '1', '');
INSERT INTO `sys_approval_list` VALUES ('49d8ee871fb64db9820988e30e01e20b', 'e031579252e94ec5b6a23804aadd7eed', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:33:15', '99', 'fgfd');
INSERT INTO `sys_approval_list` VALUES ('4e9cf1e7893047708089cc3527fa716a', '837e9db99ae545c3965883713646d745', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:06:18', '1', '');
INSERT INTO `sys_approval_list` VALUES ('53543792bd014826b0d9e5d0fc3e965d', 'da7fc8cdc660492ea972f65f93689955', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:56:55', '1', '');
INSERT INTO `sys_approval_list` VALUES ('57a87dfcada2456da120ba0dbba1d70c', '4d902e707a3d458fba4b3b66d040829f', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:31:23', '99', '');
INSERT INTO `sys_approval_list` VALUES ('5bd439d03a1e4c3384394f48d06e8909', '4d902e707a3d458fba4b3b66d040829f', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:32:59', '1', '');
INSERT INTO `sys_approval_list` VALUES ('617e9648a1ca47a9a9a9c2793c4ab838', 'ce2a16d0a97b4238976b8d6d2c13c56f', 'MgOrgRegisterDTO', 'admin', '2017-02-27 15:37:38', '1', '');
INSERT INTO `sys_approval_list` VALUES ('61dac1ae480041ba98cda03c3a80bbb9', '38b18de2453041c4ad46b86b18cd642a', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:27:08', '99', 'Test');
INSERT INTO `sys_approval_list` VALUES ('6349c34ae08847b3a83f8e294c9937df', '4d902e707a3d458fba4b3b66d040829f', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:33:01', '99', '');
INSERT INTO `sys_approval_list` VALUES ('6449a456c8ae4abda4f9ce8a1e100c1f', 'ce2a16d0a97b4238976b8d6d2c13c56f', 'MgOrgRegisterDTO', 'admin', '2017-02-27 15:38:08', '99', 'Test');
INSERT INTO `sys_approval_list` VALUES ('6567ada7573d47f5b6a04fb75c7083a9', 'cc72d0bd1ac84cdabecdb1804c2ca07a', 'MgOrgAuthDTO', 'admin', '2017-02-28 17:32:07', '2', '');
INSERT INTO `sys_approval_list` VALUES ('6a5b787fa3354358a31d3e8428a7cbac', 'a64f306d77d8486d87f237aca19a99a0', 'MgOrgAuth', '', '2017-02-28 16:04:06', '2', '');
INSERT INTO `sys_approval_list` VALUES ('6b8f5faa16694f78966bf16191fe44bb', '38b18de2453041c4ad46b86b18cd642a', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:10:23', '1', '');
INSERT INTO `sys_approval_list` VALUES ('6ba1f351cd7740499ca1e6e54f4a8771', '6427944f86d040f8bd9feaf99412d611', 'MgOrgRegisterDTO', 'admin', '2017-02-27 17:06:43', '1', '');
INSERT INTO `sys_approval_list` VALUES ('74404ffc05b5488989efd43795dac5a4', 'ce2a16d0a97b4238976b8d6d2c13c56f', 'MgOrgRegisterDTO', 'admin', '2017-02-27 15:38:21', '2', '');
INSERT INTO `sys_approval_list` VALUES ('7a4bd8125902488291a7d6e52bb93660', 'da7fc8cdc660492ea972f65f93689955', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:58:26', '2', '');
INSERT INTO `sys_approval_list` VALUES ('82569f0b03624251b87251e34be3d790', 'a64f306d77d8486d87f237aca19a99a0', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:03:11', '1', '');
INSERT INTO `sys_approval_list` VALUES ('82a3275e798740758590e32b47fd07a6', '0e48876593c24508bf6ede0adea89c3b', 'MgOrgRegister', 'admin', '2017-02-28 11:10:47', '2', '');
INSERT INTO `sys_approval_list` VALUES ('846b45d0fd2842ab9a96e574e327b92b', '348cc8382cb6401bb86d3612a9b1528e', 'MgOrgRegisterDTO', 'admin', '2017-02-28 10:03:33', '1', '');
INSERT INTO `sys_approval_list` VALUES ('85d7c911a823447588cae7a8486eb7eb', '85433893d097453dbac55f45da3ebc94', 'MgOrgAuthDTO', 'admin', '2017-02-28 17:32:44', '2', '');
INSERT INTO `sys_approval_list` VALUES ('881310d099b240b5ac1ae8f010bc6198', 'f948c725636a4f3f9a4c7e3d39bc5d01', 'ImProductChangeDTO', 'admin', '2017-03-02 19:08:45', '1', '');
INSERT INTO `sys_approval_list` VALUES ('947712880d22407a8d59ea4d954317d3', '6427944f86d040f8bd9feaf99412d611', 'MgOrgRegisterDTO', 'admin', '2017-02-27 17:07:13', '99', 'WWWWW');
INSERT INTO `sys_approval_list` VALUES ('9646fb557cd84eaabbff86632e4a70a0', 'e031579252e94ec5b6a23804aadd7eed', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:32:56', '1', '');
INSERT INTO `sys_approval_list` VALUES ('9a0b8a7f6c454bd399ade43ebb75b9a0', '4d902e707a3d458fba4b3b66d040829f', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:31:16', '1', '');
INSERT INTO `sys_approval_list` VALUES ('9b6d52b51c204329b8fde7666e1d8d83', '38b18de2453041c4ad46b86b18cd642a', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:16:30', '2', '');
INSERT INTO `sys_approval_list` VALUES ('9f204e2aa5344d10abf190b0e498667b', '6427944f86d040f8bd9feaf99412d611', 'MgOrgRegisterDTO', 'admin', '2017-02-27 17:07:25', '1', '');
INSERT INTO `sys_approval_list` VALUES ('a0d6a1334f80421a916c335bc29000fc', '7a3422890ab547e78de73c4c375b3018', 'MgOrgRegisterDTO', 'admin', '2017-03-01 15:55:19', '99', 'afdsa');
INSERT INTO `sys_approval_list` VALUES ('a15ec1f928e5476596a8dce758729d09', 'e031579252e94ec5b6a23804aadd7eed', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:32:18', '1', '');
INSERT INTO `sys_approval_list` VALUES ('a3d5f1c6bfc14f85894d45c4b67133ba', 'cc72d0bd1ac84cdabecdb1804c2ca07a', 'MgOrgAuthDTO', 'admin', '2017-02-28 17:32:05', '1', '');
INSERT INTO `sys_approval_list` VALUES ('a661443be8cc45a0b6a6d0d665ca9d3b', '0e48876593c24508bf6ede0adea89c3b', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:10:44', '1', '');
INSERT INTO `sys_approval_list` VALUES ('a7b4fa62f2184f3aacc3a7db0d230771', '4d902e707a3d458fba4b3b66d040829f', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:27:40', '1', '');
INSERT INTO `sys_approval_list` VALUES ('a8d51c13d0624872a76cc4b7d287d879', 'a64f306d77d8486d87f237aca19a99a0', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:11:26', '99', '');
INSERT INTO `sys_approval_list` VALUES ('a95fdb3591334243a0cd13695f101e6b', 'b7584c4cc6cd45269c241fbf644bba32', 'MgOrgRegisterDTO', 'admin', '2017-02-28 10:09:03', '99', 'Test');
INSERT INTO `sys_approval_list` VALUES ('ab53ac34d8274cb8822bfc1e927b6a0d', 'b4e48ed392374296a47783503187149e', 'ImProductChangeDTO', 'admin', '2017-03-02 17:54:19', '1', '');
INSERT INTO `sys_approval_list` VALUES ('ad2387f95b8e4d4892c9b1f5648ec960', '4d902e707a3d458fba4b3b66d040829f', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:30:49', '99', '');
INSERT INTO `sys_approval_list` VALUES ('aedcc07edeb34852971e97579da310b6', '38b18de2453041c4ad46b86b18cd642a', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:01:59', '1', '');
INSERT INTO `sys_approval_list` VALUES ('b33e4e88160343ceaa4d0e3c0f89dcb2', 'e031579252e94ec5b6a23804aadd7eed', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:32:44', '1', '');
INSERT INTO `sys_approval_list` VALUES ('b387af91daf54e2ca8d10c2d68e7d53a', '38b18de2453041c4ad46b86b18cd642a', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:27:21', '2', '');
INSERT INTO `sys_approval_list` VALUES ('b7b6d45ea22a468bb50eae79bffe3b83', '348cc8382cb6401bb86d3612a9b1528e', 'MgOrgRegisterDTO', 'admin', '2017-02-28 10:03:38', '2', '');
INSERT INTO `sys_approval_list` VALUES ('b94fc58f820242cb998119b0275b4c38', 'e1c01d9a97684a16891bcbc02ff43455', 'ImProductChangeDTO', 'admin', '2017-03-02 11:54:06', '1', '');
INSERT INTO `sys_approval_list` VALUES ('bf97317bda1d4bef858b27a221e6a41a', 'a64f306d77d8486d87f237aca19a99a0', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:18:52', '1', '');
INSERT INTO `sys_approval_list` VALUES ('c789808ed5784b7c892b020bdb07685e', '4d902e707a3d458fba4b3b66d040829f', 'MgOrgRegister', 'admin', '2017-02-28 11:33:21', '2', '');
INSERT INTO `sys_approval_list` VALUES ('cf904d4cd08b40db8b51333b44ad4c67', 'ce2a16d0a97b4238976b8d6d2c13c56f', 'MgOrgRegisterDTO', 'admin', '2017-02-27 15:33:29', '99', 'Test');
INSERT INTO `sys_approval_list` VALUES ('d095f7b0f66c437db93bee89c77a571a', '6427944f86d040f8bd9feaf99412d611', 'MgOrgRegisterDTO', 'admin', '2017-02-27 17:07:02', '1', '');
INSERT INTO `sys_approval_list` VALUES ('d40638a6e2bd40feb9c9c85c6001c173', '6c9f1c066a6c49aaa2c4cec375436a29', 'ImProductChangeDTO', 'admin', '2017-03-02 19:09:09', '2', 'testfdgsdfgfds');
INSERT INTO `sys_approval_list` VALUES ('d413f3b1d3864ff6bdf8e11928cc8775', 'a64f306d77d8486d87f237aca19a99a0', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:17:02', '99', '');
INSERT INTO `sys_approval_list` VALUES ('d415597bd71249789de12b7d406e2de3', '815cba185d064207aae793f841ad5bc7', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:07:43', '1', '');
INSERT INTO `sys_approval_list` VALUES ('d5ce7f2eb6ee4298bd14b7679ec4c77c', 'a64f306d77d8486d87f237aca19a99a0', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:11:20', '1', '');
INSERT INTO `sys_approval_list` VALUES ('d7d2d2bc28d94fdf9cffbf875f2286d9', '4d902e707a3d458fba4b3b66d040829f', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:33:06', '1', '');
INSERT INTO `sys_approval_list` VALUES ('dab32d727ff74d2eb7b320163909a21e', 'a64f306d77d8486d87f237aca19a99a0', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:18:56', '99', 'gge');
INSERT INTO `sys_approval_list` VALUES ('e016a6653a5e45088509356ae8e6ae73', '7a3422890ab547e78de73c4c375b3018', 'MgOrgRegisterDTO', 'admin', '2017-03-01 15:55:33', '2', '');
INSERT INTO `sys_approval_list` VALUES ('e02c80cd0a9842c893486ba6ae01ed7f', '348cc8382cb6401bb86d3612a9b1528e', 'MgOrgRegisterDTO', 'admin', '2017-02-28 09:59:54', '1', '');
INSERT INTO `sys_approval_list` VALUES ('e3f419b2e84d4fd0a6b4e63803b2e269', '38b18de2453041c4ad46b86b18cd642a', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:06:16', '99', '');
INSERT INTO `sys_approval_list` VALUES ('f0495fe931034996903f48352cbddaf9', '837e9db99ae545c3965883713646d745', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:06:20', '2', '');
INSERT INTO `sys_approval_list` VALUES ('f2ead5c1181849bfbd084545b049dc74', 'e031579252e94ec5b6a23804aadd7eed', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:32:48', '99', 'dd');
INSERT INTO `sys_approval_list` VALUES ('f6862ef50c3140388fe61bb8e3ce2da2', 'ce2a16d0a97b4238976b8d6d2c13c56f', 'MgOrgRegisterDTO', 'admin', '2017-02-27 15:38:17', '1', '');
INSERT INTO `sys_approval_list` VALUES ('fcbdd73854f24484a2a89ed662b2e60e', '815cba185d064207aae793f841ad5bc7', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:07:46', '2', '');
INSERT INTO `sys_approval_list` VALUES ('fd6dbae04b9747e1b7e9785cf97a0f54', 'b4e48ed392374296a47783503187149e', 'ImProductChangeDTO', 'admin', '2017-03-02 19:05:13', '2', 'test');
INSERT INTO `sys_approval_list` VALUES ('fdb99b61f1ba4ee18e44fb1592af0a81', '38b18de2453041c4ad46b86b18cd642a', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:27:04', '1', '');
INSERT INTO `sys_approval_list` VALUES ('fe5f81079b664a05ad308b4469ae2ecd', '6c9f1c066a6c49aaa2c4cec375436a29', 'ImProductChangeDTO', 'admin', '2017-03-02 19:09:07', '1', '');
INSERT INTO `sys_approval_list` VALUES ('fee25c03678b46f1bb9f4ee6a4c94145', '58a7a53ae4c84b20b320bbafbdd56f19', 'MgOrgAuthDTO', 'admin', '2017-02-28 17:31:26', '1', '');

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
INSERT INTO `sys_auth` VALUES ('0575c843bad7482ba7eb9ecd6269d1f5', 'c3524525c489444aac421df515c63873', '库存变更', '1', '/admin/im/stock-change', '', '', '1', null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('0694283e392b42a2869cdf8093cbeb90', '0575c843bad7482ba7eb9ecd6269d1f5', '删除', '2', 'im/product/change/remove.do', 'fa-remove', 'remove', '1', null, null, null, '6');
INSERT INTO `sys_auth` VALUES ('1', '0', '平台管理', '1', '', '', '', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('1096978102094137b78bebc1de645e65', '479852e16c834956b8b6c3b801ffd11c', '新增人员', '2', 'org/dept/role/user/save.do', 'fa-plus', 'addUser', '1', null, null, null, '7');
INSERT INTO `sys_auth` VALUES ('13439fc34d4b41c2b3f84a6770073692', '0', '客户管理', '1', '', '', '', '1', null, null, null, '5');
INSERT INTO `sys_auth` VALUES ('2', '1', '权限定义', '1', '/admin/mg/authDefine', '', '', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('258ecf13eecc49f18bea208dd6b9f00c', 'd3ecb27d914d427d95d4d8194b00d4ad', '否决', '2', 'mg/org/authBill/reject.do', 'fa-remove', 'reject', null, null, null, null, '5');
INSERT INTO `sys_auth` VALUES ('28d0694acd354be7ad1264cad548ce2e', '76737c29c36a4d449b50a58137504355', '删除', '2', 'mg/org/register/remove.do', 'fa-remove', 'remove', null, null, null, null, '99');
INSERT INTO `sys_auth` VALUES ('39b352a998a3499183295152e7e7e541', '1', '授权组织', '1', '/admin/mg/authOrg', '', '', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('3a5d809b46484cce85a7a18fb0445df5', '479852e16c834956b8b6c3b801ffd11c', '删除', '2', 'org/dept/remove.do', 'fa-remove', 'remove', '1', null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('3c856ca262be4c09afd1aa66f372039d', '39b352a998a3499183295152e7e7e541', '修改', '2', 'org/save.do', 'fa-edit', 'mod', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('479852e16c834956b8b6c3b801ffd11c', 'f70012acb9f940bbb583fcd63e9af5ab', '组织管理', '1', '/admin/sys/orgDefine', '', '', '1', '1', null, null, '2');
INSERT INTO `sys_auth` VALUES ('498089d953894079b07205488df94d9d', 'd3ecb27d914d427d95d4d8194b00d4ad', '删除', '2', 'mg/org/authBill/remove.do', 'fa-remove', 'remove', null, null, null, null, '99');
INSERT INTO `sys_auth` VALUES ('4ac1d4f894704f45b779de16b723ec04', '479852e16c834956b8b6c3b801ffd11c', '修改', '2', 'org/dept/save.do', 'fa-edit', 'mod', '1', null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('4b8d8cd29a634d2ba2e44ba1e9b7cf47', '76737c29c36a4d449b50a58137504355', '否决', '2', 'mg/org/register/reject.do', 'fa-remove', 'reject', null, null, null, null, '5');
INSERT INTO `sys_auth` VALUES ('50c1cb37d53e4ea39da31b039b656364', 'e666e48e9d8b44a0a34ff136bcf2ad14', '客户模组', '1', '/admin/mg/org/list', '', '', null, null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('58ab8612b36642c4a0fd96970a878180', 'd3ecb27d914d427d95d4d8194b00d4ad', '审核', '2', 'mg/org/authBill/auth.do', 'fa-check', 'auth', null, null, null, null, '4');
INSERT INTO `sys_auth` VALUES ('6374c1e4f3ac40da80b8f86b42d855a2', '13439fc34d4b41c2b3f84a6770073692', '客户信息', '1', '/admin/crm/cus', '', '', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('664354eb5aea4a00853ddb18dc68ebbd', '0575c843bad7482ba7eb9ecd6269d1f5', '查看', '2', 'im/product/change/save.do', 'fa-edit', 'mod', '1', null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('672bf70518114cbfa03e809489f3ec43', 'f70012acb9f940bbb583fcd63e9af5ab', '基本资料', '1', '/admin/sys/orgDefine/info', '', '', '1', '1', null, null, '1');
INSERT INTO `sys_auth` VALUES ('67340c3f1b634546950bdb255e5982ac', 'a15ae14869f04822849571fb6ada622b', '用户管理', '1', '/admin/personnel/mgUser', '', '', '1', '1', null, null, null);
INSERT INTO `sys_auth` VALUES ('67d5e55ab8cb4d5b93220645e6e85c99', '39b352a998a3499183295152e7e7e541', '权限保存', '2', 'org/auth/save', 'fa-save', 'save', null, null, null, null, '4');
INSERT INTO `sys_auth` VALUES ('6cf1391a9e3c4ac5af95534de51d7bd6', 'ba7aa68555d5474ca6a6e3a12ccd1afe', '新增', '2', 'im/product/book-in/save.do', 'fa-plus', 'add', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('6db97da52d0d494fa8cc81c59329b179', '2', '删除', '2', 'auth/define/remove.do', 'fa-remove', 'remove', null, null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('6f55a605da78479db8d53489b02b56f8', '67340c3f1b634546950bdb255e5982ac', '删除', '2', 'user/remove.do', 'fa-remove', 'remove', '1', null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('7030524f08a742649a9c5255199f797d', '0575c843bad7482ba7eb9ecd6269d1f5', '新增', '2', 'im/product/change/save.do', 'fa-plus', 'add', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('7118e0b350e14f7aa9715831e9cf16d3', '13439fc34d4b41c2b3f84a6770073692', '供应商信息', '1', '/admin/crm/sup', '', '', '1', null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('76737c29c36a4d449b50a58137504355', 'e666e48e9d8b44a0a34ff136bcf2ad14', '机构登记', '1', '/admin/mg/org/register', '', '', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('77885a6895b543059b135354d5f62fce', '0575c843bad7482ba7eb9ecd6269d1f5', '审核', '2', 'im/product/change/auth.do', 'fa-check', 'auth', '1', null, null, null, '4');
INSERT INTO `sys_auth` VALUES ('7d5f7d02ccc74bbf9ccd8fdef0c94a3a', '0575c843bad7482ba7eb9ecd6269d1f5', '提交', '2', 'im/product/change/app.do', 'fa-check', 'app', '1', null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('7e9a289b3597483a84c08bbe71077558', '7118e0b350e14f7aa9715831e9cf16d3', '查看', '2', 'crm/sup/save.do', 'fa-edit', 'mod', '1', null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('81064737ff3f4f0da71141ec42f366ce', '479852e16c834956b8b6c3b801ffd11c', '删除人员', '2', 'org/dept/role/user/remove.do', 'fa-remove', 'removeUser', '1', null, null, null, '8');
INSERT INTO `sys_auth` VALUES ('8f8a71e10f5c46c695e8f1c2303a3b2f', '76737c29c36a4d449b50a58137504355', '提交', '2', 'mg/org/register/app.do', 'fa-check', 'app', null, null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('8fb8b57f988a49c39e7398f7e4a88f31', '479852e16c834956b8b6c3b801ffd11c', '新增', '2', 'org/dept/save.do', 'fa-plus', 'add', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('a15ae14869f04822849571fb6ada622b', '0', '人事管理', '1', '', '', '', '1', '', null, null, '3');
INSERT INTO `sys_auth` VALUES ('a406460ce4ef4fa1a7743c724613feda', '67340c3f1b634546950bdb255e5982ac', '修改', '2', 'user/save.do', 'fa-edit', 'mod', '1', null, null, null, null);
INSERT INTO `sys_auth` VALUES ('a4ca0b3ac0a54e23a3e295380c4e1c79', '76737c29c36a4d449b50a58137504355', '查看', '2', 'mg/org/register/save.do', 'fa-edit', 'mod', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('aaf82f26159f426581e59355c7b610b1', '39b352a998a3499183295152e7e7e541', '删除', '2', 'org/remove.do', 'fa-remove', 'remove', null, null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('ad9d8b44b586456180a751fb87db8db2', '2', '保存', '2', 'auth/define/save.do', 'fa-mod', 'mod', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('b8e10a35c90e4b5596a5eed52397373d', '67340c3f1b634546950bdb255e5982ac', '新增', '2', 'user/save.do', 'fa-plus', 'add', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('ba7aa68555d5474ca6a6e3a12ccd1afe', 'c3524525c489444aac421df515c63873', '产品信息', '1', '/admin/im/book-in', '', '', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('bbf82dfc30d54277a32d50189ce66030', '479852e16c834956b8b6c3b801ffd11c', '新增职务', '2', 'org/dept/role/save.do', 'fa-plus', 'addRole', '1', null, null, null, '4');
INSERT INTO `sys_auth` VALUES ('c3524525c489444aac421df515c63873', '0', '库存管理', '1', '', '', '', '1', null, null, null, '6');
INSERT INTO `sys_auth` VALUES ('c9228a9899dc4f98b576a1f0e049e175', '39b352a998a3499183295152e7e7e541', '新增', '2', 'org/save.do', 'fa-plus', 'add', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('ce09b46ede8946f0bc5003c19987b363', '0575c843bad7482ba7eb9ecd6269d1f5', '否决', '2', 'im/product/change/reject.do', 'fa-remove', 'reject', '1', null, null, null, '5');
INSERT INTO `sys_auth` VALUES ('d03715b26c894a59a99fc64351b2013a', '479852e16c834956b8b6c3b801ffd11c', '权限配置', '2', 'org/dept/role/save.do', 'fa-edit', 'modRole', '1', null, null, null, '5');
INSERT INTO `sys_auth` VALUES ('d3ecb27d914d427d95d4d8194b00d4ad', 'e666e48e9d8b44a0a34ff136bcf2ad14', '模组授权', '1', '/admin/mg/org/auth', '', '', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('d7ac735162954c9382936183dd2eb465', '6374c1e4f3ac40da80b8f86b42d855a2', '查看', '2', 'crm/cus/save.do', 'fa-edit', 'mod', '1', null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('d7ea92ab47cb41b98cde8c0f31a1b004', 'd3ecb27d914d427d95d4d8194b00d4ad', '提交', '2', 'mg/org/authBill/app.do', 'fa-check', 'app', null, null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('da8bf91990b44726bfa4ea7a05a4499f', 'ba7aa68555d5474ca6a6e3a12ccd1afe', '查看', '2', 'im/product/book-in/save.do', 'fa-edit', 'mod', '1', null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('dc920fce1934448fad21bc5f15cc2e37', 'd3ecb27d914d427d95d4d8194b00d4ad', '查看', '2', 'mg/org/authBill/save.do', 'fa-edit', 'mod', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('e50a1c4f4fcd48a89d2428933741426a', '76737c29c36a4d449b50a58137504355', '审核', '2', 'mg/org/register/auth.do', 'fa-check', 'auth', null, null, null, null, '4');
INSERT INTO `sys_auth` VALUES ('e666e48e9d8b44a0a34ff136bcf2ad14', '0', '机构授权', '1', '', '', '', null, null, null, null, '4');
INSERT INTO `sys_auth` VALUES ('e9d19c4e1a6342e88a74f669a5da8328', 'd3ecb27d914d427d95d4d8194b00d4ad', '新增', '2', 'mg/org/authBill/save.do', 'fa-plus', 'add', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('f1bc8030d1484e6bb212e5d45a9ce450', '7118e0b350e14f7aa9715831e9cf16d3', '新增', '2', 'crm/sup/save.do', 'fa-plus', 'add', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('f70012acb9f940bbb583fcd63e9af5ab', '0', '系统管理', '1', '', '', '', '1', null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('f7adb4149aa0406d891fec5be6e151e3', '479852e16c834956b8b6c3b801ffd11c', '删除职务', '2', 'org/dept/role/remove.do', 'fa-remove', 'removeRole', '1', null, null, null, '6');
INSERT INTO `sys_auth` VALUES ('fafa0ee12ddf4e6598e816935c6ee168', '76737c29c36a4d449b50a58137504355', '新增', '2', 'mg/org/register/save.do', 'fa-plus', 'add', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('fec3e2fc717541c2ab24f05e37aacae3', '6374c1e4f3ac40da80b8f86b42d855a2', '新增', '2', 'crm/cus/save.do', 'fa-plus', 'add', '1', null, null, null, '1');

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
INSERT INTO `sys_dept` VALUES ('a0a90d21cf3145769e4ac34f8044a17c', 'XX', 'e2ff5e22cfe94054932ffca05e145934', 'e2ff5e22cfe94054932ffca05e145934');

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
INSERT INTO `sys_dic` VALUES ('-306', '此标示已经存在', '-306', 'msg');
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
  `address` varchar(200) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sys_org_flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_org
-- ----------------------------
INSERT INTO `sys_org` VALUES ('ddb5dbae8f7241a59d78a109baaf4f6c', 'fsd', 'fds', 'fds', 'fsdfds', 'fds', '2');
INSERT INTO `sys_org` VALUES ('e2ff5e22cfe94054932ffca05e145934', '开发公司', 'dev', null, null, null, null);
INSERT INTO `sys_org` VALUES ('f92ac73813eb4545bc29bde7e5f86e41', 'b', 'b', null, null, null, null);

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
INSERT INTO `sys_org_auth` VALUES ('39497e0c-fda7-11e6-a606-00163e028d22', 'f92ac73813eb4545bc29bde7e5f86e41', '1096978102094137b78bebc1de645e65');
INSERT INTO `sys_org_auth` VALUES ('394b4c1d-fda7-11e6-a606-00163e028d22', 'f92ac73813eb4545bc29bde7e5f86e41', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_org_auth` VALUES ('394bd49d-fda7-11e6-a606-00163e028d22', 'f92ac73813eb4545bc29bde7e5f86e41', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_org_auth` VALUES ('394c6f90-fda7-11e6-a606-00163e028d22', 'f92ac73813eb4545bc29bde7e5f86e41', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_org_auth` VALUES ('394e0010-fda7-11e6-a606-00163e028d22', 'f92ac73813eb4545bc29bde7e5f86e41', '67340c3f1b634546950bdb255e5982ac');
INSERT INTO `sys_org_auth` VALUES ('394f34fa-fda7-11e6-a606-00163e028d22', 'f92ac73813eb4545bc29bde7e5f86e41', '6f55a605da78479db8d53489b02b56f8');
INSERT INTO `sys_org_auth` VALUES ('394fcf0e-fda7-11e6-a606-00163e028d22', 'f92ac73813eb4545bc29bde7e5f86e41', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `sys_org_auth` VALUES ('39507d98-fda7-11e6-a606-00163e028d22', 'f92ac73813eb4545bc29bde7e5f86e41', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_org_auth` VALUES ('3950ce47-fda7-11e6-a606-00163e028d22', 'f92ac73813eb4545bc29bde7e5f86e41', 'a15ae14869f04822849571fb6ada622b');
INSERT INTO `sys_org_auth` VALUES ('39513501-fda7-11e6-a606-00163e028d22', 'f92ac73813eb4545bc29bde7e5f86e41', 'a406460ce4ef4fa1a7743c724613feda');
INSERT INTO `sys_org_auth` VALUES ('3952ded8-fda7-11e6-a606-00163e028d22', 'f92ac73813eb4545bc29bde7e5f86e41', 'b8e10a35c90e4b5596a5eed52397373d');
INSERT INTO `sys_org_auth` VALUES ('3953157a-fda7-11e6-a606-00163e028d22', 'f92ac73813eb4545bc29bde7e5f86e41', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_org_auth` VALUES ('3953b6e8-fda7-11e6-a606-00163e028d22', 'f92ac73813eb4545bc29bde7e5f86e41', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_org_auth` VALUES ('39565347-fda7-11e6-a606-00163e028d22', 'f92ac73813eb4545bc29bde7e5f86e41', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_org_auth` VALUES ('39568a7e-fda7-11e6-a606-00163e028d22', 'f92ac73813eb4545bc29bde7e5f86e41', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_org_auth` VALUES ('71d144c3-fe54-11e6-a606-00163e028d22', 'ddb5dbae8f7241a59d78a109baaf4f6c', '1096978102094137b78bebc1de645e65');
INSERT INTO `sys_org_auth` VALUES ('71d34ed8-fe54-11e6-a606-00163e028d22', 'ddb5dbae8f7241a59d78a109baaf4f6c', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_org_auth` VALUES ('71d3c174-fe54-11e6-a606-00163e028d22', 'ddb5dbae8f7241a59d78a109baaf4f6c', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_org_auth` VALUES ('71d44295-fe54-11e6-a606-00163e028d22', 'ddb5dbae8f7241a59d78a109baaf4f6c', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_org_auth` VALUES ('71d5f91e-fe54-11e6-a606-00163e028d22', 'ddb5dbae8f7241a59d78a109baaf4f6c', '672bf70518114cbfa03e809489f3ec43');
INSERT INTO `sys_org_auth` VALUES ('71d64d0c-fe54-11e6-a606-00163e028d22', 'ddb5dbae8f7241a59d78a109baaf4f6c', '67340c3f1b634546950bdb255e5982ac');
INSERT INTO `sys_org_auth` VALUES ('71d7e0dc-fe54-11e6-a606-00163e028d22', 'ddb5dbae8f7241a59d78a109baaf4f6c', '6f55a605da78479db8d53489b02b56f8');
INSERT INTO `sys_org_auth` VALUES ('71d93b53-fe54-11e6-a606-00163e028d22', 'ddb5dbae8f7241a59d78a109baaf4f6c', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `sys_org_auth` VALUES ('71d9c324-fe54-11e6-a606-00163e028d22', 'ddb5dbae8f7241a59d78a109baaf4f6c', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_org_auth` VALUES ('71da1c66-fe54-11e6-a606-00163e028d22', 'ddb5dbae8f7241a59d78a109baaf4f6c', 'a15ae14869f04822849571fb6ada622b');
INSERT INTO `sys_org_auth` VALUES ('71da98a1-fe54-11e6-a606-00163e028d22', 'ddb5dbae8f7241a59d78a109baaf4f6c', 'a406460ce4ef4fa1a7743c724613feda');
INSERT INTO `sys_org_auth` VALUES ('71dc950a-fe54-11e6-a606-00163e028d22', 'ddb5dbae8f7241a59d78a109baaf4f6c', 'b8e10a35c90e4b5596a5eed52397373d');
INSERT INTO `sys_org_auth` VALUES ('71dd20a4-fe54-11e6-a606-00163e028d22', 'ddb5dbae8f7241a59d78a109baaf4f6c', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_org_auth` VALUES ('71de11b4-fe54-11e6-a606-00163e028d22', 'ddb5dbae8f7241a59d78a109baaf4f6c', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_org_auth` VALUES ('71e14d3d-fe54-11e6-a606-00163e028d22', 'ddb5dbae8f7241a59d78a109baaf4f6c', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_org_auth` VALUES ('71e17617-fe54-11e6-a606-00163e028d22', 'ddb5dbae8f7241a59d78a109baaf4f6c', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_org_auth` VALUES ('db3b276d-fd98-11e6-a606-00163e028d22', '86b26d4b86ca409c9a726a2d9c0dec79', '1096978102094137b78bebc1de645e65');
INSERT INTO `sys_org_auth` VALUES ('db3b2ff8-fd98-11e6-a606-00163e028d22', '86b26d4b86ca409c9a726a2d9c0dec79', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_org_auth` VALUES ('db3b311a-fd98-11e6-a606-00163e028d22', '86b26d4b86ca409c9a726a2d9c0dec79', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_org_auth` VALUES ('db3b31b3-fd98-11e6-a606-00163e028d22', '86b26d4b86ca409c9a726a2d9c0dec79', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_org_auth` VALUES ('db3b3388-fd98-11e6-a606-00163e028d22', '86b26d4b86ca409c9a726a2d9c0dec79', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `sys_org_auth` VALUES ('db3b343c-fd98-11e6-a606-00163e028d22', '86b26d4b86ca409c9a726a2d9c0dec79', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_org_auth` VALUES ('db3b34c6-fd98-11e6-a606-00163e028d22', '86b26d4b86ca409c9a726a2d9c0dec79', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_org_auth` VALUES ('db3b354f-fd98-11e6-a606-00163e028d22', '86b26d4b86ca409c9a726a2d9c0dec79', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_org_auth` VALUES ('db3b35cc-fd98-11e6-a606-00163e028d22', '86b26d4b86ca409c9a726a2d9c0dec79', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_org_auth` VALUES ('db3b3646-fd98-11e6-a606-00163e028d22', '86b26d4b86ca409c9a726a2d9c0dec79', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_org_auth` VALUES ('ec016297-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '02a18777e6774e5482488297fcf26653');
INSERT INTO `sys_org_auth` VALUES ('ec01664d-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '0575c843bad7482ba7eb9ecd6269d1f5');
INSERT INTO `sys_org_auth` VALUES ('ec01688f-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '0694283e392b42a2869cdf8093cbeb90');
INSERT INTO `sys_org_auth` VALUES ('ec01694f-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '1');
INSERT INTO `sys_org_auth` VALUES ('ec016a75-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '1096978102094137b78bebc1de645e65');
INSERT INTO `sys_org_auth` VALUES ('ec016c20-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '13439fc34d4b41c2b3f84a6770073692');
INSERT INTO `sys_org_auth` VALUES ('ec016f02-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '2');
INSERT INTO `sys_org_auth` VALUES ('ec0170c5-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '258ecf13eecc49f18bea208dd6b9f00c');
INSERT INTO `sys_org_auth` VALUES ('ec017233-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '28d0694acd354be7ad1264cad548ce2e');
INSERT INTO `sys_org_auth` VALUES ('ec0172f2-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '39b352a998a3499183295152e7e7e541');
INSERT INTO `sys_org_auth` VALUES ('ec0173f8-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_org_auth` VALUES ('ec0174cc-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '3c856ca262be4c09afd1aa66f372039d');
INSERT INTO `sys_org_auth` VALUES ('ec0175b5-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_org_auth` VALUES ('ec017744-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '498089d953894079b07205488df94d9d');
INSERT INTO `sys_org_auth` VALUES ('ec01783e-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_org_auth` VALUES ('ec017997-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '4b8d8cd29a634d2ba2e44ba1e9b7cf47');
INSERT INTO `sys_org_auth` VALUES ('ec017b27-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '50c1cb37d53e4ea39da31b039b656364');
INSERT INTO `sys_org_auth` VALUES ('ec017ca2-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '58ab8612b36642c4a0fd96970a878180');
INSERT INTO `sys_org_auth` VALUES ('ec017e58-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '6374c1e4f3ac40da80b8f86b42d855a2');
INSERT INTO `sys_org_auth` VALUES ('ec01810c-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '664354eb5aea4a00853ddb18dc68ebbd');
INSERT INTO `sys_org_auth` VALUES ('ec018280-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '672bf70518114cbfa03e809489f3ec43');
INSERT INTO `sys_org_auth` VALUES ('ec01848e-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '67340c3f1b634546950bdb255e5982ac');
INSERT INTO `sys_org_auth` VALUES ('ec018586-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '67d5e55ab8cb4d5b93220645e6e85c99');
INSERT INTO `sys_org_auth` VALUES ('ec01875a-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '6cf1391a9e3c4ac5af95534de51d7bd6');
INSERT INTO `sys_org_auth` VALUES ('ec018817-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '6db97da52d0d494fa8cc81c59329b179');
INSERT INTO `sys_org_auth` VALUES ('ec01894b-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '6f55a605da78479db8d53489b02b56f8');
INSERT INTO `sys_org_auth` VALUES ('ec018b20-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '7030524f08a742649a9c5255199f797d');
INSERT INTO `sys_org_auth` VALUES ('ec018ccd-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '7118e0b350e14f7aa9715831e9cf16d3');
INSERT INTO `sys_org_auth` VALUES ('ec018e10-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '76737c29c36a4d449b50a58137504355');
INSERT INTO `sys_org_auth` VALUES ('ec019125-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '77885a6895b543059b135354d5f62fce');
INSERT INTO `sys_org_auth` VALUES ('ec019478-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '7d5f7d02ccc74bbf9ccd8fdef0c94a3a');
INSERT INTO `sys_org_auth` VALUES ('ec0196b4-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '7e9a289b3597483a84c08bbe71077558');
INSERT INTO `sys_org_auth` VALUES ('ec0197d3-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `sys_org_auth` VALUES ('ec01992b-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '8f8a71e10f5c46c695e8f1c2303a3b2f');
INSERT INTO `sys_org_auth` VALUES ('ec019a23-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_org_auth` VALUES ('ec019b42-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'a15ae14869f04822849571fb6ada622b');
INSERT INTO `sys_org_auth` VALUES ('ec019c71-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'a406460ce4ef4fa1a7743c724613feda');
INSERT INTO `sys_org_auth` VALUES ('ec019dc2-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'a4ca0b3ac0a54e23a3e295380c4e1c79');
INSERT INTO `sys_org_auth` VALUES ('ec019e9b-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'aaf82f26159f426581e59355c7b610b1');
INSERT INTO `sys_org_auth` VALUES ('ec019f52-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'ad9d8b44b586456180a751fb87db8db2');
INSERT INTO `sys_org_auth` VALUES ('ec01a080-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'b8e10a35c90e4b5596a5eed52397373d');
INSERT INTO `sys_org_auth` VALUES ('ec01a245-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'ba7aa68555d5474ca6a6e3a12ccd1afe');
INSERT INTO `sys_org_auth` VALUES ('ec01a34a-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_org_auth` VALUES ('ec01a78c-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'c3524525c489444aac421df515c63873');
INSERT INTO `sys_org_auth` VALUES ('ec01a885-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'c9228a9899dc4f98b576a1f0e049e175');
INSERT INTO `sys_org_auth` VALUES ('ec01ab0c-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'ce09b46ede8946f0bc5003c19987b363');
INSERT INTO `sys_org_auth` VALUES ('ec01ac49-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_org_auth` VALUES ('ec01adc4-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'd3ecb27d914d427d95d4d8194b00d4ad');
INSERT INTO `sys_org_auth` VALUES ('ec01af71-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'd7ac735162954c9382936183dd2eb465');
INSERT INTO `sys_org_auth` VALUES ('ec01b0eb-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'd7ea92ab47cb41b98cde8c0f31a1b004');
INSERT INTO `sys_org_auth` VALUES ('ec01b2be-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'da8bf91990b44726bfa4ea7a05a4499f');
INSERT INTO `sys_org_auth` VALUES ('ec01b432-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'dc920fce1934448fad21bc5f15cc2e37');
INSERT INTO `sys_org_auth` VALUES ('ec01b58f-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'e50a1c4f4fcd48a89d2428933741426a');
INSERT INTO `sys_org_auth` VALUES ('ec01b6c5-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'e666e48e9d8b44a0a34ff136bcf2ad14');
INSERT INTO `sys_org_auth` VALUES ('ec01b82d-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'e9d19c4e1a6342e88a74f669a5da8328');
INSERT INTO `sys_org_auth` VALUES ('ec01b9e3-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'f1bc8030d1484e6bb212e5d45a9ce450');
INSERT INTO `sys_org_auth` VALUES ('ec01bac1-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_org_auth` VALUES ('ec01bbca-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_org_auth` VALUES ('ec01bd1b-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'fafa0ee12ddf4e6598e816935c6ee168');
INSERT INTO `sys_org_auth` VALUES ('ec01bec0-fe60-11e6-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'fec3e2fc717541c2ab24f05e37aacae3');

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
INSERT INTO `sys_role` VALUES ('71be76be-fe54-11e6-a606-00163e028d22', 'admin', 'ddb5dbae8f7241a59d78a109baaf4f6c');
INSERT INTO `sys_role` VALUES ('95dc04c7215c41b19a6fb739e51b2082', 'TETes', 'a0a90d21cf3145769e4ac34f8044a17c');
INSERT INTO `sys_role` VALUES ('986d3c51-fda6-11e6-a606-00163e028d22', 'admin', 'f92ac73813eb4545bc29bde7e5f86e41');
INSERT INTO `sys_role` VALUES ('a5af2cc9a5244fd3a50728b24b513451', 'admin', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `sys_role` VALUES ('c1834167f54a4e8bbcd60e5985d9b914', 'Test', 'f92ac73813eb4545bc29bde7e5f86e41');

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
INSERT INTO `sys_role_auth` VALUES ('71bf731b-fe54-11e6-a606-00163e028d22', '71be76be-fe54-11e6-a606-00163e028d22', '1096978102094137b78bebc1de645e65');
INSERT INTO `sys_role_auth` VALUES ('71c188d6-fe54-11e6-a606-00163e028d22', '71be76be-fe54-11e6-a606-00163e028d22', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_role_auth` VALUES ('71c1fde0-fe54-11e6-a606-00163e028d22', '71be76be-fe54-11e6-a606-00163e028d22', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_role_auth` VALUES ('71c28277-fe54-11e6-a606-00163e028d22', '71be76be-fe54-11e6-a606-00163e028d22', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_role_auth` VALUES ('71c461f3-fe54-11e6-a606-00163e028d22', '71be76be-fe54-11e6-a606-00163e028d22', '672bf70518114cbfa03e809489f3ec43');
INSERT INTO `sys_role_auth` VALUES ('71c4b5a1-fe54-11e6-a606-00163e028d22', '71be76be-fe54-11e6-a606-00163e028d22', '67340c3f1b634546950bdb255e5982ac');
INSERT INTO `sys_role_auth` VALUES ('71c64dc2-fe54-11e6-a606-00163e028d22', '71be76be-fe54-11e6-a606-00163e028d22', '6f55a605da78479db8d53489b02b56f8');
INSERT INTO `sys_role_auth` VALUES ('71c7b138-fe54-11e6-a606-00163e028d22', '71be76be-fe54-11e6-a606-00163e028d22', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `sys_role_auth` VALUES ('71c841a6-fe54-11e6-a606-00163e028d22', '71be76be-fe54-11e6-a606-00163e028d22', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_role_auth` VALUES ('71c89a87-fe54-11e6-a606-00163e028d22', '71be76be-fe54-11e6-a606-00163e028d22', 'a15ae14869f04822849571fb6ada622b');
INSERT INTO `sys_role_auth` VALUES ('71c8f997-fe54-11e6-a606-00163e028d22', '71be76be-fe54-11e6-a606-00163e028d22', 'a406460ce4ef4fa1a7743c724613feda');
INSERT INTO `sys_role_auth` VALUES ('71ca7b80-fe54-11e6-a606-00163e028d22', '71be76be-fe54-11e6-a606-00163e028d22', 'b8e10a35c90e4b5596a5eed52397373d');
INSERT INTO `sys_role_auth` VALUES ('71cb0728-fe54-11e6-a606-00163e028d22', '71be76be-fe54-11e6-a606-00163e028d22', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_role_auth` VALUES ('71cc0e2f-fe54-11e6-a606-00163e028d22', '71be76be-fe54-11e6-a606-00163e028d22', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_role_auth` VALUES ('71cf246a-fe54-11e6-a606-00163e028d22', '71be76be-fe54-11e6-a606-00163e028d22', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_role_auth` VALUES ('71cf4d9e-fe54-11e6-a606-00163e028d22', '71be76be-fe54-11e6-a606-00163e028d22', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_role_auth` VALUES ('9502f758-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '02a18777e6774e5482488297fcf26653');
INSERT INTO `sys_role_auth` VALUES ('9502fa9d-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '0575c843bad7482ba7eb9ecd6269d1f5');
INSERT INTO `sys_role_auth` VALUES ('9503031d-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '0694283e392b42a2869cdf8093cbeb90');
INSERT INTO `sys_role_auth` VALUES ('9503042b-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '1');
INSERT INTO `sys_role_auth` VALUES ('95030561-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '1096978102094137b78bebc1de645e65');
INSERT INTO `sys_role_auth` VALUES ('95030719-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '13439fc34d4b41c2b3f84a6770073692');
INSERT INTO `sys_role_auth` VALUES ('950307e1-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '2');
INSERT INTO `sys_role_auth` VALUES ('95030975-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '258ecf13eecc49f18bea208dd6b9f00c');
INSERT INTO `sys_role_auth` VALUES ('95030ae6-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '28d0694acd354be7ad1264cad548ce2e');
INSERT INTO `sys_role_auth` VALUES ('95030c6a-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '39b352a998a3499183295152e7e7e541');
INSERT INTO `sys_role_auth` VALUES ('95030da4-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_role_auth` VALUES ('95030e89-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '3c856ca262be4c09afd1aa66f372039d');
INSERT INTO `sys_role_auth` VALUES ('95030f7e-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_role_auth` VALUES ('95031112-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '498089d953894079b07205488df94d9d');
INSERT INTO `sys_role_auth` VALUES ('95031216-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_role_auth` VALUES ('95031381-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '4b8d8cd29a634d2ba2e44ba1e9b7cf47');
INSERT INTO `sys_role_auth` VALUES ('95031520-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '50c1cb37d53e4ea39da31b039b656364');
INSERT INTO `sys_role_auth` VALUES ('950316a4-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '58ab8612b36642c4a0fd96970a878180');
INSERT INTO `sys_role_auth` VALUES ('9503184c-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '6374c1e4f3ac40da80b8f86b42d855a2');
INSERT INTO `sys_role_auth` VALUES ('95031bad-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '664354eb5aea4a00853ddb18dc68ebbd');
INSERT INTO `sys_role_auth` VALUES ('95031cc8-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '672bf70518114cbfa03e809489f3ec43');
INSERT INTO `sys_role_auth` VALUES ('95031e0a-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '67340c3f1b634546950bdb255e5982ac');
INSERT INTO `sys_role_auth` VALUES ('95031f08-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '67d5e55ab8cb4d5b93220645e6e85c99');
INSERT INTO `sys_role_auth` VALUES ('950320fd-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '6cf1391a9e3c4ac5af95534de51d7bd6');
INSERT INTO `sys_role_auth` VALUES ('950321c0-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '6db97da52d0d494fa8cc81c59329b179');
INSERT INTO `sys_role_auth` VALUES ('95032302-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '6f55a605da78479db8d53489b02b56f8');
INSERT INTO `sys_role_auth` VALUES ('950324e2-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '7030524f08a742649a9c5255199f797d');
INSERT INTO `sys_role_auth` VALUES ('95032697-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '7118e0b350e14f7aa9715831e9cf16d3');
INSERT INTO `sys_role_auth` VALUES ('950327e1-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '76737c29c36a4d449b50a58137504355');
INSERT INTO `sys_role_auth` VALUES ('95032a56-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '77885a6895b543059b135354d5f62fce');
INSERT INTO `sys_role_auth` VALUES ('95032d29-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '7d5f7d02ccc74bbf9ccd8fdef0c94a3a');
INSERT INTO `sys_role_auth` VALUES ('95032fc2-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '7e9a289b3597483a84c08bbe71077558');
INSERT INTO `sys_role_auth` VALUES ('9503313a-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `sys_role_auth` VALUES ('95033582-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '8f8a71e10f5c46c695e8f1c2303a3b2f');
INSERT INTO `sys_role_auth` VALUES ('95033745-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_role_auth` VALUES ('9503392e-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'a15ae14869f04822849571fb6ada622b');
INSERT INTO `sys_role_auth` VALUES ('95033aae-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'a406460ce4ef4fa1a7743c724613feda');
INSERT INTO `sys_role_auth` VALUES ('95033caa-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'a4ca0b3ac0a54e23a3e295380c4e1c79');
INSERT INTO `sys_role_auth` VALUES ('95033e42-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'aaf82f26159f426581e59355c7b610b1');
INSERT INTO `sys_role_auth` VALUES ('95033fd4-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'ad9d8b44b586456180a751fb87db8db2');
INSERT INTO `sys_role_auth` VALUES ('95034176-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'b8e10a35c90e4b5596a5eed52397373d');
INSERT INTO `sys_role_auth` VALUES ('9503434f-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'ba7aa68555d5474ca6a6e3a12ccd1afe');
INSERT INTO `sys_role_auth` VALUES ('950344f3-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_role_auth` VALUES ('95034719-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'c3524525c489444aac421df515c63873');
INSERT INTO `sys_role_auth` VALUES ('95034811-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'c9228a9899dc4f98b576a1f0e049e175');
INSERT INTO `sys_role_auth` VALUES ('95034b42-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'ce09b46ede8946f0bc5003c19987b363');
INSERT INTO `sys_role_auth` VALUES ('95034d2d-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_role_auth` VALUES ('95034f46-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'd3ecb27d914d427d95d4d8194b00d4ad');
INSERT INTO `sys_role_auth` VALUES ('95035201-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'd7ac735162954c9382936183dd2eb465');
INSERT INTO `sys_role_auth` VALUES ('950353f3-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'd7ea92ab47cb41b98cde8c0f31a1b004');
INSERT INTO `sys_role_auth` VALUES ('950356ab-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'da8bf91990b44726bfa4ea7a05a4499f');
INSERT INTO `sys_role_auth` VALUES ('950358bd-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'dc920fce1934448fad21bc5f15cc2e37');
INSERT INTO `sys_role_auth` VALUES ('95035b49-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'e50a1c4f4fcd48a89d2428933741426a');
INSERT INTO `sys_role_auth` VALUES ('95035cf8-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'e666e48e9d8b44a0a34ff136bcf2ad14');
INSERT INTO `sys_role_auth` VALUES ('95035f8f-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'e9d19c4e1a6342e88a74f669a5da8328');
INSERT INTO `sys_role_auth` VALUES ('950361c1-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'f1bc8030d1484e6bb212e5d45a9ce450');
INSERT INTO `sys_role_auth` VALUES ('950362ba-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_role_auth` VALUES ('95036408-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_role_auth` VALUES ('95036615-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'fafa0ee12ddf4e6598e816935c6ee168');
INSERT INTO `sys_role_auth` VALUES ('9503681f-fe61-11e6-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'fec3e2fc717541c2ab24f05e37aacae3');
INSERT INTO `sys_role_auth` VALUES ('986e6754-fda6-11e6-a606-00163e028d22', '986d3c51-fda6-11e6-a606-00163e028d22', '1096978102094137b78bebc1de645e65');
INSERT INTO `sys_role_auth` VALUES ('986fe5ce-fda6-11e6-a606-00163e028d22', '986d3c51-fda6-11e6-a606-00163e028d22', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_role_auth` VALUES ('98703788-fda6-11e6-a606-00163e028d22', '986d3c51-fda6-11e6-a606-00163e028d22', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_role_auth` VALUES ('9870a07f-fda6-11e6-a606-00163e028d22', '986d3c51-fda6-11e6-a606-00163e028d22', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_role_auth` VALUES ('987198bc-fda6-11e6-a606-00163e028d22', '986d3c51-fda6-11e6-a606-00163e028d22', '67340c3f1b634546950bdb255e5982ac');
INSERT INTO `sys_role_auth` VALUES ('98725f78-fda6-11e6-a606-00163e028d22', '986d3c51-fda6-11e6-a606-00163e028d22', '6f55a605da78479db8d53489b02b56f8');
INSERT INTO `sys_role_auth` VALUES ('9872d903-fda6-11e6-a606-00163e028d22', '986d3c51-fda6-11e6-a606-00163e028d22', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `sys_role_auth` VALUES ('9873440a-fda6-11e6-a606-00163e028d22', '986d3c51-fda6-11e6-a606-00163e028d22', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_role_auth` VALUES ('9873769f-fda6-11e6-a606-00163e028d22', '986d3c51-fda6-11e6-a606-00163e028d22', 'a15ae14869f04822849571fb6ada622b');
INSERT INTO `sys_role_auth` VALUES ('9873c5cb-fda6-11e6-a606-00163e028d22', '986d3c51-fda6-11e6-a606-00163e028d22', 'a406460ce4ef4fa1a7743c724613feda');
INSERT INTO `sys_role_auth` VALUES ('9874cb02-fda6-11e6-a606-00163e028d22', '986d3c51-fda6-11e6-a606-00163e028d22', 'b8e10a35c90e4b5596a5eed52397373d');
INSERT INTO `sys_role_auth` VALUES ('9874ede1-fda6-11e6-a606-00163e028d22', '986d3c51-fda6-11e6-a606-00163e028d22', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_role_auth` VALUES ('98756998-fda6-11e6-a606-00163e028d22', '986d3c51-fda6-11e6-a606-00163e028d22', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_role_auth` VALUES ('987713a7-fda6-11e6-a606-00163e028d22', '986d3c51-fda6-11e6-a606-00163e028d22', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_role_auth` VALUES ('98773e5d-fda6-11e6-a606-00163e028d22', '986d3c51-fda6-11e6-a606-00163e028d22', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_role_auth` VALUES ('ba574138-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '1096978102094137b78bebc1de645e65');
INSERT INTO `sys_role_auth` VALUES ('ba57472d-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '258ecf13eecc49f18bea208dd6b9f00c');
INSERT INTO `sys_role_auth` VALUES ('ba5749a7-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '28d0694acd354be7ad1264cad548ce2e');
INSERT INTO `sys_role_auth` VALUES ('ba574cab-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_role_auth` VALUES ('ba574f8e-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_role_auth` VALUES ('ba5751f4-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '498089d953894079b07205488df94d9d');
INSERT INTO `sys_role_auth` VALUES ('ba575351-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_role_auth` VALUES ('ba5755d8-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '4b8d8cd29a634d2ba2e44ba1e9b7cf47');
INSERT INTO `sys_role_auth` VALUES ('ba57583f-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '50c1cb37d53e4ea39da31b039b656364');
INSERT INTO `sys_role_auth` VALUES ('ba575aab-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '58ab8612b36642c4a0fd96970a878180');
INSERT INTO `sys_role_auth` VALUES ('ba575c97-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '67340c3f1b634546950bdb255e5982ac');
INSERT INTO `sys_role_auth` VALUES ('ba5760c2-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '6f55a605da78479db8d53489b02b56f8');
INSERT INTO `sys_role_auth` VALUES ('ba5763b3-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `sys_role_auth` VALUES ('ba5765b0-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '8f8a71e10f5c46c695e8f1c2303a3b2f');
INSERT INTO `sys_role_auth` VALUES ('ba576739-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_role_auth` VALUES ('ba5768ee-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'a15ae14869f04822849571fb6ada622b');
INSERT INTO `sys_role_auth` VALUES ('ba576aae-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'a406460ce4ef4fa1a7743c724613feda');
INSERT INTO `sys_role_auth` VALUES ('ba576c94-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'a4ca0b3ac0a54e23a3e295380c4e1c79');
INSERT INTO `sys_role_auth` VALUES ('ba5770b3-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'b8e10a35c90e4b5596a5eed52397373d');
INSERT INTO `sys_role_auth` VALUES ('ba577288-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_role_auth` VALUES ('ba577574-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_role_auth` VALUES ('ba5777af-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'd3ecb27d914d427d95d4d8194b00d4ad');
INSERT INTO `sys_role_auth` VALUES ('ba5779e9-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'd7ea92ab47cb41b98cde8c0f31a1b004');
INSERT INTO `sys_role_auth` VALUES ('ba577f52-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'dc920fce1934448fad21bc5f15cc2e37');
INSERT INTO `sys_role_auth` VALUES ('ba57819c-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'e50a1c4f4fcd48a89d2428933741426a');
INSERT INTO `sys_role_auth` VALUES ('ba578520-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'e9d19c4e1a6342e88a74f669a5da8328');
INSERT INTO `sys_role_auth` VALUES ('ba5786c2-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_role_auth` VALUES ('ba57886b-fda1-11e6-a606-00163e028d22', '2c5e728bf9c345ba848fa71d3446cd8d', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_role_auth` VALUES ('c156c62b-fe1c-11e6-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', '1096978102094137b78bebc1de645e65');
INSERT INTO `sys_role_auth` VALUES ('c156c969-fe1c-11e6-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_role_auth` VALUES ('c156caa1-fe1c-11e6-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_role_auth` VALUES ('c156d592-fe1c-11e6-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_role_auth` VALUES ('c156d94e-fe1c-11e6-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `sys_role_auth` VALUES ('c156da73-fe1c-11e6-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_role_auth` VALUES ('c156dd05-fe1c-11e6-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_role_auth` VALUES ('c156de25-fe1c-11e6-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_role_auth` VALUES ('c156e0d3-fe1c-11e6-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_role_auth` VALUES ('c156e1ad-fe1c-11e6-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_role_auth` VALUES ('d1663255-fda8-11e6-a606-00163e028d22', 'c1834167f54a4e8bbcd60e5985d9b914', 'b8e10a35c90e4b5596a5eed52397373d');

-- ----------------------------
-- Table structure for `sys_time_list`
-- ----------------------------
DROP TABLE IF EXISTS `sys_time_list`;
CREATE TABLE `sys_time_list` (
  `bill_id` varchar(36) NOT NULL,
  `create_user` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_user` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_time_list
-- ----------------------------
INSERT INTO `sys_time_list` VALUES ('0575c843bad7482ba7eb9ecd6269d1f5', '', '2017-03-01 17:15:13', '', '2017-03-01 17:27:01');
INSERT INTO `sys_time_list` VALUES ('0694283e392b42a2869cdf8093cbeb90', '', '2017-03-01 17:24:34', '', '2017-03-02 11:25:28');
INSERT INTO `sys_time_list` VALUES ('13439fc34d4b41c2b3f84a6770073692', '', '2017-03-01 10:04:35', '', '2017-03-01 10:13:48');
INSERT INTO `sys_time_list` VALUES ('1b87309787a64678a95b7183e41cf272', '', '2017-02-28 18:17:59', null, null);
INSERT INTO `sys_time_list` VALUES ('22238223a787413aaf4250d04f7c796b', 'admin', '2017-03-02 14:58:35', null, null);
INSERT INTO `sys_time_list` VALUES ('258ecf13eecc49f18bea208dd6b9f00c', '', '2017-02-28 12:38:47', null, null);
INSERT INTO `sys_time_list` VALUES ('2a69c62de73c454787d5a343cf2ad5f5', 'admin', '2017-03-01 11:28:06', 'admin', '2017-03-01 11:28:12');
INSERT INTO `sys_time_list` VALUES ('2de4d1b1b33f48bcbe120b459c8744f3', 'admin', '2017-03-02 14:53:53', 'admin', '2017-03-02 14:54:02');
INSERT INTO `sys_time_list` VALUES ('370d0ac76a79492eb9abac0e35e7537f', 'admin', '2017-03-02 15:46:45', null, null);
INSERT INTO `sys_time_list` VALUES ('38b18de2453041c4ad46b86b18cd642a', 'admin', '2017-02-28 15:06:44', 'admin', '2017-02-28 16:27:22');
INSERT INTO `sys_time_list` VALUES ('3910908ed766422c97b94dd9139e6460', 'admin', '2017-02-28 15:11:37', 'admin', '2017-02-28 15:53:33');
INSERT INTO `sys_time_list` VALUES ('405997fb523a4a79b9dc83e919164e44', 'admin', '2017-03-01 16:58:57', null, null);
INSERT INTO `sys_time_list` VALUES ('40d4a7209bba4276a30266eb9db11ad0', '', '2017-02-28 19:12:40', null, null);
INSERT INTO `sys_time_list` VALUES ('498089d953894079b07205488df94d9d', '', '2017-02-28 12:39:09', null, null);
INSERT INTO `sys_time_list` VALUES ('4d902e707a3d458fba4b3b66d040829f', 'admin', '2017-02-28 11:27:35', 'admin', '2017-02-28 11:33:21');
INSERT INTO `sys_time_list` VALUES ('57a74c3d10bc47e58ff24c986ef77f69', '', '2017-02-28 19:26:48', null, null);
INSERT INTO `sys_time_list` VALUES ('58a7a53ae4c84b20b320bbafbdd56f19', 'admin', '2017-02-28 17:31:21', 'admin', '2017-02-28 17:31:29');
INSERT INTO `sys_time_list` VALUES ('58ab8612b36642c4a0fd96970a878180', '', '2017-02-28 12:38:19', null, null);
INSERT INTO `sys_time_list` VALUES ('617d42f9c2244e21a906baaddee38b69', '', '2017-03-01 10:04:52', '', '2017-03-01 10:13:52');
INSERT INTO `sys_time_list` VALUES ('6374c1e4f3ac40da80b8f86b42d855a2', '', '2017-03-01 10:13:23', '', '2017-03-01 10:25:37');
INSERT INTO `sys_time_list` VALUES ('664354eb5aea4a00853ddb18dc68ebbd', '', '2017-03-01 17:23:13', '', '2017-03-02 11:24:35');
INSERT INTO `sys_time_list` VALUES ('672bf70518114cbfa03e809489f3ec43', '', '2017-03-01 09:19:55', '', '2017-03-01 09:43:46');
INSERT INTO `sys_time_list` VALUES ('6c9f1c066a6c49aaa2c4cec375436a29', 'admin', '2017-03-02 15:40:13', 'admin', '2017-03-02 19:09:10');
INSERT INTO `sys_time_list` VALUES ('6cf1391a9e3c4ac5af95534de51d7bd6', '', '2017-03-01 15:42:39', '', '2017-03-01 16:32:31');
INSERT INTO `sys_time_list` VALUES ('7030524f08a742649a9c5255199f797d', '', '2017-03-01 17:22:51', '', '2017-03-02 11:24:32');
INSERT INTO `sys_time_list` VALUES ('7118e0b350e14f7aa9715831e9cf16d3', '', '2017-03-01 15:09:21', '', '2017-03-01 15:10:55');
INSERT INTO `sys_time_list` VALUES ('77885a6895b543059b135354d5f62fce', '', '2017-03-01 17:23:54', '', '2017-03-02 11:25:16');
INSERT INTO `sys_time_list` VALUES ('7a3422890ab547e78de73c4c375b3018', 'admin', '2017-03-01 15:55:10', 'admin', '2017-03-01 15:55:33');
INSERT INTO `sys_time_list` VALUES ('7d5f7d02ccc74bbf9ccd8fdef0c94a3a', '', '2017-03-01 17:23:29', '', '2017-03-02 11:25:09');
INSERT INTO `sys_time_list` VALUES ('7e9a289b3597483a84c08bbe71077558', '', '2017-03-01 15:10:04', '', '2017-03-01 15:11:11');
INSERT INTO `sys_time_list` VALUES ('7ec302194e7244839df7e95f39eae685', 'admin', '2017-03-01 17:11:39', 'admin', '2017-03-01 17:12:59');
INSERT INTO `sys_time_list` VALUES ('85433893d097453dbac55f45da3ebc94', 'admin', '2017-02-28 17:32:38', 'admin', '2017-02-28 17:32:44');
INSERT INTO `sys_time_list` VALUES ('95dc04c7215c41b19a6fb739e51b2082', '', '2017-03-01 09:16:55', null, null);
INSERT INTO `sys_time_list` VALUES ('a0a90d21cf3145769e4ac34f8044a17c', '', '2017-03-01 09:16:47', null, null);
INSERT INTO `sys_time_list` VALUES ('a187c76fcf7c4dda868773c4ce32c3be', 'admin', '2017-03-01 15:29:29', 'admin', '2017-03-01 16:52:50');
INSERT INTO `sys_time_list` VALUES ('a5be8f77954d41c5a347b2461946006a', 'admin', '2017-03-02 15:46:41', null, null);
INSERT INTO `sys_time_list` VALUES ('a64f306d77d8486d87f237aca19a99a0', 'admin', '2017-02-28 15:04:55', 'admin', '2017-02-28 16:25:38');
INSERT INTO `sys_time_list` VALUES ('b4e48ed392374296a47783503187149e', 'admin', '2017-03-02 15:42:36', 'admin', '2017-03-02 19:05:13');
INSERT INTO `sys_time_list` VALUES ('ba7aa68555d5474ca6a6e3a12ccd1afe', '', '2017-03-01 15:41:16', '', '2017-03-01 17:30:36');
INSERT INTO `sys_time_list` VALUES ('c1834167f54a4e8bbcd60e5985d9b914', '', '2017-02-28 19:26:59', null, null);
INSERT INTO `sys_time_list` VALUES ('c3524525c489444aac421df515c63873', '', '2017-03-01 15:39:58', null, null);
INSERT INTO `sys_time_list` VALUES ('c4dae5fe1acc46e8945c1f415258fddd', '', '2017-03-01 10:13:43', null, null);
INSERT INTO `sys_time_list` VALUES ('cc72d0bd1ac84cdabecdb1804c2ca07a', 'admin', '2017-02-28 17:32:01', 'admin', '2017-02-28 17:32:07');
INSERT INTO `sys_time_list` VALUES ('ce09b46ede8946f0bc5003c19987b363', '', '2017-03-01 17:24:15', '', '2017-03-02 11:25:22');
INSERT INTO `sys_time_list` VALUES ('ce59966a60a049ea8ac3fe3c96d5726f', 'admin', '2017-03-01 11:35:46', 'admin', '2017-03-01 15:38:58');
INSERT INTO `sys_time_list` VALUES ('d7ac735162954c9382936183dd2eb465', '', '2017-03-01 10:15:00', '', '2017-03-01 15:08:30');
INSERT INTO `sys_time_list` VALUES ('d7ea92ab47cb41b98cde8c0f31a1b004', '', '2017-02-28 12:37:53', null, null);
INSERT INTO `sys_time_list` VALUES ('da7fc8cdc660492ea972f65f93689955', 'admin', '2017-02-28 16:56:31', 'admin', '2017-02-28 16:58:26');
INSERT INTO `sys_time_list` VALUES ('da8bf91990b44726bfa4ea7a05a4499f', '', '2017-03-01 15:56:55', '', '2017-03-01 16:32:37');
INSERT INTO `sys_time_list` VALUES ('e031579252e94ec5b6a23804aadd7eed', 'admin', '2017-02-28 16:31:55', 'admin', '2017-02-28 16:56:11');
INSERT INTO `sys_time_list` VALUES ('e1c01d9a97684a16891bcbc02ff43455', 'admin', '2017-03-02 11:33:38', 'admin', '2017-03-02 11:55:09');
INSERT INTO `sys_time_list` VALUES ('e876bdcfc6394ec8b4007e6585ed1832', 'admin', '2017-03-01 11:29:26', 'admin', '2017-03-01 15:39:01');
INSERT INTO `sys_time_list` VALUES ('ea13706be922472c9bcf779b9822a1f6', 'admin', '2017-02-28 19:10:56', 'admin', '2017-02-28 19:11:05');
INSERT INTO `sys_time_list` VALUES ('f1bc8030d1484e6bb212e5d45a9ce450', '', '2017-03-01 15:09:48', '', '2017-03-01 15:11:08');
INSERT INTO `sys_time_list` VALUES ('f4e033e2e6a341e586684cdd0b7d80eb', 'admin', '2017-03-01 11:27:57', null, null);
INSERT INTO `sys_time_list` VALUES ('f948c725636a4f3f9a4c7e3d39bc5d01', 'admin', '2017-03-02 15:37:03', 'admin', '2017-03-02 19:08:50');
INSERT INTO `sys_time_list` VALUES ('fec3e2fc717541c2ab24f05e37aacae3', '', '2017-03-01 10:14:31', '', '2017-03-01 11:27:42');

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
INSERT INTO `sys_user` VALUES ('1b87309787a64678a95b7183e41cf272', '123', 'e10adc3949ba59abbe56e057f20f883e', '123', '123', 'e2ff5e22cfe94054932ffca05e145934', null);
INSERT INTO `sys_user` VALUES ('57a74c3d10bc47e58ff24c986ef77f69', 'a', 'e10adc3949ba59abbe56e057f20f883e', 'a', '13', 'f92ac73813eb4545bc29bde7e5f86e41', null);
INSERT INTO `sys_user` VALUES ('71be76f7-fe54-11e6-a606-00163e028d22', 'admin', 'e10adc3949ba59abbe56e057f20f883e', null, null, 'ddb5dbae8f7241a59d78a109baaf4f6c', '1');
INSERT INTO `sys_user` VALUES ('986d3c89-fda6-11e6-a606-00163e028d22', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'aa', 'aa', 'f92ac73813eb4545bc29bde7e5f86e41', '1');
INSERT INTO `sys_user` VALUES ('admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 'admin', 'e2ff5e22cfe94054932ffca05e145934', null);

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
INSERT INTO `sys_user_role` VALUES ('343a2ec3-fd9f-11e6-a606-00163e028d22', '1b87309787a64678a95b7183e41cf272', '2c5e728bf9c345ba848fa71d3446cd8d');
INSERT INTO `sys_user_role` VALUES ('71e25349-fe54-11e6-a606-00163e028d22', '71be76f7-fe54-11e6-a606-00163e028d22', '71be76be-fe54-11e6-a606-00163e028d22');
INSERT INTO `sys_user_role` VALUES ('98779a80-fda6-11e6-a606-00163e028d22', '986d3c89-fda6-11e6-a606-00163e028d22', '986d3c51-fda6-11e6-a606-00163e028d22');
INSERT INTO `sys_user_role` VALUES ('a22fd0cd-fa71-11e6-a606-00163e028d22', 'admin', 'a5af2cc9a5244fd3a50728b24b513451');
INSERT INTO `sys_user_role` VALUES ('c9bd9852-fe1c-11e6-a606-00163e028d22', 'admin', '95dc04c7215c41b19a6fb739e51b2082');
INSERT INTO `sys_user_role` VALUES ('d421f4ef-fda8-11e6-a606-00163e028d22', '57a74c3d10bc47e58ff24c986ef77f69', 'c1834167f54a4e8bbcd60e5985d9b914');
INSERT INTO `sys_user_role` VALUES ('df7902d8-faf7-11e6-a606-00163e028d22', 'admin', '2c5e728bf9c345ba848fa71d3446cd8d');

-- ----------------------------
-- View structure for `v_status`
-- ----------------------------
DROP VIEW IF EXISTS `v_status`;
CREATE ALGORITHM=UNDEFINED DEFINER=`jst`@`%` SQL SECURITY DEFINER VIEW `v_status` AS select `a`.`val` AS `val`,`a`.`name` AS `name` from `sys_dic` `a` where (`a`.`dic_type` = 'status') ;

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

-- ----------------------------
-- Function structure for `initOrgAdminUser`
-- ----------------------------
DROP FUNCTION IF EXISTS `initOrgAdminUser`;
DELIMITER ;;
CREATE DEFINER=`jst`@`%` FUNCTION `initOrgAdminUser`(orgId VARCHAR(36)) RETURNS int(11)
BEGIN
DECLARE s_ret INTEGER;
DECLARE v_roleId VARCHAR(36);
DECLARE v_userId VARCHAR(36);
set v_roleId=UUID();
set v_userId=UUID();

INSERT into sys_role(id,name,dept_id)
values(v_roleId,'admin',orgId);

INSERT into sys_role_auth(id,role_id,auth_id)
SELECT
	UUID(),v_roleId,a.id
FROM
	sys_auth a
WHERE
	EXISTS (
		SELECT
			1
		FROM
			sys_auth b
		WHERE
			b.is_init = 1
		AND (
			FIND_IN_SET(
				a.id,
				getSysAuthParentList (b.id)
			)
			OR (
				FIND_IN_SET(
					a.id,
					getSysAuthNodeID (b.id)
				)
			)
		)
	);

INSERT into sys_org_auth(id,org_id,auth_id)
SELECT
	UUID(),orgId ,a.id
FROM
	sys_auth a
WHERE
	EXISTS (
		SELECT
			1
		FROM
			sys_auth b
		WHERE
			b.is_init = 1
		AND (
			FIND_IN_SET(
				a.id,
				getSysAuthParentList (b.id)
			)
			OR (
				FIND_IN_SET(
					a.id,
					getSysAuthNodeID (b.id)
				)
			)
		)
	);

INSERT into sys_user(id,user_name,pass_word,org_id,status)
values(v_userId,'admin',md5('123456'),orgId,'1');

INSERT into sys_user_role(id,role_id,user_id)
values(UUID(),v_roleId,v_userId);


SET s_ret = 0;

RETURN s_ret;
END
;;
DELIMITER ;
