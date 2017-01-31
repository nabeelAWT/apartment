CREATE DATABASE  IF NOT EXISTS `apartmentV2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `apartmentV2`;
-- MySQL dump 10.13  Distrib 5.6.19, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: apartmentV2
-- ------------------------------------------------------
-- Server version	5.6.19-1~exp1ubuntu2

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
-- Table structure for table `activate_account`
--

DROP TABLE IF EXISTS `activate_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activate_account` (
  `activate_account` bigint(20) NOT NULL AUTO_INCREMENT,
  `person_id` bigint(20) DEFAULT NULL,
  `random_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`activate_account`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activate_account`
--

LOCK TABLES `activate_account` WRITE;
/*!40000 ALTER TABLE `activate_account` DISABLE KEYS */;
INSERT INTO `activate_account` VALUES (7,30,'5575e71d-0707-4f45-bb0c-0b2be5a94a19'),(8,45,'f18e2135-767a-465e-9a52-43e48c9d9a82'),(9,46,'4466bcb6-9186-4b52-aa12-392108da880a'),(10,47,'9f1d7e4d-ea2d-4e14-83de-228ff04518c2'),(12,49,'c066e020-3884-4dc6-9fcd-7c5ce6fe31dc'),(14,52,'61905873-a8bc-44d1-b5a2-43c5c2a8a8dd'),(15,91,'12a5167b-ae6e-4a3c-9a88-2830c972c1f4'),(16,92,'f1c4f0e1-5f53-4e89-8ea9-41eccff88f14'),(18,93,'95c2be97-9b7e-4dc9-a405-d7c9f7722829'),(19,103,'16cebe16-a04e-4ae7-9d59-ea55e4c8cc97'),(20,108,'e950a823-097d-4dff-a6b1-086e3c810692'),(22,109,'7291aeb8-0585-4b99-a9d2-fac45734cc68'),(23,94,'67dc264a-cac1-4dab-a54b-f9b22961f6b4'),(24,95,'f22a53ed-0142-4a32-8f56-10c7c25caf6f'),(25,97,'831dead3-2ba0-4ca7-9e52-4a0cf09d27e4'),(27,100,'212af2a7-903e-4908-afa2-66fea9dda79b'),(28,110,'f3b28a5f-2ee2-4441-b0fe-e9e4e94951e2'),(29,105,'d89ec27a-47fe-49a7-9960-55df37d2fdc5'),(30,114,'dac31db1-7ee8-4291-bdb1-e2d0963ca86c'),(31,117,'4e4a4b62-172e-421d-81e7-9bbd704d012f'),(32,118,'8620f701-5880-4fb2-906a-d243e598e6a8'),(34,115,'0d08df70-a176-4c82-94d0-d64222b2e53a'),(36,125,'9810262a-0b64-4f27-b13a-a3ddfd2622b6');
/*!40000 ALTER TABLE `activate_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answer_given_by_person_table`
--

DROP TABLE IF EXISTS `answer_given_by_person_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answer_given_by_person_table` (
  `answer_given_by_person_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `answer_text` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `answer_given_by_person` bigint(20) DEFAULT NULL,
  `answer_id` bigint(20) DEFAULT NULL,
  `survey_question_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`answer_given_by_person_id`),
  KEY `FK_r3i1o9mq5c4rqj2b1y78q0qbr` (`answer_given_by_person`),
  KEY `FK_btlattdr027167yj0dsl6vv7k` (`answer_id`),
  KEY `FK_lqoj3nbscciq9r2fbdnuaiup9` (`survey_question_id`),
  CONSTRAINT `FK_btlattdr027167yj0dsl6vv7k` FOREIGN KEY (`answer_id`) REFERENCES `answer_of_question_survey_table` (`answer_id`),
  CONSTRAINT `FK_lqoj3nbscciq9r2fbdnuaiup9` FOREIGN KEY (`survey_question_id`) REFERENCES `survey_question_table` (`survey_question_id`),
  CONSTRAINT `FK_r3i1o9mq5c4rqj2b1y78q0qbr` FOREIGN KEY (`answer_given_by_person`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer_given_by_person_table`
--

