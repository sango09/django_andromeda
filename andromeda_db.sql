-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: andromeda_db
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add tbl area laboral',7,'add_tblarealaboral'),(26,'Can change tbl area laboral',7,'change_tblarealaboral'),(27,'Can delete tbl area laboral',7,'delete_tblarealaboral'),(28,'Can view tbl area laboral',7,'view_tblarealaboral'),(29,'Can add tbl auxiliar',8,'add_tblauxiliar'),(30,'Can change tbl auxiliar',8,'change_tblauxiliar'),(31,'Can delete tbl auxiliar',8,'delete_tblauxiliar'),(32,'Can view tbl auxiliar',8,'view_tblauxiliar'),(33,'Can add tbl cargo empleado',9,'add_tblcargoempleado'),(34,'Can change tbl cargo empleado',9,'change_tblcargoempleado'),(35,'Can delete tbl cargo empleado',9,'delete_tblcargoempleado'),(36,'Can view tbl cargo empleado',9,'view_tblcargoempleado'),(37,'Can add tbl disponibilidad auxiliar',10,'add_tbldisponibilidadauxiliar'),(38,'Can change tbl disponibilidad auxiliar',10,'change_tbldisponibilidadauxiliar'),(39,'Can delete tbl disponibilidad auxiliar',10,'delete_tbldisponibilidadauxiliar'),(40,'Can view tbl disponibilidad auxiliar',10,'view_tbldisponibilidadauxiliar'),(41,'Can add tbl empleado',11,'add_tblempleado'),(42,'Can change tbl empleado',11,'change_tblempleado'),(43,'Can delete tbl empleado',11,'delete_tblempleado'),(44,'Can view tbl empleado',11,'view_tblempleado'),(45,'Can add tbl estado implemento',12,'add_tblestadoimplemento'),(46,'Can change tbl estado implemento',12,'change_tblestadoimplemento'),(47,'Can delete tbl estado implemento',12,'delete_tblestadoimplemento'),(48,'Can view tbl estado implemento',12,'view_tblestadoimplemento'),(49,'Can add tbl estado mantenimiento',13,'add_tblestadomantenimiento'),(50,'Can change tbl estado mantenimiento',13,'change_tblestadomantenimiento'),(51,'Can delete tbl estado mantenimiento',13,'delete_tblestadomantenimiento'),(52,'Can view tbl estado mantenimiento',13,'view_tblestadomantenimiento'),(53,'Can add tbl estado servicio',14,'add_tblestadoservicio'),(54,'Can change tbl estado servicio',14,'change_tblestadoservicio'),(55,'Can delete tbl estado servicio',14,'delete_tblestadoservicio'),(56,'Can view tbl estado servicio',14,'view_tblestadoservicio'),(57,'Can add tbl ficha tecnica',15,'add_tblfichatecnica'),(58,'Can change tbl ficha tecnica',15,'change_tblfichatecnica'),(59,'Can delete tbl ficha tecnica',15,'delete_tblfichatecnica'),(60,'Can view tbl ficha tecnica',15,'view_tblfichatecnica'),(61,'Can add tbl inventario',16,'add_tblinventario'),(62,'Can change tbl inventario',16,'change_tblinventario'),(63,'Can delete tbl inventario',16,'delete_tblinventario'),(64,'Can view tbl inventario',16,'view_tblinventario'),(65,'Can add tbl inventario prestamo',17,'add_tblinventarioprestamo'),(66,'Can change tbl inventario prestamo',17,'change_tblinventarioprestamo'),(67,'Can delete tbl inventario prestamo',17,'delete_tblinventarioprestamo'),(68,'Can view tbl inventario prestamo',17,'view_tblinventarioprestamo'),(69,'Can add tbl mantenimiento',18,'add_tblmantenimiento'),(70,'Can change tbl mantenimiento',18,'change_tblmantenimiento'),(71,'Can delete tbl mantenimiento',18,'delete_tblmantenimiento'),(72,'Can view tbl mantenimiento',18,'view_tblmantenimiento'),(73,'Can add tbl posicion',19,'add_tblposicion'),(74,'Can change tbl posicion',19,'change_tblposicion'),(75,'Can delete tbl posicion',19,'delete_tblposicion'),(76,'Can view tbl posicion',19,'view_tblposicion'),(77,'Can add tbl prestamo tecnologico',20,'add_tblprestamotecnologico'),(78,'Can change tbl prestamo tecnologico',20,'change_tblprestamotecnologico'),(79,'Can delete tbl prestamo tecnologico',20,'delete_tblprestamotecnologico'),(80,'Can view tbl prestamo tecnologico',20,'view_tblprestamotecnologico'),(81,'Can add tbl prioridad mantenimiento',21,'add_tblprioridadmantenimiento'),(82,'Can change tbl prioridad mantenimiento',21,'change_tblprioridadmantenimiento'),(83,'Can delete tbl prioridad mantenimiento',21,'delete_tblprioridadmantenimiento'),(84,'Can view tbl prioridad mantenimiento',21,'view_tblprioridadmantenimiento'),(85,'Can add tbl sistema operativo',22,'add_tblsistemaoperativo'),(86,'Can change tbl sistema operativo',22,'change_tblsistemaoperativo'),(87,'Can delete tbl sistema operativo',22,'delete_tblsistemaoperativo'),(88,'Can view tbl sistema operativo',22,'view_tblsistemaoperativo'),(89,'Can add tbl soporte tecnico',23,'add_tblsoportetecnico'),(90,'Can change tbl soporte tecnico',23,'change_tblsoportetecnico'),(91,'Can delete tbl soporte tecnico',23,'delete_tblsoportetecnico'),(92,'Can view tbl soporte tecnico',23,'view_tblsoportetecnico'),(93,'Can add tbl tipo mantenimiento',24,'add_tbltipomantenimiento'),(94,'Can change tbl tipo mantenimiento',24,'change_tbltipomantenimiento'),(95,'Can delete tbl tipo mantenimiento',24,'delete_tbltipomantenimiento'),(96,'Can view tbl tipo mantenimiento',24,'view_tbltipomantenimiento'),(97,'Can add tbl tipo implemento',25,'add_tbltipoimplemento'),(98,'Can change tbl tipo implemento',25,'change_tbltipoimplemento'),(99,'Can delete tbl tipo implemento',25,'delete_tbltipoimplemento'),(100,'Can view tbl tipo implemento',25,'view_tbltipoimplemento'),(101,'Can add tbl ticket servicio',26,'add_tblticketservicio'),(102,'Can change tbl ticket servicio',26,'change_tblticketservicio'),(103,'Can delete tbl ticket servicio',26,'delete_tblticketservicio'),(104,'Can view tbl ticket servicio',26,'view_tblticketservicio'),(105,'Can add tbl ticket mantenimiento',27,'add_tblticketmantenimiento'),(106,'Can change tbl ticket mantenimiento',27,'change_tblticketmantenimiento'),(107,'Can delete tbl ticket mantenimiento',27,'delete_tblticketmantenimiento'),(108,'Can view tbl ticket mantenimiento',27,'view_tblticketmantenimiento'),(109,'Can add tbl perfil',28,'add_tblperfil'),(110,'Can change tbl perfil',28,'change_tblperfil'),(111,'Can delete tbl perfil',28,'delete_tblperfil'),(112,'Can view tbl perfil',28,'view_tblperfil'),(113,'Can add tbl coordinador',29,'add_tblcoordinador'),(114,'Can change tbl coordinador',29,'change_tblcoordinador'),(115,'Can delete tbl coordinador',29,'delete_tblcoordinador'),(116,'Can view tbl coordinador',29,'view_tblcoordinador');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$BuhRDXjgv0gi$+WWe8CkYrLiF4D1I7P0Hx8QxTMVtmytcBP+so1H84wE=','2020-09-21 01:26:31.109162',0,'sango@cgb.edu.co','Santiago','Gomez Florez','sango@cgb.edu.co',0,1,'2020-09-21 01:25:54.401207'),(2,'pbkdf2_sha256$216000$c7TyYJUv3J8V$JL5rVjC84lrKk68Uaze27nvaQX2MBWo7OpF5WkyJg5Y=','2020-09-21 01:35:21.845153',0,'juan@cgb.edu.co','Juan Pablo','Ardila Otero','juan@cgb.edu.co',0,1,'2020-09-21 01:34:39.288278'),(3,'pbkdf2_sha256$216000$8guwjl9Ji7fd$ddVZCGUYju+XcUOqhnanOqcSFybwO7VGJArh9cd+SzE=','2020-09-21 01:35:50.342775',0,'sebastian@cgb.edu.co','Sebastian','Ordoñez Camacho','sebastian@cgb.edu.co',0,1,'2020-09-21 01:35:12.897988');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'links','tblarealaboral'),(8,'links','tblauxiliar'),(9,'links','tblcargoempleado'),(29,'links','tblcoordinador'),(10,'links','tbldisponibilidadauxiliar'),(11,'links','tblempleado'),(12,'links','tblestadoimplemento'),(13,'links','tblestadomantenimiento'),(14,'links','tblestadoservicio'),(15,'links','tblfichatecnica'),(16,'links','tblinventario'),(17,'links','tblinventarioprestamo'),(18,'links','tblmantenimiento'),(28,'links','tblperfil'),(19,'links','tblposicion'),(20,'links','tblprestamotecnologico'),(21,'links','tblprioridadmantenimiento'),(22,'links','tblsistemaoperativo'),(23,'links','tblsoportetecnico'),(27,'links','tblticketmantenimiento'),(26,'links','tblticketservicio'),(25,'links','tbltipoimplemento'),(24,'links','tbltipomantenimiento'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-09-21 01:24:17.396778'),(2,'auth','0001_initial','2020-09-21 01:24:17.550520'),(3,'admin','0001_initial','2020-09-21 01:24:18.177477'),(4,'admin','0002_logentry_remove_auto_add','2020-09-21 01:24:18.293753'),(5,'admin','0003_logentry_add_action_flag_choices','2020-09-21 01:24:18.301488'),(6,'contenttypes','0002_remove_content_type_name','2020-09-21 01:24:18.399606'),(7,'auth','0002_alter_permission_name_max_length','2020-09-21 01:24:18.460186'),(8,'auth','0003_alter_user_email_max_length','2020-09-21 01:24:18.504177'),(9,'auth','0004_alter_user_username_opts','2020-09-21 01:24:18.516168'),(10,'auth','0005_alter_user_last_login_null','2020-09-21 01:24:18.579444'),(11,'auth','0006_require_contenttypes_0002','2020-09-21 01:24:18.583273'),(12,'auth','0007_alter_validators_add_error_messages','2020-09-21 01:24:18.593174'),(13,'auth','0008_alter_user_username_max_length','2020-09-21 01:24:18.660902'),(14,'auth','0009_alter_user_last_name_max_length','2020-09-21 01:24:18.727562'),(15,'auth','0010_alter_group_name_max_length','2020-09-21 01:24:18.749407'),(16,'auth','0011_update_proxy_permissions','2020-09-21 01:24:18.759965'),(17,'auth','0012_alter_user_first_name_max_length','2020-09-21 01:24:18.824102'),(18,'links','0001_initial','2020-09-21 01:24:20.236918'),(19,'links','0002_auto_20200921_0122','2020-09-21 01:24:22.063114'),(20,'sessions','0001_initial','2020-09-21 01:24:22.096971');
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
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_area_laboral`
--

DROP TABLE IF EXISTS `tbl_area_laboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_area_laboral` (
  `id_area_laboral` int NOT NULL AUTO_INCREMENT,
  `area_laboral` varchar(45) NOT NULL,
  PRIMARY KEY (`id_area_laboral`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_area_laboral`
--

LOCK TABLES `tbl_area_laboral` WRITE;
/*!40000 ALTER TABLE `tbl_area_laboral` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_area_laboral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_auxiliar`
--

DROP TABLE IF EXISTS `tbl_auxiliar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_auxiliar` (
  `id_auxiliar` int NOT NULL AUTO_INCREMENT,
  `disponibilidad_auxiliar_id` int NOT NULL,
  `perfil_id` int NOT NULL,
  PRIMARY KEY (`id_auxiliar`),
  UNIQUE KEY `perfil_id` (`perfil_id`),
  KEY `tbl_auxiliar_disponibilidad_auxil_942a8012_fk_tbl_dispo` (`disponibilidad_auxiliar_id`),
  CONSTRAINT `tbl_auxiliar_disponibilidad_auxil_942a8012_fk_tbl_dispo` FOREIGN KEY (`disponibilidad_auxiliar_id`) REFERENCES `tbl_disponibilidad_auxiliar` (`id_disponibilidad_auxiliar`),
  CONSTRAINT `tbl_auxiliar_perfil_id_2f939951_fk_tbl_perfil_id_perfil` FOREIGN KEY (`perfil_id`) REFERENCES `tbl_perfil` (`id_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_auxiliar`
--

LOCK TABLES `tbl_auxiliar` WRITE;
/*!40000 ALTER TABLE `tbl_auxiliar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_auxiliar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cargo_empleado`
--

DROP TABLE IF EXISTS `tbl_cargo_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cargo_empleado` (
  `id_cargo` int NOT NULL AUTO_INCREMENT,
  `cargo_empleado` varchar(45) NOT NULL,
  PRIMARY KEY (`id_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cargo_empleado`
--

LOCK TABLES `tbl_cargo_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_cargo_empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cargo_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_coordinador`
--

DROP TABLE IF EXISTS `tbl_coordinador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_coordinador` (
  `id_coordinador` int NOT NULL AUTO_INCREMENT,
  `perfil_id` int NOT NULL,
  PRIMARY KEY (`id_coordinador`),
  UNIQUE KEY `perfil_id` (`perfil_id`),
  CONSTRAINT `tbl_coordinador_perfil_id_a1fcfbd4_fk_tbl_perfil_id_perfil` FOREIGN KEY (`perfil_id`) REFERENCES `tbl_perfil` (`id_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_coordinador`
--

LOCK TABLES `tbl_coordinador` WRITE;
/*!40000 ALTER TABLE `tbl_coordinador` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_coordinador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_disponibilidad_auxiliar`
--

DROP TABLE IF EXISTS `tbl_disponibilidad_auxiliar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_disponibilidad_auxiliar` (
  `id_disponibilidad_auxiliar` int NOT NULL AUTO_INCREMENT,
  `disponibilidad` varchar(45) NOT NULL,
  PRIMARY KEY (`id_disponibilidad_auxiliar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_disponibilidad_auxiliar`
--

LOCK TABLES `tbl_disponibilidad_auxiliar` WRITE;
/*!40000 ALTER TABLE `tbl_disponibilidad_auxiliar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_disponibilidad_auxiliar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_empleado`
--

DROP TABLE IF EXISTS `tbl_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_empleado` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `area_laboral_id` int NOT NULL,
  `cargo_id` int NOT NULL,
  `perfil_id` int NOT NULL,
  PRIMARY KEY (`id_empleado`),
  UNIQUE KEY `perfil_id` (`perfil_id`),
  KEY `tbl_empleado_area_laboral_id_ce4b9049_fk_tbl_area_` (`area_laboral_id`),
  KEY `tbl_empleado_cargo_id_5595dfda_fk_tbl_cargo_empleado_id_cargo` (`cargo_id`),
  CONSTRAINT `tbl_empleado_area_laboral_id_ce4b9049_fk_tbl_area_` FOREIGN KEY (`area_laboral_id`) REFERENCES `tbl_area_laboral` (`id_area_laboral`),
  CONSTRAINT `tbl_empleado_cargo_id_5595dfda_fk_tbl_cargo_empleado_id_cargo` FOREIGN KEY (`cargo_id`) REFERENCES `tbl_cargo_empleado` (`id_cargo`),
  CONSTRAINT `tbl_empleado_perfil_id_6c90d722_fk_tbl_perfil_id_perfil` FOREIGN KEY (`perfil_id`) REFERENCES `tbl_perfil` (`id_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estado_implemento`
--

DROP TABLE IF EXISTS `tbl_estado_implemento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_estado_implemento` (
  `id_estado_implemento` int NOT NULL AUTO_INCREMENT,
  `estado_implemento` varchar(45) NOT NULL,
  PRIMARY KEY (`id_estado_implemento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estado_implemento`
--

LOCK TABLES `tbl_estado_implemento` WRITE;
/*!40000 ALTER TABLE `tbl_estado_implemento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_estado_implemento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estado_mantenimiento`
--

DROP TABLE IF EXISTS `tbl_estado_mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_estado_mantenimiento` (
  `id_estado_mantenimiento` int NOT NULL AUTO_INCREMENT,
  `estado_mantenimiento` varchar(45) NOT NULL,
  PRIMARY KEY (`id_estado_mantenimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estado_mantenimiento`
--

LOCK TABLES `tbl_estado_mantenimiento` WRITE;
/*!40000 ALTER TABLE `tbl_estado_mantenimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_estado_mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estado_servicio`
--

DROP TABLE IF EXISTS `tbl_estado_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_estado_servicio` (
  `id_estado_servicio` int NOT NULL AUTO_INCREMENT,
  `estado_servicio` varchar(45) NOT NULL,
  PRIMARY KEY (`id_estado_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estado_servicio`
--

LOCK TABLES `tbl_estado_servicio` WRITE;
/*!40000 ALTER TABLE `tbl_estado_servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_estado_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ficha_tecnica`
--

DROP TABLE IF EXISTS `tbl_ficha_tecnica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ficha_tecnica` (
  `id_ficha_tecnica` int NOT NULL AUTO_INCREMENT,
  `marca_implemento` varchar(45) NOT NULL,
  `modelo_implemento` varchar(45) NOT NULL,
  `detalles` longtext NOT NULL,
  `sistema_operativo_id` int NOT NULL,
  PRIMARY KEY (`id_ficha_tecnica`),
  KEY `tbl_ficha_tecnica_sistema_operativo_id_9e494e92_fk_tbl_siste` (`sistema_operativo_id`),
  CONSTRAINT `tbl_ficha_tecnica_sistema_operativo_id_9e494e92_fk_tbl_siste` FOREIGN KEY (`sistema_operativo_id`) REFERENCES `tbl_sistema_operativo` (`id_sistema_operativo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ficha_tecnica`
--

LOCK TABLES `tbl_ficha_tecnica` WRITE;
/*!40000 ALTER TABLE `tbl_ficha_tecnica` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_ficha_tecnica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_inventario`
--

DROP TABLE IF EXISTS `tbl_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_inventario` (
  `id_inventario` int NOT NULL AUTO_INCREMENT,
  `numero_serie` varchar(100) NOT NULL,
  `fecha_compra` date NOT NULL,
  `precio_compra` double NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `fecha_modificacion` datetime(6) NOT NULL,
  `estado_implemento_id` int NOT NULL,
  `tipo_implemento_id` int NOT NULL,
  `usuario_asignado_id` int DEFAULT NULL,
  PRIMARY KEY (`id_inventario`),
  KEY `tbl_inventario_tipo_implemento_id_d9865618_fk_tbl_tipo_` (`tipo_implemento_id`),
  KEY `tbl_inventario_usuario_asignado_id_95a3658f_fk_tbl_perfi` (`usuario_asignado_id`),
  KEY `tbl_inventario_estado_implemento_id_a72907c7_fk_tbl_estad` (`estado_implemento_id`),
  CONSTRAINT `tbl_inventario_estado_implemento_id_a72907c7_fk_tbl_estad` FOREIGN KEY (`estado_implemento_id`) REFERENCES `tbl_estado_implemento` (`id_estado_implemento`),
  CONSTRAINT `tbl_inventario_tipo_implemento_id_d9865618_fk_tbl_tipo_` FOREIGN KEY (`tipo_implemento_id`) REFERENCES `tbl_tipo_implemento` (`id_tipo_implemento`),
  CONSTRAINT `tbl_inventario_usuario_asignado_id_95a3658f_fk_tbl_perfi` FOREIGN KEY (`usuario_asignado_id`) REFERENCES `tbl_perfil` (`id_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventario`
--

LOCK TABLES `tbl_inventario` WRITE;
/*!40000 ALTER TABLE `tbl_inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_inventario_prestamo`
--

DROP TABLE IF EXISTS `tbl_inventario_prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_inventario_prestamo` (
  `id_inventario_prestamo` int NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime(6) NOT NULL,
  `fecha_ultima_entrega` datetime(6) NOT NULL,
  `fecha_ultima_devolucion` datetime(6) NOT NULL,
  `inventario_id` int NOT NULL,
  PRIMARY KEY (`id_inventario_prestamo`),
  KEY `tbl_inventario_prest_inventario_id_316d42f0_fk_tbl_inven` (`inventario_id`),
  CONSTRAINT `tbl_inventario_prest_inventario_id_316d42f0_fk_tbl_inven` FOREIGN KEY (`inventario_id`) REFERENCES `tbl_inventario` (`id_inventario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventario_prestamo`
--

LOCK TABLES `tbl_inventario_prestamo` WRITE;
/*!40000 ALTER TABLE `tbl_inventario_prestamo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_inventario_prestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mantenimiento`
--

DROP TABLE IF EXISTS `tbl_mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_mantenimiento` (
  `id_mantenimiento` int NOT NULL AUTO_INCREMENT,
  `lugar_mantenimiento` varchar(45) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `fecha_asignada` date NOT NULL,
  `hora_asignada` time(6) NOT NULL,
  `descripcion_mantenimiento` longtext NOT NULL,
  `fecha_modificacion` datetime(6) NOT NULL,
  `auxiliar_responsable_id` int NOT NULL,
  `estado_mantenimiento_id` int NOT NULL,
  `implemento_inventario_id` int NOT NULL,
  `prioridad_mantenimiento_id` int NOT NULL,
  `tipo_mantenimiento_id` int NOT NULL,
  PRIMARY KEY (`id_mantenimiento`),
  KEY `tbl_mantenimiento_prioridad_mantenimie_3e07e3e4_fk_tbl_prior` (`prioridad_mantenimiento_id`),
  KEY `tbl_mantenimiento_tipo_mantenimiento_i_2eb99410_fk_tbl_tipo_` (`tipo_mantenimiento_id`),
  KEY `tbl_mantenimiento_auxiliar_responsable_e07bfa1f_fk_tbl_auxil` (`auxiliar_responsable_id`),
  KEY `tbl_mantenimiento_estado_mantenimiento_ba02e5c3_fk_tbl_estad` (`estado_mantenimiento_id`),
  KEY `tbl_mantenimiento_implemento_inventari_362f2c01_fk_tbl_inven` (`implemento_inventario_id`),
  CONSTRAINT `tbl_mantenimiento_auxiliar_responsable_e07bfa1f_fk_tbl_auxil` FOREIGN KEY (`auxiliar_responsable_id`) REFERENCES `tbl_auxiliar` (`id_auxiliar`),
  CONSTRAINT `tbl_mantenimiento_estado_mantenimiento_ba02e5c3_fk_tbl_estad` FOREIGN KEY (`estado_mantenimiento_id`) REFERENCES `tbl_estado_mantenimiento` (`id_estado_mantenimiento`),
  CONSTRAINT `tbl_mantenimiento_implemento_inventari_362f2c01_fk_tbl_inven` FOREIGN KEY (`implemento_inventario_id`) REFERENCES `tbl_inventario` (`id_inventario`),
  CONSTRAINT `tbl_mantenimiento_prioridad_mantenimie_3e07e3e4_fk_tbl_prior` FOREIGN KEY (`prioridad_mantenimiento_id`) REFERENCES `tbl_prioridad_mantenimiento` (`id_prioridad_mantenimiento`),
  CONSTRAINT `tbl_mantenimiento_tipo_mantenimiento_i_2eb99410_fk_tbl_tipo_` FOREIGN KEY (`tipo_mantenimiento_id`) REFERENCES `tbl_tipo_mantenimiento` (`id_tipo_mantenimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mantenimiento`
--

LOCK TABLES `tbl_mantenimiento` WRITE;
/*!40000 ALTER TABLE `tbl_mantenimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_perfil`
--

DROP TABLE IF EXISTS `tbl_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_perfil` (
  `id_perfil` int NOT NULL AUTO_INCREMENT,
  `picture` varchar(100) NOT NULL,
  `creado` datetime(6) NOT NULL,
  `modificado` datetime(6) NOT NULL,
  `posicion_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id_perfil`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `tbl_perfil_posicion_id_e2156f80_fk_tbl_posicion_id_posicion` (`posicion_id`),
  CONSTRAINT `tbl_perfil_posicion_id_e2156f80_fk_tbl_posicion_id_posicion` FOREIGN KEY (`posicion_id`) REFERENCES `tbl_posicion` (`id_posicion`),
  CONSTRAINT `tbl_perfil_user_id_5eb64472_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_perfil`
--

LOCK TABLES `tbl_perfil` WRITE;
/*!40000 ALTER TABLE `tbl_perfil` DISABLE KEYS */;
INSERT INTO `tbl_perfil` VALUES (1,'users/pictures/me_OE6DtVt.jpg','2020-09-21 01:25:54.521789','2020-09-21 01:32:34.381182',1,1),(2,'users/pictures/default-profile.png','2020-09-21 01:34:39.406842','2020-09-21 01:35:40.572755',2,2),(3,'users/pictures/default-profile.png','2020-09-21 01:35:13.017347','2020-09-21 01:37:45.164009',3,3);
/*!40000 ALTER TABLE `tbl_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_posicion`
--

DROP TABLE IF EXISTS `tbl_posicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_posicion` (
  `id_posicion` int NOT NULL AUTO_INCREMENT,
  `posicion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_posicion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_posicion`
--

LOCK TABLES `tbl_posicion` WRITE;
/*!40000 ALTER TABLE `tbl_posicion` DISABLE KEYS */;
INSERT INTO `tbl_posicion` VALUES (1,'Coordinador'),(2,'Auxiliar de sistemas'),(3,'Profesor'),(4,'Administrativo');
/*!40000 ALTER TABLE `tbl_posicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_prestamo_tecnologico`
--

DROP TABLE IF EXISTS `tbl_prestamo_tecnologico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_prestamo_tecnologico` (
  `id_prestamos_tecnologicos` int NOT NULL AUTO_INCREMENT,
  `lugar_prestamo` varchar(45) NOT NULL,
  `cantidad` int NOT NULL,
  `fecha_solicitud_creada` datetime(6) NOT NULL,
  `fecha_agendada` date NOT NULL,
  `hora_agendada` time(6) NOT NULL,
  `comentario` longtext,
  `auxiliar_asignado_id` int NOT NULL,
  `empleado_id` int NOT NULL,
  `implemento_id` int NOT NULL,
  PRIMARY KEY (`id_prestamos_tecnologicos`),
  KEY `tbl_prestamo_tecnolo_auxiliar_asignado_id_669e3db1_fk_tbl_auxil` (`auxiliar_asignado_id`),
  KEY `tbl_prestamo_tecnolo_empleado_id_4fff5574_fk_tbl_emple` (`empleado_id`),
  KEY `tbl_prestamo_tecnolo_implemento_id_93cbbe3b_fk_tbl_inven` (`implemento_id`),
  CONSTRAINT `tbl_prestamo_tecnolo_auxiliar_asignado_id_669e3db1_fk_tbl_auxil` FOREIGN KEY (`auxiliar_asignado_id`) REFERENCES `tbl_auxiliar` (`id_auxiliar`),
  CONSTRAINT `tbl_prestamo_tecnolo_empleado_id_4fff5574_fk_tbl_emple` FOREIGN KEY (`empleado_id`) REFERENCES `tbl_empleado` (`id_empleado`),
  CONSTRAINT `tbl_prestamo_tecnolo_implemento_id_93cbbe3b_fk_tbl_inven` FOREIGN KEY (`implemento_id`) REFERENCES `tbl_inventario_prestamo` (`id_inventario_prestamo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_prestamo_tecnologico`
--

LOCK TABLES `tbl_prestamo_tecnologico` WRITE;
/*!40000 ALTER TABLE `tbl_prestamo_tecnologico` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_prestamo_tecnologico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_prioridad_mantenimiento`
--

DROP TABLE IF EXISTS `tbl_prioridad_mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_prioridad_mantenimiento` (
  `id_prioridad_mantenimiento` int NOT NULL AUTO_INCREMENT,
  `prioridad_mantenimiento` varchar(45) NOT NULL,
  PRIMARY KEY (`id_prioridad_mantenimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_prioridad_mantenimiento`
--

LOCK TABLES `tbl_prioridad_mantenimiento` WRITE;
/*!40000 ALTER TABLE `tbl_prioridad_mantenimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_prioridad_mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sistema_operativo`
--

DROP TABLE IF EXISTS `tbl_sistema_operativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sistema_operativo` (
  `id_sistema_operativo` int NOT NULL AUTO_INCREMENT,
  `sistema_operativo` varchar(45) NOT NULL,
  PRIMARY KEY (`id_sistema_operativo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sistema_operativo`
--

LOCK TABLES `tbl_sistema_operativo` WRITE;
/*!40000 ALTER TABLE `tbl_sistema_operativo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sistema_operativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_soporte_tecnico`
--

DROP TABLE IF EXISTS `tbl_soporte_tecnico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_soporte_tecnico` (
  `id_soporte_tecnico_inmediato` int NOT NULL AUTO_INCREMENT,
  `lugar_soporte` varchar(45) NOT NULL,
  `descripcion_problema` longtext NOT NULL,
  `fecha_solicitud` date NOT NULL,
  `hora_solicitud` time(6) NOT NULL,
  `fecha_modificacion` datetime(6) NOT NULL,
  `auxiliar_asignado_id` int NOT NULL,
  `empleado_id` int NOT NULL,
  `estado_servicio_id` int NOT NULL,
  PRIMARY KEY (`id_soporte_tecnico_inmediato`),
  KEY `tbl_soporte_tecnico_auxiliar_asignado_id_308e3ae4_fk_tbl_auxil` (`auxiliar_asignado_id`),
  KEY `tbl_soporte_tecnico_empleado_id_97902c1d_fk_tbl_emple` (`empleado_id`),
  KEY `tbl_soporte_tecnico_estado_servicio_id_bc955f40_fk_tbl_estad` (`estado_servicio_id`),
  CONSTRAINT `tbl_soporte_tecnico_auxiliar_asignado_id_308e3ae4_fk_tbl_auxil` FOREIGN KEY (`auxiliar_asignado_id`) REFERENCES `tbl_auxiliar` (`id_auxiliar`),
  CONSTRAINT `tbl_soporte_tecnico_empleado_id_97902c1d_fk_tbl_emple` FOREIGN KEY (`empleado_id`) REFERENCES `tbl_empleado` (`id_empleado`),
  CONSTRAINT `tbl_soporte_tecnico_estado_servicio_id_bc955f40_fk_tbl_estad` FOREIGN KEY (`estado_servicio_id`) REFERENCES `tbl_estado_servicio` (`id_estado_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_soporte_tecnico`
--

LOCK TABLES `tbl_soporte_tecnico` WRITE;
/*!40000 ALTER TABLE `tbl_soporte_tecnico` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_soporte_tecnico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ticket_mantenimiento`
--

DROP TABLE IF EXISTS `tbl_ticket_mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ticket_mantenimiento` (
  `id_ticket_mantenimiento` int NOT NULL AUTO_INCREMENT,
  `conclusion_mantenimiento` longtext NOT NULL,
  `mantenimiento_id` int NOT NULL,
  PRIMARY KEY (`id_ticket_mantenimiento`),
  KEY `tbl_ticket_mantenimi_mantenimiento_id_23338541_fk_tbl_mante` (`mantenimiento_id`),
  CONSTRAINT `tbl_ticket_mantenimi_mantenimiento_id_23338541_fk_tbl_mante` FOREIGN KEY (`mantenimiento_id`) REFERENCES `tbl_mantenimiento` (`id_mantenimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ticket_mantenimiento`
--

LOCK TABLES `tbl_ticket_mantenimiento` WRITE;
/*!40000 ALTER TABLE `tbl_ticket_mantenimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_ticket_mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ticket_servicio`
--

DROP TABLE IF EXISTS `tbl_ticket_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ticket_servicio` (
  `id_ticket_servicio` int NOT NULL AUTO_INCREMENT,
  `fecha_creacion_ticket` datetime(6) NOT NULL,
  `calificacion_servicio` decimal(2,0) DEFAULT NULL,
  `conclusion_servicio` longtext NOT NULL,
  `prestamo_tecnologico_id` int DEFAULT NULL,
  `soporte_tecnico_id` int DEFAULT NULL,
  PRIMARY KEY (`id_ticket_servicio`),
  KEY `tbl_ticker_servicio_prestamo_tecnologico_d2bd792c_fk_tbl_prest` (`prestamo_tecnologico_id`),
  KEY `tbl_ticker_servicio_soporte_tecnico_id_6c3e8ada_fk_tbl_sopor` (`soporte_tecnico_id`),
  CONSTRAINT `tbl_ticker_servicio_prestamo_tecnologico_d2bd792c_fk_tbl_prest` FOREIGN KEY (`prestamo_tecnologico_id`) REFERENCES `tbl_prestamo_tecnologico` (`id_prestamos_tecnologicos`),
  CONSTRAINT `tbl_ticker_servicio_soporte_tecnico_id_6c3e8ada_fk_tbl_sopor` FOREIGN KEY (`soporte_tecnico_id`) REFERENCES `tbl_soporte_tecnico` (`id_soporte_tecnico_inmediato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ticket_servicio`
--

LOCK TABLES `tbl_ticket_servicio` WRITE;
/*!40000 ALTER TABLE `tbl_ticket_servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_ticket_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_implemento`
--

DROP TABLE IF EXISTS `tbl_tipo_implemento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipo_implemento` (
  `id_tipo_implemento` int NOT NULL AUTO_INCREMENT,
  `tipo_implemento` varchar(45) NOT NULL,
  `ficha_tecnica_id` int NOT NULL,
  PRIMARY KEY (`id_tipo_implemento`),
  KEY `tbl_tipo_implemento_ficha_tecnica_id_82c0a814_fk_tbl_ficha` (`ficha_tecnica_id`),
  CONSTRAINT `tbl_tipo_implemento_ficha_tecnica_id_82c0a814_fk_tbl_ficha` FOREIGN KEY (`ficha_tecnica_id`) REFERENCES `tbl_ficha_tecnica` (`id_ficha_tecnica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_implemento`
--

LOCK TABLES `tbl_tipo_implemento` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_implemento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipo_implemento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_mantenimiento`
--

DROP TABLE IF EXISTS `tbl_tipo_mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipo_mantenimiento` (
  `id_tipo_mantenimiento` int NOT NULL AUTO_INCREMENT,
  `tipo_mantenimiento` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tipo_mantenimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_mantenimiento`
--

LOCK TABLES `tbl_tipo_mantenimiento` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_mantenimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipo_mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-20 20:40:48
