-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: story_of_stone
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.17.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `family`
--

DROP TABLE IF EXISTS `family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `family` (
  `name` varchar(255) NOT NULL COMMENT '名称',
  `cradle` enum('','金陵','京城') DEFAULT NULL COMMENT '发源地',
  `residence` enum('','金陵','京城') DEFAULT NULL COMMENT '现居住地',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--
-- ORDER BY:  `name`

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
INSERT INTO `family` VALUES
('史家','金陵','金陵'),
('王家','金陵','金陵'),
('王家连宗','',''),
('薛家','金陵','金陵'),
('贾家','金陵','京城'),
('贾家连宗','','');
/*!40000 ALTER TABLE `family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kinship`
--

DROP TABLE IF EXISTS `kinship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kinship` (
  `subject` varchar(255) NOT NULL COMMENT '主',
  `object` varchar(255) NOT NULL COMMENT '宾',
  `type` enum('父母子女','夫妻') NOT NULL COMMENT '类型',
  `sub_type` enum('亲生','收养','过继','正房','偏房','续弦') NOT NULL COMMENT '子类型',
  `note` mediumtext NOT NULL COMMENT '注解',
  PRIMARY KEY (`subject`,`object`,`type`,`sub_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kinship`
--
-- ORDER BY:  `subject`,`object`,`type`,`sub_type`

LOCK TABLES `kinship` WRITE;
/*!40000 ALTER TABLE `kinship` DISABLE KEYS */;
INSERT INTO `kinship` VALUES
('李纨','贾兰','父母子女','亲生',''),
('林如海','林黛玉','父母子女','亲生',''),
('林如海','贾敏','夫妻','正房',''),
('王夫人','贾元春','父母子女','亲生',''),
('王夫人','贾宝玉','父母子女','亲生',''),
('王夫人','贾珠','父母子女','亲生',''),
('王熙凤','贾巧姐','父母子女','亲生',''),
('贾代化','贾敬','父母子女','亲生','第2回，冷子兴演说'),
('贾代化','贾敷','父母子女','亲生','第2回，冷子兴演说'),
('贾代善','贾政','父母子女','亲生','第2回，冷子兴演说'),
('贾代善','贾敏','父母子女','亲生','第2回，冷子兴演说'),
('贾代善','贾母','夫妻','正房','第2回，冷子兴演说'),
('贾代善','贾赦','父母子女','亲生','第2回，冷子兴演说'),
('贾公','贾源','父母子女','亲生','第2回，冷子兴演说'),
('贾公','贾演','父母子女','亲生','第2回，冷子兴演说'),
('贾政','周姨娘','夫妻','偏房',''),
('贾政','王夫人','夫妻','正房',''),
('贾政','贾元春','父母子女','亲生',''),
('贾政','贾宝玉','父母子女','亲生',''),
('贾政','贾探春','父母子女','亲生',''),
('贾政','贾环','父母子女','亲生',''),
('贾政','贾珠','父母子女','亲生',''),
('贾政','赵姨娘','夫妻','偏房',''),
('贾敏','林黛玉','父母子女','亲生','第2回，冷子兴演说'),
('贾敬','贾惜春','父母子女','亲生','第2回，冷子兴演说，惜春是贾珍胞妹。'),
('贾敬','贾珍','父母子女','亲生','第2回，冷子兴演说'),
('贾母','贾政','父母子女','亲生','第2回，冷子兴演说。但有争议，http://www.360doc.com/content/16/0131/09/29803221_531819830.shtml'),
('贾母','贾敏','父母子女','亲生','第2回，冷子兴演说'),
('贾母','贾赦','父母子女','亲生','第2回，冷子兴演说。但有各种讨论，https://www.zhihu.com/question/20515515'),
('贾源','贾代善','父母子女','亲生','第2回，冷子兴演说'),
('贾演','贾代化','父母子女','亲生','第2回，冷子兴演说'),
('贾珍','尤氏','夫妻','续弦',''),
('贾珍','贾蓉','父母子女','亲生',''),
('贾珍','贾蔷','父母子女','收养',''),
('贾珠','李纨','夫妻','正房',''),
('贾珠','贾兰','父母子女','亲生',''),
('贾琏','尤二姐','夫妻','偏房',''),
('贾琏','王熙凤','夫妻','正房',''),
('贾琏','贾巧姐','父母子女','亲生',''),
('贾蓉','秦可卿','夫妻','正房',''),
('贾赦','贾琏','父母子女','亲生','第2回，冷子兴演说'),
('贾赦','贾琮','父母子女','亲生','很牵强'),
('贾赦','贾迎春','父母子女','亲生',''),
('贾赦','邢夫人','夫妻','续弦','https://tieba.baidu.com/p/2095378959?red_tag=1698272823'),
('赵姨娘','贾探春','父母子女','亲生',''),
('赵姨娘','贾环','父母子女','亲生','');
/*!40000 ALTER TABLE `kinship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kinship_type`
--

DROP TABLE IF EXISTS `kinship_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kinship_type` (
  `type` enum('父母子女','夫妻') NOT NULL COMMENT '类型',
  `sub_type` enum('亲生','收养','过继','正房','偏房') NOT NULL COMMENT '子类型',
  `male_subject` varchar(255) NOT NULL COMMENT '男主称呼',
  `female_subject` varchar(255) NOT NULL COMMENT '女主称呼',
  `male_object` varchar(255) NOT NULL COMMENT '男宾称呼',
  `female_object` varchar(255) NOT NULL COMMENT '女宾称呼',
  PRIMARY KEY (`type`,`sub_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kinship_type`
--
-- ORDER BY:  `type`,`sub_type`

LOCK TABLES `kinship_type` WRITE;
/*!40000 ALTER TABLE `kinship_type` DISABLE KEYS */;
INSERT INTO `kinship_type` VALUES
('父母子女','亲生','父亲','母亲','儿子','女儿'),
('父母子女','收养','养父','养母','养子','养女'),
('父母子女','过继','父亲','母亲','儿子','女儿'),
('夫妻','正房','丈夫','','','大太太'),
('夫妻','偏房','丈夫','','','姨太太');
/*!40000 ALTER TABLE `kinship_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master`
--

DROP TABLE IF EXISTS `master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master` (
  `name` varchar(255) NOT NULL COMMENT '称呼',
  `family` varchar(255) NOT NULL COMMENT '现所属家族',
  `generation` int(10) unsigned NOT NULL COMMENT '在所有家族中拉横是第几代',
  `original_family` varchar(255) NOT NULL COMMENT '原所属家族',
  `dwelling` varchar(255) NOT NULL COMMENT '居所',
  `pay_in_silver` decimal(10,3) NOT NULL COMMENT '每月例银，单位：两',
  `pay_in_coin` decimal(10,3) NOT NULL COMMENT '每月例银，单位：文，一吊钱=1000文',
  `pay_note` mediumtext NOT NULL COMMENT '月例注解',
  `pay_estimated` tinyint(1) NOT NULL COMMENT '月例是否是估算的',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master`
