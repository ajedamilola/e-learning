-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: elearning
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT '1',
  `created_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `review` int DEFAULT '0',
  `rate` float(8,2) DEFAULT '0.00',
  `created_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT  IGNORE INTO `courses` VALUES ('0ee8b34e-2b9a-4226-8e57-44cf2622a632','1afd0e6d-3b9c-4067-ba7f-41fd5f5b48b3','6e108c12-ab9e-4d91-b1a1-e3281ad517d9','./uploads/images/course/V2avCJ9PGyOQMAAMo9nE2.jpeg',0,0.00,'2024-01-19 09:32:07.617691'),('12d0fff4-89cf-4917-be85-90f04ebef53f','1afd0e6d-3b9c-4067-ba7f-41fd5f5b48b3','ece867b8-a877-42dc-8b54-ae668d15b30c','./uploads/images/course/1-zmlYBgrTEtLcftl2U0R.jpeg',0,0.00,'2024-01-19 09:32:37.592191'),('189e8427-2ff6-414e-8660-26a7383c41df','3229b34b-7231-4667-8885-ee608b7f70b4','1f80e6f8-34e2-42b8-af8a-fd5adfdef121','./uploads/images/course/ZMPGlNDVQv1L_Ky6yP_OT.jpeg',0,0.00,'2024-01-19 09:33:00.897926'),('291070aa-2011-40cf-bfed-b0bdce93d20f','1afd0e6d-3b9c-4067-ba7f-41fd5f5b48b3','0260ceec-f9e1-4da2-b56b-120599cc815e','./uploads/images/course/qAvCxQTXb8ZQHtdzc32TI.jpeg',0,0.00,'2024-01-19 09:31:18.635679'),('31a7526b-75f2-4c1b-953c-77ed24e61cea','1afd0e6d-3b9c-4067-ba7f-41fd5f5b48b3','1f80e6f8-34e2-42b8-af8a-fd5adfdef121','./uploads/images/course/ZFeYg6qbmsZxYBn2NAggM.jpeg',0,0.00,'2024-01-19 09:32:24.546690'),('3563af93-c69f-448b-bcc1-1c1b9ef2d226','e6cbd9b2-43d4-4b54-af2c-875dce1c5a2b','6e108c12-ab9e-4d91-b1a1-e3281ad517d9','./uploads/images/course/UE9SG0YHQMF5JLpmUS6Az.jpeg',0,0.00,'2024-01-19 09:44:09.869721'),('3cc2fd98-d892-43b5-8545-e1447e217688','e6cbd9b2-43d4-4b54-af2c-875dce1c5a2b','0260ceec-f9e1-4da2-b56b-120599cc815e','./uploads/images/course/TkzabggEzI_Map5e4_7W1.jpeg',0,0.00,'2024-01-19 09:43:07.700944'),('47bb35ae-e3ba-4a01-8a38-ccae90bc30d5','3229b34b-7231-4667-8885-ee608b7f70b4','65889f52-165f-4296-87f2-eb038ebd8369','./uploads/images/course/MjUUAgS7WjzywtnEjjwXA.jpeg',0,0.00,'2024-01-19 09:33:29.010566'),('4b13a519-2782-4770-827e-4e1b325a02c7','f6b6f467-f8da-469b-9ede-7f6398afc66f','65889f52-165f-4296-87f2-eb038ebd8369','./uploads/images/course/nwtSx_nC9-1UyyYFvxIYO.jpeg',0,0.00,'2024-01-19 09:42:07.685868'),('4cdbff6e-2b97-45f6-adfc-65aa13faf819','f6b6f467-f8da-469b-9ede-7f6398afc66f','3797cb56-48e6-4ccb-a0a7-225e3b36abca','./uploads/images/course/j0xKnH6BUu-KXHoVevnmn.jpeg',0,0.00,'2024-01-19 09:41:54.558720'),('501c110c-b939-4bb9-965a-e41f7b3163ed','3229b34b-7231-4667-8885-ee608b7f70b4','6e108c12-ab9e-4d91-b1a1-e3281ad517d9','./uploads/images/course/ku63DS0YBOObrOfMqpPDq.jpeg',0,0.00,'2024-01-19 09:33:44.342134'),('58965773-2603-48b1-a0ef-911d16749c34','e6cbd9b2-43d4-4b54-af2c-875dce1c5a2b','ece867b8-a877-42dc-8b54-ae668d15b30c','./uploads/images/course/zRG4pSkpe6hmxcG_Yslhi.jpeg',0,0.00,'2024-01-19 09:44:26.619823'),('5b39e529-850f-4233-9d7b-1c48e95d1673','c5cba39c-8564-400e-9c2d-4d901ae352a8','65889f52-165f-4296-87f2-eb038ebd8369','./uploads/images/course/l2DdfXfERTC84E91dhbgS.jpeg',0,0.00,'2024-01-19 09:40:07.474634'),('5e2709ef-1723-40b2-9b8b-8307ac2014b0','c5cba39c-8564-400e-9c2d-4d901ae352a8','1f80e6f8-34e2-42b8-af8a-fd5adfdef121','./uploads/images/course/WuO51gsh5LfSiYG8Fnl6S.jpeg',0,0.00,'2024-01-19 09:40:44.782472'),('65839a17-6e46-4eda-bd74-79df9a040062','1afd0e6d-3b9c-4067-ba7f-41fd5f5b48b3','3797cb56-48e6-4ccb-a0a7-225e3b36abca','./uploads/images/course/7kuXWr2-VRT9G8rI_uQsl.jpeg',0,0.00,'2024-01-19 09:31:51.858042'),('7184f533-2c36-45bf-8b4e-c7bf034e6890','f6b6f467-f8da-469b-9ede-7f6398afc66f','6e108c12-ab9e-4d91-b1a1-e3281ad517d9','./uploads/images/course/zEDXZJF25WkkDVmLeVj-j.jpeg',0,0.00,'2024-01-19 09:42:27.252536'),('7bcd7c0f-b0bf-4a0c-b2e4-5cc5f58d5a0f','1afd0e6d-3b9c-4067-ba7f-41fd5f5b48b3','65889f52-165f-4296-87f2-eb038ebd8369','./uploads/images/course/kv3AqqxsNeN1V4b7ewnuq.jpeg',0,0.00,'2024-01-19 09:31:36.242475'),('85f8b191-a393-422e-adc0-cafe0f04bc50','f6b6f467-f8da-469b-9ede-7f6398afc66f','0260ceec-f9e1-4da2-b56b-120599cc815e','./uploads/images/course/AlL5Oq3IFcB-amDd69AdN.jpeg',0,0.00,'2024-01-19 09:41:29.376876'),('8cefc6e2-f696-4460-8a1e-69b8a7554c97','3229b34b-7231-4667-8885-ee608b7f70b4','3797cb56-48e6-4ccb-a0a7-225e3b36abca','./uploads/images/course/XtNnUflJNYklSnDL1h-Zd.jpeg',0,0.00,'2024-01-19 09:33:12.050582'),('b8895c62-503a-4341-ae02-973337e70f23','f6b6f467-f8da-469b-9ede-7f6398afc66f','1f80e6f8-34e2-42b8-af8a-fd5adfdef121','./uploads/images/course/scpSKV7yjH_w2CgsQoFiG.jpeg',0,0.00,'2024-01-19 09:41:41.838023'),('bc97362a-8695-4fd8-a5d6-dfad4bd1a5a9','c5cba39c-8564-400e-9c2d-4d901ae352a8','ece867b8-a877-42dc-8b54-ae668d15b30c','./uploads/images/course/quE_-_7atlZZMAiwAgDP5.jpeg',0,0.00,'2024-01-19 09:41:08.856525'),('cdf7b2ee-c878-4980-9526-d28b79b51be4','e6cbd9b2-43d4-4b54-af2c-875dce1c5a2b','65889f52-165f-4296-87f2-eb038ebd8369','./uploads/images/course/8ihdcRcAgztsNAnfsSZFx.jpeg',0,0.00,'2024-01-19 09:43:46.727302'),('d4e231a0-f44d-4c7c-ad8b-61f6105155e4','c5cba39c-8564-400e-9c2d-4d901ae352a8','3797cb56-48e6-4ccb-a0a7-225e3b36abca','./uploads/images/course/saqSPO7TxazMC0thHgrqX.jpeg',0,0.00,'2024-01-19 09:40:18.541619'),('dbbb3e52-d113-4d18-887a-63f3aed37f29','e6cbd9b2-43d4-4b54-af2c-875dce1c5a2b','1f80e6f8-34e2-42b8-af8a-fd5adfdef121','./uploads/images/course/tbjC3tD2NnPy_ocwDOxD5.jpeg',0,0.00,'2024-01-19 09:43:18.385758'),('e20f06ae-7b2a-4508-91e9-c973cd704fb1','f6b6f467-f8da-469b-9ede-7f6398afc66f','ece867b8-a877-42dc-8b54-ae668d15b30c','./uploads/images/course/Mt0sJKG3BTmySyNaGB6Ck.jpeg',0,0.00,'2024-01-19 09:42:38.986495'),('ecc316e2-6420-4247-b260-d7ae4614c3aa','c5cba39c-8564-400e-9c2d-4d901ae352a8','6e108c12-ab9e-4d91-b1a1-e3281ad517d9','./uploads/images/course/fuZjrbXyR2t6NvJkRI0Ag.jpeg',0,0.00,'2024-01-19 09:40:31.526855'),('f0f186ea-5145-40eb-b256-ba8a4f2d0c1a','e6cbd9b2-43d4-4b54-af2c-875dce1c5a2b','3797cb56-48e6-4ccb-a0a7-225e3b36abca','./uploads/images/course/SF1OAWJ-mtenEy7u6NuBE.jpeg',0,0.00,'2024-01-19 09:43:30.498631'),('f93d7314-46c4-4b64-b86e-ac2715f64aa4','3229b34b-7231-4667-8885-ee608b7f70b4','ece867b8-a877-42dc-8b54-ae668d15b30c','./uploads/images/course/jkI7fwPe1RrAVlxamH5UQ.jpeg',0,0.00,'2024-01-19 09:34:18.646196'),('fdf5e7b2-84fd-4b6e-acbb-4b922a4b263c','3229b34b-7231-4667-8885-ee608b7f70b4','0260ceec-f9e1-4da2-b56b-120599cc815e','./uploads/images/course/eBAGPFMoFyeHVdT8G5cnC.jpeg',0,0.00,'2024-01-19 09:32:50.861438'),('ff8343c5-6948-4e32-aae4-b5e0d49e58c9','c5cba39c-8564-400e-9c2d-4d901ae352a8','0260ceec-f9e1-4da2-b56b-120599cc815e','./uploads/images/course/JhvtwD1B080Nnn64qlbEz.jpeg',0,0.00,'2024-01-19 09:39:51.942539');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `id` varchar(255) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT  IGNORE INTO `grades` VALUES ('0260ceec-f9e1-4da2-b56b-120599cc815e','Basic 1','2024-01-19 09:27:26.974581'),('1f80e6f8-34e2-42b8-af8a-fd5adfdef121','Basic 5','2024-01-19 09:27:36.798381'),('3797cb56-48e6-4ccb-a0a7-225e3b36abca','Basic 3','2024-01-19 09:27:33.278371'),('65889f52-165f-4296-87f2-eb038ebd8369','Basic 2','2024-01-19 09:27:30.097704'),('6e108c12-ab9e-4d91-b1a1-e3281ad517d9','Basic 4','2024-01-19 09:27:09.094591'),('ece867b8-a877-42dc-8b54-ae668d15b30c','Basic 6','2024-01-19 09:27:41.906580');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructors` (
  `id` varchar(255) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `profilePic` varchar(255) DEFAULT NULL,
  `review` int DEFAULT '0',
  `gender` enum('male','female') DEFAULT NULL,
  `rate` float(8,2) DEFAULT '0.00',
  `created_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructors`
--

LOCK TABLES `instructors` WRITE;
/*!40000 ALTER TABLE `instructors` DISABLE KEYS */;
/*!40000 ALTER TABLE `instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessons` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `instructorName` varchar(255) DEFAULT NULL,
  `instructorPic` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `doc` varchar(255) DEFAULT NULL,
  `duration` float(8,2) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `lessons_course_foreign` (`course`),
  CONSTRAINT `lessons_course_foreign` FOREIGN KEY (`course`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT  IGNORE INTO `lessons` VALUES ('2300dba2-f367-4969-b6e5-ffb7d1cab381','Full English Lesson','291070aa-2011-40cf-bfed-b0bdce93d20f','This the full English curriculum. it contains all lessons pertaining to your class.\r\nSTUDY DILIGENTLY ','Ubec Nigeria','/uploads/images/instructor/WFeUuwLXsScd9I4_OQ3D_.png',NULL,'/uploads/documents/eRk0h-FfzBgfm7VdLBQ7X.pdf',0.00,'2024-01-19 10:21:42.942269');
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT  IGNORE INTO `subjects` VALUES ('1afd0e6d-3b9c-4067-ba7f-41fd5f5b48b3','English',NULL,'2024-01-19 09:17:21.121708'),('3229b34b-7231-4667-8885-ee608b7f70b4','Social Studies',NULL,'2024-01-19 09:18:13.566532'),('c5cba39c-8564-400e-9c2d-4d901ae352a8','Mathematics',NULL,'2024-01-19 09:17:28.751918'),('d9eaf92e-9724-461b-a473-fa90507010ca','Health Education',NULL,'2024-01-19 09:18:08.050511'),('e6cbd9b2-43d4-4b54-af2c-875dce1c5a2b','Basic Science',NULL,'2024-01-19 09:26:27.310653'),('f6b6f467-f8da-469b-9ede-7f6398afc66f','Christain Religous Knowledge',NULL,'2024-01-19 09:17:42.578547');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tests` (
  `id` varchar(255) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `optionA` varchar(255) DEFAULT NULL,
  `optionB` varchar(255) DEFAULT NULL,
  `optionC` varchar(255) DEFAULT NULL,
  `optionD` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `lesson` varchar(255) DEFAULT NULL,
  `duration` float(8,2) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `tests_lesson_foreign` (`lesson`),
  CONSTRAINT `tests_lesson_foreign` FOREIGN KEY (`lesson`) REFERENCES `lessons` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usercourses`
--

DROP TABLE IF EXISTS `usercourses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usercourses` (
  `id` varchar(255) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `lessons` varchar(255) DEFAULT NULL,
  `status` enum('inprogress','completed') DEFAULT NULL,
  `progress` int DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercourses`
--

LOCK TABLES `usercourses` WRITE;
/*!40000 ALTER TABLE `usercourses` DISABLE KEYS */;
/*!40000 ALTER TABLE `usercourses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `verify` tinyint(1) DEFAULT '0',
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `profilePic` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userid_unique` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT  IGNORE INTO `users` VALUES ('9dfd1d28-dcab-4161-aa96-d999bb21fe6d','455447','$2b$10$5aDMBQ5VhJBkqrxLs9HXLujm.mf0ih0cNZo/i2jKUdAnt4yktfkCa',NULL,0,NULL,NULL,NULL,1,'ajedamilola2005@gmail.com',NULL,NULL,NULL,NULL,'2024-01-17 10:21:30.954017');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertests`
--

DROP TABLE IF EXISTS `usertests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usertests` (
  `id` varchar(255) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `lesson` varchar(255) DEFAULT NULL,
  `tests` varchar(255) DEFAULT NULL,
  `score` float(8,2) DEFAULT NULL,
  `status` enum('inprogress','completed') DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertests`
--

LOCK TABLES `usertests` WRITE;
/*!40000 ALTER TABLE `usertests` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-19 10:23:34
