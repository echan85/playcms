-- MySQL dump 10.13  Distrib 5.1.45, for Win32 (ia32)
--
-- Host: localhost    Database: playcms
-- ------------------------------------------------------
-- Server version	5.1.45-community

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `dateCreated` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `titlepic` varchar(255) DEFAULT NULL,
  `dateUpdated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK379164D6887AB67E` (`menu_id`),
  CONSTRAINT `FK379164D6887AB67E` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'<p style=\"text-align: left;\">\r\n	<img alt=\"\" title=\"\" src=\"http://localhost:1900/public/upload/icgbdnjuFI.jpg\" width=\"129\" height=\"163\">杭州百特科技有限公司主要经营进口阀门、控制仪器及仪表等机电产品，是一家专业策划流体控制工程系统的公司，公司自2001年就和国际上知名的生产厂家及相关的供应商有着密切的技术和产品合作关系，在国内华北、华东、华中、华南、西北等地设有多家分公司及办事处，在几个大的省会城市同时也成立了直属子公司，公司经过几年的稳步发展，无论是在客户群及产品供应商方面都得到了双方的认知度，长期以来和我们合作的的品牌如德国SAMSON、德国ARI等阀门公司均获得了市场一致的认可。多年来为国内各大化工、食品、啤酒饮料、纺织、电子、楼宇、石油、石化、钢铁、电厂、城市供热以及相关企业提供质优价廉的产品和良好的服务。公司拥有大批集中采购订单，采购成本大大降低，力争为国内更多客户提供最优惠的采购价格，与此同时，为了更及时地服务于客户，公司还在工程系统改造及细分化的节能、环保等环节方面不断与知名的公司密切合作，进行技术交流与改进，以此适应工业技术革新方面发展的需求，我们将一直致力与专业的蒸汽、流体控制系统的设计，配套及工程改造，为更多的企业服务。</p>\r\n<p style=\"text-align: left;\">\r\n	杭州作为面对全国市场的常设公司，拥有多名具有多年销售经验的专业高级工程师，可以为客户提供专业的服务。</p>\r\n<p style=\"text-align: left;\">\r\n	欢迎广大客户及供应商与我们建立长期合作关系、共谋发展！</p>\r\n<p>\r\n	我们的宗旨：立足诚信、以人为本、以质取胜、服务优质　</p>','0031-08-17 00:00:00','欢迎',1,'welcome','',NULL),(2,'<p>\r\n	新的网站上线了！</p>','0017-08-31 00:00:00','新的网站上线了！',4,'','',NULL),(3,'<p>产品介绍</p>','0017-08-31 00:00:00','产品介绍',9,'intro','',NULL),(4,'<p>\r\n	<font face=\"黑体, 宋体, 微软雅黑, 新宋体, 新宋体-18030\" size=\"2\">萨姆森控制设备（中国）有限公司成立于1998</font><img alt=\"\" src=\"http://www.samsonchina.com/pictures/pic00037.jpg\" style=\"border-style: solid; border-width: 0px; width: 100px; height: 170px; float: right;\" /><font face=\"黑体, 宋体, 微软雅黑, 新宋体, 新宋体-18030\" size=\"2\">年5月，她是世界控制阀领导者之一 SAMSON AG在中国注册投资的全资子公司。公司总部设在中国北京经济技术开发区（BDA)，距北京市中心天安门广场16.5公里，距北京首都国际机场25公里，距天津新港140公里。<br />\r\n	　　SAMSON AG 创立于1907年，其总部位于德国法兰克福。在超过100年的成长和发展的过程中，SAMSON公司始终致力于控制阀和仪器仪表领域的研发、生产和销售。其独特的产品研发和创新能力、稳定可靠的产品质量以及完善的售后服务为客户创造了巨大的价值，并为 SAMSON 赢得了良好的声誉。目前SAMSON公司的产品和网络已经覆盖全球，为全球用户提供优质的产品和完善的解决方案。</font></p>\r\n<p>\r\n	<font face=\"黑体, 宋体, 微软雅黑, 新宋体, 新宋体-18030\" size=\"2\">　　SAMSON AG 在中国的业务于上个世纪已开始发展，1987年前，SAMSON 的产品通过国际工程公司进入中国；1988年，&ldquo;南行&rdquo;成为SAMSON AG 在中国的独家代理商。随着中国经济发展和 SAMSON公司的战略要求以及在为中国用户提供更好服务和支持的理念下，SAMSON 决定成立中国公司。在这种背景下，1998年，萨姆森控制设备（中国）有限公司成立，一期注册资本为446万欧元。<br />\r\n	　　经过十年的发展和壮大，萨姆森中国公司已经今非昔比。<br />\r\n	　　萨姆森中国公司现有员工共138名，下设销售部、生产部、行政部。在上海、成都、广州、沈阳先后设立了分公司，并且在上海、南京成立了维修中心。构筑起服务全国的营销网络。<br />\r\n	　　2003年10月，萨姆森控制设备（中国）有限公司在目前新址建立办公楼及厂方，占地面积10138平方米，一期工程建筑面积5800平方米，并拥有自己独立的生产设备，生产车间及仓库。<br />\r\n	　　萨姆森中国公司成立十年来，销售业绩持续增长，2007年的销售收入达到1998年销售收入的30倍，2008年前两个月销售收入已达2007全年的35％。伴随业务的高速发展，萨姆森中国公司在工业控制领域始终处于领先地位，为国内的石化、热力、空分、冶金、电力、化工、食品、烟草等行业提供了功能完善的工业控制阀产品和优质的工程服务。<br />\r\n	　　作为一个忠实可靠，备受尊重的工业企业，萨姆森中国公司与包括中石化、北京热力、杭氧空分、拜耳、巴斯夫、普莱克斯等众多大型知名企业建立了良好的合作关系。近年来，在项目与市场方面，也取得了娇人的成绩。例如：在南京扬子石化-巴斯夫一体化项目中提供了1700多台阀门，在上海漕泾的巴斯夫IIP项目和拜耳项目中分别提供了1300台和1800多台阀门；在南海壳牌石化项目中，提供了600多台控制阀，最大口径甚至达到了1.5米。在过去的两年中，SAMSON中国在煤化工及炼油石化项目中取得的突破，同时，也非常重视轻工、冶金等市场的开发。<br />\r\n	　　2008年，萨姆森中国公司成立十周年，二期工程5000平方米的车间、仓库及办公用地建设即将开工，武汉的分公司也在筹备之中。这将是令人振奋的一年，依靠萨姆森中国公司全体成员的努力，为客户提供可靠的产品和最优的技术服务，成为更多客户最为信赖的供应商。<br />\r\n	　　萨姆森中国公司的明天定会更加美好！萨姆森人将不断努力！</font></p>\r\n','0031-08-17 00:00:00','德国SAMSON',8,'','/public/upload/JbYDwKvbgc.gif',NULL),(5,'<p>\r\n	雅瑞&nbsp; ARI</p>','0031-08-17 00:00:00','雅瑞  ARI',8,'','',NULL),(6,'<p style=\"margin: 2px; padding: 0px; text-align: center;\">杭州百特（控股）有限公司<span class=\"style9\"> 版权所有<br>电话: </span>0571-85861288&nbsp;&nbsp; 85819158&nbsp;&nbsp; 87525328&nbsp;&nbsp; <span class=\"style9\">传真:</span>0571—85819168<br><span class=\"style9\"> 地址:</span>杭州市石桥路272号北16号三楼</p>','0017-08-31 00:00:00','copyright',9,'copyright','',NULL),(7,'<p>\r\n	阿姆斯壮 Armstrong</p>',NULL,'阿姆斯壮 Armstrong',8,'','',NULL),(8,'<p>\r\n	泰科阀门集团 Tyco</p>',NULL,'泰科阀门 Tyco',8,'','/public/upload/tyco.jpg',NULL),(10,'<p>\r\n	欧文拓普 Oventrop</p>',NULL,'欧文拓普 Oventrop',8,'','/public/upload/oventrop.gif',NULL),(11,'<p>\r\n	斯派莎克 Spiraxsarco</p>',NULL,'斯派莎克  Spiraxsarco',8,'','/public/upload/spira.gif',NULL),(12,'<table style=\"border: 0px solid rgb(0, 0, 0); width: 200px; height: 115px;\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width: 50px; text-align: center;\">\r\n				<strong><span style=\"color: rgb(51, 51, 51);\"><span class=\"style9\">电话</span></span></strong></td>\r\n			<td>\r\n				<strong><span style=\"color: rgb(51, 51, 51);\">0571-85861288&nbsp;&nbsp; 85819158&nbsp;&nbsp; 87525328</span></strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\">\r\n				<strong><span style=\"color: rgb(51, 51, 51);\"><span class=\"style9\">传真</span></span></strong></td>\r\n			<td>\r\n				<strong><span style=\"color: rgb(51, 51, 51);\">0571-85819168</span></strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\">\r\n				<strong><span style=\"color: rgb(51, 51, 51);\"><span class=\"style9\">地址</span></span></strong></td>\r\n			<td style=\"font-weight: bold;\">\r\n				<span style=\"color: rgb(51, 51, 51);\">杭州市石桥路272号北16号三楼</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>',NULL,'联系我们',9,'contacts','',NULL),(13,'<p>\r\n	&nbsp;</p>\r\n<br>\r\n<div firebugversion=\"1.5.3\" id=\"_firebugConsole\" style=\"display: none;\">\r\n	&nbsp;</div>\r\n<br>','0017-08-31 00:00:00','Samson 电动调节阀',3,'','/public/upload/Samson电动调节阀.gif','2010-04-27 22:41:14'),(14,'<p>\r\n	<img alt=\"\" src=\"/public/upload/icgbdnjuFI.jpg\"></p>','2010-04-27 22:41:25','Samson 直角式调节阀',3,'','/public/upload/Samson 直角式调节阀.gif','2010-04-27 22:41:25'),(15,'KOSO',NULL,'KOSO',8,'','/public/upload/logo.gif',NULL),(16,'&nbsp;分sfs <br>',NULL,'公司介绍',11,'componyintro','',NULL),(17,'&nbsp;公司资质',NULL,'公司资质',12,'temperament','',NULL),(19,'&nbsp;公司架构',NULL,'公司架构',13,'CompanyAdministrative','',NULL),(20,'企业文化',NULL,' 企业文化',14,'culture','',NULL),(21,'工程业绩',NULL,'工程业绩',5,'outstanding','',NULL),(22,'<h1><span class=\"elrtebm\" id=\"elrte-bm-6983116134106578\"></span><span class=\"elrtebm\" id=\"elrte-bm-424373548076469\"></span>杭州百特（控股）有限的公司的销售网络</h1><img alt=\"\" title=\"\" src=\"http://localhost:1900/public/upload/selling.jpg\" width=\"651\" height=\"554\">',NULL,'全国销售网络',6,'selling','',NULL),(23,'<table style=\"border: 0px solid rgb(0, 0, 0); width: 371px; height: 115px;\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td style=\"width: 50px; text-align: center;\"><strong><span style=\"color: rgb(51, 51, 51);\"><span class=\"style9\">电话</span></span></strong></td>\r\n			<td>\r\n				<strong><span style=\"color: rgb(51, 51, 51);\">0571-85861288&nbsp;&nbsp; 85819158&nbsp;&nbsp; 87525328</span></strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\">\r\n				<strong><span style=\"color: rgb(51, 51, 51);\"><span class=\"style9\">传真</span></span></strong></td>\r\n			<td>\r\n				<strong><span style=\"color: rgb(51, 51, 51);\">0571-85819168</span></strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\">\r\n				<strong><span style=\"color: rgb(51, 51, 51);\"><span class=\"style9\">地址</span></span></strong></td>\r\n			<td style=\"font-weight: bold;\">\r\n				<span style=\"color: rgb(51, 51, 51);\">杭州市石桥路272号北16号三楼</span></td></tr></tbody></table>\r\n<img alt=\"\" title=\"\" src=\"http://localhost:1900/public/upload/hangzhoupos.jpg\" width=\"642\" height=\"510\">',NULL,'联系我们',7,'touchuu','',NULL),(24,'&nbsp;<h1>冷凝水回收设备</h1>','0032-09-30 00:00:00','Samson 焊接调节阀',3,'','/public/upload/Samson 焊接调节阀.gif','2010-04-27 22:41:56'),(25,'&nbsp;<h1>减压阀</h1>','0032-09-30 00:00:00','Spiraxsarco BPW32压力平衡式疏水阀',3,'','/public/upload/Spiraxsarco BPW32压力平衡式疏水阀.jpg','2010-04-27 22:41:45'),(26,'&nbsp;<h1>自动控制阀、控制器</h1>','0032-09-30 00:00:00','Spiraxsarco FT44-FT46-FT47浮球疏水阀',3,'','/public/upload/Spiraxsarco FT44-FT46-FT47浮球疏水阀.jpg','2010-04-27 22:42:07'),(27,'&nbsp;<h1>排气阀</h1>','0030-10-02 00:00:00','Spiraxsarco FTS14浮球疏水阀',3,'','/public/upload/Spiraxsarco FTS14浮球疏水阀.jpg','2010-04-27 22:42:16'),(28,'&nbsp;<h1>空气疏水阀和排放阀</h1>','0030-10-02 00:00:00','Spiraxsarco TD120高压热动力疏水阀',3,'','/public/upload/Spiraxsarco TD120高压热动力疏水阀.jpg','2010-04-27 22:42:24'),(29,'Spiraxsarco压力平衡式疏水阀 <br>','2010-04-27 22:44:55','Spiraxsarco压力平衡式疏水阀',3,'','/public/upload/Spiraxsarco压力平衡式疏水阀.jpg','2010-04-27 22:44:55'),(30,'Tyao 电动截至阀 <br>','2010-04-27 22:45:14','Tyao 电动截至阀',3,'','/public/upload/Tyao 电动截至阀.jpg','2010-04-27 22:45:14'),(31,'&nbsp;Tyao 涡轮球阀','2010-04-27 22:45:35','Tyao 涡轮球阀',3,'','/public/upload/Tyao 涡轮球阀.jpg','2010-04-27 22:45:35'),(32,'&nbsp;Tyao气动球阀','2010-04-27 22:45:50','Tyao气动球阀',3,'','/public/upload/Tyao气动球阀.jpg','2010-04-27 22:45:50'),(33,'Tyco 安全阀','2010-04-27 22:46:07','Tyco 安全阀',3,'','/public/upload/Tyco 安全阀.jpg','2010-04-27 22:46:07'),(34,'Tyco 安全阀03<br>','2010-04-27 22:46:26','Tyco 安全阀03',3,'','/public/upload/Tyco 安全阀03.jpg','2010-04-27 22:46:26'),(35,'Tyco 气动球阀','2010-04-27 22:46:47','Tyco 气动球阀',3,'','Tyco 气动球阀','2010-04-27 22:46:47'),(36,'&nbsp;Tyco 全焊接球阀','2010-04-27 22:47:18','Tyco 全焊接球阀',3,'','/public/upload/Tyco 全焊接球阀.jpg','2010-04-27 22:47:18'),(37,'&nbsp;Tyco 卫生级阀门','2010-04-27 22:47:39','Tyco 卫生级阀门',3,'','/public/upload/Tyco 卫生级阀门.jpg','2010-04-27 22:47:39');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_menu`
--

DROP TABLE IF EXISTS `article_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_menu` (
  `Article_id` bigint(20) NOT NULL,
  `copies_id` bigint(20) NOT NULL,
  KEY `FKF2397348EB73CE56` (`Article_id`),
  KEY `FKF23973488E9A708A` (`copies_id`),
  CONSTRAINT `FKF23973488E9A708A` FOREIGN KEY (`copies_id`) REFERENCES `menu` (`id`),
  CONSTRAINT `FKF2397348EB73CE56` FOREIGN KEY (`Article_id`) REFERENCES `article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_menu`
--

LOCK TABLES `article_menu` WRITE;
/*!40000 ALTER TABLE `article_menu` DISABLE KEYS */;
INSERT INTO `article_menu` VALUES (4,8),(8,8),(15,8),(21,5),(10,8),(11,8),(2,4),(1,1),(13,3),(13,10),(14,3),(14,10),(25,3),(25,10),(24,3),(24,10),(26,3),(26,10),(27,3),(27,10),(28,3),(28,10),(7,8),(29,3),(29,10),(30,3),(30,10),(31,3),(32,3),(33,3),(34,3),(35,3),(36,3),(37,3);
/*!40000 ALTER TABLE `article_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_tag`
--

DROP TABLE IF EXISTS `article_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_tag` (
  `Article_id` bigint(20) NOT NULL,
  `tags_id` bigint(20) NOT NULL,
  PRIMARY KEY (`Article_id`,`tags_id`),
  KEY `FK94338091EB73CE56` (`Article_id`),
  KEY `FK94338091222C70F7` (`tags_id`),
  CONSTRAINT `FK94338091222C70F7` FOREIGN KEY (`tags_id`) REFERENCES `tag` (`id`),
  CONSTRAINT `FK94338091EB73CE56` FOREIGN KEY (`Article_id`) REFERENCES `article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_tag`
--

LOCK TABLES `article_tag` WRITE;
/*!40000 ALTER TABLE `article_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `viewOrder` bigint(20) NOT NULL,
  `postion` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `viewTemplate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK24897FCD038D7E` (`site_id`),
  KEY `FK24897FCB3BFB53` (`parent_id`),
  CONSTRAINT `FK24897FCB3BFB53` FOREIGN KEY (`parent_id`) REFERENCES `menu` (`id`),
  CONSTRAINT `FK24897FCD038D7E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'首页',0,'index.html',NULL,1,'home',1,NULL,'main',NULL),(2,'公司介绍',-9,'view.html',NULL,1,'componyintro',2,NULL,'main',NULL),(3,'产品中心',0,'list.html',NULL,1,'product',3,NULL,'main','view.html'),(4,'公司新闻',0,'list.html',NULL,1,'news',4,NULL,'main','news.html'),(5,'工程业绩',-9,'view.html',NULL,1,'outstanding',5,NULL,'main',NULL),(6,'销售网络',-9,'view.html',NULL,1,'selling',6,NULL,'main',NULL),(7,'在线留言',0,'list.html',NULL,1,'touchuu',7,NULL,'main','view.html'),(8,'合作公司',-1,'view.html',NULL,1,'coop',8,NULL,NULL,NULL),(9,'其他',-2,'index.html',NULL,1,'other',9,NULL,'',NULL),(10,'产品推荐',0,'list.html',NULL,1,'recommend',9,NULL,'','view.html'),(11,'公司介绍',-9,'view.html',2,1,'componyintro',0,NULL,'',NULL),(12,'公司资质',-9,'view.html',2,1,'temperament',0,NULL,'',NULL),(13,'组织架构',-9,'view.html',2,1,'CompanyAdministrative',0,NULL,'',NULL),(14,'企业文化',-9,'view.html',2,1,'culture',0,NULL,'',NULL);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site`
--

DROP TABLE IF EXISTS `site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `manifesto` varchar(255) DEFAULT NULL,
  `supportTel` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site`
--

LOCK TABLES `site` WRITE;
/*!40000 ALTER TABLE `site` DISABLE KEYS */;
INSERT INTO `site` VALUES (1,'','杭州百特（控股）有限公司','一切皆有可能','057155998188','2010 年 创新科技 版权所有');
/*!40000 ALTER TABLE `site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-04-27 22:54:50
