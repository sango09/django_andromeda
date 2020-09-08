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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add tbl area laboral',7,'add_tblarealaboral'),(26,'Can change tbl area laboral',7,'change_tblarealaboral'),(27,'Can delete tbl area laboral',7,'delete_tblarealaboral'),(28,'Can view tbl area laboral',7,'view_tblarealaboral'),(29,'Can add tbl auxiliar',8,'add_tblauxiliar'),(30,'Can change tbl auxiliar',8,'change_tblauxiliar'),(31,'Can delete tbl auxiliar',8,'delete_tblauxiliar'),(32,'Can view tbl auxiliar',8,'view_tblauxiliar'),(33,'Can add tbl cargo empleado',9,'add_tblcargoempleado'),(34,'Can change tbl cargo empleado',9,'change_tblcargoempleado'),(35,'Can delete tbl cargo empleado',9,'delete_tblcargoempleado'),(36,'Can view tbl cargo empleado',9,'view_tblcargoempleado'),(37,'Can add tbl disponibilidad auxiliar',10,'add_tbldisponibilidadauxiliar'),(38,'Can change tbl disponibilidad auxiliar',10,'change_tbldisponibilidadauxiliar'),(39,'Can delete tbl disponibilidad auxiliar',10,'delete_tbldisponibilidadauxiliar'),(40,'Can view tbl disponibilidad auxiliar',10,'view_tbldisponibilidadauxiliar'),(41,'Can add tbl empleado',11,'add_tblempleado'),(42,'Can change tbl empleado',11,'change_tblempleado'),(43,'Can delete tbl empleado',11,'delete_tblempleado'),(44,'Can view tbl empleado',11,'view_tblempleado'),(45,'Can add tbl estado implemento',12,'add_tblestadoimplemento'),(46,'Can change tbl estado implemento',12,'change_tblestadoimplemento'),(47,'Can delete tbl estado implemento',12,'delete_tblestadoimplemento'),(48,'Can view tbl estado implemento',12,'view_tblestadoimplemento'),(49,'Can add tbl estado mantenimiento',13,'add_tblestadomantenimiento'),(50,'Can change tbl estado mantenimiento',13,'change_tblestadomantenimiento'),(51,'Can delete tbl estado mantenimiento',13,'delete_tblestadomantenimiento'),(52,'Can view tbl estado mantenimiento',13,'view_tblestadomantenimiento'),(53,'Can add tbl estados servicio',14,'add_tblestadosservicio'),(54,'Can change tbl estados servicio',14,'change_tblestadosservicio'),(55,'Can delete tbl estados servicio',14,'delete_tblestadosservicio'),(56,'Can view tbl estados servicio',14,'view_tblestadosservicio'),(57,'Can add tbl implemento',15,'add_tblimplemento'),(58,'Can change tbl implemento',15,'change_tblimplemento'),(59,'Can delete tbl implemento',15,'delete_tblimplemento'),(60,'Can view tbl implemento',15,'view_tblimplemento'),(61,'Can add tbl inventario',16,'add_tblinventario'),(62,'Can change tbl inventario',16,'change_tblinventario'),(63,'Can delete tbl inventario',16,'delete_tblinventario'),(64,'Can view tbl inventario',16,'view_tblinventario'),(65,'Can add tbl mantenimiento',17,'add_tblmantenimiento'),(66,'Can change tbl mantenimiento',17,'change_tblmantenimiento'),(67,'Can delete tbl mantenimiento',17,'delete_tblmantenimiento'),(68,'Can view tbl mantenimiento',17,'view_tblmantenimiento'),(69,'Can add tbl permisos usuario',18,'add_tblpermisosusuario'),(70,'Can change tbl permisos usuario',18,'change_tblpermisosusuario'),(71,'Can delete tbl permisos usuario',18,'delete_tblpermisosusuario'),(72,'Can view tbl permisos usuario',18,'view_tblpermisosusuario'),(73,'Can add tbl position',19,'add_tblposition'),(74,'Can change tbl position',19,'change_tblposition'),(75,'Can delete tbl position',19,'delete_tblposition'),(76,'Can view tbl position',19,'view_tblposition'),(77,'Can add tbl prestamo',20,'add_tblprestamo'),(78,'Can change tbl prestamo',20,'change_tblprestamo'),(79,'Can delete tbl prestamo',20,'delete_tblprestamo'),(80,'Can view tbl prestamo',20,'view_tblprestamo'),(81,'Can add tbl prioridad mantenimiento',21,'add_tblprioridadmantenimiento'),(82,'Can change tbl prioridad mantenimiento',21,'change_tblprioridadmantenimiento'),(83,'Can delete tbl prioridad mantenimiento',21,'delete_tblprioridadmantenimiento'),(84,'Can view tbl prioridad mantenimiento',21,'view_tblprioridadmantenimiento'),(85,'Can add tbl prioridad servicio',22,'add_tblprioridadservicio'),(86,'Can change tbl prioridad servicio',22,'change_tblprioridadservicio'),(87,'Can delete tbl prioridad servicio',22,'delete_tblprioridadservicio'),(88,'Can view tbl prioridad servicio',22,'view_tblprioridadservicio'),(89,'Can add tbl servicio',23,'add_tblservicio'),(90,'Can change tbl servicio',23,'change_tblservicio'),(91,'Can delete tbl servicio',23,'delete_tblservicio'),(92,'Can view tbl servicio',23,'view_tblservicio'),(93,'Can add tbl tipo implemento',24,'add_tbltipoimplemento'),(94,'Can change tbl tipo implemento',24,'change_tbltipoimplemento'),(95,'Can delete tbl tipo implemento',24,'delete_tbltipoimplemento'),(96,'Can view tbl tipo implemento',24,'view_tbltipoimplemento'),(97,'Can add tbl tipo mantenimiento',25,'add_tbltipomantenimiento'),(98,'Can change tbl tipo mantenimiento',25,'change_tbltipomantenimiento'),(99,'Can delete tbl tipo mantenimiento',25,'delete_tbltipomantenimiento'),(100,'Can view tbl tipo mantenimiento',25,'view_tbltipomantenimiento'),(101,'Can add tbl tipo servicio',26,'add_tbltiposervicio'),(102,'Can change tbl tipo servicio',26,'change_tbltiposervicio'),(103,'Can delete tbl tipo servicio',26,'delete_tbltiposervicio'),(104,'Can view tbl tipo servicio',26,'view_tbltiposervicio'),(105,'Can add tbl usuario',27,'add_tblusuario'),(106,'Can change tbl usuario',27,'change_tblusuario'),(107,'Can delete tbl usuario',27,'delete_tblusuario'),(108,'Can view tbl usuario',27,'view_tblusuario'),(109,'Can add tbl ticket servicio',28,'add_tblticketservicio'),(110,'Can change tbl ticket servicio',28,'change_tblticketservicio'),(111,'Can delete tbl ticket servicio',28,'delete_tblticketservicio'),(112,'Can view tbl ticket servicio',28,'view_tblticketservicio'),(113,'Can add tbl ticket mantenimiento',29,'add_tblticketmantenimiento'),(114,'Can change tbl ticket mantenimiento',29,'change_tblticketmantenimiento'),(115,'Can delete tbl ticket mantenimiento',29,'delete_tblticketmantenimiento'),(116,'Can view tbl ticket mantenimiento',29,'view_tblticketmantenimiento'),(117,'Can add tbl soporte tecnico',30,'add_tblsoportetecnico'),(118,'Can change tbl soporte tecnico',30,'change_tblsoportetecnico'),(119,'Can delete tbl soporte tecnico',30,'delete_tblsoportetecnico'),(120,'Can view tbl soporte tecnico',30,'view_tblsoportetecnico'),(121,'Can add tbl prestamos tecnologicos',31,'add_tblprestamostecnologicos'),(122,'Can change tbl prestamos tecnologicos',31,'change_tblprestamostecnologicos'),(123,'Can delete tbl prestamos tecnologicos',31,'delete_tblprestamostecnologicos'),(124,'Can view tbl prestamos tecnologicos',31,'view_tblprestamostecnologicos'),(125,'Can add tbl coordinador',32,'add_tblcoordinador'),(126,'Can change tbl coordinador',32,'change_tblcoordinador'),(127,'Can delete tbl coordinador',32,'delete_tblcoordinador'),(128,'Can view tbl coordinador',32,'view_tblcoordinador');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$JvY89nG19gAq$aYHC6CTc5icjUK8Xh4XZNlM6hKCLzURryfVC+xabxBk=',NULL,0,'james@gmail.com','james',' thomas','',0,1,'2020-09-07 02:26:51.857655'),(4,'pbkdf2_sha256$216000$6zRzUIvnrlKv$evWSJYL86o9ODV201ap4DyzW0CeZy/Wx33Zvfq4ew2A=','2020-09-08 03:14:59.205618',1,'sango09','','','santiagofl123@gmail.com',1,1,'2020-09-07 04:05:13.830561'),(5,'pbkdf2_sha256$216000$GTBabB70Y1Av$r0yDgX+failDbALSZNTBtbhEhAgTkpmgUFCuyuZ4tfc=',NULL,0,'cruz@gmail.com','name','vargas cruz','',0,1,'2020-09-08 01:32:12.782707'),(6,'pbkdf2_sha256$216000$3aGPuAbkL4xk$ck9gMk5n22cGiWbJBQo/FNjAIxJ7aeNHZn+hsB8YNqw=',NULL,0,'ordoñez@gmail.com','name','ordoñez','ordoñez@gmail.com',0,1,'2020-09-08 02:13:33.439324'),(7,'pbkdf2_sha256$216000$KxjlhBzvxhHH$Z/DIQGerfpkobvXAQ52KWM9UX9sQuRJnmKVuAEb6yF8=',NULL,0,'camacho@gmail.com','name','ordoñez camacho','camacho@gmail.com',0,1,'2020-09-08 02:15:15.424522'),(8,'pbkdf2_sha256$216000$v7OkLQYb5lYo$wgl9QkbQqJXTXz8b4Q15jtOt5ljPCJyFv97tYCyFw78=',NULL,0,'sango@cgb.edu.co','santiago','gomez florez','sango@cgb.edu.co',0,1,'2020-09-08 03:01:06.699018'),(9,'pbkdf2_sha256$216000$UMqWFdtPUU08$f7IaKPTYspLp8JXAUroDdUTCOXNLyzYkRT6XtnxOYIk=',NULL,0,'juan@admin.edu.co','juan pablo','ardila ','juan@admin.edu.co',0,1,'2020-09-08 03:02:36.008523');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'links','tblarealaboral'),(8,'links','tblauxiliar'),(9,'links','tblcargoempleado'),(32,'links','tblcoordinador'),(10,'links','tbldisponibilidadauxiliar'),(11,'links','tblempleado'),(12,'links','tblestadoimplemento'),(13,'links','tblestadomantenimiento'),(14,'links','tblestadosservicio'),(15,'links','tblimplemento'),(16,'links','tblinventario'),(17,'links','tblmantenimiento'),(18,'links','tblpermisosusuario'),(19,'links','tblposition'),(20,'links','tblprestamo'),(31,'links','tblprestamostecnologicos'),(21,'links','tblprioridadmantenimiento'),(22,'links','tblprioridadservicio'),(23,'links','tblservicio'),(30,'links','tblsoportetecnico'),(29,'links','tblticketmantenimiento'),(28,'links','tblticketservicio'),(24,'links','tbltipoimplemento'),(25,'links','tbltipomantenimiento'),(26,'links','tbltiposervicio'),(27,'links','tblusuario'),(6,'sessions','session');
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
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-09-07 01:48:36.041386'),(2,'auth','0001_initial','2020-09-07 01:48:36.219059'),(3,'admin','0001_initial','2020-09-07 01:48:36.625380'),(4,'admin','0002_logentry_remove_auto_add','2020-09-07 01:48:36.763217'),(5,'admin','0003_logentry_add_action_flag_choices','2020-09-07 01:48:36.772222'),(6,'contenttypes','0002_remove_content_type_name','2020-09-07 01:48:36.921357'),(7,'auth','0002_alter_permission_name_max_length','2020-09-07 01:48:36.978899'),(8,'auth','0003_alter_user_email_max_length','2020-09-07 01:48:37.004937'),(9,'auth','0004_alter_user_username_opts','2020-09-07 01:48:37.012029'),(10,'auth','0005_alter_user_last_login_null','2020-09-07 01:48:37.061456'),(11,'auth','0006_require_contenttypes_0002','2020-09-07 01:48:37.065485'),(12,'auth','0007_alter_validators_add_error_messages','2020-09-07 01:48:37.074213'),(13,'auth','0008_alter_user_username_max_length','2020-09-07 01:48:37.183235'),(14,'auth','0009_alter_user_last_name_max_length','2020-09-07 01:48:37.239486'),(15,'auth','0010_alter_group_name_max_length','2020-09-07 01:48:37.263644'),(16,'auth','0011_update_proxy_permissions','2020-09-07 01:48:37.272737'),(17,'auth','0012_alter_user_first_name_max_length','2020-09-07 01:48:37.355403'),(18,'links','0001_initial','2020-09-07 01:48:38.610934'),(19,'sessions','0001_initial','2020-09-07 01:48:40.039034'),(20,'links','0002_auto_20200908_0214','2020-09-08 02:14:25.365129');
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
  `calificacion_auxiliar` decimal(2,0) NOT NULL,
  `id_disponibilidad_auxiliar` int NOT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id_auxiliar`),
  KEY `tbl_auxiliar_id_disponibilidad_au_5ef778db_fk_tbl_dispo` (`id_disponibilidad_auxiliar`),
  KEY `tbl_auxiliar_id_usuario_118d48f1_fk_tbl_usuario_id_usuario` (`id_usuario`),
  CONSTRAINT `tbl_auxiliar_id_disponibilidad_au_5ef778db_fk_tbl_dispo` FOREIGN KEY (`id_disponibilidad_auxiliar`) REFERENCES `tbl_disponibilidad_auxiliar` (`id_disponibilidad_auxiliar`),
  CONSTRAINT `tbl_auxiliar_id_usuario_118d48f1_fk_tbl_usuario_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuario` (`id_usuario`)
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
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id_coordinador`),
  KEY `tbl_coordinador_id_usuario_7957d338_fk_tbl_usuario_id_usuario` (`id_usuario`),
  CONSTRAINT `tbl_coordinador_id_usuario_7957d338_fk_tbl_usuario_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuario` (`id_usuario`)
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
  `id_area_laboral` int NOT NULL,
  `id_cargo` int NOT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id_empleado`),
  KEY `tbl_empleado_id_usuario_d69822f8_fk_tbl_usuario_id_usuario` (`id_usuario`),
  KEY `tbl_empleado_id_area_laboral_6c67b900_fk_tbl_area_` (`id_area_laboral`),
  KEY `tbl_empleado_id_cargo_1c869e35_fk_tbl_cargo_empleado_id_cargo` (`id_cargo`),
  CONSTRAINT `tbl_empleado_id_area_laboral_6c67b900_fk_tbl_area_` FOREIGN KEY (`id_area_laboral`) REFERENCES `tbl_area_laboral` (`id_area_laboral`),
  CONSTRAINT `tbl_empleado_id_cargo_1c869e35_fk_tbl_cargo_empleado_id_cargo` FOREIGN KEY (`id_cargo`) REFERENCES `tbl_cargo_empleado` (`id_cargo`),
  CONSTRAINT `tbl_empleado_id_usuario_d69822f8_fk_tbl_usuario_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuario` (`id_usuario`)
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
-- Table structure for table `tbl_estados_servicio`
--

DROP TABLE IF EXISTS `tbl_estados_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_estados_servicio` (
  `id_estado_servicio` int NOT NULL AUTO_INCREMENT,
  `estado_servicio` varchar(45) NOT NULL,
  PRIMARY KEY (`id_estado_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id_ficha_tecnica_implemento` int NOT NULL AUTO_INCREMENT,
  `marca_implemento` varchar(45) NOT NULL,
  `modelo_implemento` varchar(45) NOT NULL,
  `referencia_implemento` varchar(45) DEFAULT NULL,
  `cantidad_memoria` varchar(45) DEFAULT NULL,
  `procesador` varchar(45) DEFAULT NULL,
  `sistema_operativo` varchar(45) DEFAULT NULL,
  `perifericos` longtext,
  `comentario` longtext,
  `id_estado_implemento` int NOT NULL,
  `id_tipo_implemento` int NOT NULL,
  PRIMARY KEY (`id_ficha_tecnica_implemento`),
  KEY `tbl_implemento_id_tipo_implemento_1ca8fb1e_fk_tbl_tipo_` (`id_tipo_implemento`),
  KEY `tbl_implemento_id_estado_implemento_5611fc3a_fk_tbl_estad` (`id_estado_implemento`),
  CONSTRAINT `tbl_implemento_id_estado_implemento_5611fc3a_fk_tbl_estad` FOREIGN KEY (`id_estado_implemento`) REFERENCES `tbl_estado_implemento` (`id_estado_implemento`),
  CONSTRAINT `tbl_implemento_id_tipo_implemento_1ca8fb1e_fk_tbl_tipo_` FOREIGN KEY (`id_tipo_implemento`) REFERENCES `tbl_tipo_implemento` (`id_tipo_implemento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id_inventario` int NOT NULL AUTO_INCREMENT,
  `serial_implemento` varchar(45) NOT NULL,
  `descripcion_implemento` longtext NOT NULL,
  `id_ficha_tecnica` int NOT NULL,
  PRIMARY KEY (`id_inventario`),
  UNIQUE KEY `serial_implemento` (`serial_implemento`),
  KEY `tbl_inventario_id_ficha_tecnica_49c0a672_fk_tbl_imple` (`id_ficha_tecnica`),
  CONSTRAINT `tbl_inventario_id_ficha_tecnica_49c0a672_fk_tbl_imple` FOREIGN KEY (`id_ficha_tecnica`) REFERENCES `tbl_implemento` (`id_ficha_tecnica_implemento`)
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
-- Table structure for table `tbl_mantenimiento`
--

DROP TABLE IF EXISTS `tbl_mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_mantenimiento` (
  `id_mantenimiento` int NOT NULL AUTO_INCREMENT,
  `area_mantenimiento` varchar(45) NOT NULL,
  `fecha_mantenimiento` date NOT NULL,
  `hora_mantenimiento` time(6) NOT NULL,
  `id_auxiliar` int NOT NULL,
  `id_estado_mantenimiento` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_prioridad_mantenimiento` int NOT NULL,
  `id_tipo_mantenimiento` int NOT NULL,
  PRIMARY KEY (`id_mantenimiento`),
  KEY `tbl_mantenimiento_id_prioridad_manteni_77740536_fk_tbl_prior` (`id_prioridad_mantenimiento`),
  KEY `tbl_mantenimiento_id_tipo_mantenimient_8d3955cd_fk_tbl_tipo_` (`id_tipo_mantenimiento`),
  KEY `tbl_mantenimiento_id_auxiliar_30df34cc_fk_tbl_auxil` (`id_auxiliar`),
  KEY `tbl_mantenimiento_id_estado_mantenimie_231ba7da_fk_tbl_estad` (`id_estado_mantenimiento`),
  KEY `tbl_mantenimiento_id_inventario_979da024_fk_tbl_inven` (`id_inventario`),
  CONSTRAINT `tbl_mantenimiento_id_auxiliar_30df34cc_fk_tbl_auxil` FOREIGN KEY (`id_auxiliar`) REFERENCES `tbl_auxiliar` (`id_auxiliar`),
  CONSTRAINT `tbl_mantenimiento_id_estado_mantenimie_231ba7da_fk_tbl_estad` FOREIGN KEY (`id_estado_mantenimiento`) REFERENCES `tbl_estado_mantenimiento` (`id_estado_mantenimiento`),
  CONSTRAINT `tbl_mantenimiento_id_inventario_979da024_fk_tbl_inven` FOREIGN KEY (`id_inventario`) REFERENCES `tbl_inventario` (`id_inventario`),
  CONSTRAINT `tbl_mantenimiento_id_prioridad_manteni_77740536_fk_tbl_prior` FOREIGN KEY (`id_prioridad_mantenimiento`) REFERENCES `tbl_prioridad_mantenimiento` (`id_prioridad_mantenimiento`),
  CONSTRAINT `tbl_mantenimiento_id_tipo_mantenimient_8d3955cd_fk_tbl_tipo_` FOREIGN KEY (`id_tipo_mantenimiento`) REFERENCES `tbl_tipo_mantenimiento` (`id_tipo_mantenimiento`)
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
-- Table structure for table `tbl_permisos_usuario`
--

