-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: django_andromeda
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add tbl area laboral',7,'add_tblarealaboral'),(26,'Can change tbl area laboral',7,'change_tblarealaboral'),(27,'Can delete tbl area laboral',7,'delete_tblarealaboral'),(28,'Can view tbl area laboral',7,'view_tblarealaboral'),(29,'Can add tbl auxiliar',8,'add_tblauxiliar'),(30,'Can change tbl auxiliar',8,'change_tblauxiliar'),(31,'Can delete tbl auxiliar',8,'delete_tblauxiliar'),(32,'Can view tbl auxiliar',8,'view_tblauxiliar'),(33,'Can add tbl cargo empleado',9,'add_tblcargoempleado'),(34,'Can change tbl cargo empleado',9,'change_tblcargoempleado'),(35,'Can delete tbl cargo empleado',9,'delete_tblcargoempleado'),(36,'Can view tbl cargo empleado',9,'view_tblcargoempleado'),(37,'Can add tbl coordinador',10,'add_tblcoordinador'),(38,'Can change tbl coordinador',10,'change_tblcoordinador'),(39,'Can delete tbl coordinador',10,'delete_tblcoordinador'),(40,'Can view tbl coordinador',10,'view_tblcoordinador'),(41,'Can add tbl disponibilidad auxiliar',11,'add_tbldisponibilidadauxiliar'),(42,'Can change tbl disponibilidad auxiliar',11,'change_tbldisponibilidadauxiliar'),(43,'Can delete tbl disponibilidad auxiliar',11,'delete_tbldisponibilidadauxiliar'),(44,'Can view tbl disponibilidad auxiliar',11,'view_tbldisponibilidadauxiliar'),(45,'Can add tbl empleado',12,'add_tblempleado'),(46,'Can change tbl empleado',12,'change_tblempleado'),(47,'Can delete tbl empleado',12,'delete_tblempleado'),(48,'Can view tbl empleado',12,'view_tblempleado'),(49,'Can add tbl estado implemento',13,'add_tblestadoimplemento'),(50,'Can change tbl estado implemento',13,'change_tblestadoimplemento'),(51,'Can delete tbl estado implemento',13,'delete_tblestadoimplemento'),(52,'Can view tbl estado implemento',13,'view_tblestadoimplemento'),(53,'Can add tbl estado mantenimiento',14,'add_tblestadomantenimiento'),(54,'Can change tbl estado mantenimiento',14,'change_tblestadomantenimiento'),(55,'Can delete tbl estado mantenimiento',14,'delete_tblestadomantenimiento'),(56,'Can view tbl estado mantenimiento',14,'view_tblestadomantenimiento'),(57,'Can add tbl estados servicio',15,'add_tblestadosservicio'),(58,'Can change tbl estados servicio',15,'change_tblestadosservicio'),(59,'Can delete tbl estados servicio',15,'delete_tblestadosservicio'),(60,'Can view tbl estados servicio',15,'view_tblestadosservicio'),(61,'Can add tbl implemento',16,'add_tblimplemento'),(62,'Can change tbl implemento',16,'change_tblimplemento'),(63,'Can delete tbl implemento',16,'delete_tblimplemento'),(64,'Can view tbl implemento',16,'view_tblimplemento'),(65,'Can add tbl inventario',17,'add_tblinventario'),(66,'Can change tbl inventario',17,'change_tblinventario'),(67,'Can delete tbl inventario',17,'delete_tblinventario'),(68,'Can view tbl inventario',17,'view_tblinventario'),(69,'Can add tbl mantenimiento',18,'add_tblmantenimiento'),(70,'Can change tbl mantenimiento',18,'change_tblmantenimiento'),(71,'Can delete tbl mantenimiento',18,'delete_tblmantenimiento'),(72,'Can view tbl mantenimiento',18,'view_tblmantenimiento'),(73,'Can add tbl permisos usuario',19,'add_tblpermisosusuario'),(74,'Can change tbl permisos usuario',19,'change_tblpermisosusuario'),(75,'Can delete tbl permisos usuario',19,'delete_tblpermisosusuario'),(76,'Can view tbl permisos usuario',19,'view_tblpermisosusuario'),(77,'Can add tbl prestamo',20,'add_tblprestamo'),(78,'Can change tbl prestamo',20,'change_tblprestamo'),(79,'Can delete tbl prestamo',20,'delete_tblprestamo'),(80,'Can view tbl prestamo',20,'view_tblprestamo'),(81,'Can add tbl prestamos tecnologicos',21,'add_tblprestamostecnologicos'),(82,'Can change tbl prestamos tecnologicos',21,'change_tblprestamostecnologicos'),(83,'Can delete tbl prestamos tecnologicos',21,'delete_tblprestamostecnologicos'),(84,'Can view tbl prestamos tecnologicos',21,'view_tblprestamostecnologicos'),(85,'Can add tbl prioridad mantenimiento',22,'add_tblprioridadmantenimiento'),(86,'Can change tbl prioridad mantenimiento',22,'change_tblprioridadmantenimiento'),(87,'Can delete tbl prioridad mantenimiento',22,'delete_tblprioridadmantenimiento'),(88,'Can view tbl prioridad mantenimiento',22,'view_tblprioridadmantenimiento'),(89,'Can add tbl prioridad servicio',23,'add_tblprioridadservicio'),(90,'Can change tbl prioridad servicio',23,'change_tblprioridadservicio'),(91,'Can delete tbl prioridad servicio',23,'delete_tblprioridadservicio'),(92,'Can view tbl prioridad servicio',23,'view_tblprioridadservicio'),(93,'Can add tbl rol usuario',24,'add_tblrolusuario'),(94,'Can change tbl rol usuario',24,'change_tblrolusuario'),(95,'Can delete tbl rol usuario',24,'delete_tblrolusuario'),(96,'Can view tbl rol usuario',24,'view_tblrolusuario'),(97,'Can add tbl servicio',25,'add_tblservicio'),(98,'Can change tbl servicio',25,'change_tblservicio'),(99,'Can delete tbl servicio',25,'delete_tblservicio'),(100,'Can view tbl servicio',25,'view_tblservicio'),(101,'Can add tbl soporte tecnico',26,'add_tblsoportetecnico'),(102,'Can change tbl soporte tecnico',26,'change_tblsoportetecnico'),(103,'Can delete tbl soporte tecnico',26,'delete_tblsoportetecnico'),(104,'Can view tbl soporte tecnico',26,'view_tblsoportetecnico'),(105,'Can add tbl ticket mantenimiento',27,'add_tblticketmantenimiento'),(106,'Can change tbl ticket mantenimiento',27,'change_tblticketmantenimiento'),(107,'Can delete tbl ticket mantenimiento',27,'delete_tblticketmantenimiento'),(108,'Can view tbl ticket mantenimiento',27,'view_tblticketmantenimiento'),(109,'Can add tbl ticket servicio',28,'add_tblticketservicio'),(110,'Can change tbl ticket servicio',28,'change_tblticketservicio'),(111,'Can delete tbl ticket servicio',28,'delete_tblticketservicio'),(112,'Can view tbl ticket servicio',28,'view_tblticketservicio'),(113,'Can add tbl tipo implemento',29,'add_tbltipoimplemento'),(114,'Can change tbl tipo implemento',29,'change_tbltipoimplemento'),(115,'Can delete tbl tipo implemento',29,'delete_tbltipoimplemento'),(116,'Can view tbl tipo implemento',29,'view_tbltipoimplemento'),(117,'Can add tbl tipo mantenimiento',30,'add_tbltipomantenimiento'),(118,'Can change tbl tipo mantenimiento',30,'change_tbltipomantenimiento'),(119,'Can delete tbl tipo mantenimiento',30,'delete_tbltipomantenimiento'),(120,'Can view tbl tipo mantenimiento',30,'view_tbltipomantenimiento'),(121,'Can add tbl tipo servicio',31,'add_tbltiposervicio'),(122,'Can change tbl tipo servicio',31,'change_tbltiposervicio'),(123,'Can delete tbl tipo servicio',31,'delete_tbltiposervicio'),(124,'Can view tbl tipo servicio',31,'view_tbltiposervicio'),(125,'Can add tbl usuario',32,'add_tblusuario'),(126,'Can change tbl usuario',32,'change_tblusuario'),(127,'Can delete tbl usuario',32,'delete_tblusuario'),(128,'Can view tbl usuario',32,'view_tblusuario'),(129,'Can add auth group',33,'add_authgroup'),(130,'Can change auth group',33,'change_authgroup'),(131,'Can delete auth group',33,'delete_authgroup'),(132,'Can view auth group',33,'view_authgroup'),(133,'Can add auth group permissions',34,'add_authgrouppermissions'),(134,'Can change auth group permissions',34,'change_authgrouppermissions'),(135,'Can delete auth group permissions',34,'delete_authgrouppermissions'),(136,'Can view auth group permissions',34,'view_authgrouppermissions'),(137,'Can add auth permission',35,'add_authpermission'),(138,'Can change auth permission',35,'change_authpermission'),(139,'Can delete auth permission',35,'delete_authpermission'),(140,'Can view auth permission',35,'view_authpermission'),(141,'Can add auth user',36,'add_authuser'),(142,'Can change auth user',36,'change_authuser'),(143,'Can delete auth user',36,'delete_authuser'),(144,'Can view auth user',36,'view_authuser'),(145,'Can add auth user groups',37,'add_authusergroups'),(146,'Can change auth user groups',37,'change_authusergroups'),(147,'Can delete auth user groups',37,'delete_authusergroups'),(148,'Can view auth user groups',37,'view_authusergroups'),(149,'Can add auth user user permissions',38,'add_authuseruserpermissions'),(150,'Can change auth user user permissions',38,'change_authuseruserpermissions'),(151,'Can delete auth user user permissions',38,'delete_authuseruserpermissions'),(152,'Can view auth user user permissions',38,'view_authuseruserpermissions'),(153,'Can add django admin log',39,'add_djangoadminlog'),(154,'Can change django admin log',39,'change_djangoadminlog'),(155,'Can delete django admin log',39,'delete_djangoadminlog'),(156,'Can view django admin log',39,'view_djangoadminlog'),(157,'Can add django content type',40,'add_djangocontenttype'),(158,'Can change django content type',40,'change_djangocontenttype'),(159,'Can delete django content type',40,'delete_djangocontenttype'),(160,'Can view django content type',40,'view_djangocontenttype'),(161,'Can add django migrations',41,'add_djangomigrations'),(162,'Can change django migrations',41,'change_djangomigrations'),(163,'Can delete django migrations',41,'delete_djangomigrations'),(164,'Can view django migrations',41,'view_djangomigrations'),(165,'Can add django session',42,'add_djangosession'),(166,'Can change django session',42,'change_djangosession'),(167,'Can delete django session',42,'delete_djangosession'),(168,'Can view django session',42,'view_djangosession');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(33,'links','authgroup'),(34,'links','authgrouppermissions'),(35,'links','authpermission'),(36,'links','authuser'),(37,'links','authusergroups'),(38,'links','authuseruserpermissions'),(39,'links','djangoadminlog'),(40,'links','djangocontenttype'),(41,'links','djangomigrations'),(42,'links','djangosession'),(7,'links','tblarealaboral'),(8,'links','tblauxiliar'),(9,'links','tblcargoempleado'),(10,'links','tblcoordinador'),(11,'links','tbldisponibilidadauxiliar'),(12,'links','tblempleado'),(13,'links','tblestadoimplemento'),(14,'links','tblestadomantenimiento'),(15,'links','tblestadosservicio'),(16,'links','tblimplemento'),(17,'links','tblinventario'),(18,'links','tblmantenimiento'),(19,'links','tblpermisosusuario'),(20,'links','tblprestamo'),(21,'links','tblprestamostecnologicos'),(22,'links','tblprioridadmantenimiento'),(23,'links','tblprioridadservicio'),(24,'links','tblrolusuario'),(25,'links','tblservicio'),(26,'links','tblsoportetecnico'),(27,'links','tblticketmantenimiento'),(28,'links','tblticketservicio'),(29,'links','tbltipoimplemento'),(30,'links','tbltipomantenimiento'),(31,'links','tbltiposervicio'),(32,'links','tblusuario'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-08-29 02:38:43.372762'),(2,'auth','0001_initial','2020-08-29 02:38:43.617872'),(3,'admin','0001_initial','2020-08-29 02:38:44.698094'),(4,'admin','0002_logentry_remove_auto_add','2020-08-29 02:38:44.913120'),(5,'admin','0003_logentry_add_action_flag_choices','2020-08-29 02:38:44.928737'),(6,'contenttypes','0002_remove_content_type_name','2020-08-29 02:38:45.059440'),(7,'auth','0002_alter_permission_name_max_length','2020-08-29 02:38:45.147037'),(8,'auth','0003_alter_user_email_max_length','2020-08-29 02:38:45.246441'),(9,'auth','0004_alter_user_username_opts','2020-08-29 02:38:45.261484'),(10,'auth','0005_alter_user_last_login_null','2020-08-29 02:38:45.331800'),(11,'auth','0006_require_contenttypes_0002','2020-08-29 02:38:45.336390'),(12,'auth','0007_alter_validators_add_error_messages','2020-08-29 02:38:45.352103'),(13,'auth','0008_alter_user_username_max_length','2020-08-29 02:38:45.445260'),(14,'auth','0009_alter_user_last_name_max_length','2020-08-29 02:38:45.528174'),(15,'auth','0010_alter_group_name_max_length','2020-08-29 02:38:45.685672'),(16,'auth','0011_update_proxy_permissions','2020-08-29 02:38:45.706728'),(17,'auth','0012_alter_user_first_name_max_length','2020-08-29 02:38:45.811823'),(18,'links','0001_initial','2020-08-29 02:38:45.853120'),(19,'sessions','0001_initial','2020-08-29 02:38:45.892865'),(20,'links','0002_auto_20200829_0242','2020-08-29 02:42:57.573086'),(21,'links','0002_auto_20200829_0250','2020-08-29 02:50:26.524831'),(22,'links','0002_auto_20200829_0306','2020-08-29 03:06:50.574352');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id_area_laboral` int NOT NULL,
  `area_laboral` varchar(45) NOT NULL,
  PRIMARY KEY (`id_area_laboral`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id_auxiliar` int NOT NULL,
  `calificacion_auxiliar` decimal(2,0) NOT NULL,
  `id_usuario` int NOT NULL,
  `id_disponibilidad_auxiliar` int NOT NULL,
  PRIMARY KEY (`id_auxiliar`),
  UNIQUE KEY `id_auxiliar_UNIQUE` (`id_auxiliar`),
  KEY `id_disponibilidad_auxiliar_idx` (`id_disponibilidad_auxiliar`),
  KEY `id_usuario_idx` (`id_usuario`),
  CONSTRAINT `fk_id_auxiliar` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuario` (`id_usuario`),
  CONSTRAINT `fk_id_disponibilidad_auxiliar` FOREIGN KEY (`id_disponibilidad_auxiliar`) REFERENCES `tbl_disponibilidad_auxiliar` (`id_disponibilidad_auxiliar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id_cargo` int NOT NULL,
  `cargo_empleado` varchar(45) NOT NULL,
  PRIMARY KEY (`id_cargo`),
  UNIQUE KEY `id_cargo_UNIQUE` (`id_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id_coordinador` int NOT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id_coordinador`),
  UNIQUE KEY `id_coordinador_UNIQUE` (`id_coordinador`),
  KEY `rol_usuario_idx` (`id_usuario`),
  CONSTRAINT `fk_rol_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id_disponibilidad_auxiliar` int NOT NULL,
  `disponibilidad` varchar(45) NOT NULL,
  PRIMARY KEY (`id_disponibilidad_auxiliar`),
  UNIQUE KEY `id_disponibilidad_auxiliar_UNIQUE` (`id_disponibilidad_auxiliar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id_empleado` int NOT NULL,
  `id_usuario` int NOT NULL,
  `id_cargo` int NOT NULL,
  `id_area_laboral` int NOT NULL,
  PRIMARY KEY (`id_empleado`),
  UNIQUE KEY `id_empleado_UNIQUE` (`id_empleado`),
  KEY `id_area_laboral_idx` (`id_area_laboral`),
  KEY `id_cargo_empleado_idx` (`id_cargo`),
  KEY `id_rol_usuario_idx` (`id_usuario`),
  CONSTRAINT `fk_area_laboral` FOREIGN KEY (`id_area_laboral`) REFERENCES `tbl_area_laboral` (`id_area_laboral`),
  CONSTRAINT `fk_cargo_empleado` FOREIGN KEY (`id_cargo`) REFERENCES `tbl_cargo_empleado` (`id_cargo`),
  CONSTRAINT `fk_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id_estado_implemento` int NOT NULL,
  `estado_implemento` varchar(45) NOT NULL,
  PRIMARY KEY (`id_estado_implemento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id_estado_mantenimiento` int NOT NULL,
  `estado_mantenimiento` varchar(45) NOT NULL,
  PRIMARY KEY (`id_estado_mantenimiento`),
  UNIQUE KEY `id_estado_mantenimiento_UNIQUE` (`id_estado_mantenimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estado_mantenimiento`
--

LOCK TABLES `tbl_estado_mantenimiento` WRITE;
/*!40000 ALTER TABLE `tbl_estado_mantenimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_estado_mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estados_servicio`
--

DROP TABLE IF EXISTS `tbl_estados_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_estados_servicio` (
  `id_estado_servicio` int NOT NULL,
  `estado_servicio` varchar(45) NOT NULL,
  PRIMARY KEY (`id_estado_servicio`),
  UNIQUE KEY `id_estado_servicio_UNIQUE` (`id_estado_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estados_servicio`
--

LOCK TABLES `tbl_estados_servicio` WRITE;
/*!40000 ALTER TABLE `tbl_estados_servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_estados_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_implemento`
--

DROP TABLE IF EXISTS `tbl_implemento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_implemento` (
  `id_ficha_tecnica_implemento` int NOT NULL,
  `marca_implemento` varchar(45) NOT NULL,
  `modelo_implemento` varchar(45) NOT NULL,
  `referencia_implemento` varchar(45) DEFAULT NULL,
  `id_tipo_implemento` int NOT NULL,
  `cantidad_memoria` varchar(45) DEFAULT NULL,
  `procesador` varchar(45) DEFAULT NULL,
  `sistema_operativo` varchar(45) DEFAULT NULL,
  `perifericos` text,
  `comentario` text,
  `id_estado_implemento` int NOT NULL,
  PRIMARY KEY (`id_ficha_tecnica_implemento`),
  UNIQUE KEY `id_ficha_tecnica_implemento_UNIQUE` (`id_ficha_tecnica_implemento`),
  KEY `fk_tipo_implemento_idx` (`id_tipo_implemento`),
  KEY `fk_estado_implemento_idx` (`id_estado_implemento`),
  CONSTRAINT `fk_estado_implemento` FOREIGN KEY (`id_estado_implemento`) REFERENCES `tbl_estado_implemento` (`id_estado_implemento`),
  CONSTRAINT `fk_tipo_implemento` FOREIGN KEY (`id_tipo_implemento`) REFERENCES `tbl_tipo_implemento` (`id_tipo_implemento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_implemento`
--

LOCK TABLES `tbl_implemento` WRITE;
/*!40000 ALTER TABLE `tbl_implemento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_implemento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_inventario`
--

DROP TABLE IF EXISTS `tbl_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_inventario` (
  `id_inventario` int NOT NULL,
  `id_ficha_tecnica` int NOT NULL,
  `serial_implemento` varchar(45) NOT NULL,
  `descripcion_implemento` text NOT NULL,
  PRIMARY KEY (`id_inventario`),
  UNIQUE KEY `id_inventario_UNIQUE` (`id_inventario`),
  UNIQUE KEY `serial_implemento_UNIQUE` (`serial_implemento`),
  KEY `id_ficha_tecnica_idx` (`id_ficha_tecnica`),
  CONSTRAINT `fk_id_ficha_inventario` FOREIGN KEY (`id_ficha_tecnica`) REFERENCES `tbl_implemento` (`id_ficha_tecnica_implemento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventario`
--

LOCK TABLES `tbl_inventario` WRITE;
/*!40000 ALTER TABLE `tbl_inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mantenimiento`
--

DROP TABLE IF EXISTS `tbl_mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_mantenimiento` (
  `id_mantenimiento` int NOT NULL,
  `area_mantenimiento` varchar(45) NOT NULL,
  `fecha_mantenimiento` date NOT NULL,
  `hora_mantenimiento` time NOT NULL,
  `id_inventario` int NOT NULL,
  `id_auxiliar` int NOT NULL,
  `id_tipo_mantenimiento` int NOT NULL,
  `id_prioridad_mantenimiento` int NOT NULL,
  `id_estado_mantenimiento` int NOT NULL,
  PRIMARY KEY (`id_mantenimiento`),
  UNIQUE KEY `id_mantenimiento_UNIQUE` (`id_mantenimiento`),
  KEY `id_auxiliar_mantenimiento_idx` (`id_auxiliar`),
  KEY `id_estado_mantenimiento_idx` (`id_estado_mantenimiento`),
  KEY `id_tipo_mantenimiento_idx` (`id_tipo_mantenimiento`),
  KEY `id_prioridad_mantenimiento_idx` (`id_prioridad_mantenimiento`),
  KEY `id_inventario_idx` (`id_inventario`),
  CONSTRAINT `fk_id_auxiliar_mantenimiento` FOREIGN KEY (`id_auxiliar`) REFERENCES `tbl_auxiliar` (`id_auxiliar`),
  CONSTRAINT `fk_id_estado_mantenimiento` FOREIGN KEY (`id_estado_mantenimiento`) REFERENCES `tbl_estado_mantenimiento` (`id_estado_mantenimiento`),
  CONSTRAINT `fk_id_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `tbl_inventario` (`id_inventario`),
  CONSTRAINT `fk_id_prioridad_mantenimiento` FOREIGN KEY (`id_prioridad_mantenimiento`) REFERENCES `tbl_prioridad_mantenimiento` (`id_prioridad_mantenimiento`),
  CONSTRAINT `fk_id_tipo_mantenimiento` FOREIGN KEY (`id_tipo_mantenimiento`) REFERENCES `tbl_tipo_mantenimiento` (`id_tipo_mantenimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mantenimiento`
--

LOCK TABLES `tbl_mantenimiento` WRITE;
/*!40000 ALTER TABLE `tbl_mantenimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_permisos_usuario`
--

DROP TABLE IF EXISTS `tbl_permisos_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_permisos_usuario` (
  `id_permisos_usuario` int NOT NULL,
  `permiso` text NOT NULL,
  `url_dashboard` text NOT NULL,
  PRIMARY KEY (`id_permisos_usuario`),
  UNIQUE KEY `id_permisos_usuario_UNIQUE` (`id_permisos_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permisos_usuario`
--

LOCK TABLES `tbl_permisos_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_permisos_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_permisos_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_prestamo`
--

DROP TABLE IF EXISTS `tbl_prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_prestamo` (
  `id_inventario_prestamo` int NOT NULL,
  `id_ficha_tecnica` int NOT NULL,
  `cantidad` int NOT NULL,
  `cantidad_disponible` int NOT NULL,
  `cantidad_en_prestamo` int NOT NULL,
  `fecha_entrada` datetime NOT NULL,
  `fecha_devolucion` datetime NOT NULL,
  PRIMARY KEY (`id_inventario_prestamo`),
  UNIQUE KEY `id_inventario_prestamo_UNIQUE` (`id_inventario_prestamo`),
  KEY `id_ficha_tecnica_idx` (`id_ficha_tecnica`),
  CONSTRAINT `fk_id_ficha_prestamo` FOREIGN KEY (`id_ficha_tecnica`) REFERENCES `tbl_implemento` (`id_ficha_tecnica_implemento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_prestamo`
--

LOCK TABLES `tbl_prestamo` WRITE;
/*!40000 ALTER TABLE `tbl_prestamo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_prestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_prestamos_tecnologicos`
--

DROP TABLE IF EXISTS `tbl_prestamos_tecnologicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_prestamos_tecnologicos` (
  `id_prestamos_tecnologicos` int NOT NULL,
  `id_inventario_prestamo` int NOT NULL,
  `cantidad_requerida` int NOT NULL,
  `id_ticket` int NOT NULL,
  PRIMARY KEY (`id_prestamos_tecnologicos`),
  UNIQUE KEY `id_prestamos_tecnologicos_UNIQUE` (`id_prestamos_tecnologicos`),
  KEY `id_ticket_prestamo_idx` (`id_ticket`),
  KEY `id_inventario_prestamo_idx` (`id_inventario_prestamo`),
  CONSTRAINT `fk_id_inventario_prestamo` FOREIGN KEY (`id_inventario_prestamo`) REFERENCES `tbl_prestamo` (`id_inventario_prestamo`),
  CONSTRAINT `fk_id_ticket_prestamo` FOREIGN KEY (`id_ticket`) REFERENCES `tbl_ticket_servicio` (`id_ticket_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_prestamos_tecnologicos`
--

LOCK TABLES `tbl_prestamos_tecnologicos` WRITE;
/*!40000 ALTER TABLE `tbl_prestamos_tecnologicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_prestamos_tecnologicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_prioridad_mantenimiento`
--

DROP TABLE IF EXISTS `tbl_prioridad_mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_prioridad_mantenimiento` (
  `id_prioridad_mantenimiento` int NOT NULL,
  `prioridad` varchar(45) NOT NULL,
  PRIMARY KEY (`id_prioridad_mantenimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_prioridad_mantenimiento`
--

LOCK TABLES `tbl_prioridad_mantenimiento` WRITE;
/*!40000 ALTER TABLE `tbl_prioridad_mantenimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_prioridad_mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_prioridad_servicio`
--

DROP TABLE IF EXISTS `tbl_prioridad_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_prioridad_servicio` (
  `id_prioridad` int NOT NULL,
  `prioridad` varchar(45) NOT NULL,
  PRIMARY KEY (`id_prioridad`),
  UNIQUE KEY `id_prioridad_UNIQUE` (`id_prioridad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_prioridad_servicio`
--

LOCK TABLES `tbl_prioridad_servicio` WRITE;
/*!40000 ALTER TABLE `tbl_prioridad_servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_prioridad_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_rol_usuario`
--

DROP TABLE IF EXISTS `tbl_rol_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_rol_usuario` (
  `id_rol_usuario` int NOT NULL,
  `rol_usuario` varchar(25) NOT NULL,
  `id_permisos_usuario` int NOT NULL,
  PRIMARY KEY (`id_rol_usuario`),
  KEY `fk_permisos_usuario_idx` (`id_permisos_usuario`),
  CONSTRAINT `fk_permisos_usuario` FOREIGN KEY (`id_permisos_usuario`) REFERENCES `andromeda`.`tbl_permisos_usuario` (`id_permisos_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_rol_usuario`
--

LOCK TABLES `tbl_rol_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_rol_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_rol_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_servicio`
--

DROP TABLE IF EXISTS `tbl_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_servicio` (
  `id_servicio` int NOT NULL,
  `id_empleado` int NOT NULL,
  `id_tipo_servicio` int NOT NULL,
  `id_prioridad_servicio` int NOT NULL,
  `fecha_servicio` date NOT NULL,
  `hora_servicio` time NOT NULL,
  `descripcion_servicio` text,
  `id_auxiliar` int NOT NULL,
  `id_estado_servicio` int NOT NULL,
  PRIMARY KEY (`id_servicio`),
  UNIQUE KEY `id_servicio_UNIQUE` (`id_servicio`),
  KEY `id_tipo_servicio_idx` (`id_tipo_servicio`),
  KEY `id_auxiliar_servicio_idx` (`id_auxiliar`),
  KEY `id_prioridad_servicio_idx` (`id_prioridad_servicio`),
  KEY `id_empleado_servicio_idx` (`id_empleado`),
  KEY `id_estado_servicio_idx` (`id_estado_servicio`),
  CONSTRAINT `fk_id_auxiliar_servicio` FOREIGN KEY (`id_auxiliar`) REFERENCES `tbl_auxiliar` (`id_auxiliar`),
  CONSTRAINT `fk_id_empleado_servicio` FOREIGN KEY (`id_empleado`) REFERENCES `tbl_empleado` (`id_empleado`),
  CONSTRAINT `fk_id_estado_servicio` FOREIGN KEY (`id_estado_servicio`) REFERENCES `tbl_estados_servicio` (`id_estado_servicio`),
  CONSTRAINT `fk_id_prioridad_servicio` FOREIGN KEY (`id_prioridad_servicio`) REFERENCES `tbl_prioridad_servicio` (`id_prioridad`),
  CONSTRAINT `fk_id_tipo_servicio` FOREIGN KEY (`id_tipo_servicio`) REFERENCES `tbl_tipo_servicio` (`id_tipo_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_servicio`
--

LOCK TABLES `tbl_servicio` WRITE;
/*!40000 ALTER TABLE `tbl_servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_soporte_tecnico`
--

DROP TABLE IF EXISTS `tbl_soporte_tecnico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_soporte_tecnico` (
  `id_soporte_tecnico` int NOT NULL,
  `id_ticket` int NOT NULL,
  PRIMARY KEY (`id_soporte_tecnico`),
  KEY `id_ticket_soporte_idx` (`id_ticket`),
  CONSTRAINT `fk_id_ticket_soporte` FOREIGN KEY (`id_ticket`) REFERENCES `tbl_ticket_servicio` (`id_ticket_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id_reporte_mantenimiento` int NOT NULL,
  `id_mantenimiento` int NOT NULL,
  `conclusion_mantenimiento` text,
  `id_estado_mantenimiento` int NOT NULL,
  PRIMARY KEY (`id_reporte_mantenimiento`),
  KEY `id_mantenimiento_idx` (`id_mantenimiento`),
  KEY `id_estado_mantenimiento_idx` (`id_estado_mantenimiento`),
  CONSTRAINT `fk_estado_mantenimiento_ticket` FOREIGN KEY (`id_estado_mantenimiento`) REFERENCES `tbl_estado_mantenimiento` (`id_estado_mantenimiento`),
  CONSTRAINT `fk_id_mantenimiento` FOREIGN KEY (`id_mantenimiento`) REFERENCES `tbl_mantenimiento` (`id_mantenimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id_ticket_servicio` int NOT NULL,
  `fecha_ticket` varchar(45) NOT NULL,
  `id_servicio` int NOT NULL,
  `conclusion_servicio` text NOT NULL,
  PRIMARY KEY (`id_ticket_servicio`),
  UNIQUE KEY `id_ticket_servicio_UNIQUE` (`id_ticket_servicio`),
  KEY `id_servicio_ticket_idx` (`id_servicio`),
  CONSTRAINT `fk_id_servicio_ticket` FOREIGN KEY (`id_servicio`) REFERENCES `tbl_servicio` (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id_tipo_implemento` int NOT NULL,
  `tipo_implemento` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tipo_implemento`),
  UNIQUE KEY `id_tipo_implemento_UNIQUE` (`id_tipo_implemento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id_tipo_mantenimiento` int NOT NULL,
  `tipo_mantenimiento` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tipo_mantenimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_mantenimiento`
--

LOCK TABLES `tbl_tipo_mantenimiento` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_mantenimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipo_mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_servicio`
--

DROP TABLE IF EXISTS `tbl_tipo_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipo_servicio` (
  `id_tipo_servicio` int NOT NULL,
  `tipo_servicio` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tipo_servicio`),
  UNIQUE KEY `id_tipo_servicio_UNIQUE` (`id_tipo_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_servicio`
--

LOCK TABLES `tbl_tipo_servicio` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipo_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuario`
--

DROP TABLE IF EXISTS `tbl_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usuario` (
  `id_usuario` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `correo_electronico` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  `creado` datetime NOT NULL,
  `modificado` datetime NOT NULL,
  `id_rol_usuario` int NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `id_usuario_UNIQUE` (`id_usuario`),
  UNIQUE KEY `correo_electronico_UNIQUE` (`correo_electronico`),
  KEY `id_rol_usuario_idx` (`id_rol_usuario`),
  CONSTRAINT `fk_id_rol_usuario` FOREIGN KEY (`id_rol_usuario`) REFERENCES `tbl_rol_usuario` (`id_rol_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario`
--

LOCK TABLES `tbl_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-29 13:29:29
