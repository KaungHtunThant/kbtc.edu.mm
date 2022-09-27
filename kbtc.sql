-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: kbtc
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (2,'Editors'),(1,'Moderators');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (4,1,1),(5,1,2),(6,1,3),(10,1,5),(11,1,6),(12,1,7),(14,1,9),(1,2,1),(2,2,2),(3,2,3),(7,2,5),(8,2,6),(9,2,7),(13,2,9);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add image',2,'add_image'),(2,'Can change image',2,'change_image'),(3,'Can delete image',2,'delete_image'),(4,'Can choose image',2,'choose_image'),(5,'Can add document',3,'add_document'),(6,'Can change document',3,'change_document'),(7,'Can delete document',3,'delete_document'),(8,'Can choose document',3,'choose_document'),(9,'Can access Wagtail admin',4,'access_admin'),(10,'Can add Academic Degree',6,'add_academic'),(11,'Can change Academic Degree',6,'change_academic'),(12,'Can delete Academic Degree',6,'delete_academic'),(13,'Can view Academic Degree',6,'view_academic'),(14,'Can add Campus',7,'add_campus'),(15,'Can change Campus',7,'change_campus'),(16,'Can delete Campus',7,'delete_campus'),(17,'Can view Campus',7,'view_campus'),(18,'Can add Course',8,'add_course'),(19,'Can change Course',8,'change_course'),(20,'Can delete Course',8,'delete_course'),(21,'Can view Course',8,'view_course'),(22,'Can add Level',9,'add_levels'),(23,'Can change Level',9,'change_levels'),(24,'Can delete Level',9,'delete_levels'),(25,'Can view Level',9,'view_levels'),(26,'Can add School',10,'add_schoolinfo'),(27,'Can change School',10,'change_schoolinfo'),(28,'Can delete School',10,'delete_schoolinfo'),(29,'Can view School',10,'view_schoolinfo'),(30,'Can add Unit',11,'add_unit'),(31,'Can change Unit',11,'change_unit'),(32,'Can delete Unit',11,'delete_unit'),(33,'Can view Unit',11,'view_unit'),(34,'Can add unit document relation',12,'add_unitdocumentrelation'),(35,'Can change unit document relation',12,'change_unitdocumentrelation'),(36,'Can delete unit document relation',12,'delete_unitdocumentrelation'),(37,'Can view unit document relation',12,'view_unitdocumentrelation'),(38,'Can add school campus relation',13,'add_schoolcampusrelation'),(39,'Can change school campus relation',13,'change_schoolcampusrelation'),(40,'Can delete school campus relation',13,'delete_schoolcampusrelation'),(41,'Can view school campus relation',13,'view_schoolcampusrelation'),(42,'Can add Gallery',14,'add_gallery'),(43,'Can change Gallery',14,'change_gallery'),(44,'Can delete Gallery',14,'delete_gallery'),(45,'Can view Gallery',14,'view_gallery'),(46,'Can add course unit relation',15,'add_courseunitrelation'),(47,'Can change course unit relation',15,'change_courseunitrelation'),(48,'Can delete course unit relation',15,'delete_courseunitrelation'),(49,'Can view course unit relation',15,'view_courseunitrelation'),(50,'Can add course document relation',16,'add_coursedocumentrelation'),(51,'Can change course document relation',16,'change_coursedocumentrelation'),(52,'Can delete course document relation',16,'delete_coursedocumentrelation'),(53,'Can view course document relation',16,'view_coursedocumentrelation'),(54,'Can add assessment relation',17,'add_assessmentrelation'),(55,'Can change assessment relation',17,'change_assessmentrelation'),(56,'Can delete assessment relation',17,'delete_assessmentrelation'),(57,'Can view assessment relation',17,'view_assessmentrelation'),(58,'Can add academic course relation',18,'add_academiccourserelation'),(59,'Can change academic course relation',18,'change_academiccourserelation'),(60,'Can delete academic course relation',18,'delete_academiccourserelation'),(61,'Can view academic course relation',18,'view_academiccourserelation'),(62,'Can add form submission',19,'add_formsubmission'),(63,'Can change form submission',19,'change_formsubmission'),(64,'Can delete form submission',19,'delete_formsubmission'),(65,'Can view form submission',19,'view_formsubmission'),(66,'Can add redirect',20,'add_redirect'),(67,'Can change redirect',20,'change_redirect'),(68,'Can delete redirect',20,'delete_redirect'),(69,'Can view redirect',20,'view_redirect'),(70,'Can add embed',21,'add_embed'),(71,'Can change embed',21,'change_embed'),(72,'Can delete embed',21,'delete_embed'),(73,'Can view embed',21,'view_embed'),(74,'Can add user profile',22,'add_userprofile'),(75,'Can change user profile',22,'change_userprofile'),(76,'Can delete user profile',22,'delete_userprofile'),(77,'Can view user profile',22,'view_userprofile'),(78,'Can view document',3,'view_document'),(79,'Can add uploaded document',23,'add_uploadeddocument'),(80,'Can change uploaded document',23,'change_uploadeddocument'),(81,'Can delete uploaded document',23,'delete_uploadeddocument'),(82,'Can view uploaded document',23,'view_uploadeddocument'),(83,'Can view image',2,'view_image'),(84,'Can add rendition',24,'add_rendition'),(85,'Can change rendition',24,'change_rendition'),(86,'Can delete rendition',24,'delete_rendition'),(87,'Can view rendition',24,'view_rendition'),(88,'Can add uploaded image',25,'add_uploadedimage'),(89,'Can change uploaded image',25,'change_uploadedimage'),(90,'Can delete uploaded image',25,'delete_uploadedimage'),(91,'Can view uploaded image',25,'view_uploadedimage'),(92,'Can add query',26,'add_query'),(93,'Can change query',26,'change_query'),(94,'Can delete query',26,'delete_query'),(95,'Can view query',26,'view_query'),(96,'Can add Query Daily Hits',27,'add_querydailyhits'),(97,'Can change Query Daily Hits',27,'change_querydailyhits'),(98,'Can delete Query Daily Hits',27,'delete_querydailyhits'),(99,'Can view Query Daily Hits',27,'view_querydailyhits'),(100,'Can add page',1,'add_page'),(101,'Can change page',1,'change_page'),(102,'Can delete page',1,'delete_page'),(103,'Can view page',1,'view_page'),(104,'Can add group page permission',28,'add_grouppagepermission'),(105,'Can change group page permission',28,'change_grouppagepermission'),(106,'Can delete group page permission',28,'delete_grouppagepermission'),(107,'Can view group page permission',28,'view_grouppagepermission'),(108,'Can add page revision',29,'add_pagerevision'),(109,'Can change page revision',29,'change_pagerevision'),(110,'Can delete page revision',29,'delete_pagerevision'),(111,'Can view page revision',29,'view_pagerevision'),(112,'Can add page view restriction',30,'add_pageviewrestriction'),(113,'Can change page view restriction',30,'change_pageviewrestriction'),(114,'Can delete page view restriction',30,'delete_pageviewrestriction'),(115,'Can view page view restriction',30,'view_pageviewrestriction'),(116,'Can add site',31,'add_site'),(117,'Can change site',31,'change_site'),(118,'Can delete site',31,'delete_site'),(119,'Can view site',31,'view_site'),(120,'Can add collection',32,'add_collection'),(121,'Can change collection',32,'change_collection'),(122,'Can delete collection',32,'delete_collection'),(123,'Can view collection',32,'view_collection'),(124,'Can add group collection permission',33,'add_groupcollectionpermission'),(125,'Can change group collection permission',33,'change_groupcollectionpermission'),(126,'Can delete group collection permission',33,'delete_groupcollectionpermission'),(127,'Can view group collection permission',33,'view_groupcollectionpermission'),(128,'Can add collection view restriction',34,'add_collectionviewrestriction'),(129,'Can change collection view restriction',34,'change_collectionviewrestriction'),(130,'Can delete collection view restriction',34,'delete_collectionviewrestriction'),(131,'Can view collection view restriction',34,'view_collectionviewrestriction'),(132,'Can add task',35,'add_task'),(133,'Can change task',35,'change_task'),(134,'Can delete task',35,'delete_task'),(135,'Can view task',35,'view_task'),(136,'Can add Task state',36,'add_taskstate'),(137,'Can change Task state',36,'change_taskstate'),(138,'Can delete Task state',36,'delete_taskstate'),(139,'Can view Task state',36,'view_taskstate'),(140,'Can add workflow',37,'add_workflow'),(141,'Can change workflow',37,'change_workflow'),(142,'Can delete workflow',37,'delete_workflow'),(143,'Can view workflow',37,'view_workflow'),(144,'Can add Group approval task',5,'add_groupapprovaltask'),(145,'Can change Group approval task',5,'change_groupapprovaltask'),(146,'Can delete Group approval task',5,'delete_groupapprovaltask'),(147,'Can view Group approval task',5,'view_groupapprovaltask'),(148,'Can add Workflow state',38,'add_workflowstate'),(149,'Can change Workflow state',38,'change_workflowstate'),(150,'Can delete Workflow state',38,'delete_workflowstate'),(151,'Can view Workflow state',38,'view_workflowstate'),(152,'Can add workflow page',39,'add_workflowpage'),(153,'Can change workflow page',39,'change_workflowpage'),(154,'Can delete workflow page',39,'delete_workflowpage'),(155,'Can view workflow page',39,'view_workflowpage'),(156,'Can add workflow task order',40,'add_workflowtask'),(157,'Can change workflow task order',40,'change_workflowtask'),(158,'Can delete workflow task order',40,'delete_workflowtask'),(159,'Can view workflow task order',40,'view_workflowtask'),(160,'Can add page log entry',41,'add_pagelogentry'),(161,'Can change page log entry',41,'change_pagelogentry'),(162,'Can delete page log entry',41,'delete_pagelogentry'),(163,'Can view page log entry',41,'view_pagelogentry'),(164,'Can add locale',42,'add_locale'),(165,'Can change locale',42,'change_locale'),(166,'Can delete locale',42,'delete_locale'),(167,'Can view locale',42,'view_locale'),(168,'Can add comment',43,'add_comment'),(169,'Can change comment',43,'change_comment'),(170,'Can delete comment',43,'delete_comment'),(171,'Can view comment',43,'view_comment'),(172,'Can add comment reply',44,'add_commentreply'),(173,'Can change comment reply',44,'change_commentreply'),(174,'Can delete comment reply',44,'delete_commentreply'),(175,'Can view comment reply',44,'view_commentreply'),(176,'Can add page subscription',45,'add_pagesubscription'),(177,'Can change page subscription',45,'change_pagesubscription'),(178,'Can delete page subscription',45,'delete_pagesubscription'),(179,'Can view page subscription',45,'view_pagesubscription'),(180,'Can add tag',46,'add_tag'),(181,'Can change tag',46,'change_tag'),(182,'Can delete tag',46,'delete_tag'),(183,'Can view tag',46,'view_tag'),(184,'Can add tagged item',47,'add_taggeditem'),(185,'Can change tagged item',47,'change_taggeditem'),(186,'Can delete tagged item',47,'delete_taggeditem'),(187,'Can view tagged item',47,'view_taggeditem'),(188,'Can add log entry',48,'add_logentry'),(189,'Can change log entry',48,'change_logentry'),(190,'Can delete log entry',48,'delete_logentry'),(191,'Can view log entry',48,'view_logentry'),(192,'Can add permission',49,'add_permission'),(193,'Can change permission',49,'change_permission'),(194,'Can delete permission',49,'delete_permission'),(195,'Can view permission',49,'view_permission'),(196,'Can add group',50,'add_group'),(197,'Can change group',50,'change_group'),(198,'Can delete group',50,'delete_group'),(199,'Can view group',50,'view_group'),(200,'Can add user',51,'add_user'),(201,'Can change user',51,'change_user'),(202,'Can delete user',51,'delete_user'),(203,'Can view user',51,'view_user'),(204,'Can add content type',52,'add_contenttype'),(205,'Can change content type',52,'change_contenttype'),(206,'Can delete content type',52,'delete_contenttype'),(207,'Can view content type',52,'view_contenttype'),(208,'Can add session',53,'add_session'),(209,'Can change session',53,'change_session'),(210,'Can delete session',53,'delete_session'),(211,'Can view session',53,'view_session'),(212,'Can add Level',54,'add_faq'),(213,'Can change Level',54,'change_faq'),(214,'Can delete Level',54,'delete_faq'),(215,'Can view Level',54,'view_faq');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (3,'pbkdf2_sha256$260000$KcSA272I0BWHtMYqVG2UuX$iRQ0d2ScyZrNiwty17xuOmYO6tgqvGFXgGcTtVbGcs4=','2022-08-06 04:20:17.802314',1,'eugen3199','','','eugenes11416@gmail.com',1,1,'2022-07-25 19:33:53.863072'),(4,'pbkdf2_sha256$260000$TSLvBiDOTwJGjxAmKyDcYl$JbDjWarVFnvm5CeZfvmaK0sbVsAjcyKErUfaeRVK3lQ=','2022-07-26 04:17:42.212354',1,'admin@kbtc.edu.mm','Admin','IT','kaunghtunthant@kbtc.edu.mm',0,1,'2022-07-26 02:58:39.055347'),(5,'pbkdf2_sha256$260000$6hFzUv9ZUm0Bkpjkz5WUzn$LgidrIKWUru55qnfKU20iczkU/LDNH3xGrJRJ0TjJYc=',NULL,0,'win123','win','lae','winlaelaephyo@kbtc.edu.mm',0,1,'2022-07-26 04:31:59.755805');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,5,1),(2,5,2);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_academic`
--

DROP TABLE IF EXISTS `backend_academic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_academic` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `degreeName` varchar(50) NOT NULL,
  `school_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `backend_academic_school_id_405c6941_fk_backend_schoolinfo_id` (`school_id`),
  CONSTRAINT `backend_academic_school_id_405c6941_fk_backend_schoolinfo_id` FOREIGN KEY (`school_id`) REFERENCES `backend_schoolinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_academic`
--

LOCK TABLES `backend_academic` WRITE;
/*!40000 ALTER TABLE `backend_academic` DISABLE KEYS */;
INSERT INTO `backend_academic` VALUES (1,'Undergraduate',1),(2,'Postgraduate',1);
/*!40000 ALTER TABLE `backend_academic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_academiccourserelation`
--

DROP TABLE IF EXISTS `backend_academiccourserelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_academiccourserelation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sort_order` int DEFAULT NULL,
  `courseName_id` bigint NOT NULL,
  `degreeName_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `backend_academiccour_courseName_id_5a8c2f8a_fk_backend_c` (`courseName_id`),
  KEY `backend_academiccourserelation_degreeName_id_f6cebadb` (`degreeName_id`),
  CONSTRAINT `backend_academiccour_courseName_id_5a8c2f8a_fk_backend_c` FOREIGN KEY (`courseName_id`) REFERENCES `backend_course` (`id`),
  CONSTRAINT `backend_academiccour_degreeName_id_f6cebadb_fk_backend_a` FOREIGN KEY (`degreeName_id`) REFERENCES `backend_academic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_academiccourserelation`
--