DROP TABLE IF EXISTS `tbl_permisos_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_permisos_usuario` (
  `id_permisos_usuario` int NOT NULL AUTO_INCREMENT,
  `permiso` longtext NOT NULL,
  `url_dashboard` longtext NOT NULL,
  PRIMARY KEY (`id_permisos_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permisos_usuario`
--

LOCK TABLES `tbl_permisos_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_permisos_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_permisos_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_position`
--

DROP TABLE IF EXISTS `tbl_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_position` (
  `id_position` int NOT NULL AUTO_INCREMENT,
  `position` varchar(50) NOT NULL,
  PRIMARY KEY (`id_position`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_position`
--

LOCK TABLES `tbl_position` WRITE;
/*!40000 ALTER TABLE `tbl_position` DISABLE KEYS */;
INSERT INTO `tbl_position` VALUES (1,'Coordinador'),(2,'Auxiliar de sistemas'),(3,'Personal administrativo'),(4,'Profesor');
/*!40000 ALTER TABLE `tbl_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_prestamo`
--

DROP TABLE IF EXISTS `tbl_prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_prestamo` (
  `id_inventario_prestamo` int NOT NULL AUTO_INCREMENT,
  `cantidad` int NOT NULL,
  `cantidad_disponible` int NOT NULL,
  `cantidad_en_prestamo` int NOT NULL,
  `fecha_entrada` datetime(6) NOT NULL,
  `fecha_devolucion` datetime(6) NOT NULL,
  `id_ficha_tecnica` int NOT NULL,
  PRIMARY KEY (`id_inventario_prestamo`),
  KEY `tbl_prestamo_id_ficha_tecnica_f146e081_fk_tbl_imple` (`id_ficha_tecnica`),
  CONSTRAINT `tbl_prestamo_id_ficha_tecnica_f146e081_fk_tbl_imple` FOREIGN KEY (`id_ficha_tecnica`) REFERENCES `tbl_implemento` (`id_ficha_tecnica_implemento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id_prestamos_tecnologicos` int NOT NULL AUTO_INCREMENT,
  `cantidad_requerida` int NOT NULL,
  `id_inventario_prestamo` int NOT NULL,
  `id_ticket` int NOT NULL,
  PRIMARY KEY (`id_prestamos_tecnologicos`),
  KEY `tbl_prestamos_tecnol_id_inventario_presta_39b337eb_fk_tbl_prest` (`id_inventario_prestamo`),
  KEY `tbl_prestamos_tecnol_id_ticket_11ac5188_fk_tbl_ticke` (`id_ticket`),
  CONSTRAINT `tbl_prestamos_tecnol_id_inventario_presta_39b337eb_fk_tbl_prest` FOREIGN KEY (`id_inventario_prestamo`) REFERENCES `tbl_prestamo` (`id_inventario_prestamo`),
  CONSTRAINT `tbl_prestamos_tecnol_id_ticket_11ac5188_fk_tbl_ticke` FOREIGN KEY (`id_ticket`) REFERENCES `tbl_ticket_servicio` (`id_ticket_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id_prioridad_mantenimiento` int NOT NULL AUTO_INCREMENT,
  `prioridad` varchar(45) NOT NULL,
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
-- Table structure for table `tbl_prioridad_servicio`
--

DROP TABLE IF EXISTS `tbl_prioridad_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_prioridad_servicio` (
  `id_prioridad` int NOT NULL AUTO_INCREMENT,
  `prioridad` varchar(45) NOT NULL,
  PRIMARY KEY (`id_prioridad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_prioridad_servicio`
--

LOCK TABLES `tbl_prioridad_servicio` WRITE;
/*!40000 ALTER TABLE `tbl_prioridad_servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_prioridad_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_servicio`
--

DROP TABLE IF EXISTS `tbl_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_servicio` (
  `id_servicio` int NOT NULL AUTO_INCREMENT,
  `fecha_servicio` date NOT NULL,
  `hora_servicio` time(6) NOT NULL,
  `descripcion_servicio` longtext,
  `id_auxiliar` int NOT NULL,
  `id_empleado` int NOT NULL,
  `id_estado_servicio` int NOT NULL,
  `id_prioridad_servicio` int NOT NULL,
  `id_tipo_servicio` int NOT NULL,
  PRIMARY KEY (`id_servicio`),
  KEY `tbl_servicio_id_tipo_servicio_209f77e0_fk_tbl_tipo_` (`id_tipo_servicio`),
  KEY `tbl_servicio_id_auxiliar_c289031a_fk_tbl_auxiliar_id_auxiliar` (`id_auxiliar`),
  KEY `tbl_servicio_id_empleado_27dd5e72_fk_tbl_empleado_id_empleado` (`id_empleado`),
  KEY `tbl_servicio_id_estado_servicio_256ed418_fk_tbl_estad` (`id_estado_servicio`),
  KEY `tbl_servicio_id_prioridad_servici_5159f669_fk_tbl_prior` (`id_prioridad_servicio`),
  CONSTRAINT `tbl_servicio_id_auxiliar_c289031a_fk_tbl_auxiliar_id_auxiliar` FOREIGN KEY (`id_auxiliar`) REFERENCES `tbl_auxiliar` (`id_auxiliar`),
  CONSTRAINT `tbl_servicio_id_empleado_27dd5e72_fk_tbl_empleado_id_empleado` FOREIGN KEY (`id_empleado`) REFERENCES `tbl_empleado` (`id_empleado`),
  CONSTRAINT `tbl_servicio_id_estado_servicio_256ed418_fk_tbl_estad` FOREIGN KEY (`id_estado_servicio`) REFERENCES `tbl_estados_servicio` (`id_estado_servicio`),
  CONSTRAINT `tbl_servicio_id_prioridad_servici_5159f669_fk_tbl_prior` FOREIGN KEY (`id_prioridad_servicio`) REFERENCES `tbl_prioridad_servicio` (`id_prioridad`),
  CONSTRAINT `tbl_servicio_id_tipo_servicio_209f77e0_fk_tbl_tipo_` FOREIGN KEY (`id_tipo_servicio`) REFERENCES `tbl_tipo_servicio` (`id_tipo_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id_soporte_tecnico` int NOT NULL AUTO_INCREMENT,
  `id_ticket` int NOT NULL,
  PRIMARY KEY (`id_soporte_tecnico`),
  KEY `tbl_soporte_tecnico_id_ticket_5f6c0ae5_fk_tbl_ticke` (`id_ticket`),
  CONSTRAINT `tbl_soporte_tecnico_id_ticket_5f6c0ae5_fk_tbl_ticke` FOREIGN KEY (`id_ticket`) REFERENCES `tbl_ticket_servicio` (`id_ticket_servicio`)
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
  `id_reporte_mantenimiento` int NOT NULL AUTO_INCREMENT,
  `conclusion_mantenimiento` longtext,
  `id_estado_mantenimiento` int NOT NULL,
  `id_mantenimiento` int NOT NULL,
  PRIMARY KEY (`id_reporte_mantenimiento`),
  KEY `tbl_ticket_mantenimi_id_estado_mantenimie_59d5a61d_fk_tbl_estad` (`id_estado_mantenimiento`),
  KEY `tbl_ticket_mantenimi_id_mantenimiento_fe8179e6_fk_tbl_mante` (`id_mantenimiento`),
  CONSTRAINT `tbl_ticket_mantenimi_id_estado_mantenimie_59d5a61d_fk_tbl_estad` FOREIGN KEY (`id_estado_mantenimiento`) REFERENCES `tbl_estado_mantenimiento` (`id_estado_mantenimiento`),
  CONSTRAINT `tbl_ticket_mantenimi_id_mantenimiento_fe8179e6_fk_tbl_mante` FOREIGN KEY (`id_mantenimiento`) REFERENCES `tbl_mantenimiento` (`id_mantenimiento`)
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
  `fecha_ticket` varchar(45) NOT NULL,
  `conclusion_servicio` longtext NOT NULL,
  `id_servicio` int NOT NULL,
  PRIMARY KEY (`id_ticket_servicio`),
  KEY `tbl_ticket_servicio_id_servicio_aa384b02_fk_tbl_servi` (`id_servicio`),
  CONSTRAINT `tbl_ticket_servicio_id_servicio_aa384b02_fk_tbl_servi` FOREIGN KEY (`id_servicio`) REFERENCES `tbl_servicio` (`id_servicio`)
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
  PRIMARY KEY (`id_tipo_implemento`)
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

--
-- Table structure for table `tbl_tipo_servicio`
--

DROP TABLE IF EXISTS `tbl_tipo_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipo_servicio` (
  `id_tipo_servicio` int NOT NULL AUTO_INCREMENT,
  `tipo_servicio` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tipo_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `correo_electronico` varchar(45) NOT NULL,
  `contrasena` varchar(256) NOT NULL,
  `creado` datetime(6) NOT NULL,
  `modificado` datetime(6) NOT NULL,
  `position_id` int NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `correo_electronico` (`correo_electronico`),
  KEY `tbl_usuario_position_id_4f6cf554_fk_tbl_position_id_position` (`position_id`),
  CONSTRAINT `tbl_usuario_position_id_4f6cf554_fk_tbl_position_id_position` FOREIGN KEY (`position_id`) REFERENCES `tbl_position` (`id_position`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario`
--

LOCK TABLES `tbl_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_usuario` DISABLE KEYS */;
INSERT INTO `tbl_usuario` VALUES (1,'james',' thomas','juan@gmail.com','G@mez123456','2020-09-07 02:31:03.087132','2020-09-07 02:31:03.087175',3),(2,'james',' thomas','james@gmail.com','G@mez123456','2020-09-07 02:33:25.081129','2020-09-07 02:33:25.081178',3),(4,'santiago','gomez','santiago@gmail.com','G@mez123456','2020-09-07 02:34:19.958312','2020-09-07 02:34:19.958351',1),(6,'juan pablo','ardila otero','ardila@gmail.com','G@mez123456','2020-09-07 02:36:22.194098','2020-09-07 02:36:22.194139',2),(7,'santiago','gomez','gomez@gmail.com','G@mez123456','2020-09-08 01:12:46.407227','2020-09-08 01:12:46.407278',2),(8,'helber santiago','vargas cruz','cruz@gmail.com','cgb123456','2020-09-08 01:32:12.910055','2020-09-08 01:32:12.910082',4),(9,'sebastian','ordoñez camacho','camacho@gmail.com','$pbkdf2-sha256$12000$BQAAAMAY4/w/h9A6R.hdK2XMWav1fm/N2RujVEopJcQ$a7T44ygxjotiiALm7xbl6PuNZTPtLdtqk7mNvKs.6BA','2020-09-08 02:15:15.547404','2020-09-08 02:15:15.547431',2),(10,'santiago','gomez florez','sango@cgb.edu.co','$pbkdf2-sha256$12000$ASCklJLS2rsXwrg3xvg/B2BMSckZw7jX.p/TOqfU2rs$TQkMA13cvttMXCG7ktfxgp8HolLsRisblHk5Fp316C0','2020-09-08 03:01:06.829427','2020-09-08 03:01:06.829454',1),(11,'juan pablo','ardila ','juan@admin.edu.co','$pbkdf2-sha256$12000$vjcmROg9B.D8X8vZm/Ney/nfGyPEWAvhnDPmnBPCmLM$GnhMAlei1QPZ8sk9AHWNjY9Ndb64ZQHBA5fBhjrAfEQ','2020-09-08 03:02:36.128433','2020-09-08 03:02:36.128522',1);
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

-- Dump completed on 2020-09-08 17:58:46
