CREATE DATABASE  IF NOT EXISTS `db_111403502` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_111403502`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 192.168.56.102    Database: db_111403502
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_ProposalFollowing`
--

DROP TABLE IF EXISTS `tbl_ProposalFollowing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_ProposalFollowing` (
  `tbl_ProposalFollowing_id` int NOT NULL AUTO_INCREMENT,
  `tbl_member_id_fk` int NOT NULL,
  `tbl_proposal_id_fk` int NOT NULL,
  `tbl_member_name` varchar(45) NOT NULL,
  `tbl_proposal_title` varchar(100) NOT NULL,
  PRIMARY KEY (`tbl_ProposalFollowing_id`),
  KEY `proposal_id_fk_idx` (`tbl_proposal_id_fk`),
  KEY `member_id_fk_idx` (`tbl_member_id_fk`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ProposalFollowing`
--

LOCK TABLES `tbl_ProposalFollowing` WRITE;
/*!40000 ALTER TABLE `tbl_ProposalFollowing` DISABLE KEYS */;
INSERT INTO `tbl_ProposalFollowing` VALUES (1,1,2,'李小明','【台灣風情】EZPACK 隨身斜背包，多功能口袋設計，讓你輕鬆出門！'),(2,1,3,'李小明','持續支持性別平等！「共融」紙藝便籤夾，讓你與性別平等同行！'),(3,1,4,'李小明','【令人驚艷】台灣新鳳梨品種：芒果鳳梨，帶給你獨特的口感體驗！'),(4,2,7,'王小新','日系可愛風格電動麻將組'),(5,3,1,'張小紅','The All 100周年紀念【回憶重溫】音樂再現，穿越時光之牆！獨家合作：星宇樂團x陳藝、彩色西瓜樂團。'),(6,3,9,'張小紅','探索神秘命運！奇幻狗狗塔羅牌，解讀未來之謎！'),(7,3,5,'張小紅','鋼鼓音樂熱潮！加入Formosa Beats，成為鋼鼓樂手！'),(8,3,4,'張小紅','【令人驚艷】台灣新鳳梨品種：芒果鳳梨，帶給你獨特的口感體驗！'),(9,4,1,'陳小玉','The All 100周年紀念【回憶重溫】音樂再現，穿越時光之牆！獨家合作：星宇樂團x陳藝、彩色西瓜樂團。'),(10,5,2,'林小青','【台灣風情】EZPACK 隨身斜背包，多功能口袋設計，讓你輕鬆出門！'),(11,5,3,'林小青','持續支持性別平等！「共融」紙藝便籤夾，讓你與性別平等同行！'),(12,5,9,'林小青','探索神秘命運！奇幻狗狗塔羅牌，解讀未來之謎！'),(13,7,1,'廖小白','The All 100周年紀念【回憶重溫】音樂再現，穿越時光之牆！獨家合作：星宇樂團x陳藝、彩色西瓜樂團。'),(14,7,5,'廖小白','鋼鼓音樂熱潮！加入Formosa Beats，成為鋼鼓樂手！'),(15,7,7,'廖小白','日系可愛風格電動麻將組'),(16,7,6,'廖小白','【絕妙設計】ZLight MINi補光折疊穩定器，自拍必備良伴！'),(17,8,7,'吳小蘭','日系可愛風格電動麻將組'),(18,9,9,'劉小波','探索神秘命運！奇幻狗狗塔羅牌，解讀未來之謎！'),(19,10,1,'柯小智','The All 100周年紀念【回憶重溫】音樂再現，穿越時光之牆！獨家合作：星宇樂團x陳藝、彩色西瓜樂團。');
/*!40000 ALTER TABLE `tbl_ProposalFollowing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ProposalOption`
--

DROP TABLE IF EXISTS `tbl_ProposalOption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_ProposalOption` (
  `tbl_ProposalOption_id` int NOT NULL AUTO_INCREMENT,
  `tbl_proposal_id_fk` int NOT NULL,
  `tbl_proposal_title` varchar(100) NOT NULL,
  `tbl_proposal_option_name` varchar(100) NOT NULL,
  `tbl_price` decimal(13,4) NOT NULL,
  PRIMARY KEY (`tbl_ProposalOption_id`),
  KEY `proposal_id_fk_idx` (`tbl_proposal_id_fk`),
  CONSTRAINT `fk_proposal_id_ProposalOption` FOREIGN KEY (`tbl_proposal_id_fk`) REFERENCES `tbl_proposal` (`tbl_proposal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ProposalOption`
--

LOCK TABLES `tbl_ProposalOption` WRITE;
/*!40000 ALTER TABLE `tbl_ProposalOption` DISABLE KEYS */;
INSERT INTO `tbl_ProposalOption` VALUES (1,1,'The All 100周年紀念【回憶重溫】音樂再現，穿越時光之牆！獨家合作：星宇樂團x陳藝、彩色西瓜樂團。','The All 100周年紀念【回憶重溫】',2400.0000),(2,2,'【台灣風情】EZPACK 隨身斜背包，多功能口袋設計，讓你輕鬆出門！','斜背包 - A款式',350.0000),(3,2,'【台灣風情】EZPACK 隨身斜背包，多功能口袋設計，讓你輕鬆出門！','斜背包 - B款式',550.0000),(4,3,'持續支持性別平等！「共融」紙藝便籤夾，讓你與性別平等同行！','紙藝便籤夾 - A套組',250.0000),(5,3,'持續支持性別平等！「共融」紙藝便籤夾，讓你與性別平等同行！','紙藝便籤夾 - B套組',350.0000),(6,3,'持續支持性別平等！「共融」紙藝便籤夾，讓你與性別平等同行！','紙藝便籤夾 - C套組',450.0000),(7,4,'【令人驚艷】台灣新鳳梨品種：芒果鳳梨，帶給你獨特的口感體驗！','芒果鳳梨 - 5入',500.0000),(8,4,'【令人驚艷】台灣新鳳梨品種：芒果鳳梨，帶給你獨特的口感體驗！','芒果鳳梨 - 10入',900.0000),(9,5,'鋼鼓音樂熱潮！加入Formosa Beats，成為鋼鼓樂手！','鋼鼓學院 - A課程',3600.0000),(10,5,'鋼鼓音樂熱潮！加入Formosa Beats，成為鋼鼓樂手！','鋼鼓學院 - B課程',4800.0000),(11,5,'鋼鼓音樂熱潮！加入Formosa Beats，成為鋼鼓樂手！','鋼鼓學院 - C課程',6000.0000),(12,6,'【絕妙設計】ZLight MINi補光折疊穩定器，自拍必備良伴！','ZLight MINi補光折疊穩定器 - A套組',3000.0000),(13,6,'【絕妙設計】ZLight MINi補光折疊穩定器，自拍必備良伴！','ZLight MINi補光折疊穩定器 - B套組',3500.0000),(14,7,'日系可愛風格電動麻將組','日系可愛風格電動麻將組',10000.0000),(15,8,'一機搞定木工創意！DIY木工四合一工具，享受手作樂趣！','DIY木工四合一工具',2000.0000),(16,9,'探索神秘命運！奇幻狗狗塔羅牌，解讀未來之謎！','奇幻狗狗塔羅牌 - 柴犬套組',1000.0000),(17,9,'探索神秘命運！奇幻狗狗塔羅牌，解讀未來之謎！','奇幻狗狗塔羅牌 - 哈士奇套組',1000.0000),(18,9,'探索神秘命運！奇幻狗狗塔羅牌，解讀未來之謎！','奇幻狗狗塔羅牌 - 拉布拉多套組',1000.0000),(19,9,'探索神秘命運！奇幻狗狗塔羅牌，解讀未來之謎！','單純想贊助',1000.0000),(20,10,'weye美妝專業烘乾機，讓你的化妝品保持乾爽清潔！，拒絕刷菌上臉！','美妝工具烘乾機',800.0000),(21,11,'【潮流精品】SWAGPACK 斜背包，時尚設計，展現個人風格！','斜背包 - A款式',450.0000),(22,11,'【潮流精品】SWAGPACK 斜背包，時尚設計，展現個人風格！','斜背包 - B款式',550.0000),(23,12,'【世界上重量最輕折傘 】UM slim 秒收輕便雨傘，讓你無負擔','輕便雨傘 - A款式',1200.0000),(24,12,'【世界上重量最輕折傘 】UM slim 秒收輕便雨傘，讓你無負擔','輕便雨傘 - B款式',1200.0000),(25,12,'【世界上重量最輕折傘 】UM slim 秒收輕便雨傘，讓你無負擔','輕便雨傘 - C款式',1200.0000);
/*!40000 ALTER TABLE `tbl_ProposalOption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_SponsorRecord`
--

DROP TABLE IF EXISTS `tbl_SponsorRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_SponsorRecord` (
  `tbl_SponsorRecord_id` int NOT NULL AUTO_INCREMENT,
  `tbl_sponsor_id_fk` int DEFAULT NULL,
  `tbl_proposal_id_fk` int NOT NULL,
  `tbl_ProposalOption_id_fk` int NOT NULL,
  `tbl_sponsor_name` varchar(45) DEFAULT NULL,
  `tbl_proposal_title` varchar(100) NOT NULL,
  `tbl_proposal_option_name` varchar(100) NOT NULL,
  `tbl_price` decimal(13,4) NOT NULL,
  `tbl_purchase_volume` int NOT NULL,
  `tbl_price_volume` decimal(13,4) NOT NULL,
  `tbl_rating` varchar(10) DEFAULT NULL,
  `tbl_review` text,
  `tbl_response` text,
  PRIMARY KEY (`tbl_SponsorRecord_id`),
  KEY `member_id_fk_idx` (`tbl_sponsor_id_fk`),
  KEY `proposal_id_fk_idx` (`tbl_proposal_id_fk`),
  KEY `ProposalOption_id_fk_idx` (`tbl_ProposalOption_id_fk`),
  CONSTRAINT `fk_member_id_SponsorRecord` FOREIGN KEY (`tbl_sponsor_id_fk`) REFERENCES `tbl_member` (`tbl_member_id`),
  CONSTRAINT `fk_proposal_id_SponsorRecord` FOREIGN KEY (`tbl_proposal_id_fk`) REFERENCES `tbl_proposal` (`tbl_proposal_id`),
  CONSTRAINT `fk_ProposalOption_id_SponsorRecord` FOREIGN KEY (`tbl_ProposalOption_id_fk`) REFERENCES `tbl_ProposalOption` (`tbl_ProposalOption_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_SponsorRecord`
--

LOCK TABLES `tbl_SponsorRecord` WRITE;
/*!40000 ALTER TABLE `tbl_SponsorRecord` DISABLE KEYS */;
INSERT INTO `tbl_SponsorRecord` VALUES (1,1,12,23,'李小明','【世界上重量最輕折傘 】UM slim 秒收輕便雨傘，讓你無負擔','輕便雨傘 - A款式',1200.0000,3,3600.0000,'3.0','物流速度太慢了，等了很久才收到貨，產品品質也一般。','非常抱歉給您帶來不便，我們會加強物流管理，並對產品質量進行檢查，感謝您的反饋。'),(2,1,6,13,'李小明','【絕妙設計】ZLight MINi補光折疊穩定器，自拍必備良伴！','ZLight MINi補光折疊穩定器 - B套組',3500.0000,2,7000.0000,'4.0','這款產品的CP值很高，值得推薦。','非常感謝您的推薦，我們會繼續努力，提供更多高CP值的產品！'),(3,1,3,6,'李小明','持續支持性別平等！「共融」紙藝便籤夾，讓你與性別平等同行！','紙藝便籤夾 - C套組',450.0000,5,2250.0000,'','',''),(4,3,7,14,'張小紅','日系可愛風格電動麻將組','日系可愛風格電動麻將組',10000.0000,1,10000.0000,'3.0','使用過程中發現了一些小問題，希望能改進。','感謝您的反饋，請您聯繫我們的客服，我們會盡快解決您的問題並進行改進。'),(5,3,9,17,'張小紅','探索神秘命運！奇幻狗狗塔羅牌，解讀未來之謎！','奇幻狗狗塔羅牌 - 哈士奇套組',1000.0000,4,4000.0000,'4.0','價錢合理，品質優良，使用體驗也很好，是個不錯的選擇。',''),(6,3,11,2,'張小紅','【潮流精品】SWAGPACK 斜背包，時尚設計，展現個人風格！','斜背包 - A款式',450.0000,1,450.0000,'3.0','產品一般，與預期有差距。',''),(7,5,1,1,'林小青','The All 100周年紀念【回憶重溫】音樂再現，穿越時光之牆！獨家合作：星宇樂團x陳藝、彩色西瓜樂團。','The All 100周年紀念【回憶重溫】',2400.0000,3,7200.0000,'3.0','包裝有點簡陋，產品本身還可以，但感覺CP值不高。','感謝您的反饋，我們會改進包裝並進一步提升產品CP值，希望下次能讓您更滿意。'),(8,4,4,8,'陳小玉','【令人驚艷】台灣新鳳梨品種：芒果鳳梨，帶給你獨特的口感體驗！','芒果鳳梨 - 10入',900.0000,2,1800.0000,'','',''),(9,7,5,9,'廖小白','鋼鼓音樂熱潮！加入Formosa Beats，成為鋼鼓樂手！','鋼鼓學院 - A課程',3600.0000,4,14400.0000,'3.0','使用感受不錯','感謝您的肯定，我們會繼續努力，為您提供更好的使用體驗。'),(10,7,4,7,'廖小白','【令人驚艷】台灣新鳳梨品種：芒果鳳梨，帶給你獨特的口感體驗！','芒果鳳梨 - 5入',500.0000,5,2500.0000,'','',''),(11,7,2,3,'廖小白','【台灣風情】EZPACK 隨身斜背包，多功能口袋設計，讓你輕鬆出門！','斜背包 - B款式',550.0000,5,2750.0000,'2.0','產品有損壞，雖然客服處理了，但感覺購物體驗不好。',''),(12,8,12,24,'吳小蘭','【世界上重量最輕折傘 】UM slim 秒收輕便雨傘，讓你無負擔','輕便雨傘 - B款式',1200.0000,4,4800.0000,'','品質不錯',''),(13,8,6,13,'吳小蘭','【絕妙設計】ZLight MINi補光折疊穩定器，自拍必備良伴！','ZLight MINi補光折疊穩定器 - B套組',3500.0000,1,3500.0000,'','',''),(14,8,2,2,'吳小蘭','【台灣風情】EZPACK 隨身斜背包，多功能口袋設計，讓你輕鬆出門！','斜背包 - A款式',350.0000,5,1750.0000,'3.0','包裝破損，收到時有些失望，產品倒是正常。','抱歉讓您失望了，我們會改進包裝，確保未來的物流過程中不再出現這樣的問題。'),(15,10,9,19,'柯小智','探索神秘命運！奇幻狗狗塔羅牌，解讀未來之謎！','單純想贊助',1000.0000,1,1000.0000,'5.0','這款產品真的很不錯','非常感謝您的肯定，我們會繼續努力，提供更多優質產品！'),(16,10,9,19,'柯小智','探索神秘命運！奇幻狗狗塔羅牌，解讀未來之謎！','單純想贊助',1000.0000,2,2000.0000,'5.0','這款產品品質很好，做工精細，使用起來非常方便。非常推薦！','非常感謝您的推薦，我們很高興您喜歡這款產品，期待您再次光臨。'),(17,10,1,1,'柯小智','The All 100周年紀念【回憶重溫】音樂再現，穿越時光之牆！獨家合作：星宇樂團x陳藝、彩色西瓜樂團。','The All 100周年紀念【回憶重溫】',2400.0000,1,2400.0000,'3.0','用了一段時間後出現問題，感覺產品質量有待提高。','非常抱歉讓您遇到這個問題，請聯繫客服，我們會提供解決方案並改進產品質量。'),(18,10,9,16,'柯小智','探索神秘命運！奇幻狗狗塔羅牌，解讀未來之謎！','奇幻狗狗塔羅牌 - 柴犬套組',1000.0000,5,5000.0000,'2.0','產品描述與實物有些出入，感覺有點被誤導了，不是很滿意。','對不起給您帶來困擾，我們會重新審視產品描述，確保與實物一致，感謝您的反饋。'),(19,10,9,17,'柯小智','探索神秘命運！奇幻狗狗塔羅牌，解讀未來之謎！','奇幻狗狗塔羅牌 - 哈士奇套組',1000.0000,4,4000.0000,'5.0','非常實用，設計也很美觀，完全滿足我的需求。',''),(20,10,9,18,'柯小智','探索神秘命運！奇幻狗狗塔羅牌，解讀未來之謎！','奇幻狗狗塔羅牌 - 拉布拉多套組',1000.0000,3,3000.0000,'3.0','使用時感覺不太順手，設計有待改進。','感謝您的反饋，我們會仔細研究改進設計，讓使用體驗更加順暢。');
/*!40000 ALTER TABLE `tbl_SponsorRecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_member` (
  `tbl_member_id` int NOT NULL AUTO_INCREMENT,
  `tbl_name` varchar(45) NOT NULL,
  `tbl_email` varchar(255) NOT NULL,
  `tbl_address` varchar(255) NOT NULL,
  `tbl_cellphone_num` varchar(15) NOT NULL,
  PRIMARY KEY (`tbl_member_id`),
  UNIQUE KEY `email_UNIQUE` (`tbl_email`),
  UNIQUE KEY `cellphone_num_UNIQUE` (`tbl_cellphone_num`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_member`
--

LOCK TABLES `tbl_member` WRITE;
/*!40000 ALTER TABLE `tbl_member` DISABLE KEYS */;
INSERT INTO `tbl_member` VALUES (1,'李小明','in.consequat@yahoo.com','366 苗栗縣銅鑼鄉民權中路319號','0921003614'),(2,'王小新','adipiscing.enim.mi@outlook.com','600 嘉義市東區世賢八路24號','0988008346'),(3,'張小紅','nullam.velit@yahoo.com','325 桃園市龍潭區淮子埔七路29號','0922830125'),(4,'陳小玉','sed.auctor@hotmail.com','540 南投縣南投市三和六路1499號','0958351743'),(5,'林小青','sagittis.nullam@google.com','508 彰化縣和美鎮潭北路1500號','0912587773'),(6,'黃小剛','nec.leo.morbi@protonmail.com','711 臺南市歸仁區崙頂二街1111號','0960105109'),(7,'廖小白','sociosqu.ad@yahoo.com','411 臺中市太平區北田南路14號','0961749001'),(8,'吳小蘭','proin.non@protonmail.com','801 高雄市前金區自立九路18號','0928735721'),(9,'劉小波','arcu.vel.quam@hotmail.com','201 基隆市信義區義四路222號','0968169143'),(10,'柯小智','dui.quis.accumsan@google.com','622 嘉義縣大林鎮早知到街31號','0970691667');
/*!40000 ALTER TABLE `tbl_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_password`
--

DROP TABLE IF EXISTS `tbl_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_password` (
  `tbl_password_id` int NOT NULL AUTO_INCREMENT,
  `tbl_member_id_fk` int NOT NULL,
  `tbl_hashed_password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tbl_salt` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`tbl_password_id`),
  UNIQUE KEY `hshed_password_UNIQUE` (`tbl_hashed_password`),
  UNIQUE KEY `salt_UNIQUE` (`tbl_salt`),
  UNIQUE KEY `member_id_fk_UNIQUE` (`tbl_member_id_fk`),
  CONSTRAINT `fk_member_id_pwd` FOREIGN KEY (`tbl_member_id_fk`) REFERENCES `tbl_member` (`tbl_member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_password`
--

LOCK TABLES `tbl_password` WRITE;
/*!40000 ALTER TABLE `tbl_password` DISABLE KEYS */;
INSERT INTO `tbl_password` VALUES (1,1,'9d5ec65935ab2991386a2df50db27491','0oplfZ16tyLX'),(2,2,'37d3f919a7230c12a33ad33bb6a62940','7gB%z9Svg8EW'),(3,3,'d2898e8f01641dc2f1c7ae967f589764','JJQF0j%tkx3i'),(4,4,'6072444ce37a3e5e18db29c07d9bff2f','Rv$uGmL&C!%g'),(5,5,'58e537835456d27b4861bf1d0848c341','XcZg6Be^cU2y'),(6,6,'bad812356d04169c5231aca6dbf2e895','aZjy*GvZt@s*'),(7,7,'ce94f4cd7665791f28eb1b0339e1a146','j8tI5!wG88PM'),(8,8,'79f1c375a8045aae0647826d07cc6f77','n7UDOe0uspZk'),(9,9,'8a6b92d74b7c32075652a700e57a2bc7','wlmM33nAD@SR'),(10,10,'302b047e1bd5db87510915390368a5ac','&@^ODhk0MH&l');
/*!40000 ALTER TABLE `tbl_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_proposal`
--

DROP TABLE IF EXISTS `tbl_proposal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_proposal` (
  `tbl_proposal_id` int NOT NULL AUTO_INCREMENT,
  `tbl_member_id_fk` int DEFAULT NULL,
  `tbl_proposer_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tbl_proposal_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tbl_proposal_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tbl_category` enum('音樂','攝影','時尚','科技','教育','遊戲','飲食','地方創生','社會','藝術') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tbl_amount_raised` decimal(13,4) NOT NULL,
  `tbl_goal` decimal(13,4) NOT NULL,
  `tbl_proposal_status` enum('1','2','3','4') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tbl_view_num` int NOT NULL,
  `tbl_start_date` date NOT NULL,
  `tbl_due_date` date NOT NULL,
  PRIMARY KEY (`tbl_proposal_id`),
  UNIQUE KEY `proposal_title_UNIQUE` (`tbl_proposal_title`),
  KEY `member_id_fk_idx` (`tbl_member_id_fk`),
  CONSTRAINT `fk_member_id_proposal` FOREIGN KEY (`tbl_member_id_fk`) REFERENCES `tbl_member` (`tbl_member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proposal`
--

LOCK TABLES `tbl_proposal` WRITE;
/*!40000 ALTER TABLE `tbl_proposal` DISABLE KEYS */;
INSERT INTO `tbl_proposal` VALUES (1,1,'李小明','The All 100周年紀念【回憶重溫】音樂再現，穿越時光之牆！獨家合作：星宇樂團x陳藝、彩色西瓜樂團。','在這場特別的百年紀念活動中，我們將透過星宇樂團和彩色西瓜樂團的精彩表演，帶您穿越時光，重溫過去的音樂經典。這將是一場難忘的音樂之旅，讓我們一起共同回憶、感受、並創造新的回憶！','音樂',9600.0000,100000.0000,'3',43,'2024-01-16','2024-02-16'),(2,2,'王小新','【台灣風情】EZPACK 隨身斜背包，多功能口袋設計，讓你輕鬆出門！','EZPACK 隨身斜背包是您出門的最佳選擇！不僅設計時尚，而且充滿台灣風情。多功能口袋設計，讓您可以輕鬆攜帶所需物品，無論是日常生活還是旅行，都能夠輕鬆自在！','時尚',4500.0000,5000.0000,'2',1150,'2024-04-30','2024-05-30'),(3,2,'王小新','持續支持性別平等！「共融」紙藝便籤夾，讓你與性別平等同行！','我們堅定地支持性別平等，並致力於打破性別界限。這款「共融」紙藝便籤夾不僅實用，更是一種對性別平等的呼籲和支持。讓我們攜手共同建立一個更加公平、平等的社會！','藝術',2250.0000,30000.0000,'2',8,'2024-04-17','2024-05-17'),(4,2,'王小新','【令人驚艷】台灣新鳳梨品種：芒果鳳梨，帶給你獨特的口感體驗！','芒果鳳梨，這種全新的台灣特色水果，結合了芒果的香甜和鳳梨的清爽，帶給您絕佳的口感體驗！讓我們一起享受這份令人驚艷的美味！','飲食',4300.0000,2000.0000,'2',236,'2024-03-21','2024-05-21'),(5,4,'陳小玉','鋼鼓音樂熱潮！加入Formosa Beats，成為鋼鼓樂手！','Formosa Beats 是您成為鋼鼓樂手的最佳選擇！我們提供專業的鋼鼓教學和表演，讓您在音樂的世界中展現自己的才華，一起享受鋼鼓音樂的熱潮！','音樂',14400.0000,35000.0000,'2',251,'2024-05-01','2024-06-01'),(6,6,'黃小剛','【絕妙設計】ZLight MINi補光折疊穩定器，自拍必備良伴！','ZLight MINi補光折疊穩定器，是您自拍時的最佳助手！絕妙的設計和高品質的補光效果，讓您在自拍時輕鬆展現最佳狀態，捕捉每一個美好時刻！ZLight MINi補光折疊穩定器，是您自拍時的最佳助手！絕妙的設計和高品質的補光效果，讓您在自拍時輕鬆展現最佳狀態，捕捉每一個美好時刻！','攝影',10500.0000,10000.0000,'3',5893,'2024-01-06','2024-03-06'),(7,6,'黃小剛','日系可愛風格電動麻將組','讓我們一起來享受日系可愛風格的電動麻將組帶來的樂趣吧！這款電動麻將組不僅外觀可愛，而且操作簡','遊戲',10000.0000,300000.0000,'2',31,'2024-05-03','2024-06-03'),(8,8,'吳小蘭','一機搞定木工創意！DIY木工四合一工具，享受手作樂趣！','您是否喜歡親手製作木工作品？現在有了DIY木工四合一工具，您可以輕鬆應對各種木工創意！無論是裁切、鑽床、砂光還是車輪，都能在這一款工具上輕松實現！讓我們一起享受手作樂趣，創造出屬於自己的精美木工作品！','教育',0.0000,100000.0000,'1',0,'2024-07-04','2024-08-04'),(9,8,'吳小蘭','探索神秘命運！奇幻狗狗塔羅牌，解讀未來之謎！','每個人心中都有著一份對未來的好奇與渴望，而奇幻狗狗塔羅牌將為您打開神秘的命運之門！透過這套獨特的塔羅牌，您將能夠解讀未來的種種謎團，探索自己的命運之路。讓我們一起勇敢地面對未來，探索命運的奧秘！','藝術',19000.0000,20000.0000,'2',57,'2024-04-18','2024-06-18'),(10,9,'劉小波','weye美妝專業烘乾機，讓你的化妝品保持乾爽清潔！，拒絕刷菌上臉！','每天使用的化妝品是否也讓您感到困擾？現在有了weye美妝專業烘乾機，讓您的化妝品保持乾爽清潔，徹底拒絕刷菌上臉的煩惱！這款烘乾機擁有UV紫外線滅菌功能，能夠有效殺滅化妝品中的細菌，讓您的皮膚更加健康，化妝效果更加持久！','科技',0.0000,30000.0000,'4',3148,'2024-02-26','2024-04-26'),(11,NULL,NULL,'【潮流精品】SWAGPACK 斜背包，時尚設計，展現個人風格！','您是否渴望擁有一款時尚又實用的斜背包？SWAGPACK 斜背包將會是您的最佳選擇！時尚設計，展現個人風格，無論是日常穿搭還是旅行出行，都能夠襯托出您獨特的品味和風格！讓我們一起成為街頭的時尚潮流！','時尚',450.0000,8000.0000,'4',124,'2024-04-10','2024-05-10'),(12,10,'柯小智','【世界上重量最輕折傘 】UM slim 秒收輕便雨傘，讓你無負擔','UM slim 秒收輕便雨傘不僅是一件抗風雨的實用工具，更是一種生活方式的象徵。它的獨特之處在於它的極輕極薄設計，成為世界上重量最輕的折傘之一。這款雨傘採用先進的材料和工藝，使其重量極輕，方便攜帶，無論是放在包包裡、手提袋還是口袋中，都絲毫不會增添負擔。其獨特的秒收設計讓您在下雨時迅速打開，隨時為您提供防雨保護，同時收起來也同樣輕鬆迅速。UM slim 雨傘的便攜性和實用性將讓您在雨天的城市生活中輕鬆自在，無懼風雨。','時尚',8400.0000,10000.0000,'4',825,'2024-02-01','2024-04-01');
/*!40000 ALTER TABLE `tbl_proposal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_111403502'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateProposalOption` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`111403502`@`192.168.56.1` PROCEDURE `sp_CreateProposalOption`(
    IN proposal_option_id INT,
    IN proposal_id INT,
    IN proposal_option_name VARCHAR(100),
    IN price DECIMAL(13,4)
)
BEGIN
    DECLARE proposal_title VARCHAR(100);
    DECLARE affected_row_num INT DEFAULT 0;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        -- 異常狀況 (創建失敗)
        SET affected_row_num = 0;
        SELECT affected_row_num;
    END;

    -- 找 proposal_id 對應的 proposal_title
    SELECT tbl_proposal_title INTO proposal_title
    FROM tbl_proposal
    WHERE proposal_id = tbl_proposal_id;

    -- 找不到對應的 proposal_title
    IF proposal_title IS NULL THEN
        SET affected_row_num = 0;
    ELSE
        INSERT INTO tbl_ProposalOption (tbl_ProposalOption_id, tbl_proposal_id_fk, tbl_proposal_title, tbl_proposal_option_name, tbl_price)
        VALUES (proposal_option_id, proposal_id, proposal_title, proposal_option_name, price);

        SET affected_row_num = ROW_COUNT();
    END IF;
    
    SELECT affected_row_num;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateSponsorRecord` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`111403502`@`192.168.56.1` PROCEDURE `sp_CreateSponsorRecord`(
    IN sponsor_record_id INT,
    IN sponsor_id INT,
    IN proposal_option_id INT,
    IN purchase_volume INT
)
BEGIN
    DECLARE proposal_id INT;
    DECLARE sponsor_name VARCHAR(45);
    DECLARE proposal_title VARCHAR(100);
    DECLARE proposal_option_name VARCHAR(100);
    DECLARE price DECIMAL(13,4);
    DECLARE price_volume DECIMAL(13,4);
    DECLARE current_purchase_volume INT;
    DECLARE affected_row_num INT DEFAULT 0;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
        SET affected_row_num = 0;
        SELECT affected_row_num;
    END;

    START TRANSACTION;

    SELECT tbl_proposal_id_fk INTO proposal_id 
    FROM tbl_ProposalOption 
    WHERE tbl_ProposalOption_id = proposal_option_id;

    SELECT tbl_name INTO sponsor_name 
    FROM tbl_member
    WHERE tbl_member_id = sponsor_id;

    SELECT tbl_proposal_title INTO proposal_title 
    FROM tbl_proposal 
    WHERE tbl_proposal_id = proposal_id;

    SELECT tbl_proposal_option_name, tbl_price INTO proposal_option_name, price 
    FROM tbl_ProposalOption 
    WHERE tbl_ProposalOption_id = proposal_option_id;

    -- 計算購買總量
    SELECT COALESCE(SUM(tbl_purchase_volume), 0) INTO current_purchase_volume
    FROM tbl_SponsorRecord
    WHERE tbl_sponsor_id_fk = sponsor_id
    AND tbl_ProposalOption_id_fk = proposal_option_id;

    -- 檢查是否 > 5
    IF current_purchase_volume + purchase_volume > 5 THEN
        SET affected_row_num = 0;
        ROLLBACK;
    ELSE
        SET price_volume = price * purchase_volume;

        -- 加入紀錄
        INSERT INTO tbl_SponsorRecord (
            tbl_SponsorRecord_id, tbl_sponsor_id_fk, tbl_ProposalOption_id_fk, tbl_proposal_id_fk, tbl_sponsor_name, tbl_proposal_title, tbl_proposal_option_name, tbl_price, tbl_purchase_volume, tbl_price_volume
        ) VALUES (
            sponsor_record_id, sponsor_id, proposal_option_id, proposal_id, sponsor_name, proposal_title, proposal_option_name, price, purchase_volume, price_volume
        );

        SET affected_row_num = ROW_COUNT();

        COMMIT;
    END IF;
    
    SELECT affected_row_num;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DeleteMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`111403502`@`192.168.56.1` PROCEDURE `sp_DeleteMember`(
    IN member_id INT
)
BEGIN
    DECLARE status_code INT DEFAULT 2;
    DECLARE name VARCHAR(45);
    DECLARE member_exists INT;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
        SET status_code = 2;
    END;
    
    -- 檢查輸入的 member_id 是否存在
    SELECT COUNT(*) INTO member_exists
    FROM tbl_member
    WHERE tbl_member_id = member_id;

    IF member_exists = 0 THEN
        SET status_code = 2;
        SELECT status_code, member_id, NULL AS name;
    END IF;

    START TRANSACTION;

    SELECT tbl_name INTO name
    FROM tbl_member
    WHERE tbl_member_id = member_id;

    -- 檢查是否有 ongoing 的提案
    IF NOT EXISTS(
        SELECT *
        FROM tbl_proposal
        WHERE tbl_member_id_fk = member_id AND tbl_proposal_status = 2
    ) THEN
        -- 刪除 tbl_proposal 中該會員的 id 及名字
        UPDATE tbl_proposal
        SET tbl_member_id_fk = NULL, tbl_proposer_name = NULL
        WHERE tbl_member_id_fk = member_id;
		
        -- 刪除追蹤紀錄
        DELETE FROM tbl_ProposalFollowing WHERE tbl_member_id_fk = member_id;

        -- 檢查是否有贊助紀錄
        IF EXISTS (SELECT 1 FROM tbl_SponsorRecord WHERE tbl_sponsor_id_fk = member_id) THEN
            -- 刪除 tbl_SponsorRecord 中該會員的 id 及名字
            UPDATE tbl_SponsorRecord
            SET tbl_sponsor_id_fk = NULL, tbl_sponsor_name = NULL
            WHERE tbl_sponsor_id_fk = member_id;
        END IF;

        -- 刪除會員
        DELETE FROM tbl_password WHERE tbl_member_id_fk = member_id;
        DELETE FROM tbl_member WHERE tbl_member_id = member_id;
        
        -- 檢查是否刪除成功
        IF ROW_COUNT() > 0 THEN
            SET status_code = 1;
            COMMIT;
        ELSE
            ROLLBACK;
            SET status_code = 2;
        END IF;
    ELSE
        SET status_code = 2;
        ROLLBACK;
    END IF;
    
    SELECT status_code, member_id, name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetFollowedProposalsByMember` */;
ALTER DATABASE `db_111403502` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`111403502`@`192.168.56.1` PROCEDURE `sp_GetFollowedProposalsByMember`(
    IN member_id INT
)
BEGIN
    SELECT 
        pf.tbl_member_id_fk AS member_id, 
        pf.tbl_proposal_id_fk AS proposal_id, 
        pf.tbl_proposal_title AS proposal_title, 
        p.tbl_amount_raised AS amount_raised, 
        p.tbl_goal AS goal
    FROM 
        tbl_ProposalFollowing pf
    INNER JOIN 
        tbl_proposal p 
    ON 
        pf.tbl_proposal_id_fk = p.tbl_proposal_id
    WHERE 
        pf.tbl_member_id_fk = member_id 
        AND p.tbl_proposal_status = 2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `db_111403502` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetOngoingProposalOptionbyRating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`111403502`@`192.168.56.1` PROCEDURE `sp_GetOngoingProposalOptionbyRating`(
    IN rating INT
)
BEGIN
    SELECT 
        sr.tbl_proposal_id_fk AS proposal_id,
        sr.tbl_proposal_title AS proposal_title,
        sr.tbl_proposal_option_name AS proposal_option_name,
        CAST(AVG(sr.tbl_rating) AS DECIMAL(3, 2)) AS rating_avg
    FROM 
        tbl_SponsorRecord sr
    INNER JOIN 
        tbl_ProposalOption po ON sr.tbl_ProposalOption_id_fk = po.tbl_ProposalOption_id
    INNER JOIN 
        tbl_proposal p ON po.tbl_proposal_id_fk = p.tbl_proposal_id
    WHERE 
        p.tbl_proposal_status = 2
    GROUP BY 
        sr.tbl_proposal_id_fk, sr.tbl_proposal_title, sr.tbl_proposal_option_name
    HAVING 
        rating_avg >= rating
    ORDER BY 
        rating_avg DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetProposalByCompletionRate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`111403502`@`192.168.56.1` PROCEDURE `sp_GetProposalByCompletionRate`(
    IN ratio FLOAT
)
BEGIN
    SELECT 
        tbl_proposal_id AS proposal_id, 
        tbl_proposal_title AS proposal_title, 
        tbl_amount_raised AS amount_raised, 
        tbl_goal AS goal, 
        CAST(ROUND(tbl_amount_raised / tbl_goal, 2) AS DECIMAL(6, 2)) AS ratio
    FROM 
        tbl_proposal
    WHERE 
        (tbl_amount_raised / tbl_goal) >= ratio
    ORDER BY 
        CAST(ROUND(tbl_amount_raised / tbl_goal, 2) AS DECIMAL(6, 2)) DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetRecommendedProposals` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`111403502`@`192.168.56.1` PROCEDURE `sp_GetRecommendedProposals`(
    IN member_id INT
)
BEGIN
    -- 建立臨時表儲存推薦的提案
    CREATE TEMPORARY TABLE RecommendedProposals (
        proposal_id INT,
        proposal_title VARCHAR(100),
        status INT,
        view_num INT
    );

    -- 找出 member_id 贊助過的所有提案
    CREATE TEMPORARY TABLE MemberProposals AS
    SELECT DISTINCT tbl_proposal_id_Fk
    FROM tbl_SponsorRecord
    WHERE tbl_sponsor_id_fk = member_id;

    -- 找出其他贊助相同提案的會員
    CREATE TEMPORARY TABLE OtherSponsors AS
    SELECT DISTINCT sr2.tbl_sponsor_id_fk
    FROM tbl_SponsorRecord sr1
    INNER JOIN tbl_SponsorRecord sr2 ON sr1.tbl_proposal_id_Fk = sr2.tbl_proposal_id_Fk
    WHERE sr1.tbl_sponsor_id_fk = member_id
      AND sr1.tbl_sponsor_id_fk <> sr2.tbl_sponsor_id_fk;

    -- 找出其他會員贊助過但 member_id 還沒贊助過的提案
    INSERT INTO RecommendedProposals (proposal_id, proposal_title, status, view_num)
    SELECT DISTINCT p.tbl_proposal_id, p.tbl_proposal_title, p.tbl_proposal_status, p.tbl_view_num
    FROM tbl_SponsorRecord sr
    INNER JOIN tbl_proposal p ON sr.tbl_proposal_id_Fk = p.tbl_proposal_id
    WHERE sr.tbl_sponsor_id_fk IN (SELECT tbl_sponsor_id_fk FROM OtherSponsors)
      AND p.tbl_proposal_status = 2
      AND p.tbl_proposal_id NOT IN (SELECT tbl_proposal_id_Fk FROM MemberProposals);

    -- 不符合條件 a、b、c
    -- 輸出點閱率最高的前五項
    IF (SELECT COUNT(*) FROM RecommendedProposals) = 0 THEN
        INSERT INTO RecommendedProposals (proposal_id, proposal_title, status, view_num)
        SELECT tbl_proposal_id, tbl_proposal_title, tbl_proposal_status, tbl_view_num
        FROM tbl_proposal
        WHERE tbl_proposal_status = 2
        ORDER BY tbl_view_num DESC
        LIMIT 5;
    END IF;

    SELECT proposal_id, proposal_title, status, view_num
    FROM RecommendedProposals;

    DROP TEMPORARY TABLE IF EXISTS RecommendedProposals;
    DROP TEMPORARY TABLE IF EXISTS MemberProposals;
    DROP TEMPORARY TABLE IF EXISTS OtherSponsors;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetUnrepliedReviews` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`111403502`@`192.168.56.1` PROCEDURE `sp_GetUnrepliedReviews`(
    IN member_id INT
)
BEGIN
    -- 找還沒被回覆的評論
    SELECT 
        p.tbl_member_id_fk AS member_id, 
        p.tbl_proposal_id AS proposal_id, 
        p.tbl_proposal_title AS proposal_title, 
        sr.tbl_SponsorRecord_id AS review_id, 
        sr.tbl_review AS review, 
        sr.tbl_response AS response
	FROM 
        tbl_SponsorRecord sr
    INNER JOIN 
        tbl_proposal p ON sr.tbl_proposal_id_fk = p.tbl_proposal_id
    WHERE 
        p.tbl_member_id_fk = member_id 
        AND sr.tbl_review IS NOT NULL 
        AND (sr.tbl_response IS NULL OR sr.tbl_response = '');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`111403502`@`192.168.56.1` PROCEDURE `sp_Login`(
    IN email VARCHAR(255),
    IN hashedPwd CHAR(32)
)
BEGIN
    DECLARE member_exist INT;
    DECLARE pwd_match INT;
    DECLARE status_code INT ;

    -- 檢查會員是否存在
    SELECT COUNT(*) INTO member_exist FROM tbl_member WHERE tbl_email = email;

    IF member_exist = 0 THEN
        SET status_code = 3;  -- 登入失敗 (會員不存在)
    ELSE
        -- 檢查密碼是否正確
        SELECT COUNT(*) INTO pwd_match 
        FROM tbl_password 
        WHERE tbl_member_id_fk = (SELECT tbl_member_id FROM tbl_member WHERE tbl_email = email) 
        AND tbl_hashed_password = hashedPwd;

        IF pwd_match = 0 THEN
            SET status_code = 2;  -- 登入失敗 (會員存在但密碼錯誤)
        ELSE
            SET status_code = 1;  -- 登入成功
        END IF;
    END IF;
    
    SELECT status_code;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_RegisterMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`111403502`@`192.168.56.1` PROCEDURE `sp_RegisterMember`(
	IN email VARCHAR(255),
    IN hashedPwd CHAR(32),
    IN salt CHAR(12),
    IN name VARCHAR(100),
    IN address VARCHAR(255),
    IN cellphone_number VARCHAR(15)
)
BEGIN
    DECLARE existing_email INT;
    DECLARE status_code INT;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		ROLLBACK;
		SET status_code = 3;  -- 其他錯誤(ex. unique的資料重複填)
        SELECT status_code;
	END;
        
	START TRANSACTION;
        
	IF email = '' OR
	   hashedPwd = '' OR
	   salt = '' OR
	   name = '' OR
	   address = '' OR
	   cellphone_number = '' THEN
		SET status_code = 3;  -- 其他錯誤(輸入為空值)
	ELSE
    
        SELECT COUNT(*) INTO existing_email FROM tbl_member WHERE tbl_email = email;

        IF existing_email > 0 THEN
            SET status_code = 2;  -- 會員Email已存在
        ELSE
            -- 加入新會員資料
            INSERT INTO tbl_member (tbl_name, tbl_email, tbl_address, tbl_cellphone_num)
            VALUES (name, email, address, cellphone_number);

            IF ROW_COUNT() > 0 THEN
                -- 新會員 ID
                SET @new_member_id = LAST_INSERT_ID();

                -- 加入密碼資料
                INSERT INTO tbl_password (tbl_member_id_fk, tbl_hashed_password, tbl_salt)
                VALUES (@new_member_id, hashedPwd, salt);

                IF ROW_COUNT() > 0 THEN
                    SET status_code = 1;  -- 註冊成功
                ELSE
                    SET status_code = 3;  -- 其他錯誤
                    ROLLBACK;
                END IF;
            ELSE
                SET status_code = 3;  -- 其他錯誤
                ROLLBACK;
            END IF;
        END IF;

        IF status_code = 1 THEN
            COMMIT;
        ELSE
            ROLLBACK;
        END IF;
    END IF;
    
    SELECT status_code;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdateProposalStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`111403502`@`192.168.56.1` PROCEDURE `sp_UpdateProposalStatus`(
	IN proposal_id INT,
    IN status INT
)
BEGIN
    DECLARE current_status INT;
    DECLARE affected_row_num INT;

    -- 取得現在狀態
    SELECT tbl_proposal_status INTO current_status
    FROM tbl_proposal
    WHERE tbl_proposal_id = proposal_id;

    IF current_status IS NULL THEN
        SET affected_row_num = 0;
    ELSE

		-- 更新狀態限制
		IF (current_status = 1 AND status IN (2, 4)) OR
		   (current_status = 2 AND status = 3) OR
		   (current_status = 3 AND status = 4) OR
		   (current_status IN (1, 3) AND status = 4) THEN
			UPDATE tbl_proposal
			
			SET tbl_proposal_status = status
			WHERE tbl_proposal_id = proposal_id;

			SET affected_row_num = ROW_COUNT();
		ELSE
			-- 
			SET affected_row_num = 0;
		END IF;
	END IF;
    
    SELECT affected_row_num;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdatePwd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`111403502`@`192.168.56.1` PROCEDURE `sp_UpdatePwd`(
    IN member_id INT,
    IN original_hashPwd CHAR(32),
    IN hashedPwd CHAR(32),
    IN salt CHAR(12)
)
BEGIN
    DECLARE original_pwd_match INT;
	DECLARE status_code INT;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        SET status_code = 3;  -- 其他錯誤(異常狀況)
        SELECT status_code;
    END;

    START TRANSACTION;
    
	IF member_id = '' OR
	   original_hashPwd = '' OR
	   hashedPwd = '' OR
	   salt = '' THEN
		SET status_code = 3;  -- 其他錯誤(輸入為空值)
	ELSE

		-- 檢查是否是正確的原始密碼
		SELECT COUNT(*) INTO original_pwd_match 
		FROM tbl_password 
		WHERE tbl_member_id_fk = member_id 
		AND tbl_hashed_password = original_hashPwd;

		IF original_pwd_match = 0 THEN
			SET status_code = 2;  -- 修改失敗，錯誤的原密碼
		ELSE
			IF hashedPwd = original_hashPwd THEN
				SET status_code = 3;
			ELSE
				-- 更新密碼
				UPDATE tbl_password 
				SET tbl_hashed_password = hashedPwd, tbl_salt = salt
				WHERE tbl_member_id_fk = member_id;

				IF ROW_COUNT() > 0 THEN
					SET status_code = 1;  -- 修改成功
				ELSE
					SET status_code = 3;  -- 其他錯誤
				END IF;
			END IF;
        END IF;
    END IF;
    
    IF status_code = 1 THEN
        COMMIT;
    ELSE
        ROLLBACK;
    END IF;
    
    SELECT status_code;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-10 20:18:21
