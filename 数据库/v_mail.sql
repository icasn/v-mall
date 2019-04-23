/*
SQLyog Trial v10.2 
MySQL - 5.5.28 : Database - v-mall
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`v-mall` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `v-mall`;

/*Table structure for table `v_brand` */

DROP TABLE IF EXISTS `v_brand`;

CREATE TABLE `v_brand` (
  `v_brandId` int(11) NOT NULL AUTO_INCREMENT COMMENT '品牌Id',
  `v_brandName` varchar(10) NOT NULL COMMENT '品牌名字',
  PRIMARY KEY (`v_brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

/*Data for the table `v_brand` */

insert  into `v_brand`(`v_brandId`,`v_brandName`) values (1,'NIKE'),(2,'LINING'),(3,'BOSS'),(4,'361'),(5,'南极人'),(6,'龙达飞'),(7,'adidas'),(8,'特步'),(9,'安踏'),(10,'丹依奴'),(11,'天梭'),(12,'YSL'),(13,'苹果'),(14,'华为'),(15,'联想'),(16,'小米'),(17,'魅族'),(18,'OPPO'),(19,'vivo'),(20,'华硕'),(21,'神舟'),(22,'森马'),(23,'PUMA'),(24,'沙驰'),(25,'雅诗兰黛'),(26,'OLAY'),(27,'欧莱雅'),(28,'周生生'),(29,'Zippo'),(30,'周大福'),(31,'三星'),(32,'十月妈咪'),(33,'盼盼'),(34,'良品铺子'),(35,'三只松鼠'),(36,'德芙'),(37,'可口可乐'),(38,'海尔'),(39,'美的'),(40,'飞科'),(41,'金友家居'),(42,'奥迪'),(43,'现代'),(44,'Jeep'),(45,'雪佛兰'),(46,'北极绒'),(47,'多喜爱'),(48,'999'),(49,'同仁堂'),(50,'六个核桃');

/*Table structure for table `v_browsinghistory` */

DROP TABLE IF EXISTS `v_browsinghistory`;

CREATE TABLE `v_browsinghistory` (
  `v_historyId` int(11) NOT NULL AUTO_INCREMENT COMMENT '浏览历史id',
  `v_userId` int(11) NOT NULL COMMENT '外键 userId',
  `v_productId` int(11) NOT NULL COMMENT '外键 productId',
  PRIMARY KEY (`v_historyId`),
  KEY `fk_history_userId` (`v_userId`),
  KEY `fk_history_productId` (`v_productId`),
  CONSTRAINT `fk_history_userId` FOREIGN KEY (`v_userId`) REFERENCES `v_uesr` (`v_userId`),
  CONSTRAINT `fk_history_productId` FOREIGN KEY (`v_productId`) REFERENCES `v_product` (`v_productId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `v_browsinghistory` */

insert  into `v_browsinghistory`(`v_historyId`,`v_userId`,`v_productId`) values (1,2,3),(2,2,1),(4,3,4);

/*Table structure for table `v_cartproduct` */

DROP TABLE IF EXISTS `v_cartproduct`;

CREATE TABLE `v_cartproduct` (
  `v_cartProductId` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车商品id',
  `v_productId` int(11) NOT NULL COMMENT '商品id',
  `v_num` int(11) NOT NULL DEFAULT '1' COMMENT '商品数量',
  PRIMARY KEY (`v_cartProductId`),
  KEY `fk_productId` (`v_productId`),
  CONSTRAINT `fk_productId` FOREIGN KEY (`v_productId`) REFERENCES `v_product` (`v_productId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `v_cartproduct` */

insert  into `v_cartproduct`(`v_cartProductId`,`v_productId`,`v_num`) values (3,3,3),(4,4,2),(5,1,2);

/*Table structure for table `v_category` */

DROP TABLE IF EXISTS `v_category`;

CREATE TABLE `v_category` (
  `v_categoryId` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `v_categoryName` varchar(20) NOT NULL COMMENT '分类名',
  `v_parentCategoryId` int(11) NOT NULL COMMENT '父级id',
  `v_type` int(11) NOT NULL COMMENT '分类级别（1,2,3）',
  `v_iconClass` varchar(50) DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`v_categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8;

/*Data for the table `v_category` */

insert  into `v_category`(`v_categoryId`,`v_categoryName`,`v_parentCategoryId`,`v_type`,`v_iconClass`) values (1,'女装 /内衣',0,1,NULL),(2,'男装 /运动户外',0,1,NULL),(3,'女鞋 /男鞋 /箱包',0,1,NULL),(4,'美妆 /个人护理',0,1,NULL),(5,'腕表 /眼镜 /珠宝饰品',0,1,NULL),(6,'手机 /数码 /电脑办公',0,1,NULL),(7,'母婴玩具',0,1,NULL),(8,'零食 /茶酒 /进口食品',0,1,NULL),(9,'生鲜水果',0,1,NULL),(10,'大家电 /生活电器',0,1,NULL),(11,'家具建材',0,1,NULL),(12,'汽车 /配件 /用品',0,1,NULL),(13,'家纺 /家饰 /鲜花',0,1,NULL),(14,'医药保健',0,1,NULL),(15,'厨具 /收纳 /宠物',0,1,NULL),(18,'精选上装',1,2,NULL),(20,'女士下装',1,2,NULL),(25,'男士外套',2,2,NULL),(27,'男士裤装',2,2,NULL),(32,'推荐女鞋',3,2,NULL),(35,'特色鞋',3,2,NULL),(36,'潮流女包',3,2,NULL),(37,'精品男包',3,2,NULL),(40,'彩妆',4,2,NULL),(42,'肤质推选',4,2,NULL),(44,'口腔护理',4,2,NULL),(46,'黄金首饰',5,2,NULL),(47,'钻石彩宝',5,2,NULL),(50,'腕表',5,2,NULL),(53,'热门手机',6,2,NULL),(55,'电脑整机',6,2,NULL),(57,'摄影摄像',6,2,NULL),(61,'婴儿服',7,2,NULL),(65,'奶粉',7,2,NULL),(67,'新鲜蔬菜',8,2,NULL),(70,'海鲜水产',8,2,NULL),(71,'新鲜水果',8,2,NULL),(75,'休闲零食',9,2,NULL),(76,'酒类',9,2,NULL),(77,'茶叶',9,2,NULL),(80,'平板电视',10,2,NULL),(81,'空调',10,2,NULL),(82,'冰箱',10,2,NULL),(86,'客厅餐厅',11,2,NULL),(87,'卧室家具',11,2,NULL),(92,'整车',12,2,NULL),(97,'电子导航',12,2,NULL),(98,'床上用品',13,2,NULL),(99,'居家布艺',13,2,NULL),(102,'保健品',14,2,NULL),(104,'医药',14,2,NULL),(106,'厨房烹饪',15,2,NULL),(107,'餐饮具',15,2,NULL),(110,'畅销小说',16,2,NULL),(111,'大牌乐器',16,2,NULL),(114,'毛呢外套',18,3,NULL),(115,'羽绒服',18,3,NULL),(122,'休闲裤',20,3,NULL),(124,'牛仔裤',20,3,NULL),(134,'风衣',25,3,NULL),(135,'夹克',25,3,NULL),(136,'小脚裤',27,3,NULL),(137,'九分裤',27,3,NULL),(138,'永远的帆布鞋',32,3,NULL),(139,'潮流过漆鞋',32,3,NULL),(140,'妈妈鞋',35,3,NULL),(141,'化妆包',36,3,NULL),(142,'手提包',37,3,NULL),(143,'香水',40,3,NULL),(144,'混合型',42,3,NULL),(145,'牙膏',44,3,NULL),(146,'转运珠',46,3,NULL),(147,'结婚钻戒',47,3,NULL),(148,'瑞士名表',50,3,NULL),(149,'魅族',53,3,NULL),(150,'笔记本',55,3,NULL),(151,'相机',57,3,NULL),(152,'连体衣',61,3,NULL),(153,'牛奶粉',65,3,NULL),(154,'土豆',67,3,NULL),(155,'三文鱼',70,3,NULL),(156,'奇异果',71,3,NULL),(157,'零食',75,3,NULL),(158,'白酒',76,3,NULL),(159,'绿茶',77,3,NULL),(160,'国产',80,3,NULL),(161,'节能',81,3,NULL),(162,'无霜',82,3,NULL),(163,'沙发',86,3,NULL),(164,'床',87,3,NULL),(165,'超级试驾',92,3,NULL),(166,'行车记录仪',97,3,NULL),(167,'四件套',98,3,NULL),(168,'窗帘',99,3,NULL),(169,'营养补充剂',102,3,NULL),(170,'感冒咳嗽',104,3,NULL),(171,'砂锅',106,3,NULL),(172,'茶杯',107,3,NULL),(173,'畅销小说',110,3,NULL),(174,'钢琴',111,3,NULL);

/*Table structure for table `v_commons` */

DROP TABLE IF EXISTS `v_commons`;

CREATE TABLE `v_commons` (
  `v_commonsId` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `v_productId` int(11) NOT NULL COMMENT '外键 商品id',
  `v_content` varchar(255) NOT NULL COMMENT '评论内容',
  `v_orderId` int(11) NOT NULL COMMENT '外键 订单id',
  `v_userId` int(11) NOT NULL COMMENT '外键 用户id',
  `v_grade` double NOT NULL COMMENT '评分（1-5）',
  `v_createDate` datetime NOT NULL COMMENT '创建时间',
  `v_modifyDate` datetime DEFAULT NULL COMMENT '修改时间',
  `v_isOk` int(2) DEFAULT NULL COMMENT '是否推荐（0 不推荐 1推荐 默认1）',
  PRIMARY KEY (`v_commonsId`),
  KEY `fk_commons_productId` (`v_productId`),
  KEY `fk_commons_orderId` (`v_orderId`),
  KEY `fk_commons_userId` (`v_userId`),
  CONSTRAINT `fk_commons_orderId` FOREIGN KEY (`v_orderId`) REFERENCES `v_order` (`v_orderId`),
  CONSTRAINT `fk_commons_productId` FOREIGN KEY (`v_productId`) REFERENCES `v_product` (`v_productId`),
  CONSTRAINT `fk_commons_userId` FOREIGN KEY (`v_userId`) REFERENCES `v_uesr` (`v_userId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `v_commons` */

insert  into `v_commons`(`v_commonsId`,`v_productId`,`v_content`,`v_orderId`,`v_userId`,`v_grade`,`v_createDate`,`v_modifyDate`,`v_isOk`) values (2,1,'非法飞飞飞付付付付付付',2,2,4,'2019-04-23 16:48:06','2019-04-23 16:58:08',1),(4,3,'vvvvvvvvvvvvvvvvvc',3,3,5,'2019-04-23 16:48:38','2019-04-23 23:48:40',1);

/*Table structure for table `v_news` */

DROP TABLE IF EXISTS `v_news`;

CREATE TABLE `v_news` (
  `v_newsId` int(11) NOT NULL AUTO_INCREMENT COMMENT '新闻id',
  `v_title` varchar(50) NOT NULL COMMENT '新闻标题',
  `v_content` varchar(255) NOT NULL COMMENT '新闻内容',
  `v_createDate` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`v_newsId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `v_news` */

insert  into `v_news`(`v_newsId`,`v_title`,`v_content`,`v_createDate`) values (1,'是飒飒啊','方法 ','2019-04-18 16:15:37'),(2,'肺癌是撒旦','发送发奥奥付付付付付付付付付付付','2019-04-23 16:15:35');

/*Table structure for table `v_order` */

DROP TABLE IF EXISTS `v_order`;

CREATE TABLE `v_order` (
  `v_orderId` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `v_userId` int(11) NOT NULL COMMENT '外键 用户id',
  `v_username` varchar(10) NOT NULL COMMENT '收件人姓名',
  `v_userAddress` varchar(255) NOT NULL COMMENT '收件人地址',
  `v_createTime` datetime NOT NULL COMMENT '创建日期',
  `v_cost` double NOT NULL COMMENT '订单金额',
  `v_serialNumber` varchar(55) NOT NULL COMMENT '序列化后的订单号',
  `v_statusId` int(11) NOT NULL COMMENT '外键 订单状态id',
  `v_payNum` varchar(55) DEFAULT NULL COMMENT '交易号',
  `v_orderDetailId` int(11) NOT NULL COMMENT '外键 订单详情 详情id',
  PRIMARY KEY (`v_orderId`),
  KEY `fk_order_orderDetaulId` (`v_orderDetailId`),
  KEY `fk_order_userId` (`v_userId`),
  KEY `fk_order_statusId` (`v_statusId`),
  CONSTRAINT `fk_order_statusId` FOREIGN KEY (`v_statusId`) REFERENCES `v_order_status` (`v_statusId`),
  CONSTRAINT `fk_order_orderDetaulId` FOREIGN KEY (`v_orderDetailId`) REFERENCES `v_order_details` (`v_orderDetailId`),
  CONSTRAINT `fk_order_userId` FOREIGN KEY (`v_userId`) REFERENCES `v_uesr` (`v_userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `v_order` */

insert  into `v_order`(`v_orderId`,`v_userId`,`v_username`,`v_userAddress`,`v_createTime`,`v_cost`,`v_serialNumber`,`v_statusId`,`v_payNum`,`v_orderDetailId`) values (2,2,'李灿辉','白石岭居名点','2019-04-23 16:45:17',2298,'123456789',2,'222',2),(3,3,'李秸康','北大青鸟','2019-04-23 16:47:10',1121,'987654321',1,NULL,3);

/*Table structure for table `v_order_details` */

DROP TABLE IF EXISTS `v_order_details`;

CREATE TABLE `v_order_details` (
  `v_orderDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `v_productId` int(11) NOT NULL COMMENT '外键 商品id',
  `v_quantity` int(11) NOT NULL COMMENT '商品数量',
  `v_cost` double NOT NULL COMMENT '金总额',
  PRIMARY KEY (`v_orderDetailId`),
  KEY `fk_orderDetail_product` (`v_productId`),
  CONSTRAINT `fk_orderDetail_product` FOREIGN KEY (`v_productId`) REFERENCES `v_product` (`v_productId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `v_order_details` */

insert  into `v_order_details`(`v_orderDetailId`,`v_productId`,`v_quantity`,`v_cost`) values (1,1,2,598),(2,3,2,4596),(3,4,2,2242);

/*Table structure for table `v_order_status` */

DROP TABLE IF EXISTS `v_order_status`;

CREATE TABLE `v_order_status` (
  `v_statusId` int(11) NOT NULL AUTO_INCREMENT COMMENT '状态id',
  `v_statusName` varchar(10) NOT NULL DEFAULT '未付款' COMMENT '状态名',
  PRIMARY KEY (`v_statusId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `v_order_status` */

insert  into `v_order_status`(`v_statusId`,`v_statusName`) values (1,'未付款'),(2,'已付款'),(3,'已取消');

/*Table structure for table `v_product` */

DROP TABLE IF EXISTS `v_product`;

CREATE TABLE `v_product` (
  `v_productId` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `v_productName` varchar(20) NOT NULL COMMENT '商品名称',
  `v_categoryLevel1` int(11) DEFAULT NULL COMMENT '一级分类 外键',
  `v_categoryLevel2` int(11) DEFAULT NULL COMMENT '二级分类 外键',
  `v_categoryLevel3` int(11) DEFAULT NULL COMMENT '三级分类 外键',
  `v_store` int(11) NOT NULL DEFAULT '100' COMMENT '库存',
  `v_price` double NOT NULL DEFAULT '0' COMMENT '商品价格',
  `v_imgUrl` varchar(255) DEFAULT NULL COMMENT '商品图片路径',
  `v_grade` double NOT NULL COMMENT '商品积分',
  `v_isDelete` int(2) DEFAULT NULL COMMENT '商品上下架（0上架，1下架）',
  `v_brandId` int(11) NOT NULL COMMENT '商品品牌 外键',
  PRIMARY KEY (`v_productId`),
  KEY `fk_brandId` (`v_brandId`),
  KEY `fk_product_category1` (`v_categoryLevel1`),
  KEY `fk_product_category2` (`v_categoryLevel2`),
  KEY `fk_product_category3` (`v_categoryLevel3`),
  CONSTRAINT `fk_brandId` FOREIGN KEY (`v_brandId`) REFERENCES `v_brand` (`v_brandId`),
  CONSTRAINT `fk_product_category1` FOREIGN KEY (`v_categoryLevel1`) REFERENCES `v_category` (`v_categoryId`),
  CONSTRAINT `fk_product_category2` FOREIGN KEY (`v_categoryLevel2`) REFERENCES `v_category` (`v_categoryId`),
  CONSTRAINT `fk_product_category3` FOREIGN KEY (`v_categoryLevel3`) REFERENCES `v_category` (`v_categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `v_product` */

insert  into `v_product`(`v_productId`,`v_productName`,`v_categoryLevel1`,`v_categoryLevel2`,`v_categoryLevel3`,`v_store`,`v_price`,`v_imgUrl`,`v_grade`,`v_isDelete`,`v_brandId`) values (1,'伊芙丽冬季新版桔红色短款羊毛宽松大廓型单',1,18,114,1000,299,NULL,149,0,4),(3,'【到手价2298起】Meizu/魅族 魅',6,53,149,100,2298,NULL,322,0,1),(4,'春季2019新款直筒牛仔裤女宽松cec裤',1,1,1,100,1121,NULL,222,0,2);

/*Table structure for table `v_question` */

DROP TABLE IF EXISTS `v_question`;

CREATE TABLE `v_question` (
  `v_questionId` int(11) NOT NULL AUTO_INCREMENT COMMENT '问题id',
  `v_questionTitle` varchar(25) NOT NULL COMMENT '问题题目',
  PRIMARY KEY (`v_questionId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `v_question` */

insert  into `v_question`(`v_questionId`,`v_questionTitle`) values (1,'我的妈妈叫什么'),(2,'我的爸爸叫什么'),(3,'我的初中语文老师姓什么'),(4,'我的第一只宠物叫什么');

/*Table structure for table `v_question_user` */

DROP TABLE IF EXISTS `v_question_user`;

CREATE TABLE `v_question_user` (
  `v_quId` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户问题id',
  `v_userId` int(11) NOT NULL COMMENT '用户id',
  `v_questionId` int(11) NOT NULL COMMENT '问题id',
  `v_answer` varchar(255) NOT NULL COMMENT '问题答案（加密）',
  PRIMARY KEY (`v_quId`),
  KEY `fk_userId` (`v_userId`),
  KEY `fk_questionId` (`v_questionId`),
  CONSTRAINT `fk_userId` FOREIGN KEY (`v_userId`) REFERENCES `v_uesr` (`v_userId`),
  CONSTRAINT `fk_questionId` FOREIGN KEY (`v_questionId`) REFERENCES `v_question` (`v_questionId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `v_question_user` */

insert  into `v_question_user`(`v_quId`,`v_userId`,`v_questionId`,`v_answer`) values (1,2,1,'宋来轩'),(2,2,2,'张洛'),(3,3,4,'小白');

/*Table structure for table `v_seckill_order` */

DROP TABLE IF EXISTS `v_seckill_order`;

CREATE TABLE `v_seckill_order` (
  `v_seckill_orderId` int(11) NOT NULL AUTO_INCREMENT COMMENT '秒杀订单id',
  `v_seckill_productId` int(11) NOT NULL COMMENT '外键 商品id',
  `v_seckill_userId` int(11) NOT NULL COMMENT '外键 用户id',
  `v_seckill_createDate` datetime NOT NULL COMMENT '订单创建时间',
  PRIMARY KEY (`v_seckill_orderId`),
  KEY `fk_seckillOrder_productId` (`v_seckill_productId`),
  KEY `fk_seckillOrder_userId` (`v_seckill_userId`),
  CONSTRAINT `fk_seckillOrder_productId` FOREIGN KEY (`v_seckill_productId`) REFERENCES `v_product` (`v_productId`),
  CONSTRAINT `fk_seckillOrder_userId` FOREIGN KEY (`v_seckill_userId`) REFERENCES `v_uesr` (`v_userId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `v_seckill_order` */

insert  into `v_seckill_order`(`v_seckill_orderId`,`v_seckill_productId`,`v_seckill_userId`,`v_seckill_createDate`) values (1,3,2,'2019-04-23 16:52:26'),(2,4,3,'2019-04-23 16:52:37');

/*Table structure for table `v_seckill_product` */

DROP TABLE IF EXISTS `v_seckill_product`;

CREATE TABLE `v_seckill_product` (
  `v_seckill_id` int(11) NOT NULL AUTO_INCREMENT,
  `v_seckill_productId` int(11) NOT NULL COMMENT '外键 商品id',
  `v_seckill_quantity` int(11) NOT NULL COMMENT '秒杀商品数量',
  `v_seckill_price` double NOT NULL COMMENT '秒杀商品价格',
  `v_seckill_startDate` datetime NOT NULL COMMENT '秒杀开始时间',
  `v_seckill_endDate` datetime NOT NULL COMMENT '秒杀结束时间',
  PRIMARY KEY (`v_seckill_id`),
  KEY `fk_seckill_productId` (`v_seckill_productId`),
  CONSTRAINT `fk_seckill_productId` FOREIGN KEY (`v_seckill_productId`) REFERENCES `v_product` (`v_productId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `v_seckill_product` */

insert  into `v_seckill_product`(`v_seckill_id`,`v_seckill_productId`,`v_seckill_quantity`,`v_seckill_price`,`v_seckill_startDate`,`v_seckill_endDate`) values (1,3,10,2000,'2019-04-23 16:51:11','2019-04-23 20:51:18'),(2,4,20,500,'2019-04-23 16:51:47','2019-04-23 17:51:49');

/*Table structure for table `v_shoppingcart` */

DROP TABLE IF EXISTS `v_shoppingcart`;

CREATE TABLE `v_shoppingcart` (
  `v_cartId` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `v_cartProductId` int(11) NOT NULL COMMENT '外键 引用cartProductId',
  `v_userId` int(11) NOT NULL COMMENT '外键 引用userId',
  PRIMARY KEY (`v_cartId`),
  KEY `fk_shoppingcart_userId` (`v_userId`),
  KEY `fk_shoppingcart_carProduct_id` (`v_cartProductId`),
  CONSTRAINT `fk_shoppingcart_carProduct_id` FOREIGN KEY (`v_cartProductId`) REFERENCES `v_cartproduct` (`v_cartProductId`),
  CONSTRAINT `fk_shoppingcart_userId` FOREIGN KEY (`v_userId`) REFERENCES `v_uesr` (`v_userId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `v_shoppingcart` */

insert  into `v_shoppingcart`(`v_cartId`,`v_cartProductId`,`v_userId`) values (1,3,2),(2,4,3);

/*Table structure for table `v_uesr` */

DROP TABLE IF EXISTS `v_uesr`;

CREATE TABLE `v_uesr` (
  `v_userId` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `v_username` varchar(10) NOT NULL COMMENT '用户昵称',
  `v_password` varchar(50) NOT NULL COMMENT '用户密码',
  `v_mail` varchar(50) DEFAULT NULL COMMENT '用户邮箱',
  `v_phone` varchar(11) DEFAULT NULL COMMENT '用户手机号',
  `v_headPath` varchar(50) DEFAULT NULL COMMENT '用户头像',
  `v_isActive` int(2) DEFAULT NULL COMMENT '用户是否激活（0未激活，1已激活）',
  `v_type` int(2) DEFAULT NULL COMMENT '用户类型',
  `v_grade` double DEFAULT '0' COMMENT '用户积分',
  `v_sex` int(2) DEFAULT NULL COMMENT '用户性别（0男，1女）',
  `v_identity` char(18) DEFAULT NULL COMMENT '用户身份证号',
  `v_usercode` varchar(20) NOT NULL COMMENT '用户名',
  PRIMARY KEY (`v_userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `v_uesr` */

insert  into `v_uesr`(`v_userId`,`v_username`,`v_password`,`v_mail`,`v_phone`,`v_headPath`,`v_isActive`,`v_type`,`v_grade`,`v_sex`,`v_identity`,`v_usercode`) values (1,'admin','123','2587865241@qq.com','15647852321',NULL,0,0,999999,0,'430621200006013314','admin'),(2,'灿辉','123','5555@qq.com','18674900601',NULL,0,1,2000,0,'430621200001013325','canhui'),(3,'秸康','123','middle_frist@163.com','12345678901',NULL,0,1,10000,0,'43062120000101332c','jiekang');

/*Table structure for table `v_user_address` */

DROP TABLE IF EXISTS `v_user_address`;

CREATE TABLE `v_user_address` (
  `v_addressId` int(11) NOT NULL AUTO_INCREMENT COMMENT '地址id',
  `v_userId` int(11) NOT NULL COMMENT '外键 用户id',
  `v_address` varchar(255) NOT NULL COMMENT '具体地址',
  `v_createDate` datetime NOT NULL COMMENT '创建时间',
  `v_modifyDate` datetime NOT NULL COMMENT '修改时间',
  `v_isDefault` int(2) NOT NULL COMMENT '是否是默认（0 false 1 true）',
  `v_reciveName` varchar(10) DEFAULT NULL COMMENT '收件人姓名',
  `v_recivePhone` char(11) DEFAULT NULL COMMENT '收件人手机号',
  `v_distributionArea` varchar(20) DEFAULT NULL COMMENT '地区描述',
  `v_postCode` char(6) NOT NULL COMMENT '邮政编码',
  PRIMARY KEY (`v_addressId`,`v_userId`),
  KEY `fk_address_userId` (`v_userId`),
  CONSTRAINT `fk_address_userId` FOREIGN KEY (`v_userId`) REFERENCES `v_uesr` (`v_userId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `v_user_address` */

insert  into `v_user_address`(`v_addressId`,`v_userId`,`v_address`,`v_createDate`,`v_modifyDate`,`v_isDefault`,`v_reciveName`,`v_recivePhone`,`v_distributionArea`,`v_postCode`) values (1,2,'白石岭居名点','2019-04-23 15:59:53','2019-04-24 16:00:05',1,'李灿辉','48511222145','二栋二号','000000'),(2,3,'北大青鸟前台','2019-04-22 16:01:26','2019-04-23 16:01:29',0,'李秸康','18674900601','前台','000000');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