LOCK TABLES `answer_given_by_person_table` WRITE;
/*!40000 ALTER TABLE `answer_given_by_person_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `answer_given_by_person_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answer_of_question_survey_table`
--

DROP TABLE IF EXISTS `answer_of_question_survey_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answer_of_question_survey_table` (
  `answer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `answer_text` longtext,
  `timestamp` datetime DEFAULT NULL,
  `given_answer_of_question_id` bigint(20) DEFAULT NULL,
  `next_question_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`answer_id`),
  KEY `FK_6rwdclp805rpqkstmhntonjlh` (`given_answer_of_question_id`),
  KEY `FK_8wqarwfolxyqheq285vr5or82` (`next_question_id`),
  CONSTRAINT `FK_6rwdclp805rpqkstmhntonjlh` FOREIGN KEY (`given_answer_of_question_id`) REFERENCES `survey_question_table` (`survey_question_id`),
  CONSTRAINT `FK_8wqarwfolxyqheq285vr5or82` FOREIGN KEY (`next_question_id`) REFERENCES `survey_question_table` (`survey_question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer_of_question_survey_table`
--

LOCK TABLES `answer_of_question_survey_table` WRITE;
/*!40000 ALTER TABLE `answer_of_question_survey_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `answer_of_question_survey_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answer_type_enum_table`
--

DROP TABLE IF EXISTS `answer_type_enum_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answer_type_enum_table` (
  `answer_type_enum_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `answer_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`answer_type_enum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer_type_enum_table`
--

LOCK TABLES `answer_type_enum_table` WRITE;
/*!40000 ALTER TABLE `answer_type_enum_table` DISABLE KEYS */;
INSERT INTO `answer_type_enum_table` VALUES (1,'Text'),(2,'CheckBox'),(3,'Radio');
/*!40000 ALTER TABLE `answer_type_enum_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assigned_box_table`
--

DROP TABLE IF EXISTS `assigned_box_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assigned_box_table` (
  `assigned_box_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `timestamp` datetime DEFAULT NULL,
  `assign_to_person_id` bigint(20) DEFAULT NULL,
  `assign_by_person_id` bigint(20) DEFAULT NULL,
  `box_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`assigned_box_id`),
  KEY `FK_ebatk9cs5chef9ay2x2j2l1uh` (`assign_to_person_id`),
  KEY `FK_te0drhx3c8il7rr1hgd60vrkv` (`assign_by_person_id`),
  KEY `FK_pil8ght35fagvw9sqtnhn7pb0` (`box_id`),
  CONSTRAINT `FK_ebatk9cs5chef9ay2x2j2l1uh` FOREIGN KEY (`assign_to_person_id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_pil8ght35fagvw9sqtnhn7pb0` FOREIGN KEY (`box_id`) REFERENCES `box_table` (`box_id`),
  CONSTRAINT `FK_te0drhx3c8il7rr1hgd60vrkv` FOREIGN KEY (`assign_by_person_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assigned_box_table`
--

LOCK TABLES `assigned_box_table` WRITE;
/*!40000 ALTER TABLE `assigned_box_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `assigned_box_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block_enum_table`
--

DROP TABLE IF EXISTS `block_enum_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_enum_table` (
  `block_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `block_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_enum_table`
--

LOCK TABLES `block_enum_table` WRITE;
/*!40000 ALTER TABLE `block_enum_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `block_enum_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `box_table`
--

DROP TABLE IF EXISTS `box_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `box_table` (
  `box_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `smq_id` varchar(255) DEFAULT NULL,
  `box_name` varchar(100) DEFAULT NULL,
  `box_serial` varchar(100) DEFAULT NULL,
  `box_status` smallint(6) DEFAULT NULL,
  `is_alive` smallint(6) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `updated_by_person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`box_id`),
  KEY `FK_aqk0gu5ronv5idar5vltuq4yk` (`updated_by_person_id`),
  CONSTRAINT `FK_aqk0gu5ronv5idar5vltuq4yk` FOREIGN KEY (`updated_by_person_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box_table`
--

LOCK TABLES `box_table` WRITE;
/*!40000 ALTER TABLE `box_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `box_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_on_suggestion`
--

DROP TABLE IF EXISTS `comment_on_suggestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment_on_suggestion` (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `comment_time` datetime DEFAULT NULL,
  `comment_by_person_person_Id` bigint(20) DEFAULT NULL,
  `comment_on_cmment_comment_id` bigint(20) DEFAULT NULL,
  `comment_on_suggestion_suggestion_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FK_3ogd0e0rs3ogi066hv2ujh4qm` (`comment_by_person_person_Id`),
  KEY `FK_pc3aywqcmi82sb6tlxsx6nckh` (`comment_on_cmment_comment_id`),
  KEY `FK_4qoacnir0mvi2g2kgwedx5pgu` (`comment_on_suggestion_suggestion_id`),
  CONSTRAINT `FK_3ogd0e0rs3ogi066hv2ujh4qm` FOREIGN KEY (`comment_by_person_person_Id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_4qoacnir0mvi2g2kgwedx5pgu` FOREIGN KEY (`comment_on_suggestion_suggestion_id`) REFERENCES `suggestion_table` (`suggestion_id`),
  CONSTRAINT `FK_pc3aywqcmi82sb6tlxsx6nckh` FOREIGN KEY (`comment_on_cmment_comment_id`) REFERENCES `comment_on_suggestion` (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_on_suggestion`
--

LOCK TABLES `comment_on_suggestion` WRITE;
/*!40000 ALTER TABLE `comment_on_suggestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_on_suggestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint_assignment_table`
--

DROP TABLE IF EXISTS `complaint_assignment_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaint_assignment_table` (
  `idcomplaint_assignment_table` bigint(20) NOT NULL AUTO_INCREMENT,
  `complaint_id` bigint(20) DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `notification_flag` int(11) DEFAULT NULL,
  `active_for_complaint` smallint(6) DEFAULT NULL,
  `complaint_status_progress_id` bigint(20) DEFAULT NULL,
  `estimate_cast` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcomplaint_assignment_table`),
  KEY `FK_du98p9v0jg7ay8c3g41xbe7ma` (`complaint_id`),
  KEY `FK_6nxkqiptmhcgjh3ojpp9j055t` (`person_id`),
  KEY `FK_4cvqj3jyvd51tfmylakkj6w7a` (`complaint_status_progress_id`),
  CONSTRAINT `FK_4cvqj3jyvd51tfmylakkj6w7a` FOREIGN KEY (`complaint_status_progress_id`) REFERENCES `complaint_status_progress_table` (`complain_status_progress_id`),
  CONSTRAINT `FK_6nxkqiptmhcgjh3ojpp9j055t` FOREIGN KEY (`person_id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_du98p9v0jg7ay8c3g41xbe7ma` FOREIGN KEY (`complaint_id`) REFERENCES `complaintbook` (`complaint_id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint_assignment_table`
--

LOCK TABLES `complaint_assignment_table` WRITE;
/*!40000 ALTER TABLE `complaint_assignment_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaint_assignment_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint_category_enum_table`
--

DROP TABLE IF EXISTS `complaint_category_enum_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaint_category_enum_table` (
  `complaint_category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `complaint_category_name` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `updated_by_person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`complaint_category_id`),
  KEY `FK_p47ixxcuf2f2c7b4r86166l0k` (`updated_by_person_id`),
  CONSTRAINT `FK_p47ixxcuf2f2c7b4r86166l0k` FOREIGN KEY (`updated_by_person_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint_category_enum_table`
--

LOCK TABLES `complaint_category_enum_table` WRITE;
/*!40000 ALTER TABLE `complaint_category_enum_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaint_category_enum_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint_category_enum_table_skill_enum_table`
--

DROP TABLE IF EXISTS `complaint_category_enum_table_skill_enum_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaint_category_enum_table_skill_enum_table` (
  `complaint_category_enum_table_ComplaintCategoryId` bigint(20) NOT NULL,
  `skill_enum_table_SkillId` bigint(20) NOT NULL,
  UNIQUE KEY `UK_rg94xua3b2prx7koq4yucnkwa` (`skill_enum_table_SkillId`),
  KEY `FK_cgeh6sdjgr9mgs7wyri5l0e61` (`complaint_category_enum_table_ComplaintCategoryId`),
  CONSTRAINT `FK_cgeh6sdjgr9mgs7wyri5l0e61` FOREIGN KEY (`complaint_category_enum_table_ComplaintCategoryId`) REFERENCES `complaint_category_enum_table` (`complaint_category_id`),
  CONSTRAINT `FK_rg94xua3b2prx7koq4yucnkwa` FOREIGN KEY (`skill_enum_table_SkillId`) REFERENCES `skill_enum_table` (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint_category_enum_table_skill_enum_table`
--

LOCK TABLES `complaint_category_enum_table_skill_enum_table` WRITE;
/*!40000 ALTER TABLE `complaint_category_enum_table_skill_enum_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaint_category_enum_table_skill_enum_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint_record_snapshot`
--

DROP TABLE IF EXISTS `complaint_record_snapshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaint_record_snapshot` (
  `snapshot_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `wip` int(11) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `closed` int(11) DEFAULT NULL,
  `need_more_info` int(11) DEFAULT NULL,
  `on_hold` int(11) DEFAULT NULL,
  `open` int(11) DEFAULT NULL,
  `re_open` int(11) DEFAULT NULL,
  `snap_time` datetime DEFAULT NULL,
  `verify` int(11) DEFAULT NULL,
  `complaint_category_ComplaintCategoryId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`snapshot_id`),
  KEY `FK_6fiigkn5f2pd3vhtm6pir9qrs` (`complaint_category_ComplaintCategoryId`),
  CONSTRAINT `FK_6fiigkn5f2pd3vhtm6pir9qrs` FOREIGN KEY (`complaint_category_ComplaintCategoryId`) REFERENCES `complaint_category_enum_table` (`complaint_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint_record_snapshot`
--

LOCK TABLES `complaint_record_snapshot` WRITE;
/*!40000 ALTER TABLE `complaint_record_snapshot` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaint_record_snapshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint_record_snapshotv2`
--

DROP TABLE IF EXISTS `complaint_record_snapshotv2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaint_record_snapshotv2` (
  `snapshot_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `wip` int(11) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `closed` int(11) DEFAULT NULL,
  `need_more_info` int(11) DEFAULT NULL,
  `on_hold` int(11) DEFAULT NULL,
  `open` int(11) DEFAULT NULL,
  `re_open` int(11) DEFAULT NULL,
  `snap_time` datetime DEFAULT NULL,
  `verify` int(11) DEFAULT NULL,
  `complaint_category_ComplaintCategoryId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`snapshot_id`),
  KEY `FK_5mvsqcs9f1l5naii5991g7qlg` (`complaint_category_ComplaintCategoryId`),
  CONSTRAINT `FK_5mvsqcs9f1l5naii5991g7qlg` FOREIGN KEY (`complaint_category_ComplaintCategoryId`) REFERENCES `complaint_category_enum_table` (`complaint_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=527 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint_record_snapshotv2`
--

LOCK TABLES `complaint_record_snapshotv2` WRITE;
/*!40000 ALTER TABLE `complaint_record_snapshotv2` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaint_record_snapshotv2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint_status_enum_table`
--

DROP TABLE IF EXISTS `complaint_status_enum_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaint_status_enum_table` (
  `coplaint_status_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment_mandatory_or_not` bigint(20) DEFAULT NULL,
  `status_name` varchar(255) DEFAULT NULL,
  `status_order` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `valid_role_for_state` bigint(20) DEFAULT NULL,
  `valid_to_states` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`coplaint_status_id`),
  KEY `FK_4qamdtiktogbguqytekuld7tq` (`updated_by_id`),
  CONSTRAINT `FK_4qamdtiktogbguqytekuld7tq` FOREIGN KEY (`updated_by_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint_status_enum_table`
--

LOCK TABLES `complaint_status_enum_table` WRITE;
/*!40000 ALTER TABLE `complaint_status_enum_table` DISABLE KEYS */;
INSERT INTO `complaint_status_enum_table` VALUES (1,1,'Open',1,'2016-12-01 12:10:24',11,139,1),(2,0,'Assigned',2,'2016-12-01 12:10:33',3,6,1),(4,0,'Work In Progress',3,'2016-12-01 12:10:39',7,20,1),(8,1,'On Hold',6,'2016-12-01 12:10:47',3,9,1),(16,1,'Closed',4,'2016-12-01 12:10:57',7,112,1),(32,1,'Re-Open',7,'2017-01-04 13:36:49',9,138,1),(64,1,'Verified',5,'2016-12-01 12:11:22',9,64,1),(128,1,'Need More Info.',8,'2016-12-01 12:11:31',3,129,1);
/*!40000 ALTER TABLE `complaint_status_enum_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint_status_progress_table`
--

DROP TABLE IF EXISTS `complaint_status_progress_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaint_status_progress_table` (
  `complain_status_progress_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `timestamp` datetime DEFAULT NULL,
  `update_text` longtext,
  `complaint_status_id` bigint(20) DEFAULT NULL,
  `complaint_id` bigint(20) DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  `complaint_progress_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`complain_status_progress_id`),
  KEY `FK_e9p614aww1oxkrgcv4svlaxp4` (`complaint_status_id`),
  KEY `FK_4pdxvdu1ta2thftxo25ptap06` (`complaint_id`),
  KEY `FK_9mabxjj8k9rvpjjimok7xj7td` (`person_id`),
  CONSTRAINT `FK_4pdxvdu1ta2thftxo25ptap06` FOREIGN KEY (`complaint_id`) REFERENCES `complaintbook` (`complaint_id`),
  CONSTRAINT `FK_9mabxjj8k9rvpjjimok7xj7td` FOREIGN KEY (`person_id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_e9p614aww1oxkrgcv4svlaxp4` FOREIGN KEY (`complaint_status_id`) REFERENCES `complaint_status_enum_table` (`coplaint_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1789 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint_status_progress_table`
--

LOCK TABLES `complaint_status_progress_table` WRITE;
/*!40000 ALTER TABLE `complaint_status_progress_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaint_status_progress_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaintbook`
--

DROP TABLE IF EXISTS `complaintbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaintbook` (
  `complaint_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `complaint` longtext,
  `complaint_closed_time_stamp` datetime DEFAULT NULL,
  `complaint_open_time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `complaint_picture_path` varchar(255) DEFAULT NULL,
  `complaint_category_id` bigint(20) DEFAULT NULL,
  `complaint_status_id` bigint(20) DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  `time_on_state_change` datetime DEFAULT NULL,
  `actual_paid_cast` int(11) DEFAULT NULL,
  `estimate_cast` int(11) DEFAULT NULL,
  `is_paid` smallint(6) DEFAULT NULL,
  `flat_table_FlatId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`complaint_id`),
  KEY `FK_ogf7t81syk0cml6h8vmrmvx35` (`complaint_category_id`),
  KEY `FK_rsnci54r1duwc7wfu8s6v0sdc` (`complaint_status_id`),
  KEY `FK_ls163247krna4gopusf45trcd` (`person_id`),
  KEY `FK_qedmf6unv1vallvupqigk8rop` (`flat_table_FlatId`),
  CONSTRAINT `FK_ls163247krna4gopusf45trcd` FOREIGN KEY (`person_id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_ogf7t81syk0cml6h8vmrmvx35` FOREIGN KEY (`complaint_category_id`) REFERENCES `complaint_category_enum_table` (`complaint_category_id`),
  CONSTRAINT `FK_qedmf6unv1vallvupqigk8rop` FOREIGN KEY (`flat_table_FlatId`) REFERENCES `flat_table` (`flat_id`),
  CONSTRAINT `FK_rsnci54r1duwc7wfu8s6v0sdc` FOREIGN KEY (`complaint_status_id`) REFERENCES `complaint_status_enum_table` (`coplaint_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=421 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaintbook`
--

LOCK TABLES `complaintbook` WRITE;
/*!40000 ALTER TABLE `complaintbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaintbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delta_time_table`
--

DROP TABLE IF EXISTS `delta_time_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delta_time_table` (
  `delta_table_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lastupdate_time` datetime DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`delta_table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delta_time_table`
--

LOCK TABLES `delta_time_table` WRITE;
/*!40000 ALTER TABLE `delta_time_table` DISABLE KEYS */;
INSERT INTO `delta_time_table` VALUES (1,'2017-01-25 06:34:11',1,'complaintbook'),(2,'2017-01-10 02:22:06',2,'complaint_category_enum_table'),(3,'2016-07-18 11:42:20',3,'complaint_status_enum_table'),(4,'2017-01-25 05:21:02',4,'person_table'),(5,'2017-01-25 01:40:26',5,'suggestion_table'),(6,'2017-01-23 00:02:18',6,'notice_board'),(7,'2017-01-25 06:54:35',7,'visitor_table'),(8,'2016-08-01 07:59:52',8,'visitor_status_enum_table');
/*!40000 ALTER TABLE `delta_time_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_table`
--

DROP TABLE IF EXISTS `device_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_table` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(255) DEFAULT NULL,
  `device_reg_num` varchar(255) DEFAULT NULL,
  `device_type` int(11) DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  `token_table_token_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_lnpc7iyo29nh39hu656tc5o8g` (`person_id`),
  KEY `FK_tqf7v0pj7rnwuqorjiqmlc5g5` (`token_table_token_id`),
  CONSTRAINT `FK_lnpc7iyo29nh39hu656tc5o8g` FOREIGN KEY (`person_id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_tqf7v0pj7rnwuqorjiqmlc5g5` FOREIGN KEY (`token_table_token_id`) REFERENCES `token_table` (`token_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=685 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_table`
--

LOCK TABLES `device_table` WRITE;
/*!40000 ALTER TABLE `device_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_attendees_table`
--

DROP TABLE IF EXISTS `event_attendees_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_attendees_table` (
  `event_attendees_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `adult_going` int(11) DEFAULT NULL,
  `child_going` int(11) DEFAULT NULL,
  `interested` int(11) DEFAULT NULL,
  `is_going` smallint(6) DEFAULT '0',
  `is_interested` smallint(6) DEFAULT '0',
  `notice_id` bigint(20) NOT NULL,
  `person_id` bigint(20) NOT NULL,
  PRIMARY KEY (`event_attendees_id`),
  KEY `FK_6efydpqvuuy3qdwduicdv1u7w` (`notice_id`),
  KEY `FK_cciihdayyk2ei2e58acsymts` (`person_id`),
  CONSTRAINT `FK_6efydpqvuuy3qdwduicdv1u7w` FOREIGN KEY (`notice_id`) REFERENCES `notice_board` (`notice_board`),
  CONSTRAINT `FK_cciihdayyk2ei2e58acsymts` FOREIGN KEY (`person_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_attendees_table`
--

LOCK TABLES `event_attendees_table` WRITE;
/*!40000 ALTER TABLE `event_attendees_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_attendees_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flat_no_enum_table`
--

DROP TABLE IF EXISTS `flat_no_enum_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flat_no_enum_table` (
  `flat_no_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `flat_number` varchar(255) DEFAULT NULL,
  `block_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`flat_no_id`),
  KEY `FK_32l2vs1b3safe5g9f1v4bad2i` (`block_id`),
  CONSTRAINT `FK_32l2vs1b3safe5g9f1v4bad2i` FOREIGN KEY (`block_id`) REFERENCES `block_enum_table` (`block_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1519 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flat_no_enum_table`
--

LOCK TABLES `flat_no_enum_table` WRITE;
/*!40000 ALTER TABLE `flat_no_enum_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `flat_no_enum_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flat_occupency_status_enum_table`
--

DROP TABLE IF EXISTS `flat_occupency_status_enum_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flat_occupency_status_enum_table` (
  `flat_occupency_status_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `flat_occupency_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`flat_occupency_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flat_occupency_status_enum_table`
--

LOCK TABLES `flat_occupency_status_enum_table` WRITE;
/*!40000 ALTER TABLE `flat_occupency_status_enum_table` DISABLE KEYS */;
INSERT INTO `flat_occupency_status_enum_table` VALUES (1,'Self Ocupied'),(2,'LetOut'),(3,'Vacant'),(4,'Not Sold');
/*!40000 ALTER TABLE `flat_occupency_status_enum_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flat_owner_table`
--

DROP TABLE IF EXISTS `flat_owner_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flat_owner_table` (
  `person_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `flat_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  KEY `FK_x6l706o95l3ilgpwhkotiwrq` (`flat_id`),
  CONSTRAINT `FK_x6l706o95l3ilgpwhkotiwrq` FOREIGN KEY (`flat_id`) REFERENCES `flat_table` (`flat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flat_owner_table`
--

LOCK TABLES `flat_owner_table` WRITE;
/*!40000 ALTER TABLE `flat_owner_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `flat_owner_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flat_table`
--

DROP TABLE IF EXISTS `flat_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flat_table` (
  `flat_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `flat_type_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `block_enum_table_block_id` bigint(20) DEFAULT NULL,
  `flat_number_enum_table_flat_no_id` bigint(20) DEFAULT NULL,
  `occupency_status_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`flat_id`),
  KEY `FK_8eflj5enansynn4hjq0msmasm` (`flat_type_id`),
  KEY `FK_1tf6crutsu9aw0671dl84k2wx` (`updated_by_id`),
  KEY `FK_td79u1l6hy8y3p7q5x7n7gkpp` (`block_enum_table_block_id`),
  KEY `FK_ae3m6m6jpgvsvji9jcvg10no9` (`flat_number_enum_table_flat_no_id`),
  KEY `FK_4gukv6eb4q57shdpvlxw1br7y` (`occupency_status_id`),
  CONSTRAINT `FK_1tf6crutsu9aw0671dl84k2wx` FOREIGN KEY (`updated_by_id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_4gukv6eb4q57shdpvlxw1br7y` FOREIGN KEY (`occupency_status_id`) REFERENCES `flat_occupency_status_enum_table` (`flat_occupency_status_id`),
  CONSTRAINT `FK_8eflj5enansynn4hjq0msmasm` FOREIGN KEY (`flat_type_id`) REFERENCES `flat_type_enum_table` (`flat_type_id`),
  CONSTRAINT `FK_ae3m6m6jpgvsvji9jcvg10no9` FOREIGN KEY (`flat_number_enum_table_flat_no_id`) REFERENCES `flat_no_enum_table` (`flat_no_id`),
  CONSTRAINT `FK_td79u1l6hy8y3p7q5x7n7gkpp` FOREIGN KEY (`block_enum_table_block_id`) REFERENCES `block_enum_table` (`block_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1519 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flat_table`
--

LOCK TABLES `flat_table` WRITE;
/*!40000 ALTER TABLE `flat_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `flat_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flat_type_enum_table`
--

DROP TABLE IF EXISTS `flat_type_enum_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flat_type_enum_table` (
  `flat_type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `area` double DEFAULT NULL,
  `flat_type_name` varchar(255) DEFAULT NULL,
  `number_of_bed_room` int(11) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `updated_by_person_id` bigint(20) DEFAULT NULL,
  `name` varchar(256) DEFAULT '',
  PRIMARY KEY (`flat_type_id`),
  KEY `FK_8fvd2m6ubpjt7bavhgrw34h69` (`updated_by_person_id`),
  CONSTRAINT `FK_8fvd2m6ubpjt7bavhgrw34h69` FOREIGN KEY (`updated_by_person_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flat_type_enum_table`
--

LOCK TABLES `flat_type_enum_table` WRITE;
/*!40000 ALTER TABLE `flat_type_enum_table` DISABLE KEYS */;
INSERT INTO `flat_type_enum_table` VALUES (1,2100,'QWEE',3444,'2017-01-10 05:57:04',1,''),(2,1300,'@BHK',2,'2016-10-17 05:01:44',1,''),(3,900,'@@#',2,'2016-10-17 04:56:35',1,''),(4,99999999999,'3BHK',4444,'2017-01-12 06:06:11',1,NULL),(5,908,'5BHK',1,'2017-01-10 05:57:15',1,NULL),(6,2400,'6BHK',6,'2016-10-12 07:46:14',1,NULL),(7,0,'8BHK',1,'2016-10-18 01:20:57',1,NULL),(8,0,'SSS',1,'2016-10-18 01:21:44',1,NULL),(9,2000,'PREMIUM',5,'2017-01-10 04:34:10',1,NULL),(10,9990,'3 BHK',3,'2017-01-10 08:01:50',1,NULL);
/*!40000 ALTER TABLE `flat_type_enum_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance_bill_table`
--

DROP TABLE IF EXISTS `maintenance_bill_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintenance_bill_table` (
  `maintenance_bill_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bill_date` datetime DEFAULT NULL,
  `maintenance_amount` double DEFAULT NULL,
  `maintenance_period_from_date` datetime DEFAULT NULL,
  `maintenance_period_to_date` datetime DEFAULT NULL,
  `bill_details` varchar(1000) DEFAULT NULL,
  `payment_timestamp` datetime DEFAULT NULL,
  `flat_no` bigint(20) DEFAULT NULL,
  `maintenance_rate_id` bigint(20) DEFAULT NULL,
  `paid_by_person_id` bigint(20) DEFAULT NULL,
  `payment_period_type_id` bigint(20) DEFAULT NULL,
  `payment_status_id` bigint(20) DEFAULT NULL,
  `updated_by_person_id` bigint(20) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`maintenance_bill_id`),
  KEY `FK_58fls8rq44ksvtqxgak09oeen` (`flat_no`),
  KEY `FK_ru8mi1pblpfwkcjkavee8vygx` (`maintenance_rate_id`),
  KEY `FK_f8rscdpfdfxt2ybqk1trwnijs` (`paid_by_person_id`),
  KEY `FK_967woh4fsnsr0xfc5wlvlbtfg` (`payment_period_type_id`),
  KEY `FK_1d0b7quu08bhlexa09ea59o5h` (`payment_status_id`),
  KEY `FK_go6qgsw022kylcg5rcrwn4cad` (`updated_by_person_id`),
  CONSTRAINT `FK_1d0b7quu08bhlexa09ea59o5h` FOREIGN KEY (`payment_status_id`) REFERENCES `payment_status_enum_table` (`payment_status_id`),
  CONSTRAINT `FK_58fls8rq44ksvtqxgak09oeen` FOREIGN KEY (`flat_no`) REFERENCES `flat_table` (`flat_id`),
  CONSTRAINT `FK_967woh4fsnsr0xfc5wlvlbtfg` FOREIGN KEY (`payment_period_type_id`) REFERENCES `payment_period_type_enum_table` (`payment_period_type_id`),
  CONSTRAINT `FK_f8rscdpfdfxt2ybqk1trwnijs` FOREIGN KEY (`paid_by_person_id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_go6qgsw022kylcg5rcrwn4cad` FOREIGN KEY (`updated_by_person_id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_ru8mi1pblpfwkcjkavee8vygx` FOREIGN KEY (`maintenance_rate_id`) REFERENCES `maintenance_rate_table` (`maintenance_rate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance_bill_table`
--

LOCK TABLES `maintenance_bill_table` WRITE;
/*!40000 ALTER TABLE `maintenance_bill_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintenance_bill_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance_rate_table`
--

DROP TABLE IF EXISTS `maintenance_rate_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintenance_rate_table` (
  `maintenance_rate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activate_date` datetime DEFAULT NULL,
  `active` smallint(6) DEFAULT NULL,
  `deactivate_date` datetime DEFAULT NULL,
  `maintenance_rate` double DEFAULT NULL,
  `updated_by_id` decimal(19,2) DEFAULT NULL,
  `apply_to_flat_type_id` bigint(20) DEFAULT NULL,
  `updated_by_person_id` bigint(20) DEFAULT NULL,
  `effective_from_date` datetime DEFAULT NULL,
  `effective_till_date` datetime DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`maintenance_rate_id`),
  KEY `FK_n7q383msygrekmvakvehvui5o` (`apply_to_flat_type_id`),
  KEY `FK_7p7f9mrqryora6r22tnc5okei` (`updated_by_person_id`),
  CONSTRAINT `FK_7p7f9mrqryora6r22tnc5okei` FOREIGN KEY (`updated_by_person_id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_n7q383msygrekmvakvehvui5o` FOREIGN KEY (`apply_to_flat_type_id`) REFERENCES `flat_type_enum_table` (`flat_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance_rate_table`
--

LOCK TABLES `maintenance_rate_table` WRITE;
/*!40000 ALTER TABLE `maintenance_rate_table` DISABLE KEYS */;
INSERT INTO `maintenance_rate_table` VALUES (1,NULL,0,NULL,3000,NULL,NULL,1,'2016-09-19 14:30:00','2016-09-26 14:30:00','2016-09-20 05:22:30'),(2,NULL,1,NULL,2,NULL,NULL,1,'2016-09-19 14:30:00','2016-09-26 14:30:00','2016-09-20 05:22:40');
/*!40000 ALTER TABLE `maintenance_rate_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_board`
--

DROP TABLE IF EXISTS `notice_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice_board` (
  `notice_board` bigint(20) NOT NULL AUTO_INCREMENT,
  `end_date_to_display_on_noticeboard` datetime DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `start_date_to_display_on_noticeboard` datetime DEFAULT NULL,
  `time_of_posting` datetime DEFAULT NULL,
  `titile` varchar(255) DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  `update_by_person_id` bigint(20) DEFAULT NULL,
  `contacts` varchar(255) DEFAULT NULL,
  `end_event_date` datetime DEFAULT NULL,
  `end_event_time` bigint(20) DEFAULT NULL,
  `start_event_date` datetime DEFAULT NULL,
  `start_event_time` bigint(20) DEFAULT NULL,
  `venue_address` varchar(255) DEFAULT NULL,
  `notification_flag` int(11) DEFAULT NULL,
  `total_going` bigint(20) DEFAULT '0',
  `total_interested` bigint(20) DEFAULT '0',
  `is_event` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`notice_board`),
  KEY `FK_bo31tp8wl3v1o93um5vru6a0e` (`update_by_person_id`),
  CONSTRAINT `FK_bo31tp8wl3v1o93um5vru6a0e` FOREIGN KEY (`update_by_person_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_board`
--

LOCK TABLES `notice_board` WRITE;
/*!40000 ALTER TABLE `notice_board` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner_history`
--

DROP TABLE IF EXISTS `owner_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner_history` (
  `owner_history_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `move_in_time` datetime DEFAULT NULL,
  `move_out_time` datetime DEFAULT NULL,
  `purchase_date` datetime DEFAULT NULL,
  `sold_date` datetime DEFAULT NULL,
  `flat_id` bigint(20) DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`owner_history_id`),
  KEY `FK_c0nua2mm5q6djfe5uuokdylmo` (`flat_id`),
  KEY `FK_bpgttaq5hrgtkhashu44846qb` (`person_id`),
  CONSTRAINT `FK_bpgttaq5hrgtkhashu44846qb` FOREIGN KEY (`person_id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_c0nua2mm5q6djfe5uuokdylmo` FOREIGN KEY (`flat_id`) REFERENCES `flat_table` (`flat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner_history`
--

LOCK TABLES `owner_history` WRITE;
/*!40000 ALTER TABLE `owner_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `owner_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parking_enum_type_table`
--

DROP TABLE IF EXISTS `parking_enum_type_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parking_enum_type_table` (
  `parking_type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parking_type_name` varchar(255) DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `update_by_person_id_person_Id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`parking_type_id`),
  KEY `FK_7ptpn0wjs8mo9n4v8a7ijxntq` (`update_by_person_id_person_Id`),
  CONSTRAINT `FK_7ptpn0wjs8mo9n4v8a7ijxntq` FOREIGN KEY (`update_by_person_id_person_Id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking_enum_type_table`
--

LOCK TABLES `parking_enum_type_table` WRITE;
/*!40000 ALTER TABLE `parking_enum_type_table` DISABLE KEYS */;
INSERT INTO `parking_enum_type_table` VALUES (1,'dsdsad334','2016-10-17 04:08:42',1),(2,'1','2016-09-20 03:05:20',1),(3,'2','2016-09-20 03:05:46',1),(4,'Amit','2016-10-12 07:50:14',1),(5,'SemiCovered','2016-10-12 07:52:19',1),(6,'Uncovered','2016-10-12 07:52:34',1),(7,'zxcvxzcvzvxc','2016-10-17 03:54:28',1),(8,'fdafsdasdf','2016-10-17 03:57:46',1),(9,'ZXCZXcXCddddd77','2016-10-17 03:58:02',1),(10,'ffrrgg','2016-10-17 03:59:24',1),(11,'ZZZZzz','2016-10-17 03:59:57',1),(12,'dsdsad334w5','2016-10-17 04:09:00',1),(13,'Fdaaaaaaaaaaaaaaaaaaa','2016-10-18 14:26:55',1);
/*!40000 ALTER TABLE `parking_enum_type_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parking_slot_table`
--

DROP TABLE IF EXISTS `parking_slot_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parking_slot_table` (
  `parking_slot_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `plarking_slot_name` varchar(255) DEFAULT NULL,
  `time_stamp` datetime DEFAULT NULL,
  `flat_id` bigint(20) DEFAULT NULL,
  `updated_person_id` bigint(20) DEFAULT NULL,
  `parking_slot_name` varchar(255) DEFAULT NULL,
  `parking_enum_type_parking_type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`parking_slot_id`),
  KEY `FK_t6cx2g0uuohdtlfgwq2awo1r7` (`flat_id`),
  KEY `FK_c65andsq2ifprmyms79k9e80k` (`updated_person_id`),
  KEY `FK_kse1b13l275d0vf0ddwlm4avs` (`parking_enum_type_parking_type_id`),
  CONSTRAINT `FK_c65andsq2ifprmyms79k9e80k` FOREIGN KEY (`updated_person_id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_kse1b13l275d0vf0ddwlm4avs` FOREIGN KEY (`parking_enum_type_parking_type_id`) REFERENCES `parking_enum_type_table` (`parking_type_id`),
  CONSTRAINT `FK_t6cx2g0uuohdtlfgwq2awo1r7` FOREIGN KEY (`flat_id`) REFERENCES `flat_table` (`flat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking_slot_table`
--

LOCK TABLES `parking_slot_table` WRITE;
/*!40000 ALTER TABLE `parking_slot_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `parking_slot_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_period_type_enum_table`
--

DROP TABLE IF EXISTS `payment_period_type_enum_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_period_type_enum_table` (
  `payment_period_type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payment_period_type_name` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `updated_by_person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`payment_period_type_id`),
  KEY `FK_crk2dksa4acth3161gof1or01` (`updated_by_person_id`),
  CONSTRAINT `FK_crk2dksa4acth3161gof1or01` FOREIGN KEY (`updated_by_person_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_period_type_enum_table`
--

LOCK TABLES `payment_period_type_enum_table` WRITE;
/*!40000 ALTER TABLE `payment_period_type_enum_table` DISABLE KEYS */;
INSERT INTO `payment_period_type_enum_table` VALUES (1,'Monthly','2016-08-08 13:07:49',1),(2,'Quaterly','2016-08-08 13:08:14',1),(3,'Half yearly','2016-08-08 13:08:36',1),(4,'Yearly','2016-08-08 13:08:45',1);
/*!40000 ALTER TABLE `payment_period_type_enum_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_status_enum_table`
--

DROP TABLE IF EXISTS `payment_status_enum_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_status_enum_table` (
  `payment_status_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payment_status_name` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `updated_by_person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`payment_status_id`),
  KEY `FK_tfv2klspfbsm3mnevtpvpjrsv` (`updated_by_person_id`),
  CONSTRAINT `FK_tfv2klspfbsm3mnevtpvpjrsv` FOREIGN KEY (`updated_by_person_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_status_enum_table`
--

LOCK TABLES `payment_status_enum_table` WRITE;
/*!40000 ALTER TABLE `payment_status_enum_table` DISABLE KEYS */;
INSERT INTO `payment_status_enum_table` VALUES (1,'Paid','2016-08-08 13:10:25',1),(2,'Unpaid','2016-08-08 13:10:34',1);
/*!40000 ALTER TABLE `payment_status_enum_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_owns_flat_table`
--

DROP TABLE IF EXISTS `person_owns_flat_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_owns_flat_table` (
  `person_owns_flat_table_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `flat_table_flat_id` bigint(20) DEFAULT NULL,
  `person_table_person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`person_owns_flat_table_id`),
  KEY `FK_mwu1v0bhw9d9yngwid9qpalml` (`flat_table_flat_id`),
  KEY `FK_ipd9tp57j0tsy08wrkfjn1bbs` (`person_table_person_id`),
  CONSTRAINT `FK_ipd9tp57j0tsy08wrkfjn1bbs` FOREIGN KEY (`person_table_person_id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_mwu1v0bhw9d9yngwid9qpalml` FOREIGN KEY (`flat_table_flat_id`) REFERENCES `flat_table` (`flat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_owns_flat_table`
--

LOCK TABLES `person_owns_flat_table` WRITE;
/*!40000 ALTER TABLE `person_owns_flat_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_owns_flat_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_table`
--

DROP TABLE IF EXISTS `person_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_table` (
  `person_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email1` varchar(200) DEFAULT NULL,
  `email2` varchar(255) DEFAULT NULL,
  `extension` decimal(19,2) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `land_line_num2` varchar(50) DEFAULT NULL,
  `landline_num1` varchar(50) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `mobile_num1` varchar(50) DEFAULT NULL,
  `mobile_num2` varchar(50) DEFAULT NULL,
  `photo_name` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT '0',
  `till_time` datetime DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE KEY `email1` (`email1`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_table`
--

LOCK TABLES `person_table` WRITE;
/*!40000 ALTER TABLE `person_table` DISABLE KEYS */;
INSERT INTO `person_table` VALUES (1,'developers.awt@gmail.com','abzxcvzxc@gmail.com',NULL,'T','male','1111111111','02253535355','T','kumar','1231231230','9696969696','PF1485326245101',1,'12345678',1,'2017-10-07 06:25:14');
/*!40000 ALTER TABLE `person_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_table`
--

DROP TABLE IF EXISTS `question_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_table` (
  `question_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `question_json` longtext,
  `question_order` bigint(20) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `question_type_id` bigint(20) DEFAULT NULL,
  `update_by_person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`question_id`),
  KEY `FK_hd6rbaqf34rgjfxphnikhmmrt` (`question_type_id`),
  KEY `FK_hxrb9kse0rtv7w8i706oint5v` (`update_by_person_id`),
  CONSTRAINT `FK_hd6rbaqf34rgjfxphnikhmmrt` FOREIGN KEY (`question_type_id`) REFERENCES `question_type_table` (`question_type_id`),
  CONSTRAINT `FK_hxrb9kse0rtv7w8i706oint5v` FOREIGN KEY (`update_by_person_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_table`
--

LOCK TABLES `question_table` WRITE;
/*!40000 ALTER TABLE `question_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `question_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_type_table`
--

DROP TABLE IF EXISTS `question_type_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_type_table` (
  `question_type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `question_type` varchar(255) DEFAULT NULL,
  `updated_by_person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`question_type_id`),
  KEY `FK_daqbcvwdh1f904u3y8xpv7m3s` (`updated_by_person_id`),
  CONSTRAINT `FK_daqbcvwdh1f904u3y8xpv7m3s` FOREIGN KEY (`updated_by_person_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_type_table`
--

LOCK TABLES `question_type_table` WRITE;
/*!40000 ALTER TABLE `question_type_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `question_type_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resident_history`
--

DROP TABLE IF EXISTS `resident_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resident_history` (
  `resident_history_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `move_in_time` datetime DEFAULT NULL,
  `move_out_time` datetime DEFAULT NULL,
  `flat_id` bigint(20) DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  `resident_type` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resident_history_id`),
  KEY `FK_6t2r9brwjnwhrcymi0u90d4ma` (`flat_id`),
  KEY `FK_qehv8jtyrxsj5tjoqmsm9pdgb` (`person_id`),
  KEY `FK_m3bd320jkv7gj9rd9sfttgw4a` (`resident_type`),
  CONSTRAINT `FK_6t2r9brwjnwhrcymi0u90d4ma` FOREIGN KEY (`flat_id`) REFERENCES `flat_table` (`flat_id`),
  CONSTRAINT `FK_m3bd320jkv7gj9rd9sfttgw4a` FOREIGN KEY (`resident_type`) REFERENCES `resident_type_enum_table` (`resident_type_id`),
  CONSTRAINT `FK_qehv8jtyrxsj5tjoqmsm9pdgb` FOREIGN KEY (`person_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resident_history`
--

LOCK TABLES `resident_history` WRITE;
/*!40000 ALTER TABLE `resident_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `resident_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resident_table`
--

DROP TABLE IF EXISTS `resident_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resident_table` (
  `resident_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `move_in_date` datetime DEFAULT NULL,
  `move_out_date` datetime DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `flat_id` bigint(20) DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  `resident_type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resident_id`),
  KEY `FK_hdrhy0po06drfkva44a2s89ab` (`flat_id`),
  KEY `FK_3oojisbe32j22le5umafqij4d` (`person_id`),
  KEY `FK_gd5ldoliqw2o1vouutqy4em4c` (`resident_type_id`),
  CONSTRAINT `FK_3oojisbe32j22le5umafqij4d` FOREIGN KEY (`person_id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_gd5ldoliqw2o1vouutqy4em4c` FOREIGN KEY (`resident_type_id`) REFERENCES `resident_type_enum_table` (`resident_type_id`),
  CONSTRAINT `FK_hdrhy0po06drfkva44a2s89ab` FOREIGN KEY (`flat_id`) REFERENCES `flat_table` (`flat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resident_table`
--

LOCK TABLES `resident_table` WRITE;
/*!40000 ALTER TABLE `resident_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `resident_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resident_type_enum_table`
--

DROP TABLE IF EXISTS `resident_type_enum_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resident_type_enum_table` (
  `resident_type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `resident_type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resident_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resident_type_enum_table`
--

LOCK TABLES `resident_type_enum_table` WRITE;
/*!40000 ALTER TABLE `resident_type_enum_table` DISABLE KEYS */;
INSERT INTO `resident_type_enum_table` VALUES (1,'Owner'),(2,'Tenant');
/*!40000 ALTER TABLE `resident_type_enum_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_and_service_table`
--

DROP TABLE IF EXISTS `resource_and_service_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource_and_service_table` (
  `resource_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `resource_close_time` datetime DEFAULT NULL,
  `resource_location` varchar(100) DEFAULT NULL,
  `resource_name` varchar(100) DEFAULT NULL,
  `resource_open_time` datetime DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `resource_status_enum_id` bigint(20) DEFAULT NULL,
  `updated_by_person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resource_id`),
  KEY `FK_speq9yidpi7a92fr3470knrsx` (`resource_status_enum_id`),
  KEY `FK_3npp73hgvwou2gnw5vyvkhaw4` (`updated_by_person_id`),
  CONSTRAINT `FK_3npp73hgvwou2gnw5vyvkhaw4` FOREIGN KEY (`updated_by_person_id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_speq9yidpi7a92fr3470knrsx` FOREIGN KEY (`resource_status_enum_id`) REFERENCES `resource_status_enum_table` (`resource_status_enum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_and_service_table`
--

LOCK TABLES `resource_and_service_table` WRITE;
/*!40000 ALTER TABLE `resource_and_service_table` DISABLE KEYS */;
INSERT INTO `resource_and_service_table` VALUES (54,'2017-01-13 01:07:00','Basement','Lift','2017-01-13 02:10:00','2017-01-25 07:59:00',2,1),(55,'2017-01-16 02:53:00','Terrace','Tap','2017-01-16 02:53:00','2017-01-24 06:54:29',2,1),(56,'2017-01-16 02:53:00','Gymarea','Gym','2017-01-16 01:53:00','2017-01-24 06:55:01',2,1);
/*!40000 ALTER TABLE `resource_and_service_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_status_enum_table`
--

DROP TABLE IF EXISTS `resource_status_enum_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource_status_enum_table` (
  `resource_status_enum_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `resource_status_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`resource_status_enum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_status_enum_table`
--

LOCK TABLES `resource_status_enum_table` WRITE;
/*!40000 ALTER TABLE `resource_status_enum_table` DISABLE KEYS */;
INSERT INTO `resource_status_enum_table` VALUES (1,'Up'),(2,'Down'),(3,'Up');
/*!40000 ALTER TABLE `resource_status_enum_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_status_table`
--

DROP TABLE IF EXISTS `resource_status_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource_status_table` (
  `resource_status_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comments` varchar(100) DEFAULT NULL,
  `resource_unavailable_actual_end_time` datetime DEFAULT NULL,
  `resource_unavailable_end_time` datetime DEFAULT NULL,
  `resource_unavailable_start_time` datetime DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `updated_by_person_id` bigint(20) DEFAULT NULL,
  `resource_id` bigint(20) DEFAULT NULL,
  `scheduler_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resource_status_id`),
  KEY `FK_5ceq29akcv5bekk8aij8i50pw` (`updated_by_person_id`),
  KEY `FK_955uu2omet6lqdocyernmdkjs` (`resource_id`),
  CONSTRAINT `FK_5ceq29akcv5bekk8aij8i50pw` FOREIGN KEY (`updated_by_person_id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_955uu2omet6lqdocyernmdkjs` FOREIGN KEY (`resource_id`) REFERENCES `resource_and_service_table` (`resource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_status_table`
--

LOCK TABLES `resource_status_table` WRITE;
/*!40000 ALTER TABLE `resource_status_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `resource_status_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response_table`
--

DROP TABLE IF EXISTS `response_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `response_table` (
  `response_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `answer_json` longtext,
  `timestamp` datetime DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  `question_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`response_id`),
  KEY `FK_m0a1isg360606aljef68nq4nl` (`person_id`),
  KEY `FK_kpa3c524rq7rjhhm44rtctsss` (`question_id`),
  CONSTRAINT `FK_kpa3c524rq7rjhhm44rtctsss` FOREIGN KEY (`question_id`) REFERENCES `question_table` (`question_id`),
  CONSTRAINT `FK_m0a1isg360606aljef68nq4nl` FOREIGN KEY (`person_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response_table`
--

LOCK TABLES `response_table` WRITE;
/*!40000 ALTER TABLE `response_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `response_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_enum_table`
--

DROP TABLE IF EXISTS `role_enum_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_enum_table` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  `time_stamp` datetime DEFAULT NULL,
  `updated_by_person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  KEY `FK_17etx61p4n9n1vu2d7bucpogf` (`updated_by_person_id`),
  CONSTRAINT `FK_17etx61p4n9n1vu2d7bucpogf` FOREIGN KEY (`updated_by_person_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_enum_table`
--

LOCK TABLES `role_enum_table` WRITE;
/*!40000 ALTER TABLE `role_enum_table` DISABLE KEYS */;
INSERT INTO `role_enum_table` VALUES (1,'Administrator','2016-02-23 14:15:16',1),(2,'Manager','2016-02-23 14:15:16',1),(4,'Staff','2016-02-23 14:15:16',1),(8,'Resident','2016-02-23 14:15:16',1),(16,'Vendor','2016-04-21 03:47:58',1),(32,'Gatekeeper','2016-08-04 02:38:30',1),(64,'Configurator','2016-09-14 12:10:21',1);
/*!40000 ALTER TABLE `role_enum_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sign_up`
--

DROP TABLE IF EXISTS `sign_up`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sign_up` (
  `sign_up_table_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `move_in_time` datetime DEFAULT NULL,
  `move_out_time` datetime DEFAULT NULL,
  `flat_id` bigint(20) DEFAULT NULL,
  `flat_accupation_id` bigint(20) DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  `resident_type` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sign_up_table_id`),
  KEY `FK_lffx9582b9u3ano22em8sfpwu` (`flat_id`),
  KEY `FK_p4cvjbi69nsowwyjpyegoyrvk` (`flat_accupation_id`),
  KEY `FK_7acuha4cdj3tyapaqyn73n5ta` (`person_id`),
  KEY `FK_dihjcft3k5b5qmys93pbolxcm` (`resident_type`),
  CONSTRAINT `FK_7acuha4cdj3tyapaqyn73n5ta` FOREIGN KEY (`person_id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_dihjcft3k5b5qmys93pbolxcm` FOREIGN KEY (`resident_type`) REFERENCES `resident_type_enum_table` (`resident_type_id`),
  CONSTRAINT `FK_lffx9582b9u3ano22em8sfpwu` FOREIGN KEY (`flat_id`) REFERENCES `flat_table` (`flat_id`),
  CONSTRAINT `FK_p4cvjbi69nsowwyjpyegoyrvk` FOREIGN KEY (`flat_accupation_id`) REFERENCES `flat_occupency_status_enum_table` (`flat_occupency_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sign_up`
--

LOCK TABLES `sign_up` WRITE;
/*!40000 ALTER TABLE `sign_up` DISABLE KEYS */;
/*!40000 ALTER TABLE `sign_up` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_enum_table`
--

DROP TABLE IF EXISTS `skill_enum_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_enum_table` (
  `skill_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `complaint_category_enum_table_ComplaintCategoryId` bigint(20) DEFAULT NULL,
  `last_update_by_person_Id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`skill_id`),
  KEY `FK_re67pcmsdy9jq3r063blwuh24` (`complaint_category_enum_table_ComplaintCategoryId`),
  KEY `FK_hxeon8mo1ceje0qcnmg7q2q55` (`last_update_by_person_Id`),
  CONSTRAINT `FK_hxeon8mo1ceje0qcnmg7q2q55` FOREIGN KEY (`last_update_by_person_Id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_re67pcmsdy9jq3r063blwuh24` FOREIGN KEY (`complaint_category_enum_table_ComplaintCategoryId`) REFERENCES `complaint_category_enum_table` (`complaint_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_enum_table`
--

LOCK TABLES `skill_enum_table` WRITE;
/*!40000 ALTER TABLE `skill_enum_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_enum_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_has_skill_table`
--

DROP TABLE IF EXISTS `staff_has_skill_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_has_skill_table` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `skill_id` bigint(20) DEFAULT NULL,
  `staff_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fy8eman3l3v5fn9de0qww5e24` (`skill_id`),
  KEY `FK_7i3un9a57jlb6px7894gohfjv` (`staff_id`),
  CONSTRAINT `FK_7i3un9a57jlb6px7894gohfjv` FOREIGN KEY (`staff_id`) REFERENCES `staff_table` (`staff_id`),
  CONSTRAINT `FK_fy8eman3l3v5fn9de0qww5e24` FOREIGN KEY (`skill_id`) REFERENCES `skill_enum_table` (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_has_skill_table`
--

LOCK TABLES `staff_has_skill_table` WRITE;
/*!40000 ALTER TABLE `staff_has_skill_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_has_skill_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_rating_table`
--

DROP TABLE IF EXISTS `staff_rating_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_rating_table` (
  `id_staff_rating` bigint(20) NOT NULL AUTO_INCREMENT,
  `rating_date` datetime NOT NULL,
  `rating_star` int(11) NOT NULL,
  `rating_text` longtext NOT NULL,
  `staff_person_id` bigint(20) DEFAULT NULL,
  `rating_by_person_id` bigint(20) NOT NULL,
  `rating_heading` varchar(255) DEFAULT NULL,
  `staffpersonid_person_Id` bigint(20) DEFAULT NULL,
  `complaint_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_staff_rating`),
  KEY `FK_t2rhoy78hekktmahleq2kx0db` (`staff_person_id`),
  KEY `FK_2ohgmx85166hex0qtcmbq2ryp` (`rating_by_person_id`),
  KEY `FK_i071d5iigk31qhw7cw5srhsns` (`staffpersonid_person_Id`),
  KEY `FK_iluwwdhclydvayuyam379y7ue` (`complaint_id`),
  CONSTRAINT `FK_2ohgmx85166hex0qtcmbq2ryp` FOREIGN KEY (`rating_by_person_id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_i071d5iigk31qhw7cw5srhsns` FOREIGN KEY (`staffpersonid_person_Id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_iluwwdhclydvayuyam379y7ue` FOREIGN KEY (`complaint_id`) REFERENCES `complaintbook` (`complaint_id`),
  CONSTRAINT `FK_t2rhoy78hekktmahleq2kx0db` FOREIGN KEY (`staff_person_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_rating_table`
--

LOCK TABLES `staff_rating_table` WRITE;
/*!40000 ALTER TABLE `staff_rating_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_rating_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_table`
--

DROP TABLE IF EXISTS `staff_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_table` (
  `staff_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` int(11) DEFAULT NULL,
  `additional_skill` varchar(255) DEFAULT NULL,
  `emp_id` varchar(255) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `time_stamp` datetime DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  `updated_by_person_id` bigint(20) DEFAULT NULL,
  `manager_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `FK_drt0bdunwrjp2qj4wokq3u8h0` (`person_id`),
  KEY `FK_pvviaq3m6y23ppynctyhwp8j` (`updated_by_person_id`),
  KEY `FK_34ika97e78ygedxtgemi38rvn` (`manager_id`),
  CONSTRAINT `FK_34ika97e78ygedxtgemi38rvn` FOREIGN KEY (`manager_id`) REFERENCES `staff_table` (`staff_id`),
  CONSTRAINT `FK_drt0bdunwrjp2qj4wokq3u8h0` FOREIGN KEY (`person_id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_pvviaq3m6y23ppynctyhwp8j` FOREIGN KEY (`updated_by_person_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_table`
--

LOCK TABLES `staff_table` WRITE;
/*!40000 ALTER TABLE `staff_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_data_table`
--

DROP TABLE IF EXISTS `static_data_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_data_table` (
  `static_id` int(11) NOT NULL AUTO_INCREMENT,
  `version_key` varchar(255) DEFAULT NULL,
  `version_value` varchar(255) NOT NULL,
  PRIMARY KEY (`static_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_data_table`
--

LOCK TABLES `static_data_table` WRITE;
/*!40000 ALTER TABLE `static_data_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `static_data_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sticker_enum_table`
--

DROP TABLE IF EXISTS `sticker_enum_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sticker_enum_table` (
  `sticker_enum_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_alloted` smallint(6) DEFAULT NULL,
  `sticker_id` varchar(255) DEFAULT NULL,
  `time_stamp` datetime DEFAULT NULL,
  `updated_by_person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sticker_enum_id`),
  KEY `FK_np3qg02ixdji1jwi90167knuc` (`updated_by_person_id`),
  CONSTRAINT `FK_np3qg02ixdji1jwi90167knuc` FOREIGN KEY (`updated_by_person_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sticker_enum_table`
--

--
-- Table structure for table `suggestion_table`
--

DROP TABLE IF EXISTS `suggestion_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suggestion_table` (
  `suggestion_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `insert_time` datetime DEFAULT NULL,
  `post_by_person` bigint(20) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`suggestion_id`),
  KEY `FK_f9u41g5ekwate3cu1lwqa6jeh` (`post_by_person`),
  CONSTRAINT `FK_f9u41g5ekwate3cu1lwqa6jeh` FOREIGN KEY (`post_by_person`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suggestion_table`
--

LOCK TABLES `suggestion_table` WRITE;
/*!40000 ALTER TABLE `suggestion_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `suggestion_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_question_table`
--

DROP TABLE IF EXISTS `survey_question_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_question_table` (
  `survey_question_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `question_text` varchar(1000) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `answer_type_enum_id` bigint(20) DEFAULT NULL,
  `survey_id` bigint(20) DEFAULT NULL,
  `updated_by_person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`survey_question_id`),
  KEY `FK_edj2mwtnatabkdjts2b2xu250` (`answer_type_enum_id`),
  KEY `FK_trvd6x365g51b526872r5w5km` (`survey_id`),
  KEY `FK_8xop0ojsfrk0csv2bap8fthmw` (`updated_by_person_id`),
  CONSTRAINT `FK_8xop0ojsfrk0csv2bap8fthmw` FOREIGN KEY (`updated_by_person_id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_edj2mwtnatabkdjts2b2xu250` FOREIGN KEY (`answer_type_enum_id`) REFERENCES `answer_type_enum_table` (`answer_type_enum_id`),
  CONSTRAINT `FK_trvd6x365g51b526872r5w5km` FOREIGN KEY (`survey_id`) REFERENCES `survey_table` (`survey_id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_question_table`
--

LOCK TABLES `survey_question_table` WRITE;
/*!40000 ALTER TABLE `survey_question_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey_question_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_table`
--

DROP TABLE IF EXISTS `survey_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_table` (
  `survey_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_finish` smallint(6) DEFAULT NULL,
  `survey_description` varchar(1000) DEFAULT NULL,
  `survey_start_date` datetime DEFAULT NULL,
  `survey_title` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `update_by_person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`survey_id`),
  KEY `FK_f4g1qjt7vf6on0ta6t1d80j4n` (`update_by_person_id`),
  CONSTRAINT `FK_f4g1qjt7vf6on0ta6t1d80j4n` FOREIGN KEY (`update_by_person_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_table`
--

LOCK TABLES `survey_table` WRITE;
/*!40000 ALTER TABLE `survey_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_table`
--

DROP TABLE IF EXISTS `token_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token_table` (
  `token_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `last_chackin` datetime NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `person_table_person_Id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`token_id`),
  KEY `FK_6xkjs04qk5030s4w0exbjd90p` (`person_table_person_Id`),
  CONSTRAINT `FK_6xkjs04qk5030s4w0exbjd90p` FOREIGN KEY (`person_table_person_Id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1995 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_table`
--

LOCK TABLES `token_table` WRITE;
/*!40000 ALTER TABLE `token_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `token_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_table`
--

DROP TABLE IF EXISTS `vehicle_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_table` (
  `vehicle_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sticker_id` varchar(255) DEFAULT NULL,
  `time_stamp` datetime DEFAULT NULL,
  `vehicle_no` varchar(255) DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`),
  KEY `FK_5tym0velg8hr5g6xcc5j8ag18` (`person_id`),
  CONSTRAINT `FK_5tym0velg8hr5g6xcc5j8ag18` FOREIGN KEY (`person_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_table`
--

LOCK TABLES `vehicle_table` WRITE;
/*!40000 ALTER TABLE `vehicle_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_category`
--

DROP TABLE IF EXISTS `vendor_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor_category` (
  `vendor_category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vendor_category_name` varchar(200) NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  `updated_by_person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`vendor_category_id`),
  KEY `FK_9y0o9mbvd0vtey73qdmc1tbn4` (`updated_by_person_id`),
  CONSTRAINT `FK_9y0o9mbvd0vtey73qdmc1tbn4` FOREIGN KEY (`updated_by_person_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_category`
--

LOCK TABLES `vendor_category` WRITE;
/*!40000 ALTER TABLE `vendor_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendor_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_info_table`
--

DROP TABLE IF EXISTS `vendor_info_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor_info_table` (
  `idvendor_info_table` bigint(20) NOT NULL AUTO_INCREMENT,
  `rating_date` datetime NOT NULL,
  `rating_star` int(11) NOT NULL,
  `rating_text` longtext NOT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `rating_by_person_id` bigint(20) NOT NULL,
  `rating_heading` varchar(30) NOT NULL,
  PRIMARY KEY (`idvendor_info_table`),
  KEY `FK_kmevnfrmc06sdwt7uouynq12w` (`vendor_id`),
  KEY `FK_ocje544o9nkptxpp5ropjvkbp` (`rating_by_person_id`),
  CONSTRAINT `FK_kmevnfrmc06sdwt7uouynq12w` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_table` (`vendor_id`),
  CONSTRAINT `FK_ocje544o9nkptxpp5ropjvkbp` FOREIGN KEY (`rating_by_person_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_info_table`
--

LOCK TABLES `vendor_info_table` WRITE;
/*!40000 ALTER TABLE `vendor_info_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendor_info_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_table`
--

DROP TABLE IF EXISTS `vendor_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor_table` (
  `vendor_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vendor_category_id` bigint(20) DEFAULT NULL,
  `vendor_person_id` bigint(20) DEFAULT NULL,
  `is_vendor_active` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`vendor_id`),
  KEY `FK_ncyryhjmc2l5218w605phmx4h` (`vendor_category_id`),
  KEY `FK_84w70edy6fco6rfcu10urp3px` (`vendor_person_id`),
  CONSTRAINT `FK_84w70edy6fco6rfcu10urp3px` FOREIGN KEY (`vendor_person_id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_ncyryhjmc2l5218w605phmx4h` FOREIGN KEY (`vendor_category_id`) REFERENCES `vendor_category` (`vendor_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_table`
--

LOCK TABLES `vendor_table` WRITE;
/*!40000 ALTER TABLE `vendor_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendor_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor_enum_table`
--

DROP TABLE IF EXISTS `visitor_enum_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visitor_enum_table` (
  `visitor_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `time_stamp` datetime DEFAULT NULL,
  `visitor_type_name` varchar(255) DEFAULT NULL,
  `updated_by_person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`visitor_type_id`),
  KEY `FK_odrphjpq6l874dsglb1q5at35` (`updated_by_person_id`),
  CONSTRAINT `FK_odrphjpq6l874dsglb1q5at35` FOREIGN KEY (`updated_by_person_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor_enum_table`
--

LOCK TABLES `visitor_enum_table` WRITE;
/*!40000 ALTER TABLE `visitor_enum_table` DISABLE KEYS */;
INSERT INTO `visitor_enum_table` VALUES (1,'2016-07-26 16:07:04','Personal',1),(2,'2016-07-26 16:07:16','Official',1);
/*!40000 ALTER TABLE `visitor_enum_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor_status_enum_table`
--

DROP TABLE IF EXISTS `visitor_status_enum_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visitor_status_enum_table` (
  `visitor_status_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(255) DEFAULT NULL,
  `status_order` int(11) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `valid_role_for_state` bigint(20) DEFAULT NULL,
  `valid_to_states` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`visitor_status_id`),
  KEY `FK_ie3ne81y97brt41okioofer7h` (`updated_by_id`),
  CONSTRAINT `FK_ie3ne81y97brt41okioofer7h` FOREIGN KEY (`updated_by_id`) REFERENCES `person_table` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor_status_enum_table`
--

LOCK TABLES `visitor_status_enum_table` WRITE;
/*!40000 ALTER TABLE `visitor_status_enum_table` DISABLE KEYS */;
INSERT INTO `visitor_status_enum_table` VALUES (1,'Requested',1,'2016-07-26 14:27:41',32,38,1),(2,'Accepted',2,'2016-07-26 14:29:18',10,8,1),(4,'Rejected',3,'2016-07-26 14:30:00',10,32,1),(8,'Confirmed',4,'2016-07-26 14:30:48',32,16,1),(16,'Completed',5,'2016-07-26 14:31:17',10,32,1),(32,'Closed',6,'2016-08-02 06:34:00',32,32,1),(64,'Not Yet Approved',7,'2016-09-07 05:37:13',32,33,1);
/*!40000 ALTER TABLE `visitor_status_enum_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor_status_progress_table`
--

DROP TABLE IF EXISTS `visitor_status_progress_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visitor_status_progress_table` (
  `visitor_status_progress_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `timestamp` datetime DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  `visitor_status_id` bigint(20) DEFAULT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`visitor_status_progress_id`),
  KEY `FK_ce6s7xem0ynstq2cuacpn03bv` (`person_id`),
  KEY `FK_i6hmxi2o7703boobmok1ggcf7` (`visitor_status_id`),
  KEY `FK_syxie5vspsencs2l3kxpu35y9` (`visitor_id`),
  CONSTRAINT `FK_ce6s7xem0ynstq2cuacpn03bv` FOREIGN KEY (`person_id`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_i6hmxi2o7703boobmok1ggcf7` FOREIGN KEY (`visitor_status_id`) REFERENCES `visitor_status_enum_table` (`visitor_status_id`),
  CONSTRAINT `FK_syxie5vspsencs2l3kxpu35y9` FOREIGN KEY (`visitor_id`) REFERENCES `visitor_table` (`visitor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1137 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor_status_progress_table`
--

LOCK TABLES `visitor_status_progress_table` WRITE;
/*!40000 ALTER TABLE `visitor_status_progress_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `visitor_status_progress_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor_table`
--

DROP TABLE IF EXISTS `visitor_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visitor_table` (
  `visitor_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `visit_request_time` datetime DEFAULT NULL,
  `visit_authorized_time` datetime DEFAULT NULL,
  `visitor_mobile_number` varchar(255) NOT NULL,
  `visitor_name` varchar(255) NOT NULL,
  `visitor_photo` varchar(255) NOT NULL,
  `visitor_vehicle_number` varchar(255) DEFAULT NULL,
  `visitor_in_timestamp` datetime DEFAULT NULL,
  `visitor_out_timestamp` datetime DEFAULT NULL,
  `person_to_contact` bigint(20) DEFAULT NULL,
  `visit_authorized_by` bigint(20) DEFAULT NULL,
  `owner_flat_no` bigint(20) DEFAULT NULL,
  `visitor_type_id` int(11) DEFAULT NULL,
  `visitor_status_id` bigint(20) DEFAULT NULL,
  `visiting_duration` bigint(20) DEFAULT NULL,
  `visit_description` varchar(1000) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`visitor_id`),
  KEY `FK_7f92p6mlfm7qefnujtq3lspbu` (`person_to_contact`),
  KEY `FK_ibrr0tg8wkjca85tm1sy6fn6w` (`visit_authorized_by`),
  KEY `FK_nydyelr00moecxe9marcmhue` (`owner_flat_no`),
  KEY `FK_g72jabaqk7bp2ys4lhiec2vrg` (`visitor_type_id`),
  KEY `FK_3sosawmh7ftdmjbpeaecja2aq` (`visitor_status_id`),
  CONSTRAINT `FK_3sosawmh7ftdmjbpeaecja2aq` FOREIGN KEY (`visitor_status_id`) REFERENCES `visitor_status_enum_table` (`visitor_status_id`),
  CONSTRAINT `FK_7f92p6mlfm7qefnujtq3lspbu` FOREIGN KEY (`person_to_contact`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_g72jabaqk7bp2ys4lhiec2vrg` FOREIGN KEY (`visitor_type_id`) REFERENCES `visitor_enum_table` (`visitor_type_id`),
  CONSTRAINT `FK_ibrr0tg8wkjca85tm1sy6fn6w` FOREIGN KEY (`visit_authorized_by`) REFERENCES `person_table` (`person_id`),
  CONSTRAINT `FK_nydyelr00moecxe9marcmhue` FOREIGN KEY (`owner_flat_no`) REFERENCES `flat_table` (`flat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=645 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor_table`
--

LOCK TABLES `visitor_table` WRITE;
/*!40000 ALTER TABLE `visitor_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `visitor_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-25 19:25:16