LOCK TABLES `backend_academiccourserelation` WRITE;
/*!40000 ALTER TABLE `backend_academiccourserelation` DISABLE KEYS */;
INSERT INTO `backend_academiccourserelation` VALUES (2,0,2,1),(3,1,1,1),(4,2,3,1),(5,4,4,1),(6,5,5,1),(7,6,6,1),(8,3,7,1),(9,0,11,2),(10,7,17,1),(12,1,19,2);
/*!40000 ALTER TABLE `backend_academiccourserelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_campus`
--

DROP TABLE IF EXISTS `backend_campus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_campus` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `campusName` varchar(200) NOT NULL,
  `address` longtext NOT NULL,
  `query` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_campus`
--

LOCK TABLES `backend_campus` WRITE;
/*!40000 ALTER TABLE `backend_campus` DISABLE KEYS */;
INSERT INTO `backend_campus` VALUES (1,'KBTC Main Campus','အမှတ် (၁/က) ၊ ပြည်လမ်း (ပြည်လမ်းအင်းယားကန်ဘောင်ရှေ့) ၊ လှိုင်မြို့နယ် ၊ ရန်ကုန်မြို့ ။','KBTC Main Campus, Pyay Road, Yangon, Myanmar (Burma)'),(2,'KBTC Campus (1)','အမှတ် (၆၀) ၊ စံပယ်ခြံ (၂) လမ်း ၊ (သံလမ်း ကားမှတ်တိုင် အနီး) ၊ လှိုင်မြို့နယ် ၊ ရန်ကုန်မြို့ ။','KBTC College (Campus 1), Sabel Chan 2nd Street ရန်ကုန်, 11051, Myanmar (Burma)'),(3,'KBTC Campus (2)','အမှတ် (က/၂) ၊ ဝဂ္ဂီရိပ်သာလမ်း ၊ (ပြည်လမ်းမ Diamond Condo အနီး) ၊ ကမာရွတ်မြို့ နယ် ၊ ရန်ကုန်မြို့ ။','KBTC University, Waggi Yeik Thar Street, Yangon, Myanmar (Burma)'),(4,'KBTC Campus (3)','အမှတ် (၁) (G1) ၊ ပြည်လမ်းမ Diamond Condo ၊ ကမာရွတ်မြို့နယ် ၊ ရန်ကုန်မြို့။','16.822487, 96.131441'),(5,'KBTC Campus (4)','အမှတ် (၆၃၅) (E) ၊ ရိုးမရိပ်သာလမ်း ၊ ကမာရွတ်မြို့နယ် ၊ ရန်ကုန်မြို့။','KBTC University (YOMA AVENUE), Pyay Road, Yangon, Myanmar (Burma)');
/*!40000 ALTER TABLE `backend_campus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_course`
--

DROP TABLE IF EXISTS `backend_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_course` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `courseTitle` varchar(100) NOT NULL,
  `overview` longtext NOT NULL,
  `coursePhoto_id` int DEFAULT NULL,
  `level_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `backend_course_level_id_858b2241_fk_backend_levels_id` (`level_id`),
  KEY `backend_course_coursePhoto_id_e233d090_fk_wagtailimages_image_id` (`coursePhoto_id`),
  CONSTRAINT `backend_course_coursePhoto_id_e233d090_fk_wagtailimages_image_id` FOREIGN KEY (`coursePhoto_id`) REFERENCES `wagtailimages_image` (`id`),
  CONSTRAINT `backend_course_level_id_858b2241_fk_backend_levels_id` FOREIGN KEY (`level_id`) REFERENCES `backend_levels` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_course`
--

LOCK TABLES `backend_course` WRITE;
/*!40000 ALTER TABLE `backend_course` DISABLE KEYS */;
INSERT INTO `backend_course` VALUES (1,'Level 4 Diploma in Computing','<h3 data-block-key=\"moert\">Overview</h3><hr/><p data-block-key=\"6e47n\">The NCC Education Level 4 Diploma in Computing (L4DC) is an Ofqual regulated qualification. The qualification makes up the first year of the NCC Education degree journey. The qualification is equivalent to the first year of an IT degree in the UK university system.</p><p data-block-key=\"5tlad\">Students will be given the opportunity to develop essential thinking and study skills, not only within the computing domain, but also within the context of business through a balance of academic and vocational subjects. The qualification will allow them to understand and enter the computing profession with the necessary knowledge expected within the industry and the ability to apply the skills to a range of IT-related functions.</p><p data-block-key=\"cbus5\">On successful completion of the qualification students will be able to embark on NCC Education’s Level 5 Diploma in Computing (L5DC), which is equivalent to the second year of a UK Bachelor’s degree, transfer to a university or pursue a career in the IT industry.</p><h3 data-block-key=\"7anp5\">Accreditation Status</h3><hr/><p data-block-key=\"7s0ml\">NCC Education is regulated by Ofqual (Office of Qualifications and Examinations Regulation) to award the Level 4 Diploma in Computing in England. Ofqual Qualification reference number 600/0406/X.</p><h3 data-block-key=\"61cck\">Entry Requirements</h3><hr/><p data-block-key=\"fsqnk\"></p><p data-block-key=\"evd6\"><b>For entry onto the NCC Education L4DC qualification students must have at least one of the following:</b></p><ul><li data-block-key=\"6gavh\">NCC Education Level 3 International Foundation Diploma for Higher Education Studies</li></ul><p data-block-key=\"88jpj\">OR</p><ul><li data-block-key=\"66d0l\">NCC Education Level 3 Diploma in Computing</li></ul><p data-block-key=\"bs3tu\">OR</p><ul><li data-block-key=\"6o2lv\">1 GCE ‘A’ Level pass</li></ul><p data-block-key=\"bdaus\"><b>Students must also meet the English language entry requirements of:</b></p><ul><li data-block-key=\"82q0e\">IELTS min score of 5.5 or above</li></ul><p data-block-key=\"drh6j\">OR</p><ul><li data-block-key=\"1mjuk\">GCE ‘O’ Level English C6</li></ul><p data-block-key=\"3653b\">Mature applicants will be considered for entry if they are able to demonstrate over 2 years of relevant work experience and have a GCE ‘O’ Level / IGCSE English and Maths or equivalent.</p><p data-block-key=\"dmbcn\">OR</p><ul><li data-block-key=\"c1m4k\">The Oxford Test of English is recognised for acceptance onto NCC Education programmes. An affordable, personalized test that fits you – it’s 100% online, flexible, fast, and available at Approved Test Centres across the globe. Plus, it’s the only language proficiency test certified by the University of Oxford.</li></ul><h3 data-block-key=\"adk4l\">Units</h3><hr/><p data-block-key=\"bidi6\"></p><p data-block-key=\"984b1\">Students must study the following eight core units:</p><ul><li data-block-key=\"85eu1\"><b>Skills for Computing</b> – This module provides essential skills required by computing students. The skills taught include study, presentation, report-writing and data handling skills. It will prepare students for successful outcomes in their studies and provide them with skills that can be applied in the workplace.</li><li data-block-key=\"at5e9\"><b>Computer Networks</b> – This module helps students to develop a good understanding of basic theory and useful practical skills of networking and communication that are vital in today’s connected world.</li><li data-block-key=\"3as6e\"><b>Computer Systems</b> – This module addresses the development of practical skills in the configuration, maintenance, fault finding and trouble-shooting of modern computer systems and develops knowledge of computer architecture.</li><li data-block-key=\"f13ee\"><b>Designing and Developing a Website</b> – This module provides students with the practical skills required in website design such as understanding of mark-up languages, style sheets, design techniques and testing.</li><li data-block-key=\"eu126\"><b>Databases</b> – This module provides students with thorough training in practical techniques for the design and development of database systems and develops a sound understanding of the underpinning theory.</li><li data-block-key=\"4p23g\"><b>Designing and Developing Object-Oriented Computer Programmes</b> – This module provides students with a thorough grounding in programming methods, and a detailed knowledge of developing programs using C#.</li><li data-block-key=\"343hj\"><b>Software Development Techniques</b> – This module addresses the wider issues of software development together with a language-independent survey of useful data structures and algorithms.</li><li data-block-key=\"92nfb\"><b>Office Solutions Development</b> – This module teaches students to develop practical skills in the automation of common office applications to support a variety of tasks.</li></ul><h3 data-block-key=\"429p5\">Assessment</h3><hr/><p data-block-key=\"6m1vu\"></p><p data-block-key=\"6efpj\">Assessments for all units are offered in a number of assessment cycles throughout the year. All units are assessed by assignments and/or examinations.</p><p data-block-key=\"1342i\"><b>Past papers and sample assessments:</b></p><p data-block-key=\"3jm9a\"><b>Skills for Computing</b></p><p data-block-key=\"g2f4\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/001-L4DC-SC-Sample-SA.pdf\">View a Sample Assessment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/001-L4DC-SC-Sample-MS.pdf\">View a Sample Mark Scheme here.</a></p><p data-block-key=\"cb7cv\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/SC-QP-Spring-2021-SAMPLE-2.pdf\">View a Sample Time Constrained Assessment here. </a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/SC-MS-Spring-2021-SAMPLE-2.pdf\">View a Sample Time Constrained Assessment Mark Scheme here.</a></p><p data-block-key=\"4cvrr\"><b>Computer Networks</b></p><p data-block-key=\"82ov2\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/02-L4DC-Computer-Networks-CN-Sample-QP.pdf\">View a Sample Assessment Assignment here</a>.<br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/02-L4DC-Computer-Networks-CN-Sample-MS.pdf\">View a Sample Mark Scheme Assignment here.</a></p><p data-block-key=\"8g6o8\"><b>Computer Systems</b></p><p data-block-key=\"b33fr\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/03-L4DC-Computer-Systems-CSYS-Sample-QP.pdf\">View a Sample Assessment Assignment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/03-L4DC-Computer-Systems-CSYS-Sample-MS.pdf\">View a Sample Mark Scheme Assignment here.</a></p><p data-block-key=\"bvohl\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/CS-December-2015-Exam-SAMPLE.pdf\">View a Sample Assessment Exam here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/CS-December-2015-Exam-MS-SAMPLE.pdf\">View a Sample Mark Scheme Exam here.</a></p><p data-block-key=\"ff7cp\"><b>Designing and Developing a Website</b></p><p data-block-key=\"4apke\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/04-L4DC-Designing-and-Developing-a-Website-DDW-Sample-QP.pdf\">View a Sample Assessment Assignment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/04-L4DC-Designing-and-Developing-a-Website-DDW-Sample-MS.pdf\">View a Sample Assignment Mark Scheme here.</a></p><p data-block-key=\"8odj8\"><b>Databases</b></p><p data-block-key=\"aneek\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/002-L4DC-DBAS-Sample-SA.pdf\">View a Sample Assessment Assignment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/002-L4DC-DBAS-Sample-MS.pdf\">View a Sample Mark Scheme Assignment here.</a></p><p data-block-key=\"f3vg\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/DBAS-QP-Spring-2021-SAMPLE-2.pdf\">View a Sample Time Constrained Assessment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/DBAS-MS-Spring-2021-SAMPLE-2.pdf\">View a Sample Time Constrained Assessment Mark Scheme here.</a></p><p data-block-key=\"9h1f2\"><b>Designing and Developing Object-Oriented Computer Programs</b></p><p data-block-key=\"c08qc\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/06-L4DC-Designing-and-Developing-Object-Oriented-Computer-programs-DDOOCP-Sample-QP.pdf\">View a Sample Assessment Assignment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/06-L4DC-Designing-and-Developing-Object-Oriented-Computer-programs-DDOOCP-Sample-MS.pdf\">View a Sample Mark Scheme Assignment here.</a></p><p data-block-key=\"afhi7\"><b>Software Development Techniques</b></p><p data-block-key=\"1auo2\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/SDT-QP-Spring-2021-SAMPLE-2.pdf\">View a Sample Time Constrained Assessment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/SDT-MS-Spring-2021-SAMPLE-2.pdf\">View a Sample Time Constrained Assessment Mark Scheme here.</a></p><p data-block-key=\"26p0j\"><b>Office Solutions Development</b></p><p data-block-key=\"d08id\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/003-L4DC-OSD-Sample-SA.pdf\">View a Sample Assessment Assignment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/003-L4DC-OSD-Sample-MS.pdf\">View a Sample Mark Scheme Assignment here.</a></p><h3 data-block-key=\"es2ev\">Academic Progression</h3><hr/><p data-block-key=\"6v2ss\"></p><p data-block-key=\"ct82d\">The qualification allows students entry to either the NCC Education <a href=\"https://www.nccedu.com/qualifications/computing/ncc-education-level-5-diploma-in-computing-l5dc/\">Level 5 Diploma in Computing</a>, (which is equivalent to the second year of a UK Bachelor’s degree), or the second year of many UK university degree courses, or enables you to pursue a career in the IT industry.</p><p data-block-key=\"f93it\">Progression routes can be found on our <a href=\"https://www.nccedu.com/university-progression/\">University Progression</a> page.</p>',51,2),(2,'Level 3 Diploma in Computing','<h3 data-block-key=\"kss4o\">Overview</h3><hr/><p data-block-key=\"a5p7q\">The NCC Education Level 3 Diploma in Computing (L3DC) is an Ofqual regulated qualification. It is an Applied General qualification which allows candidates to demonstrate key transferable study skills, mathematical competency and applied cultural understanding, especially in the area of digital culture, as well as an understanding of the essential concepts of computer programming.</p><p data-block-key=\"6llpp\">In addition, successful candidates will fulfil the main entry requirements for the NCC Education Level 4 Diploma in Computing (L4DC) or Level 4 Diploma in Business IT (L4DBIT), as well as opening up opportunities to access a range of higher education courses or employment.</p><p data-block-key=\"77vr2\">Examples of higher education opportunities include, but are not limited to, progressing to university degrees in:</p><ul><li data-block-key=\"a50d2\">Software Engineering</li><li data-block-key=\"e3iqm\">Computer Science</li><li data-block-key=\"9blsh\">Computer Networking Systems</li><li data-block-key=\"4op8c\">Digital Media Technology</li><li data-block-key=\"ctb10\">Computer Forensics and Security</li></ul><p data-block-key=\"6j94b\">Examples of employment opportunities include roles such as:</p><ul><li data-block-key=\"8fc7\">IT Helpdesk Professional</li><li data-block-key=\"6pia4\">Data Entry Clerk</li><li data-block-key=\"bbqgn\">IT Support Technician and Computer Service</li><li data-block-key=\"cv9b2\">Repair Technician</li></ul><p data-block-key=\"ari5p\">The Level 3 Diploma in Computing syllabus and assessment is suitable for students aged 16-19 as well as adult learners.</p><h3 data-block-key=\"1gpg0\">Accreditation Status</h3><hr/><p data-block-key=\"7733h\"></p><p data-block-key=\"a8fhp\">NCC Education is regulated by Ofqual (Office of Qualifications and Examinations Regulation) to award the Level 3 Diploma in Computing in England. Ofqual Qualification reference number 600/6407/9.</p><p data-block-key=\"1lbku\"></p><h3 data-block-key=\"4deld\">Entry Requirements</h3><hr/><p data-block-key=\"8ug6o\">The Level 3 Diploma in Computing syllabus and assessment is suitable for students aged 16-19 as well as adult learners.</p><p data-block-key=\"bc2pg\">For entry onto the NCC Education Diploma in Computing (L3DC) a student must:</p><ul><li data-block-key=\"kqi5\">Have previously studied in English at secondary school level.</li></ul><p data-block-key=\"d059o\">OR</p><ul><li data-block-key=\"9n50a\">Have a valid score of 5.5 or above in the International English Language Testing System (IELTS) examination or equivalent. Alternatively a student can take the free NCC Education Higher English Placement Test which is administered by our Accredited Partner Centres.</li></ul><p data-block-key=\"2eudg\">OR</p><ul><li data-block-key=\"bea76\">The Oxford Test of English is recognised for acceptance onto NCC Education programmes. An affordable, personalized test that fits you – it’s 100% online, flexible, fast, and available at Approved Test Centres across the globe. Plus, it’s the only language proficiency test certified by the University of Oxford.</li></ul><p data-block-key=\"es742\"></p><h3 data-block-key=\"ct3nk\">Units</h3><hr/><p data-block-key=\"fo5rk\">Students must study the following five core units:</p><ul><li data-block-key=\"5vscr\"><b>Study and Communication Skills</b> – equips students with the essential study skills needed to succeed at university level. They will learn the basic skills necessary to conduct independent research, write academic papers, give formal oral presentations and apply what has been taught during lectures.</li><li data-block-key=\"6i6cf\"><b>Culture Studies – </b>enables students to gain awareness and increased understanding of other cultures and their own alongside the impact of a more digitised world on those cultures. Students will be able to apply their understanding of culture to other aspects of their course and to their plans for further study and work. The course will, in part, help prepare students for studying and/or working abroad or working for multi-national companies in our highly interconnected, digitised world.</li><li data-block-key=\"6ebgi\"><b>Introduction to Computer Science</b> – provides a basic introduction to a range of IT topics including organisation of a computer system, the relationship between hardware and software, applications of computers, databases, networking (with a focus on the Internet), graphics and multimedia.</li><li data-block-key=\"3r4lq\"><b>Introduction to Programming</b> – exposes students to extensive practical use of the modern programming language Visual Basic to illustrate the classic programming principles of sequencing, selection and iteration in the context of object-oriented computer programming.</li><li data-block-key=\"3da2a\"><b>Foundation Mathematics</b> – This module builds upon student’s knowledge of mathematics whilst introducing new topics appropriate across a range of academic disciplines and for their future career.</li></ul><h3 data-block-key=\"9jj37\">Assessment</h3><hr/><p data-block-key=\"97bv8\"></p><p data-block-key=\"bmtpo\">Assessments for all units will be offered in a number of assessment cycles throughout the year. The units are all assessed by either examination or assignments.</p><p data-block-key=\"7tqvt\"><b>Past papers and sample assessments:</b></p><p data-block-key=\"bcomg\"><b>Study and Communications Skills</b></p><p data-block-key=\"7vbbp\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/SCS-Assignment-Paper-A-May-2016-Final-1.pdf\">View a Sample Assessment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/SCS-Assignment-Paper-A-Marking-Scheme-May-2016-Final-1.pdf\">View a Sample Mark Scheme here.</a></p><p data-block-key=\"4avfp\"><b>Foundation Mathematics</b></p><p data-block-key=\"dvcj5\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/FDM-May-2016-Examination-Paper-Final.pdf\">View a Sample Assessment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/FDM-May-2016-Examination-Marking-Scheme-Final-CDM.pdf\">View s Sample Mark Scheme here.</a></p><p data-block-key=\"2a6vh\"><b>Culture Studies</b></p><p data-block-key=\"1tcbl\">The Culture Studies Assignment is open-ended, which means it does not change each cycle. Please find the live Culture Studies assignment and mark scheme below:</p><p data-block-key=\"19lgi\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/CS-Assignment-QP-Spring-2020-FINAL.pdf\">View Live Assignment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/CS-Assignment-MS-Spring-2020-FINAL.pdf\">View Live Mark Scheme here.</a></p><p data-block-key=\"fn1mv\"><b>Introduction to Computer Science</b></p><p data-block-key=\"4gsct\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/ITCS-Sample-Exam.pdf\">View a Sample Examination here.</a><br/> <a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/ITCS-Sample-Exam-Marking-Scheme.pdf\">View a Sample Mark Scheme here.</a></p><p data-block-key=\"40ss\"><b>Introduction to Programming</b></p><p data-block-key=\"aaj8b\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/ITP-Sample-Assignment.pdf\">View a Sample Assignment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/ITP-Sample-Assignment-Marking-Scheme.pdf\">View a Sample Assignment Mark Scheme here.</a></p><p data-block-key=\"7g163\"></p><h3 data-block-key=\"b78su\">Academic Progression</h3><hr/><p data-block-key=\"etb9b\"></p><p data-block-key=\"7rupm\">Students that complete the Level 3 Diploma in Computing (L3DC) can:</p><ul><li data-block-key=\"6rs3s\">Enroll onto the NCC Education Level 4 Diploma in Computing (L4DC), equivalent to Year 1 of a UK bachelor’s degree.</li></ul><p data-block-key=\"59li4\">OR</p><ul><li data-block-key=\"dtats\">Choose where to study in the world. Click <a href=\"https://www.nccedu.com/university-progression/\">here</a> to view the latest university progression routes.</li></ul>',65,1),(3,'Level 4 Diploma in Computing (with Business Management)','<h3 data-block-key=\"14juk\">Overview</h3><hr/><p data-block-key=\"e9nlu\">The Level 4 Diploma in Computing (with Business Management) (L4DC BM)) (previously the Level 4 Diploma in Business Information Technology (L4DBIT)) makes up the first year of the NCC Education degree journey. The qualification is equivalent to the first year of an IT degree in the UK university system.</p><p data-block-key=\"58ico\">Students will be given the opportunity to develop essential thinking and study skills in IT and business through a balance of academic and vocational subjects. They will be able to contribute to the development of computer systems and networks, databases and websites in a business context, whilst also developing an awareness of business needs. The qualification will allow them to understand and enter the IT and business profession with the necessary knowledge expected within the industry and the ability to apply the skills to a range of IT-related functions.</p><p data-block-key=\"38b5d\">On successful completion of the qualification students will be able to embark on NCC Education’s Level 5 Diploma in Computing with Business Management (L5DC BM), which is equivalent to the second year of a UK Bachelor’s degree, transfer to a university or pursue a career in the IT industry.</p><h3 data-block-key=\"4rche\">Accreditation Status</h3><hr/><p data-block-key=\"fhmo4\">NCC Education is regulated by Ofqual (Office of Qualifications and Examinations Regulation) to award the Level 4 Diploma in Business Information Technology in England. Ofqual Qualification reference number 600/0624/9.</p><h3 data-block-key=\"1e3n9\">Entry Requirements</h3><hr/><p data-block-key=\"7aqdj\"></p><p data-block-key=\"3hhcg\"><b>For entry into the L4DBIT / L4DC BM qualification, students must have at least one of the following:</b></p><ul><li data-block-key=\"ccifa\">NCC Education Level 3 International Foundation Diploma for Higher Education Studies</li></ul><p data-block-key=\"1okb\">OR</p><ul><li data-block-key=\"eo1i4\">NCC Education Level 3 Diploma in Business</li></ul><p data-block-key=\"1le81\">OR</p><ul><li data-block-key=\"bu3ko\">NCC Education Level 3 Diploma in Computing</li></ul><p data-block-key=\"ain14\">OR</p><ul><li data-block-key=\"59l8o\">1 GCE ‘A’ Level pass</li></ul><p data-block-key=\"bbb5i\"><b>If a potential student’s first language is not English, they must also reach the English Language requirements of either:</b></p><ul><li data-block-key=\"fl7hi\">IELTS min score of 5.5 or above</li></ul><p data-block-key=\"dat7p\">OR</p><ul><li data-block-key=\"cigf4\">GCE ‘O’ Level English C6</li></ul><p data-block-key=\"ctigk\">Mature applicants will also be considered for entry if they are able to demonstrate over two years of relevant work experience and have a GCE ‘O’ Level / IGCSE English and Maths or equivalent.</p><p data-block-key=\"cs26v\">OR</p><ul><li data-block-key=\"26s9a\">The Oxford Test of English is recognised for acceptance onto NCC Education programmes. An affordable, personalized test that fits you – it’s 100% online, flexible, fast, and available at Approved Test Centres across the globe. Plus, it’s the only language proficiency test certified by the University of Oxford.</li></ul><h3 data-block-key=\"977p3\">Units</h3><hr/><p data-block-key=\"a372m\"></p><p data-block-key=\"f0mbl\">Students must study the following eight core units:</p><ul><li data-block-key=\"8t0sh\"><b>Skills for Computing</b> – This module provides essential skills required by computing students. The skills taught include study, presentation, report-writing and data handling skills. It will prepare students for successful outcomes in their studies and provide them with skills that can be applied in the workplace.</li><li data-block-key=\"7cjks\"><b>Computer Networks</b> – This module helps students to develop a good understanding of basic theory and useful practical skills of networking and communication that are vital in today’s connected world.</li><li data-block-key=\"8pt58\"><b>Computer Systems</b> – This module addresses the development of practical skills in the configuration, maintenance, fault finding and trouble-shooting of modern computer systems and develops knowledge of computer architecture.</li><li data-block-key=\"a4l3\"><b>Designing and Developing a Website</b> – This module provides students with the practical skills required in website design such as understanding of markup languages, style sheets, design techniques and testing.</li><li data-block-key=\"1bkih\"><b>Databases</b> – This module provides students with thorough training in practical techniques for the design and development of database systems and develops a sound understanding of the underpinning theory.</li><li data-block-key=\"4dhnc\"><b>eBusiness</b> – This module gives students the opportunity to examine how organisations can use all aspects of eBusiness to create new products and services, reduce the cost of existing business processes and improve the efficiency of their operations using typical revenue models.</li><li data-block-key=\"8p42\"><b>Essentials of Management</b> – This module covers the principles and functions of management, teaching students the key elements in planning and decision making and the significance of different controls required in an organisation.</li><li data-block-key=\"cpleb\"><b>Understanding Business Organisations</b> -This module provides an introduction to the objectives, roles, functions and various forms of business organisation as they adapt to a dynamic and changing environment and also considers information and technology in regards to efficiency and performance.</li></ul><h3 data-block-key=\"df7vg\">Assessment</h3><hr/><p data-block-key=\"4com4\">Assessments for all units are offered in a number of assessment cycles throughout the year. All units are assessed by assignments and/or examinations.</p><p data-block-key=\"6k1c8\"><b>Past papers and sample assessments:</b></p><p data-block-key=\"62t4j\"><b>Skills for Computing</b></p><p data-block-key=\"cqfnr\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/SfC-December-2015-Exam-SAMPLE.pdf\">View a Sample Assessment here.</a><br/> <a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/SfC-December-2015-Exam-MS-SAMPLE.pdf\">View a Sample Mark Scheme here.</a><br/></p><p data-block-key=\"lcg9\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/SC-QP-Spring-2021-SAMPLE-2.pdf\">View a Sample Time Constrained Assessment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/SC-MS-Spring-2021-SAMPLE-2.pdf\">View a Sample Time Constrained Assessment Mark Scheme here.</a></p><p data-block-key=\"3ac43\"><b>Computer Networks</b></p><p data-block-key=\"agifp\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/CN-December-2015-Sample-Assignment-Final.pdf\">View a Sample Assessment here.</a><br/> <a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/CN-December-2015-Sample-Assignment-MS-Final.pdf\">View a Sample Mark Scheme here.</a></p><p data-block-key=\"fh4r2\"><b>Computer Systems</b></p><p data-block-key=\"2sgs8\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/CS-December-2015-Assignment-SAMPLE.pdf\">View a Sample Assessment Assignment here.</a><br/> <a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/CS-December-2015-Assignment-MS-SAMPLE.pdf\">View a Sample Mark Scheme Assignment here.</a></p><p data-block-key=\"bn588\"><b>Designing and Developing a Website</b></p><p data-block-key=\"4p431\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/DDW-December-2015-Sample-Exam-Final.pdf\">View a Sample Assessment here.</a><br/> <a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/DDW-December-2015-Sample-Exam-MS-Final.pdf\">View a Sample Mark Scheme here.</a></p><p data-block-key=\"ck642\"><b>Databases</b></p><p data-block-key=\"dn214\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/DB-December-2015-Assignment-SAMPLE.pdf\">View a Sample Assessment Assignment here.</a><br/> <a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/DB-December-2015-Assignment-MS-SAMPLE.pdf\">View a Sample Mark Scheme Assignment here.</a></p><p data-block-key=\"deq3h\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/DBAS-QP-Spring-2021-SAMPLE-2.pdf\">View a Sample Time Constrained Assessment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/DBAS-MS-Spring-2021-SAMPLE-2.pdf\">View a Sample Time Constrained Assessment Mark Scheme here.</a></p><p data-block-key=\"3dkqq\"><b>eBusiness</b></p><p data-block-key=\"biqjc\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/eBusiness-June-2016-Assignment-Final.pdf\">View a Sample Assessment here.</a><br/> <a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/eBusiness-Assignment-Marking-Scheme-June-2016-Final.pdf\">View a Sample Mark Scheme here.</a></p><p data-block-key=\"79mof\"><b>Essentials of Management</b></p><p data-block-key=\"a08d\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/EoM-Sample-Assignment-Final.pdf\">View a Sample Assessment here</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/EoM-Sample-Marking-Scheme-Final.pdf\">View a Sample Mark Scheme here</a></p><p data-block-key=\"fm9cf\"><b>Understanding Business Organisations</b></p><p data-block-key=\"1hb6r\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/UBO-Assignment-June-2016-Final.pdf\">View a Sample Assessment here.</a><br/> <a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/UBO-Marking-Scheme-June-2016-Final.pdf\">View a Sample Mark Scheme here.</a></p><p data-block-key=\"a02fb\"></p><p data-block-key=\"gb7v\"></p>',52,2),(4,'Level 5 Diploma in Computing','<h3 data-block-key=\"i02a8\">Overview</h3><hr/><p data-block-key=\"ch284\">The NCC Education Level 5 Diploma in Computing (L5DC) is an Ofqual regulated qualification. The qualification makes up the second year of the NCC Education degree journey and builds upon the knowledge gained during the NCC Education Level 4 Diploma in Computing (L4DC). Exposing students to greater detail and more advanced topics in a range of areas including database development, information systems analysis, network security and cryptography.</p><p data-block-key=\"eqs4f\">Students will study a balance of academic and vocational subjects in order to provide the necessary knowledge and skills to play a significant role in IT organisations.</p><p data-block-key=\"d9sf3\">On successful completion of the qualification students will be able to complete the final year of a degree with the NCC Education Business Computing and Information Systems Top Up validated by the University of Central Lancashire (UCLan), the University of Greenwich Computing Top Up delivered at our Accredited Partner Centres, at one of the many universities that recognise NCC Education qualifications, or pursue a career in the IT industry.</p><h3 data-block-key=\"3oun9\">Accreditation Status</h3><hr/><p data-block-key=\"9nfa0\">NCC Education is accredited to award the Level 5 Diploma in Computing by Ofqual (Office of Qualifications and Examinations Regulation) in England. Ofqual Qualification reference number 600/3055/0.</p><h3 data-block-key=\"74tju\">Entry Requirements</h3><hr/><p data-block-key=\"88ogq\"></p><p data-block-key=\"1pcc6\">For entry onto the NCC Education L5DC qualification students must have at least one of the following:</p><ul><li data-block-key=\"dojlt\">NCC Education Level 4 Diploma in Computing (L4DC).</li></ul><p data-block-key=\"6t77n\">OR</p><ul><li data-block-key=\"aap7o\">A local or international qualification which is deemed to be of a similar level to the NCC Education L4DC qualification. This must be agreed with NCC Education in advance.</li></ul><p data-block-key=\"5jkkr\">If a potential student whose first language is not English, they will need to obtain a valid score of 5.5 or above in the International English Language Testing System (IELTS) examination or equivalent. Alternatively, take the free NCC Education Higher English Placement Test, which is administered by our Accredited Partner Centres.</p><p data-block-key=\"3tfm5\">OR</p><ul><li data-block-key=\"2g3iq\">The Oxford Test of English is recognised for acceptance onto NCC Education programmes. An affordable, personalized test that fits you – it’s 100% online, flexible, fast, and available at Approved Test Centres across the globe. Plus, it’s the only language proficiency test certified by the University of Oxford.</li></ul><p data-block-key=\"2keh2\"><b>Direct Entry at Other Points</b></p><p data-block-key=\"eick1\">The majority of students are expected to join the NCC Education Information Technology Journey at Level 4 or earlier. However, applications will be accepted for entry at any point and will be accepted, by means of documented evidence, using the following criteria:</p><ul><li data-block-key=\"fg9uo\">The applicant’s general educational background is appropriate for the level of entry.</li><li data-block-key=\"a2n0d\">The applicant’s knowledge of computing is both equivalent to, and appropriate for, the level of entry.</li></ul><h3 data-block-key=\"2nb8u\">Units</h3><hr/><p data-block-key=\"aakrm\">Complete four core units and two optional units:</p><p data-block-key=\"frlpi\"><b>Core units</b></p><ul><li data-block-key=\"8gfva\"><b>Network Security and Cryptography</b>– This module provides students with the underlying theory and practical skills required to secure networks and to send data safely and securely over communications networks.</li><li data-block-key=\"fh4u3\"><b>Information Systems Analysis</b>– This module equips students with a range of tools to analyse the function and requirements of information systems, as well as the skills to compare systems analysis models and to examine them in the wider context of the Internet and the social, economic and political climate of an organisation.</li><li data-block-key=\"4nl9e\"><b>Database Design and Development</b>– This module allows students to develop skills in the design and development of databases and database management systems, as well as investigating enterprise applications of databases.</li><li data-block-key=\"d4rno\"><b>Computing Project</b>– This module provides students with the opportunity to utilise the skills needed to develop a computing artefact to solve a problem, which involves research, analysis, design, coding, testing and project management knowledge and expertise.</li></ul><p data-block-key=\"61jh1\"><b>Optional units</b></p><ul><li data-block-key=\"514pd\"><b>Professional Issues in IT</b> – This module highlights the professional issues that impact the development, deployment, maintenance and use of computer systems. It equips students with the knowledge surrounding social, ethical and legal issues applicable to the IT field and also a working understanding of software quality.</li><li data-block-key=\"6f3h4\"><b>Agile Development</b>– This module explores the processes, people, practices and principles of agile development systems. It prepares students for future trends in software development and reinforces their understanding of the information systems development process.</li><li data-block-key=\"1innk\"><b>Analysis, Design and Implementation</b> – This module provides students with in-depth knowledge, skills and experience in the use of object-oriented techniques for the development of software. It develops students’ expertise in object-oriented analysis, design and coding, and the testing of systems.</li><li data-block-key=\"58tu0\"><b>Dynamic Websites</b> – This module builds on existing knowledge of both databases and web design in order to build dynamic websites and also equips students with a range of skills to present content on the World Wide Web.</li></ul><h3 data-block-key=\"7ja1j\">Assessment</h3><hr/><p data-block-key=\"849l5\">Assessments for all units are offered in a number of assessment cycles throughout the year. All units, except the project, are assessed by assignments and/or examinations.</p><p data-block-key=\"co9mg\"><b>Past papers and sample assessments:</b></p><p data-block-key=\"dq4or\"><b>Professional Issues in IT</b></p><p data-block-key=\"ap53h\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/01-L5DC-Professional-Issues-in-IT-PIIT-Sample-Assignment-QP.pdf\">View a Sample Assignment Assessment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/01-L5DC-Professional-Issues-in-IT-PIIT-Sample-Assignment-MS.pdf\">View a Sample Assignment Mark Scheme here.</a></p><p data-block-key=\"e0off\"><b>Network Security and Cryptography</b></p><p data-block-key=\"5s7mc\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/02-L5DC-Network-Security-and-Cryptography-NSC-Sample-Assignment-QP.pdf\">View a Sample Assessment Assignment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/02-L5DC-Network-Security-and-Cryptography-NSC-Sample-Assignment-MS.pdf\">View a Sample Mark Scheme Assignment here.</a></p><p data-block-key=\"2rbd7\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/NSC-QP-Spring-2021-SAMPLE-2.pdf\">View a Sample Time Constrained Assessment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/NSC-MS-Spring-2021-SAMPLE-2.pdf\">View a Sample Time Constrained Assessment Mark Scheme here.</a></p><p data-block-key=\"e9dvt\"><b>Information Systems Analysis</b></p><p data-block-key=\"8qoqq\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/ISYSA-QP-Spring-2021-SAMPLE-2.pdf\">View a Sample Time Constrained Assessment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/ISYSA-MS-Spring-2021-SAMPLE-2.pdf\">View a Sample Time Constrained Assessment Mark Scheme here.</a></p><p data-block-key=\"6s6j8\"><b>Dynamic Websites</b></p><p data-block-key=\"50bup\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/03-L5DC-Dynamic-Websites-DWEB-Sample-Assignment-QP.pdf\">View a Sample Assessment Assignment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/03-L5DC-Dynamic-Websites-DWEB-Sample-Assignment-MS.pdf\">View a Sample Mark Scheme Assignment here.</a></p><p data-block-key=\"fao5d\"><b>Analysis, Design and Implementation</b></p><p data-block-key=\"cm5tg\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/04-L5DC-Analysis-Design-and-Implementation-ADI-Sample-Assignment-20-credits-QP-v2.pdf\">View a Sample Assessment Assignment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/04-L5DC-Analysis-Design-and-Implementation-ADI-Sample-Assignment-20-credits-MS-v2.pdf\">View a Sample Mark Scheme Assignment here.</a></p><p data-block-key=\"dkslh\"><b>Database Design and Development</b></p><p data-block-key=\"4upcu\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/06-L5DC-Agile-Development-AD-Sample-Assignment-QP.pdf\">View a Sample Assessment Assignment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/DDD-December-2015-Assignment-MS-SAMPLE-1.pdf\">View a Sample Mark Scheme Assignment here.</a></p><p data-block-key=\"5e9q9\"><b>Agile Development</b></p><p data-block-key=\"3p4qa\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/06-L5DC-Agile-Development-AD-Sample-Assignment-QP.pdf\">View a Sample Assessment Assignment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/06-L5DC-Agile-Development-AD-Sample-Assignment-MS.pdf\">View a Sample Mark Scheme Assignment here.</a></p><h3 data-block-key=\"6qau8\">Academic Progression</h3><hr/><p data-block-key=\"7r3a8\">The qualification allows entry onto NCC Education’s final year top-up qualifications in Computing (further entry requirements may apply), or to a third year of many UK university degree courses, or enables you to pursue a career in the IT industry.</p>',62,3),(5,'Level 5 Diploma in Computing (with Business Management)','<h3 data-block-key=\"3jzen\">Overview</h3><hr/><p data-block-key=\"4kjl0\">The Level 5 Diploma in Computing (with Business Management) (L5DC BM) (previously the Level 5 Diploma in Business IT (L5DBIT)) makes up the second year of the NCC Education degree journey and builds upon the knowledge gained during the NCC Education Level 4 Diploma in Business Information Technology (L4DBIT).</p><p data-block-key=\"b1qn5\">Students will be exposed to more advanced topics in a range of areas including information systems analysis, database development and the principles of business operations.</p><p data-block-key=\"9sf77\">Students will study a balance of academic and vocational subjects in order to provide the necessary knowledge and skills to play a significant role in IT and business organisations.</p><p data-block-key=\"85qj6\">On successful completion of the qualification, students will be able to complete the final year of a degree with the NCC Education Business Computing and Information Systems Top Up validated by the University of Central Lancashire (UCLan), the University of Greenwich Business Information Technology Top Up delivered at our Accredited Partner Centres, at one of the many universities that recognise NCC Education qualifications, or pursue a career in the IT industry.</p><h3 data-block-key=\"1n79i\">Accreditation Status</h3><hr/><p data-block-key=\"2udjo\">NCC Education is accredited to award the Level 5 Diploma in Business Information Technology by Ofqual (Office of Qualifications and Examinations Regulation) in England. Ofqual Qualification reference number 600/3049/5.</p><h3 data-block-key=\"d4p4l\">Entry Requirements</h3><hr/><p data-block-key=\"8cm2r\">For entry onto the NCC Education L5DBIT/ L5DC BM qualification students must have at least one of the following:</p><ul><li data-block-key=\"512ig\">NCC Education Level 4 Diploma in Business Information Technology (L4DBIT) or an NCC Education Level 4 Diploma in Computing (L4DC)</li></ul><p data-block-key=\"3jrme\">OR</p><ul><li data-block-key=\"29iim\">A local or international qualification which is deemed to be of a similar level to the NCC Education L4DBIT qualification. This must be agreed with NCC Education in advance.</li></ul><p data-block-key=\"ftvdh\">If a potential student whose first language is not English, they will need to obtain a valid score of 5.5 or above in the International English Language Testing System (IELTS) examination or equivalent. Alternatively, take the free NCC Education Higher English Placement Test, which is administered by our Accredited Partner Centres.</p><p data-block-key=\"585vp\">OR</p><ul><li data-block-key=\"9d3co\">The Oxford Test of English is recognised for acceptance onto NCC Education programmes. An affordable, personalized test that fits you – it’s 100% online, flexible, fast, and available at Approved Test Centres across the globe. Plus, it’s the only language proficiency test certified by the University of Oxford.</li></ul><p data-block-key=\"9ao66\"><b>Direct Entry at Other Points</b></p><p data-block-key=\"c59e5\">The majority of students are expected to join the NCC Education Information Technology Journey at Level 4 or earlier. However, applications will be accepted for entry at any point and will be accepted, by means of documented evidence, using the following criteria:</p><ul><li data-block-key=\"8jd5j\">The applicant’s general educational background is appropriate for the level of entry.</li><li data-block-key=\"ctav1\">The applicant’s knowledge of computing is both equivalent to, and appropriate for, the level of entry.</li></ul><h3 data-block-key=\"e6kbl\">Units</h3><hr/><p data-block-key=\"8eos8\"><b>Students complete the following six core units</b></p><ul><li data-block-key=\"dvdqp\"><b>Information Systems Analysis: </b>This module equips students with a range of tools in order to analyse the function and requirements of information systems, as well as the skills to compare systems analysis models and to examine them in the wider context of the Internet and the social, economic and political climate of an organisation.</li><li data-block-key=\"fgv52\"><b>Dynamic Websites: </b>This module builds on existing knowledge of both databases and web design in order to build dynamic websites and also equips students with a range of skills to present content on the World Wide Web.</li><li data-block-key=\"943i\"><b>Database Design and Development: </b>This module allows students to develop skills in the design and development of databases and database management systems, as well as investigating enterprise applications of databases.</li><li data-block-key=\"6atd7\"><b>Business IT Project: </b>This module provides students with the opportunity to gain practical experience in developing system solutions to open-ended problems derived from the real world.</li><li data-block-key=\"891v5\"><b>Information Systems and Organisations: </b>This module introduces students to the subject of information systems and technology in organisations, taking a broad perspective on how it can be managed effectively within the organisational context. Students will be able to demonstrate an appreciation of the role of information systems in the modem organisation, including the management of social, cultural and political aspects that are important to the successful adoption of technology.</li><li data-block-key=\"7lqof\"><b>Principles of Business Operations: </b>This module helps students to appreciate and understand business operations in both the manufacturing and services sectors. It will cover the basic principles of operations within a global context from three key perspectives: understanding operations, designing operations and managing operations.</li></ul><h3 data-block-key=\"dk5q4\">Assessment</h3><hr/><p data-block-key=\"17ikg\">Assessments for all units are offered in a number of assessment cycles throughout the year. All units, except the project, are assessed by assignments and/or examinations.</p><p data-block-key=\"vfl\"><b>Past papers and sample assessments:</b></p><p data-block-key=\"f8nlt\"><b>Professional Issues in IT</b></p><p data-block-key=\"esms6\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/PIIT-Sample-Assignment-Final.pdf\">View a Sample Assessment Assignment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/PIIT-Sample-Assignment-MS-FINAL.pdf\">View a Sample Mark Scheme Assignment here.</a></p><p data-block-key=\"crqpp\"><b>Information Systems Analysis</b></p><p data-block-key=\"bfn49\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/ISYSA-QP-Spring-2021-SAMPLE-2.pdf\">View a Sample Time Constrained Assessment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/ISYSA-MS-Spring-2021-SAMPLE-2.pdf\">View a Sample Time Constrained Assessment Mark Scheme here.</a></p><p data-block-key=\"d0oej\"><b>Dynamic Websites</b></p><p data-block-key=\"ea9qh\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/DW-December-2015-Sample-Assignment-Final.pdf\">View a Sample Assessment Assignment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/DW-December-2015-Sample-Assignment-MS-Final.pdf\">View a Sample Mark Scheme Assignment here.</a></p><p data-block-key=\"1cpd6\"><b>Database Design and Development</b></p><p data-block-key=\"3ma5\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/DDD-December-2015-Assignment-SAMPLE.pdf\">View a Sample Assessment Assignment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/DDD-December-2015-Assignment-MS-SAMPLE.pdf\">View a Sample Mark Scheme Assignment here.</a></p><p data-block-key=\"1t1la\"><b>Information Systems and Organisations</b></p><p data-block-key=\"carbb\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/ISO-Assignment-Final.pdf\">View a Sample Assignment here (for assessment from December 2017).</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/ISO-Assignment-Final.pdf\">View a Sample Mark Scheme here </a><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/ISO-Assignment-Final.pdf\">(for assessment from December 2017)</a><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2017/07/ISO-Sample-Marking-Scheme-Final.pdf\">.</a></p><p data-block-key=\"c0h6g\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/iso-june-2016-exam-paper-final.pdf\">View a Sample Assessment here (for assessment up until September 2017).</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/iso-june-2016-marking-scheme-final.pdf\">View a Sample Mark Scheme here (for assessment up until September 2017).</a></p><p data-block-key=\"b8d4t\"><b>Principles of Business Operations</b></p><p data-block-key=\"epc\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/PBO-Sample-Assignment-QP-FINAL.pdf\">View a Sample Assessment Assignment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/PBO-Sample-Assignment-MS-FINAL.pdf\">View a Sample Mark Scheme here.</a></p><p data-block-key=\"e0lqi\"><b>Office Solutions Development</b></p><p data-block-key=\"6riil\"><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/OSD-December-2015-Assignment-SAMPLE-1.pdf\">View a Sample Assessment Assignment here.</a><br/><a href=\"https://600429-1942585-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/03/OSD-December-2015-Assignment-MS-SAMPLE-1.pdf\">View a Sample Mark Scheme Assignment here.</a></p><h3 data-block-key=\"9e8cn\">Academic Progression</h3><hr/><p data-block-key=\"ekn1\">Successful completion allows entry onto NCC Education’s final year top-up qualifications in Business Information Technology (further entry requirements may apply), or to a third year of many UK university degree courses, or enables you to pursue a career in the business and IT industry.</p>',60,3),(6,'Level 5 Diploma in Computing (with Cyber Security)','<h3 data-block-key=\"mgn39\">Overview</h3><hr/><p data-block-key=\"87m4f\">The Level 5 Diploma in Computing (with Cyber Security (L5DC CS) (previously Level 5 Diploma in Cyber Security (L5DCS)) makes up the second year of the NCC Education degree journey. This builds upon the knowledge gained during the Level 4 Diploma in Computing (L4DC).</p><p data-block-key=\"gbmc\">This qualification is designed to develop the specialist skills necessary to protect and secure data systems from ever-increasing threats in today’s evolving digital society.</p><p data-block-key=\"759p0\">A balance of academic and vocational learning will provide students with the necessary knowledge and skills essential in many cyber-security job roles.</p><p data-block-key=\"9u4vl\">Upon successful completion of the qualification, students will be able to go on to directly pursue a career in cyber security or complete the final year of a degree at one of the many universities which recognise NCC Education qualifications.</p><h3 data-block-key=\"494ui\">Entry Requirements</h3><hr/><p data-block-key=\"bjvs1\">For entry onto the NCC Education L5DCS/ L5DC CS course, students must have at least one of the following:</p><ul><li data-block-key=\"cdkii\">NCC Education Level 4 Diploma in Computing (L4DC) or the Level 4 Diploma in Business IT (L4DBIT).<br/>OR</li><li data-block-key=\"5ootu\">A local or international qualification, which is deemed to be of a similar level to the NCC Education Level 4 Diploma in Computing (L4DC) or the Level 4 Diploma in Business IT (L4DBIT) qualifications. This must be agreed with NCC Education in advance.</li></ul><p data-block-key=\"f859m\">If a potential student’s first language is not English, they must also reach the English Language requirements of either:</p><ul><li data-block-key=\"7brp5\">International English Language Testing System (IELTS) minimum score of 5.5 or above</li><li data-block-key=\"ba7no\">Alternatively, take the free NCC Education Higher English Placement Test, which is administered by our Accredited Partner Centres.</li></ul><p data-block-key=\"4fjch\">OR</p><ul><li data-block-key=\"afo12\">The Oxford Test of English is recognised for acceptance onto NCC Education programmes. An affordable, personalized test that fits you – it’s 100% online, flexible, fast, and available at Approved Test Centres across the globe. Plus, it’s the only language proficiency test certified by the University of Oxford.</li></ul><h3 data-block-key=\"7jb5v\">Units</h3><hr/><p data-block-key=\"8jp2a\">Students are required to complete six units comprising of five core units and one of the two elective units:</p><ul><li data-block-key=\"du71n\"><b>Business IT Project</b>: (Unit 1 core) – This module provides students with the opportunity to gain practical experience in developing system solutions to open-ended problems derived from the real world.</li><li data-block-key=\"2d8f4\"><b>Information Systems Analysis</b>: (Unit 2 core) – This module equips students with a range of tools to analyse the function and requirements of information systems, as well as the skills to compare systems analysis models and to examine them in the wider context of the Internet and the social, economic and political climate of an organisation.</li><li data-block-key=\"dhq5u\"><b>Network Security Threats and Defence Mechanisms *</b>: (Unit 3 core) – Provides students with the skills to eliminate or reduce the risks associated with network vulnerability and protects valuable information held by organisations.</li><li data-block-key=\"ai11o\"><b>Computer Forensics and Incident Investigation *</b>: (Unit 4 core) – Understanding the investigation requirements and prosecution of cyber criminals. Students will learn the necessary processes required for the acquisition, inspection, and reporting of information stored across computer networks related to criminal incidents.</li><li data-block-key=\"e0hnf\"><b>Ethical Hacking and Information Security Assessments *</b>: (Unit 5 core) – Understanding of the concept of ‘ethical’ hacking and the essential elements; such as information security, threats and attack vectors of information security, hacking and ethical hacking concepts including risk management.</li><li data-block-key=\"6sdv8\"><b>Professional Issues in IT </b>(1 elective) – This module highlights the professional issues that impact the development, deployment, maintenance and use of computer systems. It equips students with the knowledge surrounding social, ethical and legal issues applicable to the IT field and also a working understanding of software quality. It is recommended that students take this module if they have progressed from the L4DBIT.</li><li data-block-key=\"55ced\"><b>Analysis, Design and Implementation</b>: (2 elective) – Provides students with in-depth knowledge, skills and experience in the use of object-oriented techniques for the development of software. The unit also develops expertise in object-oriented analysis, design and coding, and the testing of systems.</li></ul><p data-block-key=\"2p6gm\">*The teaching and learning materials for core units three, four and five have been developed by the EC Council for NCC Education. Once students have completed these units they will be awarded a certificate of completion from the EC Council.</p><h3 data-block-key=\"83s17\">The EC Council</h3><hr/><p data-block-key=\"4aeno\">The International Council of E-Commerce Consultants, also known as EC-Council, is the world’s largest cyber security technical certification body. Operating in 145 countries globally, they are the owner and developer of the world-famous Certified Ethical Hacker (CEH), Computer Hacking Forensics Investigator (C|HFI), Certified Security Analyst (ECSA), Licence Penetration Testing (Practical) programmes, among others. They have trained and certified over 200,000 information security professionals globally that have influenced the cyber security mindset of countless organisations worldwide.</p><h3 data-block-key=\"eb45t\">Assessment</h3><hr/><p data-block-key=\"6ir89\">Assessment through examination and coursework assignments.</p>',66,3),(7,'Level 4 Diploma in Network Engineering (L4DNE)','<h3 data-block-key=\"t7pb4\">Overview</h3><hr/><p data-block-key=\"5a02i\">The Diploma of Network Engineering will prepare you for entry-level network engineering roles by providing the skills and knowledge required to design, operate, and maintain networks that play a crucial role in the infrastructure of industry and government organizations.</p><h3 data-block-key=\"fsror\">Course Objective</h3><hr/><p data-block-key=\"cm2e0\">This hands-on program prepares students for an exciting and on-high-demand networking career. The aim of the following units is to give learners with an understanding of the principles of networking technologies such as networking, Linux System Administration, Wireless, Firewall and Cisco Internetworking technologies. It is designed to impart knowledge about detailed knowledge of Computer Networks, various protocols used in Communication, Managing, and configuring Cisco Switches and Routers and various WAN technologies.</p><h3 data-block-key=\"3m4ns\">Entry Requirements</h3><hr/><p data-block-key=\"1i7c1\"><b>For entry onto the Level 4 Diploma in Networking, students must have at least one of the following:</b></p><ul><li data-block-key=\"d2rv3\">Holders of any local or international qualification deemed to be a similar level to either or Level 3 Diploma (UK).</li><li data-block-key=\"b9sdg\">Two passes in GCE A Level Examinations</li></ul><p data-block-key=\"d0tu9\">OR</p><ul><li data-block-key=\"bojkp\">University Entrance Examination (matriculation exam) Myanmar</li><li data-block-key=\"1fr7j\">Completion of equivalent High School qualification</li></ul><p data-block-key=\"fbosl\">OR</p><ul><li data-block-key=\"cvbsi\">International applicants must have completed 12 years of formal education.</li></ul><h3 data-block-key=\"cr0ln\">Units</h3><hr/><p data-block-key=\"7sboh\">Candidates must pass 6 Units to be awarded the Level 4 Diploma in Network Engineering certificate.</p><ul><li data-block-key=\"d0msc\"><b>Computer Networks</b> – This module helps students to develop a good understanding of basic theory and useful practical skills of networking and communication that are vital in today’s connected world.</li><li data-block-key=\"4988p\"><b>Computer Systems</b> – This module addresses the development of practical skills in the configuration, maintenance, fault finding and trouble-shooting of modern computer systems and develops knowledge of computer architecture.</li><li data-block-key=\"8cilf\"><b>Internetworking Technologies -</b> This module provides to understand the basic of Network Fundamentals, IP connectivity and IP Services, network access and security fundamentals .</li><li data-block-key=\"3ogav\"><b>Linux System Administration</b> - This modules introduces to Linux and using essential tools and provides all the concepts on Administration methods to Linux.</li><li data-block-key=\"bff1m\"><b>Wireless Networking</b> - This module provides to understand basic Wireless Technologies and wireless device fundamental and Wireless Security Standard and Wireless Basic Configuration .</li><li data-block-key=\"f5qd4\"><b>Firewall Technologies -</b> This module provides to understand Firewall Technologies and Usage of FortiGate Firewall and Palo Alto Firewall</li><li data-block-key=\"4uuo8\"><b>Python Programming for Network Engineers</b> - This modules helps students to develop a good understanding in the foundation of Python Programming Language</li></ul><p data-block-key=\"f4b5c\"></p>',57,4),(8,'Level 4 Diploma in Cyber Defense Operations (L4DCDO)','<h3 data-block-key=\"sz01a\">Overview</h3><hr/><p data-block-key=\"47utq\">The Cyber Defense Operations Diploma provides concepts and hands-on skills to identify Cyber Security threats and implement procedures to protect Cyber assets. Students will gain knowledge on how to prevent, detect and respond cyber threats in an enterprise network environment.</p><h3 data-block-key=\"7i59\">Course Objective</h3><hr/><p data-block-key=\"7lm52\">This course gives learners the necessary knowledge to begin studying for Cyber Security threats and defense mechanism such as SIEM and SOC Operations, Incident Handling, Vulnerability Management, Operating System Hardening and Malware Hunting. This course ensures learners have all the tools they need to appropriately respond to incidents, gather evidence for different types of investigations, and report the results.</p><h3 data-block-key=\"2nqs5\">Entry Requirements</h3><hr/><p data-block-key=\"2a96u\"><b>For entry onto the Level 4 Diploma in Networking, students must have at least one of the following:</b></p><ul><li data-block-key=\"8m7n1\">Holders of any local or international qualification deemed to be a similar level to either or Level 3 Diploma (UK).</li><li data-block-key=\"9mcqm\">Two passes in GCE A Level Examinations</li></ul><p data-block-key=\"b6qdp\">OR</p><ul><li data-block-key=\"cijjv\">University Entrance Examination (matriculation exam) Myanmar</li><li data-block-key=\"f560v\">Completion of equivalent High School qualification</li></ul><p data-block-key=\"fpn0v\">OR</p><ul><li data-block-key=\"669n2\">International applicants must have completed 12 years of formal education.</li></ul><h3 data-block-key=\"d34ug\">Units</h3><hr/><p data-block-key=\"157v8\"></p><p data-block-key=\"9qdm\">1.Network Engineering</p><p data-block-key=\"7o459\">2.Linux System Administration</p><p data-block-key=\"b0vli\">3.Incident Handling</p><p data-block-key=\"8ahai\">4.SIEM and SOC Operations</p><p data-block-key=\"2aoro\">5.Vulnerability Management</p><p data-block-key=\"a3rgi\">6.Operating System Hardening</p><p data-block-key=\"569ej\">7.Malware Hunting and Analysis</p>',53,4),(9,'Level 4 Diploma in Cyber Security (L4DCS)','<h3 data-block-key=\"sjgr1\">Overview</h3><hr/><p data-block-key=\"cef0d\">Diploma of Cyber Security course will prepare you to be a security professional with specialized expertise in cyber security courses such as ethical hacking, network penetration testing, system security, and web application penetration testing.</p><h3 data-block-key=\"19eb\">Course Objective</h3><hr/><p data-block-key=\"1ukoa\">The Cybersecurity program provides training for an entry-level to professional level career in Cybersecurity industry. The program includes basic training in security, networks, and linux system to handle identity and access management, system administration, logging and monitoring, web security, system threats and vulnerabilities.</p><h3 data-block-key=\"7ouf4\">Entry Requirement </h3><ul><li data-block-key=\"38n1b\">Holders of any local or international qualification deemed to be a similar level to either or Level 3 Diploma (UK).</li><li data-block-key=\"d14ro\">Two passes in GCE A Level Examinations</li></ul><p data-block-key=\"92vna\">OR</p><ul><li data-block-key=\"aqomq\">University Entrance Examination (matriculation exam) Myanmar. </li><li data-block-key=\"79as6\">Completion of equivalent High School qualification</li></ul><p data-block-key=\"bippl\">OR</p><ul><li data-block-key=\"7ci6g\">International applicants must have completed 12 years of formal Education.</li></ul><h3 data-block-key=\"7cq3u\">Units</h3><hr/><p data-block-key=\"3l97s\">1.<b>Computer Systems</b> - This module addresses the development of practical skills in the configuration, maintenance, fault finding and trouble-shooting of modern computer systems and develops knowledge of computer architecture.</p><p data-block-key=\"2dvrq\">2.<b>Computer Networks</b> - This module helps students to develop a good understanding of basic theory and useful practical skills of networking and communication that are vital in today’s connected world.</p><p data-block-key=\"7g3be\">3<b>.Linux for Pentesters</b></p><p data-block-key=\"25r28\">4.<b>Windows Active Directory Pentest</b></p><p data-block-key=\"2j2n0\">5.<b>Network Penetration Testing</b> - This module introduces the principles of Penetration Testing, gives the students the opportunity to learn about different tools and techniques in Penetration Testing and real-world Penetration Testing Cases and they need to practically apply some of the tools ethically.</p><p data-block-key=\"38ug0\">6.<b>Web Application Penetration Testing</b> - This module introduces the principles of web application, gives the students the opportunity to learn about different tools and techniques in Web App Penetration Testing, how to discover and exploit key web application flaws. and real-world web app pentest cases and they need to practically apply some of the tools ethically.</p><p data-block-key=\"c35dj\">(Optional)</p><p data-block-key=\"6djgf\">7.<b>Python for Pentesters</b></p><p data-block-key=\"11dbu\"></p>',54,4),(10,'Level 4 Diploma in Networks and Cyber Security (L4DNCS)','<h3 data-block-key=\"pyh8t\">Overview</h3><hr/><p data-block-key=\"hoks\">Diploma of Networks and Cyber Security course will prepare you to develop skills in networking technologies and as well as cyber security courses to prepare you to sit one or more industry certification exams.</p><h3 data-block-key=\"2rih5\">Couse Objective</h3><hr/><p data-block-key=\"2pja6\">This hands-on program prepares students for an exciting and on-high-demand networking and cyber security career. As a graduate of the Diploma in Networks and Cyber Security, you will be able to choose from a variety of roles concerned with network and cyber security. The aim of the following units is to give learners with an understanding of the principles of networking technologies such as Networking, Linux, Cisco Internetworking technologies and network security.</p><h3 data-block-key=\"6stf1\">Entry Requirement </h3><hr/><p data-block-key=\"42q4l\"></p><ul><li data-block-key=\"7qsn7\">Holders of any local or international qualification deemed to be a similar level to either or Level 3 Diploma (UK).</li><li data-block-key=\"alk54\">Two passes in GCE A Level Examinations</li></ul><p data-block-key=\"efcfc\">OR</p><ul><li data-block-key=\"7r6im\">University Entrance Examination (matriculation exam) Myanmar.</li><li data-block-key=\"4a203\">Completion of equivalent High School qualification</li></ul><p data-block-key=\"3p4h4\">OR</p><ul><li data-block-key=\"970qr\">International applicants must have completed 12 years of formal Education.</li></ul><h3 data-block-key=\"41tmc\">Units</h3><hr/><p data-block-key=\"cf9cu\">1.<b>Computer Networks</b> - This module helps students to develop a good understanding of basic theory and useful practical skills of networking and communication that are vital in today’s connected world.</p><p data-block-key=\"fkk4s\">2.<b>Computer Systems </b>– This module addresses the development of practical skills in the configuration, maintenance, fault finding and trouble-shooting of modern computer systems and develops knowledge of computer architecture.</p><p data-block-key=\"9btit\">3.<b>Linux System Administration</b> - This modules introduces to Linux and using essential tools and provides all the concepts on Administration methods to Linux.</p><p data-block-key=\"58vn\">4.Pentest 101 -This module</p><p data-block-key=\"5qfa1\">5.<b>Network Penetration Testing</b> - This module introduces the principles of Penetration Testing, gives the students the opportunity to learn about different tools and techniques in Penetration Testing and real-world Penetration Testing Cases and they need to practically apply some of the tools ethically.</p><p data-block-key=\"2vfqq\">6.<b>Web Application Penetration Testing</b> - introduces the principles of web application, gives the students the opportunity to learn about different tools and techniques in Web App Penetration Testing, how to discover and exploit key web application flaws. and real-world web app pentest cases and they need to practically apply some of the tools ethically.</p><p data-block-key=\"bja15\">7.<b>Internetworking Technologies</b> -This module provides to understand the basic of Network Fundamentals, IP connectivity and IP Services, network access and security fundamentals .</p><p data-block-key=\"831h0\">8.<b>Firewall Technologies</b> - Firewall Technologies - This module provides to understand Firewall Technologies and Usage of FortiGate Firewall and Palo Alto Firewall</p><p data-block-key=\"4f3h\"></p>',56,4),(11,'BSc (Hons) Cyber Security and Networking','<h3 data-block-key=\"ckdeb\">Overview</h3><hr/><p data-block-key=\"dvpce\">The BSc (Hons) Cyber Security and Networking top-up degree is delivered online by NCC Education and is a natural progression from our <a href=\"https://www.nccedu.com/qualifications/computing/level-5-diploma-in-computing-with-cyber-security-l5dcs/\">Level 5 Diploma in Computing with Cyber Security</a>. This final year is awarded by the University of Central Lancashire (abbreviated UCLan).</p><p data-block-key=\"7nuiu\">The programme aims to equip graduates with the knowledge, technical and interpersonal skills necessary for taking part in the design, implementation, management and security of modern computer systems. It will enable them to work as professionally-minded cyber security practitioners able to meet the responsibilities and challenges demanded in the cyber security industry.</p><p data-block-key=\"aaqqp\">By working in partnership with CompTIA, graduates of this programme will be offered the opportunity to achieve an additional professional IT certificate in either Cyber Security (CySA+) or Cloud Infrastructure (Cloud+).</p><p data-block-key=\"20o95\">There are a number of advantages to a degree which is both vocational and academic. This particular programme equips students with technical computing skills that will enable them to enter a number of varied senior roles in the following areas:</p><ul><li data-block-key=\"1hdk6\">Security Analyst</li><li data-block-key=\"dnjpn\">Security Engineer</li><li data-block-key=\"cknd\">Security Consultant/Specialist</li><li data-block-key=\"ep8vs\">Database Administrator</li><li data-block-key=\"dlbe4\">Systems Analysis</li><li data-block-key=\"96spv\">Systems Design</li></ul><h3 data-block-key=\"fca40\">Entry Requirements</h3><hr/><p data-block-key=\"e7v2b\">Enrol with one of the following qualifications:</p><ul><li data-block-key=\"1roa7\">NCC Education Level 5 Diploma in Computing with Cyber Security (L5DC (CS))</li><li data-block-key=\"bu16e\">Pearson Higher National Diploma (HND) in Computing (inc. all specialist pathways)</li><li data-block-key=\"54n7r\">ATHE Level 4 and Level 5 Diploma in Computing</li><li data-block-key=\"6gsep\">Qualifi Level 5 Diploma in Cyber Security</li><li data-block-key=\"7prq4\">SQA Advanced Diploma in Computing: Networking</li><li data-block-key=\"80f1b\">SQA HND Cyber Security</li><li data-block-key=\"dki38\">Any similar qualification approved by NCC Education and UCLan</li></ul><h3 data-block-key=\"5ukfs\">How Students Study</h3><hr/><p data-block-key=\"44nh9\">Units comprise of weekly video lectures, tutorial exercises, discussion forums and live chat sessions with subject experts. Students will have the opportunity to interact with other students from around the world.</p><h3 data-block-key=\"db7r3\">Qualification Structure</h3><hr/><p data-block-key=\"1ggv4\">Students study five core units;</p><ul><li data-block-key=\"5jbib\">Advanced Database Management Systems</li><li data-block-key=\"7nuuc\">Corporate Communication Systems Management</li><li data-block-key=\"4sb04\">Cloud and Virtualisation Security</li><li data-block-key=\"a7dur\">Cyber Security Management</li><li data-block-key=\"g10d\">Information Systems Projects</li></ul><h3 data-block-key=\"6h1e9\">Immersive Labs</h3><hr/><p data-block-key=\"55ou3\">NCC Education has partnered with Immersive Labs to offer students the opportunity to gain hands on experience in tackling cybersecurity challenges using a cloud-based platform. This will be utilised by the Module Leaders to offer a greater depth of understanding to cyber security challenges faced by organisations.</p><h3 data-block-key=\"97fgn\">Learn More</h3><hr/><p data-block-key=\"djf99\">Learn more about the University of Central Lancashire BSc (Hons) Cyber Security and Networking Top-Up Degree <a href=\"https://www.youtube.com/watch?v=Ker_LWqcTQw\">here</a>.</p><p data-block-key=\"gr2ww\"></p><p data-block-key=\"ev791\">.</p>',71,5),(12,'Level 4 Diploma in Programming  (L4DP)','<h3 data-block-key=\"u6ogh\">Overview</h3><hr/><p data-block-key=\"1tcb7\">This course is for learners with next to zero prior programming background, however a desire to comprehend computational ways to deal with critical thinking. This course starts by introducing the student to basic concepts, programming languages and terminology of software development and helps them gain the skills that are required for writing and designing a program.</p><h3 data-block-key=\"1i0l6\">Course Objective</h3><hr/><p data-block-key=\"a51ds\"></p><p data-block-key=\"igg3\">The aim of the following units is to give learners with an understanding of the principles of programming in java, C#, C++, Python, exploring object-oriented nature of the language, offering multi-platform versatility and how to produce effective code. It is designed for students with some programming experience but also enables non-technical staff to gain a perspective of software development.</p><h3 data-block-key=\"2oluo\">Entry Requirement </h3><hr/><p data-block-key=\"4c30i\"></p><ul><li data-block-key=\"ahkgp\">Holders of any local or international qualification deemed to be a similar level to either or Level 3 Diploma (UK).</li><li data-block-key=\"agsds\">Two passes in GCE A Level Examinations</li></ul><p data-block-key=\"7d028\">OR</p><ul><li data-block-key=\"atf5u\">University Entrance Examination (matriculation exam) Myanmar.</li><li data-block-key=\"3mmmb\">Completion of equivalent High School qualification</li></ul><p data-block-key=\"bkfd4\">OR</p><ul><li data-block-key=\"febug\">International applicants must have completed 12 years of formal Education.</li></ul><h3 data-block-key=\"8tksd\">Units</h3><p data-block-key=\"9ommt\">1.C# Programming - This module allows students to understand the about of C sharp Platform and the Object-Oriented Programming and Paradigm .</p><p data-block-key=\"5f1o7\">2.Java Programming - This module allows students to understand the fundaments of Java Programming Language.</p><p data-block-key=\"f0rem\">3.<b>Database Management System</b> - This module allows students to develop skills in the design and development of databases and database management systems, as well as investigating enterprise applications of databases.</p><p data-block-key=\"9kdcm\">4.Data Structures and Algorithms</p><p data-block-key=\"87r1d\">5.C++ Programming - This module describe the advantages of C++, the programming process, and the compilation process</p><p data-block-key=\"d2el7\">6.Python Programming - This</p><p data-block-key=\"5pp9o\">7.Web Design and Development Fundamentals</p><p data-block-key=\"e4j78\">8.<b>Computer Systems</b> - This module addresses the development of practical skills in the configuration, maintenance, fault finding and trouble-shooting of modern computer systems and develops knowledge of computer architecture.</p>',58,4),(13,'Level 4 Diploma in Web and Mobile Development (L4DWM)','<h3 data-block-key=\"rdrf0\">Overview</h3><hr/><p data-block-key=\"d81ma\">Web designing and development are skills that are required in almost all industries these days. Be it working as an individual web developer or working as a part of a large team, advanced expertise always keeps a candidate one step ahead of the others. Turn passion of coding and website designing as career. Learn how to build dynamic websites, meet e-Commerce solutions, mobile applications, deploying on server and user interfaces.</p><h3 data-block-key=\"bitfj\">Course Objective</h3><hr/><p data-block-key=\"cnm7g\">This course will present students with the information and skills needed to use HTML, CSS, and JavaScript to build responsive websites. Beginning with web basics and ending with PHP students will leave the course with the necessary skills and knowledge to jumpstart their career in web development. This course also teaches students how to create functional and beautiful applications for mobile devices. Students will learn all the back-end software used in the industry to create apps for mobile devices.</p><h3 data-block-key=\"6must\">Entry Requirement </h3><hr/><p data-block-key=\"dmt7u\"></p><ul><li data-block-key=\"fe04k\">Holders of any local or international qualification deemed to be a similar level to either or Level 3 Diploma (UK).</li><li data-block-key=\"7neqc\">Two passes in GCE A Level Examinations</li></ul><p data-block-key=\"blmgi\">OR</p><ul><li data-block-key=\"2klin\">University Entrance Examination (matriculation exam) Myanmar.</li><li data-block-key=\"4884v\">Completion of equivalent High School qualification</li></ul><p data-block-key=\"7osm2\">OR</p><ul><li data-block-key=\"3q5eo\">International applicants must have completed 12 years of formal Education.</li></ul><h3 data-block-key=\"a6ms1\">Units</h3><hr/><ul><li data-block-key=\"6g1im\"><b>Web Development Technologies</b> - This module helps students to understand web development process and essential knowledge for web development.</li><li data-block-key=\"62qcp\"><b>Web Design and Front-End Web Development -</b> This module introduces about the fundamental of web design using HTML,CSS and JavaScript.</li><li data-block-key=\"2b3ch\"><b>Database and Back-End Development</b> - This module introduces to the Database Technology and Object-Oriented Programming.</li><li data-block-key=\"cvb0f\"><b>Web Application Security</b> - This module provides about the Web Application Hacker&#x27;s Toolkit and helps to understand about Security in Web Application.</li><li data-block-key=\"4l47\"><b>Designing and Prototyping Mobile App User Interface</b> - This module introduces to mobile app development processes and prototyping and design thinking fundamentals.</li><li data-block-key=\"5mv3p\"><b>Android Components and Architecture</b> - This modules produces to work with Android architecture components.</li><li data-block-key=\"f13i7\"><b>Mobile App Development with Java &amp; Kotlin</b> - This modules explain about the Java and mobile development and Android Lifecycle and Material App Design .</li></ul>',59,4),(14,'Level 4 Diploma in Cloud and Server Infrastructure (L4DCSI)','<h3 data-block-key=\"or55j\">Overview</h3><hr/><p data-block-key=\"5q112\">This diploma has been designed to equip professionals with knowledge and competencies of cloud computing and server technologies in order that they gain practical and comprehensive knowledge of cloud and server technologies for business.</p><h3 data-block-key=\"d3ur\">Course Objective</h3><hr/><p data-block-key=\"f4v2l\">This course will help to gain the knowledge on technologies, processes, and mechanisms required to build cloud and server infrastructure. Enterprises network environments are centrally managed and need to be robust, scalable, and secure. Enterprises, therefore, requires a server-based platform to cater to its ever-changing business requirements. This course would help you with the skill and knowledge required to help you manage, build, operate, optimize, and design cloud and server technologies. This course also covered professional certificates such as RHCSA, RHCE, AWS, and Azure.</p><h3 data-block-key=\"cjkkg\">Entry Requirement </h3><hr/><p data-block-key=\"8g42r\"></p><ul><li data-block-key=\"cl408\">Holders of any local or international qualification deemed to be a similar level to either or Level 3 Diploma (UK).</li><li data-block-key=\"a7ofb\">Two passes in GCE A Level Examinations</li></ul><p data-block-key=\"c50el\">OR</p><ul><li data-block-key=\"4p8q0\">University Entrance Examination (matriculation exam) Myanmar.</li><li data-block-key=\"307tl\">Completion of equivalent High School qualification</li></ul><p data-block-key=\"b4b09\">OR</p><ul><li data-block-key=\"bikvc\">International applicants must have completed 12 years of formal education.</li></ul><h3 data-block-key=\"1pdeg\">Units</h3><ul><li data-block-key=\"2rql\"><b>Network Engineering</b> - This module helps students to develop a good understanding of basic theory and useful practical skills of networking and communication that are vital in today’s connected world.</li><li data-block-key=\"26rmi\"><b>Windows Server Administration</b> - This module helps students to understand window server networking and introduction to PowerShell</li><li data-block-key=\"2rca7\"><b>Linux System Administration</b> - This module introduces Linux and uses essential tools and provides all the concepts on Administration methods to Linux.</li><li data-block-key=\"ftklr\"><b>Enterprise Linux Server Administration</b> - This module helps students to understand System Optimization Basics, logging and Routing, Advanced Networking, File System Management and storage management.</li><li data-block-key=\"712mf\"><b>Cloud Computing with Amazon Web Services (AWS)</b> -This module provides about cloud computing and AWS account basic, Compute Services and AWS Storage, database service, SNS and management tools and knows how to deploy AWS Services.</li><li data-block-key=\"a2gns\"><b>Microsoft Azure Cloud Administration</b> -This module introduces about Manage Azure subscriptions and resources and understanding about Deploy and managing virtual machines.</li></ul>',55,4),(15,'Level 5 Diploma in Advanced Networking and Enterprise Services(L5DANES)','<h3 data-block-key=\"68y8d\">Overview</h3><hr/><p data-block-key=\"3uvtd\">The objective of the course is to familiarize students with basics and Advance Networking. This course is job oriented course and designed to produce networking professionals capable of implementing, administration, maintaining Networks and overall systems .</p><h3 data-block-key=\"c53hv\">Entry Requirement</h3><hr/><p data-block-key=\"dihve\"></p><ul><li data-block-key=\"bbtln\">Holders of any local or international qualification deemed to be a similar level to either or Level 4 Diploma (UK).</li></ul><p data-block-key=\"462s0\">OR</p><ul><li data-block-key=\"dj8u0\">NCC Education Level 4 Diploma in Computing (L4DC).</li></ul><p data-block-key=\"9k2qe\"></p><p data-block-key=\"4p2f2\"><b>Direct Entry at Other Points</b></p><p data-block-key=\"93ej6\">The majority of students are expected to join the NCC Education Information Technology Journey at Level 4 or earlier. However, applications will be accepted for entry at any point and will be accepted, by means of documented evidence, using the following criteria:</p><ul><li data-block-key=\"2s9i1\">The applicant’s general educational background is appropriate for the level of entry.</li><li data-block-key=\"4ta4h\">The applicant’s knowledge of computing is both equivalent to, and appropriate for, the level of entry.</li></ul><h4 data-block-key=\"1b942\">Units</h4><ul><li data-block-key=\"bj7n\">Advanced Network Routing and Services</li><li data-block-key=\"3s0t0\">Enterprise Core Network and Architecture</li><li data-block-key=\"e0inf\">Network Automation and Programmability</li><li data-block-key=\"1tsgt\">Software Defined Networking and Network Function Virtualization </li></ul><p data-block-key=\"2as4d\"></p>',70,6),(16,'Level 5 Diploma in Cyber Security (L5DCS)','<h3 data-block-key=\"5eo3o\">Level 5 Diploma in Cyber Security (L5DCS)</h3><h3 data-block-key=\"9gsdl\">Entry Requirement</h3><hr/><p data-block-key=\"8avj8\"></p><ul><li data-block-key=\"d7ebg\">Holders of any local or international qualification deemed to be a similar level to either or Level 4 Diploma (UK).</li></ul><p data-block-key=\"18bci\">OR</p><ul><li data-block-key=\"3iv1d\">NCC Education Level 4 Diploma in Computing (L4DC).</li></ul><p data-block-key=\"2u4sm\"></p><p data-block-key=\"70j10\"><b>Direct Entry at Other Points</b></p><p data-block-key=\"682jc\">The majority of students are expected to join the NCC Education Information Technology Journey at Level 4 or earlier. However, applications will be accepted for entry at any point and will be accepted, by means of documented evidence, using the following criteria:</p><ul><li data-block-key=\"hd4e\">The applicant’s general educational background is appropriate for the level of entry.</li><li data-block-key=\"1qgfs\">The applicant’s knowledge of computing is both equivalent to, and appropriate for, the level of entry.</li></ul><h4 data-block-key=\"55qlg\">Units</h4><ul><li data-block-key=\"fqoj5\">Advanced Web Application Pentest</li><li data-block-key=\"d16t5\">Advanced AD &amp; Network Pentest</li><li data-block-key=\"at3d1\">x64 Assembly Language for Pentest</li><li data-block-key=\"bsprb\">Android Application Pentest</li><li data-block-key=\"8efdv\">Exploit Development</li><li data-block-key=\"4tbsq\">Cryptography For Pentesters</li></ul>',68,6),(17,'Level 5 Diploma in Programming (L5DIP)','<h4 data-block-key=\"pl8ru\">Level 5 Diploma in Programming (L5DIP)</h4><h3 data-block-key=\"6td90\">Entry Requirement</h3><hr/><p data-block-key=\"5tokp\"></p><ul><li data-block-key=\"c7909\">Holders of any local or international qualification deemed to be a similar level to either or Level 4 Diploma (UK).</li></ul><p data-block-key=\"2nltm\">OR</p><ul><li data-block-key=\"asmgb\">NCC Education Level 4 Diploma in Computing (L4DC).</li></ul><p data-block-key=\"7ib6s\"></p><p data-block-key=\"51n40\"><b>Direct Entry at Other Points</b></p><p data-block-key=\"dcg1i\">The majority of students are expected to join the NCC Education Information Technology Journey at Level 4 or earlier. However, applications will be accepted for entry at any point and will be accepted, by means of documented evidence, using the following criteria:</p><ul><li data-block-key=\"7bv9p\">The applicant’s general educational background is appropriate for the level of entry.</li><li data-block-key=\"94hjo\">The applicant’s knowledge of computing is both equivalent to, and appropriate for, the level of entry.</li></ul><h3 data-block-key=\"9f9et\">Units</h3><hr/><p data-block-key=\"3cof3\"></p><ul><li data-block-key=\"cimji\">Advanced Java (Spring Framework)</li><li data-block-key=\"48h2h\">Agile Project Management Tools &amp; Framework( Scrum &amp; Jira)</li><li data-block-key=\"7l8d\">Artificial Intelligence</li><li data-block-key=\"80r2f\">Big Data</li><li data-block-key=\"5ka29\">Applied Data Science with Python</li><li data-block-key=\"88v2q\">Web Application Development with Laravel Framework</li></ul>',69,6),(19,'Master of Business Administration (UBIS)','<h4 data-block-key=\"l8yir\">Master of Business Administration (UBIS)</h4><h3 data-block-key=\"epg86\">Accreditations</h3><p data-block-key=\"819pr\">UBIS has been certified by EDUQUA Swiss certification since 2012. EDUQUA is the first Swiss quality label geared towards providers of adult learning programs. UBIS has received specialized accreditation through the International Accreditation Council for Business Education (IACBE) USA. UBIS is a full member of European Foundation for Management Development(EFMD). EFMD is an accreditation body for business schools, business school programs, and corporate universities. UBIS is listed in the CHEA Database as programmatically accredited by IACBE. CHEA is a U.S. association of degree-granting colleges and universities and recognizes institutional and programmatic accrediting organizations. CHEA is the only national organization focused exclusively on higher education accreditation</p><p data-block-key=\"agjr1\"></p><embed alt=\"mba3.jpg\" embedtype=\"image\" format=\"left\" id=\"78\"/><p data-block-key=\"ddoi4\"></p><embed alt=\"mba4.jpg\" embedtype=\"image\" format=\"left\" id=\"79\"/><p data-block-key=\"8nfr0\"></p><embed alt=\"mba6.jpg\" embedtype=\"image\" format=\"left\" id=\"80\"/><p data-block-key=\"2cn7j\"></p><embed alt=\"mba7.jpg\" embedtype=\"image\" format=\"left\" id=\"81\"/><p data-block-key=\"appgk\"></p><embed alt=\"mba8.jpg\" embedtype=\"image\" format=\"left\" id=\"82\"/><p data-block-key=\"364u7\"></p><embed alt=\"mba10.jpg\" embedtype=\"image\" format=\"left\" id=\"83\"/><p data-block-key=\"5oa44\"></p><embed alt=\"mba25.jpg\" embedtype=\"image\" format=\"left\" id=\"84\"/><p data-block-key=\"3fe1k\"></p>',75,7);
/*!40000 ALTER TABLE `backend_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_coursedocumentrelation`
--

DROP TABLE IF EXISTS `backend_coursedocumentrelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_coursedocumentrelation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sort_order` int DEFAULT NULL,
  `courseName_id` bigint NOT NULL,
  `document_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `backend_coursedocume_document_id_ffd1479f_fk_wagtaildo` (`document_id`),
  KEY `backend_coursedocumentrelation_courseName_id_78ad6514` (`courseName_id`),
  CONSTRAINT `backend_coursedocume_courseName_id_78ad6514_fk_backend_c` FOREIGN KEY (`courseName_id`) REFERENCES `backend_course` (`id`),
  CONSTRAINT `backend_coursedocume_document_id_ffd1479f_fk_wagtaildo` FOREIGN KEY (`document_id`) REFERENCES `wagtaildocs_document` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_coursedocumentrelation`
--

LOCK TABLES `backend_coursedocumentrelation` WRITE;
/*!40000 ALTER TABLE `backend_coursedocumentrelation` DISABLE KEYS */;
INSERT INTO `backend_coursedocumentrelation` VALUES (4,0,11,3),(5,0,2,4),(6,1,2,5),(7,0,1,6),(8,1,1,7),(9,0,3,8),(10,1,3,9),(11,0,4,10),(12,1,4,11),(13,0,5,12),(14,1,5,13),(15,0,6,14),(16,1,6,15);
/*!40000 ALTER TABLE `backend_coursedocumentrelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_courseunitrelation`
--

DROP TABLE IF EXISTS `backend_courseunitrelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_courseunitrelation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sort_order` int DEFAULT NULL,
  `Unit_Title_id` bigint NOT NULL,
  `courseName_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `backend_courseunitre_Unit_Title_id_8aa2c442_fk_backend_u` (`Unit_Title_id`),
  KEY `backend_courseunitrelation_courseName_id_559c98d3` (`courseName_id`),
  CONSTRAINT `backend_courseunitre_courseName_id_559c98d3_fk_backend_c` FOREIGN KEY (`courseName_id`) REFERENCES `backend_course` (`id`),
  CONSTRAINT `backend_courseunitre_Unit_Title_id_8aa2c442_fk_backend_u` FOREIGN KEY (`Unit_Title_id`) REFERENCES `backend_unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_courseunitrelation`
--

LOCK TABLES `backend_courseunitrelation` WRITE;
/*!40000 ALTER TABLE `backend_courseunitrelation` DISABLE KEYS */;
INSERT INTO `backend_courseunitrelation` VALUES (2,0,2,2),(3,1,3,2);
/*!40000 ALTER TABLE `backend_courseunitrelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_faq`
--

DROP TABLE IF EXISTS `backend_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_faq` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Question` longtext NOT NULL,
  `Answer` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_faq`
--

LOCK TABLES `backend_faq` WRITE;
/*!40000 ALTER TABLE `backend_faq` DISABLE KEYS */;
INSERT INTO `backend_faq` VALUES (1,'Q. Who should take diploma course?','Students join our diploma courses for a variety of reasons and come from diverse backgrounds, professions, and age groups. With our diploma  courses, you can advance your skill-set or begin a career change and take the next step in your formal education.'),(2,'Q.What are the entry requirements to join diploma?','<p data-block-key=\"89y5n\">For entry onto the Diplomas, students must have at least one of the following: </p><ul><li data-block-key=\"d32ft\">Holders of any local or international qualification deemed to be a similar level to either or Level 3 Diploma (UK).</li><li data-block-key=\"13tq\">Two passes in GCE A Level Examinations. </li></ul><p data-block-key=\"9706b\">(OR) </p><ul><li data-block-key=\"ebjcr\">University Entrance Examination (matriculation exam) Myanmar. </li><li data-block-key=\"4vg3\">Completion of equivalent High School qualification </li></ul><p data-block-key=\"3q4an\">(OR)</p><ul><li data-block-key=\"7bp3q\"> International applicants must have completed 12 years of formal education.</li></ul>'),(3,'Q. What is the difference between Academic Diploma and Industry Focus Diploma?','<p data-block-key=\"qdxfp\"><b>Academic Diploma</b> is an official Diploma awarded directly by NCC Education in the UK. You can study at KBTC from Level 3 Foundation Diploma to UK Degree or you can also study at UK Universities. This is a suitable Diploma course for students who are trying to get a Bachelor&#x27;s degree from a foreign university. </p><p data-block-key=\"9jake\"><b>Industry Focus Diploma</b> is a Diploma course designed to help you enter the IT industry. All courses are designed to be Up to Date which are based on the latest technology trends. To continue your education after completing the Industry Focus Diploma, you can join the Academic Diploma course and walk the Degree Pathway.</p>'),(4,'Q. How long is the diploma course?','Duration of the diploma program is approximately 12 months to 24 months'),(5,'Q. How can I choose a course?','<p data-block-key=\"jyx2x\">Visit <a href=\"https://www.kbtc.edu.mm/degree_pathway/all/\">Degree Pathway catalog</a> to browse our offerings. In addition to searching by course name ,you can also search by subject to ensure you find a course that reflects your interests.</p>'),(6,'Q. How do I get Personal Course Consultation?','<p data-block-key=\"kns55\">Still not sure what course is right for you? We are just a call away from you for for further consultation.</p><p data-block-key=\"2mevk\"><a href=\"tel:09 777 049 551\">09 777 049 551</a></p><p data-block-key=\"d83jq\"><a href=\"tel:09 777 049 552\">09 777 049 552</a></p><p data-block-key=\"eua2i\"><a href=\"tel:09 799 606 898\">09 799 606 898</a></p>');
/*!40000 ALTER TABLE `backend_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_gallery`
--

DROP TABLE IF EXISTS `backend_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_gallery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) NOT NULL,
  `photo_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `backend_gallery_photo_id_70055b56_fk_wagtailimages_image_id` (`photo_id`),
  CONSTRAINT `backend_gallery_photo_id_70055b56_fk_wagtailimages_image_id` FOREIGN KEY (`photo_id`) REFERENCES `wagtailimages_image` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_gallery`
--

LOCK TABLES `backend_gallery` WRITE;
/*!40000 ALTER TABLE `backend_gallery` DISABLE KEYS */;
INSERT INTO `backend_gallery` VALUES (5,'KBTC Graduation Ceremony',29),(7,'KBTC Graduation Ceremony',31),(8,'KBTC Graduation Ceremony',32),(9,'KBTC Graduation Ceremony',34),(10,'KBTC Graduation Ceremony',44),(11,'KBTC Graduation Ceremony',45),(12,'KBTC Graduation Ceremony',48),(13,'KBTC Graduation Ceremony',47),(14,'KBTC University (School of IT)',39),(15,'KBTC University (School of IT)',40),(16,'KBTC University (School of IT)',38),(17,'KBTC University (School of IT)',42),(18,'Network Lab',37),(19,'Classroom',43),(20,'Classroom',35),(21,'Classroom',36);
/*!40000 ALTER TABLE `backend_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_levels`
--

DROP TABLE IF EXISTS `backend_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_levels` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `levelName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_levels`
--

LOCK TABLES `backend_levels` WRITE;
/*!40000 ALTER TABLE `backend_levels` DISABLE KEYS */;
INSERT INTO `backend_levels` VALUES (1,'Level 3'),(2,'Level 4 (Academic Focus)'),(3,'Level 5 (Academic)'),(4,'Level 4 (Industry Focus)'),(5,'Level 6 (Bachelor Degree)'),(6,'Level 5 (Industry Focus)'),(7,'Master of Business Administration (UBIS)');
/*!40000 ALTER TABLE `backend_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_schoolcampusrelation`
--

DROP TABLE IF EXISTS `backend_schoolcampusrelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_schoolcampusrelation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sort_order` int DEFAULT NULL,
  `campusName_id` bigint NOT NULL,
  `schoolName_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `backend_schoolcampus_campusName_id_2086ed05_fk_backend_c` (`campusName_id`),
  KEY `backend_schoolcampusrelation_schoolName_id_baf53fa7` (`schoolName_id`),
  CONSTRAINT `backend_schoolcampus_campusName_id_2086ed05_fk_backend_c` FOREIGN KEY (`campusName_id`) REFERENCES `backend_campus` (`id`),
  CONSTRAINT `backend_schoolcampus_schoolName_id_baf53fa7_fk_backend_s` FOREIGN KEY (`schoolName_id`) REFERENCES `backend_schoolinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_schoolcampusrelation`
--

LOCK TABLES `backend_schoolcampusrelation` WRITE;
/*!40000 ALTER TABLE `backend_schoolcampusrelation` DISABLE KEYS */;
INSERT INTO `backend_schoolcampusrelation` VALUES (1,0,4,1);
/*!40000 ALTER TABLE `backend_schoolcampusrelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_schoolinfo`
--

DROP TABLE IF EXISTS `backend_schoolinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_schoolinfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `schoolName` varchar(100) NOT NULL,
  `schoolContact` longtext NOT NULL,
  `missions` longtext NOT NULL,
  `facebookLink` varchar(200) NOT NULL,
  `linkedinLink` varchar(200) NOT NULL,
  `youtubeLink` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_schoolinfo`
--

LOCK TABLES `backend_schoolinfo` WRITE;
/*!40000 ALTER TABLE `backend_schoolinfo` DISABLE KEYS */;
INSERT INTO `backend_schoolinfo` VALUES (1,'KBTC University (School of Information Technology)','[{\"type\": \"Phone\", \"value\": {\"phone\": \"09777049551\"}, \"id\": \"1ca7ea5a-509b-4ec7-9eca-6ff2db30224e\"}]','<p data-block-key=\"9x9xe\">Mission!</p>','https://www.facebook.com/KBTCUniversitySchoolofIT','https://www.linkedin.com/company/kbtc-college/','https://www.youtube.com/channel/UCFGBIJXXVhvdRB5UWwADMZw');
/*!40000 ALTER TABLE `backend_schoolinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_unit`
--

DROP TABLE IF EXISTS `backend_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_unit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `unitTitle` varchar(100) NOT NULL,
  `overview` longtext NOT NULL,
  `coverPhoto_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `backend_unit_coverPhoto_id_9c76a56e_fk_wagtailimages_image_id` (`coverPhoto_id`),
  CONSTRAINT `backend_unit_coverPhoto_id_9c76a56e_fk_wagtailimages_image_id` FOREIGN KEY (`coverPhoto_id`) REFERENCES `wagtailimages_image` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_unit`
--

LOCK TABLES `backend_unit` WRITE;
/*!40000 ALTER TABLE `backend_unit` DISABLE KEYS */;
INSERT INTO `backend_unit` VALUES (1,'Computer Networks','<h3 data-block-key=\"d1gx4\">Overview</h3><hr/><p data-block-key=\"55i4v\">This unit aims to provide the learner with a broad introduction to the networking and communication systems commonly employed in a business environment, along with an understanding of the underlying theoretical frameworks and of associated issues, such as the testing and security of these systems. </p><h3 data-block-key=\"ei4dh\">Assessment</h3><hr/><p data-block-key=\"f6ivm\">This module is assessed by means of a global assignment.</p>',NULL),(2,'Study and Communication Skills','<p data-block-key=\"2v8sq\"> <b>Study and Communication Skills</b> – equips students with the essential study skills needed to succeed at university level. They will learn the basic skills necessary to conduct independent research, write academic papers, give formal oral presentations and apply what has been taught during lectures.</p>',NULL),(3,'Culture Studies','<p data-block-key=\"y7pre\"><b>Culture Studies – </b>enables students to gain awareness and increased understanding of other cultures and their own alongside the impact of a more digitised world on those cultures. Students will be able to apply their understanding of culture to other aspects of their course and to their plans for further study and work. The course will, in part, help prepare students for studying and/or working abroad or working for multi-national companies in our highly interconnected, digitised world.</p>',NULL);
/*!40000 ALTER TABLE `backend_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (48,'admin','logentry'),(50,'auth','group'),(49,'auth','permission'),(51,'auth','user'),(6,'backend','academic'),(18,'backend','academiccourserelation'),(17,'backend','assessmentrelation'),(7,'backend','campus'),(8,'backend','course'),(16,'backend','coursedocumentrelation'),(15,'backend','courseunitrelation'),(54,'backend','faq'),(14,'backend','gallery'),(9,'backend','levels'),(13,'backend','schoolcampusrelation'),(10,'backend','schoolinfo'),(11,'backend','unit'),(12,'backend','unitdocumentrelation'),(52,'contenttypes','contenttype'),(53,'sessions','session'),(46,'taggit','tag'),(47,'taggit','taggeditem'),(4,'wagtailadmin','admin'),(32,'wagtailcore','collection'),(34,'wagtailcore','collectionviewrestriction'),(43,'wagtailcore','comment'),(44,'wagtailcore','commentreply'),(5,'wagtailcore','groupapprovaltask'),(33,'wagtailcore','groupcollectionpermission'),(28,'wagtailcore','grouppagepermission'),(42,'wagtailcore','locale'),(1,'wagtailcore','page'),(41,'wagtailcore','pagelogentry'),(29,'wagtailcore','pagerevision'),(45,'wagtailcore','pagesubscription'),(30,'wagtailcore','pageviewrestriction'),(31,'wagtailcore','site'),(35,'wagtailcore','task'),(36,'wagtailcore','taskstate'),(37,'wagtailcore','workflow'),(39,'wagtailcore','workflowpage'),(38,'wagtailcore','workflowstate'),(40,'wagtailcore','workflowtask'),(3,'wagtaildocs','document'),(23,'wagtaildocs','uploadeddocument'),(21,'wagtailembeds','embed'),(19,'wagtailforms','formsubmission'),(2,'wagtailimages','image'),(24,'wagtailimages','rendition'),(25,'wagtailimages','uploadedimage'),(20,'wagtailredirects','redirect'),(26,'wagtailsearch','query'),(27,'wagtailsearch','querydailyhits'),(22,'wagtailusers','userprofile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-11-20 03:08:36.021768'),(2,'auth','0001_initial','2021-11-20 03:08:36.416198'),(3,'admin','0001_initial','2021-11-20 03:08:36.527716'),(4,'admin','0002_logentry_remove_auto_add','2021-11-20 03:08:36.544047'),(5,'admin','0003_logentry_add_action_flag_choices','2021-11-20 03:08:36.557735'),(6,'contenttypes','0002_remove_content_type_name','2021-11-20 03:08:36.653210'),(7,'auth','0002_alter_permission_name_max_length','2021-11-20 03:08:36.731427'),(8,'auth','0003_alter_user_email_max_length','2021-11-20 03:08:36.765049'),(9,'auth','0004_alter_user_username_opts','2021-11-20 03:08:36.777890'),(10,'auth','0005_alter_user_last_login_null','2021-11-20 03:08:36.834219'),(11,'auth','0006_require_contenttypes_0002','2021-11-20 03:08:36.837739'),(12,'auth','0007_alter_validators_add_error_messages','2021-11-20 03:08:36.849915'),(13,'auth','0008_alter_user_username_max_length','2021-11-20 03:08:36.912781'),(14,'auth','0009_alter_user_last_name_max_length','2021-11-20 03:08:36.971972'),(15,'auth','0010_alter_group_name_max_length','2021-11-20 03:08:37.003580'),(16,'auth','0011_update_proxy_permissions','2021-11-20 03:08:37.019118'),(17,'auth','0012_alter_user_first_name_max_length','2021-11-20 03:08:37.076755'),(18,'wagtailcore','0001_initial','2021-11-20 03:08:37.806442'),(19,'wagtailcore','0002_initial_data','2021-11-20 03:08:37.809760'),(20,'wagtailcore','0003_add_uniqueness_constraint_on_group_page_permission','2021-11-20 03:08:37.812660'),(21,'wagtailcore','0004_page_locked','2021-11-20 03:08:37.815278'),(22,'wagtailcore','0005_add_page_lock_permission_to_moderators','2021-11-20 03:08:37.818577'),(23,'wagtailcore','0006_add_lock_page_permission','2021-11-20 03:08:37.821604'),(24,'wagtailcore','0007_page_latest_revision_created_at','2021-11-20 03:08:37.824636'),(25,'wagtailcore','0008_populate_latest_revision_created_at','2021-11-20 03:08:37.827902'),(26,'wagtailcore','0009_remove_auto_now_add_from_pagerevision_created_at','2021-11-20 03:08:37.830699'),(27,'wagtailcore','0010_change_page_owner_to_null_on_delete','2021-11-20 03:08:37.833738'),(28,'wagtailcore','0011_page_first_published_at','2021-11-20 03:08:37.836459'),(29,'wagtailcore','0012_extend_page_slug_field','2021-11-20 03:08:37.839180'),(30,'wagtailcore','0013_update_golive_expire_help_text','2021-11-20 03:08:37.842264'),(31,'wagtailcore','0014_add_verbose_name','2021-11-20 03:08:37.846684'),(32,'wagtailcore','0015_add_more_verbose_names','2021-11-20 03:08:37.850043'),(33,'wagtailcore','0016_change_page_url_path_to_text_field','2021-11-20 03:08:37.852748'),(34,'wagtailcore','0017_change_edit_page_permission_description','2021-11-20 03:08:37.867977'),(35,'wagtailcore','0018_pagerevision_submitted_for_moderation_index','2021-11-20 03:08:37.899419'),(36,'wagtailcore','0019_verbose_names_cleanup','2021-11-20 03:08:37.967388'),(37,'wagtailcore','0020_add_index_on_page_first_published_at','2021-11-20 03:08:38.038877'),(38,'wagtailcore','0021_capitalizeverbose','2021-11-20 03:08:38.530363'),(39,'wagtailcore','0022_add_site_name','2021-11-20 03:08:38.559188'),(40,'wagtailcore','0023_alter_page_revision_on_delete_behaviour','2021-11-20 03:08:38.578627'),(41,'wagtailcore','0024_collection','2021-11-20 03:08:38.601866'),(42,'wagtailcore','0025_collection_initial_data','2021-11-20 03:08:38.624186'),(43,'wagtailcore','0026_group_collection_permission','2021-11-20 03:08:38.786801'),(44,'taggit','0001_initial','2021-11-20 03:08:38.928430'),(45,'wagtailimages','0001_initial','2021-11-20 03:08:39.284175'),(46,'wagtailimages','0002_initial_data','2021-11-20 03:08:39.289309'),(47,'wagtailimages','0003_fix_focal_point_fields','2021-11-20 03:08:39.292611'),(48,'wagtailimages','0004_make_focal_point_key_not_nullable','2021-11-20 03:08:39.295591'),(49,'wagtailimages','0005_make_filter_spec_unique','2021-11-20 03:08:39.299121'),(50,'wagtailimages','0006_add_verbose_names','2021-11-20 03:08:39.302387'),(51,'wagtailimages','0007_image_file_size','2021-11-20 03:08:39.305829'),(52,'wagtailimages','0008_image_created_at_index','2021-11-20 03:08:39.309493'),(53,'wagtailimages','0009_capitalizeverbose','2021-11-20 03:08:39.312804'),(54,'wagtailimages','0010_change_on_delete_behaviour','2021-11-20 03:08:39.315943'),(55,'wagtailimages','0011_image_collection','2021-11-20 03:08:39.319261'),(56,'wagtailimages','0012_copy_image_permissions_to_collections','2021-11-20 03:08:39.322495'),(57,'wagtailimages','0013_make_rendition_upload_callable','2021-11-20 03:08:39.325653'),(58,'wagtailimages','0014_add_filter_spec_field','2021-11-20 03:08:39.328812'),(59,'wagtailimages','0015_fill_filter_spec_field','2021-11-20 03:08:39.331620'),(60,'wagtailimages','0016_deprecate_rendition_filter_relation','2021-11-20 03:08:39.334730'),(61,'wagtailimages','0017_reduce_focal_point_key_max_length','2021-11-20 03:08:39.337899'),(62,'wagtailimages','0018_remove_rendition_filter','2021-11-20 03:08:39.340944'),(63,'wagtailimages','0019_delete_filter','2021-11-20 03:08:39.343721'),(64,'wagtailimages','0020_add-verbose-name','2021-11-20 03:08:39.347479'),(65,'wagtailimages','0021_image_file_hash','2021-11-20 03:08:39.350721'),(66,'wagtailimages','0022_uploadedimage','2021-11-20 03:08:39.415560'),(67,'wagtailimages','0023_add_choose_permissions','2021-11-20 03:08:39.497669'),(68,'wagtaildocs','0001_initial','2021-11-20 03:08:39.573958'),(69,'wagtaildocs','0002_initial_data','2021-11-20 03:08:39.621163'),(70,'wagtaildocs','0003_add_verbose_names','2021-11-20 03:08:39.690452'),(71,'wagtaildocs','0004_capitalizeverbose','2021-11-20 03:08:39.892092'),(72,'wagtaildocs','0005_document_collection','2021-11-20 03:08:39.979905'),(73,'wagtaildocs','0006_copy_document_permissions_to_collections','2021-11-20 03:08:40.016198'),(74,'wagtaildocs','0005_alter_uploaded_by_user_on_delete_action','2021-11-20 03:08:40.040091'),(75,'wagtaildocs','0007_merge','2021-11-20 03:08:40.044155'),(76,'wagtaildocs','0008_document_file_size','2021-11-20 03:08:40.098625'),(77,'wagtaildocs','0009_document_verbose_name_plural','2021-11-20 03:08:40.118755'),(78,'wagtaildocs','0010_document_file_hash','2021-11-20 03:08:40.162397'),(79,'wagtaildocs','0011_add_choose_permissions','2021-11-20 03:08:40.234415'),(80,'wagtaildocs','0012_uploadeddocument','2021-11-20 03:08:40.301937'),(81,'backend','0001_initial','2021-11-20 03:08:41.421897'),(82,'sessions','0001_initial','2021-11-20 03:08:41.454712'),(83,'taggit','0002_auto_20150616_2121','2021-11-20 03:08:41.483907'),(84,'taggit','0003_taggeditem_add_unique_index','2021-11-20 03:08:41.512934'),(85,'wagtailadmin','0001_create_admin_access_permissions','2021-11-20 03:08:41.564191'),(86,'wagtailadmin','0002_admin','2021-11-20 03:08:41.570424'),(87,'wagtailadmin','0003_admin_managed','2021-11-20 03:08:41.588869'),(88,'wagtailcore','0027_fix_collection_path_collation','2021-11-20 03:08:41.624547'),(89,'wagtailcore','0024_alter_page_content_type_on_delete_behaviour','2021-11-20 03:08:41.666651'),(90,'wagtailcore','0028_merge','2021-11-20 03:08:41.670822'),(91,'wagtailcore','0029_unicode_slugfield_dj19','2021-11-20 03:08:41.694017'),(92,'wagtailcore','0030_index_on_pagerevision_created_at','2021-11-20 03:08:41.734509'),(93,'wagtailcore','0031_add_page_view_restriction_types','2021-11-20 03:08:42.005775'),(94,'wagtailcore','0032_add_bulk_delete_page_permission','2021-11-20 03:08:42.028038'),(95,'wagtailcore','0033_remove_golive_expiry_help_text','2021-11-20 03:08:42.072797'),(96,'wagtailcore','0034_page_live_revision','2021-11-20 03:08:42.184660'),(97,'wagtailcore','0035_page_last_published_at','2021-11-20 03:08:42.246775'),(98,'wagtailcore','0036_populate_page_last_published_at','2021-11-20 03:08:42.291376'),(99,'wagtailcore','0037_set_page_owner_editable','2021-11-20 03:08:42.328522'),(100,'wagtailcore','0038_make_first_published_at_editable','2021-11-20 03:08:42.354054'),(101,'wagtailcore','0039_collectionviewrestriction','2021-11-20 03:08:42.577688'),(102,'wagtailcore','0040_page_draft_title','2021-11-20 03:08:42.717092'),(103,'wagtailcore','0041_group_collection_permissions_verbose_name_plural','2021-11-20 03:08:42.739029'),(104,'wagtailcore','0042_index_on_pagerevision_approved_go_live_at','2021-11-20 03:08:42.796557'),(105,'wagtailcore','0043_lock_fields','2021-11-20 03:08:43.095169'),(106,'wagtailcore','0044_add_unlock_grouppagepermission','2021-11-20 03:08:43.133651'),(107,'wagtailcore','0045_assign_unlock_grouppagepermission','2021-11-20 03:08:43.185873'),(108,'wagtailcore','0046_site_name_remove_null','2021-11-20 03:08:43.268924'),(109,'wagtailcore','0047_add_workflow_models','2021-11-20 03:08:44.544393'),(110,'wagtailcore','0048_add_default_workflows','2021-11-20 03:08:44.710410'),(111,'wagtailcore','0049_taskstate_finished_by','2021-11-20 03:08:44.825471'),(112,'wagtailcore','0050_workflow_rejected_to_needs_changes','2021-11-20 03:08:44.905887'),(113,'wagtailcore','0051_taskstate_comment','2021-11-20 03:08:44.983926'),(114,'wagtailcore','0052_pagelogentry','2021-11-20 03:08:45.248787'),(115,'wagtailcore','0053_locale_model','2021-11-20 03:08:45.283412'),(116,'wagtailcore','0054_initial_locale','2021-11-20 03:08:45.337600'),(117,'wagtailcore','0055_page_locale_fields','2021-11-20 03:08:45.664789'),(118,'wagtailcore','0056_page_locale_fields_populate','2021-11-20 03:08:45.733411'),(119,'wagtailcore','0057_page_locale_fields_notnull','2021-11-20 03:08:46.658831'),(120,'wagtailcore','0058_page_alias_of','2021-11-20 03:08:46.852240'),(121,'wagtailcore','0059_apply_collection_ordering','2021-11-20 03:08:46.932326'),(122,'wagtailcore','0060_fix_workflow_unique_constraint','2021-11-20 03:08:46.997722'),(123,'wagtailcore','0061_change_promote_tab_helpt_text_and_verbose_names','2021-11-20 03:08:47.058246'),(124,'wagtailcore','0062_comment_models_and_pagesubscription','2021-11-20 03:08:47.681776'),(125,'wagtailembeds','0001_initial','2021-11-20 03:08:47.756590'),(126,'wagtailembeds','0002_add_verbose_names','2021-11-20 03:08:47.765324'),(127,'wagtailembeds','0003_capitalizeverbose','2021-11-20 03:08:47.773487'),(128,'wagtailembeds','0004_embed_verbose_name_plural','2021-11-20 03:08:47.783041'),(129,'wagtailembeds','0005_specify_thumbnail_url_max_length','2021-11-20 03:08:47.799814'),(130,'wagtailembeds','0006_add_embed_hash','2021-11-20 03:08:47.834406'),(131,'wagtailembeds','0007_populate_hash','2021-11-20 03:08:47.898060'),(132,'wagtailembeds','0008_allow_long_urls','2021-11-20 03:08:48.082289'),(133,'wagtailembeds','0009_embed_cache_until','2021-11-20 03:08:48.130680'),(134,'wagtailforms','0001_initial','2021-11-20 03:08:48.253623'),(135,'wagtailforms','0002_add_verbose_names','2021-11-20 03:08:48.299729'),(136,'wagtailforms','0003_capitalizeverbose','2021-11-20 03:08:48.343198'),(137,'wagtailforms','0004_add_verbose_name_plural','2021-11-20 03:08:48.369039'),(138,'wagtailredirects','0001_initial','2021-11-20 03:08:48.512636'),(139,'wagtailredirects','0002_add_verbose_names','2021-11-20 03:08:48.740907'),(140,'wagtailredirects','0003_make_site_field_editable','2021-11-20 03:08:48.797783'),(141,'wagtailredirects','0004_set_unique_on_path_and_site','2021-11-20 03:08:48.934698'),(142,'wagtailredirects','0005_capitalizeverbose','2021-11-20 03:08:49.134978'),(143,'wagtailredirects','0006_redirect_increase_max_length','2021-11-20 03:08:49.174417'),(144,'wagtailsearch','0001_initial','2021-11-20 03:08:49.478104'),(145,'wagtailsearch','0002_add_verbose_names','2021-11-20 03:08:49.629882'),(146,'wagtailsearch','0003_remove_editors_pick','2021-11-20 03:08:49.730413'),(147,'wagtailsearch','0004_querydailyhits_verbose_name_plural','2021-11-20 03:08:49.747313'),(148,'wagtailusers','0001_initial','2021-11-20 03:08:49.973881'),(149,'wagtailusers','0002_add_verbose_name_on_userprofile','2021-11-20 03:08:50.077758'),(150,'wagtailusers','0003_add_verbose_names','2021-11-20 03:08:50.114202'),(151,'wagtailusers','0004_capitalizeverbose','2021-11-20 03:08:50.248038'),(152,'wagtailusers','0005_make_related_name_wagtail_specific','2021-11-20 03:08:50.310343'),(153,'wagtailusers','0006_userprofile_prefered_language','2021-11-20 03:08:50.368020'),(154,'wagtailusers','0007_userprofile_current_time_zone','2021-11-20 03:08:50.432962'),(155,'wagtailusers','0008_userprofile_avatar','2021-11-20 03:08:50.483629'),(156,'wagtailusers','0009_userprofile_verbose_name_plural','2021-11-20 03:08:50.513989'),(157,'wagtailusers','0010_userprofile_updated_comments_notifications','2021-11-20 03:08:50.571705'),(158,'wagtailimages','0001_squashed_0021','2021-11-20 03:08:50.583439'),(159,'wagtailcore','0001_squashed_0016_change_page_url_path_to_text_field','2021-11-20 03:08:50.587928'),(160,'backend','0002_auto_20211120_0721','2021-11-20 07:21:30.104267'),(161,'backend','0003_coursedocumentrelation','2021-11-20 07:47:07.170204'),(162,'backend','0002_auto_20211124_1647','2021-12-04 05:20:26.981595'),(163,'backend','0003_faq','2021-12-04 05:20:33.141221'),(164,'backend','0004_auto_20211207_1614','2021-12-14 09:52:24.582372'),(165,'backend','0005_alter_faq_answer','2022-01-26 04:35:14.987223');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0n4434f21mn7ltmkg5k4avgm53yj6oxv','.eJxVjMsOwiAQRf-FtSE8Wh4u3fsNZGAGqRpISrsy_ruSdKHbe865LxZg30rYO61hQXZmkp1-twjpQXUAvEO9NZ5a3dYl8qHwg3Z-bUjPy-H-HRToZdTO2Tzr7I1WZEiZrIXTaQI5JzNZoTwQRNIShYioU_bSfKlxGLNNGdn7A9upOGc:1mvEEc:R6an57P09ifqUPf6GWnca74opZdU_pfROb4psT-5HPA','2021-12-23 07:52:58.173116'),('1dcaox62q0st40y6bxekq82wri6bezw5','.eJxVjMsOwiAQRf-FtSE8Wh4u3fsNZGAGqRpISrsy_ruSdKHbe865LxZg30rYO61hQXZmkp1-twjpQXUAvEO9NZ5a3dYl8qHwg3Z-bUjPy-H-HRToZdTO2Tzr7I1WZEiZrIXTaQI5JzNZoTwQRNIShYioU_bSfKlxGLNNGdn7A9upOGc:1mwxwM:2dozr02GcLHKLc23O1YUhyI7rQebDsBPG3XyHiUikEg','2021-12-28 02:53:18.863663'),('1q91yvwp3wrgvm7mvgw9prt1olbfz5ks','.eJxVjMsOwiAQRf-FtSE8Wh4u3fsNZGAGqRpISrsy_ruSdKHbe865LxZg30rYO61hQXZmkp1-twjpQXUAvEO9NZ5a3dYl8qHwg3Z-bUjPy-H-HRToZdTO2Tzr7I1WZEiZrIXTaQI5JzNZoTwQRNIShYioU_bSfKlxGLNNGdn7A9upOGc:1n9KQ3:3Gsth2LoArlCZHnOaUVc23kdSMcKptU8BMMob5vdnVM','2022-01-31 05:19:03.284963'),('4ggp64nwdwsc2v70xqs1f0dfrrbfuyx7','.eJxVjMsOwiAQRf-FtSE8Wh4u3fsNZGAGqRpISrsy_ruSdKHbe865LxZg30rYO61hQXZmkp1-twjpQXUAvEO9NZ5a3dYl8qHwg3Z-bUjPy-H-HRToZdTO2Tzr7I1WZEiZrIXTaQI5JzNZoTwQRNIShYioU_bSfKlxGLNNGdn7A9upOGc:1muzKO:FX3p0U_IsC8zRCxQSYlTA0RIfw1ZmWuf1AGoA18yLAY','2021-12-22 15:57:56.190914'),('5m0v1hhg38rn4mxapcxnggbhv595o4gm','.eJxVjMsOwiAQRf-FtSE8Wh4u3fsNZGAGqRpISrsy_ruSdKHbe865LxZg30rYO61hQXZmkp1-twjpQXUAvEO9NZ5a3dYl8qHwg3Z-bUjPy-H-HRToZdTO2Tzr7I1WZEiZrIXTaQI5JzNZoTwQRNIShYioU_bSfKlxGLNNGdn7A9upOGc:1nH0yX:5uf22Ojzh2FQfWB3IeqNnDEuxfKzylb6jw1pk4RmBHs','2022-02-21 10:10:25.408098'),('778dtv6o0s4tx7tmsv5990vjnrgdffad','.eJxVjEEOwiAQRe_C2hCkOAMu3XuGZgYGqRpISrsy3l2bdKHb_977LzXSupRx7TKPU1Jn5dThd2OKD6kbSHeqt6Zjq8s8sd4UvdOury3J87K7fweFevnWZIPL6DNZFDwaQcA8WPHRYDyx9zk6ZkuQOYQM6Ab0ScAAg3UOvVXvD-guN5w:1oGAnr:BllmHjbxLYYhzNYAo7hekAkBJqYact_7bMryKfGxWXg','2022-08-09 03:00:11.195825'),('8awyct6ucu6btau7rcd69srwh6ujpf6w','.eJxVjMsOwiAQRf-FtSE8Wh4u3fsNZGAGqRpISrsy_ruSdKHbe865LxZg30rYO61hQXZmkp1-twjpQXUAvEO9NZ5a3dYl8qHwg3Z-bUjPy-H-HRToZdTO2Tzr7I1WZEiZrIXTaQI5JzNZoTwQRNIShYioU_bSfKlxGLNNGdn7A9upOGc:1moggG:0vXCodIuPW2c8moc8EfWWb-977h1RozND4--641HBYc','2021-12-05 06:50:28.925359'),('8lctklooghl4i179pn5vpwbpf1n2cugp','.eJxVjMsOwiAQRf-FtSE8Wh4u3fsNZGAGqRpISrsy_ruSdKHbe865LxZg30rYO61hQXZmkp1-twjpQXUAvEO9NZ5a3dYl8qHwg3Z-bUjPy-H-HRToZdTO2Tzr7I1WZEiZrIXTaQI5JzNZoTwQRNIShYioU_bSfKlxGLNNGdn7A9upOGc:1moHHl:IzHMIVUAVfbx6fwr0Hj3KyueNuZEnZVflPQBFJE-g8g','2021-12-04 03:43:29.898579'),('8owwghw0e1vrfghhia10uqphvqiwq5t4','.eJxVjMsOwiAQRf-FtSEwMxTq0r3fQBgeUjU0Ke3K-O_apAvd3nPOfQkftrX6refFT0mcBYjT78YhPnLbQbqHdptlnNu6TCx3RR60y-uc8vNyuH8HNfT6rRUyWirsBrLoyhhHyAatJUoZMFApoMENVqNhQ07lkFxRTqsEFNmweH8Avug3GQ:1nJpc4:3K-cvxe5UNEW7T3cRMfutBgL4ZWWxDWJqrlQxivCgho','2022-03-01 04:38:52.696372'),('9ynaiytlfutoh76pfsl9iac2v8zjw24m','.eJxVjMsOwiAQRf-FtSE8Wh4u3fsNZGAGqRpISrsy_ruSdKHbe865LxZg30rYO61hQXZmkp1-twjpQXUAvEO9NZ5a3dYl8qHwg3Z-bUjPy-H-HRToZdTO2Tzr7I1WZEiZrIXTaQI5JzNZoTwQRNIShYioU_bSfKlxGLNNGdn7A9upOGc:1mtNTt:EGwvvHtX9x9iJMCewQb7CFLGoLFb35TdnLCH0Jxgl1s','2021-12-18 05:21:05.545787'),('abprkmb42vsbuudk2c03gql0q45ndfug','.eJxVjMsOwiAQRf-FtSE8Wh4u3fsNZGAGqRpISrsy_ruSdKHbe865LxZg30rYO61hQXZmkp1-twjpQXUAvEO9NZ5a3dYl8qHwg3Z-bUjPy-H-HRToZdTO2Tzr7I1WZEiZrIXTaQI5JzNZoTwQRNIShYioU_bSfKlxGLNNGdn7A9upOGc:1moGlz:GBBEwLISX1S6BsBNMVOfv00o7Bv9ir66VA1bxw6ovCg','2021-12-04 03:10:39.906722'),('de62d6ve0zfdkeh6zcytjomm1w1wk3gf','.eJxVjEEOwiAQRe_C2hCkOAMu3XuGZgYGqRpISrsy3l2bdKHb_977LzXSupRx7TKPU1Jn5dThd2OKD6kbSHeqt6Zjq8s8sd4UvdOury3J87K7fweFevnWZIPL6DNZFDwaQcA8WPHRYDyx9zk6ZkuQOYQM6Ab0ScAAg3UOvVXvD-guN5w:1oGC0s:il-uiXEuSjT1AHflVXpaXIthrsZF0d25ShtkyKqN63k','2022-08-09 04:17:42.217117'),('gdn61vr07ol0zcf0u2qlbi8ry6fsa2p5','.eJxVjEEOwiAQRe_C2pB2Rii4dO8ZmoEZpGogKe3KeHdD0oVu_3vvv9VM-5bnvck6L6wuCtXpdwsUn1I64AeVe9Wxlm1dgu6KPmjTt8ryuh7u30GmlnsNQ5AETtBLBGacEo8GGeHsQIxxkDzL5NlYGtDJGCT6ZMGDDULWqs8X-JE4Sw:1oG3qZ:UkRSuEVr1D0T6GPNQlaLFo2jhblBXGI8Bcby8qYOFNU','2022-08-08 19:34:31.346087'),('geidsxackpgsyto1uevo551j2hse6yh5','.eJxVjMsOwiAQRf-FtSEwMxTq0r3fQBgeUjU0Ke3K-O_apAvd3nPOfQkftrX6refFT0mcBYjT78YhPnLbQbqHdptlnNu6TCx3RR60y-uc8vNyuH8HNfT6rRUyWirsBrLoyhhHyAatJUoZMFApoMENVqNhQ07lkFxRTqsEFNmweH8Avug3GQ:1nCYtr:gMZQUXyxVGcBPAPpJZ2bf2ruyQwpjnAfq-wHsSxnkYM','2022-02-09 03:23:11.813867'),('i8nci9l1i84ea5jmko2y6gnthpgkxdu2','.eJxVjMsOwiAQRf-FtSEwMxTq0r3fQBgeUjU0Ke3K-O_apAvd3nPOfQkftrX6refFT0mcBYjT78YhPnLbQbqHdptlnNu6TCx3RR60y-uc8vNyuH8HNfT6rRUyWirsBrLoyhhHyAatJUoZMFApoMENVqNhQ07lkFxRTqsEFNmweH8Avug3GQ:1n8HyY:iFj0jT2vHrhRPcCikq-uXsJlxlpeHOiDEaOT07s8_C0','2022-01-28 08:30:22.639834'),('jdss55zr4em4mnodmigq2igq4me99dlt','.eJxVjEEOwiAQRe_C2pB2Rii4dO8ZmoEZpGogKe3KeHdD0oVu_3vvv9VM-5bnvck6L6wuCtXpdwsUn1I64AeVe9Wxlm1dgu6KPmjTt8ryuh7u30GmlnsNQ5AETtBLBGacEo8GGeHsQIxxkDzL5NlYGtDJGCT6ZMGDDULWqs8X-JE4Sw:1oKBIP:QEECEI4RPcAWtXykIPaz0vrRxwH0kix_bBgHHcK7W2I','2022-08-20 04:20:17.809479'),('kpwlbmjmc69siuwrvwh4bn4xooa344t3','.eJxVjMsOwiAQRf-FtSEwMxTq0r3fQBgeUjU0Ke3K-O_apAvd3nPOfQkftrX6refFT0mcBYjT78YhPnLbQbqHdptlnNu6TCx3RR60y-uc8vNyuH8HNfT6rRUyWirsBrLoyhhHyAatJUoZMFApoMENVqNhQ07lkFxRTqsEFNmweH8Avug3GQ:1n24d4:vOL4hM_RboLap117bi17iQn6iAgeKAvFlsKGYUJDDUA','2022-01-11 05:02:30.845494'),('kqltplzbfrq6r63oxku6bd7re0lwjmex','.eJxVjMsOwiAQRf-FtSEwMxTq0r3fQBgeUjU0Ke3K-O_apAvd3nPOfQkftrX6refFT0mcBYjT78YhPnLbQbqHdptlnNu6TCx3RR60y-uc8vNyuH8HNfT6rRUyWirsBrLoyhhHyAatJUoZMFApoMENVqNhQ07lkFxRTqsEFNmweH8Avug3GQ:1o4lV8:5tkFD5w6B6UDqqYDfRtItiNJP47ppykjmMZdKBuEiE0','2022-07-08 15:45:42.169947'),('l638szvunsg6v81oqr28qa7qyajsw6h1','.eJxVjMsOwiAQRf-FtSEwMxTq0r3fQBgeUjU0Ke3K-O_apAvd3nPOfQkftrX6refFT0mcBYjT78YhPnLbQbqHdptlnNu6TCx3RR60y-uc8vNyuH8HNfT6rRUyWirsBrLoyhhHyAatJUoZMFApoMENVqNhQ07lkFxRTqsEFNmweH8Avug3GQ:1nPz9r:5HC6Rdv626VV9RwdUJOjoQRGQLE_Yrl3sfH2jvfOa_A','2022-03-18 04:03:11.168456'),('lnv77fbyjg8e02qz2mzpj8scahkmvjnx','.eJxVjMsOwiAQRf-FtSE8Wh4u3fsNZGAGqRpISrsy_ruSdKHbe865LxZg30rYO61hQXZmkp1-twjpQXUAvEO9NZ5a3dYl8qHwg3Z-bUjPy-H-HRToZdTO2Tzr7I1WZEiZrIXTaQI5JzNZoTwQRNIShYioU_bSfKlxGLNNGdn7A9upOGc:1mvaU8:bqufFz73rusfkDNV8vLckrOjHiUAkKHGivUxvE5L-qA','2021-12-24 07:38:28.668408'),('mgutcf839hzi9aqm9xt08b64knj6brnn','.eJxVjMsOwiAQRf-FtSE8Wh4u3fsNZGAGqRpISrsy_ruSdKHbe865LxZg30rYO61hQXZmkp1-twjpQXUAvEO9NZ5a3dYl8qHwg3Z-bUjPy-H-HRToZdTO2Tzr7I1WZEiZrIXTaQI5JzNZoTwQRNIShYioU_bSfKlxGLNNGdn7A9upOGc:1mwnn6:QJKjRm6ZaTXalWnUt-ZuvYicCop6PiVeGcS2Qj4C0bg','2021-12-27 16:03:04.837668'),('ndiyf3wcsz77njeqfzjqt50dobixbw4f','.eJxVjMsOwiAQRf-FtSE8Wh4u3fsNZGAGqRpISrsy_ruSdKHbe865LxZg30rYO61hQXZmkp1-twjpQXUAvEO9NZ5a3dYl8qHwg3Z-bUjPy-H-HRToZdTO2Tzr7I1WZEiZrIXTaQI5JzNZoTwQRNIShYioU_bSfKlxGLNNGdn7A9upOGc:1moi8f:f-ixH-C1MP4R_4MvbIWDghXnbFksAWqGJxa96Udv-VY','2021-12-05 08:23:53.200707'),('nr5q0yglas9gw0fuc3bzywk2jm8cugat','.eJxVjMsOwiAQRf-FtSEwMxTq0r3fQBgeUjU0Ke3K-O_apAvd3nPOfQkftrX6refFT0mcBYjT78YhPnLbQbqHdptlnNu6TCx3RR60y-uc8vNyuH8HNfT6rRUyWirsBrLoyhhHyAatJUoZMFApoMENVqNhQ07lkFxRTqsEFNmweH8Avug3GQ:1n8I5r:flxTF0xsydPCssQpJT3EuQAH0cyjHsm3B-ivIXwjKaY','2022-01-28 08:37:55.116627'),('odb1xt8w702qrpuoe7ftisp39c5ffr17','.eJxVjMsOwiAQRf-FtSEwMxTq0r3fQBgeUjU0Ke3K-O_apAvd3nPOfQkftrX6refFT0mcBYjT78YhPnLbQbqHdptlnNu6TCx3RR60y-uc8vNyuH8HNfT6rRUyWirsBrLoyhhHyAatJUoZMFApoMENVqNhQ07lkFxRTqsEFNmweH8Avug3GQ:1nPzEH:Aw8H2uymjomEmAndnY66QuVkbnPyjJwLXOlkB5nf50Q','2022-03-18 04:07:45.194863'),('r086rt6a0uy4ip66j3h63wyumo6smje8','.eJxVjMsOwiAQRf-FtSE8Wh4u3fsNZGAGqRpISrsy_ruSdKHbe865LxZg30rYO61hQXZmkp1-twjpQXUAvEO9NZ5a3dYl8qHwg3Z-bUjPy-H-HRToZdTO2Tzr7I1WZEiZrIXTaQI5JzNZoTwQRNIShYioU_bSfKlxGLNNGdn7A9upOGc:1muB7a:YqwcULV-MnF_uo5uIVioebVTusdjWpoORy4uaeqtRCc','2021-12-20 10:21:22.637194'),('smrs81a1mgrv41a62xz9j303c7wm801d','.eJxVjMsOwiAQRf-FtSE8Wh4u3fsNZGAGqRpISrsy_ruSdKHbe865LxZg30rYO61hQXZmkp1-twjpQXUAvEO9NZ5a3dYl8qHwg3Z-bUjPy-H-HRToZdTO2Tzr7I1WZEiZrIXTaQI5JzNZoTwQRNIShYioU_bSfKlxGLNNGdn7A9upOGc:1mtOed:jTli7PTw5QVhGkkJCPrWA5gRTcli5b9UikNkXZfLh3Q','2021-12-18 06:36:15.955909'),('smtuqxljzrettpodcbosibc2xfgg33jb','.eJxVjMsOwiAQRf-FtSEwMxTq0r3fQBgeUjU0Ke3K-O_apAvd3nPOfQkftrX6refFT0mcBYjT78YhPnLbQbqHdptlnNu6TCx3RR60y-uc8vNyuH8HNfT6rRUyWirsBrLoyhhHyAatJUoZMFApoMENVqNhQ07lkFxRTqsEFNmweH8Avug3GQ:1nFTU3:gLYryA67n9lTydBZB42BLJYqW1qHNEY5jMSQWxm7Ip8','2022-02-17 04:12:35.354184'),('wytpf8y4984ixpc05i0nmqyyw29bagdp','.eJxVjMsOwiAQRf-FtSEwMxTq0r3fQBgeUjU0Ke3K-O_apAvd3nPOfQkftrX6refFT0mcBYjT78YhPnLbQbqHdptlnNu6TCx3RR60y-uc8vNyuH8HNfT6rRUyWirsBrLoyhhHyAatJUoZMFApoMENVqNhQ07lkFxRTqsEFNmweH8Avug3GQ:1nZlx8:v62FhdAu2p7emKFnkuv1xkZwsBxn32IUaHq00_wDdhU','2022-04-14 03:58:30.046559'),('xop1z01a0c6h3uhyi0miv45w5tpjz54u','.eJxVjMsOwiAQRf-FtSEwMxTq0r3fQBgeUjU0Ke3K-O_apAvd3nPOfQkftrX6refFT0mcBYjT78YhPnLbQbqHdptlnNu6TCx3RR60y-uc8vNyuH8HNfT6rRUyWirsBrLoyhhHyAatJUoZMFApoMENVqNhQ07lkFxRTqsEFNmweH8Avug3GQ:1n23Pp:SIb1sZD682Yn-tyEwdWSumTVcTzA4QGQ8qKevCH67O8','2022-01-11 03:44:45.175157'),('y12y3hacdttkbtxhjrtg9370wd7fk31u','.eJxVjEEOwiAQRe_C2pB2Rii4dO8ZmoEZpGogKe3KeHdD0oVu_3vvv9VM-5bnvck6L6wuCtXpdwsUn1I64AeVe9Wxlm1dgu6KPmjTt8ryuh7u30GmlnsNQ5AETtBLBGacEo8GGeHsQIxxkDzL5NlYGtDJGCT6ZMGDDULWqs8X-JE4Sw:1oGAgU:r3voQ5oCBhd8iGMooC3okSOIzTdPH6qorRsMtd9dXNY','2022-08-09 02:52:34.091627'),('yukbuqpv21hrdzagk1qs73ojwmyxy8sf','.eJxVjEEOwiAQRe_C2pB2Rii4dO8ZmoEZpGogKe3KeHdD0oVu_3vvv9VM-5bnvck6L6wuCtXpdwsUn1I64AeVe9Wxlm1dgu6KPmjTt8ryuh7u30GmlnsNQ5AETtBLBGacEo8GGeHsQIxxkDzL5NlYGtDJGCT6ZMGDDULWqs8X-JE4Sw:1oGAaF:nrvlXfszMARmDz5P7OJ5Vpnpuo_MVRuf_GVeiunDmD0','2022-08-09 02:46:07.461570');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_tag`
--

DROP TABLE IF EXISTS `taggit_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taggit_tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_tag`
--

LOCK TABLES `taggit_tag` WRITE;
/*!40000 ALTER TABLE `taggit_tag` DISABLE KEYS */;
INSERT INTO `taggit_tag` VALUES (1,'L4DC','l4dc'),(2,'ProgrammeSheets','programmesheets'),(3,'Qualification-Specification','qualification-specification'),(4,'Graduation','graduation'),(5,'Campus','campus'),(6,'courses','courses'),(7,'L3DC','l3dc'),(8,'L4DCBM','l4dcbm'),(9,'L5DC','l5dc'),(10,'L5DCBM','l5dcbm'),(11,'L5DCCS','l5dccs'),(12,'banner','banner'),(13,'master','master'),(14,'UBIS','ubis');
/*!40000 ALTER TABLE `taggit_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_taggeditem`
--

DROP TABLE IF EXISTS `taggit_taggeditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taggit_taggeditem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int NOT NULL,
  `content_type_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taggit_taggeditem_content_type_id_object_id_tag_id_4bb97a8e_uniq` (`content_type_id`,`object_id`,`tag_id`),
  KEY `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` (`tag_id`),
  KEY `taggit_taggeditem_object_id_e2d7d1df` (`object_id`),
  KEY `taggit_taggeditem_content_type_id_object_id_196cc965_idx` (`content_type_id`,`object_id`),
  CONSTRAINT `taggit_taggeditem_content_type_id_9957a03c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `taggit_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_taggeditem`
--

LOCK TABLES `taggit_taggeditem` WRITE;
/*!40000 ALTER TABLE `taggit_taggeditem` DISABLE KEYS */;
INSERT INTO `taggit_taggeditem` VALUES (10,29,2,4),(11,30,2,4),(12,31,2,4),(13,32,2,4),(14,33,2,4),(15,34,2,4),(16,35,2,5),(17,36,2,5),(18,37,2,5),(19,38,2,5),(20,39,2,5),(21,40,2,5),(22,41,2,5),(23,42,2,5),(24,43,2,5),(25,44,2,4),(26,45,2,4),(27,46,2,4),(28,47,2,4),(29,48,2,4),(9,49,2,4),(31,51,2,6),(32,52,2,6),(33,53,2,6),(34,54,2,6),(35,55,2,6),(36,56,2,6),(37,57,2,6),(38,58,2,6),(39,59,2,6),(40,60,2,6),(42,62,2,6),(45,65,2,6),(46,66,2,6),(76,75,2,13),(77,75,2,14),(48,3,3,2),(47,4,3,3),(49,5,3,2),(50,5,3,7),(51,6,3,1),(52,6,3,3),(53,7,3,1),(54,7,3,2),(56,8,3,2),(55,8,3,8),(58,9,3,3),(57,9,3,8),(60,10,3,2),(59,10,3,9),(62,11,3,3),(61,11,3,9),(63,12,3,2),(64,12,3,10),(66,13,3,3),(65,13,3,10),(67,14,3,2),(68,14,3,11),(70,15,3,3),(69,15,3,11);
/*!40000 ALTER TABLE `taggit_taggeditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailadmin_admin`
--

DROP TABLE IF EXISTS `wagtailadmin_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailadmin_admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailadmin_admin`
--

LOCK TABLES `wagtailadmin_admin` WRITE;
/*!40000 ALTER TABLE `wagtailadmin_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailadmin_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_collection`
--

DROP TABLE IF EXISTS `wagtailcore_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_collection` (
  `id` int NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `depth` int unsigned NOT NULL,
  `numchild` int unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  CONSTRAINT `wagtailcore_collection_chk_1` CHECK ((`depth` >= 0)),
  CONSTRAINT `wagtailcore_collection_chk_2` CHECK ((`numchild` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_collection`
--

LOCK TABLES `wagtailcore_collection` WRITE;
/*!40000 ALTER TABLE `wagtailcore_collection` DISABLE KEYS */;
INSERT INTO `wagtailcore_collection` VALUES (1,'0001',1,0,'Root');
/*!40000 ALTER TABLE `wagtailcore_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_collectionviewrestriction`
--

DROP TABLE IF EXISTS `wagtailcore_collectionviewrestriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_collectionviewrestriction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `restriction_type` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `collection_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailcore_collecti_collection_id_761908ec_fk_wagtailco` (`collection_id`),
  CONSTRAINT `wagtailcore_collecti_collection_id_761908ec_fk_wagtailco` FOREIGN KEY (`collection_id`) REFERENCES `wagtailcore_collection` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_collectionviewrestriction`
--

LOCK TABLES `wagtailcore_collectionviewrestriction` WRITE;
/*!40000 ALTER TABLE `wagtailcore_collectionviewrestriction` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailcore_collectionviewrestriction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_collectionviewrestriction_groups`
--

DROP TABLE IF EXISTS `wagtailcore_collectionviewrestriction_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_collectionviewrestriction_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `collectionviewrestriction_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq` (`collectionviewrestriction_id`,`group_id`),
  KEY `wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou` (`group_id`),
  CONSTRAINT `wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco` FOREIGN KEY (`collectionviewrestriction_id`) REFERENCES `wagtailcore_collectionviewrestriction` (`id`),
  CONSTRAINT `wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_collectionviewrestriction_groups`
--

LOCK TABLES `wagtailcore_collectionviewrestriction_groups` WRITE;
/*!40000 ALTER TABLE `wagtailcore_collectionviewrestriction_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailcore_collectionviewrestriction_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_comment`
--

DROP TABLE IF EXISTS `wagtailcore_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `contentpath` longtext NOT NULL,
  `position` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `resolved_at` datetime(6) DEFAULT NULL,
  `page_id` int NOT NULL,
  `resolved_by_id` int DEFAULT NULL,
  `revision_created_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailcore_comment_resolved_by_id_a282aa0e_fk_auth_user_id` (`resolved_by_id`),
  KEY `wagtailcore_comment_revision_created_id_1d058279_fk_wagtailco` (`revision_created_id`),
  KEY `wagtailcore_comment_user_id_0c577ca6_fk_auth_user_id` (`user_id`),
  KEY `wagtailcore_comment_page_id_108444b5` (`page_id`),
  CONSTRAINT `wagtailcore_comment_page_id_108444b5_fk_wagtailcore_page_id` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`),
  CONSTRAINT `wagtailcore_comment_resolved_by_id_a282aa0e_fk_auth_user_id` FOREIGN KEY (`resolved_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `wagtailcore_comment_revision_created_id_1d058279_fk_wagtailco` FOREIGN KEY (`revision_created_id`) REFERENCES `wagtailcore_pagerevision` (`id`),
  CONSTRAINT `wagtailcore_comment_user_id_0c577ca6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_comment`
--

LOCK TABLES `wagtailcore_comment` WRITE;
/*!40000 ALTER TABLE `wagtailcore_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailcore_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_commentreply`
--

DROP TABLE IF EXISTS `wagtailcore_commentreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_commentreply` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `comment_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailcore_commentreply_user_id_d0b3b9c3_fk_auth_user_id` (`user_id`),
  KEY `wagtailcore_commentreply_comment_id_afc7e027` (`comment_id`),
  CONSTRAINT `wagtailcore_commentr_comment_id_afc7e027_fk_wagtailco` FOREIGN KEY (`comment_id`) REFERENCES `wagtailcore_comment` (`id`),
  CONSTRAINT `wagtailcore_commentreply_user_id_d0b3b9c3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_commentreply`
--

LOCK TABLES `wagtailcore_commentreply` WRITE;
/*!40000 ALTER TABLE `wagtailcore_commentreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailcore_commentreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_groupapprovaltask`
--

DROP TABLE IF EXISTS `wagtailcore_groupapprovaltask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_groupapprovaltask` (
  `task_ptr_id` int NOT NULL,
  PRIMARY KEY (`task_ptr_id`),
  CONSTRAINT `wagtailcore_groupapp_task_ptr_id_cfe58781_fk_wagtailco` FOREIGN KEY (`task_ptr_id`) REFERENCES `wagtailcore_task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_groupapprovaltask`
--

LOCK TABLES `wagtailcore_groupapprovaltask` WRITE;
/*!40000 ALTER TABLE `wagtailcore_groupapprovaltask` DISABLE KEYS */;
INSERT INTO `wagtailcore_groupapprovaltask` VALUES (1);
/*!40000 ALTER TABLE `wagtailcore_groupapprovaltask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_groupapprovaltask_groups`
--

DROP TABLE IF EXISTS `wagtailcore_groupapprovaltask_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_groupapprovaltask_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `groupapprovaltask_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_groupapprova_groupapprovaltask_id_gro_bb5ee7eb_uniq` (`groupapprovaltask_id`,`group_id`),
  KEY `wagtailcore_groupapp_group_id_2e64b61f_fk_auth_grou` (`group_id`),
  CONSTRAINT `wagtailcore_groupapp_group_id_2e64b61f_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `wagtailcore_groupapp_groupapprovaltask_id_9a9255ea_fk_wagtailco` FOREIGN KEY (`groupapprovaltask_id`) REFERENCES `wagtailcore_groupapprovaltask` (`task_ptr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_groupapprovaltask_groups`
--

LOCK TABLES `wagtailcore_groupapprovaltask_groups` WRITE;
/*!40000 ALTER TABLE `wagtailcore_groupapprovaltask_groups` DISABLE KEYS */;
INSERT INTO `wagtailcore_groupapprovaltask_groups` VALUES (1,1,1);
/*!40000 ALTER TABLE `wagtailcore_groupapprovaltask_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_groupcollectionpermission`
--

DROP TABLE IF EXISTS `wagtailcore_groupcollectionpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_groupcollectionpermission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `collection_id` int NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq` (`group_id`,`collection_id`,`permission_id`),
  KEY `wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco` (`collection_id`),
  KEY `wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm` (`permission_id`),
  CONSTRAINT `wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco` FOREIGN KEY (`collection_id`) REFERENCES `wagtailcore_collection` (`id`),
  CONSTRAINT `wagtailcore_groupcol_group_id_05d61460_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_groupcollectionpermission`
--

LOCK TABLES `wagtailcore_groupcollectionpermission` WRITE;
/*!40000 ALTER TABLE `wagtailcore_groupcollectionpermission` DISABLE KEYS */;
INSERT INTO `wagtailcore_groupcollectionpermission` VALUES (2,1,1,1),(4,1,1,2),(6,1,1,5),(8,1,1,6),(1,1,2,1),(3,1,2,2),(5,1,2,5),(7,1,2,6);
/*!40000 ALTER TABLE `wagtailcore_groupcollectionpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_grouppagepermission`
--

DROP TABLE IF EXISTS `wagtailcore_grouppagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_grouppagepermission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `permission_type` varchar(20) NOT NULL,
  `group_id` int NOT NULL,
  `page_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq` (`group_id`,`page_id`,`permission_type`),
  KEY `wagtailcore_grouppag_page_id_710b114a_fk_wagtailco` (`page_id`),
  CONSTRAINT `wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `wagtailcore_grouppag_page_id_710b114a_fk_wagtailco` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_grouppagepermission`
--

LOCK TABLES `wagtailcore_grouppagepermission` WRITE;
/*!40000 ALTER TABLE `wagtailcore_grouppagepermission` DISABLE KEYS */;
INSERT INTO `wagtailcore_grouppagepermission` VALUES (1,'add',1,1),(2,'edit',1,1),(6,'lock',1,1),(3,'publish',1,1),(7,'unlock',1,1),(4,'add',2,1),(5,'edit',2,1);
/*!40000 ALTER TABLE `wagtailcore_grouppagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_locale`
--

DROP TABLE IF EXISTS `wagtailcore_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_locale` (
  `id` int NOT NULL AUTO_INCREMENT,
  `language_code` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `language_code` (`language_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_locale`
--

LOCK TABLES `wagtailcore_locale` WRITE;
/*!40000 ALTER TABLE `wagtailcore_locale` DISABLE KEYS */;
INSERT INTO `wagtailcore_locale` VALUES (1,'en');
/*!40000 ALTER TABLE `wagtailcore_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_page`
--

DROP TABLE IF EXISTS `wagtailcore_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_page` (
  `id` int NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `depth` int unsigned NOT NULL,
  `numchild` int unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `live` tinyint(1) NOT NULL,
  `has_unpublished_changes` tinyint(1) NOT NULL,
  `url_path` longtext NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `show_in_menus` tinyint(1) NOT NULL,
  `search_description` longtext NOT NULL,
  `go_live_at` datetime(6) DEFAULT NULL,
  `expire_at` datetime(6) DEFAULT NULL,
  `expired` tinyint(1) NOT NULL,
  `content_type_id` int NOT NULL,
  `owner_id` int DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `latest_revision_created_at` datetime(6) DEFAULT NULL,
  `first_published_at` datetime(6) DEFAULT NULL,
  `live_revision_id` int DEFAULT NULL,
  `last_published_at` datetime(6) DEFAULT NULL,
  `draft_title` varchar(255) NOT NULL,
  `locked_at` datetime(6) DEFAULT NULL,
  `locked_by_id` int DEFAULT NULL,
  `translation_key` char(32) NOT NULL,
  `locale_id` int NOT NULL,
  `alias_of_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  UNIQUE KEY `wagtailcore_page_translation_key_locale_id_9b041bad_uniq` (`translation_key`,`locale_id`),
  KEY `wagtailcore_page_content_type_id_c28424df_fk_django_co` (`content_type_id`),
  KEY `wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id` (`owner_id`),
  KEY `wagtailcore_page_slug_e7c11b8f` (`slug`),
  KEY `wagtailcore_page_first_published_at_2b5dd637` (`first_published_at`),
  KEY `wagtailcore_page_live_revision_id_930bd822_fk_wagtailco` (`live_revision_id`),
  KEY `wagtailcore_page_locked_by_id_bcb86245_fk_auth_user_id` (`locked_by_id`),
  KEY `wagtailcore_page_locale_id_3c7e30a6_fk_wagtailcore_locale_id` (`locale_id`),
  KEY `wagtailcore_page_alias_of_id_12945502_fk_wagtailcore_page_id` (`alias_of_id`),
  CONSTRAINT `wagtailcore_page_alias_of_id_12945502_fk_wagtailcore_page_id` FOREIGN KEY (`alias_of_id`) REFERENCES `wagtailcore_page` (`id`),
  CONSTRAINT `wagtailcore_page_content_type_id_c28424df_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `wagtailcore_page_live_revision_id_930bd822_fk_wagtailco` FOREIGN KEY (`live_revision_id`) REFERENCES `wagtailcore_pagerevision` (`id`),
  CONSTRAINT `wagtailcore_page_locale_id_3c7e30a6_fk_wagtailcore_locale_id` FOREIGN KEY (`locale_id`) REFERENCES `wagtailcore_locale` (`id`),
  CONSTRAINT `wagtailcore_page_locked_by_id_bcb86245_fk_auth_user_id` FOREIGN KEY (`locked_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `wagtailcore_page_chk_1` CHECK ((`depth` >= 0)),
  CONSTRAINT `wagtailcore_page_chk_2` CHECK ((`numchild` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_page`
--

LOCK TABLES `wagtailcore_page` WRITE;
/*!40000 ALTER TABLE `wagtailcore_page` DISABLE KEYS */;
INSERT INTO `wagtailcore_page` VALUES (1,'0001',1,1,'Root','root',1,0,'/','',0,'',NULL,NULL,0,1,NULL,0,NULL,NULL,NULL,NULL,'Root',NULL,NULL,'0a2224055e0944359b6b9bc3f0359ce6',1,NULL),(2,'00010001',2,0,'Welcome to your new Wagtail site!','home',1,0,'/home/','',0,'',NULL,NULL,0,1,NULL,0,NULL,NULL,NULL,NULL,'Welcome to your new Wagtail site!',NULL,NULL,'eeefb7c2f4654cf5846746370e505694',1,NULL);
/*!40000 ALTER TABLE `wagtailcore_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_pagelogentry`
--

DROP TABLE IF EXISTS `wagtailcore_pagelogentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_pagelogentry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` longtext NOT NULL,
  `action` varchar(255) NOT NULL,
  `data_json` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `content_changed` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `page_id` int NOT NULL,
  `revision_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailcore_pageloge_content_type_id_74e7708a_fk_django_co` (`content_type_id`),
  KEY `wagtailcore_pagelogentry_action_c2408198` (`action`),
  KEY `wagtailcore_pagelogentry_content_changed_99f27ade` (`content_changed`),
  KEY `wagtailcore_pagelogentry_page_id_8464e327` (`page_id`),
  KEY `wagtailcore_pagelogentry_revision_id_8043d103` (`revision_id`),
  KEY `wagtailcore_pagelogentry_user_id_604ccfd8` (`user_id`),
  CONSTRAINT `wagtailcore_pageloge_content_type_id_74e7708a_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_pagelogentry`
--

LOCK TABLES `wagtailcore_pagelogentry` WRITE;
/*!40000 ALTER TABLE `wagtailcore_pagelogentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailcore_pagelogentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_pagerevision`
--

DROP TABLE IF EXISTS `wagtailcore_pagerevision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_pagerevision` (
  `id` int NOT NULL AUTO_INCREMENT,
  `submitted_for_moderation` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `content_json` longtext NOT NULL,
  `approved_go_live_at` datetime(6) DEFAULT NULL,
  `page_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailcore_pagerevision_page_id_d421cc1d_fk_wagtailcore_page_id` (`page_id`),
  KEY `wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id` (`user_id`),
  KEY `wagtailcore_pagerevision_submitted_for_moderation_c682e44c` (`submitted_for_moderation`),
  KEY `wagtailcore_pagerevision_created_at_66954e3b` (`created_at`),
  KEY `wagtailcore_pagerevision_approved_go_live_at_e56afc67` (`approved_go_live_at`),
  CONSTRAINT `wagtailcore_pagerevision_page_id_d421cc1d_fk_wagtailcore_page_id` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`),
  CONSTRAINT `wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_pagerevision`
--

LOCK TABLES `wagtailcore_pagerevision` WRITE;
/*!40000 ALTER TABLE `wagtailcore_pagerevision` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailcore_pagerevision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_pagesubscription`
--

DROP TABLE IF EXISTS `wagtailcore_pagesubscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_pagesubscription` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment_notifications` tinyint(1) NOT NULL,
  `page_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_pagesubscription_page_id_user_id_0cef73ed_uniq` (`page_id`,`user_id`),
  KEY `wagtailcore_pagesubscription_user_id_89d7def9_fk_auth_user_id` (`user_id`),
  CONSTRAINT `wagtailcore_pagesubs_page_id_a085e7a6_fk_wagtailco` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`),
  CONSTRAINT `wagtailcore_pagesubscription_user_id_89d7def9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_pagesubscription`
--

LOCK TABLES `wagtailcore_pagesubscription` WRITE;
/*!40000 ALTER TABLE `wagtailcore_pagesubscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailcore_pagesubscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_pageviewrestriction`
--

DROP TABLE IF EXISTS `wagtailcore_pageviewrestriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_pageviewrestriction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(255) NOT NULL,
  `page_id` int NOT NULL,
  `restriction_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco` (`page_id`),
  CONSTRAINT `wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_pageviewrestriction`
--

LOCK TABLES `wagtailcore_pageviewrestriction` WRITE;
/*!40000 ALTER TABLE `wagtailcore_pageviewrestriction` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailcore_pageviewrestriction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_pageviewrestriction_groups`
--

DROP TABLE IF EXISTS `wagtailcore_pageviewrestriction_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_pageviewrestriction_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pageviewrestriction_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq` (`pageviewrestriction_id`,`group_id`),
  KEY `wagtailcore_pageview_group_id_6460f223_fk_auth_grou` (`group_id`),
  CONSTRAINT `wagtailcore_pageview_group_id_6460f223_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco` FOREIGN KEY (`pageviewrestriction_id`) REFERENCES `wagtailcore_pageviewrestriction` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_pageviewrestriction_groups`
--

LOCK TABLES `wagtailcore_pageviewrestriction_groups` WRITE;
/*!40000 ALTER TABLE `wagtailcore_pageviewrestriction_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailcore_pageviewrestriction_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_site`
--

DROP TABLE IF EXISTS `wagtailcore_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_site` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hostname` varchar(255) NOT NULL,
  `port` int NOT NULL,
  `is_default_site` tinyint(1) NOT NULL,
  `root_page_id` int NOT NULL,
  `site_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_site_hostname_port_2c626d70_uniq` (`hostname`,`port`),
  KEY `wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id` (`root_page_id`),
  KEY `wagtailcore_site_hostname_96b20b46` (`hostname`),
  CONSTRAINT `wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id` FOREIGN KEY (`root_page_id`) REFERENCES `wagtailcore_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_site`
--

LOCK TABLES `wagtailcore_site` WRITE;
/*!40000 ALTER TABLE `wagtailcore_site` DISABLE KEYS */;
INSERT INTO `wagtailcore_site` VALUES (1,'localhost',80,1,2,'');
/*!40000 ALTER TABLE `wagtailcore_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_task`
--

DROP TABLE IF EXISTS `wagtailcore_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_task` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `content_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailcore_task_content_type_id_249ab8ba_fk_django_co` (`content_type_id`),
  CONSTRAINT `wagtailcore_task_content_type_id_249ab8ba_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_task`
--

LOCK TABLES `wagtailcore_task` WRITE;
/*!40000 ALTER TABLE `wagtailcore_task` DISABLE KEYS */;
INSERT INTO `wagtailcore_task` VALUES (1,'Moderators approval',1,5);
/*!40000 ALTER TABLE `wagtailcore_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_taskstate`
--

DROP TABLE IF EXISTS `wagtailcore_taskstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_taskstate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  `started_at` datetime(6) NOT NULL,
  `finished_at` datetime(6) DEFAULT NULL,
  `content_type_id` int NOT NULL,
  `page_revision_id` int NOT NULL,
  `task_id` int NOT NULL,
  `workflow_state_id` int NOT NULL,
  `finished_by_id` int DEFAULT NULL,
  `comment` longtext NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`id`),
  KEY `wagtailcore_taskstat_workflow_state_id_9239a775_fk_wagtailco` (`workflow_state_id`),
  KEY `wagtailcore_taskstat_content_type_id_0a758fdc_fk_django_co` (`content_type_id`),
  KEY `wagtailcore_taskstat_page_revision_id_9f52c88e_fk_wagtailco` (`page_revision_id`),
  KEY `wagtailcore_taskstate_task_id_c3677c34_fk_wagtailcore_task_id` (`task_id`),
  KEY `wagtailcore_taskstate_finished_by_id_13f98229_fk_auth_user_id` (`finished_by_id`),
  CONSTRAINT `wagtailcore_taskstat_content_type_id_0a758fdc_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `wagtailcore_taskstat_page_revision_id_9f52c88e_fk_wagtailco` FOREIGN KEY (`page_revision_id`) REFERENCES `wagtailcore_pagerevision` (`id`),
  CONSTRAINT `wagtailcore_taskstat_workflow_state_id_9239a775_fk_wagtailco` FOREIGN KEY (`workflow_state_id`) REFERENCES `wagtailcore_workflowstate` (`id`),
  CONSTRAINT `wagtailcore_taskstate_finished_by_id_13f98229_fk_auth_user_id` FOREIGN KEY (`finished_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `wagtailcore_taskstate_task_id_c3677c34_fk_wagtailcore_task_id` FOREIGN KEY (`task_id`) REFERENCES `wagtailcore_task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_taskstate`
--

LOCK TABLES `wagtailcore_taskstate` WRITE;
/*!40000 ALTER TABLE `wagtailcore_taskstate` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailcore_taskstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_workflow`
--

DROP TABLE IF EXISTS `wagtailcore_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_workflow` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_workflow`
--

LOCK TABLES `wagtailcore_workflow` WRITE;
/*!40000 ALTER TABLE `wagtailcore_workflow` DISABLE KEYS */;
INSERT INTO `wagtailcore_workflow` VALUES (1,'Moderators approval',1);
/*!40000 ALTER TABLE `wagtailcore_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_workflowpage`
--

DROP TABLE IF EXISTS `wagtailcore_workflowpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_workflowpage` (
  `page_id` int NOT NULL,
  `workflow_id` int NOT NULL,
  PRIMARY KEY (`page_id`),
  KEY `wagtailcore_workflow_workflow_id_56f56ff6_fk_wagtailco` (`workflow_id`),
  CONSTRAINT `wagtailcore_workflow_workflow_id_56f56ff6_fk_wagtailco` FOREIGN KEY (`workflow_id`) REFERENCES `wagtailcore_workflow` (`id`),
  CONSTRAINT `wagtailcore_workflowpage_page_id_81e7bab6_fk_wagtailcore_page_id` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_workflowpage`
--

LOCK TABLES `wagtailcore_workflowpage` WRITE;
/*!40000 ALTER TABLE `wagtailcore_workflowpage` DISABLE KEYS */;
INSERT INTO `wagtailcore_workflowpage` VALUES (1,1);
/*!40000 ALTER TABLE `wagtailcore_workflowpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_workflowstate`
--

DROP TABLE IF EXISTS `wagtailcore_workflowstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_workflowstate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `current_task_state_id` int DEFAULT NULL,
  `page_id` int NOT NULL,
  `requested_by_id` int DEFAULT NULL,
  `workflow_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `current_task_state_id` (`current_task_state_id`),
  KEY `wagtailcore_workflow_page_id_6c962862_fk_wagtailco` (`page_id`),
  KEY `wagtailcore_workflow_requested_by_id_4090bca3_fk_auth_user` (`requested_by_id`),
  KEY `wagtailcore_workflow_workflow_id_1f18378f_fk_wagtailco` (`workflow_id`),
  CONSTRAINT `wagtailcore_workflow_current_task_state_i_3a1a0632_fk_wagtailco` FOREIGN KEY (`current_task_state_id`) REFERENCES `wagtailcore_taskstate` (`id`),
  CONSTRAINT `wagtailcore_workflow_page_id_6c962862_fk_wagtailco` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`),
  CONSTRAINT `wagtailcore_workflow_requested_by_id_4090bca3_fk_auth_user` FOREIGN KEY (`requested_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `wagtailcore_workflow_workflow_id_1f18378f_fk_wagtailco` FOREIGN KEY (`workflow_id`) REFERENCES `wagtailcore_workflow` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_workflowstate`
--

LOCK TABLES `wagtailcore_workflowstate` WRITE;
/*!40000 ALTER TABLE `wagtailcore_workflowstate` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailcore_workflowstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_workflowtask`
--

DROP TABLE IF EXISTS `wagtailcore_workflowtask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailcore_workflowtask` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sort_order` int DEFAULT NULL,
  `task_id` int NOT NULL,
  `workflow_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_workflowtask_workflow_id_task_id_4ec7a62b_uniq` (`workflow_id`,`task_id`),
  KEY `wagtailcore_workflowtask_task_id_ce7716fe_fk_wagtailcore_task_id` (`task_id`),
  KEY `wagtailcore_workflowtask_workflow_id_b9717175` (`workflow_id`),
  CONSTRAINT `wagtailcore_workflow_workflow_id_b9717175_fk_wagtailco` FOREIGN KEY (`workflow_id`) REFERENCES `wagtailcore_workflow` (`id`),
  CONSTRAINT `wagtailcore_workflowtask_task_id_ce7716fe_fk_wagtailcore_task_id` FOREIGN KEY (`task_id`) REFERENCES `wagtailcore_task` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_workflowtask`
--

LOCK TABLES `wagtailcore_workflowtask` WRITE;
/*!40000 ALTER TABLE `wagtailcore_workflowtask` DISABLE KEYS */;
INSERT INTO `wagtailcore_workflowtask` VALUES (1,0,1,1);
/*!40000 ALTER TABLE `wagtailcore_workflowtask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtaildocs_document`
--

DROP TABLE IF EXISTS `wagtaildocs_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtaildocs_document` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `uploaded_by_user_id` int DEFAULT NULL,
  `collection_id` int NOT NULL,
  `file_size` int unsigned DEFAULT NULL,
  `file_hash` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtaildocs_document_uploaded_by_user_id_17258b41_fk_auth_user` (`uploaded_by_user_id`),
  KEY `wagtaildocs_document_collection_id_23881625_fk_wagtailco` (`collection_id`),
  CONSTRAINT `wagtaildocs_document_collection_id_23881625_fk_wagtailco` FOREIGN KEY (`collection_id`) REFERENCES `wagtailcore_collection` (`id`),
  CONSTRAINT `wagtaildocs_document_uploaded_by_user_id_17258b41_fk_auth_user` FOREIGN KEY (`uploaded_by_user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `wagtaildocs_document_chk_1` CHECK ((`file_size` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtaildocs_document`
--

LOCK TABLES `wagtaildocs_document` WRITE;
/*!40000 ALTER TABLE `wagtaildocs_document` DISABLE KEYS */;
INSERT INTO `wagtaildocs_document` VALUES (3,'BSc (Hons) Cyber Security and Networking Programme Sheet','documents/ID_2320_Cyber-Security-Top-up_Prog-Sheet_2021_r03.pdf','2022-01-31 07:59:27.863125',NULL,1,287861,'3ec2c678204b9fe82934782725aa26050b6ef913'),(4,'L3DC Qualification Specification','documents/L3DC.pdf','2022-01-31 08:02:24.399506',NULL,1,986647,'f674319ae9b3201c1219821cfbb22c73315817a6'),(5,'L3DC Programme Sheet','documents/NCCEdu_L3DC-programme-sheet-A4_v2020_02.pdf','2022-01-31 08:05:16.634035',NULL,1,653176,'3ac40f28cecec2e4447698e5054e3f6d27532356'),(6,'L4DC Qualification Specification','documents/L4DC-Qualification-Specification-with-Specialisms-V3.1.pdf','2022-01-31 08:06:40.530492',NULL,1,703131,'6f975863c3af68980b940b983535b3fea23b3db4'),(7,'L4DC Programme Sheet','documents/L4DC-Specialisms_programme-sheet-A4_v04_SUMMER-2021-onward.pdf','2022-01-31 08:07:10.014547',NULL,1,499854,'e10bdfc5c582e089df91b9ec96fd02654cda2bf8'),(8,'L4DCBIT Programme Sheet','documents/NCCEDU_L4DC-BM_2021-1.pdf','2022-01-31 08:10:59.693262',NULL,1,203340,'ab76a4fadc38a953a3daa756e94bd227e07e8453'),(9,'L4DBIT Qualification Specification','documents/PD_QUS_05-L4DBIT-Qualification-Unit-Specification-V2.4.pdf','2022-01-31 08:11:32.364221',NULL,1,683032,'e9ce2ff61ffced57fc436864546a3f3cd765a09b'),(10,'L5DC Programme Sheet','documents/NCCEDU_L5DC-programme-sheet-A4_2020-2021.pdf','2022-01-31 08:13:32.082883',NULL,1,188967,'0dfce58da9ad9e6b18d731f0ebd7eac52a1875ac'),(11,'L5DC Qualification Specification','documents/L5DC-Qualification-Specification-with-Specialisms-V3.1-1.pdf','2022-01-31 08:14:09.242240',NULL,1,701539,'60c3eaafa2263fa0a7c8c7a348928ea6c5f56e56'),(12,'L5DCBIT Programme Sheet','documents/NCCEDU_L5DC-programme-sheet-A4_2020-2021-2.pdf','2022-01-31 08:15:51.737087',NULL,1,188967,'0dfce58da9ad9e6b18d731f0ebd7eac52a1875ac'),(13,'L5DCBIT Qualification Specification','documents/NCCEDU_L5DC-Unit-Specification-with-Specialisms-SUMMER-2021-onward-v03-1-1.pdf','2022-01-31 08:16:37.324419',NULL,1,840791,'a2fde46ffcf2f9507ddc80c034ea3bf1b022b0ca'),(14,'L5DCCS Programme Sheet','documents/NCCEDU_L5DC-programme-sheet-A4_2020-2021_OON9xY5.pdf','2022-01-31 08:20:30.312696',NULL,1,188967,'0dfce58da9ad9e6b18d731f0ebd7eac52a1875ac'),(15,'L5DCCS Qualification Specification','documents/NCCEDU_L5DC-Unit-Specification-with-Specialisms-SUMMER-2021-onward-v03-1-1_Un1fqUu.pdf','2022-01-31 08:20:50.545612',NULL,1,840791,'a2fde46ffcf2f9507ddc80c034ea3bf1b022b0ca');
/*!40000 ALTER TABLE `wagtaildocs_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtaildocs_uploadeddocument`
--

DROP TABLE IF EXISTS `wagtaildocs_uploadeddocument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtaildocs_uploadeddocument` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file` varchar(200) NOT NULL,
  `uploaded_by_user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtaildocs_uploaded_uploaded_by_user_id_8dd61a73_fk_auth_user` (`uploaded_by_user_id`),
  CONSTRAINT `wagtaildocs_uploaded_uploaded_by_user_id_8dd61a73_fk_auth_user` FOREIGN KEY (`uploaded_by_user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtaildocs_uploadeddocument`
--

LOCK TABLES `wagtaildocs_uploadeddocument` WRITE;
/*!40000 ALTER TABLE `wagtaildocs_uploadeddocument` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtaildocs_uploadeddocument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailembeds_embed`
--

DROP TABLE IF EXISTS `wagtailembeds_embed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailembeds_embed` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` longtext NOT NULL,
  `max_width` smallint DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `html` longtext NOT NULL,
  `title` longtext NOT NULL,
  `author_name` longtext NOT NULL,
  `provider_name` longtext NOT NULL,
  `thumbnail_url` longtext NOT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `last_updated` datetime(6) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `cache_until` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailembeds_embed_hash_c9bd8c9a_uniq` (`hash`),
  KEY `wagtailembeds_embed_cache_until_26c94bb0` (`cache_until`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailembeds_embed`
--

LOCK TABLES `wagtailembeds_embed` WRITE;
/*!40000 ALTER TABLE `wagtailembeds_embed` DISABLE KEYS */;
INSERT INTO `wagtailembeds_embed` VALUES (1,'https://www.youtube.com/watch?v=wl1JHpRox_8',NULL,'video','<iframe width=\"200\" height=\"113\" src=\"https://www.youtube.com/embed/wl1JHpRox_8?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>','黃明志 & 三上悠亞【不小心 I Shot You】@亞洲通才 2020 Asian Polymath','Namewee','YouTube','https://i.ytimg.com/vi/wl1JHpRox_8/hqdefault.jpg',200,113,'2021-12-16 09:58:51.739939','1ad081ba4cdd2dd05276e94a68102ac5',NULL),(2,'https://www.youtube.com/watch?v=E_JEjE-bwlQ',NULL,'video','<iframe width=\"200\" height=\"113\" src=\"https://www.youtube.com/embed/E_JEjE-bwlQ?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>','# I\'M CAPTAIN JACK SPARROW- MASHUP','Oyasis Entertainment','YouTube','https://i.ytimg.com/vi/E_JEjE-bwlQ/hqdefault.jpg',200,113,'2021-12-16 09:59:13.035627','274a126824170f962d01af737cebfb96',NULL),(3,'https://www.youtube.com/watch?v=Ker_LWqcTQw',NULL,'video','<iframe width=\"200\" height=\"113\" src=\"https://www.youtube.com/embed/Ker_LWqcTQw?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>','NCC Education BSc (Hons) Cyber Security and Networking Top-Up Degree Webinar','NCC Education','YouTube','https://i.ytimg.com/vi/Ker_LWqcTQw/hqdefault.jpg',200,113,'2022-02-03 05:11:26.007310','16db90722f1211453653e048f8408e49',NULL);
/*!40000 ALTER TABLE `wagtailembeds_embed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailforms_formsubmission`
--

DROP TABLE IF EXISTS `wagtailforms_formsubmission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailforms_formsubmission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `form_data` longtext NOT NULL,
  `submit_time` datetime(6) NOT NULL,
  `page_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco` (`page_id`),
  CONSTRAINT `wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailforms_formsubmission`
--

LOCK TABLES `wagtailforms_formsubmission` WRITE;
/*!40000 ALTER TABLE `wagtailforms_formsubmission` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailforms_formsubmission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailimages_image`
--

DROP TABLE IF EXISTS `wagtailimages_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailimages_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `width` int NOT NULL,
  `height` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `focal_point_x` int unsigned DEFAULT NULL,
  `focal_point_y` int unsigned DEFAULT NULL,
  `focal_point_width` int unsigned DEFAULT NULL,
  `focal_point_height` int unsigned DEFAULT NULL,
  `uploaded_by_user_id` int DEFAULT NULL,
  `file_size` int unsigned DEFAULT NULL,
  `collection_id` int NOT NULL,
  `file_hash` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user_id` (`uploaded_by_user_id`),
  KEY `wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco` (`collection_id`),
  KEY `wagtailimages_image_created_at_86fa6cd4` (`created_at`),
  CONSTRAINT `wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco` FOREIGN KEY (`collection_id`) REFERENCES `wagtailcore_collection` (`id`),
  CONSTRAINT `wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user_id` FOREIGN KEY (`uploaded_by_user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `wagtailimages_image_chk_1` CHECK ((`focal_point_x` >= 0)),
  CONSTRAINT `wagtailimages_image_chk_2` CHECK ((`focal_point_y` >= 0)),
  CONSTRAINT `wagtailimages_image_chk_3` CHECK ((`focal_point_width` >= 0)),
  CONSTRAINT `wagtailimages_image_chk_4` CHECK ((`focal_point_height` >= 0)),
  CONSTRAINT `wagtailimages_image_chk_5` CHECK ((`file_size` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailimages_image`
--

LOCK TABLES `wagtailimages_image` WRITE;
/*!40000 ALTER TABLE `wagtailimages_image` DISABLE KEYS */;
INSERT INTO `wagtailimages_image` VALUES (5,'3.Reception copy.jpg','original_images/3.Reception_copy.jpg',1600,1200,'2021-12-22 09:53:47.729743',NULL,NULL,NULL,NULL,NULL,544466,1,'4f386a0279044d6060c5fbb29ab42e329883d559'),(6,'8.Stair copy.jpg','original_images/8.Stair_copy.jpg',1200,1600,'2021-12-22 09:53:52.048378',NULL,NULL,NULL,NULL,NULL,854881,1,'06862014a2e5ef1a9be571e491d0efe441927d61'),(7,'9.Meeting Room 1 copy.jpg','original_images/9.Meeting_Room_1_copy.jpg',1600,1200,'2021-12-22 09:53:56.136193',NULL,NULL,NULL,NULL,NULL,827454,1,'b44cfe9473c9422ff0ead7ccd865275c3eba7380'),(8,'16.Room 3 (A) copy.jpg','original_images/16.Room_3_A_copy.jpg',1600,1200,'2021-12-22 09:53:59.821999',NULL,NULL,NULL,NULL,NULL,768749,1,'0d9be203917ad319696fa3042b8f1d35b42680fe'),(9,'DSC01644 copy.jpg','original_images/DSC01644_copy.jpg',2850,2048,'2021-12-22 09:54:12.763262',NULL,NULL,NULL,NULL,NULL,3337111,1,'7b07ca1d2940bee0d615a77676e65b3bd179f5e1'),(10,'DSC01698 copy.jpg','original_images/DSC01698_copy.jpg',3072,1974,'2021-12-22 09:54:26.761088',NULL,NULL,NULL,NULL,NULL,3730752,1,'ad9f64b81f4845193c9e5089dee2ecc45627bc43'),(11,'DSC01721 copy.jpg','original_images/DSC01721_copy.jpg',2948,2048,'2021-12-22 09:54:41.041831',NULL,NULL,NULL,NULL,NULL,3788385,1,'073bd115b06fd38016f0f5db7464aaa490fb3a41'),(12,'DSC01773 copy.jpg','original_images/DSC01773_copy.jpg',3072,1953,'2021-12-22 09:54:58.253938',NULL,NULL,NULL,NULL,NULL,4495286,1,'bb94f29d0d0e30acace4ba026312c0cea73ea503'),(13,'DSC01844 copy.jpg','original_images/DSC01844_copy.jpg',3072,2048,'2021-12-22 09:55:15.185529',NULL,NULL,NULL,NULL,NULL,4377155,1,'73612c0ea4fd6e8120a6c5ec939ce3bdfaee9970'),(14,'DSC01911 copy.jpg','original_images/DSC01911_copy.jpg',3072,1732,'2021-12-22 09:55:27.625690',NULL,NULL,NULL,NULL,NULL,3465817,1,'fcc916b8c43ed1c4ec5ae4e5cf2fe862ccfc589e'),(15,'DSC01918 copy.jpg','original_images/DSC01918_copy.jpg',2942,2048,'2021-12-22 09:55:42.233649',NULL,NULL,NULL,NULL,NULL,3840995,1,'affdb43cecb647fcce16eecf0a4aed550f19a936'),(16,'DSC01942 copy.jpg','original_images/DSC01942_copy.jpg',3072,2048,'2021-12-22 09:55:59.407507',NULL,NULL,NULL,NULL,NULL,4618179,1,'651289816bf9856d94bdab00a4fba863257a9f34'),(17,'DSC01949 copy.jpg','original_images/DSC01949_copy.jpg',3072,1974,'2021-12-22 09:56:16.052522',NULL,NULL,NULL,NULL,NULL,4455133,1,'22592e78d61a95a44a06f70c7faf3116527248cc'),(18,'DSC01977 copy.jpg','original_images/DSC01977_copy.jpg',2384,2048,'2021-12-22 09:56:27.642510',NULL,NULL,NULL,NULL,NULL,2904495,1,'d30779c89c59e1e4684400910c03e3602682dc4d'),(19,'DSC01986 copy.jpg','original_images/DSC01986_copy.jpg',3072,2048,'2021-12-22 09:56:40.118436',NULL,NULL,NULL,NULL,NULL,3168366,1,'e606583ba2dbaeb4b712d6f76409556ccc5980f4'),(20,'DSC02094 copy.jpg','original_images/DSC02094_copy.jpg',3072,1972,'2021-12-22 09:56:50.072953',NULL,NULL,NULL,NULL,NULL,2457877,1,'fc4fc5624775cb1aeb463220f17ab73c037fce76'),(21,'DSC02119 copy.jpg','original_images/DSC02119_copy.jpg',2048,2968,'2021-12-22 09:57:01.419417',NULL,NULL,NULL,NULL,NULL,2930929,1,'dc8ea899f1944b54f89e506a1e67e8b1489557a3'),(22,'DSC02122 copy.jpg','original_images/DSC02122_copy.jpg',2048,3072,'2021-12-22 09:57:12.804737',NULL,NULL,NULL,NULL,NULL,2819520,1,'091bdf4c93d31a23e14fbfd312e37a1956368c34'),(23,'DSC02135 copy.jpg','original_images/DSC02135_copy.jpg',2805,2048,'2021-12-22 09:57:20.777186',NULL,NULL,NULL,NULL,NULL,1955074,1,'19fc0238e22ccf8ba0c6b9129b9ca902af239d0c'),(24,'Image from iOS (1) copy.jpg','original_images/Image_from_iOS_1_copy.jpg',4032,3024,'2021-12-22 09:57:34.897014',NULL,NULL,NULL,NULL,NULL,3552982,1,'8ad7158202240408121e3a5b36711a535c2fd074'),(25,'Image from iOS (5) copy.jpg','original_images/Image_from_iOS_5_copy.jpg',4032,3024,'2021-12-22 09:57:50.251478',NULL,NULL,NULL,NULL,NULL,3975408,1,'5d36679dab4818e33baed97479fe6ec40ed955c9'),(26,'IMG_2828 copy.jpg','original_images/IMG_2828_copy.jpg',4032,3024,'2021-12-22 09:58:06.537739',NULL,NULL,NULL,NULL,NULL,4233512,1,'08f20856f12c73af2ea11e16204038e57ea3e894'),(27,'IMG_6100 copy.jpg','original_images/IMG_6100_copy.jpg',4032,3024,'2021-12-22 09:58:33.567655',NULL,NULL,NULL,NULL,NULL,7266441,1,'7d57ac0693897bd7aece911559c81f06a991d60b'),(28,'IMG_6142 copy.jpg','original_images/IMG_6142_copy.jpg',4032,3024,'2021-12-22 09:58:57.927402',NULL,NULL,NULL,NULL,NULL,6523793,1,'693308f68cd5e663db0928b3bacf28f447235104'),(29,'Graduation_1','original_images/DSC01918_copy-min.jpg',2942,2048,'2021-12-22 10:05:16.817840',NULL,NULL,NULL,NULL,NULL,947934,1,'4211d0c388dd9bd82fee30d030269e3bf1118b8f'),(30,'Graduation_2','original_images/DSC01942_copy-min.jpg',3072,2048,'2021-12-22 10:05:18.253941',NULL,NULL,NULL,NULL,NULL,1035060,1,'5e92b8eb636f26090fae3cab89bd6c685d12f0bc'),(31,'Graduation_3','original_images/DSC01949_Copy_2-min_Qc4R6rp.jpg',2632,1974,'2021-12-22 10:05:19.613185',NULL,NULL,NULL,NULL,NULL,858990,1,'ddc2823b48dedf8aaf0b750062a2bf9b5161898b'),(32,'Graduation_4','original_images/DSC01977_copy-min.jpg',2384,2048,'2021-12-22 10:05:20.552660',NULL,NULL,NULL,NULL,NULL,589892,1,'d156035a020d0a15905502613b4e28cd77804430'),(33,'Graduation_5','original_images/DSC02122_copy-min.jpg',2048,3072,'2021-12-22 10:05:21.815595',NULL,NULL,NULL,NULL,NULL,611642,1,'acd209f2ea280fd26d0ef6ffa4252e20907cf517'),(34,'Graduation_6','original_images/DSC02135_copy-min.jpg',2805,2048,'2021-12-22 10:05:22.596334',NULL,NULL,NULL,NULL,NULL,331293,1,'c8b682f3a2fd47cbd4124f1bbee4fbb1c6f90ef4'),(35,'Classroom_1','original_images/Image_from_iOS_1_copy-min.jpg',4032,3024,'2021-12-22 10:05:24.023309',NULL,NULL,NULL,NULL,NULL,844998,1,'6c75e20e57bf854df69a32a7144c0e0db4a0f3b8'),(36,'Classroom_2','original_images/Image_from_iOS_5_copy-min.jpg',4032,3024,'2021-12-22 10:05:25.590242',NULL,NULL,NULL,NULL,NULL,1019646,1,'98699a553ddb80bb196511e7294068eb08abca84'),(37,'Lab','original_images/IMG_2828_copy-min.jpg',4032,3024,'2021-12-22 10:05:27.226886',NULL,NULL,NULL,NULL,NULL,885657,1,'a8e1c958c46a64fc2b68c7eb40f494ecf60da173'),(38,'Campus_1','original_images/IMG_6100_copy-min.jpg',4032,3024,'2021-12-22 10:05:29.505844',NULL,NULL,NULL,NULL,NULL,1476873,1,'375bcfebb850940552dee8dca57473c9aec776ad'),(39,'Campus_2','original_images/IMG_6142_copy-min.jpg',4032,3024,'2021-12-22 10:05:31.864509',NULL,NULL,NULL,NULL,NULL,1574585,1,'88dade776fdcf91b972e07c323a06c0905d50151'),(40,'Reception','original_images/3.Reception_copy-min.jpg',1600,1200,'2021-12-22 10:05:32.250111',NULL,NULL,NULL,NULL,NULL,174668,1,'b1a06ddcd20bcf610570ef098e35c9ea01004024'),(41,'Stair','original_images/8.Stair_copy-min.jpg',1200,1600,'2021-12-22 10:05:32.699751',NULL,NULL,NULL,NULL,NULL,242165,1,'33f3262c7c312700c43ad680f76f999243e92c1c'),(42,'Meeting Room','original_images/9.Meeting_Room_1_copy-min.jpg',1600,1200,'2021-12-22 10:05:33.171758',NULL,NULL,NULL,NULL,NULL,240085,1,'39cf3afd08f8ba8887bf6deb553680228451d050'),(43,'Room 3','original_images/16.Room_3_A_copy-min.jpg',1600,1200,'2021-12-22 10:05:33.576168',NULL,NULL,NULL,NULL,NULL,241163,1,'71dc1603ecc6ff77dc060c3e2d13329d8ddd7095'),(44,'Graduation_7','original_images/DSC01644_copy-min.jpg',2850,2048,'2021-12-22 10:05:34.770898',NULL,NULL,NULL,NULL,NULL,822002,1,'34dc61f1db43e0fed857c3bbb2030927ab78bbd3'),(45,'Graduation_8','original_images/DSC01698_copy-min.jpg',3072,1974,'2021-12-22 10:05:35.930196',NULL,NULL,NULL,NULL,NULL,810238,1,'90cd36d4a970389bec516eb5b354ff0774eabed5'),(46,'Graduation_9','original_images/DSC01721_copy-min.jpg',2948,2048,'2021-12-22 10:05:37.146236',NULL,NULL,NULL,NULL,NULL,824223,1,'325d1616ade1241974e43773223e4317fa7200e7'),(47,'Graduation_10','original_images/DSC01773_copy_2-min.jpg',2604,1953,'2021-12-22 10:05:38.489528',NULL,NULL,NULL,NULL,NULL,840956,1,'a9ae05e230b9dbdb3647ac318c4c26823a4056e3'),(48,'Graduation_11','original_images/DSC01844_copy_2-min.jpg',2730,2048,'2021-12-22 10:05:39.701489',NULL,NULL,NULL,NULL,NULL,806634,1,'acb090eab71733e0f71f293ec7049e78b1ec6439'),(49,'Graduation_12','original_images/DSC01911_copy-min.jpg',3072,1732,'2021-12-22 10:05:40.989526',NULL,NULL,NULL,NULL,NULL,937827,1,'7d718338adbed3dcc4d963d10884442543efd170'),(51,'Level 4 Diploma in Computing','original_images/L4Dc.jpg',1600,1066,'2022-01-13 08:44:44.605098',NULL,NULL,NULL,NULL,NULL,827869,1,'340b3bd94ea5c9741747aa5094c8f96d268e6522'),(52,'Level 4 Diploma in Computing (with Business Management)','original_images/L4BIT_gUdF6yS.jpg',1600,1066,'2022-01-14 04:11:17.046010',NULL,NULL,NULL,NULL,NULL,529395,1,'120b5b747a836234f5b50a78fb98abb37025c7fc'),(53,'L4DCDO','original_images/L4DCDO.jpg',1600,1066,'2022-01-14 04:11:46.496589',NULL,NULL,NULL,NULL,NULL,386638,1,'20ba13bca926065472f16668258b44bd186a8cf3'),(54,'L4DCS','original_images/L4DCS.jpg',1600,1066,'2022-01-14 04:12:09.806507',NULL,NULL,NULL,NULL,NULL,471837,1,'083f8b2d71bdeb923df2146fa453e220b33dee0b'),(55,'L4DCSI','original_images/L4DCSI.jpg',1600,1066,'2022-01-14 04:12:29.454464',NULL,NULL,NULL,NULL,NULL,377937,1,'767427190a4f01bf7dddf174241e5ca5907be0da'),(56,'L4DNCS','original_images/L4DNCS.jpg',1600,1066,'2022-01-14 04:12:50.160474',NULL,NULL,NULL,NULL,NULL,594954,1,'9acce6ed92192f155a131fb897cabfdbfab6e27e'),(57,'L4DNE','original_images/L4DNE.jpg',1600,1066,'2022-01-14 04:13:10.444504',NULL,NULL,NULL,NULL,NULL,791629,1,'20cbd157a8d2d382f2097da5f94ec5b4e5249a63'),(58,'L4DP','original_images/L4DP_AzHNanN.jpg',1600,1066,'2022-01-14 04:13:31.255794',NULL,NULL,NULL,NULL,NULL,555733,1,'648bfa5e063c3af88d4f5b9d80e45f55b90c94fd'),(59,'L4DWM','original_images/L4DWM.jpg',1600,1066,'2022-01-14 04:13:51.138327',NULL,NULL,NULL,NULL,NULL,341027,1,'0bb97440a36216799ddb963edf8519b7c22d1f8e'),(60,'L5DBIT','original_images/L5DBIT_THjSkms.jpg',1600,1066,'2022-01-14 04:14:33.376295',NULL,NULL,NULL,NULL,NULL,532824,1,'610f8423b971ba4028268af13b34a700bda65a88'),(62,'L5DC','original_images/L5DC_zpbM5MQ.jpg',1600,1066,'2022-01-14 04:15:55.240226',NULL,NULL,NULL,NULL,NULL,828978,1,'11253bfc22c78d63b44db9473d31bfc972765621'),(65,'L3DC','original_images/L3DC.jpg',1600,1066,'2022-01-14 05:13:37.520304',NULL,NULL,NULL,NULL,NULL,827780,1,'638f222a36fdf068ae65fd89e198db95619f5ee2'),(66,'L5DC CS','original_images/L5DC_CS_Ps4XN6X.jpg',1600,1066,'2022-01-14 05:14:07.652723',NULL,NULL,NULL,NULL,NULL,620391,1,'146e34b86f6c7e41e44829217a80bbe55e4d5fd4'),(67,'L5DIP.jpg','original_images/L5DIP.jpg',1600,1066,'2022-02-03 04:14:38.356696',NULL,NULL,NULL,NULL,NULL,613480,1,'7adbfe5238214f179438f05b8b996b3ecf9de524'),(68,'L5DCS','original_images/L5DCS.jpg',1600,1066,'2022-02-03 04:15:26.532672',NULL,NULL,NULL,NULL,NULL,518836,1,'29bbb0410349fb92d80d6f53d54e9f927dfeda7a'),(69,'L5DIP','original_images/L5DIP_cnxmSaJ.jpg',1600,1066,'2022-02-03 04:15:47.293113',NULL,NULL,NULL,NULL,NULL,613480,1,'7adbfe5238214f179438f05b8b996b3ecf9de524'),(70,'L5DANNES','original_images/L5DANES.jpg',1600,1066,'2022-02-03 04:16:12.046767',NULL,NULL,NULL,NULL,NULL,1122297,1,'c6888f1afaaeb81861dd3257fab909395337b229'),(71,'BSC (HONS) CYBER SECURITY AND NETWORKING','original_images/BSC_HONS_CYBER_SECURITY_.jpg',1600,1066,'2022-02-03 05:03:38.669419',NULL,NULL,NULL,NULL,NULL,526020,1,'33f1c703921ae4c79bd02a57e128ff2128e821d3'),(72,'header.png','original_images/header.png',5855,1494,'2022-02-04 08:30:39.704916',NULL,NULL,NULL,NULL,NULL,762711,1,'38b5b434fc6a5dfa178fdb647062427e2a6a605d'),(75,'mba1.jpg','original_images/mba1.jpg',1600,1066,'2022-07-26 03:44:22.240359',NULL,NULL,NULL,NULL,3,78804,1,'faad17594aef6190a95a1b8df0ca6869fbd3d9d6'),(76,'mba2.jpg','original_images/mba2.jpg',1600,1066,'2022-07-26 04:52:56.523616',NULL,NULL,NULL,NULL,3,83692,1,'e3b68747e0ffdcec73ea935e55f5b181aeaa13bf'),(77,'mba5.jpg','original_images/mba5.jpg',1600,1066,'2022-07-26 04:53:35.407441',NULL,NULL,NULL,NULL,3,92232,1,'11a907202d14c8d629f2a9b3d4f855650160563e'),(78,'mba3.jpg','original_images/mba3.jpg',1600,1066,'2022-07-26 05:26:35.763578',NULL,NULL,NULL,NULL,3,90078,1,'74553b090a609071066d77c46f79c16dc7d04fba'),(79,'mba4.jpg','original_images/mba4.jpg',1600,1066,'2022-07-26 05:27:01.405753',NULL,NULL,NULL,NULL,3,80351,1,'5ad0528901facf9aacb63979680501bba872eefb'),(80,'mba6.jpg','original_images/mba6.jpg',1600,1066,'2022-07-26 05:27:17.510462',NULL,NULL,NULL,NULL,3,80869,1,'c7ba49185c8296a8db7cd1862f9fbcef15420630'),(81,'mba7.jpg','original_images/mba7.jpg',1600,1066,'2022-07-26 05:27:34.018191',NULL,NULL,NULL,NULL,3,114209,1,'801495fc298bc0213aa84f28cd56ba452af014c7'),(82,'mba8.jpg','original_images/mba8.jpg',1600,1066,'2022-07-26 05:27:47.658669',NULL,NULL,NULL,NULL,3,113299,1,'4a910a9c3cacc9d03f6d34d8f988b34c0f162ca2'),(83,'mba10.jpg','original_images/mba10.jpg',1600,1066,'2022-07-26 05:37:41.768993',NULL,NULL,NULL,NULL,3,110061,1,'b2e90c2804a8593cadb2974b9c2b6c28c829f45c'),(84,'mba25.jpg','original_images/mba25.jpg',1600,1066,'2022-07-26 05:38:00.651144',NULL,NULL,NULL,NULL,3,186845,1,'2c71930b5cfa9f495880512f9e7275bfdcaa73f8');
/*!40000 ALTER TABLE `wagtailimages_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailimages_rendition`
--

DROP TABLE IF EXISTS `wagtailimages_rendition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailimages_rendition` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `width` int NOT NULL,
  `height` int NOT NULL,
  `focal_point_key` varchar(16) NOT NULL,
  `filter_spec` varchar(255) NOT NULL,
  `image_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq` (`image_id`,`filter_spec`,`focal_point_key`),
  KEY `wagtailimages_rendition_filter_spec_1cba3201` (`filter_spec`),
  CONSTRAINT `wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim` FOREIGN KEY (`image_id`) REFERENCES `wagtailimages_image` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=324 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailimages_rendition`
--

LOCK TABLES `wagtailimages_rendition` WRITE;
/*!40000 ALTER TABLE `wagtailimages_rendition` DISABLE KEYS */;
INSERT INTO `wagtailimages_rendition` VALUES (23,'images/DSC01911_copy-min.max-165x165.jpg',165,93,'','max-165x165',49),(26,'images/DSC01721_copy-min.max-165x165.jpg',165,114,'','max-165x165',46),(27,'images/DSC01698_copy-min.max-165x165.jpg',165,106,'','max-165x165',45),(28,'images/DSC01644_copy-min.max-165x165.jpg',165,118,'','max-165x165',44),(29,'images/16.Room_3_A_copy-min.max-165x165.jpg',165,123,'','max-165x165',43),(30,'images/9.Meeting_Room_1_copy-min.max-165x165.jpg',165,123,'','max-165x165',42),(31,'images/8.Stair_copy-min.max-165x165.jpg',123,165,'','max-165x165',41),(32,'images/3.Reception_copy-min.max-165x165.jpg',165,123,'','max-165x165',40),(33,'images/IMG_6142_copy-min.max-165x165.jpg',165,123,'','max-165x165',39),(34,'images/IMG_6100_copy-min.max-165x165.jpg',165,123,'','max-165x165',38),(35,'images/DSC02135_copy-min.max-165x165.jpg',165,120,'','max-165x165',34),(36,'images/DSC02122_copy-min.max-165x165.jpg',110,165,'','max-165x165',33),(37,'images/DSC01977_copy-min.max-165x165.jpg',165,141,'','max-165x165',32),(39,'images/DSC01942_copy-min.max-165x165.jpg',165,110,'','max-165x165',30),(40,'images/DSC01918_copy-min.max-165x165.jpg',165,114,'','max-165x165',29),(41,'images/DSC02135_copy-min.original.jpg',2805,2048,'','original',34),(42,'images/DSC02135_copy-min.max-800x600.jpg',800,584,'','max-800x600',34),(43,'images/IMG_2828_copy-min.max-165x165.jpg',165,123,'','max-165x165',37),(44,'images/Image_from_iOS_5_copy-min.max-165x165.jpg',165,123,'','max-165x165',36),(45,'images/Image_from_iOS_1_copy-min.max-165x165.jpg',165,123,'','max-165x165',35),(46,'images/DSC01918_copy-min.2e16d0ba.fill-150x150.jpg',150,150,'2e16d0ba','fill-150x150',29),(47,'images/DSC01942_copy-min.2e16d0ba.fill-150x150.jpg',150,150,'2e16d0ba','fill-150x150',30),(49,'images/DSC01977_copy-min.2e16d0ba.fill-150x150.jpg',150,150,'2e16d0ba','fill-150x150',32),(50,'images/DSC01918_copy-min.max-3000x2000.jpg',2873,2000,'','max-3000x2000',29),(51,'images/DSC01942_copy-min.max-3000x2000.jpg',3000,2000,'','max-3000x2000',30),(53,'images/DSC01977_copy-min.max-3000x2000.jpg',2328,2000,'','max-3000x2000',32),(54,'images/DSC02135_copy-min.2e16d0ba.fill-150x150.jpg',150,150,'2e16d0ba','fill-150x150',34),(55,'images/DSC02135_copy-min.max-3000x2000.jpg',2739,2000,'','max-3000x2000',34),(56,'images/DSC01644_copy-min.2e16d0ba.fill-150x150.jpg',150,150,'2e16d0ba','fill-150x150',44),(57,'images/DSC01698_copy-min.2e16d0ba.fill-150x150.jpg',150,150,'2e16d0ba','fill-150x150',45),(59,'images/DSC01644_copy-min.max-3000x2000.jpg',2783,2000,'','max-3000x2000',44),(60,'images/DSC01698_copy-min.max-3000x2000.jpg',3000,1927,'','max-3000x2000',45),(64,'images/IMG_6142_copy-min.2e16d0ba.fill-150x150.jpg',150,150,'2e16d0ba','fill-150x150',39),(65,'images/3.Reception_copy-min.2e16d0ba.fill-150x150.jpg',150,150,'2e16d0ba','fill-150x150',40),(66,'images/IMG_6100_copy-min.2e16d0ba.fill-150x150.jpg',150,150,'2e16d0ba','fill-150x150',38),(67,'images/9.Meeting_Room_1_copy-min.2e16d0ba.fill-150x150.jpg',150,150,'2e16d0ba','fill-150x150',42),(68,'images/IMG_2828_copy-min.2e16d0ba.fill-150x150.jpg',150,150,'2e16d0ba','fill-150x150',37),(69,'images/16.Room_3_A_copy-min.2e16d0ba.fill-150x150.jpg',150,150,'2e16d0ba','fill-150x150',43),(70,'images/8.Stair_copy-min.2e16d0ba.fill-150x150.jpg',150,150,'2e16d0ba','fill-150x150',41),(71,'images/Image_from_iOS_5_copy-min.2e16d0ba.fill-150x150.jpg',150,150,'2e16d0ba','fill-150x150',36),(72,'images/IMG_6142_copy-min.max-3000x2000.jpg',2666,2000,'','max-3000x2000',39),(73,'images/3.Reception_copy-min.max-3000x2000.jpg',1600,1200,'','max-3000x2000',40),(74,'images/IMG_6100_copy-min.max-3000x2000.jpg',2666,2000,'','max-3000x2000',38),(75,'images/9.Meeting_Room_1_copy-min.max-3000x2000.jpg',1600,1200,'','max-3000x2000',42),(76,'images/IMG_2828_copy-min.max-3000x2000.jpg',2666,2000,'','max-3000x2000',37),(77,'images/16.Room_3_A_copy-min.max-3000x2000.jpg',1600,1200,'','max-3000x2000',43),(78,'images/8.Stair_copy-min.max-3000x2000.jpg',1200,1600,'','max-3000x2000',41),(79,'images/Image_from_iOS_5_copy-min.max-3000x2000.jpg',2666,2000,'','max-3000x2000',36),(80,'images/Image_from_iOS_1_copy-min.2e16d0ba.fill-150x150.jpg',150,150,'2e16d0ba','fill-150x150',35),(81,'images/Image_from_iOS_1_copy-min.max-3000x2000.jpg',2666,2000,'','max-3000x2000',35),(88,'images/DSC01911_copy-min.original.jpg',3072,1732,'','original',49),(89,'images/DSC01911_copy-min.max-800x600.jpg',800,451,'','max-800x600',49),(145,'images/L3DC.max-165x165.jpg',165,109,'','max-165x165',65),(146,'images/L3DC.max-1440x1440.jpg',1440,959,'','max-1440x1440',65),(147,'images/L4Dc.max-165x165.jpg',165,109,'','max-165x165',51),(150,'images/L4BIT_gUdF6yS.max-165x165.jpg',165,109,'','max-165x165',52),(165,'images/L4DP_AzHNanN.max-165x165.jpg',165,109,'','max-165x165',58),(174,'images/L5DC_zpbM5MQ.max-165x165.jpg',165,109,'','max-165x165',62),(177,'images/L5DBIT_THjSkms.max-165x165.jpg',165,109,'','max-165x165',60),(180,'images/L5DC_CS_Ps4XN6X.max-165x165.jpg',165,109,'','max-165x165',66),(181,'images/L5DC_zpbM5MQ.max-1440x1440.jpg',1440,959,'','max-1440x1440',62),(182,'images/L5DBIT_THjSkms.max-1440x1440.jpg',1440,959,'','max-1440x1440',60),(183,'images/L5DC_CS_Ps4XN6X.max-1440x1440.jpg',1440,959,'','max-1440x1440',66),(184,'images/L4Dc.max-1440x1440.jpg',1440,959,'','max-1440x1440',51),(185,'images/L4BIT_gUdF6yS.max-1440x1440.jpg',1440,959,'','max-1440x1440',52),(190,'images/L4DP_AzHNanN.max-1440x1440.jpg',1440,959,'','max-1440x1440',58),(193,'images/L4BIT_gUdF6yS.max-530x220.jpg',330,220,'','max-530x220',52),(194,'images/L5DBIT_THjSkms.max-530x220.jpg',330,220,'','max-530x220',60),(197,'images/L4DNE.max-165x165.jpg',165,109,'','max-165x165',57),(198,'images/L4DNE.max-1440x1440.jpg',1440,959,'','max-1440x1440',57),(199,'images/IMG_6142_copy.max-165x165.jpg',165,123,'','max-165x165',28),(200,'images/DSC02094_copy.max-165x165.jpg',165,105,'','max-165x165',20),(201,'images/DSC01949_copy.max-165x165.jpg',165,106,'','max-165x165',17),(202,'images/DSC01942_copy.max-165x165.jpg',165,110,'','max-165x165',16),(203,'images/DSC01844_copy.max-165x165.jpg',165,110,'','max-165x165',13),(204,'images/DSC01644_copy.max-165x165.jpg',165,118,'','max-165x165',9),(207,'images/L4DCDO.max-165x165.jpg',165,109,'','max-165x165',53),(208,'images/L4DCDO.max-1440x1440.jpg',1440,959,'','max-1440x1440',53),(211,'images/L4DCS.max-165x165.jpg',165,109,'','max-165x165',54),(214,'images/L4DNCS.max-165x165.jpg',165,109,'','max-165x165',56),(217,'images/L4DWM.max-165x165.jpg',165,109,'','max-165x165',59),(220,'images/L4DCSI.max-165x165.jpg',165,109,'','max-165x165',55),(221,'images/L4DCS.max-1440x1440.jpg',1440,959,'','max-1440x1440',54),(222,'images/L4DNCS.max-1440x1440.jpg',1440,959,'','max-1440x1440',56),(223,'images/L4DWM.max-1440x1440.jpg',1440,959,'','max-1440x1440',59),(224,'images/L4DCSI.max-1440x1440.jpg',1440,959,'','max-1440x1440',55),(231,'images/DSC01949_Copy_2-min_Qc4R6rp.max-3000x2000.jpg',2632,1974,'','max-3000x2000',31),(232,'images/DSC01949_Copy_2-min_Qc4R6rp.max-165x165.jpg',165,123,'','max-165x165',31),(235,'images/DSC01773_copy_2-min.max-165x165.jpg',165,123,'','max-165x165',47),(236,'images/DSC01773_copy_2-min.max-3000x2000.jpg',2604,1953,'','max-3000x2000',47),(239,'images/DSC01844_copy_2-min.max-165x165.jpg',165,123,'','max-165x165',48),(240,'images/DSC01844_copy_2-min.max-3000x2000.jpg',2666,2000,'','max-3000x2000',48),(241,'images/L5DC_CS_Ps4XN6X.max-530x220.jpg',330,220,'','max-530x220',66),(242,'images/L4DCS.max-530x220.jpg',330,220,'','max-530x220',54),(243,'images/L4DNCS.max-530x220.jpg',330,220,'','max-530x220',56),(244,'images/L3DC.max-530x220.jpg',330,220,'','max-530x220',65),(245,'images/L4DNE.max-530x220.jpg',330,220,'','max-530x220',57),(246,'images/L5DIP.max-165x165.jpg',165,109,'','max-165x165',67),(247,'images/L5DCS.max-165x165.jpg',165,109,'','max-165x165',68),(248,'images/L5DIP_cnxmSaJ.max-165x165.jpg',165,109,'','max-165x165',69),(251,'images/L5DCS.max-1440x1440.jpg',1440,959,'','max-1440x1440',68),(252,'images/L5DIP_cnxmSaJ.max-1440x1440.jpg',1440,959,'','max-1440x1440',69),(255,'images/L5DANES.max-165x165.jpg',165,109,'','max-165x165',70),(256,'images/L5DANES.max-1440x1440.jpg',1440,959,'','max-1440x1440',70),(264,'images/BSC_HONS_CYBER_SECURITY_.max-165x165.jpg',165,109,'','max-165x165',71),(265,'images/BSC_HONS_CYBER_SECURITY_.max-1440x1440.jpg',1440,959,'','max-1440x1440',71),(266,'images/BSC_HONS_CYBER_SECURITY_.max-530x220.jpg',330,220,'','max-530x220',71),(267,'images/L5DANES.max-530x220.jpg',330,220,'','max-530x220',70),(268,'images/L4Dc.max-530x220.jpg',330,220,'','max-530x220',51),(269,'images/L5DC_zpbM5MQ.max-530x220.jpg',330,220,'','max-530x220',62),(270,'images/L4DCDO.max-530x220.jpg',330,220,'','max-530x220',53),(271,'images/L4DP_AzHNanN.max-530x220.jpg',330,220,'','max-530x220',58),(272,'images/L4DWM.max-530x220.jpg',330,220,'','max-530x220',59),(273,'images/L4DCSI.max-530x220.jpg',330,220,'','max-530x220',55),(274,'images/L5DCS.max-530x220.jpg',330,220,'','max-530x220',68),(275,'images/L5DIP_cnxmSaJ.max-530x220.jpg',330,220,'','max-530x220',69),(276,'images/header.max-165x165.png',165,42,'','max-165x165',72),(277,'images/DSC01773_copy_2-min.2e16d0ba.fill-150x150.jpg',150,150,'2e16d0ba','fill-150x150',47),(278,'images/DSC01844_copy_2-min.2e16d0ba.fill-150x150.jpg',150,150,'2e16d0ba','fill-150x150',48),(279,'images/DSC01949_Copy_2-min_Qc4R6rp.2e16d0ba.fill-150x150.jpg',150,150,'2e16d0ba','fill-150x150',31),(287,'images/L5DANES.original.jpg',1600,1066,'','original',70),(288,'images/L5DANES.max-800x600.jpg',800,533,'','max-800x600',70),(290,'images/mba1.max-165x165.jpg',165,109,'','max-165x165',75),(291,'images/mba1.max-1440x1440.jpg',1440,959,'','max-1440x1440',75),(292,'images/mba2.max-800x600.jpg',800,533,'','max-800x600',76),(293,'images/mba2.width-800.jpg',800,533,'','width-800',76),(294,'images/mba2.max-165x165.jpg',165,109,'','max-165x165',76),(295,'images/mba5.max-800x600.jpg',800,533,'','max-800x600',77),(296,'images/mba5.width-800.jpg',800,533,'','width-800',77),(297,'images/mba5.max-165x165.jpg',165,109,'','max-165x165',77),(298,'images/mba3.max-800x600.jpg',800,533,'','max-800x600',78),(299,'images/mba3.width-800.jpg',800,533,'','width-800',78),(300,'images/mba3.max-165x165.jpg',165,109,'','max-165x165',78),(301,'images/mba4.max-800x600.jpg',800,533,'','max-800x600',79),(302,'images/mba4.width-800.jpg',800,533,'','width-800',79),(303,'images/mba4.max-165x165.jpg',165,109,'','max-165x165',79),(304,'images/mba6.max-800x600.jpg',800,533,'','max-800x600',80),(305,'images/mba6.width-800.jpg',800,533,'','width-800',80),(306,'images/mba6.max-165x165.jpg',165,109,'','max-165x165',80),(307,'images/mba7.max-800x600.jpg',800,533,'','max-800x600',81),(308,'images/mba7.width-800.jpg',800,533,'','width-800',81),(309,'images/mba7.max-165x165.jpg',165,109,'','max-165x165',81),(310,'images/mba8.max-800x600.jpg',800,533,'','max-800x600',82),(311,'images/mba8.width-800.jpg',800,533,'','width-800',82),(312,'images/mba3.width-500.jpg',500,333,'','width-500',78),(313,'images/mba4.width-500.jpg',500,333,'','width-500',79),(314,'images/mba6.width-500.jpg',500,333,'','width-500',80),(315,'images/mba7.width-500.jpg',500,333,'','width-500',81),(316,'images/mba8.width-500.jpg',500,333,'','width-500',82),(317,'images/mba8.max-165x165.jpg',165,109,'','max-165x165',82),(318,'images/mba10.max-800x600.jpg',800,533,'','max-800x600',83),(319,'images/mba10.width-500.jpg',500,333,'','width-500',83),(320,'images/mba10.max-165x165.jpg',165,109,'','max-165x165',83),(321,'images/mba25.max-800x600.jpg',800,533,'','max-800x600',84),(322,'images/mba25.width-800.jpg',800,533,'','width-800',84),(323,'images/mba25.width-500.jpg',500,333,'','width-500',84);
/*!40000 ALTER TABLE `wagtailimages_rendition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailimages_uploadedimage`
--

DROP TABLE IF EXISTS `wagtailimages_uploadedimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailimages_uploadedimage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file` varchar(200) NOT NULL,
  `uploaded_by_user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailimages_upload_uploaded_by_user_id_85921689_fk_auth_user` (`uploaded_by_user_id`),
  CONSTRAINT `wagtailimages_upload_uploaded_by_user_id_85921689_fk_auth_user` FOREIGN KEY (`uploaded_by_user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailimages_uploadedimage`
--

LOCK TABLES `wagtailimages_uploadedimage` WRITE;
/*!40000 ALTER TABLE `wagtailimages_uploadedimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailimages_uploadedimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailredirects_redirect`
--

DROP TABLE IF EXISTS `wagtailredirects_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailredirects_redirect` (
  `id` int NOT NULL AUTO_INCREMENT,
  `old_path` varchar(255) NOT NULL,
  `is_permanent` tinyint(1) NOT NULL,
  `redirect_link` varchar(255) NOT NULL,
  `redirect_page_id` int DEFAULT NULL,
  `site_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailredirects_redirect_old_path_site_id_783622d7_uniq` (`old_path`,`site_id`),
  KEY `wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco` (`redirect_page_id`),
  KEY `wagtailredirects_red_site_id_780a0e1e_fk_wagtailco` (`site_id`),
  KEY `wagtailredirects_redirect_old_path_bb35247b` (`old_path`),
  CONSTRAINT `wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco` FOREIGN KEY (`redirect_page_id`) REFERENCES `wagtailcore_page` (`id`),
  CONSTRAINT `wagtailredirects_red_site_id_780a0e1e_fk_wagtailco` FOREIGN KEY (`site_id`) REFERENCES `wagtailcore_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailredirects_redirect`
--

LOCK TABLES `wagtailredirects_redirect` WRITE;
/*!40000 ALTER TABLE `wagtailredirects_redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailredirects_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailsearch_editorspick`
--

DROP TABLE IF EXISTS `wagtailsearch_editorspick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailsearch_editorspick` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sort_order` int DEFAULT NULL,
  `description` longtext NOT NULL,
  `page_id` int NOT NULL,
  `query_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse` (`query_id`),
  KEY `wagtailsearch_editor_page_id_28cbc274_fk_wagtailco` (`page_id`),
  CONSTRAINT `wagtailsearch_editor_page_id_28cbc274_fk_wagtailco` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`),
  CONSTRAINT `wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse` FOREIGN KEY (`query_id`) REFERENCES `wagtailsearch_query` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailsearch_editorspick`
--

LOCK TABLES `wagtailsearch_editorspick` WRITE;
/*!40000 ALTER TABLE `wagtailsearch_editorspick` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailsearch_editorspick` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailsearch_query`
--

DROP TABLE IF EXISTS `wagtailsearch_query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailsearch_query` (
  `id` int NOT NULL AUTO_INCREMENT,
  `query_string` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `query_string` (`query_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailsearch_query`
--

LOCK TABLES `wagtailsearch_query` WRITE;
/*!40000 ALTER TABLE `wagtailsearch_query` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailsearch_query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailsearch_querydailyhits`
--

DROP TABLE IF EXISTS `wagtailsearch_querydailyhits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailsearch_querydailyhits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `hits` int NOT NULL,
  `query_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq` (`query_id`,`date`),
  CONSTRAINT `wagtailsearch_queryd_query_id_2185994b_fk_wagtailse` FOREIGN KEY (`query_id`) REFERENCES `wagtailsearch_query` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailsearch_querydailyhits`
--

LOCK TABLES `wagtailsearch_querydailyhits` WRITE;
/*!40000 ALTER TABLE `wagtailsearch_querydailyhits` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailsearch_querydailyhits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailusers_userprofile`
--

DROP TABLE IF EXISTS `wagtailusers_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wagtailusers_userprofile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `submitted_notifications` tinyint(1) NOT NULL,
  `approved_notifications` tinyint(1) NOT NULL,
  `rejected_notifications` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `preferred_language` varchar(10) NOT NULL,
  `current_time_zone` varchar(40) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `updated_comments_notifications` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailusers_userprofile`
--

LOCK TABLES `wagtailusers_userprofile` WRITE;
/*!40000 ALTER TABLE `wagtailusers_userprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailusers_userprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-27  4:13:28
