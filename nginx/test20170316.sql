/*
Navicat MySQL Data Transfer

Source Server         : jst
Source Server Version : 50714
Source Host           : jst:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-03-16 14:20:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `agent_points_change`
-- ----------------------------
DROP TABLE IF EXISTS `agent_points_change`;
CREATE TABLE `agent_points_change` (
  `id` varchar(36) NOT NULL,
  `title` varchar(500) NOT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `org_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of agent_points_change
-- ----------------------------
INSERT INTO `agent_points_change` VALUES ('08502051bdf346de8b06a71daa77a075', 'afd', 'fdsaf', '1', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `agent_points_change` VALUES ('2529e92cbb3d4588978501b698d58c1d', 'Test', 'All', '1', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `agent_points_change` VALUES ('300c913659dd4561a044bd8177279f02', 'a', 'a', '1', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `agent_points_change` VALUES ('69b615ffe91a4b86b991a2e141f3987f', 'all', 'aa', '1', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `agent_points_change` VALUES ('80e77407cc934a1a8049cf187d1ff294', '总代理充值', '1000000', '1', 'a30002db053a4b7baf1f37488b59a1c5');
INSERT INTO `agent_points_change` VALUES ('8a7e4ce7720d44a1a7cfed7976a5beb7', 'rfesffdsa', 'fdasfdsfdsa', '1', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `agent_points_change` VALUES ('91e3d3d49f1a4325b6a0d92105e62a40', 'a', 'a', '1', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `agent_points_change` VALUES ('954a866487c249d4bac49782b707a39c', 'aa', 'aa', '1', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `agent_points_change` VALUES ('9da357e6c7e24cab95711739622f39c2', 'a', 'a', '1', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `agent_points_change` VALUES ('a9bd7c948e6c43f5ac074c41e000af65', 'Test', 'Test Report', '1', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `agent_points_change` VALUES ('ca847b3e54284b679a639cdb7281936a', 'a', 'a', '1', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `agent_points_change` VALUES ('d2e4bd29b8c945b1bd3187670e52d0d1', '充值', '111', '1', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `agent_points_change` VALUES ('dfd78ac322c84668861273770e1c6dc5', 'b', 'b', '1', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `agent_points_change` VALUES ('ff2fba3f59f54dcba0a3fe5364952906', '充值', '100aaa', '1', 'e2ff5e22cfe94054932ffca05e145934');

-- ----------------------------
-- Table structure for `agent_points_change_detail`
-- ----------------------------
DROP TABLE IF EXISTS `agent_points_change_detail`;
CREATE TABLE `agent_points_change_detail` (
  `id` varchar(255) NOT NULL,
  `bill_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `points` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of agent_points_change_detail
-- ----------------------------
INSERT INTO `agent_points_change_detail` VALUES ('1cc66a94-0a10-11e7-a606-00163e028d22', 'a9bd7c948e6c43f5ac074c41e000af65', '19fd8e0982f9424b981c15b180b3acdc', '200');
INSERT INTO `agent_points_change_detail` VALUES ('2498fdb3-08a2-11e7-a606-00163e028d22', '80e77407cc934a1a8049cf187d1ff294', '5cc05cea50c24f489edca10d62812c86', '1000000');
INSERT INTO `agent_points_change_detail` VALUES ('2c1ad6a3-0854-11e7-a606-00163e028d22', 'ff2fba3f59f54dcba0a3fe5364952906', '19fd8e0982f9424b981c15b180b3acdc', '200');
INSERT INTO `agent_points_change_detail` VALUES ('2fba601c-0860-11e7-a606-00163e028d22', '954a866487c249d4bac49782b707a39c', '511ed41401b74281b9ece89c42d0d668', '128');
INSERT INTO `agent_points_change_detail` VALUES ('56694da1-085c-11e7-a606-00163e028d22', 'c70a7188d57841d08fceb2702ff7ec9b', '511ed41401b74281b9ece89c42d0d668', '11');
INSERT INTO `agent_points_change_detail` VALUES ('58d4eb72-0857-11e7-a606-00163e028d22', 'd2e4bd29b8c945b1bd3187670e52d0d1', '19fd8e0982f9424b981c15b180b3acdc', '100');
INSERT INTO `agent_points_change_detail` VALUES ('89a0dbd4-085c-11e7-a606-00163e028d22', '9da357e6c7e24cab95711739622f39c2', '19fd8e0982f9424b981c15b180b3acdc', '200');
INSERT INTO `agent_points_change_detail` VALUES ('9e03a8f1-085c-11e7-a606-00163e028d22', '8a7e4ce7720d44a1a7cfed7976a5beb7', '511ed41401b74281b9ece89c42d0d668', '1');
INSERT INTO `agent_points_change_detail` VALUES ('b0315f4d-0858-11e7-a606-00163e028d22', 'ca847b3e54284b679a639cdb7281936a', '19fd8e0982f9424b981c15b180b3acdc', '22');
INSERT INTO `agent_points_change_detail` VALUES ('b0ca56d8-0857-11e7-a606-00163e028d22', '91e3d3d49f1a4325b6a0d92105e62a40', '19fd8e0982f9424b981c15b180b3acdc', '11');
INSERT INTO `agent_points_change_detail` VALUES ('ba8c5271-0858-11e7-a606-00163e028d22', 'ca847b3e54284b679a639cdb7281936a', '306231a33066474894bd618fc74ebcac', '111');
INSERT INTO `agent_points_change_detail` VALUES ('baac7998-085d-11e7-a606-00163e028d22', 'dfd78ac322c84668861273770e1c6dc5', '19fd8e0982f9424b981c15b180b3acdc', '100');
INSERT INTO `agent_points_change_detail` VALUES ('d068acb5-085f-11e7-a606-00163e028d22', '69b615ffe91a4b86b991a2e141f3987f', '511ed41401b74281b9ece89c42d0d668', '1');
INSERT INTO `agent_points_change_detail` VALUES ('d24436fe-085d-11e7-a606-00163e028d22', '08502051bdf346de8b06a71daa77a075', '511ed41401b74281b9ece89c42d0d668', '22');
INSERT INTO `agent_points_change_detail` VALUES ('e75644d8-085f-11e7-a606-00163e028d22', '2529e92cbb3d4588978501b698d58c1d', '19fd8e0982f9424b981c15b180b3acdc', '50');
INSERT INTO `agent_points_change_detail` VALUES ('e7564834-085f-11e7-a606-00163e028d22', '2529e92cbb3d4588978501b698d58c1d', '306231a33066474894bd618fc74ebcac', '50');
INSERT INTO `agent_points_change_detail` VALUES ('e7564a21-085f-11e7-a606-00163e028d22', '2529e92cbb3d4588978501b698d58c1d', '511ed41401b74281b9ece89c42d0d668', '50');

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
INSERT INTO `crm_cus_info` VALUES ('39c8915415ce40429b361aeea4f88704', '客户1', '客户在哪里?', '你来', 'Test', '13800138000', 'a30002db053a4b7baf1f37488b59a1c5');
INSERT INTO `crm_cus_info` VALUES ('ce59966a60a049ea8ac3fe3c96d5726f', 'fa', 'a', 'a', 'Te', 'fa', 'e2ff5e22cfe94054932ffca05e145934');
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
INSERT INTO `crm_sup_info` VALUES ('2f9c8d251a58443293979d8ca0aab3e3', '供应商001', '在这里', '来问', 'Test', '13902601727', 'a30002db053a4b7baf1f37488b59a1c5');
INSERT INTO `crm_sup_info` VALUES ('a187c76fcf7c4dda868773c4ce32c3be', 'tet', 'etes', 'testfsd', 'Testafdsafsdfafsafdsfds', 'fdsafdsa', 'e2ff5e22cfe94054932ffca05e145934');

-- ----------------------------
-- Table structure for `im_product_change`
-- ----------------------------
DROP TABLE IF EXISTS `im_product_change`;
CREATE TABLE `im_product_change` (
  `id` varchar(36) NOT NULL,
  `title` varchar(500) NOT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `org_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of im_product_change
-- ----------------------------
INSERT INTO `im_product_change` VALUES ('17705850af12465ba5473c4d6b1affa8', '盘点', '', '2', 'a30002db053a4b7baf1f37488b59a1c5');
INSERT INTO `im_product_change` VALUES ('5b30cbeff8be4be5ab69c3ec44a6f12f', '测试', '', '2', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `im_product_change` VALUES ('823fd4c5d7d34f5fbd308a1d4d04a116', '苹果入货', '新店开张', '2', 'a30002db053a4b7baf1f37488b59a1c5');
INSERT INTO `im_product_change` VALUES ('971e74bacdaf444c9aba0cd75c38ad82', 'Ccc ', 'Ccc', '2', 'e2ff5e22cfe94054932ffca05e145934');
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
INSERT INTO `im_product_change_detail` VALUES ('49a0f2b6-00f4-11e7-a606-00163e028d22', '971e74bacdaf444c9aba0cd75c38ad82', '370d0ac76a79492eb9abac0e35e7537f', '134');
INSERT INTO `im_product_change_detail` VALUES ('6e1edf8e-0325-11e7-a606-00163e028d22', '17705850af12465ba5473c4d6b1affa8', '323dbeb614cc402a87dca6335f33daa1', '-5');
INSERT INTO `im_product_change_detail` VALUES ('9ce6dd83-ff32-11e6-a606-00163e028d22', 'f948c725636a4f3f9a4c7e3d39bc5d01', '7ec302194e7244839df7e95f39eae685', '12');
INSERT INTO `im_product_change_detail` VALUES ('a4da400d-ff2f-11e6-a606-00163e028d22', 'f948c725636a4f3f9a4c7e3d39bc5d01', '370d0ac76a79492eb9abac0e35e7537f', '212');
INSERT INTO `im_product_change_detail` VALUES ('afa2d3b7-ff22-11e6-a606-00163e028d22', '6c9f1c066a6c49aaa2c4cec375436a29', 'a5be8f77954d41c5a347b2461946006a', '13');
INSERT INTO `im_product_change_detail` VALUES ('b0d4cac7-ff36-11e6-a606-00163e028d22', '6c9f1c066a6c49aaa2c4cec375436a29', '370d0ac76a79492eb9abac0e35e7537f', '12');
INSERT INTO `im_product_change_detail` VALUES ('b0d4ce20-ff36-11e6-a606-00163e028d22', '6c9f1c066a6c49aaa2c4cec375436a29', '7ec302194e7244839df7e95f39eae685', '11');
INSERT INTO `im_product_change_detail` VALUES ('d5d616da-ff26-11e6-a606-00163e028d22', 'b4e48ed392374296a47783503187149e', '370d0ac76a79492eb9abac0e35e7537f', '13');
INSERT INTO `im_product_change_detail` VALUES ('d5d619ed-ff26-11e6-a606-00163e028d22', 'b4e48ed392374296a47783503187149e', '7ec302194e7244839df7e95f39eae685', '14');
INSERT INTO `im_product_change_detail` VALUES ('e579ec29-0248-11e7-a606-00163e028d22', '823fd4c5d7d34f5fbd308a1d4d04a116', '323dbeb614cc402a87dca6335f33daa1', '10');
INSERT INTO `im_product_change_detail` VALUES ('f06e17e1-0564-11e7-a606-00163e028d22', '5b30cbeff8be4be5ab69c3ec44a6f12f', '7ec302194e7244839df7e95f39eae685', '-4');
INSERT INTO `im_product_change_detail` VALUES ('f5521c13-0563-11e7-a606-00163e028d22', '5b30cbeff8be4be5ab69c3ec44a6f12f', '370d0ac76a79492eb9abac0e35e7537f', '23');
INSERT INTO `im_product_change_detail` VALUES ('f781d969-007a-11e7-a606-00163e028d22', '031e83ccc1b54d5584546f7637d23320', '1788804cd4a549eb9416c328a7037f6c', '3');

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
INSERT INTO `im_product_info` VALUES ('323dbeb614cc402a87dca6335f33daa1', '苹果手机', null, 'iphone7', '苹果7', 'Test', null, 'a30002db053a4b7baf1f37488b59a1c5', null);
INSERT INTO `im_product_info` VALUES ('370d0ac76a79492eb9abac0e35e7537f', '联想-拯救者15-ISK系列', null, '联想-15-ISK', '拯救者游戏本，强大性能炫酷外形', ' 参考价：￥5399-7999', null, 'e2ff5e22cfe94054932ffca05e145934', '23');
INSERT INTO `im_product_info` VALUES ('7ec302194e7244839df7e95f39eae685', '惠普OMEN', null, 'hp-15-AX000', '惠普 WASD 15-ax000系列为2016年5月上市的15.6英寸暗影精灵II代游戏本，搭载Intel第六代酷睿标压处理器以及DDR4内存，GTX960M/GTX965M发烧级显卡，可选M.2 SSD硬盘配置，采用IPS全高清防选光屏，可选红色/绿色背光键盘为您带来震撼游戏体验。', '', null, 'e2ff5e22cfe94054932ffca05e145934', '-4');
INSERT INTO `im_product_info` VALUES ('a5be8f77954d41c5a347b2461946006a', '戴尔Inspiron 灵越', null, 'dell-14-7000', '戴尔 DELL燃7000 14.0英寸超薄微边框笔记本电脑2016年8月上市，搭配Inter酷睿7代处理器，940MX 2G独显，预装Win10 。', ' 参考价：￥4999-6999', null, 'e2ff5e22cfe94054932ffca05e145934', null);

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
INSERT INTO `mg_org_auth` VALUES ('2193be6177c2417ca96569928a742bb3', 'b6a7ee64bcc04255a3f348380e2df245', '1', '2');
INSERT INTO `mg_org_auth` VALUES ('280f5c91b3264129967bbe07ea782aaa', 'a30002db053a4b7baf1f37488b59a1c5', '1', '2');
INSERT INTO `mg_org_auth` VALUES ('405997fb523a4a79b9dc83e919164e44', 'f92ac73813eb4545bc29bde7e5f86e41', '1', '0');
INSERT INTO `mg_org_auth` VALUES ('58a7a53ae4c84b20b320bbafbdd56f19', '86b26d4b86ca409c9a726a2d9c0dec79', '1', '2');
INSERT INTO `mg_org_auth` VALUES ('85433893d097453dbac55f45da3ebc94', '86b26d4b86ca409c9a726a2d9c0dec79', '1', '2');
INSERT INTO `mg_org_auth` VALUES ('a36b8767ceba40e7bb1af85bf77fd114', 'a30002db053a4b7baf1f37488b59a1c5', '1', '2');
INSERT INTO `mg_org_auth` VALUES ('c02296a1711d40dd81852045024d71e5', 'a30002db053a4b7baf1f37488b59a1c5', '1', '2');
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
INSERT INTO `mg_org_auth_detail` VALUES ('108460a9-ffbb-11e6-a606-00163e028d22', '2193be6177c2417ca96569928a742bb3', '0575c843bad7482ba7eb9ecd6269d1f5');
INSERT INTO `mg_org_auth_detail` VALUES ('10846433-ffbb-11e6-a606-00163e028d22', '2193be6177c2417ca96569928a742bb3', '0694283e392b42a2869cdf8093cbeb90');
INSERT INTO `mg_org_auth_detail` VALUES ('10846617-ffbb-11e6-a606-00163e028d22', '2193be6177c2417ca96569928a742bb3', '13439fc34d4b41c2b3f84a6770073692');
INSERT INTO `mg_org_auth_detail` VALUES ('10846c84-ffbb-11e6-a606-00163e028d22', '2193be6177c2417ca96569928a742bb3', '6374c1e4f3ac40da80b8f86b42d855a2');
INSERT INTO `mg_org_auth_detail` VALUES ('10846d9c-ffbb-11e6-a606-00163e028d22', '2193be6177c2417ca96569928a742bb3', '664354eb5aea4a00853ddb18dc68ebbd');
INSERT INTO `mg_org_auth_detail` VALUES ('1084bb34-ffbb-11e6-a606-00163e028d22', '2193be6177c2417ca96569928a742bb3', '6cf1391a9e3c4ac5af95534de51d7bd6');
INSERT INTO `mg_org_auth_detail` VALUES ('1084bda8-ffbb-11e6-a606-00163e028d22', '2193be6177c2417ca96569928a742bb3', '7030524f08a742649a9c5255199f797d');
INSERT INTO `mg_org_auth_detail` VALUES ('1084be89-ffbb-11e6-a606-00163e028d22', '2193be6177c2417ca96569928a742bb3', '7118e0b350e14f7aa9715831e9cf16d3');
INSERT INTO `mg_org_auth_detail` VALUES ('1084c01d-ffbb-11e6-a606-00163e028d22', '2193be6177c2417ca96569928a742bb3', '77885a6895b543059b135354d5f62fce');
INSERT INTO `mg_org_auth_detail` VALUES ('1084c12b-ffbb-11e6-a606-00163e028d22', '2193be6177c2417ca96569928a742bb3', '7d5f7d02ccc74bbf9ccd8fdef0c94a3a');
INSERT INTO `mg_org_auth_detail` VALUES ('1084c20f-ffbb-11e6-a606-00163e028d22', '2193be6177c2417ca96569928a742bb3', '7e9a289b3597483a84c08bbe71077558');
INSERT INTO `mg_org_auth_detail` VALUES ('1084c857-ffbb-11e6-a606-00163e028d22', '2193be6177c2417ca96569928a742bb3', 'ba7aa68555d5474ca6a6e3a12ccd1afe');
INSERT INTO `mg_org_auth_detail` VALUES ('1084c9f9-ffbb-11e6-a606-00163e028d22', '2193be6177c2417ca96569928a742bb3', 'c3524525c489444aac421df515c63873');
INSERT INTO `mg_org_auth_detail` VALUES ('1084cb92-ffbb-11e6-a606-00163e028d22', '2193be6177c2417ca96569928a742bb3', 'ce09b46ede8946f0bc5003c19987b363');
INSERT INTO `mg_org_auth_detail` VALUES ('1084cd50-ffbb-11e6-a606-00163e028d22', '2193be6177c2417ca96569928a742bb3', 'd7ac735162954c9382936183dd2eb465');
INSERT INTO `mg_org_auth_detail` VALUES ('1084cec6-ffbb-11e6-a606-00163e028d22', '2193be6177c2417ca96569928a742bb3', 'da8bf91990b44726bfa4ea7a05a4499f');
INSERT INTO `mg_org_auth_detail` VALUES ('1084d17f-ffbb-11e6-a606-00163e028d22', '2193be6177c2417ca96569928a742bb3', 'f1bc8030d1484e6bb212e5d45a9ce450');
INSERT INTO `mg_org_auth_detail` VALUES ('1084d44f-ffbb-11e6-a606-00163e028d22', '2193be6177c2417ca96569928a742bb3', 'fec3e2fc717541c2ab24f05e37aacae3');
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
INSERT INTO `mg_org_auth_detail` VALUES ('c38281a9-0602-11e7-a606-00163e028d22', 'a36b8767ceba40e7bb1af85bf77fd114', '175ca305ff0b4055ba01269d1fa9aefe');
INSERT INTO `mg_org_auth_detail` VALUES ('c382844c-0602-11e7-a606-00163e028d22', 'a36b8767ceba40e7bb1af85bf77fd114', '2094db342d974387a4af3b4cdff88827');
INSERT INTO `mg_org_auth_detail` VALUES ('c38286b7-0602-11e7-a606-00163e028d22', 'a36b8767ceba40e7bb1af85bf77fd114', '3989deeb8c2f4066bf5c97c4d266b654');
INSERT INTO `mg_org_auth_detail` VALUES ('c3828897-0602-11e7-a606-00163e028d22', 'a36b8767ceba40e7bb1af85bf77fd114', '3e9dcacd655d4aabbf42a099b14927d8');
INSERT INTO `mg_org_auth_detail` VALUES ('c3828d00-0602-11e7-a606-00163e028d22', 'a36b8767ceba40e7bb1af85bf77fd114', '6c0310128a78465891977fe2125802e4');
INSERT INTO `mg_org_auth_detail` VALUES ('c38290e8-0602-11e7-a606-00163e028d22', 'a36b8767ceba40e7bb1af85bf77fd114', '824b9dfc5bbb4ba9a21f86cb392eaa65');
INSERT INTO `mg_org_auth_detail` VALUES ('c382937a-0602-11e7-a606-00163e028d22', 'a36b8767ceba40e7bb1af85bf77fd114', 'a83a382e77024cc595a7ccf13c98d089');
INSERT INTO `mg_org_auth_detail` VALUES ('c3829491-0602-11e7-a606-00163e028d22', 'a36b8767ceba40e7bb1af85bf77fd114', 'acc32eaeb07f41b3990b8ad6ebcb4148');
INSERT INTO `mg_org_auth_detail` VALUES ('c38295db-0602-11e7-a606-00163e028d22', 'a36b8767ceba40e7bb1af85bf77fd114', 'b3923a710b8c455f96120f72799c3471');
INSERT INTO `mg_org_auth_detail` VALUES ('c382a9fa-0602-11e7-a606-00163e028d22', 'a36b8767ceba40e7bb1af85bf77fd114', 'b5545655c63642338928bb9476832c29');
INSERT INTO `mg_org_auth_detail` VALUES ('c382af1a-0602-11e7-a606-00163e028d22', 'a36b8767ceba40e7bb1af85bf77fd114', 'e4f75e6814d54ceeb23376a6d9342a84');
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
INSERT INTO `mg_org_auth_detail` VALUES ('ed7c7951-0886-11e7-a606-00163e028d22', '280f5c91b3264129967bbe07ea782aaa', '0157b41dc00345aeb0f6a8cebf57a18e');
INSERT INTO `mg_org_auth_detail` VALUES ('ed7c7d53-0886-11e7-a606-00163e028d22', '280f5c91b3264129967bbe07ea782aaa', '06392a0475294d5da9cfb2142623709a');
INSERT INTO `mg_org_auth_detail` VALUES ('ed7c7ee1-0886-11e7-a606-00163e028d22', '280f5c91b3264129967bbe07ea782aaa', '0810f4564728470d96e6bc224e89305a');
INSERT INTO `mg_org_auth_detail` VALUES ('ed7c7fe8-0886-11e7-a606-00163e028d22', '280f5c91b3264129967bbe07ea782aaa', '0d14479342ed4f78b0b76ba9694c631e');
INSERT INTO `mg_org_auth_detail` VALUES ('ed7c82ba-0886-11e7-a606-00163e028d22', '280f5c91b3264129967bbe07ea782aaa', '175ca305ff0b4055ba01269d1fa9aefe');
INSERT INTO `mg_org_auth_detail` VALUES ('ed7c83c1-0886-11e7-a606-00163e028d22', '280f5c91b3264129967bbe07ea782aaa', '1bfcf5371d7146f3ab7b77f09d3dec42');
INSERT INTO `mg_org_auth_detail` VALUES ('ed7c85bf-0886-11e7-a606-00163e028d22', '280f5c91b3264129967bbe07ea782aaa', '265ccb86e5d04e6e95161fa557f540c3');
INSERT INTO `mg_org_auth_detail` VALUES ('ed7c86bc-0886-11e7-a606-00163e028d22', '280f5c91b3264129967bbe07ea782aaa', '27d4b1bd06da4f319c7dfc4451676622');
INSERT INTO `mg_org_auth_detail` VALUES ('ed7c8855-0886-11e7-a606-00163e028d22', '280f5c91b3264129967bbe07ea782aaa', '3373f0922103467c829b08788743dcf1');
INSERT INTO `mg_org_auth_detail` VALUES ('ed7c8988-0886-11e7-a606-00163e028d22', '280f5c91b3264129967bbe07ea782aaa', '3989deeb8c2f4066bf5c97c4d266b654');
INSERT INTO `mg_org_auth_detail` VALUES ('ed7c8c41-0886-11e7-a606-00163e028d22', '280f5c91b3264129967bbe07ea782aaa', '3e9dcacd655d4aabbf42a099b14927d8');
INSERT INTO `mg_org_auth_detail` VALUES ('ed7c927a-0886-11e7-a606-00163e028d22', '280f5c91b3264129967bbe07ea782aaa', '679e8bd02980479e963b82bf30673f1d');
INSERT INTO `mg_org_auth_detail` VALUES ('ed7c941f-0886-11e7-a606-00163e028d22', '280f5c91b3264129967bbe07ea782aaa', '6c0310128a78465891977fe2125802e4');
INSERT INTO `mg_org_auth_detail` VALUES ('ed7c9ac7-0886-11e7-a606-00163e028d22', '280f5c91b3264129967bbe07ea782aaa', '824b9dfc5bbb4ba9a21f86cb392eaa65');
INSERT INTO `mg_org_auth_detail` VALUES ('ed7c9ccc-0886-11e7-a606-00163e028d22', '280f5c91b3264129967bbe07ea782aaa', '9ac8a29efca547fb9d078f9b09f87872');
INSERT INTO `mg_org_auth_detail` VALUES ('ed7ca041-0886-11e7-a606-00163e028d22', '280f5c91b3264129967bbe07ea782aaa', 'a83a382e77024cc595a7ccf13c98d089');
INSERT INTO `mg_org_auth_detail` VALUES ('ed7ca1ee-0886-11e7-a606-00163e028d22', '280f5c91b3264129967bbe07ea782aaa', 'acc32eaeb07f41b3990b8ad6ebcb4148');
INSERT INTO `mg_org_auth_detail` VALUES ('ed7ca392-0886-11e7-a606-00163e028d22', '280f5c91b3264129967bbe07ea782aaa', 'b5545655c63642338928bb9476832c29');
INSERT INTO `mg_org_auth_detail` VALUES ('ed7cab22-0886-11e7-a606-00163e028d22', '280f5c91b3264129967bbe07ea782aaa', 'e4f75e6814d54ceeb23376a6d9342a84');
INSERT INTO `mg_org_auth_detail` VALUES ('ed7cacf3-0886-11e7-a606-00163e028d22', '280f5c91b3264129967bbe07ea782aaa', 'e6ee26506c99417eb2535acf7f27a480');
INSERT INTO `mg_org_auth_detail` VALUES ('ed7cb110-0886-11e7-a606-00163e028d22', '280f5c91b3264129967bbe07ea782aaa', 'ff27a7c775814b43ad4ef78ac94cb0cd');
INSERT INTO `mg_org_auth_detail` VALUES ('f340cfa8-0247-11e7-a606-00163e028d22', 'c02296a1711d40dd81852045024d71e5', '0575c843bad7482ba7eb9ecd6269d1f5');
INSERT INTO `mg_org_auth_detail` VALUES ('f340d326-0247-11e7-a606-00163e028d22', 'c02296a1711d40dd81852045024d71e5', '0694283e392b42a2869cdf8093cbeb90');
INSERT INTO `mg_org_auth_detail` VALUES ('f340d52d-0247-11e7-a606-00163e028d22', 'c02296a1711d40dd81852045024d71e5', '13439fc34d4b41c2b3f84a6770073692');
INSERT INTO `mg_org_auth_detail` VALUES ('f340dc6d-0247-11e7-a606-00163e028d22', 'c02296a1711d40dd81852045024d71e5', '6374c1e4f3ac40da80b8f86b42d855a2');
INSERT INTO `mg_org_auth_detail` VALUES ('f340ddb0-0247-11e7-a606-00163e028d22', 'c02296a1711d40dd81852045024d71e5', '664354eb5aea4a00853ddb18dc68ebbd');
INSERT INTO `mg_org_auth_detail` VALUES ('f340e02e-0247-11e7-a606-00163e028d22', 'c02296a1711d40dd81852045024d71e5', '6cf1391a9e3c4ac5af95534de51d7bd6');
INSERT INTO `mg_org_auth_detail` VALUES ('f340e221-0247-11e7-a606-00163e028d22', 'c02296a1711d40dd81852045024d71e5', '7030524f08a742649a9c5255199f797d');
INSERT INTO `mg_org_auth_detail` VALUES ('f340f388-0247-11e7-a606-00163e028d22', 'c02296a1711d40dd81852045024d71e5', '7118e0b350e14f7aa9715831e9cf16d3');
INSERT INTO `mg_org_auth_detail` VALUES ('f340f65e-0247-11e7-a606-00163e028d22', 'c02296a1711d40dd81852045024d71e5', '77885a6895b543059b135354d5f62fce');
INSERT INTO `mg_org_auth_detail` VALUES ('f340f7b2-0247-11e7-a606-00163e028d22', 'c02296a1711d40dd81852045024d71e5', '7d5f7d02ccc74bbf9ccd8fdef0c94a3a');
INSERT INTO `mg_org_auth_detail` VALUES ('f340f893-0247-11e7-a606-00163e028d22', 'c02296a1711d40dd81852045024d71e5', '7e9a289b3597483a84c08bbe71077558');
INSERT INTO `mg_org_auth_detail` VALUES ('f340fdae-0247-11e7-a606-00163e028d22', 'c02296a1711d40dd81852045024d71e5', 'ba7aa68555d5474ca6a6e3a12ccd1afe');
INSERT INTO `mg_org_auth_detail` VALUES ('f340ff12-0247-11e7-a606-00163e028d22', 'c02296a1711d40dd81852045024d71e5', 'c3524525c489444aac421df515c63873');
INSERT INTO `mg_org_auth_detail` VALUES ('f3410143-0247-11e7-a606-00163e028d22', 'c02296a1711d40dd81852045024d71e5', 'ce09b46ede8946f0bc5003c19987b363');
INSERT INTO `mg_org_auth_detail` VALUES ('f341032b-0247-11e7-a606-00163e028d22', 'c02296a1711d40dd81852045024d71e5', 'd7ac735162954c9382936183dd2eb465');
INSERT INTO `mg_org_auth_detail` VALUES ('f3410498-0247-11e7-a606-00163e028d22', 'c02296a1711d40dd81852045024d71e5', 'da8bf91990b44726bfa4ea7a05a4499f');
INSERT INTO `mg_org_auth_detail` VALUES ('f3410747-0247-11e7-a606-00163e028d22', 'c02296a1711d40dd81852045024d71e5', 'f1bc8030d1484e6bb212e5d45a9ce450');
INSERT INTO `mg_org_auth_detail` VALUES ('f3410964-0247-11e7-a606-00163e028d22', 'c02296a1711d40dd81852045024d71e5', 'fec3e2fc717541c2ab24f05e37aacae3');

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
INSERT INTO `mg_org_register` VALUES ('2de4d1b1b33f48bcbe120b459c8744f3', '东莞祥信服饰有限公司', '东莞大井头', '黄先生', '13580828162', 'xiang', 'admin', 'admin', '2', null);
INSERT INTO `mg_org_register` VALUES ('4d902e707a3d458fba4b3b66d040829f', 'a', 'a', 'a', 'a', 'a', 'admin', 'admin', '2', null);
INSERT INTO `mg_org_register` VALUES ('7a3422890ab547e78de73c4c375b3018', 'fsd', 'fds', 'fsdfds', 'fds', 'fds', 'admin', 'admin', '2', null);
INSERT INTO `mg_org_register` VALUES ('92b96c59e4e34bd0a3db2a96b8460c5c', 'demo公司', 'demo地址', 'demo联系人', '13902601727', 'demo', 'admin', 'admin', '2', null);
INSERT INTO `mg_org_register` VALUES ('ea13706be922472c9bcf779b9822a1f6', 'b', 'b', 'b', 'b', 'b', 'admin', 'admin', '2', null);

-- ----------------------------
-- Table structure for `mms_info`
-- ----------------------------
DROP TABLE IF EXISTS `mms_info`;
CREATE TABLE `mms_info` (
  `id` varchar(36) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `org_id` varchar(36) DEFAULT NULL,
  `create_user` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mms_info` (`user_name`,`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mms_info
-- ----------------------------
INSERT INTO `mms_info` VALUES ('1530ad7ba0584d048e335581ce6d02b1', 'tes', 'test', 'test', null, 'test', '10', '600', 'e2ff5e22cfe94054932ffca05e145934', 'admin', '2017-03-14 00:00:00');
INSERT INTO `mms_info` VALUES ('1854e6517a15468fb7f53f2098855af5', '13902601727', '李剑风', '13902601727', null, '东莞', '10', '720', 'e2ff5e22cfe94054932ffca05e145934', null, null);
INSERT INTO `mms_info` VALUES ('1b205e059de0469282461402b444d2b9', '13902601828', '李剑风', '13902601727', null, '东莞大朗', '10', '1000', 'a30002db053a4b7baf1f37488b59a1c5', null, null);
INSERT INTO `mms_info` VALUES ('b0714d87e91e4dafae7b7767e0ac6255', 'testfdsa', 'tt', 'testt', null, 'test', '10', '600', 'e2ff5e22cfe94054932ffca05e145934', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 00:00:00');

-- ----------------------------
-- Table structure for `mms_points_change`
-- ----------------------------
DROP TABLE IF EXISTS `mms_points_change`;
CREATE TABLE `mms_points_change` (
  `id` varchar(36) NOT NULL,
  `title` varchar(500) NOT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `org_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mms_points_change
-- ----------------------------
INSERT INTO `mms_points_change` VALUES ('169684531a4d4e788787b7863b18119d', '提款', '', '2', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `mms_points_change` VALUES ('461e5070982b465cb0e1b5774372167d', '测试', 'Tet', '2', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `mms_points_change` VALUES ('5bb2696231d84d25ab4eccd54863368c', 'Test', 'test', '2', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `mms_points_change` VALUES ('852659bf3431402a8dc3cfee7dc99c3d', '充值', '1000', '2', 'a30002db053a4b7baf1f37488b59a1c5');
INSERT INTO `mms_points_change` VALUES ('a29bc03913884200b36af5851bb97a24', 'Test Report', 'Report', '1', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `mms_points_change` VALUES ('ac91fe2593fb41fcb390c0a35138a237', 'Test', 'Test', '0', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `mms_points_change` VALUES ('bc02e728d9d546c384c21d8eb90aba87', 'Test', 'test', '1', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `mms_points_change` VALUES ('f178a3b57fc54387ac2a87518afc3b49', '充值', '', '2', 'e2ff5e22cfe94054932ffca05e145934');

-- ----------------------------
-- Table structure for `mms_points_change_detail`
-- ----------------------------
DROP TABLE IF EXISTS `mms_points_change_detail`;
CREATE TABLE `mms_points_change_detail` (
  `id` varchar(255) NOT NULL,
  `bill_id` varchar(255) NOT NULL,
  `info_id` varchar(255) NOT NULL,
  `points` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mms_points_change_detail
-- ----------------------------
INSERT INTO `mms_points_change_detail` VALUES ('02993bda-0878-11e7-a606-00163e028d22', 'bc02e728d9d546c384c21d8eb90aba87', 'b0714d87e91e4dafae7b7767e0ac6255', '100');
INSERT INTO `mms_points_change_detail` VALUES ('0abedfdf-0860-11e7-a606-00163e028d22', '5bb2696231d84d25ab4eccd54863368c', '1854e6517a15468fb7f53f2098855af5', '20');
INSERT INTO `mms_points_change_detail` VALUES ('119947c1-0570-11e7-a606-00163e028d22', '461e5070982b465cb0e1b5774372167d', '1854e6517a15468fb7f53f2098855af5', '11');
INSERT INTO `mms_points_change_detail` VALUES ('45d393ae-060f-11e7-a606-00163e028d22', '852659bf3431402a8dc3cfee7dc99c3d', '1b205e059de0469282461402b444d2b9', '1000');
INSERT INTO `mms_points_change_detail` VALUES ('a6c1c9ca-0877-11e7-a606-00163e028d22', 'ac91fe2593fb41fcb390c0a35138a237', 'b0714d87e91e4dafae7b7767e0ac6255', '100');
INSERT INTO `mms_points_change_detail` VALUES ('a95c55c6-0571-11e7-a606-00163e028d22', '169684531a4d4e788787b7863b18119d', '1854e6517a15468fb7f53f2098855af5', '-10');
INSERT INTO `mms_points_change_detail` VALUES ('d3a883aa-056f-11e7-a606-00163e028d22', 'f178a3b57fc54387ac2a87518afc3b49', '1854e6517a15468fb7f53f2098855af5', '11');
INSERT INTO `mms_points_change_detail` VALUES ('d4e4edf4-09f9-11e7-a606-00163e028d22', 'a29bc03913884200b36af5851bb97a24', '1854e6517a15468fb7f53f2098855af5', '700');
INSERT INTO `mms_points_change_detail` VALUES ('d4e50d55-09f9-11e7-a606-00163e028d22', 'a29bc03913884200b36af5851bb97a24', '1530ad7ba0584d048e335581ce6d02b1', '600');
INSERT INTO `mms_points_change_detail` VALUES ('d4e50e7c-09f9-11e7-a606-00163e028d22', 'a29bc03913884200b36af5851bb97a24', 'b0714d87e91e4dafae7b7767e0ac6255', '500');

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
INSERT INTO `sys_approval_config` VALUES ('AgentPointsChangeDTO', 'AgentPointsChangeDTO', '1');
INSERT INTO `sys_approval_config` VALUES ('ImProductChangeDTO', 'ImProductChangeDTO', '2');
INSERT INTO `sys_approval_config` VALUES ('MgOrgAuthDTO', 'MgOrgAuthDTO', '2');
INSERT INTO `sys_approval_config` VALUES ('MgOrgRegisterDTO', 'MgOrgRegisterDTO', '2');
INSERT INTO `sys_approval_config` VALUES ('MmsPointsChangeDTO', 'MmsPointsChangeDTO', '1');

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
INSERT INTO `sys_approval_list` VALUES ('033770bcad644e17bf444a405e3aebdd', 'd2e4bd29b8c945b1bd3187670e52d0d1', 'AgentPointsChangeDTO', 'admin', '2017-03-14 09:41:28', '0', '111');
INSERT INTO `sys_approval_list` VALUES ('0378e04a496a40f2b6c37abf66aa3ffb', '58a7a53ae4c84b20b320bbafbdd56f19', 'MgOrgAuthDTO', 'admin', '2017-02-28 17:31:29', '2', '');
INSERT INTO `sys_approval_list` VALUES ('04be7fd682334e74b492aa0a605dd2be', 'c02296a1711d40dd81852045024d71e5', 'MgOrgAuthDTO', 'admin', '2017-03-06 16:36:15', '1', '');
INSERT INTO `sys_approval_list` VALUES ('07d9de6f80184811a49356461dcca67a', 'e1c01d9a97684a16891bcbc02ff43455', 'ImProductChangeDTO', 'admin', '2017-03-02 11:55:06', '1', '');
INSERT INTO `sys_approval_list` VALUES ('0c42b223848f46f5acd3e2ef7d0fc477', 'b7584c4cc6cd45269c241fbf644bba32', 'MgOrgRegisterDTO', 'admin', '2017-02-28 10:09:00', '1', '');
INSERT INTO `sys_approval_list` VALUES ('0ce0825c901444d8954811101271ff6c', 'e031579252e94ec5b6a23804aadd7eed', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:32:28', '99', 'dd');
INSERT INTO `sys_approval_list` VALUES ('0ec7af9e622148a78ea1b8828e2836e7', 'b0714d87e91e4dafae7b7767e0ac6255', 'MmsInfoDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 11:56:44', '0', '');
INSERT INTO `sys_approval_list` VALUES ('1049ccf8592445deb52232c5ad2f3dcf', '8a7e4ce7720d44a1a7cfed7976a5beb7', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:19:28', '1', '');
INSERT INTO `sys_approval_list` VALUES ('10b2f86feb744009b8a79ffc5d3bc7e8', 'f948c725636a4f3f9a4c7e3d39bc5d01', 'ImProductChangeDTO', 'admin', '2017-03-02 19:08:50', '2', 'aaa');
INSERT INTO `sys_approval_list` VALUES ('117956d2eccb40b3b772117178ba7e42', '38b18de2453041c4ad46b86b18cd642a', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:05:22', '1', '');
INSERT INTO `sys_approval_list` VALUES ('148978567eb644ec9f464d40f868bc60', 'ea13706be922472c9bcf779b9822a1f6', 'MgOrgRegisterDTO', 'admin', '2017-02-28 19:11:04', '2', '');
INSERT INTO `sys_approval_list` VALUES ('14d250f639514e27a48224851c106c9e', '5cc05cea50c24f489edca10d62812c86', 'SysUserDTO', 'e7e3466e-0247-11e7-a606-00163e028d22', '2017-03-14 17:51:01', '0', '');
INSERT INTO `sys_approval_list` VALUES ('166ae9a8ab414cdaadbe61292a6d5782', 'e1c01d9a97684a16891bcbc02ff43455', 'ImProductChangeDTO', 'admin', '2017-03-02 11:55:09', '2', 'testgdsg');
INSERT INTO `sys_approval_list` VALUES ('170bfd1d6f6c4d56a30fe4fe9bb1fc01', '13483c98a7104318bee76e18eb1c77dc', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:09:17', '1', '');
INSERT INTO `sys_approval_list` VALUES ('17776a3d59154baeac1f88cd37f63b1c', '7b2dad54ce084faf87a0f027dbcf9aec', 'SysDeptDTO', '', '2017-03-14 18:19:11', '0', '');
INSERT INTO `sys_approval_list` VALUES ('17e8af27b2dd421f8ff38643f84d5d65', 'f178a3b57fc54387ac2a87518afc3b49', 'MmsPointsChangeDTO', 'admin', '2017-03-10 17:00:05', '99', 'ete');
INSERT INTO `sys_approval_list` VALUES ('18ba4e76c316448ab139034ca2b41e07', 'ca847b3e54284b679a639cdb7281936a', 'AgentPointsChangeDTO', 'admin', '2017-03-14 09:50:24', '0', 'a');
INSERT INTO `sys_approval_list` VALUES ('1a7def55104849ebb6bd71408faeeed9', '971e74bacdaf444c9aba0cd75c38ad82', 'ImProductChangeDTO', 'admin', '2017-03-05 00:05:13', '1', '');
INSERT INTO `sys_approval_list` VALUES ('1b151c0eb87a491f9b842d5a4d41130c', '92b96c59e4e34bd0a3db2a96b8460c5c', 'MgOrgRegisterDTO', 'admin', '2017-03-06 16:35:49', '1', '');
INSERT INTO `sys_approval_list` VALUES ('1cceeaeb23964f35a4071da044a92975', '6427944f86d040f8bd9feaf99412d611', 'MgOrgRegisterDTO', 'admin', '2017-02-27 17:06:47', '99', 'tretretre');
INSERT INTO `sys_approval_list` VALUES ('1dc55d534a934c3b9fb7e29ceb7a0127', '5b30cbeff8be4be5ab69c3ec44a6f12f', 'ImProductChangeDTO', 'admin', '2017-03-10 15:42:57', '2', '');
INSERT INTO `sys_approval_list` VALUES ('1ecfd3483625429f96d57c71b61e7810', '348cc8382cb6401bb86d3612a9b1528e', 'MgOrgRegisterDTO', 'admin', '2017-02-28 10:00:18', '99', 'Test');
INSERT INTO `sys_approval_list` VALUES ('2297a08ba2ca4b04b08614b5cd701568', '', 'AgentPointsChangeDTO', 'admin', '2017-03-14 09:17:06', '0', '1');
INSERT INTO `sys_approval_list` VALUES ('23782095e85440fc95e37000b89c6666', 'eca22c1d3fed454983c1fcd647c7ae6e', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:52:19', '0', 'a');
INSERT INTO `sys_approval_list` VALUES ('260208c0b5c8481685e00828983897e8', '306231a33066474894bd618fc74ebcac', 'SysUserDTO', 'admin', '2017-03-14 09:50:39', '0', '');
INSERT INTO `sys_approval_list` VALUES ('26651526364b4e75ba7e998c50504556', 'e1c01d9a97684a16891bcbc02ff43455', 'ImProductChangeDTO', 'admin', '2017-03-02 11:54:58', '99', 'Test');
INSERT INTO `sys_approval_list` VALUES ('2a59aced4007466c9ab92c51e7b75535', '6427944f86d040f8bd9feaf99412d611', 'MgOrgRegisterDTO', 'admin', '2017-02-27 17:07:28', '2', '');
INSERT INTO `sys_approval_list` VALUES ('2c332a0799b94e14a6ae38006deb0a9f', 'a36b8767ceba40e7bb1af85bf77fd114', 'MgOrgAuthDTO', 'admin', '2017-03-11 10:31:11', '1', '');
INSERT INTO `sys_approval_list` VALUES ('2dc9b6d6f8364934b6b66bbfa5c79591', 'a64f306d77d8486d87f237aca19a99a0', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:16:58', '1', '');
INSERT INTO `sys_approval_list` VALUES ('2e217bed02214f52ae8de7e7cce2b2a6', '0738de70383540c58c41d179f5c2a647', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:07:52', '0', 'test');
INSERT INTO `sys_approval_list` VALUES ('2f8aa0d00ef64b02949d29e7eb73615c', '7a3422890ab547e78de73c4c375b3018', 'MgOrgRegisterDTO', 'admin', '2017-03-01 15:55:29', '1', '');
INSERT INTO `sys_approval_list` VALUES ('2fae0d837d0a4f07a2b07c3e9220c10a', 'a64f306d77d8486d87f237aca19a99a0', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:11:38', '1', '');
INSERT INTO `sys_approval_list` VALUES ('30eed841855b4137bf4491e937fb2101', 'f178a3b57fc54387ac2a87518afc3b49', 'MmsPointsChangeDTO', 'admin', '2017-03-10 17:00:16', '1', '');
INSERT INTO `sys_approval_list` VALUES ('319f7b8ff6c44670ae2a88271df95c24', '843d4f023ec0455490ab9e1e9670ff94', 'MgOrgRegisterDTO', 'admin', '2017-02-27 15:33:57', '2', '');
INSERT INTO `sys_approval_list` VALUES ('31bebb46b08e48708bc7ad5a4148c526', '971e74bacdaf444c9aba0cd75c38ad82', 'ImProductChangeDTO', 'admin', '2017-03-05 00:05:16', '2', 'Ccc');
INSERT INTO `sys_approval_list` VALUES ('3269fcd05a144bb395e87f782444cdf0', 'ca847b3e54284b679a639cdb7281936a', 'AgentPointsChangeDTO', 'admin', '2017-03-14 09:51:33', '1', '');
INSERT INTO `sys_approval_list` VALUES ('382ac611dc794dbf83682734cfeb9061', 'a64f306d77d8486d87f237aca19a99a0', 'MgOrgAuth', '', '2017-02-28 16:11:44', '2', '');
INSERT INTO `sys_approval_list` VALUES ('3aa5e0582b4e40d5861fcc449765a046', 'ea13706be922472c9bcf779b9822a1f6', 'MgOrgRegisterDTO', 'admin', '2017-02-28 19:11:02', '1', '');
INSERT INTO `sys_approval_list` VALUES ('3cb1776691114bc2b33066635f5c01ca', 'ff2fba3f59f54dcba0a3fe5364952906', 'AgentPointsChangeDTO', 'admin', '2017-03-14 09:18:43', '0', '100');
INSERT INTO `sys_approval_list` VALUES ('3ce23b15bc224872994106f598ecc39f', '7a3422890ab547e78de73c4c375b3018', 'MgOrgRegisterDTO', 'admin', '2017-03-01 15:55:14', '1', '');
INSERT INTO `sys_approval_list` VALUES ('3e10fb8578f84462ad12da1cafde1313', '13483c98a7104318bee76e18eb1c77dc', 'MgOrgRegister', 'admin', '2017-02-28 11:09:20', '2', '');
INSERT INTO `sys_approval_list` VALUES ('4029135b72ba4ea1a7eec2bafb1954c9', 'f8eaef0a7e2249b396acbc480b90d032', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:52:41', '0', 'dafda');
INSERT INTO `sys_approval_list` VALUES ('4110e7ccbac947269134e81ca0ae288b', '83075a6faa8f4cc3b0e7f7bd34d58fe6', 'MgOrgRegisterDTO', 'admin', '2017-02-28 10:08:49', '1', '');
INSERT INTO `sys_approval_list` VALUES ('41f67f32d6fd4a50b81ea2b34448488a', '09b4e5ee2baa44ec8b6ba5dab504fe6a', 'ImProductChangeDTO', '00355a20-ffbb-11e6-a606-00163e028d22', '2017-03-04 09:27:36', '1', '');
INSERT INTO `sys_approval_list` VALUES ('43adb89ba2e14c44b69358e35d31c0b1', 'c70a7188d57841d08fceb2702ff7ec9b', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:15:51', '0', 're');
INSERT INTO `sys_approval_list` VALUES ('440eb3bc6d344e2caa7d51c331c107f0', '38b18de2453041c4ad46b86b18cd642a', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:27:18', '1', '');
INSERT INTO `sys_approval_list` VALUES ('452aae6c084640099a7bfa5a7a42fcf9', 'c02296a1711d40dd81852045024d71e5', 'MgOrgAuthDTO', 'admin', '2017-03-06 16:36:18', '2', '');
INSERT INTO `sys_approval_list` VALUES ('453d06ce4041456b8552fbf8d452cf81', '852659bf3431402a8dc3cfee7dc99c3d', 'MmsPointsChangeDTO', 'e7e3466e-0247-11e7-a606-00163e028d22', '2017-03-11 12:00:56', '2', '1000');
INSERT INTO `sys_approval_list` VALUES ('49d8ee871fb64db9820988e30e01e20b', 'e031579252e94ec5b6a23804aadd7eed', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:33:15', '99', 'fgfd');
INSERT INTO `sys_approval_list` VALUES ('4a1c92ec95de458b9db537cf392c6d88', 'b61c8b70f0e74068af19ca707f995207', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:08:56', '0', 'fdas');
INSERT INTO `sys_approval_list` VALUES ('4cbd8afaa6264796b19f34e4e2605b21', '031e83ccc1b54d5584546f7637d23320', 'ImProductChangeDTO', '00355a20-ffbb-11e6-a606-00163e028d22', '2017-03-04 09:36:54', '2', '32');
INSERT INTO `sys_approval_list` VALUES ('4e4eac3e7d37447faed2f236a96f934b', '80e77407cc934a1a8049cf187d1ff294', 'AgentPointsChangeDTO', 'e7e3466e-0247-11e7-a606-00163e028d22', '2017-03-14 18:36:51', '0', '1000000');
INSERT INTO `sys_approval_list` VALUES ('4e9cf1e7893047708089cc3527fa716a', '837e9db99ae545c3965883713646d745', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:06:18', '1', '');
INSERT INTO `sys_approval_list` VALUES ('4ee65112373f4adfb8323297c6729996', '2de4d1b1b33f48bcbe120b459c8744f3', 'MgOrgRegisterDTO', 'admin', '2017-03-03 10:42:11', '2', '');
INSERT INTO `sys_approval_list` VALUES ('53543792bd014826b0d9e5d0fc3e965d', 'da7fc8cdc660492ea972f65f93689955', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:56:55', '1', '');
INSERT INTO `sys_approval_list` VALUES ('545a9eead10b46ccabeb0ba7244cf091', '1f798aa339924711aa1ed27daec3cb6c', 'SysUserDTO', 'e7e3466e-0247-11e7-a606-00163e028d22', '2017-03-14 17:50:39', '0', '');
INSERT INTO `sys_approval_list` VALUES ('5502a487f78d478da33099622653e7e1', '8f4c6add246641618de98a7812ce2874', 'SysAuthDTO', '', '2017-03-16 09:10:13', '0', '');
INSERT INTO `sys_approval_list` VALUES ('55744f8811b8469880b711a6e51838b5', '8aad10c823334215ae6a8b0fc48d134b', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:55:29', '0', 'stest');
INSERT INTO `sys_approval_list` VALUES ('5658a54a13bd4025a5c8598bf771f96a', '2193be6177c2417ca96569928a742bb3', 'MgOrgAuthDTO', 'admin', '2017-03-03 10:42:43', '1', '');
INSERT INTO `sys_approval_list` VALUES ('57a87dfcada2456da120ba0dbba1d70c', '4d902e707a3d458fba4b3b66d040829f', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:31:23', '99', '');
INSERT INTO `sys_approval_list` VALUES ('593ee8c97fa643f99f254a91dbf7f362', '461e5070982b465cb0e1b5774372167d', 'MmsPointsChangeDTO', 'admin', '2017-03-10 17:08:38', '2', 'Tet');
INSERT INTO `sys_approval_list` VALUES ('5971c9e1756c4f1b979d8081112430fe', '91e3d3d49f1a4325b6a0d92105e62a40', 'AgentPointsChangeDTO', 'admin', '2017-03-14 09:43:55', '0', 'a');
INSERT INTO `sys_approval_list` VALUES ('5b6fcd10f6ef4b1e9b7cd5121e08eba6', 'a9bd7c948e6c43f5ac074c41e000af65', 'AgentPointsChangeDTO', 'admin', '2017-03-16 11:36:40', '0', 'Test Report');
INSERT INTO `sys_approval_list` VALUES ('5bd3ffce92c64ad2a8893f67d971abde', '852659bf3431402a8dc3cfee7dc99c3d', 'MmsPointsChangeDTO', 'e7e3466e-0247-11e7-a606-00163e028d22', '2017-03-11 12:00:53', '1', '');
INSERT INTO `sys_approval_list` VALUES ('5bd439d03a1e4c3384394f48d06e8909', '4d902e707a3d458fba4b3b66d040829f', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:32:59', '1', '');
INSERT INTO `sys_approval_list` VALUES ('5f44590fc7b6444aa5c4209c7b502870', 'a29bc03913884200b36af5851bb97a24', 'MmsPointsChangeDTO', 'admin', '2017-03-16 11:37:29', '1', '');
INSERT INTO `sys_approval_list` VALUES ('6026e64d5bc14e5b82f64f49d566c23c', '8a7e4ce7720d44a1a7cfed7976a5beb7', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:11:11', '0', 'fdasfds');
INSERT INTO `sys_approval_list` VALUES ('6133f7a2e47e4fd5b109ea5074ae4986', '823fd4c5d7d34f5fbd308a1d4d04a116', 'ImProductChangeDTO', '17f1469a23f14a2b8ea1a94d8feabefd', '2017-03-06 16:43:08', '1', '');
INSERT INTO `sys_approval_list` VALUES ('617e9648a1ca47a9a9a9c2793c4ab838', 'ce2a16d0a97b4238976b8d6d2c13c56f', 'MgOrgRegisterDTO', 'admin', '2017-02-27 15:37:38', '1', '');
INSERT INTO `sys_approval_list` VALUES ('61dac1ae480041ba98cda03c3a80bbb9', '38b18de2453041c4ad46b86b18cd642a', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:27:08', '99', 'Test');
INSERT INTO `sys_approval_list` VALUES ('6236c86876c24902b577e7ba6e2e8aa7', '823fd4c5d7d34f5fbd308a1d4d04a116', 'ImProductChangeDTO', 'c743884dbf964cc3a1f0e5eed1b7be67', '2017-03-06 16:44:10', '2', '新店开张');
INSERT INTO `sys_approval_list` VALUES ('6349c34ae08847b3a83f8e294c9937df', '4d902e707a3d458fba4b3b66d040829f', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:33:01', '99', '');
INSERT INTO `sys_approval_list` VALUES ('6449a456c8ae4abda4f9ce8a1e100c1f', 'ce2a16d0a97b4238976b8d6d2c13c56f', 'MgOrgRegisterDTO', 'admin', '2017-02-27 15:38:08', '99', 'Test');
INSERT INTO `sys_approval_list` VALUES ('648d4f3db69e421f9014715368073afe', 'ac91fe2593fb41fcb390c0a35138a237', 'MmsPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 13:30:06', '0', 'Test');
INSERT INTO `sys_approval_list` VALUES ('6567ada7573d47f5b6a04fb75c7083a9', 'cc72d0bd1ac84cdabecdb1804c2ca07a', 'MgOrgAuthDTO', 'admin', '2017-02-28 17:32:07', '2', '');
INSERT INTO `sys_approval_list` VALUES ('66721aada05c4201a8878089cb144938', 'f178a3b57fc54387ac2a87518afc3b49', 'MmsPointsChangeDTO', 'admin', '2017-03-10 17:00:20', '2', '');
INSERT INTO `sys_approval_list` VALUES ('66de0a2f378b46cbb372a875a763cae0', '17705850af12465ba5473c4d6b1affa8', 'ImProductChangeDTO', 'c743884dbf964cc3a1f0e5eed1b7be67', '2017-03-07 19:02:18', '2', '');
INSERT INTO `sys_approval_list` VALUES ('692f3a0df0eb46b381253a1a904177c7', '', 'AgentPointsChangeDTO', 'admin', '2017-03-14 09:17:17', '0', '1');
INSERT INTO `sys_approval_list` VALUES ('69769b72ab534814a16bf801d1fa6a33', 'dfd78ac322c84668861273770e1c6dc5', 'AgentPointsChangeDTO', 'admin', '2017-03-14 10:27:21', '1', '');
INSERT INTO `sys_approval_list` VALUES ('6a5b787fa3354358a31d3e8428a7cbac', 'a64f306d77d8486d87f237aca19a99a0', 'MgOrgAuth', '', '2017-02-28 16:04:06', '2', '');
INSERT INTO `sys_approval_list` VALUES ('6b8f5faa16694f78966bf16191fe44bb', '38b18de2453041c4ad46b86b18cd642a', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:10:23', '1', '');
INSERT INTO `sys_approval_list` VALUES ('6ba1f351cd7740499ca1e6e54f4a8771', '6427944f86d040f8bd9feaf99412d611', 'MgOrgRegisterDTO', 'admin', '2017-02-27 17:06:43', '1', '');
INSERT INTO `sys_approval_list` VALUES ('7323f6fddab54189a2c018344bdb818d', 'dfd78ac322c84668861273770e1c6dc5', 'AgentPointsChangeDTO', 'admin', '2017-03-14 10:27:08', '0', 'b');
INSERT INTO `sys_approval_list` VALUES ('74404ffc05b5488989efd43795dac5a4', 'ce2a16d0a97b4238976b8d6d2c13c56f', 'MgOrgRegisterDTO', 'admin', '2017-02-27 15:38:21', '2', '');
INSERT INTO `sys_approval_list` VALUES ('7704700ca1994856a513d3f3f3fcb959', '280f5c91b3264129967bbe07ea782aaa', 'MgOrgAuthDTO', 'admin', '2017-03-14 15:22:13', '1', '');
INSERT INTO `sys_approval_list` VALUES ('7a4bd8125902488291a7d6e52bb93660', 'da7fc8cdc660492ea972f65f93689955', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:58:26', '2', '');
INSERT INTO `sys_approval_list` VALUES ('8207e53afc5c43bca613e8a7e4575fa5', 'f178a3b57fc54387ac2a87518afc3b49', 'MmsPointsChangeDTO', 'admin', '2017-03-10 16:59:21', '1', '');
INSERT INTO `sys_approval_list` VALUES ('82569f0b03624251b87251e34be3d790', 'a64f306d77d8486d87f237aca19a99a0', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:03:11', '1', '');
INSERT INTO `sys_approval_list` VALUES ('826354e410214a7689f3bc2bb73c5bf3', '9da357e6c7e24cab95711739622f39c2', 'AgentPointsChangeDTO', 'admin', '2017-03-14 10:18:36', '0', 'a');
INSERT INTO `sys_approval_list` VALUES ('82a3275e798740758590e32b47fd07a6', '0e48876593c24508bf6ede0adea89c3b', 'MgOrgRegister', 'admin', '2017-02-28 11:10:47', '2', '');
INSERT INTO `sys_approval_list` VALUES ('846b45d0fd2842ab9a96e574e327b92b', '348cc8382cb6401bb86d3612a9b1528e', 'MgOrgRegisterDTO', 'admin', '2017-02-28 10:03:33', '1', '');
INSERT INTO `sys_approval_list` VALUES ('8495169b6f6e43298d79e562d8f6c703', '5bb2696231d84d25ab4eccd54863368c', 'MmsPointsChangeDTO', 'admin', '2017-03-14 10:43:54', '2', 'test');
INSERT INTO `sys_approval_list` VALUES ('85d7c911a823447588cae7a8486eb7eb', '85433893d097453dbac55f45da3ebc94', 'MgOrgAuthDTO', 'admin', '2017-02-28 17:32:44', '2', '');
INSERT INTO `sys_approval_list` VALUES ('86cfa310e90c4a15b04c8c4dd8e7df31', '300c913659dd4561a044bd8177279f02', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:58:37', '0', 'a');
INSERT INTO `sys_approval_list` VALUES ('8734d038adc141bf8b5c051731eb29bc', '92b96c59e4e34bd0a3db2a96b8460c5c', 'MgOrgRegisterDTO', 'admin', '2017-03-06 16:35:51', '2', '');
INSERT INTO `sys_approval_list` VALUES ('881310d099b240b5ac1ae8f010bc6198', 'f948c725636a4f3f9a4c7e3d39bc5d01', 'ImProductChangeDTO', 'admin', '2017-03-02 19:08:45', '1', '');
INSERT INTO `sys_approval_list` VALUES ('9357c2e0904a4f3284d991e4603609b9', '', 'AgentPointsChangeDTO', 'admin', '2017-03-14 09:17:16', '0', '1');
INSERT INTO `sys_approval_list` VALUES ('940cf88b995c4fd6a096892845c10e8f', '8167f402966c464e906cfdf9385d5295', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:55:40', '0', 'stestfdsa');
INSERT INTO `sys_approval_list` VALUES ('947712880d22407a8d59ea4d954317d3', '6427944f86d040f8bd9feaf99412d611', 'MgOrgRegisterDTO', 'admin', '2017-02-27 17:07:13', '99', 'WWWWW');
INSERT INTO `sys_approval_list` VALUES ('948caab1005b4396803366c986229a5d', '1530ad7ba0584d048e335581ce6d02b1', 'MmsInfoDTO', 'admin', '2017-03-14 11:56:13', '0', '');
INSERT INTO `sys_approval_list` VALUES ('94fa3590fc1648a3b76b76fb7cd4f575', '169684531a4d4e788787b7863b18119d', 'MmsPointsChangeDTO', 'admin', '2017-03-10 17:12:37', '1', '');
INSERT INTO `sys_approval_list` VALUES ('9646fb557cd84eaabbff86632e4a70a0', 'e031579252e94ec5b6a23804aadd7eed', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:32:56', '1', '');
INSERT INTO `sys_approval_list` VALUES ('96afe5b4a83340d88f3f15670398b86b', '7f841b32546a470f863dc6029017b1c2', 'SysAuthDTO', 'admin', '2017-03-16 09:20:59', '0', '');
INSERT INTO `sys_approval_list` VALUES ('988ed6343885439ea77a1778376975d4', '2529e92cbb3d4588978501b698d58c1d', 'AgentPointsChangeDTO', 'admin', '2017-03-14 10:43:00', '1', '');
INSERT INTO `sys_approval_list` VALUES ('9a0b8a7f6c454bd399ade43ebb75b9a0', '4d902e707a3d458fba4b3b66d040829f', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:31:16', '1', '');
INSERT INTO `sys_approval_list` VALUES ('9b1de30b472e4545bef3771e29753cb3', '9bb5d4fcd65e415886db2930c492cfcf', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:58:51', '0', 'afdsadfsa');
INSERT INTO `sys_approval_list` VALUES ('9b6d52b51c204329b8fde7666e1d8d83', '38b18de2453041c4ad46b86b18cd642a', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:16:30', '2', '');
INSERT INTO `sys_approval_list` VALUES ('9ec7ed5d13014df581ea1c1955e3549a', '17705850af12465ba5473c4d6b1affa8', 'ImProductChangeDTO', '17f1469a23f14a2b8ea1a94d8feabefd', '2017-03-07 19:01:54', '1', '');
INSERT INTO `sys_approval_list` VALUES ('9f204e2aa5344d10abf190b0e498667b', '6427944f86d040f8bd9feaf99412d611', 'MgOrgRegisterDTO', 'admin', '2017-02-27 17:07:25', '1', '');
INSERT INTO `sys_approval_list` VALUES ('9fc1d22f1f7f41d7a479e02cb881b629', 'bc02e728d9d546c384c21d8eb90aba87', 'MmsPointsChangeDTO', 'admin', '2017-03-14 13:35:15', '0', 'test');
INSERT INTO `sys_approval_list` VALUES ('a0d6a1334f80421a916c335bc29000fc', '7a3422890ab547e78de73c4c375b3018', 'MgOrgRegisterDTO', 'admin', '2017-03-01 15:55:19', '99', 'afdsa');
INSERT INTO `sys_approval_list` VALUES ('a15ec1f928e5476596a8dce758729d09', 'e031579252e94ec5b6a23804aadd7eed', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:32:18', '1', '');
INSERT INTO `sys_approval_list` VALUES ('a199af88057a42778dafc8c2beefebeb', '', 'AgentPointsChangeDTO', 'admin', '2017-03-14 09:17:18', '0', '1');
INSERT INTO `sys_approval_list` VALUES ('a3d5f1c6bfc14f85894d45c4b67133ba', 'cc72d0bd1ac84cdabecdb1804c2ca07a', 'MgOrgAuthDTO', 'admin', '2017-02-28 17:32:05', '1', '');
INSERT INTO `sys_approval_list` VALUES ('a4577e2c1eab447c92bc6b2612de5cce', '91e3d3d49f1a4325b6a0d92105e62a40', 'AgentPointsChangeDTO', 'admin', '2017-03-14 09:44:15', '1', '');
INSERT INTO `sys_approval_list` VALUES ('a4a870cc0b4249eca94fc01950939928', 'd2e4bd29b8c945b1bd3187670e52d0d1', 'AgentPointsChangeDTO', 'admin', '2017-03-14 09:41:49', '1', '');
INSERT INTO `sys_approval_list` VALUES ('a661443be8cc45a0b6a6d0d665ca9d3b', '0e48876593c24508bf6ede0adea89c3b', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:10:44', '1', '');
INSERT INTO `sys_approval_list` VALUES ('a688f4e4a2314cc8aef3ede3e2c1efe4', '9da357e6c7e24cab95711739622f39c2', 'AgentPointsChangeDTO', 'admin', '2017-03-14 10:18:49', '1', '');
INSERT INTO `sys_approval_list` VALUES ('a7b4fa62f2184f3aacc3a7db0d230771', '4d902e707a3d458fba4b3b66d040829f', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:27:40', '1', '');
INSERT INTO `sys_approval_list` VALUES ('a8d51c13d0624872a76cc4b7d287d879', 'a64f306d77d8486d87f237aca19a99a0', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:11:26', '99', '');
INSERT INTO `sys_approval_list` VALUES ('a95fdb3591334243a0cd13695f101e6b', 'b7584c4cc6cd45269c241fbf644bba32', 'MgOrgRegisterDTO', 'admin', '2017-02-28 10:09:03', '99', 'Test');
INSERT INTO `sys_approval_list` VALUES ('a9a8222c164642a5be394c4881e23b4c', 'dd32d90c2ad44af982dd4909d7550a3a', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:52:26', '0', 'abb');
INSERT INTO `sys_approval_list` VALUES ('aaf232ba2ad54e65a19d46c830c6e396', '2de4d1b1b33f48bcbe120b459c8744f3', 'MgOrgRegisterDTO', 'admin', '2017-03-03 10:42:08', '1', '');
INSERT INTO `sys_approval_list` VALUES ('ab53ac34d8274cb8822bfc1e927b6a0d', 'b4e48ed392374296a47783503187149e', 'ImProductChangeDTO', 'admin', '2017-03-02 17:54:19', '1', '');
INSERT INTO `sys_approval_list` VALUES ('abc7de3d52254e98ad28efedf71a65fb', '2e862538fe10468f9e736cc018d8457c', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:08:02', '0', 'testfdsafs');
INSERT INTO `sys_approval_list` VALUES ('acaffdbbcfe6422f9f6bf62a5d269491', '5bb2696231d84d25ab4eccd54863368c', 'MmsPointsChangeDTO', 'admin', '2017-03-14 10:43:52', '1', '');
INSERT INTO `sys_approval_list` VALUES ('acc16ea2e80d42ddb89efdc9238dd3a7', '5b30cbeff8be4be5ab69c3ec44a6f12f', 'ImProductChangeDTO', 'admin', '2017-03-10 15:42:44', '1', '');
INSERT INTO `sys_approval_list` VALUES ('ad2387f95b8e4d4892c9b1f5648ec960', '4d902e707a3d458fba4b3b66d040829f', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:30:49', '99', '');
INSERT INTO `sys_approval_list` VALUES ('aedcc07edeb34852971e97579da310b6', '38b18de2453041c4ad46b86b18cd642a', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:01:59', '1', '');
INSERT INTO `sys_approval_list` VALUES ('af3d3ad94ece4d65aa1974063c324a50', '3013e1cf791a43f99835ae06ecd9a12b', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:10:41', '0', 'fffffff');
INSERT INTO `sys_approval_list` VALUES ('b17e658f3e1046ee81eb8ff17e0175c8', 'a9bd7c948e6c43f5ac074c41e000af65', 'AgentPointsChangeDTO', 'admin', '2017-03-16 14:16:46', '1', '');
INSERT INTO `sys_approval_list` VALUES ('b2dec92ad6a44c14b3cb0d75bb55079e', '13a85ceb41e24fe1b20f0b25b995b596', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:59:02', '0', 'fdsafdsa');
INSERT INTO `sys_approval_list` VALUES ('b33e4e88160343ceaa4d0e3c0f89dcb2', 'e031579252e94ec5b6a23804aadd7eed', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:32:44', '1', '');
INSERT INTO `sys_approval_list` VALUES ('b387af91daf54e2ca8d10c2d68e7d53a', '38b18de2453041c4ad46b86b18cd642a', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:27:21', '2', '');
INSERT INTO `sys_approval_list` VALUES ('b50387cbe9c74eb0b5b062c8f1d072fd', '954a866487c249d4bac49782b707a39c', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:44:44', '0', 'aa');
INSERT INTO `sys_approval_list` VALUES ('b6d95f24ffb04fef80aa4cb23762603a', '954a866487c249d4bac49782b707a39c', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:45:08', '1', '');
INSERT INTO `sys_approval_list` VALUES ('b7b6d45ea22a468bb50eae79bffe3b83', '348cc8382cb6401bb86d3612a9b1528e', 'MgOrgRegisterDTO', 'admin', '2017-02-28 10:03:38', '2', '');
INSERT INTO `sys_approval_list` VALUES ('b94fc58f820242cb998119b0275b4c38', 'e1c01d9a97684a16891bcbc02ff43455', 'ImProductChangeDTO', 'admin', '2017-03-02 11:54:06', '1', '');
INSERT INTO `sys_approval_list` VALUES ('bbdffebf39934261bf66a40482562208', '69b615ffe91a4b86b991a2e141f3987f', 'AgentPointsChangeDTO', 'admin', '2017-03-14 10:39:51', '0', 'aa');
INSERT INTO `sys_approval_list` VALUES ('bc46f56e88f044ce97a536151d739b97', '169684531a4d4e788787b7863b18119d', 'MmsPointsChangeDTO', 'admin', '2017-03-10 17:12:39', '2', '');
INSERT INTO `sys_approval_list` VALUES ('bd3a74f5a93b4b6eb69d65255508bb8c', '2529e92cbb3d4588978501b698d58c1d', 'AgentPointsChangeDTO', 'admin', '2017-03-14 10:42:44', '0', 'All');
INSERT INTO `sys_approval_list` VALUES ('bf97317bda1d4bef858b27a221e6a41a', 'a64f306d77d8486d87f237aca19a99a0', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:18:52', '1', '');
INSERT INTO `sys_approval_list` VALUES ('c18dc036896a4ebfa63e18bd419902ff', '057419c9f6e14583b6b6c60addc4cc8a', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:55:57', '0', 'stestfdsafdsa');
INSERT INTO `sys_approval_list` VALUES ('c55a39dc5fcb47b4879d12e0b4f4c7d2', '280f5c91b3264129967bbe07ea782aaa', 'MgOrgAuthDTO', 'admin', '2017-03-14 15:22:06', '0', '');
INSERT INTO `sys_approval_list` VALUES ('c7829892f5a343d19a09462412031ac5', 'a36b8767ceba40e7bb1af85bf77fd114', 'MgOrgAuthDTO', 'admin', '2017-03-11 10:31:13', '2', '');
INSERT INTO `sys_approval_list` VALUES ('c789808ed5784b7c892b020bdb07685e', '4d902e707a3d458fba4b3b66d040829f', 'MgOrgRegister', 'admin', '2017-02-28 11:33:21', '2', '');
INSERT INTO `sys_approval_list` VALUES ('c83cfc35239046f1b5ef4ef457fd78bb', 'fc1dd390f7e949ef9d43e314baa0e4ce', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:52:39', '0', 'da');
INSERT INTO `sys_approval_list` VALUES ('c88050b2c20c42cd95d329109fa96632', '300c913659dd4561a044bd8177279f02', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:06:37', '1', '');
INSERT INTO `sys_approval_list` VALUES ('ca53a9d661864593adc89fc091e964cf', '', 'AgentPointsChangeDTO', 'admin', '2017-03-14 09:14:54', '0', '1');
INSERT INTO `sys_approval_list` VALUES ('caac7d57c61240f78545019cdf428d43', '2193be6177c2417ca96569928a742bb3', 'MgOrgAuthDTO', 'admin', '2017-03-03 10:42:46', '2', '');
INSERT INTO `sys_approval_list` VALUES ('cf904d4cd08b40db8b51333b44ad4c67', 'ce2a16d0a97b4238976b8d6d2c13c56f', 'MgOrgRegisterDTO', 'admin', '2017-02-27 15:33:29', '99', 'Test');
INSERT INTO `sys_approval_list` VALUES ('cfb8ed4a6ff1457490338c4f52608d82', '08502051bdf346de8b06a71daa77a075', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:27:48', '0', 'fdsaf');
INSERT INTO `sys_approval_list` VALUES ('d095f7b0f66c437db93bee89c77a571a', '6427944f86d040f8bd9feaf99412d611', 'MgOrgRegisterDTO', 'admin', '2017-02-27 17:07:02', '1', '');
INSERT INTO `sys_approval_list` VALUES ('d1a31565d9294982a24dc73a47db4671', '69b615ffe91a4b86b991a2e141f3987f', 'AgentPointsChangeDTO', 'admin', '2017-03-14 10:42:16', '1', '');
INSERT INTO `sys_approval_list` VALUES ('d379550504144545a35085e84820f035', 'a29bc03913884200b36af5851bb97a24', 'MmsPointsChangeDTO', 'admin', '2017-03-16 11:37:02', '0', 'Report');
INSERT INTO `sys_approval_list` VALUES ('d40638a6e2bd40feb9c9c85c6001c173', '6c9f1c066a6c49aaa2c4cec375436a29', 'ImProductChangeDTO', 'admin', '2017-03-02 19:09:09', '2', 'testfdgsdfgfds');
INSERT INTO `sys_approval_list` VALUES ('d413f3b1d3864ff6bdf8e11928cc8775', 'a64f306d77d8486d87f237aca19a99a0', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:17:02', '99', '');
INSERT INTO `sys_approval_list` VALUES ('d415597bd71249789de12b7d406e2de3', '815cba185d064207aae793f841ad5bc7', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:07:43', '1', '');
INSERT INTO `sys_approval_list` VALUES ('d5ce7f2eb6ee4298bd14b7679ec4c77c', 'a64f306d77d8486d87f237aca19a99a0', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:11:20', '1', '');
INSERT INTO `sys_approval_list` VALUES ('d7d2d2bc28d94fdf9cffbf875f2286d9', '4d902e707a3d458fba4b3b66d040829f', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:33:06', '1', '');
INSERT INTO `sys_approval_list` VALUES ('d8522185a7df425ebdb16808184bcda8', '09b4e5ee2baa44ec8b6ba5dab504fe6a', 'ImProductChangeDTO', '00355a20-ffbb-11e6-a606-00163e028d22', '2017-03-04 09:27:42', '2', '2');
INSERT INTO `sys_approval_list` VALUES ('da2c12928e4642ee96b3fc77b44e04d9', 'd8897ac4d4a8412a917c2cae0eeef56f', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:59:14', '0', 'fdsafsd');
INSERT INTO `sys_approval_list` VALUES ('dab32d727ff74d2eb7b320163909a21e', 'a64f306d77d8486d87f237aca19a99a0', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:18:56', '99', 'gge');
INSERT INTO `sys_approval_list` VALUES ('e016a6653a5e45088509356ae8e6ae73', '7a3422890ab547e78de73c4c375b3018', 'MgOrgRegisterDTO', 'admin', '2017-03-01 15:55:33', '2', '');
INSERT INTO `sys_approval_list` VALUES ('e02c80cd0a9842c893486ba6ae01ed7f', '348cc8382cb6401bb86d3612a9b1528e', 'MgOrgRegisterDTO', 'admin', '2017-02-28 09:59:54', '1', '');
INSERT INTO `sys_approval_list` VALUES ('e3f419b2e84d4fd0a6b4e63803b2e269', '38b18de2453041c4ad46b86b18cd642a', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:06:16', '99', '');
INSERT INTO `sys_approval_list` VALUES ('e43cc532d5cb4e44bc9c2bc535a12068', 'c00e01f8a7c743149735ba65c7d014e9', 'SysAuthDTO', 'admin', '2017-03-16 09:22:19', '0', '');
INSERT INTO `sys_approval_list` VALUES ('eb6f7eee9e2444029f383cde5a944412', '031e83ccc1b54d5584546f7637d23320', 'ImProductChangeDTO', '00355a20-ffbb-11e6-a606-00163e028d22', '2017-03-04 09:36:43', '1', '');
INSERT INTO `sys_approval_list` VALUES ('eda4fdc696fa402ea86fbe9d60967431', '461e5070982b465cb0e1b5774372167d', 'MmsPointsChangeDTO', 'admin', '2017-03-10 17:08:35', '1', '');
INSERT INTO `sys_approval_list` VALUES ('f0495fe931034996903f48352cbddaf9', '837e9db99ae545c3965883713646d745', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:06:20', '2', '');
INSERT INTO `sys_approval_list` VALUES ('f19c94fa1b6b45d98a4f567c2203cb80', '08502051bdf346de8b06a71daa77a075', 'AgentPointsChangeDTO', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:28:03', '1', '');
INSERT INTO `sys_approval_list` VALUES ('f2ead5c1181849bfbd084545b049dc74', 'e031579252e94ec5b6a23804aadd7eed', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:32:48', '99', 'dd');
INSERT INTO `sys_approval_list` VALUES ('f4424f3c96b7483d89782db08a6f2e02', 'ff2fba3f59f54dcba0a3fe5364952906', 'AgentPointsChangeDTO', 'admin', '2017-03-14 09:20:10', '1', '');
INSERT INTO `sys_approval_list` VALUES ('f6862ef50c3140388fe61bb8e3ce2da2', 'ce2a16d0a97b4238976b8d6d2c13c56f', 'MgOrgRegisterDTO', 'admin', '2017-02-27 15:38:17', '1', '');
INSERT INTO `sys_approval_list` VALUES ('f80c563cd7554f01b1ad1359004ec174', '5bb2696231d84d25ab4eccd54863368c', 'MmsPointsChangeDTO', 'admin', '2017-03-14 09:46:14', '0', 'test');
INSERT INTO `sys_approval_list` VALUES ('fbd34d1f31464028a42d97d7eb7bbd8d', '80e77407cc934a1a8049cf187d1ff294', 'AgentPointsChangeDTO', 'e7e3466e-0247-11e7-a606-00163e028d22', '2017-03-14 18:37:05', '1', '');
INSERT INTO `sys_approval_list` VALUES ('fc5a6ad76d474745b3b0f7680edcc028', 'd94225f363454f3d8c4a600eaad972f5', 'SysRoleDTO', '', '2017-03-14 18:19:20', '0', '');
INSERT INTO `sys_approval_list` VALUES ('fcbdd73854f24484a2a89ed662b2e60e', '815cba185d064207aae793f841ad5bc7', 'MgOrgRegisterDTO', 'admin', '2017-02-28 11:07:46', '2', '');
INSERT INTO `sys_approval_list` VALUES ('fd6dbae04b9747e1b7e9785cf97a0f54', 'b4e48ed392374296a47783503187149e', 'ImProductChangeDTO', 'admin', '2017-03-02 19:05:13', '2', 'test');
INSERT INTO `sys_approval_list` VALUES ('fdb99b61f1ba4ee18e44fb1592af0a81', '38b18de2453041c4ad46b86b18cd642a', 'MgOrgAuthDTO', 'admin', '2017-02-28 16:27:04', '1', '');
INSERT INTO `sys_approval_list` VALUES ('fe07118007a9457e8d55eaf5de9fdb34', 'bc02e728d9d546c384c21d8eb90aba87', 'MmsPointsChangeDTO', 'admin', '2017-03-14 13:39:26', '1', '');
INSERT INTO `sys_approval_list` VALUES ('fe5f81079b664a05ad308b4469ae2ecd', '6c9f1c066a6c49aaa2c4cec375436a29', 'ImProductChangeDTO', 'admin', '2017-03-02 19:09:07', '1', '');
INSERT INTO `sys_approval_list` VALUES ('fee25c03678b46f1bb9f4ee6a4c94145', '58a7a53ae4c84b20b320bbafbdd56f19', 'MgOrgAuthDTO', 'admin', '2017-02-28 17:31:26', '1', '');
INSERT INTO `sys_approval_list` VALUES ('ff2c1670ded84377b59b8324b78e331a', '280f5c91b3264129967bbe07ea782aaa', 'MgOrgAuthDTO', 'admin', '2017-03-14 15:22:15', '2', '');
INSERT INTO `sys_approval_list` VALUES ('fffe42d6bfcf4d0cbb1c46faf1f58455', '', 'AgentPointsChangeDTO', 'admin', '2017-03-14 09:17:15', '0', '1');

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
INSERT INTO `sys_auth` VALUES ('0157b41dc00345aeb0f6a8cebf57a18e', 'e6ee26506c99417eb2535acf7f27a480', '账户信息', '1', '/admin/personnel/info', '', '', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('02a18777e6774e5482488297fcf26653', '2', '新增', '2', 'auth/define/save.do', 'fa-plus', 'add', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('0575c843bad7482ba7eb9ecd6269d1f5', 'c3524525c489444aac421df515c63873', '库存变更', '1', '/admin/im/stock-change', '', '', '1', null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('06392a0475294d5da9cfb2142623709a', '1bfcf5371d7146f3ab7b77f09d3dec42', '删除', '2', 'agent/info/points-change/remove.do', 'remove', 'remove', '1', null, null, null, '4');
INSERT INTO `sys_auth` VALUES ('0694283e392b42a2869cdf8093cbeb90', '0575c843bad7482ba7eb9ecd6269d1f5', '删除', '2', 'im/product/change/remove.do', 'fa-remove', 'remove', '1', null, null, null, '6');
INSERT INTO `sys_auth` VALUES ('0810f4564728470d96e6bc224e89305a', '0', '代理商系统', '1', '', '', 'agent', '1', null, null, null, '17');
INSERT INTO `sys_auth` VALUES ('0d14479342ed4f78b0b76ba9694c631e', '1bfcf5371d7146f3ab7b77f09d3dec42', '新增', '2', 'agent/info/points-change/save.do', 'fa-plus', 'add', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('1', '0', '平台管理', '1', '', 'fa fa-fw fa-life-saver', '', '-1', null, null, null, '10');
INSERT INTO `sys_auth` VALUES ('1096978102094137b78bebc1de645e65', '479852e16c834956b8b6c3b801ffd11c', '新增人员', '2', 'org/dept/role/user/save.do', 'fa-plus', 'addUser', '1', null, null, null, '7');
INSERT INTO `sys_auth` VALUES ('13439fc34d4b41c2b3f84a6770073692', '0', '客户管理', '1', '', '', '', '1', null, null, null, '14');
INSERT INTO `sys_auth` VALUES ('175ca305ff0b4055ba01269d1fa9aefe', '6c0310128a78465891977fe2125802e4', '新增', '2', 'mms/info/points-change/save.do', 'fa-plus', 'add', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('1bfcf5371d7146f3ab7b77f09d3dec42', '0810f4564728470d96e6bc224e89305a', '代理积分管理', '1', '/admin/agent/points-change', '', '', '1', null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('2', '1', '权限定义', '1', '/admin/mg/authDefine', '', '', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('258ecf13eecc49f18bea208dd6b9f00c', 'd3ecb27d914d427d95d4d8194b00d4ad', '否决', '2', 'mg/org/authBill/reject.do', 'fa-remove', 'reject', null, null, null, null, '5');
INSERT INTO `sys_auth` VALUES ('265ccb86e5d04e6e95161fa557f540c3', '9ac8a29efca547fb9d078f9b09f87872', '修改', '2', 'agent/info/save.do', 'fa-edit', 'mod', '1', null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('27d4b1bd06da4f319c7dfc4451676622', '1bfcf5371d7146f3ab7b77f09d3dec42', '提交', '2', 'agent/info/points-change/app.do', 'check', 'app', '1', null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('28d0694acd354be7ad1264cad548ce2e', '76737c29c36a4d449b50a58137504355', '删除', '2', 'mg/org/register/remove.do', 'fa-remove', 'remove', null, null, null, null, '99');
INSERT INTO `sys_auth` VALUES ('3373f0922103467c829b08788743dcf1', '0157b41dc00345aeb0f6a8cebf57a18e', '修改', '2', '', 'fa-edit', 'mod', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('3989deeb8c2f4066bf5c97c4d266b654', '6c0310128a78465891977fe2125802e4', '查看', '2', 'mms/info/points-change/save.do', 'fa-edit', 'mod', '1', null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('39b352a998a3499183295152e7e7e541', '1', '授权组织', '1', '/admin/mg/authOrg', '', '', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('3a5d809b46484cce85a7a18fb0445df5', '479852e16c834956b8b6c3b801ffd11c', '删除', '2', 'org/dept/remove.do', 'fa-remove', 'remove', '1', null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('3a625a5e5c3c409393e44ed5967d3624', '8f4c6add246641618de98a7812ce2874', '会员报表', '1', '', '', '', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('3c856ca262be4c09afd1aa66f372039d', '39b352a998a3499183295152e7e7e541', '修改', '2', 'org/save.do', 'fa-edit', 'mod', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('3e9dcacd655d4aabbf42a099b14927d8', 'acc32eaeb07f41b3990b8ad6ebcb4148', '修改', '2', 'mms/info/save.do', 'fa-edit', 'mod', '1', null, null, null, '2');
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
INSERT INTO `sys_auth` VALUES ('679e8bd02980479e963b82bf30673f1d', '9ac8a29efca547fb9d078f9b09f87872', '新增', '2', 'agent/info/save.do', 'fa-plus', 'add', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('67d5e55ab8cb4d5b93220645e6e85c99', '39b352a998a3499183295152e7e7e541', '权限保存', '2', 'org/auth/save', 'fa-save', 'save', null, null, null, null, '4');
INSERT INTO `sys_auth` VALUES ('6c0310128a78465891977fe2125802e4', '824b9dfc5bbb4ba9a21f86cb392eaa65', '积分管理', '1', '/admin/mms/points-change', '', '', '1', null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('6cf1391a9e3c4ac5af95534de51d7bd6', 'ba7aa68555d5474ca6a6e3a12ccd1afe', '新增', '2', 'im/product/book-in/save.do', 'fa-plus', 'add', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('6db97da52d0d494fa8cc81c59329b179', '2', '删除', '2', 'auth/define/remove.do', 'fa-remove', 'remove', null, null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('6f55a605da78479db8d53489b02b56f8', '67340c3f1b634546950bdb255e5982ac', '删除', '2', 'user/remove.do', 'fa-remove', 'remove', '1', null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('7030524f08a742649a9c5255199f797d', '0575c843bad7482ba7eb9ecd6269d1f5', '新增', '2', 'im/product/change/save.do', 'fa-plus', 'add', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('7118e0b350e14f7aa9715831e9cf16d3', '13439fc34d4b41c2b3f84a6770073692', '供应商信息', '1', '/admin/crm/sup', '', '', '1', null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('76737c29c36a4d449b50a58137504355', 'e666e48e9d8b44a0a34ff136bcf2ad14', '机构登记', '1', '/admin/mg/org/register', '', '', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('77885a6895b543059b135354d5f62fce', '0575c843bad7482ba7eb9ecd6269d1f5', '审核', '2', 'im/product/change/auth.do', 'fa-check', 'auth', '1', null, null, null, '4');
INSERT INTO `sys_auth` VALUES ('7d5f7d02ccc74bbf9ccd8fdef0c94a3a', '0575c843bad7482ba7eb9ecd6269d1f5', '提交', '2', 'im/product/change/app.do', 'fa-check', 'app', '1', null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('7e9a289b3597483a84c08bbe71077558', '7118e0b350e14f7aa9715831e9cf16d3', '修改', '2', 'crm/sup/save.do', 'fa-edit', 'mod', '1', null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('81064737ff3f4f0da71141ec42f366ce', '479852e16c834956b8b6c3b801ffd11c', '删除人员', '2', 'org/dept/role/user/remove.do', 'fa-remove', 'removeUser', '1', null, null, null, '8');
INSERT INTO `sys_auth` VALUES ('824b9dfc5bbb4ba9a21f86cb392eaa65', '0', '会员管理', '1', '', '', 'member', '1', null, null, null, '18');
INSERT INTO `sys_auth` VALUES ('869d5a2392b44c6ca61d49f8223e9483', '8f4c6add246641618de98a7812ce2874', '代理商报表', '1', '', '', '', '1', null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('8f4c6add246641618de98a7812ce2874', '0', '报表系统', '1', '', '', '', '1', null, null, null, '19');
INSERT INTO `sys_auth` VALUES ('8f8a71e10f5c46c695e8f1c2303a3b2f', '76737c29c36a4d449b50a58137504355', '提交', '2', 'mg/org/register/app.do', 'fa-check', 'app', null, null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('8fb8b57f988a49c39e7398f7e4a88f31', '479852e16c834956b8b6c3b801ffd11c', '新增', '2', 'org/dept/save.do', 'fa-plus', 'add', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('9ac8a29efca547fb9d078f9b09f87872', '0810f4564728470d96e6bc224e89305a', '代理商管理', '1', '/admin/agent/info', '', '', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('a15ae14869f04822849571fb6ada622b', '0', '人事管理', '1', '', '', '', '1', '', null, null, '12');
INSERT INTO `sys_auth` VALUES ('a406460ce4ef4fa1a7743c724613feda', '67340c3f1b634546950bdb255e5982ac', '修改', '2', 'user/save.do', 'fa-edit', 'mod', '1', null, null, null, null);
INSERT INTO `sys_auth` VALUES ('a4ca0b3ac0a54e23a3e295380c4e1c79', '76737c29c36a4d449b50a58137504355', '查看', '2', 'mg/org/register/save.do', 'fa-edit', 'mod', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('a83a382e77024cc595a7ccf13c98d089', '6c0310128a78465891977fe2125802e4', '删除', '2', 'mms/info/points-change/remove.do', 'fa-remove', 'remove', '1', null, null, null, '6');
INSERT INTO `sys_auth` VALUES ('aaf82f26159f426581e59355c7b610b1', '39b352a998a3499183295152e7e7e541', '删除', '2', 'org/remove.do', 'fa-remove', 'remove', null, null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('acc32eaeb07f41b3990b8ad6ebcb4148', '824b9dfc5bbb4ba9a21f86cb392eaa65', '会员资料', '1', '/admin/mms/info', '', 'memberInfo', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('ad9d8b44b586456180a751fb87db8db2', '2', '保存', '2', 'auth/define/save.do', 'fa-mod', 'mod', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('b5545655c63642338928bb9476832c29', 'acc32eaeb07f41b3990b8ad6ebcb4148', '新增', '2', 'mms/info/save.do', 'fa-plus', 'add', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('b8e10a35c90e4b5596a5eed52397373d', '67340c3f1b634546950bdb255e5982ac', '新增', '2', 'user/save.do', 'fa-plus', 'add', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('ba7aa68555d5474ca6a6e3a12ccd1afe', 'c3524525c489444aac421df515c63873', '产品信息', '1', '/admin/im/book-in', '', '', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('bbf82dfc30d54277a32d50189ce66030', '479852e16c834956b8b6c3b801ffd11c', '新增职务', '2', 'org/dept/role/save.do', 'fa-plus', 'addRole', '1', null, null, null, '4');
INSERT INTO `sys_auth` VALUES ('c00e01f8a7c743149735ba65c7d014e9', '869d5a2392b44c6ca61d49f8223e9483', '代理商积分统计', '1', '/admin/report/agent/info', '', '', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('c3524525c489444aac421df515c63873', '0', '库存管理', '1', '', '', '', '1', null, null, null, '15');
INSERT INTO `sys_auth` VALUES ('c9228a9899dc4f98b576a1f0e049e175', '39b352a998a3499183295152e7e7e541', '新增', '2', 'org/save.do', 'fa-plus', 'add', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('ce09b46ede8946f0bc5003c19987b363', '0575c843bad7482ba7eb9ecd6269d1f5', '否决', '2', 'im/product/change/reject.do', 'fa-remove', 'reject', '1', null, null, null, '5');
INSERT INTO `sys_auth` VALUES ('d03715b26c894a59a99fc64351b2013a', '479852e16c834956b8b6c3b801ffd11c', '权限配置', '2', 'org/dept/role/save.do', 'fa-edit', 'modRole', '1', null, null, null, '5');
INSERT INTO `sys_auth` VALUES ('d3ecb27d914d427d95d4d8194b00d4ad', 'e666e48e9d8b44a0a34ff136bcf2ad14', '模组授权', '1', '/admin/mg/org/auth', '', '', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('d7ac735162954c9382936183dd2eb465', '6374c1e4f3ac40da80b8f86b42d855a2', '修改', '2', 'crm/cus/save.do', 'fa-edit', 'mod', '1', null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('d7ea92ab47cb41b98cde8c0f31a1b004', 'd3ecb27d914d427d95d4d8194b00d4ad', '提交', '2', 'mg/org/authBill/app.do', 'fa-check', 'app', null, null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('da8bf91990b44726bfa4ea7a05a4499f', 'ba7aa68555d5474ca6a6e3a12ccd1afe', '修改', '2', 'im/product/book-in/save.do', 'fa-edit', 'mod', '1', null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('dc920fce1934448fad21bc5f15cc2e37', 'd3ecb27d914d427d95d4d8194b00d4ad', '查看', '2', 'mg/org/authBill/save.do', 'fa-edit', 'mod', null, null, null, null, '2');
INSERT INTO `sys_auth` VALUES ('e4f75e6814d54ceeb23376a6d9342a84', '6c0310128a78465891977fe2125802e4', '提交', '2', 'mms/info/points-change/app.do', 'fa-check', 'app', '1', null, null, null, '3');
INSERT INTO `sys_auth` VALUES ('e50a1c4f4fcd48a89d2428933741426a', '76737c29c36a4d449b50a58137504355', '审核', '2', 'mg/org/register/auth.do', 'fa-check', 'auth', null, null, null, null, '4');
INSERT INTO `sys_auth` VALUES ('e666e48e9d8b44a0a34ff136bcf2ad14', '0', '机构授权', '1', '', '', '', '-1', null, null, null, '13');
INSERT INTO `sys_auth` VALUES ('e6ee26506c99417eb2535acf7f27a480', '0', '个人设置', '1', '', '', '', '1', null, null, null, '16');
INSERT INTO `sys_auth` VALUES ('e9d19c4e1a6342e88a74f669a5da8328', 'd3ecb27d914d427d95d4d8194b00d4ad', '新增', '2', 'mg/org/authBill/save.do', 'fa-plus', 'add', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('f1bc8030d1484e6bb212e5d45a9ce450', '7118e0b350e14f7aa9715831e9cf16d3', '新增', '2', 'crm/sup/save.do', 'fa-plus', 'add', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('f6108f38eb6c47979bc1ad2a71659dbb', '3a625a5e5c3c409393e44ed5967d3624', '会员积分统计', '1', '/admin/report/mms/info', '', '', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('f70012acb9f940bbb583fcd63e9af5ab', '0', '系统管理', '1', '', '', '', '1', null, null, null, '11');
INSERT INTO `sys_auth` VALUES ('f7adb4149aa0406d891fec5be6e151e3', '479852e16c834956b8b6c3b801ffd11c', '删除职务', '2', 'org/dept/role/remove.do', 'fa-remove', 'removeRole', '1', null, null, null, '6');
INSERT INTO `sys_auth` VALUES ('fafa0ee12ddf4e6598e816935c6ee168', '76737c29c36a4d449b50a58137504355', '新增', '2', 'mg/org/register/save.do', 'fa-plus', 'add', null, null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('fec3e2fc717541c2ab24f05e37aacae3', '6374c1e4f3ac40da80b8f86b42d855a2', '新增', '2', 'crm/cus/save.do', 'fa-plus', 'add', '1', null, null, null, '1');
INSERT INTO `sys_auth` VALUES ('ff27a7c775814b43ad4ef78ac94cb0cd', '1bfcf5371d7146f3ab7b77f09d3dec42', '查看', '2', 'agent/info/points-change/save.do', 'fa-edit', 'mod', '1', null, null, null, '2');

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
INSERT INTO `sys_dept` VALUES ('0c9613a7f4024e01b944ea1809c3120b', '销售部', '', 'b6a7ee64bcc04255a3f348380e2df245');
INSERT INTO `sys_dept` VALUES ('1dae1478613342f6a1199c27c412349a', '品质部', '', 'b6a7ee64bcc04255a3f348380e2df245');
INSERT INTO `sys_dept` VALUES ('22b3b8c6461d4d979aa68a52919323ac', '库管部', 'a30002db053a4b7baf1f37488b59a1c5', 'a30002db053a4b7baf1f37488b59a1c5');
INSERT INTO `sys_dept` VALUES ('2f2d4a28830044a7a81e18947a453648', '人事部', '', 'b6a7ee64bcc04255a3f348380e2df245');
INSERT INTO `sys_dept` VALUES ('34fc670e952c41418ed19d98c4e00df4', '人事部', 'b6a7ee64bcc04255a3f348380e2df245', 'b6a7ee64bcc04255a3f348380e2df245');
INSERT INTO `sys_dept` VALUES ('48aa7c74be754d758655e7156c59b72f', '设计部', 'd19a47525f134dd4b99fca6d9b867f98', 'b6a7ee64bcc04255a3f348380e2df245');
INSERT INTO `sys_dept` VALUES ('53d8d1f58a014480a843df89edd9c822', '项目部', '', 'b6a7ee64bcc04255a3f348380e2df245');
INSERT INTO `sys_dept` VALUES ('7b2dad54ce084faf87a0f027dbcf9aec', '代理商', 'a30002db053a4b7baf1f37488b59a1c5', 'a30002db053a4b7baf1f37488b59a1c5');
INSERT INTO `sys_dept` VALUES ('8e65a90f61c24f7e8e4ab06b21bae29b', '仓库部', '', 'b6a7ee64bcc04255a3f348380e2df245');
INSERT INTO `sys_dept` VALUES ('8f0e49cf3d784bfba92df5790d520741', 'JAVA部门', 'e2ff5e22cfe94054932ffca05e145934', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `sys_dept` VALUES ('95857a7225794f95ba5dec77094c69fa', '采购部', '', 'b6a7ee64bcc04255a3f348380e2df245');
INSERT INTO `sys_dept` VALUES ('9788ccce82b34a6dbda2677cb2bd8f0a', '售后服务部', '', 'b6a7ee64bcc04255a3f348380e2df245');
INSERT INTO `sys_dept` VALUES ('a0a90d21cf3145769e4ac34f8044a17c', '代理商', 'e2ff5e22cfe94054932ffca05e145934', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `sys_dept` VALUES ('a1fbb5f457c646a19d810404a7ab2efc', '客户部', 'a30002db053a4b7baf1f37488b59a1c5', 'a30002db053a4b7baf1f37488b59a1c5');
INSERT INTO `sys_dept` VALUES ('fb60f47e162c49f69c1dda2e9f0b3fa8', '生产部', '80f3d2769ba24ff493c101d08f4a65ab', 'b6a7ee64bcc04255a3f348380e2df245');

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
INSERT INTO `sys_dic` VALUES ('-204', '用户失效', '-204', 'msg');
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
INSERT INTO `sys_dic` VALUES ('-601', '积分数不够,请充值.', '-601', 'msg');
INSERT INTO `sys_dic` VALUES ('status-1', '无效', '-1', 'status');
INSERT INTO `sys_dic` VALUES ('status0', '新建', '0', 'status');
INSERT INTO `sys_dic` VALUES ('status1', '已提交', '1', 'status');
INSERT INTO `sys_dic` VALUES ('status10', '有效', '10', 'status');
INSERT INTO `sys_dic` VALUES ('status11', '挂失', '11', 'status');
INSERT INTO `sys_dic` VALUES ('status2', '已审核', '2', 'status');
INSERT INTO `sys_dic` VALUES ('status99', '已否决', '99', 'status');
INSERT INTO `sys_dic` VALUES ('validStatus-1', '无效', '-1', 'validStatus');
INSERT INTO `sys_dic` VALUES ('validStatus1', '有效', '1', 'validStatus');

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
INSERT INTO `sys_org` VALUES ('a30002db053a4b7baf1f37488b59a1c5', 'demo公司', 'demo', 'demo地址', 'demo联系人', '13902601727', '2');
INSERT INTO `sys_org` VALUES ('b6a7ee64bcc04255a3f348380e2df245', '东莞祥信服饰有限公司', 'xiang', '东莞大井头', '黄先生', '13580828162', '2');
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
INSERT INTO `sys_org_auth` VALUES ('004dd0f8-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', '1096978102094137b78bebc1de645e65');
INSERT INTO `sys_org_auth` VALUES ('004ff465-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_org_auth` VALUES ('005071f7-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_org_auth` VALUES ('00510d8f-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_org_auth` VALUES ('00534448-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', '672bf70518114cbfa03e809489f3ec43');
INSERT INTO `sys_org_auth` VALUES ('00539838-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', '67340c3f1b634546950bdb255e5982ac');
INSERT INTO `sys_org_auth` VALUES ('005521e3-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', '6f55a605da78479db8d53489b02b56f8');
INSERT INTO `sys_org_auth` VALUES ('0057d8f1-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `sys_org_auth` VALUES ('00586914-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_org_auth` VALUES ('0058bc71-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', 'a15ae14869f04822849571fb6ada622b');
INSERT INTO `sys_org_auth` VALUES ('00591ea5-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', 'a406460ce4ef4fa1a7743c724613feda');
INSERT INTO `sys_org_auth` VALUES ('005aab2c-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', 'b8e10a35c90e4b5596a5eed52397373d');
INSERT INTO `sys_org_auth` VALUES ('005b336f-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_org_auth` VALUES ('005ca85c-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_org_auth` VALUES ('00604179-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_org_auth` VALUES ('006069a0-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_org_auth` VALUES ('14662934-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', '0575c843bad7482ba7eb9ecd6269d1f5');
INSERT INTO `sys_org_auth` VALUES ('14662cbc-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', '0694283e392b42a2869cdf8093cbeb90');
INSERT INTO `sys_org_auth` VALUES ('14662d7f-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', '13439fc34d4b41c2b3f84a6770073692');
INSERT INTO `sys_org_auth` VALUES ('14662e09-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', '6374c1e4f3ac40da80b8f86b42d855a2');
INSERT INTO `sys_org_auth` VALUES ('14662e8b-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', '664354eb5aea4a00853ddb18dc68ebbd');
INSERT INTO `sys_org_auth` VALUES ('14662f0d-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', '6cf1391a9e3c4ac5af95534de51d7bd6');
INSERT INTO `sys_org_auth` VALUES ('14662f88-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', '7030524f08a742649a9c5255199f797d');
INSERT INTO `sys_org_auth` VALUES ('14663004-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', '7118e0b350e14f7aa9715831e9cf16d3');
INSERT INTO `sys_org_auth` VALUES ('14663877-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', '77885a6895b543059b135354d5f62fce');
INSERT INTO `sys_org_auth` VALUES ('14663955-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', '7d5f7d02ccc74bbf9ccd8fdef0c94a3a');
INSERT INTO `sys_org_auth` VALUES ('146639ed-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', '7e9a289b3597483a84c08bbe71077558');
INSERT INTO `sys_org_auth` VALUES ('14663be8-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', 'ba7aa68555d5474ca6a6e3a12ccd1afe');
INSERT INTO `sys_org_auth` VALUES ('14663caa-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', 'c3524525c489444aac421df515c63873');
INSERT INTO `sys_org_auth` VALUES ('14663d31-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', 'ce09b46ede8946f0bc5003c19987b363');
INSERT INTO `sys_org_auth` VALUES ('14663db7-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', 'd7ac735162954c9382936183dd2eb465');
INSERT INTO `sys_org_auth` VALUES ('14663e36-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', 'da8bf91990b44726bfa4ea7a05a4499f');
INSERT INTO `sys_org_auth` VALUES ('14663ebc-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', 'f1bc8030d1484e6bb212e5d45a9ce450');
INSERT INTO `sys_org_auth` VALUES ('14663f41-ffbb-11e6-a606-00163e028d22', 'b6a7ee64bcc04255a3f348380e2df245', 'fec3e2fc717541c2ab24f05e37aacae3');
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
INSERT INTO `sys_org_auth` VALUES ('4252af50-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '0157b41dc00345aeb0f6a8cebf57a18e');
INSERT INTO `sys_org_auth` VALUES ('4252b400-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '0575c843bad7482ba7eb9ecd6269d1f5');
INSERT INTO `sys_org_auth` VALUES ('4252b666-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '06392a0475294d5da9cfb2142623709a');
INSERT INTO `sys_org_auth` VALUES ('4252b820-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '0694283e392b42a2869cdf8093cbeb90');
INSERT INTO `sys_org_auth` VALUES ('4252be30-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '0810f4564728470d96e6bc224e89305a');
INSERT INTO `sys_org_auth` VALUES ('4252c136-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '0d14479342ed4f78b0b76ba9694c631e');
INSERT INTO `sys_org_auth` VALUES ('4252c42f-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '1096978102094137b78bebc1de645e65');
INSERT INTO `sys_org_auth` VALUES ('4252c571-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '13439fc34d4b41c2b3f84a6770073692');
INSERT INTO `sys_org_auth` VALUES ('4252c765-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '175ca305ff0b4055ba01269d1fa9aefe');
INSERT INTO `sys_org_auth` VALUES ('4252c9cf-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '1bfcf5371d7146f3ab7b77f09d3dec42');
INSERT INTO `sys_org_auth` VALUES ('4252ce69-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '265ccb86e5d04e6e95161fa557f540c3');
INSERT INTO `sys_org_auth` VALUES ('4252d044-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '27d4b1bd06da4f319c7dfc4451676622');
INSERT INTO `sys_org_auth` VALUES ('4252d32f-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '3373f0922103467c829b08788743dcf1');
INSERT INTO `sys_org_auth` VALUES ('4252d52e-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '3989deeb8c2f4066bf5c97c4d266b654');
INSERT INTO `sys_org_auth` VALUES ('4252d77f-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_org_auth` VALUES ('4252dcd3-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '3e9dcacd655d4aabbf42a099b14927d8');
INSERT INTO `sys_org_auth` VALUES ('4252ddf1-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_org_auth` VALUES ('4252e030-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_org_auth` VALUES ('4252e549-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '6374c1e4f3ac40da80b8f86b42d855a2');
INSERT INTO `sys_org_auth` VALUES ('4252e7b9-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '664354eb5aea4a00853ddb18dc68ebbd');
INSERT INTO `sys_org_auth` VALUES ('4252e8b7-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '672bf70518114cbfa03e809489f3ec43');
INSERT INTO `sys_org_auth` VALUES ('4252e9cd-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '67340c3f1b634546950bdb255e5982ac');
INSERT INTO `sys_org_auth` VALUES ('4252eb84-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '679e8bd02980479e963b82bf30673f1d');
INSERT INTO `sys_org_auth` VALUES ('4252eecd-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '6c0310128a78465891977fe2125802e4');
INSERT INTO `sys_org_auth` VALUES ('4252f138-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '6cf1391a9e3c4ac5af95534de51d7bd6');
INSERT INTO `sys_org_auth` VALUES ('4252f42a-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '6f55a605da78479db8d53489b02b56f8');
INSERT INTO `sys_org_auth` VALUES ('4252f5a9-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '7030524f08a742649a9c5255199f797d');
INSERT INTO `sys_org_auth` VALUES ('4252f6ea-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '7118e0b350e14f7aa9715831e9cf16d3');
INSERT INTO `sys_org_auth` VALUES ('4252f9be-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '77885a6895b543059b135354d5f62fce');
INSERT INTO `sys_org_auth` VALUES ('4252fb36-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '7d5f7d02ccc74bbf9ccd8fdef0c94a3a');
INSERT INTO `sys_org_auth` VALUES ('4252fc7d-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '7e9a289b3597483a84c08bbe71077558');
INSERT INTO `sys_org_auth` VALUES ('4252fd7e-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `sys_org_auth` VALUES ('4252ff65-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '824b9dfc5bbb4ba9a21f86cb392eaa65');
INSERT INTO `sys_org_auth` VALUES ('425304c3-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_org_auth` VALUES ('4253068c-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', '9ac8a29efca547fb9d078f9b09f87872');
INSERT INTO `sys_org_auth` VALUES ('42530798-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', 'a15ae14869f04822849571fb6ada622b');
INSERT INTO `sys_org_auth` VALUES ('4253229f-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', 'a406460ce4ef4fa1a7743c724613feda');
INSERT INTO `sys_org_auth` VALUES ('42532758-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', 'a83a382e77024cc595a7ccf13c98d089');
INSERT INTO `sys_org_auth` VALUES ('42532bbe-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', 'acc32eaeb07f41b3990b8ad6ebcb4148');
INSERT INTO `sys_org_auth` VALUES ('42533020-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', 'b5545655c63642338928bb9476832c29');
INSERT INTO `sys_org_auth` VALUES ('42533190-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', 'b8e10a35c90e4b5596a5eed52397373d');
INSERT INTO `sys_org_auth` VALUES ('425332fb-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', 'ba7aa68555d5474ca6a6e3a12ccd1afe');
INSERT INTO `sys_org_auth` VALUES ('425333f5-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_org_auth` VALUES ('4253370c-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', 'c3524525c489444aac421df515c63873');
INSERT INTO `sys_org_auth` VALUES ('42533b15-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', 'ce09b46ede8946f0bc5003c19987b363');
INSERT INTO `sys_org_auth` VALUES ('42533c83-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_org_auth` VALUES ('42533fc0-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', 'd7ac735162954c9382936183dd2eb465');
INSERT INTO `sys_org_auth` VALUES ('425342aa-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', 'da8bf91990b44726bfa4ea7a05a4499f');
INSERT INTO `sys_org_auth` VALUES ('4253460d-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', 'e4f75e6814d54ceeb23376a6d9342a84');
INSERT INTO `sys_org_auth` VALUES ('42534a49-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', 'e6ee26506c99417eb2535acf7f27a480');
INSERT INTO `sys_org_auth` VALUES ('42534d7c-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', 'f1bc8030d1484e6bb212e5d45a9ce450');
INSERT INTO `sys_org_auth` VALUES ('4253502f-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_org_auth` VALUES ('42535157-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_org_auth` VALUES ('425353f1-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', 'fec3e2fc717541c2ab24f05e37aacae3');
INSERT INTO `sys_org_auth` VALUES ('425355b5-09e7-11e7-a606-00163e028d22', 'a30002db053a4b7baf1f37488b59a1c5', 'ff27a7c775814b43ad4ef78ac94cb0cd');
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
INSERT INTO `sys_org_auth` VALUES ('e7b38fbf-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '0157b41dc00345aeb0f6a8cebf57a18e');
INSERT INTO `sys_org_auth` VALUES ('e7b3924f-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '02a18777e6774e5482488297fcf26653');
INSERT INTO `sys_org_auth` VALUES ('e7b39480-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '0575c843bad7482ba7eb9ecd6269d1f5');
INSERT INTO `sys_org_auth` VALUES ('e7b3970d-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '06392a0475294d5da9cfb2142623709a');
INSERT INTO `sys_org_auth` VALUES ('e7b3996e-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '0694283e392b42a2869cdf8093cbeb90');
INSERT INTO `sys_org_auth` VALUES ('e7b39b97-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '0810f4564728470d96e6bc224e89305a');
INSERT INTO `sys_org_auth` VALUES ('e7b39e0a-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '0d14479342ed4f78b0b76ba9694c631e');
INSERT INTO `sys_org_auth` VALUES ('e7b39f3b-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '1');
INSERT INTO `sys_org_auth` VALUES ('e7b3a0f4-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '1096978102094137b78bebc1de645e65');
INSERT INTO `sys_org_auth` VALUES ('e7b3a403-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '13439fc34d4b41c2b3f84a6770073692');
INSERT INTO `sys_org_auth` VALUES ('e7b3a6cc-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '175ca305ff0b4055ba01269d1fa9aefe');
INSERT INTO `sys_org_auth` VALUES ('e7b3a906-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '1bfcf5371d7146f3ab7b77f09d3dec42');
INSERT INTO `sys_org_auth` VALUES ('e7b3a9bb-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '2');
INSERT INTO `sys_org_auth` VALUES ('e7b3ab84-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '258ecf13eecc49f18bea208dd6b9f00c');
INSERT INTO `sys_org_auth` VALUES ('e7b3adaf-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '265ccb86e5d04e6e95161fa557f540c3');
INSERT INTO `sys_org_auth` VALUES ('e7b3fa80-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '27d4b1bd06da4f319c7dfc4451676622');
INSERT INTO `sys_org_auth` VALUES ('e7b3fcc2-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '28d0694acd354be7ad1264cad548ce2e');
INSERT INTO `sys_org_auth` VALUES ('e7b3fedd-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '3373f0922103467c829b08788743dcf1');
INSERT INTO `sys_org_auth` VALUES ('e7b40181-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '3989deeb8c2f4066bf5c97c4d266b654');
INSERT INTO `sys_org_auth` VALUES ('e7b4025d-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '39b352a998a3499183295152e7e7e541');
INSERT INTO `sys_org_auth` VALUES ('e7b40365-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_org_auth` VALUES ('e7b405e8-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '3a625a5e5c3c409393e44ed5967d3624');
INSERT INTO `sys_org_auth` VALUES ('e7b41cf3-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '3c856ca262be4c09afd1aa66f372039d');
INSERT INTO `sys_org_auth` VALUES ('e7b41fa8-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '3e9dcacd655d4aabbf42a099b14927d8');
INSERT INTO `sys_org_auth` VALUES ('e7b42090-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_org_auth` VALUES ('e7b42211-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '498089d953894079b07205488df94d9d');
INSERT INTO `sys_org_auth` VALUES ('e7b422f9-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_org_auth` VALUES ('e7b4244c-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '4b8d8cd29a634d2ba2e44ba1e9b7cf47');
INSERT INTO `sys_org_auth` VALUES ('e7b425d3-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '50c1cb37d53e4ea39da31b039b656364');
INSERT INTO `sys_org_auth` VALUES ('e7b42747-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '58ab8612b36642c4a0fd96970a878180');
INSERT INTO `sys_org_auth` VALUES ('e7b428da-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '6374c1e4f3ac40da80b8f86b42d855a2');
INSERT INTO `sys_org_auth` VALUES ('e7b42ae8-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '664354eb5aea4a00853ddb18dc68ebbd');
INSERT INTO `sys_org_auth` VALUES ('e7b42eae-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '672bf70518114cbfa03e809489f3ec43');
INSERT INTO `sys_org_auth` VALUES ('e7b42ff9-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '67340c3f1b634546950bdb255e5982ac');
INSERT INTO `sys_org_auth` VALUES ('e7b43210-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '679e8bd02980479e963b82bf30673f1d');
INSERT INTO `sys_org_auth` VALUES ('e7b432e6-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '67d5e55ab8cb4d5b93220645e6e85c99');
INSERT INTO `sys_org_auth` VALUES ('e7b450b7-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '6c0310128a78465891977fe2125802e4');
INSERT INTO `sys_org_auth` VALUES ('e7b452ef-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '6cf1391a9e3c4ac5af95534de51d7bd6');
INSERT INTO `sys_org_auth` VALUES ('e7b453a8-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '6db97da52d0d494fa8cc81c59329b179');
INSERT INTO `sys_org_auth` VALUES ('e7b454d8-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '6f55a605da78479db8d53489b02b56f8');
INSERT INTO `sys_org_auth` VALUES ('e7b456f1-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '7030524f08a742649a9c5255199f797d');
INSERT INTO `sys_org_auth` VALUES ('e7b458a5-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '7118e0b350e14f7aa9715831e9cf16d3');
INSERT INTO `sys_org_auth` VALUES ('e7b459e2-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '76737c29c36a4d449b50a58137504355');
INSERT INTO `sys_org_auth` VALUES ('e7b45bcc-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '77885a6895b543059b135354d5f62fce');
INSERT INTO `sys_org_auth` VALUES ('e7b45e29-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '7d5f7d02ccc74bbf9ccd8fdef0c94a3a');
INSERT INTO `sys_org_auth` VALUES ('e7b4601d-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '7e9a289b3597483a84c08bbe71077558');
INSERT INTO `sys_org_auth` VALUES ('e7b46130-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `sys_org_auth` VALUES ('e7b46374-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '824b9dfc5bbb4ba9a21f86cb392eaa65');
INSERT INTO `sys_org_auth` VALUES ('e7b465fc-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '869d5a2392b44c6ca61d49f8223e9483');
INSERT INTO `sys_org_auth` VALUES ('e7b46926-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '8f4c6add246641618de98a7812ce2874');
INSERT INTO `sys_org_auth` VALUES ('e7b46a94-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '8f8a71e10f5c46c695e8f1c2303a3b2f');
INSERT INTO `sys_org_auth` VALUES ('e7b46b7f-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_org_auth` VALUES ('e7b46d83-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', '9ac8a29efca547fb9d078f9b09f87872');
INSERT INTO `sys_org_auth` VALUES ('e7b46ea3-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'a15ae14869f04822849571fb6ada622b');
INSERT INTO `sys_org_auth` VALUES ('e7b46fca-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'a406460ce4ef4fa1a7743c724613feda');
INSERT INTO `sys_org_auth` VALUES ('e7b47110-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'a4ca0b3ac0a54e23a3e295380c4e1c79');
INSERT INTO `sys_org_auth` VALUES ('e7b4a580-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'a83a382e77024cc595a7ccf13c98d089');
INSERT INTO `sys_org_auth` VALUES ('e7b4a6aa-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'aaf82f26159f426581e59355c7b610b1');
INSERT INTO `sys_org_auth` VALUES ('e7b4a999-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'acc32eaeb07f41b3990b8ad6ebcb4148');
INSERT INTO `sys_org_auth` VALUES ('e7b4aa89-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'ad9d8b44b586456180a751fb87db8db2');
INSERT INTO `sys_org_auth` VALUES ('e7b4acd2-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'b5545655c63642338928bb9476832c29');
INSERT INTO `sys_org_auth` VALUES ('e7b4adf9-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'b8e10a35c90e4b5596a5eed52397373d');
INSERT INTO `sys_org_auth` VALUES ('e7b4afb1-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'ba7aa68555d5474ca6a6e3a12ccd1afe');
INSERT INTO `sys_org_auth` VALUES ('e7b4b0a8-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_org_auth` VALUES ('e7b4b329-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'c00e01f8a7c743149735ba65c7d014e9');
INSERT INTO `sys_org_auth` VALUES ('e7b4b568-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'c3524525c489444aac421df515c63873');
INSERT INTO `sys_org_auth` VALUES ('e7b4b649-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'c9228a9899dc4f98b576a1f0e049e175');
INSERT INTO `sys_org_auth` VALUES ('e7b4b861-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'ce09b46ede8946f0bc5003c19987b363');
INSERT INTO `sys_org_auth` VALUES ('e7b4d58b-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_org_auth` VALUES ('e7b4d751-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'd3ecb27d914d427d95d4d8194b00d4ad');
INSERT INTO `sys_org_auth` VALUES ('e7b4d8f9-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'd7ac735162954c9382936183dd2eb465');
INSERT INTO `sys_org_auth` VALUES ('e7b4da70-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'd7ea92ab47cb41b98cde8c0f31a1b004');
INSERT INTO `sys_org_auth` VALUES ('e7b4dcd0-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'da8bf91990b44726bfa4ea7a05a4499f');
INSERT INTO `sys_org_auth` VALUES ('e7b4de6e-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'dc920fce1934448fad21bc5f15cc2e37');
INSERT INTO `sys_org_auth` VALUES ('e7b4e0d2-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'e4f75e6814d54ceeb23376a6d9342a84');
INSERT INTO `sys_org_auth` VALUES ('e7b4e222-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'e50a1c4f4fcd48a89d2428933741426a');
INSERT INTO `sys_org_auth` VALUES ('e7b4e398-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'e666e48e9d8b44a0a34ff136bcf2ad14');
INSERT INTO `sys_org_auth` VALUES ('e7b4e59b-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'e6ee26506c99417eb2535acf7f27a480');
INSERT INTO `sys_org_auth` VALUES ('e7b4e702-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'e9d19c4e1a6342e88a74f669a5da8328');
INSERT INTO `sys_org_auth` VALUES ('e7b4e8ac-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'f1bc8030d1484e6bb212e5d45a9ce450');
INSERT INTO `sys_org_auth` VALUES ('e7b4eb1d-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'f6108f38eb6c47979bc1ad2a71659dbb');
INSERT INTO `sys_org_auth` VALUES ('e7b4ebef-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_org_auth` VALUES ('e7b4ecf1-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_org_auth` VALUES ('e7b4ee30-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'fafa0ee12ddf4e6598e816935c6ee168');
INSERT INTO `sys_org_auth` VALUES ('e7b4efc3-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'fec3e2fc717541c2ab24f05e37aacae3');
INSERT INTO `sys_org_auth` VALUES ('e7b4f20a-09ea-11e7-a606-00163e028d22', 'e2ff5e22cfe94054932ffca05e145934', 'ff27a7c775814b43ad4ef78ac94cb0cd');

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
INSERT INTO `sys_role` VALUES ('003559ec-ffbb-11e6-a606-00163e028d22', 'admin', 'b6a7ee64bcc04255a3f348380e2df245');
INSERT INTO `sys_role` VALUES ('24f0dfea8f1d444685c0e0bb1c03a218', '人事主管', '34fc670e952c41418ed19d98c4e00df4');
INSERT INTO `sys_role` VALUES ('2c5e728bf9c345ba848fa71d3446cd8d', '主管', '8f0e49cf3d784bfba92df5790d520741');
INSERT INTO `sys_role` VALUES ('48ac0084ff2746869962128119758100', '库管主管', '22b3b8c6461d4d979aa68a52919323ac');
INSERT INTO `sys_role` VALUES ('71be76be-fe54-11e6-a606-00163e028d22', 'admin', 'ddb5dbae8f7241a59d78a109baaf4f6c');
INSERT INTO `sys_role` VALUES ('7818fb74c057429d9386dc1d9e964963', '客户专员', 'a1fbb5f457c646a19d810404a7ab2efc');
INSERT INTO `sys_role` VALUES ('95dc04c7215c41b19a6fb739e51b2082', '代理商', 'a0a90d21cf3145769e4ac34f8044a17c');
INSERT INTO `sys_role` VALUES ('986d3c51-fda6-11e6-a606-00163e028d22', 'admin', 'f92ac73813eb4545bc29bde7e5f86e41');
INSERT INTO `sys_role` VALUES ('a5af2cc9a5244fd3a50728b24b513451', 'admin', 'e2ff5e22cfe94054932ffca05e145934');
INSERT INTO `sys_role` VALUES ('c1834167f54a4e8bbcd60e5985d9b914', 'Test', 'f92ac73813eb4545bc29bde7e5f86e41');
INSERT INTO `sys_role` VALUES ('c7ec9ea7f3324366b27022e657888437', '库管专员', '22b3b8c6461d4d979aa68a52919323ac');
INSERT INTO `sys_role` VALUES ('d94225f363454f3d8c4a600eaad972f5', '代理', '7b2dad54ce084faf87a0f027dbcf9aec');
INSERT INTO `sys_role` VALUES ('e7e34638-0247-11e7-a606-00163e028d22', 'admin', 'a30002db053a4b7baf1f37488b59a1c5');

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
INSERT INTO `sys_role_auth` VALUES ('0552a2cf-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '0157b41dc00345aeb0f6a8cebf57a18e');
INSERT INTO `sys_role_auth` VALUES ('0552a70d-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '0575c843bad7482ba7eb9ecd6269d1f5');
INSERT INTO `sys_role_auth` VALUES ('0552b0aa-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '06392a0475294d5da9cfb2142623709a');
INSERT INTO `sys_role_auth` VALUES ('0552b2c8-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '0694283e392b42a2869cdf8093cbeb90');
INSERT INTO `sys_role_auth` VALUES ('0552b4b3-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '0810f4564728470d96e6bc224e89305a');
INSERT INTO `sys_role_auth` VALUES ('0552b6b1-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '0d14479342ed4f78b0b76ba9694c631e');
INSERT INTO `sys_role_auth` VALUES ('0552b910-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '1096978102094137b78bebc1de645e65');
INSERT INTO `sys_role_auth` VALUES ('0552ba40-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '13439fc34d4b41c2b3f84a6770073692');
INSERT INTO `sys_role_auth` VALUES ('0552bbea-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '175ca305ff0b4055ba01269d1fa9aefe');
INSERT INTO `sys_role_auth` VALUES ('0552bdcb-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '1bfcf5371d7146f3ab7b77f09d3dec42');
INSERT INTO `sys_role_auth` VALUES ('0552c480-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '265ccb86e5d04e6e95161fa557f540c3');
INSERT INTO `sys_role_auth` VALUES ('0552c6d6-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '27d4b1bd06da4f319c7dfc4451676622');
INSERT INTO `sys_role_auth` VALUES ('0552ca00-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '3373f0922103467c829b08788743dcf1');
INSERT INTO `sys_role_auth` VALUES ('0552cbaa-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '3989deeb8c2f4066bf5c97c4d266b654');
INSERT INTO `sys_role_auth` VALUES ('0552cddb-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_role_auth` VALUES ('0552d0b9-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '3e9dcacd655d4aabbf42a099b14927d8');
INSERT INTO `sys_role_auth` VALUES ('0552d195-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_role_auth` VALUES ('0552d4a2-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_role_auth` VALUES ('0552d9ff-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '6374c1e4f3ac40da80b8f86b42d855a2');
INSERT INTO `sys_role_auth` VALUES ('0552db7d-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '664354eb5aea4a00853ddb18dc68ebbd');
INSERT INTO `sys_role_auth` VALUES ('0552dc47-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '672bf70518114cbfa03e809489f3ec43');
INSERT INTO `sys_role_auth` VALUES ('0552dd48-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '67340c3f1b634546950bdb255e5982ac');
INSERT INTO `sys_role_auth` VALUES ('0552df30-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '679e8bd02980479e963b82bf30673f1d');
INSERT INTO `sys_role_auth` VALUES ('0552e22a-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '6c0310128a78465891977fe2125802e4');
INSERT INTO `sys_role_auth` VALUES ('0552e463-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '6cf1391a9e3c4ac5af95534de51d7bd6');
INSERT INTO `sys_role_auth` VALUES ('0552e6fb-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '6f55a605da78479db8d53489b02b56f8');
INSERT INTO `sys_role_auth` VALUES ('0552e86f-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '7030524f08a742649a9c5255199f797d');
INSERT INTO `sys_role_auth` VALUES ('0552ea65-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '7118e0b350e14f7aa9715831e9cf16d3');
INSERT INTO `sys_role_auth` VALUES ('0552ed5a-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '77885a6895b543059b135354d5f62fce');
INSERT INTO `sys_role_auth` VALUES ('0552eece-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '7d5f7d02ccc74bbf9ccd8fdef0c94a3a');
INSERT INTO `sys_role_auth` VALUES ('0552f008-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '7e9a289b3597483a84c08bbe71077558');
INSERT INTO `sys_role_auth` VALUES ('0552f0ff-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `sys_role_auth` VALUES ('0552f294-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '824b9dfc5bbb4ba9a21f86cb392eaa65');
INSERT INTO `sys_role_auth` VALUES ('0552fa71-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_role_auth` VALUES ('0552fcc6-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', '9ac8a29efca547fb9d078f9b09f87872');
INSERT INTO `sys_role_auth` VALUES ('0552fddc-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', 'a15ae14869f04822849571fb6ada622b');
INSERT INTO `sys_role_auth` VALUES ('0552feec-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', 'a406460ce4ef4fa1a7743c724613feda');
INSERT INTO `sys_role_auth` VALUES ('055301f0-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', 'a83a382e77024cc595a7ccf13c98d089');
INSERT INTO `sys_role_auth` VALUES ('055304db-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', 'acc32eaeb07f41b3990b8ad6ebcb4148');
INSERT INTO `sys_role_auth` VALUES ('055307c0-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', 'b5545655c63642338928bb9476832c29');
INSERT INTO `sys_role_auth` VALUES ('055308d1-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', 'b8e10a35c90e4b5596a5eed52397373d');
INSERT INTO `sys_role_auth` VALUES ('05530a1a-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', 'ba7aa68555d5474ca6a6e3a12ccd1afe');
INSERT INTO `sys_role_auth` VALUES ('05530af6-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_role_auth` VALUES ('05530c46-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', 'c3524525c489444aac421df515c63873');
INSERT INTO `sys_role_auth` VALUES ('05530f12-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', 'ce09b46ede8946f0bc5003c19987b363');
INSERT INTO `sys_role_auth` VALUES ('05530ff9-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_role_auth` VALUES ('05531346-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', 'd7ac735162954c9382936183dd2eb465');
INSERT INTO `sys_role_auth` VALUES ('055315ff-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', 'da8bf91990b44726bfa4ea7a05a4499f');
INSERT INTO `sys_role_auth` VALUES ('055318f8-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', 'e4f75e6814d54ceeb23376a6d9342a84');
INSERT INTO `sys_role_auth` VALUES ('05531d43-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', 'e6ee26506c99417eb2535acf7f27a480');
INSERT INTO `sys_role_auth` VALUES ('0553209f-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', 'f1bc8030d1484e6bb212e5d45a9ce450');
INSERT INTO `sys_role_auth` VALUES ('055321a6-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_role_auth` VALUES ('0553229e-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_role_auth` VALUES ('0553251c-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', 'fec3e2fc717541c2ab24f05e37aacae3');
INSERT INTO `sys_role_auth` VALUES ('05532709-0887-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22', 'ff27a7c775814b43ad4ef78ac94cb0cd');
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
INSERT INTO `sys_role_auth` VALUES ('7850fa68-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', '0575c843bad7482ba7eb9ecd6269d1f5');
INSERT INTO `sys_role_auth` VALUES ('7850fcd1-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', '0694283e392b42a2869cdf8093cbeb90');
INSERT INTO `sys_role_auth` VALUES ('7850ff4a-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', '1096978102094137b78bebc1de645e65');
INSERT INTO `sys_role_auth` VALUES ('78510020-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', '13439fc34d4b41c2b3f84a6770073692');
INSERT INTO `sys_role_auth` VALUES ('7851058e-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_role_auth` VALUES ('78510811-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_role_auth` VALUES ('78510a5a-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_role_auth` VALUES ('78510da7-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', '6374c1e4f3ac40da80b8f86b42d855a2');
INSERT INTO `sys_role_auth` VALUES ('78510eb4-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', '664354eb5aea4a00853ddb18dc68ebbd');
INSERT INTO `sys_role_auth` VALUES ('78511003-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', '672bf70518114cbfa03e809489f3ec43');
INSERT INTO `sys_role_auth` VALUES ('7851112f-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', '67340c3f1b634546950bdb255e5982ac');
INSERT INTO `sys_role_auth` VALUES ('785112fc-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', '6cf1391a9e3c4ac5af95534de51d7bd6');
INSERT INTO `sys_role_auth` VALUES ('7851150f-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', '6f55a605da78479db8d53489b02b56f8');
INSERT INTO `sys_role_auth` VALUES ('78513725-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', '7030524f08a742649a9c5255199f797d');
INSERT INTO `sys_role_auth` VALUES ('78513874-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', '7118e0b350e14f7aa9715831e9cf16d3');
INSERT INTO `sys_role_auth` VALUES ('78513a75-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', '77885a6895b543059b135354d5f62fce');
INSERT INTO `sys_role_auth` VALUES ('78513bcd-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', '7d5f7d02ccc74bbf9ccd8fdef0c94a3a');
INSERT INTO `sys_role_auth` VALUES ('78513d62-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', '7e9a289b3597483a84c08bbe71077558');
INSERT INTO `sys_role_auth` VALUES ('78513f5d-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `sys_role_auth` VALUES ('78514195-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_role_auth` VALUES ('785142bf-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', 'a15ae14869f04822849571fb6ada622b');
INSERT INTO `sys_role_auth` VALUES ('785143f2-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', 'a406460ce4ef4fa1a7743c724613feda');
INSERT INTO `sys_role_auth` VALUES ('785147ad-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', 'b8e10a35c90e4b5596a5eed52397373d');
INSERT INTO `sys_role_auth` VALUES ('785148a4-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', 'ba7aa68555d5474ca6a6e3a12ccd1afe');
INSERT INTO `sys_role_auth` VALUES ('78514a0a-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_role_auth` VALUES ('78514af4-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', 'c3524525c489444aac421df515c63873');
INSERT INTO `sys_role_auth` VALUES ('78514ce3-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', 'ce09b46ede8946f0bc5003c19987b363');
INSERT INTO `sys_role_auth` VALUES ('78514e46-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_role_auth` VALUES ('78514feb-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', 'd7ac735162954c9382936183dd2eb465');
INSERT INTO `sys_role_auth` VALUES ('785151bc-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', 'da8bf91990b44726bfa4ea7a05a4499f');
INSERT INTO `sys_role_auth` VALUES ('785156ac-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', 'f1bc8030d1484e6bb212e5d45a9ce450');
INSERT INTO `sys_role_auth` VALUES ('7851581c-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_role_auth` VALUES ('7851598e-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_role_auth` VALUES ('78515b27-0347-11e7-a606-00163e028d22', '7818fb74c057429d9386dc1d9e964963', 'fec3e2fc717541c2ab24f05e37aacae3');
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
INSERT INTO `sys_role_auth` VALUES ('9d7d16cf-0324-11e7-a606-00163e028d22', '003559ec-ffbb-11e6-a606-00163e028d22', '1096978102094137b78bebc1de645e65');
INSERT INTO `sys_role_auth` VALUES ('9d7d1be4-0324-11e7-a606-00163e028d22', '003559ec-ffbb-11e6-a606-00163e028d22', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_role_auth` VALUES ('9d7d1d76-0324-11e7-a606-00163e028d22', '003559ec-ffbb-11e6-a606-00163e028d22', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_role_auth` VALUES ('9d7d1ed6-0324-11e7-a606-00163e028d22', '003559ec-ffbb-11e6-a606-00163e028d22', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_role_auth` VALUES ('9d7d2301-0324-11e7-a606-00163e028d22', '003559ec-ffbb-11e6-a606-00163e028d22', '672bf70518114cbfa03e809489f3ec43');
INSERT INTO `sys_role_auth` VALUES ('9d7d2491-0324-11e7-a606-00163e028d22', '003559ec-ffbb-11e6-a606-00163e028d22', '67340c3f1b634546950bdb255e5982ac');
INSERT INTO `sys_role_auth` VALUES ('9d7d2717-0324-11e7-a606-00163e028d22', '003559ec-ffbb-11e6-a606-00163e028d22', '6f55a605da78479db8d53489b02b56f8');
INSERT INTO `sys_role_auth` VALUES ('9d7d2aa8-0324-11e7-a606-00163e028d22', '003559ec-ffbb-11e6-a606-00163e028d22', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `sys_role_auth` VALUES ('9d7d2bef-0324-11e7-a606-00163e028d22', '003559ec-ffbb-11e6-a606-00163e028d22', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_role_auth` VALUES ('9d7d2cf5-0324-11e7-a606-00163e028d22', '003559ec-ffbb-11e6-a606-00163e028d22', 'a15ae14869f04822849571fb6ada622b');
INSERT INTO `sys_role_auth` VALUES ('9d7d2e0d-0324-11e7-a606-00163e028d22', '003559ec-ffbb-11e6-a606-00163e028d22', 'a406460ce4ef4fa1a7743c724613feda');
INSERT INTO `sys_role_auth` VALUES ('9d7d3069-0324-11e7-a606-00163e028d22', '003559ec-ffbb-11e6-a606-00163e028d22', 'b8e10a35c90e4b5596a5eed52397373d');
INSERT INTO `sys_role_auth` VALUES ('9d7d31c0-0324-11e7-a606-00163e028d22', '003559ec-ffbb-11e6-a606-00163e028d22', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_role_auth` VALUES ('9d7d33f5-0324-11e7-a606-00163e028d22', '003559ec-ffbb-11e6-a606-00163e028d22', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_role_auth` VALUES ('9d7d3880-0324-11e7-a606-00163e028d22', '003559ec-ffbb-11e6-a606-00163e028d22', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_role_auth` VALUES ('9d7d3973-0324-11e7-a606-00163e028d22', '003559ec-ffbb-11e6-a606-00163e028d22', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_role_auth` VALUES ('a7302970-087a-11e7-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', '0157b41dc00345aeb0f6a8cebf57a18e');
INSERT INTO `sys_role_auth` VALUES ('a7302d81-087a-11e7-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', '06392a0475294d5da9cfb2142623709a');
INSERT INTO `sys_role_auth` VALUES ('a7302efe-087a-11e7-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', '0810f4564728470d96e6bc224e89305a');
INSERT INTO `sys_role_auth` VALUES ('a7302ff7-087a-11e7-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', '0d14479342ed4f78b0b76ba9694c631e');
INSERT INTO `sys_role_auth` VALUES ('a73032bc-087a-11e7-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', '175ca305ff0b4055ba01269d1fa9aefe');
INSERT INTO `sys_role_auth` VALUES ('a73033a2-087a-11e7-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', '1bfcf5371d7146f3ab7b77f09d3dec42');
INSERT INTO `sys_role_auth` VALUES ('a7303595-087a-11e7-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', '265ccb86e5d04e6e95161fa557f540c3');
INSERT INTO `sys_role_auth` VALUES ('a730376c-087a-11e7-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', '27d4b1bd06da4f319c7dfc4451676622');
INSERT INTO `sys_role_auth` VALUES ('a7303944-087a-11e7-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', '3373f0922103467c829b08788743dcf1');
INSERT INTO `sys_role_auth` VALUES ('a7303a61-087a-11e7-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', '3989deeb8c2f4066bf5c97c4d266b654');
INSERT INTO `sys_role_auth` VALUES ('a7303d0f-087a-11e7-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', '3e9dcacd655d4aabbf42a099b14927d8');
INSERT INTO `sys_role_auth` VALUES ('a7304352-087a-11e7-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', '679e8bd02980479e963b82bf30673f1d');
INSERT INTO `sys_role_auth` VALUES ('a7304501-087a-11e7-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', '6c0310128a78465891977fe2125802e4');
INSERT INTO `sys_role_auth` VALUES ('a7304b5b-087a-11e7-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', '824b9dfc5bbb4ba9a21f86cb392eaa65');
INSERT INTO `sys_role_auth` VALUES ('a7304d4d-087a-11e7-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', '9ac8a29efca547fb9d078f9b09f87872');
INSERT INTO `sys_role_auth` VALUES ('a730501b-087a-11e7-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', 'a83a382e77024cc595a7ccf13c98d089');
INSERT INTO `sys_role_auth` VALUES ('a73051ad-087a-11e7-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', 'acc32eaeb07f41b3990b8ad6ebcb4148');
INSERT INTO `sys_role_auth` VALUES ('a730533f-087a-11e7-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', 'b5545655c63642338928bb9476832c29');
INSERT INTO `sys_role_auth` VALUES ('a7305ae8-087a-11e7-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', 'e4f75e6814d54ceeb23376a6d9342a84');
INSERT INTO `sys_role_auth` VALUES ('a7305db3-087a-11e7-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', 'e6ee26506c99417eb2535acf7f27a480');
INSERT INTO `sys_role_auth` VALUES ('a7306212-087a-11e7-a606-00163e028d22', '95dc04c7215c41b19a6fb739e51b2082', 'ff27a7c775814b43ad4ef78ac94cb0cd');
INSERT INTO `sys_role_auth` VALUES ('ae9fffa4-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', '0575c843bad7482ba7eb9ecd6269d1f5');
INSERT INTO `sys_role_auth` VALUES ('aea001ef-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', '0694283e392b42a2869cdf8093cbeb90');
INSERT INTO `sys_role_auth` VALUES ('aea0041f-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', '1096978102094137b78bebc1de645e65');
INSERT INTO `sys_role_auth` VALUES ('aea00582-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', '13439fc34d4b41c2b3f84a6770073692');
INSERT INTO `sys_role_auth` VALUES ('aea009e3-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_role_auth` VALUES ('aea00bcf-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_role_auth` VALUES ('aea00db0-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_role_auth` VALUES ('aea0121b-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', '6374c1e4f3ac40da80b8f86b42d855a2');
INSERT INTO `sys_role_auth` VALUES ('aea0131a-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', '664354eb5aea4a00853ddb18dc68ebbd');
INSERT INTO `sys_role_auth` VALUES ('aea01417-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', '672bf70518114cbfa03e809489f3ec43');
INSERT INTO `sys_role_auth` VALUES ('aea0154f-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', '67340c3f1b634546950bdb255e5982ac');
INSERT INTO `sys_role_auth` VALUES ('aea016e1-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', '6cf1391a9e3c4ac5af95534de51d7bd6');
INSERT INTO `sys_role_auth` VALUES ('aea018fa-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', '6f55a605da78479db8d53489b02b56f8');
INSERT INTO `sys_role_auth` VALUES ('aea01b30-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', '7118e0b350e14f7aa9715831e9cf16d3');
INSERT INTO `sys_role_auth` VALUES ('aea01cd7-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', '77885a6895b543059b135354d5f62fce');
INSERT INTO `sys_role_auth` VALUES ('aea01f09-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', '7e9a289b3597483a84c08bbe71077558');
INSERT INTO `sys_role_auth` VALUES ('aea02031-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `sys_role_auth` VALUES ('aea02201-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_role_auth` VALUES ('aea0233c-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', 'a15ae14869f04822849571fb6ada622b');
INSERT INTO `sys_role_auth` VALUES ('aea02479-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', 'a406460ce4ef4fa1a7743c724613feda');
INSERT INTO `sys_role_auth` VALUES ('aea02cd4-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', 'b8e10a35c90e4b5596a5eed52397373d');
INSERT INTO `sys_role_auth` VALUES ('aea02df0-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', 'ba7aa68555d5474ca6a6e3a12ccd1afe');
INSERT INTO `sys_role_auth` VALUES ('aea02f1a-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_role_auth` VALUES ('aea02fe9-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', 'c3524525c489444aac421df515c63873');
INSERT INTO `sys_role_auth` VALUES ('aea031ad-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', 'ce09b46ede8946f0bc5003c19987b363');
INSERT INTO `sys_role_auth` VALUES ('aea032d1-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_role_auth` VALUES ('aea034fa-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', 'd7ac735162954c9382936183dd2eb465');
INSERT INTO `sys_role_auth` VALUES ('aea0368d-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', 'da8bf91990b44726bfa4ea7a05a4499f');
INSERT INTO `sys_role_auth` VALUES ('aea03faf-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', 'f1bc8030d1484e6bb212e5d45a9ce450');
INSERT INTO `sys_role_auth` VALUES ('aea04106-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_role_auth` VALUES ('aea04234-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_role_auth` VALUES ('aea04479-0347-11e7-a606-00163e028d22', '48ac0084ff2746869962128119758100', 'fec3e2fc717541c2ab24f05e37aacae3');
INSERT INTO `sys_role_auth` VALUES ('afc42edf-089f-11e7-a606-00163e028d22', 'd94225f363454f3d8c4a600eaad972f5', '0157b41dc00345aeb0f6a8cebf57a18e');
INSERT INTO `sys_role_auth` VALUES ('afc434d8-089f-11e7-a606-00163e028d22', 'd94225f363454f3d8c4a600eaad972f5', '06392a0475294d5da9cfb2142623709a');
INSERT INTO `sys_role_auth` VALUES ('afc43c0c-089f-11e7-a606-00163e028d22', 'd94225f363454f3d8c4a600eaad972f5', '0810f4564728470d96e6bc224e89305a');
INSERT INTO `sys_role_auth` VALUES ('afc43d72-089f-11e7-a606-00163e028d22', 'd94225f363454f3d8c4a600eaad972f5', '0d14479342ed4f78b0b76ba9694c631e');
INSERT INTO `sys_role_auth` VALUES ('afc44080-089f-11e7-a606-00163e028d22', 'd94225f363454f3d8c4a600eaad972f5', '175ca305ff0b4055ba01269d1fa9aefe');
INSERT INTO `sys_role_auth` VALUES ('afc44244-089f-11e7-a606-00163e028d22', 'd94225f363454f3d8c4a600eaad972f5', '1bfcf5371d7146f3ab7b77f09d3dec42');
INSERT INTO `sys_role_auth` VALUES ('afc444a6-089f-11e7-a606-00163e028d22', 'd94225f363454f3d8c4a600eaad972f5', '265ccb86e5d04e6e95161fa557f540c3');
INSERT INTO `sys_role_auth` VALUES ('afc445b5-089f-11e7-a606-00163e028d22', 'd94225f363454f3d8c4a600eaad972f5', '27d4b1bd06da4f319c7dfc4451676622');
INSERT INTO `sys_role_auth` VALUES ('afc4470e-089f-11e7-a606-00163e028d22', 'd94225f363454f3d8c4a600eaad972f5', '3373f0922103467c829b08788743dcf1');
INSERT INTO `sys_role_auth` VALUES ('afc44837-089f-11e7-a606-00163e028d22', 'd94225f363454f3d8c4a600eaad972f5', '3989deeb8c2f4066bf5c97c4d266b654');
INSERT INTO `sys_role_auth` VALUES ('afc44af4-089f-11e7-a606-00163e028d22', 'd94225f363454f3d8c4a600eaad972f5', '3e9dcacd655d4aabbf42a099b14927d8');
INSERT INTO `sys_role_auth` VALUES ('afc4516f-089f-11e7-a606-00163e028d22', 'd94225f363454f3d8c4a600eaad972f5', '679e8bd02980479e963b82bf30673f1d');
INSERT INTO `sys_role_auth` VALUES ('afc45327-089f-11e7-a606-00163e028d22', 'd94225f363454f3d8c4a600eaad972f5', '6c0310128a78465891977fe2125802e4');
INSERT INTO `sys_role_auth` VALUES ('afc45a5a-089f-11e7-a606-00163e028d22', 'd94225f363454f3d8c4a600eaad972f5', '824b9dfc5bbb4ba9a21f86cb392eaa65');
INSERT INTO `sys_role_auth` VALUES ('afc45c79-089f-11e7-a606-00163e028d22', 'd94225f363454f3d8c4a600eaad972f5', '9ac8a29efca547fb9d078f9b09f87872');
INSERT INTO `sys_role_auth` VALUES ('afc45f62-089f-11e7-a606-00163e028d22', 'd94225f363454f3d8c4a600eaad972f5', 'a83a382e77024cc595a7ccf13c98d089');
INSERT INTO `sys_role_auth` VALUES ('afc460fb-089f-11e7-a606-00163e028d22', 'd94225f363454f3d8c4a600eaad972f5', 'acc32eaeb07f41b3990b8ad6ebcb4148');
INSERT INTO `sys_role_auth` VALUES ('afc46299-089f-11e7-a606-00163e028d22', 'd94225f363454f3d8c4a600eaad972f5', 'b5545655c63642338928bb9476832c29');
INSERT INTO `sys_role_auth` VALUES ('afc46acd-089f-11e7-a606-00163e028d22', 'd94225f363454f3d8c4a600eaad972f5', 'e4f75e6814d54ceeb23376a6d9342a84');
INSERT INTO `sys_role_auth` VALUES ('afc46ccc-089f-11e7-a606-00163e028d22', 'd94225f363454f3d8c4a600eaad972f5', 'e6ee26506c99417eb2535acf7f27a480');
INSERT INTO `sys_role_auth` VALUES ('afc470fb-089f-11e7-a606-00163e028d22', 'd94225f363454f3d8c4a600eaad972f5', 'ff27a7c775814b43ad4ef78ac94cb0cd');
INSERT INTO `sys_role_auth` VALUES ('b8ead5f3-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', '0575c843bad7482ba7eb9ecd6269d1f5');
INSERT INTO `sys_role_auth` VALUES ('b8ead834-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', '0694283e392b42a2869cdf8093cbeb90');
INSERT INTO `sys_role_auth` VALUES ('b8eada61-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', '1096978102094137b78bebc1de645e65');
INSERT INTO `sys_role_auth` VALUES ('b8eadbc1-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', '13439fc34d4b41c2b3f84a6770073692');
INSERT INTO `sys_role_auth` VALUES ('b8eae006-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_role_auth` VALUES ('b8eae1d7-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_role_auth` VALUES ('b8eae3b9-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_role_auth` VALUES ('b8eae771-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', '6374c1e4f3ac40da80b8f86b42d855a2');
INSERT INTO `sys_role_auth` VALUES ('b8eae85b-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', '664354eb5aea4a00853ddb18dc68ebbd');
INSERT INTO `sys_role_auth` VALUES ('b8eae985-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', '672bf70518114cbfa03e809489f3ec43');
INSERT INTO `sys_role_auth` VALUES ('b8eaeb7d-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', '67340c3f1b634546950bdb255e5982ac');
INSERT INTO `sys_role_auth` VALUES ('b8eaed55-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', '6cf1391a9e3c4ac5af95534de51d7bd6');
INSERT INTO `sys_role_auth` VALUES ('b8eaef79-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', '6f55a605da78479db8d53489b02b56f8');
INSERT INTO `sys_role_auth` VALUES ('b8eaf05b-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', '7030524f08a742649a9c5255199f797d');
INSERT INTO `sys_role_auth` VALUES ('b8eaf1c7-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', '7118e0b350e14f7aa9715831e9cf16d3');
INSERT INTO `sys_role_auth` VALUES ('b8eaf4f3-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', '7d5f7d02ccc74bbf9ccd8fdef0c94a3a');
INSERT INTO `sys_role_auth` VALUES ('b8eaf68c-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', '7e9a289b3597483a84c08bbe71077558');
INSERT INTO `sys_role_auth` VALUES ('b8eaf7c4-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `sys_role_auth` VALUES ('b8eaf99d-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_role_auth` VALUES ('b8eafad1-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', 'a15ae14869f04822849571fb6ada622b');
INSERT INTO `sys_role_auth` VALUES ('b8eafd3d-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', 'a406460ce4ef4fa1a7743c724613feda');
INSERT INTO `sys_role_auth` VALUES ('b8eb0186-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', 'b8e10a35c90e4b5596a5eed52397373d');
INSERT INTO `sys_role_auth` VALUES ('b8eb025a-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', 'ba7aa68555d5474ca6a6e3a12ccd1afe');
INSERT INTO `sys_role_auth` VALUES ('b8eb03a2-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_role_auth` VALUES ('b8eb0471-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', 'c3524525c489444aac421df515c63873');
INSERT INTO `sys_role_auth` VALUES ('b8eb0735-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_role_auth` VALUES ('b8eb096a-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', 'd7ac735162954c9382936183dd2eb465');
INSERT INTO `sys_role_auth` VALUES ('b8eb0b06-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', 'da8bf91990b44726bfa4ea7a05a4499f');
INSERT INTO `sys_role_auth` VALUES ('b8eb0fda-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', 'f1bc8030d1484e6bb212e5d45a9ce450');
INSERT INTO `sys_role_auth` VALUES ('b8eb111b-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_role_auth` VALUES ('b8eb1243-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_role_auth` VALUES ('b8eb1471-0347-11e7-a606-00163e028d22', 'c7ec9ea7f3324366b27022e657888437', 'fec3e2fc717541c2ab24f05e37aacae3');
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
INSERT INTO `sys_role_auth` VALUES ('c97ff632-0324-11e7-a606-00163e028d22', '24f0dfea8f1d444685c0e0bb1c03a218', '67340c3f1b634546950bdb255e5982ac');
INSERT INTO `sys_role_auth` VALUES ('c97ff8c1-0324-11e7-a606-00163e028d22', '24f0dfea8f1d444685c0e0bb1c03a218', '6f55a605da78479db8d53489b02b56f8');
INSERT INTO `sys_role_auth` VALUES ('c97ffb6e-0324-11e7-a606-00163e028d22', '24f0dfea8f1d444685c0e0bb1c03a218', 'a15ae14869f04822849571fb6ada622b');
INSERT INTO `sys_role_auth` VALUES ('c97ffc4b-0324-11e7-a606-00163e028d22', '24f0dfea8f1d444685c0e0bb1c03a218', 'a406460ce4ef4fa1a7743c724613feda');
INSERT INTO `sys_role_auth` VALUES ('c98007d7-0324-11e7-a606-00163e028d22', '24f0dfea8f1d444685c0e0bb1c03a218', 'b8e10a35c90e4b5596a5eed52397373d');
INSERT INTO `sys_role_auth` VALUES ('d1663255-fda8-11e6-a606-00163e028d22', 'c1834167f54a4e8bbcd60e5985d9b914', 'b8e10a35c90e4b5596a5eed52397373d');
INSERT INTO `sys_role_auth` VALUES ('e02e94c1-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '0157b41dc00345aeb0f6a8cebf57a18e');
INSERT INTO `sys_role_auth` VALUES ('e02e96f8-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '02a18777e6774e5482488297fcf26653');
INSERT INTO `sys_role_auth` VALUES ('e02e9912-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '0575c843bad7482ba7eb9ecd6269d1f5');
INSERT INTO `sys_role_auth` VALUES ('e02e9b76-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '06392a0475294d5da9cfb2142623709a');
INSERT INTO `sys_role_auth` VALUES ('e02e9db5-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '0694283e392b42a2869cdf8093cbeb90');
INSERT INTO `sys_role_auth` VALUES ('e02e9fd5-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '0810f4564728470d96e6bc224e89305a');
INSERT INTO `sys_role_auth` VALUES ('e02ea300-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '0d14479342ed4f78b0b76ba9694c631e');
INSERT INTO `sys_role_auth` VALUES ('e02ea406-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '1');
INSERT INTO `sys_role_auth` VALUES ('e02ea52d-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '1096978102094137b78bebc1de645e65');
INSERT INTO `sys_role_auth` VALUES ('e02ea6cc-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '13439fc34d4b41c2b3f84a6770073692');
INSERT INTO `sys_role_auth` VALUES ('e02ea928-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '175ca305ff0b4055ba01269d1fa9aefe');
INSERT INTO `sys_role_auth` VALUES ('e02eab43-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '1bfcf5371d7146f3ab7b77f09d3dec42');
INSERT INTO `sys_role_auth` VALUES ('e02eabe7-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '2');
INSERT INTO `sys_role_auth` VALUES ('e02ead9e-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '258ecf13eecc49f18bea208dd6b9f00c');
INSERT INTO `sys_role_auth` VALUES ('e02ee665-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '265ccb86e5d04e6e95161fa557f540c3');
INSERT INTO `sys_role_auth` VALUES ('e02ee8e8-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '27d4b1bd06da4f319c7dfc4451676622');
INSERT INTO `sys_role_auth` VALUES ('e02eea47-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '28d0694acd354be7ad1264cad548ce2e');
INSERT INTO `sys_role_auth` VALUES ('e02eec4f-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '3373f0922103467c829b08788743dcf1');
INSERT INTO `sys_role_auth` VALUES ('e02eef13-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '3989deeb8c2f4066bf5c97c4d266b654');
INSERT INTO `sys_role_auth` VALUES ('e02ef0a2-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '39b352a998a3499183295152e7e7e541');
INSERT INTO `sys_role_auth` VALUES ('e02ef1a9-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '3a5d809b46484cce85a7a18fb0445df5');
INSERT INTO `sys_role_auth` VALUES ('e02ef41b-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '3a625a5e5c3c409393e44ed5967d3624');
INSERT INTO `sys_role_auth` VALUES ('e02ef516-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '3c856ca262be4c09afd1aa66f372039d');
INSERT INTO `sys_role_auth` VALUES ('e02ef775-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '3e9dcacd655d4aabbf42a099b14927d8');
INSERT INTO `sys_role_auth` VALUES ('e02ef856-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '479852e16c834956b8b6c3b801ffd11c');
INSERT INTO `sys_role_auth` VALUES ('e02ef9db-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '498089d953894079b07205488df94d9d');
INSERT INTO `sys_role_auth` VALUES ('e02efac3-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '4ac1d4f894704f45b779de16b723ec04');
INSERT INTO `sys_role_auth` VALUES ('e02efc0f-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '4b8d8cd29a634d2ba2e44ba1e9b7cf47');
INSERT INTO `sys_role_auth` VALUES ('e02efe35-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '50c1cb37d53e4ea39da31b039b656364');
INSERT INTO `sys_role_auth` VALUES ('e02f006b-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '58ab8612b36642c4a0fd96970a878180');
INSERT INTO `sys_role_auth` VALUES ('e02f0241-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '6374c1e4f3ac40da80b8f86b42d855a2');
INSERT INTO `sys_role_auth` VALUES ('e02f255c-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '664354eb5aea4a00853ddb18dc68ebbd');
INSERT INTO `sys_role_auth` VALUES ('e02f2667-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '672bf70518114cbfa03e809489f3ec43');
INSERT INTO `sys_role_auth` VALUES ('e02f2788-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '67340c3f1b634546950bdb255e5982ac');
INSERT INTO `sys_role_auth` VALUES ('e02f299c-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '679e8bd02980479e963b82bf30673f1d');
INSERT INTO `sys_role_auth` VALUES ('e02f2a72-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '67d5e55ab8cb4d5b93220645e6e85c99');
INSERT INTO `sys_role_auth` VALUES ('e02f2cc0-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '6c0310128a78465891977fe2125802e4');
INSERT INTO `sys_role_auth` VALUES ('e02f2e80-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '6cf1391a9e3c4ac5af95534de51d7bd6');
INSERT INTO `sys_role_auth` VALUES ('e02f2f2e-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '6db97da52d0d494fa8cc81c59329b179');
INSERT INTO `sys_role_auth` VALUES ('e02f3059-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '6f55a605da78479db8d53489b02b56f8');
INSERT INTO `sys_role_auth` VALUES ('e02f50c6-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '7030524f08a742649a9c5255199f797d');
INSERT INTO `sys_role_auth` VALUES ('e02f531a-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '7118e0b350e14f7aa9715831e9cf16d3');
INSERT INTO `sys_role_auth` VALUES ('e02f5469-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '76737c29c36a4d449b50a58137504355');
INSERT INTO `sys_role_auth` VALUES ('e02f5658-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '77885a6895b543059b135354d5f62fce');
INSERT INTO `sys_role_auth` VALUES ('e02f5837-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '7d5f7d02ccc74bbf9ccd8fdef0c94a3a');
INSERT INTO `sys_role_auth` VALUES ('e02f59e2-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '7e9a289b3597483a84c08bbe71077558');
INSERT INTO `sys_role_auth` VALUES ('e02f5aee-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '81064737ff3f4f0da71141ec42f366ce');
INSERT INTO `sys_role_auth` VALUES ('e02f5d31-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '824b9dfc5bbb4ba9a21f86cb392eaa65');
INSERT INTO `sys_role_auth` VALUES ('e02f6003-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '869d5a2392b44c6ca61d49f8223e9483');
INSERT INTO `sys_role_auth` VALUES ('e02f6358-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '8f4c6add246641618de98a7812ce2874');
INSERT INTO `sys_role_auth` VALUES ('e02f6563-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '8f8a71e10f5c46c695e8f1c2303a3b2f');
INSERT INTO `sys_role_auth` VALUES ('e02f667b-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '8fb8b57f988a49c39e7398f7e4a88f31');
INSERT INTO `sys_role_auth` VALUES ('e02f68b0-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', '9ac8a29efca547fb9d078f9b09f87872');
INSERT INTO `sys_role_auth` VALUES ('e02f69ce-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'a15ae14869f04822849571fb6ada622b');
INSERT INTO `sys_role_auth` VALUES ('e02f6aea-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'a406460ce4ef4fa1a7743c724613feda');
INSERT INTO `sys_role_auth` VALUES ('e02f6c2b-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'a4ca0b3ac0a54e23a3e295380c4e1c79');
INSERT INTO `sys_role_auth` VALUES ('e02f6e83-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'a83a382e77024cc595a7ccf13c98d089');
INSERT INTO `sys_role_auth` VALUES ('e02f6f46-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'aaf82f26159f426581e59355c7b610b1');
INSERT INTO `sys_role_auth` VALUES ('e02f71be-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'acc32eaeb07f41b3990b8ad6ebcb4148');
INSERT INTO `sys_role_auth` VALUES ('e02f727a-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'ad9d8b44b586456180a751fb87db8db2');
INSERT INTO `sys_role_auth` VALUES ('e02f74c5-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'b5545655c63642338928bb9476832c29');
INSERT INTO `sys_role_auth` VALUES ('e02f75ec-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'b8e10a35c90e4b5596a5eed52397373d');
INSERT INTO `sys_role_auth` VALUES ('e02f77a2-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'ba7aa68555d5474ca6a6e3a12ccd1afe');
INSERT INTO `sys_role_auth` VALUES ('e02f7899-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'bbf82dfc30d54277a32d50189ce66030');
INSERT INTO `sys_role_auth` VALUES ('e02f7b20-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'c00e01f8a7c743149735ba65c7d014e9');
INSERT INTO `sys_role_auth` VALUES ('e02f7cd6-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'c3524525c489444aac421df515c63873');
INSERT INTO `sys_role_auth` VALUES ('e02f7d92-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'c9228a9899dc4f98b576a1f0e049e175');
INSERT INTO `sys_role_auth` VALUES ('e02f8226-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'ce09b46ede8946f0bc5003c19987b363');
INSERT INTO `sys_role_auth` VALUES ('e02f8358-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'd03715b26c894a59a99fc64351b2013a');
INSERT INTO `sys_role_auth` VALUES ('e02f84ba-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'd3ecb27d914d427d95d4d8194b00d4ad');
INSERT INTO `sys_role_auth` VALUES ('e02f86b4-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'd7ac735162954c9382936183dd2eb465');
INSERT INTO `sys_role_auth` VALUES ('e02f886b-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'd7ea92ab47cb41b98cde8c0f31a1b004');
INSERT INTO `sys_role_auth` VALUES ('e02f8a39-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'da8bf91990b44726bfa4ea7a05a4499f');
INSERT INTO `sys_role_auth` VALUES ('e02fc97b-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'dc920fce1934448fad21bc5f15cc2e37');
INSERT INTO `sys_role_auth` VALUES ('e02fcc62-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'e4f75e6814d54ceeb23376a6d9342a84');
INSERT INTO `sys_role_auth` VALUES ('e02fcdd8-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'e50a1c4f4fcd48a89d2428933741426a');
INSERT INTO `sys_role_auth` VALUES ('e02fcf53-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'e666e48e9d8b44a0a34ff136bcf2ad14');
INSERT INTO `sys_role_auth` VALUES ('e02fd157-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'e6ee26506c99417eb2535acf7f27a480');
INSERT INTO `sys_role_auth` VALUES ('e02fd329-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'e9d19c4e1a6342e88a74f669a5da8328');
INSERT INTO `sys_role_auth` VALUES ('e02fd529-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'f1bc8030d1484e6bb212e5d45a9ce450');
INSERT INTO `sys_role_auth` VALUES ('e02fd7d1-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'f6108f38eb6c47979bc1ad2a71659dbb');
INSERT INTO `sys_role_auth` VALUES ('e02fd8a9-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'f70012acb9f940bbb583fcd63e9af5ab');
INSERT INTO `sys_role_auth` VALUES ('e02fda2b-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'f7adb4149aa0406d891fec5be6e151e3');
INSERT INTO `sys_role_auth` VALUES ('e02fef77-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'fafa0ee12ddf4e6598e816935c6ee168');
INSERT INTO `sys_role_auth` VALUES ('e02ff164-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'fec3e2fc717541c2ab24f05e37aacae3');
INSERT INTO `sys_role_auth` VALUES ('e02ff3ba-09eb-11e7-a606-00163e028d22', 'a5af2cc9a5244fd3a50728b24b513451', 'ff27a7c775814b43ad4ef78ac94cb0cd');

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
INSERT INTO `sys_time_list` VALUES ('0157b41dc00345aeb0f6a8cebf57a18e', '', '2017-03-14 13:45:36', '', '2017-03-14 13:53:39');
INSERT INTO `sys_time_list` VALUES ('01cde437876b424a890d99480d12461b', '', '2017-03-13 08:52:38', '', '2017-03-14 08:57:03');
INSERT INTO `sys_time_list` VALUES ('031e83ccc1b54d5584546f7637d23320', '00355a20-ffbb-11e6-a606-00163e028d22', '2017-03-04 09:36:18', '00355a20-ffbb-11e6-a606-00163e028d22', '2017-03-04 09:36:54');
INSERT INTO `sys_time_list` VALUES ('057419c9f6e14583b6b6c60addc4cc8a', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:55:57', null, null);
INSERT INTO `sys_time_list` VALUES ('0575c843bad7482ba7eb9ecd6269d1f5', '', '2017-03-01 17:15:13', '', '2017-03-01 17:27:01');
INSERT INTO `sys_time_list` VALUES ('06324565ccfd4e50986675a290efd310', '', '2017-03-13 08:55:16', null, null);
INSERT INTO `sys_time_list` VALUES ('06392a0475294d5da9cfb2142623709a', '', '2017-03-13 08:56:09', '', '2017-03-14 09:10:55');
INSERT INTO `sys_time_list` VALUES ('0694283e392b42a2869cdf8093cbeb90', '', '2017-03-01 17:24:34', '', '2017-03-02 11:25:28');
INSERT INTO `sys_time_list` VALUES ('0738de70383540c58c41d179f5c2a647', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:07:52', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:07:55');
INSERT INTO `sys_time_list` VALUES ('07b3e4376d954644b7916076add5f58e', '', '2017-03-13 08:54:53', null, null);
INSERT INTO `sys_time_list` VALUES ('0810f4564728470d96e6bc224e89305a', '', '2017-03-13 08:49:59', '', '2017-03-16 09:11:10');
INSERT INTO `sys_time_list` VALUES ('08502051bdf346de8b06a71daa77a075', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:27:47', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:28:03');
INSERT INTO `sys_time_list` VALUES ('09b4e5ee2baa44ec8b6ba5dab504fe6a', '00355a20-ffbb-11e6-a606-00163e028d22', '2017-03-04 09:27:04', '00355a20-ffbb-11e6-a606-00163e028d22', '2017-03-04 09:27:42');
INSERT INTO `sys_time_list` VALUES ('0c9613a7f4024e01b944ea1809c3120b', '', '2017-03-08 08:35:19', null, null);
INSERT INTO `sys_time_list` VALUES ('0cc6ea5a0ef248bfa1e85811848751c2', '', '2017-03-13 08:55:41', null, null);
INSERT INTO `sys_time_list` VALUES ('0d14479342ed4f78b0b76ba9694c631e', '', '2017-03-13 08:53:45', '', '2017-03-14 09:10:20');
INSERT INTO `sys_time_list` VALUES ('13439fc34d4b41c2b3f84a6770073692', '', '2017-03-01 10:04:35', '', '2017-03-16 09:10:59');
INSERT INTO `sys_time_list` VALUES ('13a85ceb41e24fe1b20f0b25b995b596', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:59:02', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:59:10');
INSERT INTO `sys_time_list` VALUES ('1530ad7ba0584d048e335581ce6d02b1', 'admin', '2017-03-14 11:56:13', null, null);
INSERT INTO `sys_time_list` VALUES ('169684531a4d4e788787b7863b18119d', 'admin', '2017-03-10 17:12:19', 'admin', '2017-03-10 17:12:39');
INSERT INTO `sys_time_list` VALUES ('175ca305ff0b4055ba01269d1fa9aefe', '', '2017-03-10 14:47:27', '', '2017-03-10 16:55:44');
INSERT INTO `sys_time_list` VALUES ('17705850af12465ba5473c4d6b1affa8', '17f1469a23f14a2b8ea1a94d8feabefd', '2017-03-07 19:01:33', 'c743884dbf964cc3a1f0e5eed1b7be67', '2017-03-07 19:02:18');
INSERT INTO `sys_time_list` VALUES ('1788804cd4a549eb9416c328a7037f6c', '00355a20-ffbb-11e6-a606-00163e028d22', '2017-03-04 09:26:50', null, null);
INSERT INTO `sys_time_list` VALUES ('17f1469a23f14a2b8ea1a94d8feabefd', '', '2017-03-06 16:39:39', '', '2017-03-14 18:35:54');
INSERT INTO `sys_time_list` VALUES ('1854e6517a15468fb7f53f2098855af5', 'admin', '2017-03-10 13:56:52', 'admin', '2017-03-13 13:42:12');
INSERT INTO `sys_time_list` VALUES ('19fd8e0982f9424b981c15b180b3acdc', '', '2017-03-13 13:50:03', 'admin', '2017-03-13 14:06:56');
INSERT INTO `sys_time_list` VALUES ('1b205e059de0469282461402b444d2b9', 'e7e3466e-0247-11e7-a606-00163e028d22', '2017-03-11 11:59:59', null, null);
INSERT INTO `sys_time_list` VALUES ('1b87309787a64678a95b7183e41cf272', '', '2017-02-28 18:17:59', '', '2017-03-05 00:00:37');
INSERT INTO `sys_time_list` VALUES ('1bfcf5371d7146f3ab7b77f09d3dec42', '', '2017-03-13 08:51:13', '', '2017-03-13 14:27:28');
INSERT INTO `sys_time_list` VALUES ('1dae1478613342f6a1199c27c412349a', '', '2017-03-08 08:48:05', null, null);
INSERT INTO `sys_time_list` VALUES ('1f798aa339924711aa1ed27daec3cb6c', 'e7e3466e-0247-11e7-a606-00163e028d22', '2017-03-14 17:50:39', 'e7e3466e-0247-11e7-a606-00163e028d22', '2017-03-14 18:36:22');
INSERT INTO `sys_time_list` VALUES ('1f82b39ecb004ed892718b72f0c2e2ca', '00355a20-ffbb-11e6-a606-00163e028d22', '2017-03-04 09:26:40', null, null);
INSERT INTO `sys_time_list` VALUES ('2094db342d974387a4af3b4cdff88827', '', '2017-03-10 14:48:53', '', '2017-03-10 16:56:00');
INSERT INTO `sys_time_list` VALUES ('2193be6177c2417ca96569928a742bb3', 'admin', '2017-03-03 10:42:39', 'admin', '2017-03-03 10:42:46');
INSERT INTO `sys_time_list` VALUES ('22238223a787413aaf4250d04f7c796b', 'admin', '2017-03-02 14:58:35', null, null);
INSERT INTO `sys_time_list` VALUES ('22b3b8c6461d4d979aa68a52919323ac', '', '2017-03-06 16:37:19', null, null);
INSERT INTO `sys_time_list` VALUES ('24f0dfea8f1d444685c0e0bb1c03a218', '', '2017-03-07 18:56:59', null, null);
INSERT INTO `sys_time_list` VALUES ('2529e92cbb3d4588978501b698d58c1d', 'admin', '2017-03-14 10:42:44', 'admin', '2017-03-14 10:43:00');
INSERT INTO `sys_time_list` VALUES ('258ecf13eecc49f18bea208dd6b9f00c', '', '2017-02-28 12:38:47', null, null);
INSERT INTO `sys_time_list` VALUES ('265ccb86e5d04e6e95161fa557f540c3', '', '2017-03-13 08:53:14', '', '2017-03-13 11:30:30');
INSERT INTO `sys_time_list` VALUES ('27d4b1bd06da4f319c7dfc4451676622', '', '2017-03-13 08:54:19', '', '2017-03-14 09:10:43');
INSERT INTO `sys_time_list` VALUES ('280f5c91b3264129967bbe07ea782aaa', 'admin', '2017-03-14 15:22:06', 'admin', '2017-03-14 15:22:15');
INSERT INTO `sys_time_list` VALUES ('291d0c759ba149ce9a882581890e9fde', '', '2017-03-13 08:55:29', null, null);
INSERT INTO `sys_time_list` VALUES ('2a69c62de73c454787d5a343cf2ad5f5', 'admin', '2017-03-01 11:28:06', 'admin', '2017-03-01 11:28:12');
INSERT INTO `sys_time_list` VALUES ('2de4d1b1b33f48bcbe120b459c8744f3', 'admin', '2017-03-02 14:53:53', 'admin', '2017-03-03 10:42:12');
INSERT INTO `sys_time_list` VALUES ('2e862538fe10468f9e736cc018d8457c', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:08:02', null, null);
INSERT INTO `sys_time_list` VALUES ('2f2d4a28830044a7a81e18947a453648', '', '2017-03-08 08:38:27', null, null);
INSERT INTO `sys_time_list` VALUES ('2f9c8d251a58443293979d8ca0aab3e3', 'f549d961dcc34408896251b32d632553', '2017-03-06 16:41:43', null, null);
INSERT INTO `sys_time_list` VALUES ('300c913659dd4561a044bd8177279f02', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:58:37', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:06:38');
INSERT INTO `sys_time_list` VALUES ('3013e1cf791a43f99835ae06ecd9a12b', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:10:41', null, null);
INSERT INTO `sys_time_list` VALUES ('306231a33066474894bd618fc74ebcac', 'admin', '2017-03-14 09:50:39', null, null);
INSERT INTO `sys_time_list` VALUES ('323dbeb614cc402a87dca6335f33daa1', '17f1469a23f14a2b8ea1a94d8feabefd', '2017-03-06 16:42:24', null, null);
INSERT INTO `sys_time_list` VALUES ('3373f0922103467c829b08788743dcf1', '', '2017-03-14 13:46:47', null, null);
INSERT INTO `sys_time_list` VALUES ('34fc670e952c41418ed19d98c4e00df4', '', '2017-03-07 18:56:36', null, null);
INSERT INTO `sys_time_list` VALUES ('370d0ac76a79492eb9abac0e35e7537f', 'admin', '2017-03-02 15:46:45', 'admin', '2017-03-10 14:35:51');
INSERT INTO `sys_time_list` VALUES ('38b18de2453041c4ad46b86b18cd642a', 'admin', '2017-02-28 15:06:44', 'admin', '2017-02-28 16:27:22');
INSERT INTO `sys_time_list` VALUES ('3910908ed766422c97b94dd9139e6460', 'admin', '2017-02-28 15:11:37', 'admin', '2017-02-28 15:53:33');
INSERT INTO `sys_time_list` VALUES ('3989deeb8c2f4066bf5c97c4d266b654', '', '2017-03-10 14:47:55', '', '2017-03-10 16:55:48');
INSERT INTO `sys_time_list` VALUES ('39c8915415ce40429b361aeea4f88704', 'f549d961dcc34408896251b32d632553', '2017-03-06 16:41:19', null, null);
INSERT INTO `sys_time_list` VALUES ('3a208d37915b40d9b4e025a2a0918ae2', 'admin', '2017-03-13 14:18:30', null, null);
INSERT INTO `sys_time_list` VALUES ('3a625a5e5c3c409393e44ed5967d3624', '', '2017-03-16 09:12:41', null, null);
INSERT INTO `sys_time_list` VALUES ('3e9dcacd655d4aabbf42a099b14927d8', '', '2017-03-10 11:55:17', '', '2017-03-10 11:56:44');
INSERT INTO `sys_time_list` VALUES ('3eebb89fee9845959eadc139c3d6808f', '', '2017-03-07 18:57:45', null, null);
INSERT INTO `sys_time_list` VALUES ('40289be8b0db4b40b5c09a87e9d7e051', 'admin', '2017-03-14 09:17:15', null, null);
INSERT INTO `sys_time_list` VALUES ('405997fb523a4a79b9dc83e919164e44', 'admin', '2017-03-01 16:58:57', null, null);
INSERT INTO `sys_time_list` VALUES ('40d4a7209bba4276a30266eb9db11ad0', '', '2017-02-28 19:12:40', null, null);
INSERT INTO `sys_time_list` VALUES ('461e5070982b465cb0e1b5774372167d', 'admin', '2017-03-10 17:00:54', 'admin', '2017-03-10 17:08:38');
INSERT INTO `sys_time_list` VALUES ('48aa7c74be754d758655e7156c59b72f', '', '2017-03-08 08:39:32', null, null);
INSERT INTO `sys_time_list` VALUES ('48ac0084ff2746869962128119758100', '', '2017-03-06 16:38:23', '', '2017-03-07 23:06:47');
INSERT INTO `sys_time_list` VALUES ('498089d953894079b07205488df94d9d', '', '2017-02-28 12:39:09', null, null);
INSERT INTO `sys_time_list` VALUES ('4d902e707a3d458fba4b3b66d040829f', 'admin', '2017-02-28 11:27:35', 'admin', '2017-02-28 11:33:21');
INSERT INTO `sys_time_list` VALUES ('511ed41401b74281b9ece89c42d0d668', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-13 14:19:12', null, null);
INSERT INTO `sys_time_list` VALUES ('53d8d1f58a014480a843df89edd9c822', '', '2017-03-08 08:35:43', null, null);
INSERT INTO `sys_time_list` VALUES ('57a74c3d10bc47e58ff24c986ef77f69', '', '2017-02-28 19:26:48', null, null);
INSERT INTO `sys_time_list` VALUES ('58a7a53ae4c84b20b320bbafbdd56f19', 'admin', '2017-02-28 17:31:21', 'admin', '2017-02-28 17:31:29');
INSERT INTO `sys_time_list` VALUES ('58ab8612b36642c4a0fd96970a878180', '', '2017-02-28 12:38:19', null, null);
INSERT INTO `sys_time_list` VALUES ('5b30cbeff8be4be5ab69c3ec44a6f12f', 'admin', '2017-03-10 15:34:12', 'admin', '2017-03-10 15:42:57');
INSERT INTO `sys_time_list` VALUES ('5bb2696231d84d25ab4eccd54863368c', 'admin', '2017-03-14 09:46:14', 'admin', '2017-03-14 10:43:55');
INSERT INTO `sys_time_list` VALUES ('5cc05cea50c24f489edca10d62812c86', 'e7e3466e-0247-11e7-a606-00163e028d22', '2017-03-14 17:51:00', 'e7e3466e-0247-11e7-a606-00163e028d22', '2017-03-14 18:45:46');
INSERT INTO `sys_time_list` VALUES ('617d42f9c2244e21a906baaddee38b69', '', '2017-03-01 10:04:52', '', '2017-03-01 10:13:52');
INSERT INTO `sys_time_list` VALUES ('6374c1e4f3ac40da80b8f86b42d855a2', '', '2017-03-01 10:13:23', '', '2017-03-01 10:25:37');
INSERT INTO `sys_time_list` VALUES ('664354eb5aea4a00853ddb18dc68ebbd', '', '2017-03-01 17:23:13', '', '2017-03-02 11:24:35');
INSERT INTO `sys_time_list` VALUES ('672bf70518114cbfa03e809489f3ec43', '', '2017-03-01 09:19:55', '', '2017-03-01 09:43:46');
INSERT INTO `sys_time_list` VALUES ('679e8bd02980479e963b82bf30673f1d', '', '2017-03-13 08:52:59', '', '2017-03-13 11:30:43');
INSERT INTO `sys_time_list` VALUES ('69b615ffe91a4b86b991a2e141f3987f', 'admin', '2017-03-14 10:39:51', 'admin', '2017-03-14 10:42:16');
INSERT INTO `sys_time_list` VALUES ('6c0310128a78465891977fe2125802e4', '', '2017-03-10 14:46:36', '', '2017-03-10 14:58:56');
INSERT INTO `sys_time_list` VALUES ('6c9f1c066a6c49aaa2c4cec375436a29', 'admin', '2017-03-02 15:40:13', 'admin', '2017-03-02 19:09:10');
INSERT INTO `sys_time_list` VALUES ('6cf1391a9e3c4ac5af95534de51d7bd6', '', '2017-03-01 15:42:39', '', '2017-03-01 16:32:31');
INSERT INTO `sys_time_list` VALUES ('6e31821b3d214bacaf551a73d2ab9c0f', '', '2017-03-13 11:58:08', 'admin', '2017-03-13 13:45:21');
INSERT INTO `sys_time_list` VALUES ('6e84e227c5cd4a27bc22d3c991b7dcdc', '00355a20-ffbb-11e6-a606-00163e028d22', '2017-03-04 09:28:05', null, null);
INSERT INTO `sys_time_list` VALUES ('6f7702006fd14047ba9b7b38bf1ab2ff', 'admin', '2017-03-14 09:14:54', null, null);
INSERT INTO `sys_time_list` VALUES ('7030524f08a742649a9c5255199f797d', '', '2017-03-01 17:22:51', '', '2017-03-02 11:24:32');
INSERT INTO `sys_time_list` VALUES ('7118e0b350e14f7aa9715831e9cf16d3', '', '2017-03-01 15:09:21', '', '2017-03-01 15:10:55');
INSERT INTO `sys_time_list` VALUES ('77885a6895b543059b135354d5f62fce', '', '2017-03-01 17:23:54', '', '2017-03-02 11:25:16');
INSERT INTO `sys_time_list` VALUES ('7818fb74c057429d9386dc1d9e964963', '', '2017-03-06 16:37:37', '', '2017-03-07 23:05:15');
INSERT INTO `sys_time_list` VALUES ('7a3422890ab547e78de73c4c375b3018', 'admin', '2017-03-01 15:55:10', 'admin', '2017-03-01 15:55:33');
INSERT INTO `sys_time_list` VALUES ('7b2dad54ce084faf87a0f027dbcf9aec', '', '2017-03-14 18:19:11', null, null);
INSERT INTO `sys_time_list` VALUES ('7d5f7d02ccc74bbf9ccd8fdef0c94a3a', '', '2017-03-01 17:23:29', '', '2017-03-02 11:25:09');
INSERT INTO `sys_time_list` VALUES ('7e9a289b3597483a84c08bbe71077558', '', '2017-03-01 15:10:04', '', '2017-03-10 12:39:17');
INSERT INTO `sys_time_list` VALUES ('7ec302194e7244839df7e95f39eae685', 'admin', '2017-03-01 17:11:39', 'admin', '2017-03-10 14:37:04');
INSERT INTO `sys_time_list` VALUES ('7f841b32546a470f863dc6029017b1c2', 'admin', '2017-03-16 09:20:54', null, null);
INSERT INTO `sys_time_list` VALUES ('80e77407cc934a1a8049cf187d1ff294', 'e7e3466e-0247-11e7-a606-00163e028d22', '2017-03-14 18:36:51', 'e7e3466e-0247-11e7-a606-00163e028d22', '2017-03-14 18:37:06');
INSERT INTO `sys_time_list` VALUES ('80f3d2769ba24ff493c101d08f4a65ab', '', '2017-03-08 08:37:29', null, null);
INSERT INTO `sys_time_list` VALUES ('8167f402966c464e906cfdf9385d5295', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:55:40', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:55:47');
INSERT INTO `sys_time_list` VALUES ('823fd4c5d7d34f5fbd308a1d4d04a116', '17f1469a23f14a2b8ea1a94d8feabefd', '2017-03-06 16:42:54', 'c743884dbf964cc3a1f0e5eed1b7be67', '2017-03-06 16:44:10');
INSERT INTO `sys_time_list` VALUES ('824b9dfc5bbb4ba9a21f86cb392eaa65', '', '2017-03-10 09:52:12', '', '2017-03-16 09:11:14');
INSERT INTO `sys_time_list` VALUES ('852659bf3431402a8dc3cfee7dc99c3d', 'e7e3466e-0247-11e7-a606-00163e028d22', '2017-03-11 12:00:27', 'e7e3466e-0247-11e7-a606-00163e028d22', '2017-03-11 12:00:56');
INSERT INTO `sys_time_list` VALUES ('85433893d097453dbac55f45da3ebc94', 'admin', '2017-02-28 17:32:38', 'admin', '2017-02-28 17:32:44');
INSERT INTO `sys_time_list` VALUES ('869d5a2392b44c6ca61d49f8223e9483', '', '2017-03-16 09:13:17', '', '2017-03-16 09:14:47');
INSERT INTO `sys_time_list` VALUES ('8a7e4ce7720d44a1a7cfed7976a5beb7', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:11:10', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:19:28');
INSERT INTO `sys_time_list` VALUES ('8aad10c823334215ae6a8b0fc48d134b', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:55:29', null, null);
INSERT INTO `sys_time_list` VALUES ('8e65a90f61c24f7e8e4ab06b21bae29b', '', '2017-03-08 08:37:17', null, null);
INSERT INTO `sys_time_list` VALUES ('8f4c6add246641618de98a7812ce2874', '', '2017-03-16 09:10:13', '', '2017-03-16 09:11:20');
INSERT INTO `sys_time_list` VALUES ('91e3d3d49f1a4325b6a0d92105e62a40', 'admin', '2017-03-14 09:43:55', 'admin', '2017-03-14 09:44:15');
INSERT INTO `sys_time_list` VALUES ('92b96c59e4e34bd0a3db2a96b8460c5c', 'admin', '2017-03-06 16:35:39', 'admin', '2017-03-06 16:35:51');
INSERT INTO `sys_time_list` VALUES ('931ccdb8038f43cf8ec6f61fbb3143e5', 'admin', '2017-03-14 09:17:16', null, null);
INSERT INTO `sys_time_list` VALUES ('954a866487c249d4bac49782b707a39c', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:44:44', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:45:08');
INSERT INTO `sys_time_list` VALUES ('95857a7225794f95ba5dec77094c69fa', '', '2017-03-08 08:36:44', null, null);
INSERT INTO `sys_time_list` VALUES ('95dc04c7215c41b19a6fb739e51b2082', '', '2017-03-01 09:16:55', '', '2017-03-14 13:54:14');
INSERT INTO `sys_time_list` VALUES ('971e74bacdaf444c9aba0cd75c38ad82', 'admin', '2017-03-05 00:04:40', 'admin', '2017-03-05 00:05:16');
INSERT INTO `sys_time_list` VALUES ('9788ccce82b34a6dbda2677cb2bd8f0a', '', '2017-03-08 08:49:14', null, null);
INSERT INTO `sys_time_list` VALUES ('9ac8a29efca547fb9d078f9b09f87872', '', '2017-03-13 08:50:43', '', '2017-03-13 10:06:24');
INSERT INTO `sys_time_list` VALUES ('9bb5d4fcd65e415886db2930c492cfcf', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:58:51', null, null);
INSERT INTO `sys_time_list` VALUES ('9da357e6c7e24cab95711739622f39c2', 'admin', '2017-03-14 10:18:36', 'admin', '2017-03-14 10:18:49');
INSERT INTO `sys_time_list` VALUES ('a0a90d21cf3145769e4ac34f8044a17c', '', '2017-03-01 09:16:47', '', '2017-03-13 12:04:20');
INSERT INTO `sys_time_list` VALUES ('a187c76fcf7c4dda868773c4ce32c3be', 'admin', '2017-03-01 15:29:29', 'admin', '2017-03-01 16:52:50');
INSERT INTO `sys_time_list` VALUES ('a1fbb5f457c646a19d810404a7ab2efc', '', '2017-03-06 16:37:09', null, null);
INSERT INTO `sys_time_list` VALUES ('a29bc03913884200b36af5851bb97a24', 'admin', '2017-03-16 11:37:02', 'admin', '2017-03-16 11:37:29');
INSERT INTO `sys_time_list` VALUES ('a36b8767ceba40e7bb1af85bf77fd114', 'admin', '2017-03-11 10:31:00', 'admin', '2017-03-11 10:31:13');
INSERT INTO `sys_time_list` VALUES ('a5be8f77954d41c5a347b2461946006a', 'admin', '2017-03-02 15:46:41', 'admin', '2017-03-10 14:35:13');
INSERT INTO `sys_time_list` VALUES ('a64f306d77d8486d87f237aca19a99a0', 'admin', '2017-02-28 15:04:55', 'admin', '2017-02-28 16:25:38');
INSERT INTO `sys_time_list` VALUES ('a83a382e77024cc595a7ccf13c98d089', '', '2017-03-10 14:49:31', '', '2017-03-10 16:56:10');
INSERT INTO `sys_time_list` VALUES ('a9bd7c948e6c43f5ac074c41e000af65', 'admin', '2017-03-16 11:36:40', 'admin', '2017-03-16 14:16:46');
INSERT INTO `sys_time_list` VALUES ('ac91fe2593fb41fcb390c0a35138a237', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 13:30:06', null, null);
INSERT INTO `sys_time_list` VALUES ('acc32eaeb07f41b3990b8ad6ebcb4148', '', '2017-03-10 11:54:10', '', '2017-03-10 11:56:27');
INSERT INTO `sys_time_list` VALUES ('b0714d87e91e4dafae7b7767e0ac6255', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 11:56:44', null, null);
INSERT INTO `sys_time_list` VALUES ('b3923a710b8c455f96120f72799c3471', '', '2017-03-10 14:49:14', '', '2017-03-10 16:56:05');
INSERT INTO `sys_time_list` VALUES ('b4e48ed392374296a47783503187149e', 'admin', '2017-03-02 15:42:36', 'admin', '2017-03-02 19:05:13');
INSERT INTO `sys_time_list` VALUES ('b5545655c63642338928bb9476832c29', '', '2017-03-10 11:54:57', '', '2017-03-10 13:56:19');
INSERT INTO `sys_time_list` VALUES ('b61c8b70f0e74068af19ca707f995207', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:08:56', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:09:40');
INSERT INTO `sys_time_list` VALUES ('ba7aa68555d5474ca6a6e3a12ccd1afe', '', '2017-03-01 15:41:16', '', '2017-03-01 17:30:36');
INSERT INTO `sys_time_list` VALUES ('bbc189ab200e46098a2d6feb4f85cbab', 'admin', '2017-03-14 09:11:23', null, null);
INSERT INTO `sys_time_list` VALUES ('bc02e728d9d546c384c21d8eb90aba87', 'admin', '2017-03-14 13:35:15', 'admin', '2017-03-14 13:39:27');
INSERT INTO `sys_time_list` VALUES ('c00e01f8a7c743149735ba65c7d014e9', 'admin', '2017-03-16 09:22:19', 'admin', '2017-03-16 14:05:50');
INSERT INTO `sys_time_list` VALUES ('c02296a1711d40dd81852045024d71e5', 'admin', '2017-03-06 16:36:10', 'admin', '2017-03-06 16:36:18');
INSERT INTO `sys_time_list` VALUES ('c1834167f54a4e8bbcd60e5985d9b914', '', '2017-02-28 19:26:59', null, null);
INSERT INTO `sys_time_list` VALUES ('c3524525c489444aac421df515c63873', '', '2017-03-01 15:39:58', '', '2017-03-16 09:11:03');
INSERT INTO `sys_time_list` VALUES ('c4dae5fe1acc46e8945c1f415258fddd', '', '2017-03-01 10:13:43', null, null);
INSERT INTO `sys_time_list` VALUES ('c70a7188d57841d08fceb2702ff7ec9b', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:15:51', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 10:16:01');
INSERT INTO `sys_time_list` VALUES ('c743884dbf964cc3a1f0e5eed1b7be67', '', '2017-03-06 16:39:58', '', '2017-03-14 18:35:27');
INSERT INTO `sys_time_list` VALUES ('c7c081ac34994cf99a6383ce416a3eff', '6e31821b3d214bacaf551a73d2ab9c0f', '2017-03-13 13:47:38', null, null);
INSERT INTO `sys_time_list` VALUES ('c7ec9ea7f3324366b27022e657888437', '', '2017-03-06 16:38:04', '', '2017-03-07 23:07:04');
INSERT INTO `sys_time_list` VALUES ('ca847b3e54284b679a639cdb7281936a', 'admin', '2017-03-14 09:50:24', 'admin', '2017-03-14 09:51:33');
INSERT INTO `sys_time_list` VALUES ('cb9a9aecaa4f4509be7ce39fe53c9140', '', '2017-03-13 08:54:38', null, null);
INSERT INTO `sys_time_list` VALUES ('cc72d0bd1ac84cdabecdb1804c2ca07a', 'admin', '2017-02-28 17:32:01', 'admin', '2017-02-28 17:32:07');
INSERT INTO `sys_time_list` VALUES ('ce09b46ede8946f0bc5003c19987b363', '', '2017-03-01 17:24:15', '', '2017-03-02 11:25:22');
INSERT INTO `sys_time_list` VALUES ('ce59966a60a049ea8ac3fe3c96d5726f', 'admin', '2017-03-01 11:35:46', 'admin', '2017-03-13 11:26:17');
INSERT INTO `sys_time_list` VALUES ('d19a47525f134dd4b99fca6d9b867f98', '', '2017-03-08 08:35:58', null, null);
INSERT INTO `sys_time_list` VALUES ('d2e4bd29b8c945b1bd3187670e52d0d1', 'admin', '2017-03-14 09:41:28', 'admin', '2017-03-14 09:41:49');
INSERT INTO `sys_time_list` VALUES ('d7ac735162954c9382936183dd2eb465', '', '2017-03-01 10:15:00', '', '2017-03-10 12:39:10');
INSERT INTO `sys_time_list` VALUES ('d7ea92ab47cb41b98cde8c0f31a1b004', '', '2017-02-28 12:37:53', null, null);
INSERT INTO `sys_time_list` VALUES ('d8897ac4d4a8412a917c2cae0eeef56f', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:59:14', null, null);
INSERT INTO `sys_time_list` VALUES ('d94225f363454f3d8c4a600eaad972f5', '', '2017-03-14 18:19:20', null, null);
INSERT INTO `sys_time_list` VALUES ('da7fc8cdc660492ea972f65f93689955', 'admin', '2017-02-28 16:56:31', 'admin', '2017-02-28 16:58:26');
INSERT INTO `sys_time_list` VALUES ('da8bf91990b44726bfa4ea7a05a4499f', '', '2017-03-01 15:56:55', '', '2017-03-10 14:30:38');
INSERT INTO `sys_time_list` VALUES ('dd32d90c2ad44af982dd4909d7550a3a', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:52:25', null, null);
INSERT INTO `sys_time_list` VALUES ('dd414b3823fc43f8879997403e61c6dd', 'admin', '2017-03-14 09:17:18', null, null);
INSERT INTO `sys_time_list` VALUES ('dd5a863a9b6d4c58a857cb6247a0f47d', 'admin', '2017-03-13 11:31:21', null, null);
INSERT INTO `sys_time_list` VALUES ('dfd78ac322c84668861273770e1c6dc5', 'admin', '2017-03-14 10:27:08', 'admin', '2017-03-14 10:27:21');
INSERT INTO `sys_time_list` VALUES ('e031579252e94ec5b6a23804aadd7eed', 'admin', '2017-02-28 16:31:55', 'admin', '2017-02-28 16:56:11');
INSERT INTO `sys_time_list` VALUES ('e1c01d9a97684a16891bcbc02ff43455', 'admin', '2017-03-02 11:33:38', 'admin', '2017-03-02 11:55:09');
INSERT INTO `sys_time_list` VALUES ('e24a0ded406d4cc9850fef50201f8cb1', 'admin', '2017-03-14 09:17:17', null, null);
INSERT INTO `sys_time_list` VALUES ('e4f75e6814d54ceeb23376a6d9342a84', '', '2017-03-10 14:48:16', '', '2017-03-10 16:55:54');
INSERT INTO `sys_time_list` VALUES ('e6ee26506c99417eb2535acf7f27a480', '', '2017-03-14 13:44:54', '', '2017-03-16 09:11:07');
INSERT INTO `sys_time_list` VALUES ('e72277f81d2c4fb089eec4cb36c13b38', '00355a20-ffbb-11e6-a606-00163e028d22', '2017-03-04 09:37:20', null, null);
INSERT INTO `sys_time_list` VALUES ('e876bdcfc6394ec8b4007e6585ed1832', 'admin', '2017-03-01 11:29:26', 'admin', '2017-03-01 15:39:01');
INSERT INTO `sys_time_list` VALUES ('e886c39704b6464585bd9e0df3ff83d1', '', '2017-03-13 08:52:08', '', '2017-03-14 11:31:36');
INSERT INTO `sys_time_list` VALUES ('ea13706be922472c9bcf779b9822a1f6', 'admin', '2017-02-28 19:10:56', 'admin', '2017-02-28 19:11:05');
INSERT INTO `sys_time_list` VALUES ('ea8aa671db9541fe92231aaf075093e1', '', '2017-03-16 09:17:26', null, null);
INSERT INTO `sys_time_list` VALUES ('eb7319527d974ba2aaf5c89716da07b5', '', '2017-03-13 08:55:54', null, null);
INSERT INTO `sys_time_list` VALUES ('eca22c1d3fed454983c1fcd647c7ae6e', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:52:19', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:55:16');
INSERT INTO `sys_time_list` VALUES ('ed2ebb455ed94fe4a38b73d4dcc81afc', 'admin', '2017-03-14 09:17:05', null, null);
INSERT INTO `sys_time_list` VALUES ('f178a3b57fc54387ac2a87518afc3b49', 'admin', '2017-03-10 16:56:47', 'admin', '2017-03-10 17:00:20');
INSERT INTO `sys_time_list` VALUES ('f1bc8030d1484e6bb212e5d45a9ce450', '', '2017-03-01 15:09:48', '', '2017-03-01 15:11:08');
INSERT INTO `sys_time_list` VALUES ('f34ae1508624442286c443918b5997dd', '', '2017-03-04 09:11:07', '', '2017-03-04 09:22:39');
INSERT INTO `sys_time_list` VALUES ('f4e033e2e6a341e586684cdd0b7d80eb', 'admin', '2017-03-01 11:27:57', null, null);
INSERT INTO `sys_time_list` VALUES ('f549d961dcc34408896251b32d632553', '', '2017-03-06 16:39:07', null, null);
INSERT INTO `sys_time_list` VALUES ('f6108f38eb6c47979bc1ad2a71659dbb', '', '2017-03-16 09:15:20', 'admin', '2017-03-16 10:05:47');
INSERT INTO `sys_time_list` VALUES ('f8eaef0a7e2249b396acbc480b90d032', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:52:41', null, null);
INSERT INTO `sys_time_list` VALUES ('f948c725636a4f3f9a4c7e3d39bc5d01', 'admin', '2017-03-02 15:37:03', 'admin', '2017-03-02 19:08:50');
INSERT INTO `sys_time_list` VALUES ('fb60f47e162c49f69c1dda2e9f0b3fa8', '', '2017-03-08 08:38:57', null, null);
INSERT INTO `sys_time_list` VALUES ('fc1dd390f7e949ef9d43e314baa0e4ce', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-14 09:52:39', null, null);
INSERT INTO `sys_time_list` VALUES ('fec3e2fc717541c2ab24f05e37aacae3', '', '2017-03-01 10:14:31', '', '2017-03-01 11:27:42');
INSERT INTO `sys_time_list` VALUES ('ff27a7c775814b43ad4ef78ac94cb0cd', '', '2017-03-13 08:54:01', '', '2017-03-14 09:20:40');
INSERT INTO `sys_time_list` VALUES ('ff2fba3f59f54dcba0a3fe5364952906', 'admin', '2017-03-14 09:18:43', 'admin', '2017-03-14 09:20:10');

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
  `create_user` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `user_type` varchar(10) DEFAULT NULL COMMENT '1:企业用户,2:代理商用户',
  `points` int(11) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `charge` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('00355a20-ffbb-11e6-a606-00163e028d22', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 'admin', 'b6a7ee64bcc04255a3f348380e2df245', '10', null, null, null, '0', null, null);
INSERT INTO `sys_user` VALUES ('17f1469a23f14a2b8ea1a94d8feabefd', 'qty001', 'e10adc3949ba59abbe56e057f20f883e', '库管专员', '13902601727', 'a30002db053a4b7baf1f37488b59a1c5', '10', null, null, '1', '0', null, null);
INSERT INTO `sys_user` VALUES ('19fd8e0982f9424b981c15b180b3acdc', 'agent', 'e10adc3949ba59abbe56e057f20f883e', '总代', '13800138000', 'e2ff5e22cfe94054932ffca05e145934', '10', 'admin', '2017-03-13 13:50:03', '2', '200', '在这里', null);
INSERT INTO `sys_user` VALUES ('1b87309787a64678a95b7183e41cf272', '123', 'e10adc3949ba59abbe56e057f20f883e', '123', '123', 'e2ff5e22cfe94054932ffca05e145934', '10', null, null, null, '0', null, null);
INSERT INTO `sys_user` VALUES ('1f798aa339924711aa1ed27daec3cb6c', 'agent1', 'e10adc3949ba59abbe56e057f20f883e', '代理商2', '111', 'a30002db053a4b7baf1f37488b59a1c5', '-1', 'e7e3466e-0247-11e7-a606-00163e028d22', '2017-03-14 17:50:39', '2', null, '在哪', null);
INSERT INTO `sys_user` VALUES ('306231a33066474894bd618fc74ebcac', 'aa', 'e10adc3949ba59abbe56e057f20f883e', 'a', 'a', 'e2ff5e22cfe94054932ffca05e145934', '10', 'admin', '2017-03-14 09:50:39', '2', '50', 'aa', null);
INSERT INTO `sys_user` VALUES ('3eebb89fee9845959eadc139c3d6808f', '001', 'e10adc3949ba59abbe56e057f20f883e', '人事主管', '1111', 'b6a7ee64bcc04255a3f348380e2df245', '10', null, null, null, '0', null, null);
INSERT INTO `sys_user` VALUES ('511ed41401b74281b9ece89c42d0d668', 'agent1', 'e10adc3949ba59abbe56e057f20f883e', '123456', '1232', 'e2ff5e22cfe94054932ffca05e145934', '10', '19fd8e0982f9424b981c15b180b3acdc', '2017-03-13 14:19:12', '2', '201', 'Test', null);
INSERT INTO `sys_user` VALUES ('57a74c3d10bc47e58ff24c986ef77f69', 'a', 'e10adc3949ba59abbe56e057f20f883e', 'a', '13', 'f92ac73813eb4545bc29bde7e5f86e41', '10', null, null, null, '0', null, null);
INSERT INTO `sys_user` VALUES ('5cc05cea50c24f489edca10d62812c86', 'agent', 'e10adc3949ba59abbe56e057f20f883e', '总代', '13902601727', 'a30002db053a4b7baf1f37488b59a1c5', '10', 'e7e3466e-0247-11e7-a606-00163e028d22', '2017-03-14 17:51:00', '2', '1000000', '总公司', null);
INSERT INTO `sys_user` VALUES ('71be76f7-fe54-11e6-a606-00163e028d22', 'admin', 'e10adc3949ba59abbe56e057f20f883e', null, null, 'ddb5dbae8f7241a59d78a109baaf4f6c', '10', null, null, null, '0', null, null);
INSERT INTO `sys_user` VALUES ('986d3c89-fda6-11e6-a606-00163e028d22', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'aa', 'aa', 'f92ac73813eb4545bc29bde7e5f86e41', '10', null, null, null, '0', null, null);
INSERT INTO `sys_user` VALUES ('admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '13902601727', 'e2ff5e22cfe94054932ffca05e145934', '10', null, null, '1', '-451', 'Test', null);
INSERT INTO `sys_user` VALUES ('c743884dbf964cc3a1f0e5eed1b7be67', 'qty002', 'e10adc3949ba59abbe56e057f20f883e', '库管主管', '13902601727', 'a30002db053a4b7baf1f37488b59a1c5', '10', null, null, '1', '0', null, null);
INSERT INTO `sys_user` VALUES ('e7e3466e-0247-11e7-a606-00163e028d22', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '13902601727', 'a30002db053a4b7baf1f37488b59a1c5', '10', null, null, '1', '-1000000', null, null);
INSERT INTO `sys_user` VALUES ('f34ae1508624442286c443918b5997dd', '11111', '96e79218965eb72c92a549dd5a330112', '11111', '1111', 'e2ff5e22cfe94054932ffca05e145934', '-1', null, null, null, '0', null, null);
INSERT INTO `sys_user` VALUES ('f549d961dcc34408896251b32d632553', 'cus001', 'e10adc3949ba59abbe56e057f20f883e', '客户专员', '13902601727', 'a30002db053a4b7baf1f37488b59a1c5', '10', null, null, null, '0', null, null);

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
INSERT INTO `sys_user_role` VALUES ('00613a79-ffbb-11e6-a606-00163e028d22', '00355a20-ffbb-11e6-a606-00163e028d22', '003559ec-ffbb-11e6-a606-00163e028d22');
INSERT INTO `sys_user_role` VALUES ('336be380-07a2-11e7-a606-00163e028d22', '6e31821b3d214bacaf551a73d2ab9c0f', '95dc04c7215c41b19a6fb739e51b2082');
INSERT INTO `sys_user_role` VALUES ('343a2ec3-fd9f-11e6-a606-00163e028d22', '1b87309787a64678a95b7183e41cf272', '2c5e728bf9c345ba848fa71d3446cd8d');
INSERT INTO `sys_user_role` VALUES ('6c31e8ac-07b3-11e7-a606-00163e028d22', '19fd8e0982f9424b981c15b180b3acdc', '95dc04c7215c41b19a6fb739e51b2082');
INSERT INTO `sys_user_role` VALUES ('71e25349-fe54-11e6-a606-00163e028d22', '71be76f7-fe54-11e6-a606-00163e028d22', '71be76be-fe54-11e6-a606-00163e028d22');
INSERT INTO `sys_user_role` VALUES ('8318091b-0248-11e7-a606-00163e028d22', 'f549d961dcc34408896251b32d632553', '7818fb74c057429d9386dc1d9e964963');
INSERT INTO `sys_user_role` VALUES ('895fadfc-0248-11e7-a606-00163e028d22', 'c743884dbf964cc3a1f0e5eed1b7be67', '48ac0084ff2746869962128119758100');
INSERT INTO `sys_user_role` VALUES ('8d17b1d9-0248-11e7-a606-00163e028d22', '17f1469a23f14a2b8ea1a94d8feabefd', 'c7ec9ea7f3324366b27022e657888437');
INSERT INTO `sys_user_role` VALUES ('8ed94d39-08a2-11e7-a606-00163e028d22', '1f798aa339924711aa1ed27daec3cb6c', 'd94225f363454f3d8c4a600eaad972f5');
INSERT INTO `sys_user_role` VALUES ('8ed9502a-08a2-11e7-a606-00163e028d22', '5cc05cea50c24f489edca10d62812c86', 'd94225f363454f3d8c4a600eaad972f5');
INSERT INTO `sys_user_role` VALUES ('98779a80-fda6-11e6-a606-00163e028d22', '986d3c89-fda6-11e6-a606-00163e028d22', '986d3c51-fda6-11e6-a606-00163e028d22');
INSERT INTO `sys_user_role` VALUES ('9fcb80d6-0858-11e7-a606-00163e028d22', '306231a33066474894bd618fc74ebcac', 'a5af2cc9a5244fd3a50728b24b513451');
INSERT INTO `sys_user_role` VALUES ('9fcbcd6f-0858-11e7-a606-00163e028d22', '306231a33066474894bd618fc74ebcac', '2c5e728bf9c345ba848fa71d3446cd8d');
INSERT INTO `sys_user_role` VALUES ('a22fd0cd-fa71-11e6-a606-00163e028d22', 'admin', 'a5af2cc9a5244fd3a50728b24b513451');
INSERT INTO `sys_user_role` VALUES ('d421f4ef-fda8-11e6-a606-00163e028d22', '57a74c3d10bc47e58ff24c986ef77f69', 'c1834167f54a4e8bbcd60e5985d9b914');
INSERT INTO `sys_user_role` VALUES ('df7902d8-faf7-11e6-a606-00163e028d22', 'admin', '2c5e728bf9c345ba848fa71d3446cd8d');
INSERT INTO `sys_user_role` VALUES ('e02a16a7-07b4-11e7-a606-00163e028d22', '3a208d37915b40d9b4e025a2a0918ae2', 'a5af2cc9a5244fd3a50728b24b513451');
INSERT INTO `sys_user_role` VALUES ('e02a5d3e-07b4-11e7-a606-00163e028d22', '3a208d37915b40d9b4e025a2a0918ae2', '2c5e728bf9c345ba848fa71d3446cd8d');
INSERT INTO `sys_user_role` VALUES ('e80e4347-0247-11e7-a606-00163e028d22', 'e7e3466e-0247-11e7-a606-00163e028d22', 'e7e34638-0247-11e7-a606-00163e028d22');
INSERT INTO `sys_user_role` VALUES ('ee8d0617-0324-11e7-a606-00163e028d22', '3eebb89fee9845959eadc139c3d6808f', '24f0dfea8f1d444685c0e0bb1c03a218');
INSERT INTO `sys_user_role` VALUES ('f96ce778-07b4-11e7-a606-00163e028d22', '511ed41401b74281b9ece89c42d0d668', '95dc04c7215c41b19a6fb739e51b2082');

-- ----------------------------
-- View structure for `v_status`
-- ----------------------------
DROP VIEW IF EXISTS `v_status`;
CREATE ALGORITHM=UNDEFINED DEFINER=`jst`@`%` SQL SECURITY DEFINER VIEW `v_status` AS select `a`.`val` AS `val`,`a`.`name` AS `name` from `sys_dic` `a` where (`a`.`dic_type` = 'status') ;

-- ----------------------------
-- View structure for `v_valid_status`
-- ----------------------------
DROP VIEW IF EXISTS `v_valid_status`;
CREATE ALGORITHM=UNDEFINED DEFINER=`jst`@`%` SQL SECURITY DEFINER VIEW `v_valid_status` AS select `a`.`id` AS `id`,`a`.`name` AS `name`,`a`.`val` AS `val`,`a`.`dic_type` AS `dic_type` from `sys_dic` `a` where (`a`.`dic_type` = 'validStatus') ;

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
-- Function structure for `getUserName`
-- ----------------------------
DROP FUNCTION IF EXISTS `getUserName`;
DELIMITER ;;
CREATE DEFINER=`jst`@`%` FUNCTION `getUserName`(p_userId varchar(36)) RETURNS varchar(500) CHARSET utf8mb4
BEGIN
	DECLARE
		v_ret VARCHAR (500);

SELECT
	user_name INTO v_ret
FROM
	sys_user
WHERE
	id=p_userId;

RETURN v_ret;
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

-- ----------------------------
-- Function structure for `saveOrgAuth`
-- ----------------------------
DROP FUNCTION IF EXISTS `saveOrgAuth`;
DELIMITER ;;
CREATE DEFINER=`jst`@`%` FUNCTION `saveOrgAuth`(p_orgId varchar(50),p_authIds text) RETURNS int(11)
BEGIN
	DELETE
		FROM
		sys_org_auth
		WHERE
		org_id =p_orgId ;
		INSERT INTO sys_org_auth
		(id, org_id, auth_id) SELECT
		UUID(),
		p_orgId,
		a.id
		FROM
		sys_auth a
		WHERE
		CONCAT(',',p_authIds,
		',') LIKE CONCAT('%,',
		a.id,
		',%');
	RETURN 1;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `saveRoleAuth`
-- ----------------------------
DROP FUNCTION IF EXISTS `saveRoleAuth`;
DELIMITER ;;
CREATE DEFINER=`jst`@`%` FUNCTION `saveRoleAuth`(p_roleId varchar(36),authIds text) RETURNS int(11)
BEGIN
		DELETE
		FROM
		sys_role_auth
		WHERE
		role_id = p_roleId ;
		INSERT INTO sys_role_auth
		(id, role_id, auth_id) SELECT
		UUID(),
		p_roleId,
		a.id
		FROM
		sys_auth a
		WHERE
		CONCAT(
		',',
		authIds,
		','
		) LIKE
		CONCAT('%,', a.id, ',%');
	RETURN 1;
END
;;
DELIMITER ;
