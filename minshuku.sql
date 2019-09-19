/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : minshuku

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-09-19 15:49:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bookinginfo
-- ----------------------------
DROP TABLE IF EXISTS `bookinginfo`;
CREATE TABLE `bookinginfo` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `uid` int(11) NOT NULL COMMENT '预定人ID',
  `houseid` int(11) NOT NULL COMMENT '预定房间ID',
  `person_num` int(11) DEFAULT NULL COMMENT '入住人数',
  `residence_time` int(11) DEFAULT NULL COMMENT '居住时长',
  `check_in_time` date NOT NULL COMMENT '入住时间',
  `check_out_time` date NOT NULL COMMENT '退房日期',
  `idcard` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '证件号',
  PRIMARY KEY (`orderid`),
  KEY `fk_houseid` (`houseid`),
  KEY `order_userinfo_fk_uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bookinginfo
-- ----------------------------
INSERT INTO `bookinginfo` VALUES ('4', '4', '3', null, null, '2019-08-13', '2019-08-28', '933526353');
INSERT INTO `bookinginfo` VALUES ('5', '2', '1', null, null, '2017-01-02', '2017-01-02', '29397905');
INSERT INTO `bookinginfo` VALUES ('6', '1', '2', null, null, '2019-08-27', '2019-08-31', '346410496');
INSERT INTO `bookinginfo` VALUES ('7', '5', '2', null, null, '2019-08-30', '2019-08-31', '643858798');
INSERT INTO `bookinginfo` VALUES ('8', '1', '3', null, null, '2019-08-29', '2019-08-30', '856086134');
INSERT INTO `bookinginfo` VALUES ('9', '1', '1', null, null, '2019-08-29', '2019-08-31', '968736303');
INSERT INTO `bookinginfo` VALUES ('10', '3', '3', null, null, '0000-00-00', '0000-00-00', '303493945');
INSERT INTO `bookinginfo` VALUES ('11', '1', '3', null, null, '2019-08-30', '2019-08-31', '611260848');
INSERT INTO `bookinginfo` VALUES ('12', '1', '1', null, null, '2019-08-30', '2019-08-31', '145822434');
INSERT INTO `bookinginfo` VALUES ('13', '1', '2', null, null, '2019-08-30', '2019-08-31', '895329657');
INSERT INTO `bookinginfo` VALUES ('14', '1', '2', null, null, '2019-08-29', '2019-08-30', '39181014');
INSERT INTO `bookinginfo` VALUES ('15', '1', '2', null, null, '2019-08-29', '2019-08-30', '509916128');
INSERT INTO `bookinginfo` VALUES ('16', '4', '3', null, null, '0000-00-00', '0000-00-00', '432037631');
INSERT INTO `bookinginfo` VALUES ('17', '2', '3', null, null, '0000-00-00', '0000-00-00', '630439799');
INSERT INTO `bookinginfo` VALUES ('18', '1', '3', null, null, '2019-08-30', '2019-08-31', '830852361');
INSERT INTO `bookinginfo` VALUES ('19', '1', '2', null, null, '2019-08-31', '2019-09-03', '16808555');
INSERT INTO `bookinginfo` VALUES ('20', '1', '2', null, null, '2019-09-02', '2019-09-04', '317244540');
INSERT INTO `bookinginfo` VALUES ('21', '1', '2', null, null, '2019-09-11', '2019-09-05', '365835180');
INSERT INTO `bookinginfo` VALUES ('22', '1', '1', null, null, '2019-09-03', '2019-09-04', '249796368');
INSERT INTO `bookinginfo` VALUES ('23', '4', '1', null, null, '2019-09-03', '2019-09-04', '156193952');
INSERT INTO `bookinginfo` VALUES ('24', '3', '16', null, null, '2019-09-17', '2019-09-27', '997313463');
INSERT INTO `bookinginfo` VALUES ('25', '1', '1', null, null, '2019-09-05', '2019-09-05', '496419727');
INSERT INTO `bookinginfo` VALUES ('26', '1', '1', null, null, '2019-09-05', '2019-09-06', '614542509');
INSERT INTO `bookinginfo` VALUES ('27', '2', '18', null, null, '2019-09-05', '2019-09-06', '932553157');

-- ----------------------------
-- Table structure for dibu
-- ----------------------------
DROP TABLE IF EXISTS `dibu`;
CREATE TABLE `dibu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `connect1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `connect2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `connect3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dibu
-- ----------------------------
INSERT INTO `dibu` VALUES ('1', '工作机会', '信任与安全', '为什么要出租?');
INSERT INTO `dibu` VALUES ('2', '名树新闻', '邀请好友', '待客之道');
INSERT INTO `dibu` VALUES ('3', '政策', '名树公民', '房东义务');
INSERT INTO `dibu` VALUES ('4', '帮助', '商务差旅', '开展体验 新推出');
INSERT INTO `dibu` VALUES ('5', '多元化与归属感', '旅游指南', 'Open Homes');
INSERT INTO `dibu` VALUES ('6', '无障碍设施 新推出', '名树杂志', ' ');

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `houseid` int(11) NOT NULL AUTO_INCREMENT COMMENT '房源ID',
  `uid` int(11) NOT NULL COMMENT '房主ID',
  `housetype` int(11) DEFAULT NULL COMMENT '房源类型',
  `rentwayid` int(11) DEFAULT NULL COMMENT '出租方式',
  `guestnum` int(11) DEFAULT NULL COMMENT '可住人数',
  `bednum` int(11) DEFAULT NULL COMMENT '床铺数',
  `roodnum` int(11) DEFAULT NULL COMMENT '卧室数',
  `toiletnum` int(11) DEFAULT NULL COMMENT '卫生间数',
  `sheshiid` varchar(255) COLLATE utf8_unicode_ci DEFAULT '12' COMMENT '便利设施',
  `housename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '房源名字',
  `presettime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '提前预定时间',
  `settimestar` date DEFAULT NULL COMMENT '可预订时间开始',
  `newprice` int(11) DEFAULT NULL COMMENT '现在价格',
  `oldprice` int(11) DEFAULT NULL COMMENT '原来价格',
  `miaoshu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '房源描述',
  `locationid` int(11) NOT NULL COMMENT '房源地址ID',
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '房源图片',
  PRIMARY KEY (`houseid`),
  KEY `fk_uid` (`uid`),
  KEY `location_house_fk_locationid` (`locationid`),
  KEY `house_type_fk_housetype` (`housetype`),
  KEY `house_type_fk_rentway` (`rentwayid`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES ('1', '1', '7', '1', '1', '3', '3', '2', '1,2,5,6', '【嶠】Room1 南站/南苑机场/故宫/天坛 Vintage复古网红店/拍照圣地/整套独享/私人影院', '1', '2019-08-26', '120', '320', 'Stey 共享居住空间｢胡同里的设计酒店Studio｣步行可达故宫&王府井,适合差旅､年轻旅行者', '1', 'https://z1.muscache.cn/im/pictures/d1316854-23e4-4db8-9f13-2a4cc3b835a6.jpg?aki_policy=xx_large');
INSERT INTO `house` VALUES ('2', '4', '3', '2', '5', '4', '4', '2', '1,3,5,7,8', '【新城国际】国贸CBD核心区域 涉外高端公寓Luxury hotel apartment', '0', '2019-09-10', '80', '170', '有山有水，交通便利，邻居友好', '2', 'https://z1.muscache.cn/im/pictures/d1316854-23e4-4db8-9f13-2a4cc3b835a6.jpg?aki_policy=xx_large');
INSERT INTO `house` VALUES ('3', '5', '1', '1', '2', '1', '1', '1', '1,2,3', 'co特惠「城宿·富士山下」清新淡雅日式 落地窗观景|百子湾CBD国贸 大望路今日美术馆 繁华街区', '1', '2019-08-24', '100', '160', '附近有地铁，有公园，能遛狗。', '3', 'https://z1.muscache.cn/im/pictures/d1316854-23e4-4db8-9f13-2a4cc3b835a6.jpg?aki_policy=xx_large');
INSERT INTO `house` VALUES ('5', '2', '1', '1', '2', '1', '1', '1', '1,2,3', '海上泰坦尼克|浪漫roumantic', '1', '2019-08-24', '100', '160', '附近有地铁，有公园，能遛狗。', '5', 'https://z1.muscache.cn/im/pictures/92907ee1-ba48-40e6-9ad1-d4d066a7eb32.jpg?aki_policy=large');
INSERT INTO `house` VALUES ('6', '4', '1', '1', '10', '4', '4', '2', '3,4,5', '星星之火', '3', '2019-08-31', '300', '600', '面朝大海，春暖花开', '6', 'https://z1.muscache.cn/im/pictures/92907ee1-ba48-40e6-9ad1-d4d066a7eb32.jpg?aki_policy=large');
INSERT INTO `house` VALUES ('7', '6', '6', '1', '7', '4', '3', '2', '3,5,7,8', '敖包相会', '1', '2019-09-08', '140', '500', '一片草原', '7', 'https://z1.muscache.cn/im/pictures/82801923-372e-44ca-9942-60a9f9cf333a.jpg?aki_policy=poster');
INSERT INTO `house` VALUES ('8', '8', '3', '1', '1', '3', '3', '2', '1,2,5', '留白 清新北欧风 靠近地铁站 地铁3､4号线市二医院站可到达 走路可到太古里 春熙路哦', '1', '2019-08-28', '500', '600', '来了就不后悔', '8', 'https://z1.muscache.cn/im/pictures/74a340da-d77a-48b4-b8ab-a54770859c4e.jpg?');
INSERT INTO `house` VALUES ('9', '4', '1', '1', '1', '3', '3', '2', '1,3,5,7,8', '终极蛇皮大别野,想要的全都有交通方便', '1', '2019-08-04', '300', '400', '山清水秀', '9', 'https://z1.muscache.cn/im/pictures/10000641/db4355d1_original.jpg?');
INSERT INTO `house` VALUES ('10', '12', '2', '2', '2', '1', '1', '1', '1,2,4', '大锤', '0', '2019-08-31', '100', '333', '福建时空裂缝加快了速度分解', '10', 'https://z1.muscache.cn/im/pictures/74a340da-d77a-48b4-b8ab-a54770859c4e.jpg?');
INSERT INTO `house` VALUES ('11', '8', '4', '2', '1', '1', '1', '1', '12', '卡卡卡', '0', '2019-08-07', '44', '88', '存，当上了考场的目的', '11', 'https://z1.muscache.cn/im/pictures/74a340da-d77a-48b4-b8ab-a54770859c4e.jpg?');
INSERT INTO `house` VALUES ('12', '3', '5', '3', '3', '1', '1', '1', '3,5,6', '企鹅可', '2', '2019-09-13', '666', '999', '对方是否接受了快点发简历上看见发', '12', 'https://z1.muscache.cn/im/pictures/74a340da-d77a-48b4-b8ab-a54770859c4e.jpg?');
INSERT INTO `house` VALUES ('20', '1', '6', '2', '1', '1', '1', '1', '12', 'ss', '0', '2019-09-09', '22', '22', 'dd', '23', 'https://z1.muscache.cn/im/pictures/74a340da-d77a-48b4-b8ab-a54770859c4e.jpg?');
INSERT INTO `house` VALUES ('16', '1', '8', '3', '3', '3', '3', '3', '4', '青山绿水', '0', '2019-09-20', '666', '888', '发哈谁付货款实际付款是否', '19', 'https://z1.muscache.cn/im/pictures/74a340da-d77a-48b4-b8ab-a54770859c4e.jpg?');
INSERT INTO `house` VALUES ('18', '1', '3', '2', '5', '1', '1', '1', '2', '哈哈哈', '2', '2019-09-05', '1', '1', '啊啊', '21', 'https://z1.muscache.cn/im/pictures/74a340da-d77a-48b4-b8ab-a54770859c4e.jpg?');
INSERT INTO `house` VALUES ('19', '1', '3', '2', '1', '1', '1', '1', '12', 'asd', '0', '2019-09-02', '12', '22', 'dd', '22', 'https://z1.muscache.cn/im/pictures/74a340da-d77a-48b4-b8ab-a54770859c4e.jpg?');
INSERT INTO `house` VALUES ('21', '1', '3', '2', '1', '1', '1', '1', '12', '33', '0', '2019-09-09', '33', '33', '33', '24', 'https://z1.muscache.cn/im/pictures/74a340da-d77a-48b4-b8ab-a54770859c4e.jpg?');
INSERT INTO `house` VALUES ('22', '1', '8', '3', '1', '1', '1', '1', '12', '111', '0', '2019-09-09', '111', '1', '11', '25', 'https://z1.muscache.cn/im/pictures/74a340da-d77a-48b4-b8ab-a54770859c4e.jpg?');

-- ----------------------------
-- Table structure for houseimg
-- ----------------------------
DROP TABLE IF EXISTS `houseimg`;
CREATE TABLE `houseimg` (
  `imgid` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片ID',
  `houseid` int(11) NOT NULL COMMENT '房源ID',
  `housename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '图片链接',
  `url1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`imgid`),
  KEY `house_img_fk_img` (`houseid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of houseimg
-- ----------------------------
INSERT INTO `houseimg` VALUES ('1', '1', '【嶠】Room1 南站/南苑机场/故宫/天坛 Vintage复古网红店/拍照圣地/整套独享/私人影院', 'https://z1.muscache.cn/im/pictures/35741901/0d988ca2_original.jpg?aki_policy=large', 'https://z1.muscache.cn/im/pictures/0db9df2d-1558-42b0-bdae-9dafcb00cdb2.jpg?aki_policy=large', 'https://z1.muscache.cn/im/pictures/91487529/2df7bb29_original.jpg?aki_policy=large', 'https://z1.muscache.cn/im/pictures/fd09519b-3a37-4aca-a451-1b787d4a748d.jpg?aki_policy=large');
INSERT INTO `houseimg` VALUES ('2', '2', '【新城国际】国贸CBD核心区域 涉外高端公寓Luxury hotel apartment', 'https://z1.muscache.cn/im/pictures/1eb1ad0f-87e6-4b2c-b60b-1e35cafd9035.jpg?aki_policy=large', 'https://z1.muscache.cn/im/pictures/3bf48bde-be9e-43ff-a249-1634cf43177c.jpg?aki_policy=large', 'https://z1.muscache.cn/4ea/air/r:w775-h300-sfit,e:fjpg-c70/pictures/4d1a41b2-f636-4c81-b2cc-4c1fa40c2460.jpg', 'https://z1.muscache.cn/im/pictures/25735497/948807b4_original.jpg?aki_policy=large');
INSERT INTO `houseimg` VALUES ('3', '3', 'co特惠「城宿·富士山下」清新淡雅日式 落地窗观景|百子湾CBD国贸 大望路今日美术馆 繁华街区', 'https://z1.muscache.cn/im/pictures/14227467/1fedb2a0_original.jpg?aki_policy=large', 'https://z1.muscache.cn/im/pictures/b9268ad2-09c0-4ea2-900d-e98205b71427.jpg?aki_policy=large', 'https://z1.muscache.cn/im/pictures/2419cf9c-8841-4b6a-ab0a-d2580ec3f2bc.jpg?aki_policy=large', 'https://z1.muscache.cn/im/pictures/54730271/f18bbb3d_original.jpg?aki_policy=large');
INSERT INTO `houseimg` VALUES ('4', '4', '飞机.集 临近国贸|天安门|故宫|王府井|天坛|前门|协和医院|同仁医院|北京站一居（可长租）', 'https://z1.muscache.cn/im/pictures/b816b43a-bd18-4c0e-8860-f9f5e065f3ad.jpg?aki_policy=large', 'https://z1.muscache.cn/im/pictures/15767a43-c74f-4079-9174-b47036fcf7b1.jpg?aki_policy=large', 'https://z1.muscache.cn/im/pictures/2f7a177d-9ce9-41a3-ad3a-b80c4c706d08.jpg?aki_policy=poster', 'https://z1.muscache.cn/im/pictures/8abe503a-a6e1-43c4-934a-75af1168ce15.jpg?aki_policy=poster');
INSERT INTO `houseimg` VALUES ('5', '5', '海上泰坦尼克|浪漫roumantic', 'https://z1.muscache.cn/im/pictures/95957379/b725845f_original.jpg?aki_policy=large', 'https://z1.muscache.cn/im/pictures/0176498d-4a47-4cb6-8ee0-10f521cfcaa7.jpg?aki_policy=poster', 'https://z1.muscache.cn/im/pictures/85465e3f-734e-498d-9b3c-aadca3e49b5b.jpg?aki_policy=large', 'https://z1.muscache.cn/im/pictures/647d889d-2ce0-449c-a3f9-b28832122715.jpg?aki_policy=poster');
INSERT INTO `houseimg` VALUES ('6', '6', '景|百子湾CBD国贸 大望路今日美术馆 繁华街', 'https://z1.muscache.cn/im/pictures/fd09519b-3a37-4aca-a451-1b787d4a748d.jpg?aki_policy=large', 'https://z1.muscache.cn/im/pictures/74a340da-d77a-48b4-b8ab-a54770859c4e.jpg?aki_policy=poster', 'https://z1.muscache.cn/im/pictures/dd86d1e4-434b-4f9f-a85f-a02a8f06a601.jpg?aki_policy=large', 'https://z1.muscache.cn/4ea/air/r:w775-h300-sfit,e:fjpg-c70/pictures/c49d2d28-c0ae-484b-9db9-0dc93a5e1cd4.jpg');

-- ----------------------------
-- Table structure for housetype
-- ----------------------------
DROP TABLE IF EXISTS `housetype`;
CREATE TABLE `housetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '房源类型',
  `typeinfo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of housetype
-- ----------------------------
INSERT INTO `housetype` VALUES ('1', '别墅', '土豪的生活如此简单无华');
INSERT INTO `housetype` VALUES ('2', '茅草房', '对，要的就是这种感觉');
INSERT INTO `housetype` VALUES ('3', '高层', '会当临绝顶，一览众山小');
INSERT INTO `housetype` VALUES ('4', '洋房', '西式建筑，更显别具一格的特色');
INSERT INTO `housetype` VALUES ('5', '平房', '找回大自然的感觉');
INSERT INTO `housetype` VALUES ('6', '农家乐', '享受贴近乡土生活的气息');
INSERT INTO `housetype` VALUES ('7', '公寓', '独享整个房源，无需与房东或他人共住');
INSERT INTO `housetype` VALUES ('8', '房车', '体会不一样的乐趣');

-- ----------------------------
-- Table structure for img
-- ----------------------------
DROP TABLE IF EXISTS `img`;
CREATE TABLE `img` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片id',
  `tieziid` int(11) NOT NULL COMMENT '帖子id',
  `img` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of img
-- ----------------------------
INSERT INTO `img` VALUES ('1', '1', 'https://z1.muscache.cn/im/pictures/797d63b0-5047-4676-a101-e23d0edf6e34.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('2', '2', 'https://z1.muscache.cn/im/pictures/55744d3e-7370-4ad2-a886-2a6615948607.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('3', '3', 'https://z1.muscache.cn/im/pictures/5ee77582-a8e8-400e-a447-743f2026f6a1.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('4', '4', 'https://z1.muscache.cn/im/pictures/ee884443-c13c-4e2c-8e7b-a42424a2519d.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('5', '5', 'https://z1.muscache.cn/im/pictures/52a7290b-43ab-4a11-bf3b-afa3af7d8804.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('6', '6', 'https://z1.muscache.cn/im/pictures/2ebed3e1-8af1-40a3-9808-89cafda927be.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('7', '7', 'https://z1.muscache.cn/im/pictures/074e8fa5-b5d3-474e-9af8-4d8d17a1c718.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('8', '8', 'https://z1.muscache.cn/im/pictures/06a4a347-635d-448e-8ce4-19f638380d9a.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('9', '9', 'https://z1.muscache.cn/im/pictures/ad4597a2-275f-4d68-9bfb-7b390f2c9caa.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('10', '10', 'https://z1.muscache.cn/im/pictures/f009f0e9-9cef-482a-b8a1-636e6bb617ba.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('11', '11', 'https://z1.muscache.cn/im/pictures/b568dedb-4d85-497d-8594-f4cb5a2ce3b4.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('12', '12', 'https://z1.muscache.cn/im/pictures/cecab8e2-bf92-4af2-9989-105f5df14dd8.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('13', '13', 'https://z1.muscache.cn/im/pictures/251268c9-7eb2-445b-bf96-67cd2abe201d.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('14', '14', 'https://z1.muscache.cn/im/pictures/2c3ed301-1b1f-4cfc-a180-211b3983c6dc.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('15', '15', 'https://z1.muscache.cn/im/pictures/02ba5fac-b23a-4e22-aa6d-381d2b2addd8.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('16', '15', 'https://z1.muscache.cn/im/pictures/240806c1-b2b4-4ea1-acc1-03e0c8e596c5.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('17', '17', 'https://z1.muscache.cn/im/pictures/a1f3f3d9-d9e5-46f4-86d3-0cea3ad95c19.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('18', '18', 'https://z1.muscache.cn/im/pictures/3b02267e-72bc-41e4-be1d-e26c503b796c.jpg?aki_policy=x_large');
INSERT INTO `img` VALUES ('19', '2', 'https://z1.muscache.cn/im/pictures/afe30b3f-c73b-495e-b7da-5f2bdffa3128.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('20', '16', 'https://z1.muscache.cn/im/pictures/c2c0e8dd-5efe-4386-b3bd-85f9c285e009.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('21', '17', 'https://z1.muscache.cn/im/pictures/8b99a0aa-80f7-4f44-8598-e91eeb6c5a7c.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('22', '18', 'https://z1.muscache.cn/im/pictures/976e0371-7ce9-42c7-9e44-e26478073126.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('23', '19', 'https://z1.muscache.cn/im/pictures/e2356ad7-290a-4448-9dee-ec659ab752e6.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('24', '20', 'https://z1.muscache.cn/im/pictures/653f4201-cd6d-4eae-8e3a-2fb77a33d4bf.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('25', '21', 'https://z1.muscache.cn/im/pictures/03c2eb8a-e13c-4c6c-8f68-f91788ef6036.jpg?aki_policy=xx_large_portrait');
INSERT INTO `img` VALUES ('26', '22', 'https://z1.muscache.cn/im/pictures/a541d2a6-9afb-436f-905e-ffbbc35281bc.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('27', '23', 'https://z1.muscache.cn/im/pictures/3349f74b-f5d4-4a5c-94a3-c0390d6e1603.jpg?aki_policy=xx_large_portrait');
INSERT INTO `img` VALUES ('28', '23', 'https://z1.muscache.cn/im/pictures/8f57ccce-1418-4fca-9e1a-895aff6b8a1d.jpg?aki_policy=xx_large_portrait');
INSERT INTO `img` VALUES ('29', '23', 'https://z1.muscache.cn/im/pictures/a33ad6e8-49e1-401a-919f-0b23fd03a87c.jpg?aki_policy=xx_large_portrait');
INSERT INTO `img` VALUES ('30', '23', 'https://z1.muscache.cn/im/pictures/d99a9b8a-c363-4335-aab3-78cb5e40cfda.jpg?aki_policy=xx_large_portrait');
INSERT INTO `img` VALUES ('31', '1', 'https://z1.muscache.cn/im/pictures/8f57ccce-1418-4fca-9e1a-895aff6b8a1d.jpg?aki_policy=xx_large_portrait');
INSERT INTO `img` VALUES ('32', '2', 'https://z1.muscache.cn/im/pictures/653f4201-cd6d-4eae-8e3a-2fb77a33d4bf.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('33', '3', 'https://z1.muscache.cn/im/pictures/8f57ccce-1418-4fca-9e1a-895aff6b8a1d.jpg?aki_policy=xx_large_portrait');
INSERT INTO `img` VALUES ('34', '4', 'https://z1.muscache.cn/im/pictures/8f57ccce-1418-4fca-9e1a-895aff6b8a1d.jpg?aki_policy=xx_large_portrait');
INSERT INTO `img` VALUES ('35', '5', 'https://z1.muscache.cn/im/pictures/8f57ccce-1418-4fca-9e1a-895aff6b8a1d.jpg?aki_policy=xx_large_portrait');
INSERT INTO `img` VALUES ('36', '6', 'https://z1.muscache.cn/im/pictures/8f57ccce-1418-4fca-9e1a-895aff6b8a1d.jpg?aki_policy=xx_large_portrait');
INSERT INTO `img` VALUES ('37', '7', 'https://z1.muscache.cn/im/pictures/8f57ccce-1418-4fca-9e1a-895aff6b8a1d.jpg?aki_policy=xx_large_portrait');
INSERT INTO `img` VALUES ('38', '8', 'https://z1.muscache.cn/im/pictures/8f57ccce-1418-4fca-9e1a-895aff6b8a1d.jpg?aki_policy=xx_large_portrait');
INSERT INTO `img` VALUES ('39', '9', 'https://z1.muscache.cn/im/pictures/8f57ccce-1418-4fca-9e1a-895aff6b8a1d.jpg?aki_policy=xx_large_portrait');
INSERT INTO `img` VALUES ('40', '11', 'https://z1.muscache.cn/im/pictures/8f57ccce-1418-4fca-9e1a-895aff6b8a1d.jpg?aki_policy=xx_large_portrait');
INSERT INTO `img` VALUES ('41', '12', 'https://z1.muscache.cn/im/pictures/8f57ccce-1418-4fca-9e1a-895aff6b8a1d.jpg?aki_policy=xx_large_portrait');
INSERT INTO `img` VALUES ('42', '1', 'https://z1.muscache.cn/im/pictures/653f4201-cd6d-4eae-8e3a-2fb77a33d4bf.jpg?aki_policy=xx_large');
INSERT INTO `img` VALUES ('43', '1', 'https://z1.muscache.cn/im/pictures/a1f3f3d9-d9e5-46f4-86d3-0cea3ad95c19.jpg?aki_policy=xx_large');

-- ----------------------------
-- Table structure for liuyan
-- ----------------------------
DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言ID',
  `tieziid` int(11) NOT NULL COMMENT '留言帖子ID',
  `time` date DEFAULT NULL COMMENT '留言时间',
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '留言内容',
  `kiss_num` int(11) DEFAULT NULL COMMENT '点赞数',
  PRIMARY KEY (`id`),
  KEY `liuyan_tiezi_fk_id` (`tieziid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of liuyan
-- ----------------------------

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `locationid` int(11) NOT NULL AUTO_INCREMENT COMMENT '房源地址ID',
  `province` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '省份',
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '城市',
  `county` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '区县',
  `floor` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '街道楼层',
  PRIMARY KEY (`locationid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES ('1', '上海', '上海市', '徐汇区', '朝阳小区9号');
INSERT INTO `location` VALUES ('2', '北京', '北京市', '东城区', '朝阳小区9号');
INSERT INTO `location` VALUES ('3', '浙江', '杭州市', '西湖区', '玄武街19号');
INSERT INTO `location` VALUES ('4', '重庆', '重庆市', '渝中区', '萨拉福克斯');
INSERT INTO `location` VALUES ('5', '广东', '深圳市', '罗湖区', '学生公寓2838');
INSERT INTO `location` VALUES ('6', '江苏', '苏州市', '姑苏区', '第五大街19号');
INSERT INTO `location` VALUES ('7', '辽宁', '沈阳市', '和平区', '萨拉福克斯');
INSERT INTO `location` VALUES ('8', '北京市', '北京市', '朝阳区', '朝阳小区9号');
INSERT INTO `location` VALUES ('9', '北京市', '北京市', '东城区', '第五大街19号');
INSERT INTO `location` VALUES ('10', '上海市', '上海市', '黄浦区', '学生公寓2838');
INSERT INTO `location` VALUES ('11', '江苏省', '南京市', '玄武区', '玄武街19号');
INSERT INTO `location` VALUES ('12', '广西壮族自治区', '南宁市', '兴宁区', '兴宁街888号');
INSERT INTO `location` VALUES ('13', '内蒙古自治区', '呼和浩特市', '新城区', '蒙古包1号');
INSERT INTO `location` VALUES ('14', '北京市', '北京市市辖区', '昌平区', '东软集团');
INSERT INTO `location` VALUES ('15', '江苏省', '南京市', '玄武区', '萨拉福克斯');
INSERT INTO `location` VALUES ('16', '北京市', '北京市市辖区', '东城区', '覆盖广泛的福达股份的');
INSERT INTO `location` VALUES ('17', '天津市', '天津市市辖区', '南开区', '他忒阿澎湃');
INSERT INTO `location` VALUES ('18', '北京市', '北京市市辖区', '东城区', '股份回购');
INSERT INTO `location` VALUES ('19', '青海省', '西宁市', '城东区', '青藏高原');
INSERT INTO `location` VALUES ('20', '北京市', '北京市市辖区', '东城区', 'asd ');
INSERT INTO `location` VALUES ('21', '吉林省', '长春市', '朝阳区', '啊啊啊');
INSERT INTO `location` VALUES ('22', '北京市', '北京市市辖区', '东城区', 'a');
INSERT INTO `location` VALUES ('23', '北京市', '北京市市辖区', '东城区', ' sa');
INSERT INTO `location` VALUES ('24', '北京市', '北京市市辖区', '东城区', 's');
INSERT INTO `location` VALUES ('25', '北京市', '北京市市辖区', '东城区', '1');

-- ----------------------------
-- Table structure for love
-- ----------------------------
DROP TABLE IF EXISTS `love`;
CREATE TABLE `love` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tieziid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of love
-- ----------------------------
INSERT INTO `love` VALUES ('1', '1', '1');
INSERT INTO `love` VALUES ('2', '2', '2');
INSERT INTO `love` VALUES ('3', '23', '2');
INSERT INTO `love` VALUES ('4', '20', '2');
INSERT INTO `love` VALUES ('5', '12', '2');
INSERT INTO `love` VALUES ('6', '19', '2');
INSERT INTO `love` VALUES ('7', '2', '3');
INSERT INTO `love` VALUES ('8', '13', '2');
INSERT INTO `love` VALUES ('9', '9', '2');
INSERT INTO `love` VALUES ('10', '15', '2');
INSERT INTO `love` VALUES ('11', '1', '3');
INSERT INTO `love` VALUES ('12', '1', '4');
INSERT INTO `love` VALUES ('13', '1', '5');
INSERT INTO `love` VALUES ('14', '1', '3');
INSERT INTO `love` VALUES ('15', '4', '2');
INSERT INTO `love` VALUES ('16', '5', '1');
INSERT INTO `love` VALUES ('17', '6', '1');
INSERT INTO `love` VALUES ('18', '1', '2');
INSERT INTO `love` VALUES ('19', null, '1');

-- ----------------------------
-- Table structure for pinglun
-- ----------------------------
DROP TABLE IF EXISTS `pinglun`;
CREATE TABLE `pinglun` (
  `pid` int(15) NOT NULL AUTO_INCREMENT,
  `houseid` int(11) NOT NULL,
  `pinglun` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `ptime` date NOT NULL,
  `uid` int(11) NOT NULL,
  `score` double(2,0) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pinglun
-- ----------------------------
INSERT INTO `pinglun` VALUES ('1', '1', '房间很温馨，性价比很高,门口就是公交站，出门很方便，房东人很好，还有卸妆水和洗脸巾，期待下次的相遇', '2019-09-16', '1', '5');
INSERT INTO `pinglun` VALUES ('2', '1', '这是我住过的最棒的一个民宿,一进门就被惊艳到了,跟图片一模一样,应该说比图片上的还要大,房间里每一个细节都做的特别完美,洗护一套都是阿道夫,卫生间还有棉签卸妆水,连医药箱都备好了,最最最喜欢的是大阳台,布置的也特别好看,日落前坐在那儿看看书晒晒太阳真的很舒服,房间位置也很棒,楼下各种好吃的,房东小姐姐人超好,还给我们准备了饮料在冰箱里,总之性价比超高,以后来北京还住这儿｡', '2019-09-19', '2', '4');
INSERT INTO `pinglun` VALUES ('3', '1', '房源位置不错,装修也不错｡预订前最好和房东确定好各种事宜,尤其是入住时间等｡', '2019-09-10', '3', '4');
INSERT INTO `pinglun` VALUES ('4', '3', '房子干净,整洁,生活用品一应俱全,楼下就是公交车站,交通便利｡楼下就是老字号老诚伊羊蝎子｡附近美食也很多,北面有超市｡整体超出预料!', '2019-09-09', '4', '4');
INSERT INTO `pinglun` VALUES ('5', '5', '位置在西城区二环中,很适合姐妹情侣闺蜜兄弟去住,周围里大部分的景点都很近,非常推荐!', '2019-09-28', '5', '5');
INSERT INTO `pinglun` VALUES ('6', '4', 'Lovely house!天气热小姐姐还给我们准备了冰水和雪糕 房间里什么都有 特别细致 非常温馨!', '2019-09-26', '6', '4');
INSERT INTO `pinglun` VALUES ('7', '3', '从第一眼进门,装修,灯光,卫生,客户留言的小本,以及房东小姐姐自己写的留言小纸条｡都会让人感觉很安心,跟在自己家里一样放松｡第一次住,以后每次来北京也会住,非常喜欢｡', '2019-09-15', '7', '5');
INSERT INTO `pinglun` VALUES ('8', '2', '房间干净整洁,阳光明媚,带个小阳台,是北京很典型的大一居的户型｡楼下牛街是回民小吃聚集处,聚宝源什么的都很近｡用品应该是我住过的民宿最齐全的!因为我本身也是民宿房东的原因,这个房东细节方面做的非常好｡除了正常的洗漱用品,棉签,洗脸巾,卸妆水想的都很周全｡厨房还配备了净水壶,客厅有空气净化器和医药箱｡希望以后住你家的客人能保护好现在的房子,下次来北京还定你家｡', '2019-09-19', '8', '4');
INSERT INTO `pinglun` VALUES ('9', '2', '这是我住过的最棒的一个民宿,一进门就被惊艳到了,跟图片一模一样,应该说比图片上的还要大,房间里每一个细节都做的特别完美,洗护一套都是阿道夫,卫生间还有棉签卸妆水,连医药箱都备好了,最最最喜欢的是大阳台,布置的也特别好看,日落前坐在那儿看看书晒晒太阳真的很舒服,房间位置也很棒,楼下各种好吃的,房东小姐姐人超好,还给我们准备了饮料在冰箱里,总之性价比超高,以后来北京还住这儿｡', '2019-09-06', '9', '5');
INSERT INTO `pinglun` VALUES ('10', '2', 'dfgsdfsdfsf', '2019-09-05', '1', '6');
INSERT INTO `pinglun` VALUES ('13', '3', '房子和好，房东很好。', '2019-09-05', '1', '8');
INSERT INTO `pinglun` VALUES ('14', '18', '11', '2019-09-05', '2', '8');
INSERT INTO `pinglun` VALUES ('15', '1', 'AAA', '2019-09-06', '2', '7');
INSERT INTO `pinglun` VALUES ('16', '2', '', '2019-09-09', '1', '10');
INSERT INTO `pinglun` VALUES ('17', '2', '满意', '2019-09-09', '1', '10');
INSERT INTO `pinglun` VALUES ('18', '2', 'v多少个', '2019-09-09', '1', '9');
INSERT INTO `pinglun` VALUES ('19', '2', 'v东方的说法', '2019-09-09', '1', '9');
INSERT INTO `pinglun` VALUES ('20', '2', '反萨德是', '2019-09-09', '1', '9');
INSERT INTO `pinglun` VALUES ('21', '1', 'gdf23g1df', '2019-09-09', '1', '10');

-- ----------------------------
-- Table structure for rentway
-- ----------------------------
DROP TABLE IF EXISTS `rentway`;
CREATE TABLE `rentway` (
  `rentwayid` int(11) NOT NULL AUTO_INCREMENT,
  `rentway` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '出租方式',
  PRIMARY KEY (`rentwayid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of rentway
-- ----------------------------
INSERT INTO `rentway` VALUES ('1', '整个房源');
INSERT INTO `rentway` VALUES ('2', '独立房间');
INSERT INTO `rentway` VALUES ('3', '合住房间');

-- ----------------------------
-- Table structure for sheshi
-- ----------------------------
DROP TABLE IF EXISTS `sheshi`;
CREATE TABLE `sheshi` (
  `sheshiid` int(11) NOT NULL AUTO_INCREMENT COMMENT '设施',
  `sheshi` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '无' COMMENT '设施',
  PRIMARY KEY (`sheshiid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sheshi
-- ----------------------------
INSERT INTO `sheshi` VALUES ('1', '无线网');
INSERT INTO `sheshi` VALUES ('2', '厨房');
INSERT INTO `sheshi` VALUES ('3', '洗发水');
INSERT INTO `sheshi` VALUES ('4', '吹风机');
INSERT INTO `sheshi` VALUES ('5', '生活必需品');
INSERT INTO `sheshi` VALUES ('6', '空调');
INSERT INTO `sheshi` VALUES ('7', '暖气');
INSERT INTO `sheshi` VALUES ('8', '电视');
INSERT INTO `sheshi` VALUES ('9', '洗衣机');
INSERT INTO `sheshi` VALUES ('10', '书桌');
INSERT INTO `sheshi` VALUES ('11', '衣架');
INSERT INTO `sheshi` VALUES ('12', '无');

-- ----------------------------
-- Table structure for tiezi
-- ----------------------------
DROP TABLE IF EXISTS `tiezi`;
CREATE TABLE `tiezi` (
  `tieziid` int(11) NOT NULL COMMENT '帖子id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '帖子标题',
  `content` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '帖子内容',
  `createtime` date DEFAULT NULL COMMENT '发帖时间',
  `view_num` int(50) DEFAULT NULL COMMENT '观看数',
  `fenleiid` int(11) NOT NULL COMMENT '分类id',
  PRIMARY KEY (`tieziid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tiezi
-- ----------------------------
INSERT INTO `tiezi` VALUES ('1', '2', '只为 在此遇到你 分享你的故事', '南之山书店·小森林是重庆有名的网红书店。在司机带着我绕山路绕到头疼的时候，突然看到这个名字，听着就很舒服。\r\n\r\n书店特别大，走进玄关先是看到前台有个留言簿，一翻就是吐槽服务员不冷不热，啧啧舌头往里走，经过法式餐厅，书店，还有一个可以办婚礼的草地。', '2019-08-25', '75', '2');
INSERT INTO `tiezi` VALUES ('2', '2', '一个故事,凝聚一段回忆;一个故事,点亮一盏明灯。', '征战野柳，是一件了不起的事情。整个地质公园庇荫极少，一进门就是整整齐齐的自然风蚀石雕，游人都卡在“女王头”。抖擞了“路的尽头究竟有什么“的精神，一路往北在蓝绿之中进发，终于到达了最北的靠海凉亭。海平面在这里完全铺开，景色开阔而纯粹。\r\n\r\n', '2019-08-25', '16', '2');
INSERT INTO `tiezi` VALUES ('3', '2', '毛里求斯的守护者们', '征战野柳，是一件了不起的事情。整个地质公园庇荫极少，一进门就是整整齐齐的自然风蚀石雕，游人都卡在“女王头”。抖擞了“路的尽头究竟有什么“的精神，一路往北在蓝绿之中进发，终于到达了最北的靠海凉亭。海平面在这里完全铺开，景色开阔而纯粹。', '2019-08-13', '1', '3');
INSERT INTO `tiezi` VALUES ('4', '2', '岑壑景色佳，慰我远游心。', '我们在这里遇见了一对台湾中年夫妇。丈夫说，他的父亲祖籍山东，去年刚刚去世，享年90。90年光阴中，除开一开始的24年，余生都留在台湾。出发前，专程看完了白先勇的《台北人》，那些移居者活在现世，却把心留在了过去，一直抱着对从前的信念不肯放手。讲起父亲时丈夫眼眶带泪，又是一个终生无法荣归故里的眷村故事。台湾这几十年来，最动人的情感也许就是浓浓的乡愁。', '2019-08-23', '2', '2');
INSERT INTO `tiezi` VALUES ('5', '3', '征战野柳，遇见一段动人的乡愁', '我们到达呼吉尔特时已是正午，大地把整片空间都晃得雪白而耀眼，似乎在炫耀自己的那一份骄傲，从我们眯起眼睛的那一刻开始，我就知道我们似乎已经开始被这里征服，我们没有办法遮挡着眼睛不去看，因为舍不得，因为忘不了。', '2019-08-10', '2', '1');
INSERT INTO `tiezi` VALUES ('6', '3', '耀一世界的白', '我们到达呼吉尔特时已是正午，大地把整片空间都晃得雪白而耀眼，似乎在炫耀自己的那一份骄傲，从我们眯起眼睛的那一刻开始，我就知道我们似乎已经开始被这里征服，我们没有办法遮挡着眼睛不去看，因为舍不得，因为忘不了。', '2019-08-08', '4', '6');
INSERT INTO `tiezi` VALUES ('7', '2', '旧金山湾区米其林餐厅美女甜点师单飞啦！', '在这里有一群白精灵，他们蹦跳着舞蹈和欢笑，时而在雪原里飘飘荡荡，时而越上我们的车窗，他们是那么热情，想邀请我们一起探戈，而我们能够响应他们的是一直摇动挡风玻璃上的裙摆，一曲终了，我们终究抵不过他们的热诚。\r\n\r\n', '2019-08-04', '2', '1');
INSERT INTO `tiezi` VALUES ('8', '2', '旧金山湾区米其林餐厅美女甜点师单飞啦！', '在这里有一群白精灵，他们蹦跳着舞蹈和欢笑，时而在雪原里飘飘荡荡，时而越上我们的车窗，他们是那么热情，想邀请我们一起探戈，而我们能够响应他们的是一直摇动挡风玻璃上的裙摆，一曲终了，我们终究抵不过他们的热诚。\r\n\r\n', '2019-08-31', '4', '2');
INSERT INTO `tiezi` VALUES ('9', '2', '花束与背景的故事，挥别首钢冷却塔', '真是幸福来得太突然！通过吃货朋友认识了这个超级靠谱的美女甜点师 Sunny，还有幸参加了Sunny 组织的狗年预热大趴，并在大趴上尝试了十几种美女亲手做的既美味又颜值爆表的高大上米其林级别甜点！别看 Sunny 年纪轻轻，来头可不小，曾在硅谷的米其林一星餐厅 Madera 任西点师。在下厨房，微博上都是人气爆棚的网红！', '2019-08-25', '3', '2');
INSERT INTO `tiezi` VALUES ('10', '2', '花束与背景的故事，挥别首钢冷却塔', '真是幸福来得太突然！通过吃货朋友认识了这个超级靠谱的美女甜点师 Sunny，还有幸参加了Sunny 组织的狗年预热大趴，并在大趴上尝试了十几种美女亲手做的既美味又颜值爆表的高大上米其林级别甜点！别看 Sunny 年纪轻轻，来头可不小，曾在硅谷的米其林一星餐厅 Madera 任西点师。在下厨房，微博上都是人气爆棚的网红！', '2019-07-30', '2', '3');
INSERT INTO `tiezi` VALUES ('11', '2', '花束与背景的故事，挥别首钢冷却塔', '真是幸福来得太突然！通过吃货朋友认识了这个超级靠谱的美女甜点师 Sunny，还有幸参加了Sunny 组织的狗年预热大趴，并在大趴上尝试了十几种美女亲手做的既美味又颜值爆表的高大上米其林级别甜点！别看 Sunny 年纪轻轻，来头可不小，曾在硅谷的米其林一星餐厅 Madera 任西点师。在下厨房，微博上都是人气爆棚的网红！', '2019-08-25', '2', '1');
INSERT INTO `tiezi` VALUES ('12', '4', '这里够局气！', '起初来到局气，只是因为大众点评上排名靠前，后来补功课发现故事可多哩。', '2019-08-27', '7', '4');
INSERT INTO `tiezi` VALUES ('13', '4', '这里够局气！', '起初来到局气，只是因为大众点评上排名靠前，后来补功课发现故事可多哩。', '2019-07-25', '6', '5');
INSERT INTO `tiezi` VALUES ('14', '4', '这里够局气！', '起初来到局气，只是因为大众点评上排名靠前，后来补功课发现故事可多哩', '2019-08-14', '2', '4');
INSERT INTO `tiezi` VALUES ('15', '4', '这间民宿，有最迷人的看悉尼歌剧院的角度', '悉尼的民宿是我的一个意外的惊喜，可以说如果不是在网站上看到了这里窗外的风景，我根本就不会涉足北悉尼！房子在一个充满年代感的小房子的三层，', '2019-08-27', '3', '2');
INSERT INTO `tiezi` VALUES ('16', '4', '这间民宿，有最迷人的看悉尼歌剧院的角度', '悉尼的民宿是我的一个意外的惊喜，可以说如果不是在网站上看到了这里窗外的风景，我根本就不会涉足北悉尼！房子在一个充满年代感的小房子的三层，', '2019-08-21', '3', '4');
INSERT INTO `tiezi` VALUES ('17', '4', '这一路上走走停停', '#我爹\r\n\r\n那天坐公交车，我爸在前面坐，我和老妈在后面，到了终点站，大家都陆续下车了……\r\n\r\n我说: “爸，到终点站了”', '2019-08-29', '3', '4');
INSERT INTO `tiezi` VALUES ('18', '2', '在小森林里听音乐看书，这家网红书店必打卡！', '南之山书店·小森林是重庆有名的网红书店。在司机带着我绕山路绕到头疼的时候，突然看到这个名字，听着就很舒服。 书店特别大，走进玄关先是看到前台有个留言簿，一翻就是吐槽服务员不冷不热，啧啧舌头往里走，经过法式餐厅，书店，还有一个可以办婚礼的草地。 最喜欢的就是书店里的看书区域，一排有质感的棕色沙发，一扇巨大的落地窗，满眼绿树透过玻璃映进来，每个沙发前都有一个小桌子，上面有耳机可以听音乐。周围的树上还挂着小马灯。周围有提示保持安静的标语，每个人都陷在沙发里做着自己的事情。确实是打发下午的好地方。 不过对于我这种没有车的人来说，交通实在太不方便了，打快车都约不到司机，服务员说打车一般要等半个小时，而公交车下午六点就是最后一班了。 傍晚回不去的时候，透过绿树，看到了火红色的夕阳，一直在南山上经久不散。', '2019-08-13', '2', '2');
INSERT INTO `tiezi` VALUES ('19', '3', '这里够局气', '征战野柳，是一件了不起的事情。整个地质公园庇荫极少，一进门就是整整齐齐的自然风蚀石雕，游人都卡在“女王头”。抖擞了“路的尽头究竟有什么“的精神，一路往北在蓝绿之中进发，终于到达了最北的靠海凉亭。海平面在这里完全铺开', '2019-07-09', '5', '3');
INSERT INTO `tiezi` VALUES ('20', '3', '花束与背景的故事，挥别首钢冷却塔', '真是幸福来得太突然！通过吃货朋友认识了这个超级靠谱的美女甜点师 Sunny，还有幸参加了Sunny 组织的狗年预热大趴，并在大趴上尝试了十几种美女亲手做的既美味又颜值爆表的高大上米其林级别甜点！别看 Sunny 年纪轻轻，来头可不小，曾在硅谷的米其林一星餐厅 Madera 任西点师。在下厨房，微博上都是人气爆棚的网红！', '2019-08-06', '9', '1');
INSERT INTO `tiezi` VALUES ('21', '3', '耀一世界的白', '我们到达呼吉尔特时已是正午，大地把整片空间都晃得雪白而耀眼，似乎在炫耀自己的那一份骄傲，从我们眯起眼睛的那一刻开始，我就知道我们似乎已经开始被这里征服，我们没有办法遮挡着眼睛不去看，因为舍不得，因为忘不了。', '2019-08-20', '1', '1');
INSERT INTO `tiezi` VALUES ('22', '2', '毛里求斯的守护者们', '征战野柳，是一件了不起的事情。整个地质公园庇荫极少，一进门就是整整齐齐的自然风蚀石雕，游人都卡在“女王头”。抖擞了“路的尽头究竟有什么“的精神，一路往北在蓝绿之中进发，终于到达了最北的靠海凉亭。海平面在这里完全铺开，景色开阔而纯粹。', '2019-08-28', '4', '1');
INSERT INTO `tiezi` VALUES ('23', '2', '来深圳必打卡何香凝美术馆', '趁人少打卡了何香凝美术馆的北欧四国艺术展\r\n\r\n喜欢北欧风的仙女可以去看一下哦\r\n\r\n大气简约的设计 灵魂以北 存在以南\r\n\r\n经典白墙到处都很好拍 穿深色的衣服拍照更好出片啦\r\n\r\n北欧的展览时间：2018.12.1 至 2019.3.3\r\n\r\n闭馆时间是五点比较早 所以建议仙女们早点去拍\r\n\r\n滤镜用的是VSCO的ss3 再加一些颗粒感', '2019-08-19', '13', '4');

-- ----------------------------
-- Table structure for tiezifenlei
-- ----------------------------
DROP TABLE IF EXISTS `tiezifenlei`;
CREATE TABLE `tiezifenlei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类表',
  `fenleiid` int(11) NOT NULL COMMENT '分类id',
  `fenlei` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '具体分类',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tiezifenlei
-- ----------------------------
INSERT INTO `tiezifenlei` VALUES ('1', '1', '故事');
INSERT INTO `tiezifenlei` VALUES ('2', '2', '景色');
INSERT INTO `tiezifenlei` VALUES ('3', '3', '美食');
INSERT INTO `tiezifenlei` VALUES ('4', '4', '文化');
INSERT INTO `tiezifenlei` VALUES ('5', '5', '活动');
INSERT INTO `tiezifenlei` VALUES ('6', '6', '店铺');

-- ----------------------------
-- Table structure for tiyandaren
-- ----------------------------
DROP TABLE IF EXISTS `tiyandaren`;
CREATE TABLE `tiyandaren` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '开展体验地点',
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当地语言',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '体验的房源类型',
  `introduce` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '自我介绍',
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '体验内容',
  `place` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '行程涉及的地点',
  `provide` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '你能提供的东西',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标题',
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '封面图片',
  `uid` int(11) DEFAULT NULL COMMENT '对应的用户ID',
  PRIMARY KEY (`id`),
  KEY `tzdr_userinfo_fk` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tiyandaren
-- ----------------------------
INSERT INTO `tiyandaren` VALUES ('1', '北京市-北京市市辖区-东城区', '中文', '时尚', '12', '12', '21', '213', '21', 'C:\\fakepath\\20151201131252_XHtis.jpeg', '3');
INSERT INTO `tiyandaren` VALUES ('2', '辽宁省-沈阳市-浑南区', 'English', '美食', '嘻嘻嘻', '哈哈哈', '呵呵呵', '呜呜呜', '呵呵呵', 'C:\\fakepath\\20151201131252_XHtis.jpeg', '3');
INSERT INTO `tiyandaren` VALUES ('3', '吉林省-长春市-农安县', '中文', '时尚', '阿萨德', 'a收到阿瑟', '阿萨德', 'a收到', '阿萨德', 'C:\\fakepath\\20151201131252_XHtis.jpeg', '3');
INSERT INTO `tiyandaren` VALUES ('4', '福建省-福州市-台江区', 'English', '美食', 'asd a', 'adsd ', 'asd as', 'asd ', 'das ', 'C:\\fakepath\\20151201131252_XHtis.jpeg', '4');
INSERT INTO `tiyandaren` VALUES ('5', '北京市-北京市市辖区-东城区', '中文', '时尚', 'asd ', 'asdas a', 'asdasdas ', 'adsda', 'asdas', 'C:\\fakepath\\20151201131252_XHtis.jpeg', '5');
INSERT INTO `tiyandaren` VALUES ('6', '北京市-北京市市辖区-东城区', '中文', '时尚', '撒打算', '阿三打扫打扫', '阿三打扫打扫', '的发达省份', '发点撒地方', 'C:\\fakepath\\20151201131252_XHtis.jpeg', '6');
INSERT INTO `tiyandaren` VALUES ('7', '北京市-北京市市辖区-东城区', '中文', '时尚', '阿三打扫', '阿斯达', '阿萨德', '阿萨德', '阿萨德', 'C:\\fakepath\\20151201131252_XHtis.jpeg', '8');
INSERT INTO `tiyandaren` VALUES ('8', '北京市-北京市市辖区-东城区', '中文', '时尚', '阿萨德', '阿萨德', '阿萨德', '阿萨德', '阿萨德', 'C:\\fakepath\\20151201131252_XHtis.jpeg', '9');

-- ----------------------------
-- Table structure for tiyanfangyuan
-- ----------------------------
DROP TABLE IF EXISTS `tiyanfangyuan`;
CREATE TABLE `tiyanfangyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '体验人ID',
  `houseid` int(11) NOT NULL COMMENT '体验房源ID',
  `check_in_time` date DEFAULT NULL COMMENT '体验贴ID',
  `check_out_time` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tydr_user_fk_uid` (`uid`),
  KEY `tydr_house_fk_houseid` (`houseid`),
  KEY `tydr_tiezi_fk_tieid` (`check_in_time`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tiyanfangyuan
-- ----------------------------
INSERT INTO `tiyanfangyuan` VALUES ('1', '2', '1', '2019-09-04', '2019-09-04');
INSERT INTO `tiyanfangyuan` VALUES ('2', '2', '1', '2019-09-06', '2019-09-06');
INSERT INTO `tiyanfangyuan` VALUES ('3', '1', '1', '2019-09-05', '2019-09-06');
INSERT INTO `tiyanfangyuan` VALUES ('4', '1', '2', '2019-09-10', '2019-09-11');

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `tieziid` int(11) DEFAULT NULL COMMENT '帖子id',
  `content` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '评论内容',
  `createtime` date NOT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('1', '1', '1', '首都钢铁厂小西门红楼迎宾馆往东，进入难度不高。首钢四个巨大的冷却塔是西北角的标志性存在，2018年这里列入第一批工业遗产保护名录。', '2019-08-25');
INSERT INTO `topic` VALUES ('2', '1', '2', '很偶然的机会得知这家茶舍，坐落在上海最市中心的复兴路老式小区中，简直是一种神奇的存在。', '2019-08-28');
INSERT INTO `topic` VALUES ('3', '2', '3', '一进门就被日式庭院般的布置吸引了，两边细密的竹林点缀着红枫和假山，几乎每一处都是景。主人养了两只小猫，可以看的出它们也非常享受这里的景色～', '2019-08-07');
INSERT INTO `topic` VALUES ('4', '2', '4', '看的出它们也非常享受这里的景色～', '2019-07-24');
INSERT INTO `topic` VALUES ('5', '3', '5', '和平码头正面鼓浪屿，是一大片餐饮和酒吧集中的地方，因为地理环境好，周末的人流也是很惊人。本周的集市就开在和平码头附近的英迪格酒店广场前侧。', '2019-08-28');
INSERT INTO `topic` VALUES ('6', '2', '6', '幺怪幺鸡幺脆绍 | 致我们的少年时代', '2019-08-04');
INSERT INTO `topic` VALUES ('7', '3', '7', '致我们的少年时代', '2019-08-12');
INSERT INTO `topic` VALUES ('8', '2', '8', '从此天天开着宝马来上班的传说？', '2019-08-01');
INSERT INTO `topic` VALUES ('9', '2', '9', '前几年每次回到成都，总会到这两家店里怀怀旧', '2019-06-18');
INSERT INTO `topic` VALUES ('10', '2', '10', '面馆很小，大家都争着想坐在离后厨进的那几桌', '2019-08-16');
INSERT INTO `topic` VALUES ('11', '1', '11', '总会到这两家店里怀怀旧，其实不单是怀旧', '2019-06-11');
INSERT INTO `topic` VALUES ('12', '3', '12', '手机壳上有沙茶面和鼓浪屿送人首选了。', '2019-08-07');
INSERT INTO `topic` VALUES ('13', '4', '13', '不知从何时开始，人们越来越推崇返璞归真的生活方式', '2018-06-19');
INSERT INTO `topic` VALUES ('14', '2', '14', '成都丨藏匿在林中的树屋“凡朴”，寻找属于你我向往的生活', '2019-03-06');
INSERT INTO `topic` VALUES ('15', '2', '15', '初遇凡朴，便被它的私密性与宁静所吸引，远离尘世烦扰，隐匿在乡间深林之处的农场，让人能够短暂忘却工作与生活中的不快，尽情投身到自给自足的快喜悦之中。', '2019-07-02');
INSERT INTO `topic` VALUES ('16', '3', '16', '如若喜欢动手，不妨参与一次凡朴生活的手工课吧，也许你会遇见一位扎染大师，也许你会get烘焙的新技能', '2019-06-19');
INSERT INTO `topic` VALUES ('17', '4', '17', '最让人惊喜的，莫过于是每一栋木屋都有属于自己的一间茶室，复古的茶具、简洁的茶桌、大大的落地窗，这些无不为住在屋子里的人增加愉悦感。', '2019-03-12');
INSERT INTO `topic` VALUES ('18', '3', '18', '海蓝见鲸，林深有鹿，这里便是我向往的生活。', '2019-05-15');
INSERT INTO `topic` VALUES ('19', '2', '19', '莎士比亚出没的卫生间，汽修厂里的咖啡馆', '2019-08-01');
INSERT INTO `topic` VALUES ('20', '3', '18', '常听人说，在四川满街打牌的人不足为奇，十句不离吃定是广东人，而在树下边弹吉他边唱歌这样的浪漫只会在北京。', '2018-02-21');
INSERT INTO `topic` VALUES ('21', '2', '21', '设计方依旧是如恩，混凝土与金属网似乎已经成为了这家建筑公司的标志。', '2019-04-09');
INSERT INTO `topic` VALUES ('22', '2', '22', '不知从何时开始，人们越来越推崇返璞归真的生活方式', '2019-08-14');
INSERT INTO `topic` VALUES ('24', '3', '23', '的快喜悦之中。', '2019-09-23');
INSERT INTO `topic` VALUES ('25', '2', '15', '莎士比亚出没的卫生间', '2019-09-18');
INSERT INTO `topic` VALUES ('26', '2', '23', '这个女的真好看~', '2019-09-11');
INSERT INTO `topic` VALUES ('27', '2', '9', '123', '2019-09-02');
INSERT INTO `topic` VALUES ('28', '3', '9', '这个地方真的很不错~', '2019-09-02');
INSERT INTO `topic` VALUES ('29', '3', '9', '我也好想去啊', '2019-09-02');
INSERT INTO `topic` VALUES ('30', '4', '15', '火影忍者', '2019-09-02');
INSERT INTO `topic` VALUES ('31', '4', '18', '啦啦啦', '2019-09-02');
INSERT INTO `topic` VALUES ('32', '1', '8', '这回应该是鬼鲛了吧', '2019-09-02');
INSERT INTO `topic` VALUES ('33', '1', '1', 'haha', '2019-09-05');
INSERT INTO `topic` VALUES ('34', '2', '1', '33', '2019-09-05');
INSERT INTO `topic` VALUES ('35', '2', '1', '啦啦啦', '2019-09-09');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '密码',
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户头像',
  `realname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '真实姓名',
  `tel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '电话号码',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `sex` int(11) DEFAULT '0' COMMENT '性别 0女  1男',
  `birthday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '生日',
  `selfintroduction` varchar(255) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '自我介绍',
  `orderid` int(11) DEFAULT NULL COMMENT '订单ID',
  `delete` int(2) NOT NULL DEFAULT '1' COMMENT '删除字段',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '鬼鲛', '1234', 'https://z1.muscache.cn/im/pictures/910ef0d0-0871-436e-aef8-2a44d1af66a7.jpg?aki_policy=xx_large', '杨树林', '200819874021', '163@qq.com', '0', '2000-1-1', '水桶，大坝谁修哈', null, '1');
INSERT INTO `userinfo` VALUES ('2', '可可', '1234', 'https://z1.muscache.cn/im/pictures/10d7cfb2-80f1-42a1-935f-da2ada6ad5f6.jpg?aki_policy=xx_large', '可欣', '14358543432', 'likexin@qq.com', '1', '1997-8-29', '从不炫富的回复不够v', null, '1');
INSERT INTO `userinfo` VALUES ('3', '月野兔', '1234', 'https://a0.muscache.com/im/pictures/user/d4cbd18a-cea8-4c9c-b885-66f162c3bf17.jpg?aki_policy=profile_large', '月野兔', null, 'yueyetu@qq.com', '0', null, '', null, '1');
INSERT INTO `userinfo` VALUES ('4', '女装大佬', '1234', 'https://z1.muscache.cn/im/pictures/1719b48a-040d-42d0-a194-b4b6dc825958.jpg?aki_policy=profile_large', '女装大佬', null, 'nvzhuang@qq.com', '0', null, '', null, '1');
INSERT INTO `userinfo` VALUES ('5', '刘德华', '1234', 'https://a0.muscache.com/im/pictures/user/ce7dfe18-b18f-41ed-a89b-65a8dbe59daf.jpg?aki_policy=profile_large', null, null, 'qq@qq.com1', '0', null, '', null, '1');
INSERT INTO `userinfo` VALUES ('6', '大锤', '1234', 'https://z1.muscache.cn/im/pictures/b1b05677-ecb3-49ec-935b-02525e87f603.jpg?aki_policy=large', '王大锤', '123124234', '154@qq.com', '0', '1980-10-18', '我叫王大锤。。。。。。', null, '1');
INSERT INTO `userinfo` VALUES ('7', '流星', '1234', 'https://a0.muscache.com/im/pictures/user/5fa3e921-ae74-4c25-b4c7-9e74c354df7e.jpg?aki_policy=profile_large', '刘星', '14669872333', '4564@4564.com', '0', '2003-1-26', '喜欢旅游，冒险。', null, '1');
INSERT INTO `userinfo` VALUES ('8', '林大浪', '1234', 'https://a0.muscache.com/im/pictures/user/5fa3e921-ae74-4c25-b4c7-9e74c354df7e.jpg?aki_policy=profile_large', '胖虎', '1132345555', 'qq@qq.com', '1', '2008-8-30', 'v地市公司的，马年出生农村', null, '1');
INSERT INTO `userinfo` VALUES ('10', '问问', '1234', 'https://a0.muscache.com/im/pictures/user/d4cbd18a-cea8-4c9c-b885-66f162c3bf17.jpg?aki_policy=profile_large', '巅峰大赛', '2132324', '163@163.com1', '1', '2019-8-30', '根据快递发货快上课就', null, '1');
INSERT INTO `userinfo` VALUES ('11', '鸣人', '1234', 'https://a0.muscache.com/im/pictures/user/d4cbd18a-cea8-4c9c-b885-66f162c3bf17.jpg?aki_policy=profile_large', null, null, 'test@test.com', '0', null, '', null, '1');
INSERT INTO `userinfo` VALUES ('12', '佐助', '1234', 'https://z1.muscache.cn/im/pictures/1719b48a-040d-42d0-a194-b4b6dc825958.jpg?aki_policy=profile_large', null, null, 'sun1@163.com', '0', null, '', null, '1');
INSERT INTO `userinfo` VALUES ('13', '大蛇丸', '1234', 'https://a0.muscache.com/im/pictures/user/ce7dfe18-b18f-41ed-a89b-65a8dbe59daf.jpg?aki_policy=profile_large', null, null, '1@qq.com', '0', null, '', null, '1');
INSERT INTO `userinfo` VALUES ('14', '犬夜叉', '1234', 'https://a0.muscache.com/im/pictures/user/5fa3e921-ae74-4c25-b4c7-9e74c354df7e.jpg?aki_policy=profile_large', null, null, '13322@qq.com', '0', null, '', null, '1');
INSERT INTO `userinfo` VALUES ('18', '鹿丸', '1234', 'https://a0.muscache.com/im/pictures/user/5fa3e921-ae74-4c25-b4c7-9e74c354df7e.jpg?aki_policy=profile_large', null, null, '1333333@qq.com', '0', null, '', null, '1');
INSERT INTO `userinfo` VALUES ('19', '纲手', '1234', 'https://a0.muscache.com/im/pictures/user/d4cbd18a-cea8-4c9c-b885-66f162c3bf17.jpg?aki_policy=profile_large', null, null, '189@894.com', '0', null, '', null, '1');