--
-- ORDER BY:  `name`

LOCK TABLES `master` WRITE;
/*!40000 ALTER TABLE `master` DISABLE KEYS */;
INSERT INTO `master` VALUES
('周姨娘','贾家',3,'','',2.000,0.000,'',0),
('尤二姐','',4,'','',2.000,0.000,'',0),
('尤氏','',4,'','',10.000,0.000,'正房太太都是10两一月，尤氏为续弦的正房，理论上是10两。',1),
('李纨','',4,'','',20.000,0.000,'正房太太10两，贾母又特别拨了10两',0),
('林如海','',3,'','',0.000,0.000,'',0),
('林黛玉','贾家',4,'林家','荣国府-大观园-潇湘馆',2.000,0.000,'第3回，收养后吃穿用度均与其他姑娘相同。第56回，探春说月银是二两。',1),
('王夫人','贾家',3,'','',20.000,0.000,'',0),
('王熙凤','',4,'','',10.000,0.000,'正房太太都是10两一月',0),
('秦可卿','贾家',5,'','荣国府',0.000,0.000,'',0),
('贾代化','贾家',2,'','宁国府',0.000,0.000,'',0),
('贾代善','贾家',2,'','荣国府',0.000,0.000,'',0),
('贾元春','贾家',2,'','荣国府',0.000,0.000,'',0),
('贾兰','贾家',5,'','荣国府',0.000,0.000,'',0),
('贾宝玉','贾家',4,'','荣国府-大观园-怡红院',2.000,0.000,'第51回，给晴雯看病抓了2两的银戥子，但宝玉每月花的钱远远不止这些',1),
('贾巧姐','贾家',5,'','荣国府',0.000,0.000,'',0),
('贾惜春','贾家',4,'','荣国府-大观园-蓼风轩(第23回)、暖香坞(第50回)',2.000,0.000,'',0),
('贾探春','贾家',4,'','荣国府-大观园-秋爽斋',2.000,0.000,'',0),
('贾政','贾家',3,'','荣国府-荣禧堂',0.000,0.000,'',0),
('贾敏','林家',3,'贾家','',0.000,0.000,'',0),
('贾敬','贾家',3,'','宁国府',0.000,0.000,'',0),
('贾敷','贾家',3,'','宁国府',0.000,0.000,'',0),
('贾母','贾家',2,'史家','荣国府',20.000,0.000,'第45回，李纨跟凤姐商量诗社的活动经费，凤姐讲李纨跟老太太、太太一样月例了',0),
('贾源','贾家',1,'','荣国府',0.000,0.000,'',0),
('贾演','贾家',1,'','宁国府',0.000,0.000,'',0),
('贾王扁','贾家',4,'','',0.000,0.000,'',0),
('贾环','贾家',4,'','荣国府-东小院',2.000,0.000,'第36回，凤姐说赵姨娘有环兄弟的二两月例银子',0),
('贾珍','贾家',4,'','',0.000,0.000,'',0),
('贾珖','贾家',4,'','',0.000,0.000,'',0),
('贾珠','贾家',2,'','荣国府',0.000,0.000,'',0),
('贾珩','贾家',4,'','',0.000,0.000,'',0),
('贾琏','贾家',4,'','荣国府',0.000,0.000,'',0),
('贾琛','贾家',4,'','',0.000,0.000,'',0),
('贾琮','贾家',4,'','荣国府',0.000,0.000,'',0),
('贾琼','贾家',4,'','',0.000,0.000,'',0),
('贾璘','贾家',4,'','',0.000,0.000,'',0),
('贾芝','贾家',5,'','',0.000,0.000,'',0),
('贾芬','贾家',5,'','',0.000,0.000,'',0),
('贾芳','贾家',5,'','',0.000,0.000,'',0),
('贾菌','贾家',5,'','',0.000,0.000,'',0),
('贾菖','贾家',5,'','',0.000,0.000,'',0),
('贾菱','贾家',5,'','',0.000,0.000,'',0),
('贾萍','贾家',5,'','',0.000,0.000,'',0),
('贾蓁','贾家',5,'','',0.000,0.000,'',0),
('贾蓉','贾家',5,'','宁国府',0.000,0.000,'',0),
('贾蔷','贾家',5,'','宁府外',0.000,0.000,'',0),
('贾藻','贾家',5,'','',0.000,0.000,'',0),
('贾蘅','贾家',5,'','',0.000,0.000,'',0),
('贾赦','贾家',3,'','荣国府-别院',0.000,0.000,'',0),
('贾迎春','贾家',4,'','',2.000,0.000,'',0),
('赵姨娘','贾家',3,'','',2.000,0.000,'',0),
('邢夫人','贾家',3,'','荣国府',20.000,0.000,'',0);
/*!40000 ALTER TABLE `master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `name` varchar(255) NOT NULL COMMENT '称呼',
  `deduction` tinyint(1) NOT NULL COMMENT '是否是推导出的人物',
  `gender` enum('男','女') NOT NULL COMMENT '性别',
  `age` int(10) unsigned NOT NULL COMMENT '大致年龄',
  `age_note` mediumtext NOT NULL COMMENT '大致年龄的注解',
  `sort_age` double NOT NULL COMMENT '程序排序用年龄，不用于展示',
  `sort_position` double NOT NULL COMMENT '程序排序用的人物地位，不用于展示',
  `family_name` varchar(50) NOT NULL COMMENT '姓',
  `given_name` varchar(150) NOT NULL COMMENT '名',
  `old_name` varchar(255) NOT NULL COMMENT '原名',
  `old_name_note` varchar(255) NOT NULL COMMENT '原名注解',
  `nick_1` varchar(255) NOT NULL COMMENT '诨名1',
  `nick_note_1` mediumtext NOT NULL COMMENT '诨名1注解',
  `nick_2` varchar(255) NOT NULL COMMENT '诨名2',
  `nick_note_2` mediumtext NOT NULL COMMENT '诨名2注解',
  `nick_3` varchar(255) NOT NULL COMMENT '诨名3',
  `nick_note_3` mediumtext NOT NULL COMMENT '诨名3注解',
  `nick_4` varchar(255) NOT NULL COMMENT '诨名4',
  `nick_note_4` mediumtext NOT NULL COMMENT '诨名4注解',
  `title_1` varchar(255) NOT NULL COMMENT '尊称1',
  `title_note_1` mediumtext NOT NULL COMMENT '尊称1注解',
  `title_2` varchar(255) NOT NULL COMMENT '尊称2',
  `title_note_2` mediumtext NOT NULL COMMENT '尊称2注解',
  `title_3` varchar(255) NOT NULL COMMENT '尊称3',
  `title_note_3` mediumtext NOT NULL COMMENT '尊称3注解',
  `title_4` varchar(255) NOT NULL COMMENT '尊称4',
  `title_note_4` mediumtext NOT NULL COMMENT '尊称4注解',
  `first_action_chapter` int(10) unsigned NOT NULL COMMENT '首次活动回目，本人活动出场回目',
  `first_action_note` mediumtext NOT NULL COMMENT '首次活动注解',
  `first_refer_chapter` int(10) unsigned NOT NULL COMMENT '首次提及回目：本人未出场，但先被别人提到了',
  `first_refer_note` mediumtext NOT NULL COMMENT '首次提及注解',
  `first_name_chapter` int(10) unsigned NOT NULL COMMENT '首次称呼回目：人物的名字出现位置可能和首次出场不同，也可能和首次提及回目不同',
  `first_name_note` mediumtext NOT NULL COMMENT '首次称呼注解',
  `die_chapter` int(10) unsigned NOT NULL COMMENT '死亡回目',
  `die_note` mediumtext NOT NULL COMMENT '死亡注解',
  `dead` tinyint(1) NOT NULL COMMENT '至大观园时是否已经死亡',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--
-- ORDER BY:  `name`

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES
('丰儿',0,'女',14,'比较瞎猜',14,258,'','','','','','','','','','','','','','','','','','','','',25,'凤姐被马道婆施法变疯，丰儿哭的泪天泪地',7,'周瑞家的送宫花给凤姐，丰儿在凤姐房门后坐着',7,'',0,'',0),
('入画',0,'女',0,'',0,200,'','','','','','','','','','','','','','','','','','','','',0,'',7,'惜春让入画收了周瑞家的送的宫花',7,'',0,'',0),
('兴儿',0,'男',0,'',0,230,'','','','','','','','','','','','','','','','','','','','',0,'',53,'贾珍收礼，丫头传话里提到了兴儿',53,'',0,'',0),
('卍儿',0,'女',0,'',0,210,'','','','','','','','','','','','','','','','','','','','',19,'茗烟跟卍儿干那警幻所训之事',19,'',19,'',0,'',0),
('司棋',0,'女',16,'比较瞎猜',16,250,'','','','','','','','','','','','','','','','','','','','',7,'周瑞家的送宫花给迎春，司棋正从屋内出来',7,'',7,'',0,'',0),
('周姨娘',0,'女',30,'瞎猜',30,200,'周','','','','','','','','','','','','','','','','','','','',25,'赵姨娘找马道婆害宝玉后，周姨娘来看望宝玉',25,'',25,'',0,'',0),
('善姐',0,'女',16,'比较瞎猜',16,230,'','','','','','','','','','','','','','','','','','','','',68,'善姐不服从尤二姐使唤',68,'',68,'',0,'',0),
('喜儿',0,'男',0,'',0,200,'','','','','','','','','','','','','','','','','','','','',64,'喜儿和寿儿吃酒',64,'',64,'',0,'',0),
('寿儿',0,'男',0,'',0,200,'','','','','','','','','','','','','','','','','','','','',64,'喜儿和寿儿吃酒',64,'',64,'',0,'',0),
('小吉祥',0,'女',0,'',0,201,'','','','','','','','','','','','','','','','','','','','',0,'',57,'雪雁说赵姨娘带小吉祥儿去送殡',57,'',0,'',0),
('小红',0,'女',15,'比较瞎猜',15,230,'林','','林红玉','','','','','','','','','','','','','','','','','',24,'贾芸给凤姐送冰片后找宝玉，小红帮忙传信。',23,'宝玉住怡红院，新添4个丫头负责打扫，儿小红应该就在其中，http://www.todayonhistory.com/people/201610/18748.html',24,'宝玉喊人倒水，小红进屋帮忙倒水',0,'',0),
('小鹊',0,'女',0,'',0,200,'','','','','','','','','','','','','','','','','','','','',0,'',73,'小鹊来找宝玉传个信儿',73,'',0,'',0),
('尤二姐',0,'女',23,'尤二姐比贾蓉小，推导：https://zh.wikipedia.org/wiki/%E7%BA%A2%E6%A5%BC%E6%A2%A6%E5%B9%B4%E8%B0%B1#cite_note-38',23,450,'尤','','','','','','','','','','','','','','','','','','','',63,'尤氏找家里姐妹来贾府',63,'',63,'',0,'',0),
('尤氏',0,'女',40,'第76回，尤氏40，推算：https://zh.wikipedia.org/wiki/%E7%BA%A2%E6%A5%BC%E6%A2%A6%E5%B9%B4%E8%B0%B1#cite_note-38',40,700,'尤','','','','','','','','','','','','大奶奶','','','','','','','',5,'尤氏在宁府治酒请大家赏梅花，才有了宝玉游幻境',5,'',5,'',0,'',0),
('平儿',0,'女',17,'https://zh.wikipedia.org/wiki/%E7%BA%A2%E6%A5%BC%E6%A2%A6%E5%B9%B4%E8%B0%B1#cite_note-84',17,333,'','','','','','','','','','','','','','','','','','','','',7,'周瑞家的送宫花，平儿替凤姐收着',6,'贾蓉找凤姐借玻璃炕屏，凤姐命平儿拿钥匙',68,'',0,'',0),
('庆儿',0,'男',0,'',0,228,'','','','','','','','','','','','','','','','','','','','',0,'',68,'凤姐差庆儿打听事',68,'',0,'',0),
('彩云',0,'女',0,'',0,275,'','','','','','','','','','','','','','','','','','','','',23,'宝玉见贾政，彩云等笑宝玉',23,'',23,'',0,'',0),
('彩屏',0,'女',0,'',0,199,'','','','','','','','','','','','','','','','','','','','',0,'',29,'荣府女眷打醮，彩屏也一起',7,'',0,'',0),
('彩霞',0,'女',0,'',0,274,'','','','','','','','','','','','','','','','','','','','',23,'宝玉见贾政，彩霞等笑宝玉',23,'',23,'',0,'',0),
('彩鸾',0,'女',0,'',0,200,'','','','','','','','','','','','','','','','','','','','',62,'宝玉生日，彩鸾来拜寿',62,'',62,'',0,'',0),
('待书',0,'女',16,'比较瞎猜',16,250,'','','','','','','','','','','','','','','','','','','','',7,'周瑞家的送宫花给迎春，司棋正从屋内出来',7,'',7,'',0,'',0),
('文官',0,'女',0,'',0,280,'','文官','','','','','','','','','','','','','','','','','','',54,'贾母做寿，文官带领十二官表演',27,'只是顺手提到了',27,'',0,'',0),
('昭儿',0,'男',0,'',0,229,'','','','','','','','','','','','','','','','','','','','',14,'林如海死后，昭儿跟随贾琏去苏州，回来后被凤姐问话',14,'',14,'',0,'',0),
('李纨',0,'女',27,'李纨年龄比王熙凤大，推导：https://zh.wikipedia.org/wiki/%E7%BA%A2%E6%A5%BC%E6%A2%A6%E5%B9%B4%E8%B0%B1#cite_note-38',27,670,'李','','','','稻香老农','第37回，结诗社时取别号','','','','','','','大奶奶','','','','','','','',3,'黛玉进贾府，贾珠之妻李氏捧饭',3,'',4,'黛玉到李纨房中时才详细介绍李纨姓名',0,'',0),
('来旺',0,'男',0,'',0,230,'','','','','旺儿','','','','','','','','','','','','','','','',0,'',15,'凤姐包揽诉讼，来往是负责跑腿的心腹',15,'',0,'',0),
('林如海',0,'男',48,'第2回时，林如海40岁，黛玉5岁。',48,777,'林','如海','','','','','','','','','','','','','','','','','','',2,'冷子兴演说荣国府提到',3,'贾雨村向林如海谋官',2,'',0,'',0),
('林黛玉',0,'女',13,'http://blog.sina.com.cn/s/blog_6755590d0102va0e.html',13.5,555,'林','黛玉','','','颦颦','第3回，宝玉初见取表字颦颦','病西施','第65回，兴儿对二尤介绍黛玉','潇湘妃子','第37回，诗社里新取的笔名','','','','','','','','','','',3,'黛玉进入荣国府',2,'陈述贾雨村做林府西宾',2,'陈述贾雨村做林府西宾',0,'',0),
('炒豆',0,'女',0,'',0,200,'','','','','','','','','','','','','','','','','','','','',75,'银蝶和炒豆随尤氏看望李纨',75,'',75,'',0,'',0),
('玉钏',0,'女',0,'',0,278,'白','玉钏','','','','','','','','','','','','','','','','','','',35,'玉钏为宝玉尝荷叶汤',25,'贾环在王夫人面前抄金刚经，让玉钏剪蜡花',25,'',0,'',0),
('王信',0,'男',0,'',0,227,'','','','','','','','','','','','','','','','','','','','',68,'凤姐让王信在察院虚张声势',68,'',68,'',0,'',0),
('王夫人',0,'女',48,'http://blog.sina.com.cn/s/blog_6755590d0102va0e.html',48,775,'王','','','','','','','','','','','','','','','','','','','',2,'冷子兴演说贾府提到政老爹的夫人王氏',3,'黛玉进贾府时王夫人与王熙凤对话',2,'',0,'',0),
('王熙凤',0,'女',26,'王熙凤死的时候30岁，倒推：https://zh.wikipedia.org/wiki/%E7%BA%A2%E6%A5%BC%E6%A2%A6%E5%B9%B4%E8%B0%B1#cite_note-38',26,710,'王','熙凤','','','凤辣子','第3回，黛玉进贾府，贾母介绍王熙凤','','','','','','','二奶奶','','','','','','','',2,'冷子兴演说荣国府提到贾琏娶了王氏内侄女',3,'黛玉进贾府，王熙凤来迎接',3,'',0,'',0),
('玻璃',0,'女',18,'比较瞎猜',18,340,'','玻璃','','','','','','','','','','','','','','','','','','',59,'丫鬟为贾母打点物品，玻璃也在其内',59,'',59,'',0,'',0),
('珍珠',0,'女',18,'比较瞎猜，http://www.52hlpm.com/wy/tgq/tg077.htm',18,340,'','珍珠','','','','','','','','','','','','','','','','','','',0,'',29,'荣府女眷外出打醮，提到了珍珠。但这个珍珠有疑点：https://baike.baidu.com/item/%E7%8F%8D%E7%8F%A0/6123468',59,'',0,'',0),
('琥珀',0,'女',19,'http://www.52hlpm.com/wy/tgq/tg077.htm',19,350,'','琥珀','','','','','','','','','','','','','','','','','','',38,'吃螃蟹，琥珀跟平儿闹',29,'荣府女眷外出打醮，提到了琥珀',29,'',0,'',0),
('秦可卿',0,'女',23,'纯猜测，年龄应该比其夫贾蓉小个一两岁',23,333,'秦','','','','','','','','','','','','','','','','','','','',5,'宝玉在宁国府倦怠，由贾蓉之妻侵氏安排休息。',5,'',5,'宝玉梦中惊醒喊“可卿救我”',0,'',0),
('绣凤',0,'女',0,'',0,276,'','','','','','','','','','','','','','','','','','','','',23,'宝玉见贾政，绣凤等笑宝玉',23,'',23,'',0,'',0),
('绣桔',0,'女',16,'比较瞎猜',16,215,'','','','','','','','','','','','','','','','','','','','',29,'荣府女眷打醮，绣桔在列',29,'',29,'',0,'',0),
('绣鸾',0,'女',0,'',0,277,'','','','','','','','','','','','','','','','','','','','',23,'宝玉见贾政，绣鸾等笑宝玉',23,'',23,'',0,'',0),
('翡翠',0,'女',18,'比较瞎猜',18,340,'','翡翠','','','','','','','','','','','','','','','','','','',59,'丫鬟为贾母打点物品，翡翠也在其内',59,'',59,'',0,'',0),
('莲花儿',0,'女',14,'比较瞎猜',14,210,'','','','','','','','','','','','','','','','','','','','',61,'莲花儿找柳家的要炖鸡蛋',61,'',61,'',0,'',0),
('袭人',0,'女',16,'https://www.douban.com/group/topic/28547104/',16.5,333,'花','袭人','花珍珠','第23回，贾政问王夫人袭人是谁，宝玉解释道','','','','','','','','','花大姑娘','','','','','','','',3,'黛玉进入荣国府，袭人劝慰黛玉',3,'',3,'',0,'',0),
('贾代化',0,'男',70,'纯拍脑袋瞎猜',70.5,886,'贾','代化','','','','','','','','','','','','','','','','','','',0,'0',2,'冷子兴演说荣国府时提到',2,'',0,'',1),
('贾代善',0,'男',68,'纯拍脑袋瞎猜',68.3,885,'贾','代善','','','','','','','','','','','','','','','','','','',0,'0',2,'冷子兴演说荣国府时提到',2,'',0,'',1),
('贾元春',0,'女',25,'元春年龄比较乱，http://ibekolu.blogchina.com/1586561.html',25,888,'贾','元春','','','','','','','','','','','','','','','','','','',18,'元春归省荣国府',2,'冷子兴演说荣国府时提到贾珠是王夫人第二胎',0,'',0,'',0),
('贾公',1,'男',100,'',100,999,'贾','','','','','','','','','','','','','','','','','','','',0,'',0,'',0,'',0,'',1),
('贾兰',0,'男',11,'第78回。https://tieba.baidu.com/p/681397160?red_tag=3245362885',11,333,'贾','兰','','','兰哥','','','','','','','','','','','','','','','',9,'家塾出乱子，贾兰贾菌也被波及。',4,'介绍李纨时，说贾珠有一子，取名贾兰。',4,'',0,'',0),
('贾宝玉',0,'男',14,'http://blog.sina.com.cn/s/blog_6755590d0102va0e.html',14.5,666,'贾','宝玉','','','怡红公子','第37回，诗社里新取的笔名','绛洞花王','第37回，诗社里李纨提到的旧号','槛内人','第63回，给妙玉回帖中署名','','','宝二爷','','','','','','','',3,'黛玉进入荣国府初见宝玉',2,'冷子兴演说荣国府时提到',2,'冷子兴演说荣国府时提到',0,'',0),
('贾巧姐',0,'女',2,'大姐和巧姐归总为巧姐，年龄混乱。',2,333,'贾','巧姐','','','','','','','','','','','','','','','','','','',0,'巧姐一直没有主动活动，都是描述别人时带着她',6,'刘姥姥一进荣国府，来到贾琏的女儿大姐的睡觉之所。',2,'',0,'',0),
('贾惜春',0,'女',12,'https://tieba.baidu.com/p/2542784236?red_tag=2408789060',12,400,'贾','惜春','','','','','','','','','','','四小姐','冷子兴演说荣国府提到四小姐名探春','','','','','','',10,'璜大奶奶和金氏见了尤氏，正好贾珍也进屋',2,'冷子兴说道四小姐惜春是珍爷胞妹',2,'',0,'',0),
('贾探春',0,'女',13,'跟黛玉、湘云差不多，难分清楚。讨论也很多。',13.5,555,'贾','探春','','','蕉下客','第37回，诗社里新取的笔名','玫瑰花','第65回，兴儿向尤二姐提起姑娘们的诨名','','','','','三小姐','冷子兴推演荣国府说三小姐名探春','','','','','','',18,'元春归省荣国府',2,'冷子兴演说荣国府时提到贾珠是王夫人第二胎',0,'',0,'',0),
('贾政',0,'男',48,'纯粹拍脑袋瞎猜。第33回，贾政打宝玉，王夫人说如今已将五十岁的人。',48,800,'贾','政','','','','','','','','','','','','','','','','','','',9,'宝玉进学堂前，贾政训话',2,'冷子兴演说荣国府时提到代善次子是贾政',2,'',0,'',0),
('贾敏',0,'女',47,'年龄比贾政小。第2回，林如海40岁时，黛玉5岁。至大观园时，黛玉12、13岁。',47,700,'贾','敏','','','','','','','','','','','','','','','','','','',0,'',2,'冷子兴说道贾敏',2,'',0,'',1),
('贾敬',0,'男',54,'纯粹拍脑袋瞎猜',54.5,880,'贾','敬','','','','','','','','','','','太爷','第11回，贾敬生日，各人口中都称他太爷','','','','','','',11,'贾敬生日，贾蓉跟贾敬有些交流',2,'冷子兴演说荣国府时提到贾代化次子贾敬袭了官，但一味好道',2,'',63,'忽见东府中几个人慌慌张张跑来说：老爷宾天了。',0),
('贾敷',0,'男',55,'纯粹拍脑袋瞎猜',55,880,'贾','敷','','','','','','','','','','','','','','','','','','',0,'',2,'冷子兴演说荣国府时提到贾代化长子贾敷七八岁就死了',2,'',0,'',1),
('贾母',0,'女',68,'第39回，刘姥姥说自己75岁，贾母说比自己大好几岁',68,880,'史','','','','','','','','','','','','老祖宗','','老太太','','史太君','','','',3,'黛玉进荣国府见贾母',2,'冷子兴演说荣国府时提到贾代善娶了史侯家的小姐为妻',0,'',0,'',0),
('贾源',0,'男',85,'纯拍脑袋瞎猜',85.3,888,'贾','源','','','','','','','','','','','','','','','','','','',0,'0',2,'冷子兴演说荣国府时提到',2,'',0,'',1),
('贾演',0,'男',85,'纯拍脑袋瞎猜',85.5,887,'贾','演','','','','','','','','','','','','','','','','','','',0,'0',2,'冷子兴演说荣国府时提到',2,'',0,'',1),
('贾王扁',0,'男',0,'',0,160,'贾','王扁','','','','','','','','','','','','','','','','','','',0,'',13,'参加秦可卿丧礼',13,'',0,'',0),
('贾环',0,'男',13,'第78回。https://tieba.baidu.com/p/681397160?red_tag=3245362885',13.5,444,'贾','环','','','','','','','','','','','','','','','','','','',20,'贾环赌钱耍赖',18,'元妃省亲，贾环染病未痊',18,'',0,'',0),
('贾珍',0,'男',39,'第2回，贾雨村说黛玉5岁，冷子兴说贾蓉16岁。那推算下，等黛玉长到14岁时，贾蓉贾蓉25岁，那贾珍可能40了。第76回，其妻尤氏说本四十岁的人了。',39,680,'贾','珍','','','','','','','','','','','族长','第4回，薛蟠进贾府后被引诱的更坏了，解释说贾珍这族长管理的不成样子。','大爷','第14回，王熙凤跟宁国府众仆人说辛苦下，事情完了你们家大爷会赏。','','','','',10,'璜大奶奶和金氏见了尤氏，正好贾珍也进屋。',2,'冷子兴说道贾敬早年留下一子贾珍',2,'',0,'',0),
('贾珖',0,'男',0,'',0,158,'贾','珖','','','','','','','','','','','','','','','','','','',0,'',13,'参加秦可卿丧礼',13,'',0,'',0),
('贾珠',0,'男',28,'第2回，冷子兴说贾珠不到20生贾兰',28,670,'贾','珠','','','','','','','','','','','','','','','','','','',0,'',2,'冷子兴演说荣国府时提到贾珠是王夫人头胎',0,'',0,'',1),
('贾珩',0,'男',0,'',0,159,'贾','珩','','','','','','','','','','','','','','','','','','',0,'',13,'参加秦可卿丧礼',13,'',0,'',0),
('贾琏',0,'男',29,'第2回，冷子兴推演时黛玉5岁，贾琏已经二十来往.至大观园黛玉13岁时，贾琏至少也29岁了。',29,666,'贾','琏','','','','','','','','','','','琏二爷','','','','','','','',4,'薛蟠进荣国府，贾琏引着拜见贾赦',2,'冷子兴说贾琏是贾政长子',2,'',0,'',0),
('贾琛',0,'男',0,'',0,158,'贾','琛','','','','','','','','','','','','','','','','','','',0,'',13,'参加秦可卿丧礼',13,'',0,'',0),
('贾琮',0,'男',13,'年龄可能跟贾环差不多。http://www.guoxue123.com/hongxue/0001/hlwy/074.htm',13,333,'贾','琮','','','','','','','','','','','','','','','','','','',6,'薛蟠进荣国府，贾琏引着拜见贾赦',2,'冷子兴说贾琏是贾政长子',2,'',0,'',0),
('贾琼',0,'男',0,'',0,150,'贾','琼','','','','','','','','','','','','','','','','','','',0,'',13,'参加秦可卿丧礼',13,'',0,'',0),
('贾璘',0,'男',0,'',0,157,'贾','璘','','','','','','','','','','','','','','','','','','',0,'',13,'参加秦可卿丧礼',13,'',0,'',0),
('贾芝',0,'男',0,'',0,121,'贾','芝','','','','','','','','','','','','','','','','','','',0,'',13,'参加秦可卿丧礼',13,'',0,'',0),
('贾芬',0,'男',0,'',0,124,'贾','芬','','','','','','','','','','','','','','','','','','',0,'',13,'参加秦可卿丧礼',13,'',0,'',0),
('贾芳',0,'男',0,'',0,123,'贾','芳','','','','','','','','','','','','','','','','','','',0,'',13,'参加秦可卿丧礼',13,'',0,'',0),
('贾菌',0,'男',0,'',0,122,'贾','菌','','','','','','','','','','','','','','','','','','',0,'',13,'参加秦可卿丧礼',13,'',0,'',0),
('贾菖',0,'男',0,'',0,130,'贾','菖','','','','','','','','','','','','','','','','','','',0,'',13,'参加秦可卿丧礼',13,'',0,'',0),
('贾菱',0,'男',0,'',0,129,'贾','菱','','','','','','','','','','','','','','','','','','',0,'',13,'参加秦可卿丧礼',13,'',0,'',0),
('贾萍',0,'男',0,'',0,127,'贾','萍','','','','','','','','','','','','','','','','','','',0,'',13,'参加秦可卿丧礼',13,'',0,'',0),
('贾蓁',0,'男',0,'',0,128,'贾','蓁','','','','','','','','','','','','','','','','','','',0,'',13,'参加秦可卿丧礼',13,'',0,'',0),
('贾蓉',0,'男',25,'第2回，冷子兴推演时黛玉5岁，贾蓉16岁。至大观园黛玉13岁时，贾蓉24岁左右。',25,444,'贾','蓉','','','','','','','','','','','','','','','','','','',6,'姥姥一进荣国府时，贾蓉找凤姐要玻璃炕屏。',2,'冷子兴说贾琏是贾政长子',2,'',0,'',0),
('贾蔷',0,'男',19,'第9回，贾蔷16岁，大概比宝玉大个5、6岁',19,333,'贾','蔷','','','','','','','','','','','','','','','','','','',9,'家塾里贾蔷挑唆茗烟跟金荣斗气',9,'',9,'',0,'',0),
('贾藻',0,'男',0,'',0,126,'贾','藻','','','','','','','','','','','','','','','','','','',0,'',13,'参加秦可卿丧礼',13,'',0,'',0),
('贾蘅',0,'男',0,'',0,125,'贾','蘅','','','','','','','','','','','','','','','','','','',0,'',13,'参加秦可卿丧礼',13,'',0,'',0),
('贾赦',0,'男',49,'纯粹拍脑袋瞎猜。第11回贾珍称邢夫人、王夫人为婶子，说明贾赦贾政都比贾敬小。',49,780,'贾','赦','','','','','','','','','','','','','','','','','','',11,'贾敬生日，贾蓉跟贾敬有些交流',2,'冷子兴演说荣国府时提到贾代化次子贾敬袭了官，但一味好道',2,'',0,'',0),
('贾迎春',0,'女',15,'第73回，迎春称呼宝姐姐林妹妹，大致推算。',15,500,'贾','迎春','','','二木头','第65回，兴儿向尤二姐提起小姐们的诨名','','','','','','','二小姐','冷子兴演说荣国府说二小姐名迎春','','','','','','',2,'冷子兴演说荣国府提到二小姐乃赦老爹所出，名迎春',3,'黛玉进贾府，迎春姊妹三个迎接',3,'',0,'',0),
('赵姨娘',0,'女',30,'https://baike.baidu.com/item/%E8%B5%B5%E5%A7%A8%E5%A8%98',30,333,'赵','','','','','','','','','','','','','','','','','','','',20,'王熙凤正言弹妒意这回，赵姨娘骂贾环',20,'',20,'',0,'',0),
('邢夫人',0,'女',33,'比较猜测，http://bbs.tianya.cn/post-106-544458-1.shtml',33,777,'邢','','','','','','','','','','','','大太太','','','','','','','',3,'黛玉进贾府，邢夫人领着黛玉',3,'',3,'',0,'',0),
('金钏',0,'女',0,'',0,280,'白','金钏','','','','','','','','','','','','','','','','','','',7,'周瑞家的送宫花过程中跟金钏讨论香菱',7,'周瑞家的送宫花，路上看见了金钏和香菱在玩',7,'',0,'',0),
('银蝶',0,'女',0,'',0,200,'','','','','','','','','','','','','','','','','','','','',75,'银蝶和炒豆随尤氏看望李纨',75,'',75,'',0,'',0),
('隆儿',0,'男',0,'',0,230,'','','','','','','','','','','','','','','','','','','','',65,'贾琏找尤二姐，心腹小童隆儿拴马',65,'',65,'',0,'',0),
('靛儿',0,'女',15,'瞎猜',15,340,'','靛儿','','','','','','','','','','','','','','','','','','',30,'靛儿找扇子，被宝钗借扇机带双敲',30,'',30,'',0,'',0),
('鸳鸯',0,'女',19,'http://www.52hlpm.com/wy/tgq/tg077.htm',19,400,'金','鸳鸯','第46回，凤姐向邢夫人介绍鸳鸯家庭情况说鸳鸯的爹叫金彩','','','','','','','','','','','','','','','','','',24,'宝玉要吃鸳鸯嘴上的胭脂',20,'丫鬟们在一起耍戏，提到了鸳鸯',20,'',0,'',0),
('鹦鹉',0,'女',18,'比较瞎猜',18,340,'','鹦鹉','','','','','','','','','','','','','','','','','','',0,'',59,'荣府女眷外出打醮，提到了鹦鹉。',59,'',0,'',0);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servant`
--

DROP TABLE IF EXISTS `servant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servant` (
  `name` varchar(255) NOT NULL COMMENT '称呼',
  `family` varchar(255) NOT NULL COMMENT '现所属家族',
  `job_description` mediumtext NOT NULL COMMENT '工作描述',
  `serve` varchar(255) NOT NULL COMMENT '侍奉对象',
  `pay_in_silver` decimal(10,3) NOT NULL COMMENT '每月例银，单位：两',
  `pay_in_coin` decimal(10,3) NOT NULL COMMENT '每月例银，单位：文，一吊钱=1000文',
  `pay_note` mediumtext NOT NULL COMMENT '月例注解',
  `pay_estimated` tinyint(1) NOT NULL COMMENT '月例是否是估算的',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servant`
--
-- ORDER BY:  `name`

LOCK TABLES `servant` WRITE;
/*!40000 ALTER TABLE `servant` DISABLE KEYS */;
INSERT INTO `servant` VALUES
('丰儿','贾家','小丫头','王熙凤',0.000,500.000,'',1),
('入画','贾家','小丫头','贾惜春',0.000,500.000,'估计是小丫头',1),
('兴儿','贾家','小厮','贾珍',0.000,0.000,'',0),
('卍儿','贾家','大丫头','尤氏',1.000,0.000,'年纪较大了，估计是大丫头',1),
('司棋','贾家','大丫头','贾迎春',1.000,0.000,'',1),
('善姐','贾家','大丫头','尤二姐',1.000,0.000,'猜测是个大丫头',1),
('喜儿','贾家','小厮','贾珍',0.000,0.000,'',0),
('寿儿','贾家','小厮','贾珍',0.000,0.000,'',0),
('小吉祥','贾家','小丫头','赵姨娘',0.000,500.000,'',1),
('小红','贾家','小丫头','王熙凤',0.000,500.000,'',1),
('小鹊','贾家','小丫头','赵姨娘',0.000,500.000,'',1),
('平儿','贾家','大丫头','王熙凤',1.000,0.000,'',0),
('庆儿','贾家','小厮','王熙凤',0.000,0.000,'',0),
('彩云','贾家','大丫头','王夫人',1.000,0.000,'估计是个大丫头',1),
('彩屏','贾家','小丫头','贾惜春',0.000,500.000,'估计是小丫头',1),
('彩霞','贾家','大丫头','王夫人',1.000,0.000,'估计是个大丫头',1),
('彩鸾','贾家','小丫头','王夫人',0.000,500.000,'估计是个小丫头',1),
('待书','贾家','大丫头','贾探春',1.000,0.000,'',1),
('文官','贾家','十二官','贾母',0.000,0.000,'',0),
('昭儿','贾家','小厮','贾琏',0.000,0.000,'',0),
('来旺','贾家','仆人','王熙凤',0.000,0.000,'',0),
('炒豆','贾家','小丫头','尤氏',0.000,500.000,'',1),
('玉钏','贾家','大丫头','王夫人',2.000,0.000,'第36回，王夫人把金钏原来的一两月例给了玉钏，玉钏原来估计是大丫头本来就有一两月例',1),
('王信','贾家','仆人','王熙凤',0.000,0.000,'',0),
('玻璃','贾家','大丫头','贾母',1.000,0.000,'第36回，老太太屋里几个大丫头都是一两',0),
('珍珠','贾家','大丫头','贾母',1.000,0.000,'第36回，老太太屋里几个大丫头都是一两',0),
('琥珀','贾家','大丫头','贾母',1.000,0.000,'第36回，老太太屋里几个大丫头都是一两',0),
('绣凤','贾家','大丫头','王夫人',1.000,0.000,'估计是个大丫头',1),
('绣桔','贾家','大丫头','贾迎春',1.000,0.000,'',0),
('绣鸾','贾家','大丫头','王夫人',1.000,0.000,'估计是个大丫头',1),
('翡翠','贾家','大丫头','贾母',1.000,0.000,'第36回，老太太屋里几个大丫头都是一两',0),
('莲花儿','贾家','小丫头','贾迎春',0.000,500.000,'',0),
('袭人','贾家','大丫头','贾宝玉',2.000,1000.000,'第35回，原本从贾母领一两月例，王夫人改为从自己这里领二两银子一吊钱',0),
('金钏','贾家','大丫头','王夫人',1.000,0.000,'第36回，王夫人说金钏死了省下一两银子',0),
('银蝶','贾家','小丫头','尤氏',0.000,500.000,'',1),
('隆儿','贾家','小厮','贾琏',0.000,0.000,'',0),
('靛儿','贾家','小丫头','贾母',0.000,500.000,'第36回，老太太屋里除去大丫头外其他都是几百钱，其他屋里小丫头都是500，故此猜测',1),
('鸳鸯','贾家','大丫头','贾母',1.000,0.000,'第36回，老太太屋里几个大丫头都是一两',0),
('鹦鹉','贾家','大丫头','贾母',1.000,0.000,'第36回，老太太屋里几个大丫头都是一两',0);
/*!40000 ALTER TABLE `servant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_position`
--

DROP TABLE IF EXISTS `social_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_position` (
  `name` varchar(255) NOT NULL COMMENT '称呼',
  `nobility_rank` enum('','公','候','伯','子','男') DEFAULT NULL COMMENT '爵位级别',
  `nobility_title` varchar(255) NOT NULL COMMENT '爵位名称',
  `nobility_note` mediumtext NOT NULL COMMENT '爵位注解',
  `official_rank` int(10) unsigned NOT NULL DEFAULT '999' COMMENT '官位品级',
  `official_title` varchar(255) NOT NULL COMMENT '官位名称',
  `official_note` mediumtext NOT NULL COMMENT '官位注解',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_position`
--
-- ORDER BY:  `name`

LOCK TABLES `social_position` WRITE;
/*!40000 ALTER TABLE `social_position` DISABLE KEYS */;
INSERT INTO `social_position` VALUES
('林如海','','','',2,'兰台寺大夫','第2回，贾雨村听到的新闻，当时林如海同时还做了巡盐御史'),
('贾代化','候','一等神威将军','降级袭爵。第13回，贾蓉的履历给戴权看，看到代化的官爵。',0,'京营节度使','第13回，贾蓉的履历给戴权看，看到代化的官爵。'),
('贾代善','公','荣国公','第29回，张道士说宝玉跟荣国公是一个模子里刻出来的，而贾母又说，除了宝玉，没一个人像他爷爷。',0,'',''),
('贾元春','','贤德妃','',0,'凤藻宫尚书',''),
('贾政','候','','父亲代善是国公，贾政降级袭爵',5,'工部员外郎','第3回，林如海向贾雨村介绍贾政时提到'),
('贾敬','伯','','',5,'','第63回，死亡时追赐'),
('贾源','公','荣国公','',0,'',''),
('贾演','公','宁国公','',0,'',''),
('贾珍','子','三品爵威烈将军','降级袭爵。第13回，贾蓉的履历给戴权看，看到贾珍的官爵。',0,'',''),
('贾琏','伯','','降级袭爵',5,'同知','第2回，冷子兴演说将贾琏捐了个官'),
('贾蓉','男','','降级袭爵',5,'龙禁尉','第13回，贾珍给贾蓉捐了个官，好让秦可卿的葬礼风光些。'),
('贾赦','','一等将军','第2回，冷子兴说贾赦袭了贾代善官职',0,'','');
/*!40000 ALTER TABLE `social_position` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
