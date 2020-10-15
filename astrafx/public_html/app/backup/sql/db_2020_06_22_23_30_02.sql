-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: astrafx_database
-- ------------------------------------------------------
-- Server version	5.7.30

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
-- Table structure for table `_roi_payments`
--

DROP TABLE IF EXISTS `_roi_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_roi_payments` (
  `ROIID` int(11) NOT NULL AUTO_INCREMENT,
  `MemberID` int(11) DEFAULT NULL,
  `MemberCode` varchar(255) DEFAULT NULL,
  `ROI_DATE` date DEFAULT NULL,
  `ROI_AMT` varchar(255) DEFAULT NULL,
  `IsSettled` int(11) DEFAULT '0',
  `SettledOn` datetime DEFAULT NULL,
  `RecordOn` date DEFAULT NULL,
  `PackageID` int(11) DEFAULT '0',
  `PackageAmount` varchar(255) DEFAULT NULL,
  `ROI_TYPE` int(11) DEFAULT '0' COMMENT '1-investment, 2-referal',
  `ROI_PayoutID` int(11) DEFAULT NULL,
  `AccountTxnID` int(11) DEFAULT NULL,
  `ChargesPercentage` varchar(5) DEFAULT NULL,
  `ChargeAmount` varchar(10) DEFAULT NULL,
  `CreditToWallet` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ROIID`)
) ENGINE=InnoDB AUTO_INCREMENT=696 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_roi_payments`
--

LOCK TABLES `_roi_payments` WRITE;
/*!40000 ALTER TABLE `_roi_payments` DISABLE KEYS */;
INSERT INTO `_roi_payments` VALUES (5,1,'AstraFx00001','2020-07-01','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(6,1,'AstraFx00001','2020-07-02','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(7,1,'AstraFx00001','2020-07-06','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(8,1,'AstraFx00001','2020-07-07','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(9,1,'AstraFx00001','2020-07-08','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(10,1,'AstraFx00001','2020-07-09','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(11,1,'AstraFx00001','2020-07-13','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(12,1,'AstraFx00001','2020-07-14','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(13,1,'AstraFx00001','2020-07-15','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(14,1,'AstraFx00001','2020-07-16','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(15,1,'AstraFx00001','2020-07-20','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(16,1,'AstraFx00001','2020-07-21','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(17,1,'AstraFx00001','2020-07-22','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(18,1,'AstraFx00001','2020-07-23','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(19,1,'AstraFx00001','2020-07-27','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(20,1,'AstraFx00001','2020-07-28','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(21,1,'AstraFx00001','2020-07-29','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(22,1,'AstraFx00001','2020-07-30','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(23,1,'AstraFx00001','2020-08-03','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(24,1,'AstraFx00001','2020-08-04','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(25,1,'AstraFx00001','2020-08-05','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(26,1,'AstraFx00001','2020-08-06','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(27,1,'AstraFx00001','2020-08-10','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(28,1,'AstraFx00001','2020-08-11','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(29,1,'AstraFx00001','2020-08-12','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(30,1,'AstraFx00001','2020-08-13','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(31,1,'AstraFx00001','2020-08-17','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(32,1,'AstraFx00001','2020-08-18','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(33,1,'AstraFx00001','2020-08-19','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(34,1,'AstraFx00001','2020-08-20','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(35,1,'AstraFx00001','2020-08-24','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(36,1,'AstraFx00001','2020-08-25','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(37,1,'AstraFx00001','2020-08-26','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(38,1,'AstraFx00001','2020-08-27','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(39,1,'AstraFx00001','2020-08-31','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(40,1,'AstraFx00001','2020-09-01','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(41,1,'AstraFx00001','2020-09-02','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(42,1,'AstraFx00001','2020-09-03','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(43,1,'AstraFx00001','2020-09-07','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(44,1,'AstraFx00001','2020-09-08','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(45,1,'AstraFx00001','2020-09-09','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(46,1,'AstraFx00001','2020-09-10','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(47,1,'AstraFx00001','2020-09-14','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(48,1,'AstraFx00001','2020-09-15','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(49,1,'AstraFx00001','2020-09-16','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(50,1,'AstraFx00001','2020-09-17','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(51,1,'AstraFx00001','2020-09-21','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(52,1,'AstraFx00001','2020-09-22','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(53,1,'AstraFx00001','2020-09-23','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(54,1,'AstraFx00001','2020-09-24','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(55,1,'AstraFx00001','2020-09-28','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(56,1,'AstraFx00001','2020-09-29','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(57,1,'AstraFx00001','2020-09-30','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(58,1,'AstraFx00001','2020-10-01','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(59,1,'AstraFx00001','2020-10-05','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(60,1,'AstraFx00001','2020-10-06','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(61,1,'AstraFx00001','2020-10-07','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(62,1,'AstraFx00001','2020-10-08','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(63,1,'AstraFx00001','2020-10-12','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(64,1,'AstraFx00001','2020-10-13','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(65,1,'AstraFx00001','2020-10-14','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(66,1,'AstraFx00001','2020-10-15','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(67,1,'AstraFx00001','2020-10-19','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(68,1,'AstraFx00001','2020-10-20','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(69,1,'AstraFx00001','2020-10-21','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(70,1,'AstraFx00001','2020-10-22','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(71,1,'AstraFx00001','2020-10-26','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(72,1,'AstraFx00001','2020-10-27','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(73,1,'AstraFx00001','2020-10-28','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(74,1,'AstraFx00001','2020-10-29','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(75,1,'AstraFx00001','2020-11-02','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(76,1,'AstraFx00001','2020-11-03','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(77,1,'AstraFx00001','2020-11-04','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(78,1,'AstraFx00001','2020-11-05','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(79,1,'AstraFx00001','2020-11-09','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(80,1,'AstraFx00001','2020-11-10','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(81,1,'AstraFx00001','2020-11-11','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(82,1,'AstraFx00001','2020-11-12','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(83,1,'AstraFx00001','2020-11-16','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(84,1,'AstraFx00001','2020-11-17','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(85,1,'AstraFx00001','2020-11-18','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(86,1,'AstraFx00001','2020-11-19','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(87,1,'AstraFx00001','2020-11-23','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(88,1,'AstraFx00001','2020-11-24','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(89,1,'AstraFx00001','2020-11-25','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(90,1,'AstraFx00001','2020-11-26','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(691,1,'AstraFx00001','2020-11-30','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(692,1,'AstraFx00001','2020-12-01','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(693,1,'AstraFx00001','2020-12-02','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL),(694,1,'AstraFx00001','2020-12-03','0.7',0,NULL,'2020-06-15',1,NULL,1,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `_roi_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_roi_payouts`
--

DROP TABLE IF EXISTS `_roi_payouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_roi_payouts` (
  `ROI_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MemberID` int(11) DEFAULT NULL,
  `MemberCode` varchar(255) DEFAULT NULL,
  `ROIStarted` datetime DEFAULT NULL,
  `ROIEnted` datetime DEFAULT NULL,
  `PackageID` int(11) DEFAULT NULL,
  `PackageName` varchar(255) DEFAULT NULL,
  `DaysCompleted` int(11) DEFAULT NULL,
  `LastDateProcesed` int(11) DEFAULT NULL,
  `Amount` varchar(255) DEFAULT NULL,
  `IsCompleted` varchar(255) DEFAULT NULL,
  `NextDateToBeProcess` datetime DEFAULT NULL,
  `ROI_TYPE` int(11) DEFAULT '0',
  `TypeString` varchar(255) DEFAULT NULL,
  `RMemberID` int(11) DEFAULT '0',
  `RMemberCode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ROI_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_roi_payouts`
--

LOCK TABLES `_roi_payouts` WRITE;
/*!40000 ALTER TABLE `_roi_payouts` DISABLE KEYS */;
INSERT INTO `_roi_payouts` VALUES (1,1,'AstraFx00001','2020-06-24 00:00:00',NULL,1,'Forex 35',0,NULL,NULL,NULL,NULL,1,'Package ROI',0,NULL);
/*!40000 ALTER TABLE `_roi_payouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tblPlacements`
--

DROP TABLE IF EXISTS `_tblPlacements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tblPlacements` (
  `PlacementID` int(11) NOT NULL AUTO_INCREMENT,
  `ParentID` int(11) DEFAULT NULL,
  `ParentCode` varchar(255) DEFAULT NULL,
  `ParentName` varchar(255) DEFAULT NULL,
  `ChildID` int(11) DEFAULT NULL,
  `ChildCode` varchar(255) DEFAULT NULL,
  `ChildName` varchar(255) DEFAULT NULL,
  `PlacedByID` int(11) DEFAULT NULL,
  `PlacedByCode` varchar(255) DEFAULT NULL,
  `PlacedByName` varchar(255) DEFAULT NULL,
  `PlacedOn` datetime DEFAULT NULL,
  `UsedEPin` varchar(255) DEFAULT NULL,
  `Position` varbinary(255) DEFAULT NULL COMMENT 'L,R',
  `PlacedFrom` varchar(255) DEFAULT 'portal',
  `Paid` int(11) DEFAULT '0',
  `PV` varchar(255) DEFAULT NULL,
  `BV` varbinary(255) DEFAULT NULL,
  `PackageID` int(11) DEFAULT '0',
  PRIMARY KEY (`PlacementID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tblPlacements`
--

LOCK TABLES `_tblPlacements` WRITE;
/*!40000 ALTER TABLE `_tblPlacements` DISABLE KEYS */;
/*!40000 ALTER TABLE `_tblPlacements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_Log_MobileSMS`
--

DROP TABLE IF EXISTS `_tbl_Log_MobileSMS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_Log_MobileSMS` (
  `SMSID` int(11) NOT NULL AUTO_INCREMENT,
  `MemberID` int(11) DEFAULT NULL,
  `Membercode` varchar(255) DEFAULT NULL,
  `SmsTo` varchar(255) DEFAULT NULL,
  `Message` text,
  `MessagedOn` datetime DEFAULT NULL,
  `APIResponse` text,
  `url` text,
  PRIMARY KEY (`SMSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_Log_MobileSMS`
--

LOCK TABLES `_tbl_Log_MobileSMS` WRITE;
/*!40000 ALTER TABLE `_tbl_Log_MobileSMS` DISABLE KEYS */;
/*!40000 ALTER TABLE `_tbl_Log_MobileSMS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_Members`
--

DROP TABLE IF EXISTS `_tbl_Members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_Members` (
  `MemberID` int(11) NOT NULL AUTO_INCREMENT,
  `MemberCode` varchar(255) DEFAULT NULL,
  `PlacementID` varchar(255) DEFAULT NULL,
  `Placement` varchar(255) DEFAULT NULL,
  `ReferralID` varchar(255) DEFAULT NULL,
  `MemberName` varchar(255) DEFAULT NULL,
  `DateofBirth` date DEFAULT NULL,
  `Sex` varchar(255) DEFAULT NULL,
  `MobileNumber` varchar(255) DEFAULT NULL,
  `MemberEmail` varchar(255) DEFAULT NULL,
  `MemberPassword` varchar(255) DEFAULT NULL,
  `MemberTxnPassword` varchar(255) DEFAULT NULL,
  `FatherName` varchar(255) DEFAULT NULL,
  `PanCard` varchar(255) DEFAULT NULL,
  `AddressLine1` varchar(255) DEFAULT NULL,
  `AddressLine2` varchar(255) DEFAULT NULL,
  `CountryName` varchar(255) DEFAULT NULL,
  `StateName` varchar(255) DEFAULT NULL,
  `DistrictName` varchar(255) DEFAULT NULL,
  `CityName` varchar(255) DEFAULT NULL,
  `PinCode` varchar(255) DEFAULT NULL,
  `IsActive` int(11) DEFAULT '1',
  `CreatedOn` datetime DEFAULT NULL,
  `SponsorCode` varchar(255) DEFAULT NULL,
  `SponsorID` varchar(255) DEFAULT NULL,
  `SponsorName` varchar(255) DEFAULT NULL,
  `UplineID` int(11) DEFAULT NULL,
  `UplineCode` varchar(255) DEFAULT NULL,
  `UplineName` varchar(255) DEFAULT NULL,
  `Thumb` varchar(255) DEFAULT NULL,
  `KYCVerified` int(11) DEFAULT '0',
  `KYCVerifiedOn` datetime DEFAULT NULL,
  `PanCardFile` varchar(255) DEFAULT NULL,
  `CurrentPackageID` int(11) DEFAULT NULL,
  `CurrentPackageName` varchar(255) DEFAULT NULL,
  `RequireMobileOtpLogin` int(1) DEFAULT '0',
  `IsBinaryEligible` int(11) DEFAULT '0',
  `IsPayoutEligible` int(11) DEFAULT '0',
  `ProfileInfoSubmit` int(11) DEFAULT '0',
  `PISubmittedOn` datetime DEFAULT NULL,
  `PIApprovedOn` datetime DEFAULT NULL,
  `PIRejectedOn` datetime DEFAULT NULL,
  `KycSubmit` int(11) DEFAULT '0',
  `KycSubmittedOn` datetime DEFAULT NULL,
  `KycApprovedOn` datetime DEFAULT NULL,
  `KycRejectedOn` datetime DEFAULT NULL,
  `BankInfoSubmit` int(11) DEFAULT '0',
  `BankInfoSubmittedOn` datetime DEFAULT NULL,
  `BankInfoApprovedOn` datetime DEFAULT NULL,
  `BankInfoRejectedOn` datetime DEFAULT NULL,
  `ActivePackageID` int(11) DEFAULT '0',
  `ActivePackageRefID` int(11) DEFAULT '0',
  `DirectLeft` int(11) DEFAULT '0',
  `DirectRight` int(11) DEFAULT '0',
  `HDirectLeft` int(11) DEFAULT '0' COMMENT 'Higher Direct Referal Left',
  `HDirectRight` int(11) DEFAULT '0' COMMENT 'Higher Direct Referral Right',
  PRIMARY KEY (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_Members`
--

LOCK TABLES `_tbl_Members` WRITE;
/*!40000 ALTER TABLE `_tbl_Members` DISABLE KEYS */;
INSERT INTO `_tbl_Members` VALUES (1,'AstraFx00001','123','','','Admin','1999-06-10','Male','9000000000','admin@gmail.com','12345678','123456789','AdminFather','5555','TN','Ind','India','Tamilnadu','','LayamLayam','600001',1,'2020-06-22 10:00:00','0','0','0',0,'0','0','',0,NULL,'',1,'Forex 35',0,0,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0,0,0,0);
/*!40000 ALTER TABLE `_tbl_Members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_Members_Packages`
--

DROP TABLE IF EXISTS `_tbl_Members_Packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_Members_Packages` (
  `MemberPackageID` int(11) NOT NULL AUTO_INCREMENT,
  `MemberID` int(11) DEFAULT '0',
  `PackageID` int(11) DEFAULT '0',
  `PackageActivatedOn` datetime DEFAULT NULL,
  `PackageName` varchar(255) DEFAULT NULL,
  `PackageCost` varchar(255) DEFAULT NULL,
  `BooserExpireOn` datetime DEFAULT NULL,
  `BoosterEnabled` int(11) DEFAULT '0',
  `BoosterEnabledOn` datetime DEFAULT NULL,
  `IsActive` int(11) DEFAULT '1',
  `ROI_PayoutID` int(11) DEFAULT '0',
  PRIMARY KEY (`MemberPackageID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_Members_Packages`
--

LOCK TABLES `_tbl_Members_Packages` WRITE;
/*!40000 ALTER TABLE `_tbl_Members_Packages` DISABLE KEYS */;
INSERT INTO `_tbl_Members_Packages` VALUES (1,1,1,'2020-06-22 00:00:00','Forex 35','35','2020-06-29 00:00:00',0,'0000-00-00 00:00:00',1,1);
/*!40000 ALTER TABLE `_tbl_Members_Packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_Settings_Packages`
--

DROP TABLE IF EXISTS `_tbl_Settings_Packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_Settings_Packages` (
  `PackageID` int(11) NOT NULL AUTO_INCREMENT,
  `PackageName` varchar(255) DEFAULT NULL,
  `PV` varchar(255) DEFAULT NULL,
  `PackageAmount` varchar(255) DEFAULT NULL,
  `FileName` varchar(255) DEFAULT NULL,
  `Prefix` varchar(255) DEFAULT NULL,
  `CutOffPV` varchar(255) DEFAULT NULL,
  `PVAmount` int(255) DEFAULT '1',
  `DirectReferalCommission` varchar(255) DEFAULT NULL,
  `DirectReferal_Days` int(11) DEFAULT '0',
  `BinaryCommission` varchar(255) DEFAULT NULL,
  `BinaryCommission_Days` int(11) DEFAULT '0',
  `ROI` varchar(255) DEFAULT NULL,
  `ROI_Days` int(3) DEFAULT NULL,
  `IsActive` int(1) DEFAULT '1',
  `PackageOrder` int(3) DEFAULT NULL,
  `ROI_Booster_Commission` float DEFAULT NULL,
  `ROI_Booster_Days` int(3) DEFAULT '0',
  `ROI_StartDay` int(3) DEFAULT '0',
  `ROI_Booster_Apply_Before` int(3) DEFAULT '0',
  PRIMARY KEY (`PackageID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_Settings_Packages`
--

LOCK TABLES `_tbl_Settings_Packages` WRITE;
/*!40000 ALTER TABLE `_tbl_Settings_Packages` DISABLE KEYS */;
INSERT INTO `_tbl_Settings_Packages` VALUES (1,'Forex 35','35','35','diamond.png','Forex 35','35',1,'1',60,'5',1,'2',90,1,NULL,10,18,7,5),(2,'Forex 80','80','80','diamond.png','Forex 80','80',1,'1',60,'5',1,'2',90,1,NULL,10,18,7,5),(4,'commodity 350','350','350','diamond.png','commodity 350','100',1,'0.5',70,'10',1,'2.5',70,0,NULL,10,18,7,5),(5,'Commodity 700','700','700','diamond.png','Commodity 700','100',1,'0.5',70,'10',1,'2.5',70,0,NULL,10,18,7,5),(6,'Commodity 1500','1500','1500','diamond.png','Commodity 1500','100',1,'0.5',70,'10',1,'2.5',70,0,NULL,10,18,7,5),(7,'Commodity 5000','5000','5000','diamond.png','Commodity 5000','100',1,'0.5',70,'5',1,'2.5',70,0,NULL,10,18,7,5),(8,'Crypto 15K','15000','15000','diamond.png','Crypto 15K','100',1,'1',60,'5',1,'1.5',120,0,NULL,10,18,7,5),(9,'Crypto 10K','6000','6000','diamond.png','Crypto 10K','100',1,'1',60,'5',1,'1.5',120,0,NULL,10,18,7,5),(13,'Crypto 3K','3000','3000','diamond.png','Crypto 3K','100',1,'1',60,'5',1,'1.5',120,0,NULL,10,18,7,5),(14,'Crypto 501','501','501','diamond.png','Crypto 501','100',1,'1',60,'5',1,'1.5',120,0,NULL,10,18,7,5),(15,'Crypto 1001','1001','1001','diamond.png','Crypto 1001','100',1,'1',60,'5',1,'1.5',120,0,NULL,10,18,7,5),(16,'Forex 150','150','150','diamond.png','Forex 150','100',1,'1',60,'5',1,'2',90,1,NULL,10,18,7,5),(17,'Commodity 143','143','143','diamond.png','Commodity 143','100',1,'1',40,'5',1,'2.5',70,0,NULL,10,18,7,5),(18,'Fx 300','300','300','diamond.png','Fx 300','300',1,'0.5',40,'10',1,'4',40,1,NULL,10,18,7,2),(19,'Fx 1000','1000','1000','diamond.png','Fx 1000','300',1,'0.5',40,'10',1,'4',40,1,NULL,10,18,7,2),(20,'Fx 100','100','100','diamond.png','Fx 100','300',1,'0.5',40,'10',1,'4',40,0,NULL,10,18,7,2),(21,'Fx 3000','3000','3000','diamond.png','Fx 3000','300',1,'0.5',40,'10',1,'4',40,1,NULL,10,18,7,2);
/*!40000 ALTER TABLE `_tbl_Settings_Packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_Settings_Params`
--

DROP TABLE IF EXISTS `_tbl_Settings_Params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_Settings_Params` (
  `ParamID` int(11) NOT NULL AUTO_INCREMENT,
  `ParamCode` varchar(255) DEFAULT NULL,
  `ParamLabel` varchar(255) DEFAULT NULL,
  `ParamValue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ParamID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_Settings_Params`
--

LOCK TABLES `_tbl_Settings_Params` WRITE;
/*!40000 ALTER TABLE `_tbl_Settings_Params` DISABLE KEYS */;
INSERT INTO `_tbl_Settings_Params` VALUES (1,'MinWithdrawal','Minimum withdrawal amount (Rs)','5'),(2,'MaxWithdrawal','Maximum withdrawal amount (%)','95'),(3,'PayoutMode','Payout ','2'),(4,'MinPayout','Minimum payout amount (Rs)','1000'),(5,'PayoutCharges','Payout charges (%)','10'),(6,'MemberCodePrefix','Member Prefix','AF'),(7,'MemberCodeLength','Member Code Length','5'),(8,'EpinPrefix','E-Pin Prefix','epin'),(9,'EpinLength','E-Pin Length','8'),(10,'EpinPwdLength','E-Pin Password Length','8'),(11,'DefaultPackageID','Default Package ','1'),(12,'PayoutCutOff','Maximum Payout CutOff','1000'),(13,'InitialBusTicket','Initial BusTicket API','300000'),(14,'InitialRecharge','Initial Recharge API','800000'),(15,'MaxPayout','Maximum Payout (Rs)','10000'),(16,'MobileSMSSendAPI','Mobile SMS Send API',''),(17,'MobileSMSBalanceAPI','Mobile SMS Balance API',''),(18,'MaximumLevels','Maximum Downline','10'),(19,'EnableSendSMS','Send Mobile SMS','0'),(20,'AllowDuplicateMobile','Is allow duplicate Mobile Number?','1'),(21,'IsMobileIsMandatory','Is Mobile Number mandatory?','1'),(22,'AllowDuplicatePanCard','Is allow duplicate PanCard?','1'),(23,'IsPanCardIsMandatory','Is PanCard mandatory?','1'),(24,'AllowDuplicateEmail','Is allow duplicate Email? ','1'),(25,'IsEmailMandatory','Is Email mandatory?','1'),(26,'MemberPasswordLength','Member password length','6'),(27,'AdminLoginMobileOTPRequired','Is enable send Mobile SMS OTP When Admin Login','0'),(28,'AdminLoginEmailOTPRequired','Is enable send Email OTP When Admin Login','1'),(29,'MemberLoginMobileOTPRequired','Is enable send Mobile SMS OTP When Member Login','0'),(30,'MemberLoginEmailOTPRequired','Is enable send EMail OTP When Member Login','0'),(31,'SMTP_HostUrl','SMTP Host Name',''),(32,'SMTP_UserName','SMTP User Name',''),(33,'SMTP_Password','SMTP Password',''),(34,'SMTP_Port','SMTP Port Number',''),(35,'SMTP_Secure','SMTP Protocal',''),(36,'SMTP_SenderName','Sender Name',''),(37,'EnableEMail','Is enable Email Service','0'),(38,'WhatsappSendAPI','Mobile SMS Send API',''),(39,'WhatsappBalanceAPI','Mobile SMS Balance API',''),(40,'WhatsappSendSMS','Send Whatsapp SMS','0'),(42,'MemberLoginWhatsappOTPRequired','Is enable send Whatsapp SMS OTP When Member Login','0'),(43,'AdminLoginWhatsappOTPRequired','Is enable send Whatsapp SMS OTP When Admin Login','0');
/*!40000 ALTER TABLE `_tbl_Settings_Params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_admin`
--

DROP TABLE IF EXISTS `_tbl_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_admin` (
  `AdminID` int(11) NOT NULL AUTO_INCREMENT,
  `AdminCode` varchar(255) DEFAULT NULL,
  `AdminName` varchar(255) DEFAULT NULL,
  `MobileNumber` varchar(255) DEFAULT NULL,
  `AdminEmail` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `DateofBirth` varchar(255) DEFAULT NULL,
  `Address1` varchar(255) DEFAULT NULL,
  `Address2` varchar(255) DEFAULT NULL,
  `PostalCode` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `StateName` varchar(255) DEFAULT NULL,
  `CountryName` varchar(255) DEFAULT NULL,
  `DistrictName` varchar(255) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`AdminID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_admin`
--

LOCK TABLES `_tbl_admin` WRITE;
/*!40000 ALTER TABLE `_tbl_admin` DISABLE KEYS */;
INSERT INTO `_tbl_admin` VALUES (2,'AD0001','admin','9000000000','admin@admin.com','password','','','','','','','','','','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `_tbl_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_admin_bank_details`
--

DROP TABLE IF EXISTS `_tbl_admin_bank_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_admin_bank_details` (
  `BankID` int(11) NOT NULL AUTO_INCREMENT,
  `BankName` varchar(255) DEFAULT NULL,
  `AccountHolderName` varchar(255) DEFAULT NULL,
  `AccountNumber` varchar(255) DEFAULT NULL,
  `IFSCode` varchar(255) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`BankID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_admin_bank_details`
--

LOCK TABLES `_tbl_admin_bank_details` WRITE;
/*!40000 ALTER TABLE `_tbl_admin_bank_details` DISABLE KEYS */;
INSERT INTO `_tbl_admin_bank_details` VALUES (1,'AstraFX Wallet','','','','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `_tbl_admin_bank_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_admin_login_logs`
--

DROP TABLE IF EXISTS `_tbl_admin_login_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_admin_login_logs` (
  `LoginID` int(11) NOT NULL AUTO_INCREMENT,
  `AdminID` int(11) DEFAULT NULL,
  `LoginOn` datetime DEFAULT NULL,
  `IsSuccess` int(11) DEFAULT NULL,
  PRIMARY KEY (`LoginID`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_admin_login_logs`
--

LOCK TABLES `_tbl_admin_login_logs` WRITE;
/*!40000 ALTER TABLE `_tbl_admin_login_logs` DISABLE KEYS */;
INSERT INTO `_tbl_admin_login_logs` VALUES (1,2,'2020-06-05 19:23:25',1),(2,2,'2020-06-06 05:52:22',1),(3,2,'2020-06-06 16:29:51',1),(4,2,'2020-06-06 20:34:27',1),(5,2,'2020-06-06 22:59:58',1),(6,2,'2020-06-07 09:17:37',1),(7,2,'2020-06-08 09:55:27',1),(8,2,'2020-06-08 10:40:12',1),(9,2,'2020-06-08 11:18:30',1),(10,2,'2020-06-08 12:23:43',1),(11,2,'2020-06-08 12:35:55',1),(12,2,'2020-06-08 12:45:08',1),(13,2,'2020-06-08 13:16:01',1),(14,2,'2020-06-08 13:40:14',1),(15,2,'2020-06-08 14:11:13',1),(16,2,'2020-06-08 14:31:39',1),(17,2,'2020-06-08 14:37:19',1),(18,2,'2020-06-09 10:31:48',1),(19,2,'2020-06-09 13:04:06',1),(20,2,'2020-06-09 16:01:16',1),(21,2,'2020-06-09 19:02:00',1),(22,2,'2020-06-09 19:06:27',1),(23,2,'2020-06-09 19:41:24',1),(24,2,'2020-06-10 10:05:41',1),(25,2,'2020-06-10 14:53:49',1),(26,2,'2020-06-10 14:59:08',1),(27,2,'2020-06-10 15:05:55',1),(28,2,'2020-06-10 17:00:24',1),(29,2,'2020-06-10 17:02:19',1),(30,2,'2020-06-10 17:04:31',1),(31,2,'2020-06-10 17:18:00',1),(32,2,'2020-06-10 17:21:17',1),(33,2,'2020-06-10 17:23:21',1),(34,2,'2020-06-12 12:12:54',1),(35,2,'2020-06-12 19:16:12',1),(36,2,'2020-06-13 22:40:05',1),(37,2,'2020-06-14 09:04:06',1),(38,2,'2020-06-14 09:30:04',1),(39,2,'2020-06-14 13:54:43',1),(40,2,'2020-06-14 14:36:30',1),(41,2,'2020-06-14 14:39:10',1),(42,2,'2020-06-14 15:29:57',1),(43,2,'2020-06-14 15:50:50',1),(44,2,'2020-06-14 16:04:56',1),(45,2,'2020-06-15 08:29:02',1),(46,2,'2020-06-15 08:54:53',1),(47,2,'2020-06-15 10:18:14',1),(48,2,'2020-06-15 12:35:10',1),(49,2,'2020-06-15 12:44:34',1),(50,2,'2020-06-15 12:52:50',1),(51,2,'2020-06-15 14:34:27',1),(52,2,'2020-06-15 22:12:47',1),(53,2,'2020-06-16 10:27:48',1),(54,2,'2020-06-16 11:51:58',1),(55,2,'2020-06-16 19:27:01',1),(56,2,'2020-06-16 21:36:16',1),(57,2,'2020-06-17 07:13:40',1),(58,2,'2020-06-17 11:05:40',1),(59,2,'2020-06-17 12:04:00',1),(60,2,'2020-06-17 12:04:13',1),(61,2,'2020-06-17 13:38:39',1),(62,2,'2020-06-17 14:48:47',1),(63,2,'2020-06-17 20:25:09',1),(64,2,'2020-06-18 07:04:49',1),(65,2,'2020-06-18 12:41:22',1),(66,2,'2020-06-18 13:10:51',1),(67,2,'2020-06-18 13:31:05',1),(68,2,'2020-06-18 14:07:04',1),(69,2,'2020-06-18 14:28:44',1),(70,2,'2020-06-18 14:31:29',1),(71,2,'2020-06-18 19:44:25',1),(72,2,'2020-06-18 19:55:31',1),(73,2,'2020-06-20 13:13:45',1),(74,2,'2020-06-20 14:12:43',1),(75,2,'2020-06-20 15:14:19',1),(76,2,'2020-06-20 21:20:13',1),(77,2,'2020-06-21 18:38:26',1),(78,2,'2020-06-21 18:56:51',1),(79,2,'2020-06-21 20:27:38',1),(80,2,'2020-06-21 21:52:33',1),(81,2,'2020-06-22 11:44:28',1);
/*!40000 ALTER TABLE `_tbl_admin_login_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_bank_info`
--

DROP TABLE IF EXISTS `_tbl_bank_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_bank_info` (
  `BankID` int(11) NOT NULL AUTO_INCREMENT,
  `MemberCode` varchar(255) DEFAULT NULL,
  `BankName` varchar(255) DEFAULT NULL,
  `AccountHolderName` varchar(255) DEFAULT NULL,
  `AccountNumber` varchar(255) DEFAULT NULL,
  `IFSCode` varchar(255) DEFAULT NULL,
  `BankFile` varchar(255) DEFAULT NULL,
  `IsSubmit` int(11) DEFAULT '0',
  `SubmittedOn` datetime DEFAULT NULL,
  `ApprovedOn` datetime DEFAULT NULL,
  `RejectedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`BankID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_bank_info`
--

LOCK TABLES `_tbl_bank_info` WRITE;
/*!40000 ALTER TABLE `_tbl_bank_info` DISABLE KEYS */;
INSERT INTO `_tbl_bank_info` VALUES (4,'AstraFx00001',NULL,'bbb','666','777','1591787841_index.jpg',2,'2020-06-10 16:47:27','2020-06-10 16:08:43','2020-06-10 16:09:15'),(11,'AFDEM00002',NULL,'Jeyaraj','Jeyaraj123','123456',NULL,0,NULL,NULL,NULL),(12,'AFAST00002',NULL,'','','',NULL,0,NULL,NULL,NULL),(13,'AFAST00003',NULL,'','','',NULL,0,NULL,NULL,NULL),(14,'AFAFA00004',NULL,'dfgd','dgdfg','hfgh','1592381292_sunflwer.jpg',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `_tbl_bank_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_bank_names`
--

DROP TABLE IF EXISTS `_tbl_bank_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_bank_names` (
  `BankID` int(11) NOT NULL AUTO_INCREMENT,
  `BankName` varchar(255) DEFAULT NULL,
  `IsActive` int(11) DEFAULT '1',
  PRIMARY KEY (`BankID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_bank_names`
--

LOCK TABLES `_tbl_bank_names` WRITE;
/*!40000 ALTER TABLE `_tbl_bank_names` DISABLE KEYS */;
INSERT INTO `_tbl_bank_names` VALUES (1,'Indian Overseas Bank',1),(2,'State Bank of India',1),(3,'Bank of Baroda ',1),(4,'Bank of India',1),(5,'Bank of Maharashtra ',1),(6,'Canara Bank ',1),(7,'Central Bank of India ',1),(8,'Indian Bank',1),(9,'Punjab AND Sind Bank',1),(10,'Punjab NATIONAL Bank ',1),(11,'UCO Bank ',1),(12,'UNION Bank of India ',1),(13,'Axis Bank',1),(14,'Bandhan Bank',1),(15,'Catholic Syrian Bank',1),(16,'City UNION Bank',1),(17,'DCB Bank',1),(18,'Dhanlaxmi Bank',1),(19,'Federal Bank',1),(20,'HDFC Bank',1),(21,'ICICI Bank',1),(22,'IDBI Bank',1),(23,'IDFC FIRST Bank',1),(24,'IndusInd Bank',1),(25,'Jammu & Kashmir Bank',1),(26,'Karnataka Bank',1),(27,'Karur Vysya Bank',1),(28,'Kotak Mahindra Bank',1),(29,'Lakshmi Vilas Bank',1),(30,'Nainital Bank',1),(31,'RBL Bank',1),(32,'South Indian Bank',1),(33,'Tamilnad Mercantile Bank Limited',1),(34,'Yes Bank',1);
/*!40000 ALTER TABLE `_tbl_bank_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_bank_transfer`
--

DROP TABLE IF EXISTS `_tbl_bank_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_bank_transfer` (
  `BankTransferID` int(11) NOT NULL AUTO_INCREMENT,
  `MemberID` int(11) DEFAULT NULL,
  `MemberCode` varchar(255) DEFAULT NULL,
  `ReportDate` datetime DEFAULT NULL,
  `ToBankAccountNumber` varchar(255) DEFAULT NULL,
  `ToBankAccountName` varchar(255) DEFAULT NULL,
  `ToBankIFSCode` varchar(255) DEFAULT NULL,
  `AmountInUSD` varchar(255) DEFAULT NULL,
  `AmountInINR` varchar(255) DEFAULT NULL,
  `TransactionMode` varchar(255) DEFAULT NULL,
  `BankRefNumber` varchar(255) DEFAULT NULL,
  `BankTransferOn` varchar(255) DEFAULT NULL,
  `APIID` int(11) DEFAULT NULL,
  `Remkars` varchar(255) DEFAULT NULL,
  `IsProcessed` int(11) DEFAULT '0',
  PRIMARY KEY (`BankTransferID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_bank_transfer`
--

LOCK TABLES `_tbl_bank_transfer` WRITE;
/*!40000 ALTER TABLE `_tbl_bank_transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `_tbl_bank_transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_contact_us`
--

DROP TABLE IF EXISTS `_tbl_contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_contact_us` (
  `ContactID` int(11) NOT NULL AUTO_INCREMENT,
  `ContactName` varchar(255) DEFAULT NULL,
  `EmailID` varchar(255) DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `YourQuestions` varchar(255) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`ContactID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_contact_us`
--

LOCK TABLES `_tbl_contact_us` WRITE;
/*!40000 ALTER TABLE `_tbl_contact_us` DISABLE KEYS */;
/*!40000 ALTER TABLE `_tbl_contact_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_direct_referal`
--

DROP TABLE IF EXISTS `_tbl_direct_referal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_direct_referal` (
  `DirectReferal` int(11) NOT NULL AUTO_INCREMENT,
  `TxnDate` date DEFAULT NULL,
  `MemberCode` varchar(255) DEFAULT NULL,
  `ReferedMember` varchar(255) DEFAULT NULL,
  `PlanID` int(11) DEFAULT NULL,
  `Earning` varchar(255) DEFAULT NULL,
  `AddedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`DirectReferal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_direct_referal`
--

LOCK TABLES `_tbl_direct_referal` WRITE;
/*!40000 ALTER TABLE `_tbl_direct_referal` DISABLE KEYS */;
/*!40000 ALTER TABLE `_tbl_direct_referal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_latest_news`
--

DROP TABLE IF EXISTS `_tbl_latest_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_latest_news` (
  `NewsID` int(11) NOT NULL AUTO_INCREMENT,
  `NewsTitle` varchar(255) DEFAULT NULL,
  `NewsDescription` varchar(255) DEFAULT NULL,
  `NewsOn` datetime DEFAULT NULL,
  `IsPublish` int(11) DEFAULT '1',
  PRIMARY KEY (`NewsID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_latest_news`
--

LOCK TABLES `_tbl_latest_news` WRITE;
/*!40000 ALTER TABLE `_tbl_latest_news` DISABLE KEYS */;
INSERT INTO `_tbl_latest_news` VALUES (1,'aa','cc','2020-06-08 13:12:02',1),(2,'s news','second news','2020-06-08 14:04:00',1);
/*!40000 ALTER TABLE `_tbl_latest_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_ledger`
--

DROP TABLE IF EXISTS `_tbl_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_ledger` (
  `ledgerID` int(11) NOT NULL AUTO_INCREMENT,
  `LedgerName` varchar(255) DEFAULT NULL,
  `LedgerCode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ledgerID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_ledger`
--

LOCK TABLES `_tbl_ledger` WRITE;
/*!40000 ALTER TABLE `_tbl_ledger` DISABLE KEYS */;
INSERT INTO `_tbl_ledger` VALUES (1,'Wallet update from admin to member',NULL),(2,'ROI Inomce Credits','2'),(3,'Binary Income Credits','3'),(4,'Referral Income Credits','4'),(5,'Working Payout To Member Bank',NULL),(6,'ROI To Member Bank',NULL),(7,'Banking Charges',NULL),(8,'Binary Income Charges','30001'),(9,'Referral Income Charges','40001'),(10,'ROI Income Charges','20001');
/*!40000 ALTER TABLE `_tbl_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_logs_email`
--

DROP TABLE IF EXISTS `_tbl_logs_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_logs_email` (
  `EmailLogID` int(11) NOT NULL AUTO_INCREMENT,
  `MemberID` int(11) DEFAULT '0',
  `FranchiseeID` int(11) DEFAULT '0',
  `AdminID` int(11) DEFAULT '0',
  `EmailTo` varchar(255) DEFAULT NULL,
  `EmaildFor` varchar(255) DEFAULT NULL,
  `EmailSubject` text,
  `EmailContent` text,
  `EmailRequestedOn` datetime DEFAULT NULL,
  `EmailAPIID` int(11) DEFAULT '0',
  `APIRequestedOn` datetime DEFAULT NULL,
  `APIResponse` text,
  `IsSuccess` int(11) DEFAULT '0',
  `IsFailure` int(11) DEFAULT '0',
  `FailureMessage` text,
  PRIMARY KEY (`EmailLogID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_logs_email`
--

LOCK TABLES `_tbl_logs_email` WRITE;
/*!40000 ALTER TABLE `_tbl_logs_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `_tbl_logs_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_member_bank_details`
--

DROP TABLE IF EXISTS `_tbl_member_bank_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_member_bank_details` (
  `BankID` int(11) NOT NULL AUTO_INCREMENT,
  `MemberID` int(11) DEFAULT NULL,
  `BankName` varchar(255) DEFAULT NULL,
  `AccountNumber` varchar(255) DEFAULT NULL,
  `IFSCode` varchar(255) DEFAULT NULL,
  `AccountName` varchar(255) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`BankID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_member_bank_details`
--

LOCK TABLES `_tbl_member_bank_details` WRITE;
/*!40000 ALTER TABLE `_tbl_member_bank_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `_tbl_member_bank_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_members_login_logs`
--

DROP TABLE IF EXISTS `_tbl_members_login_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_members_login_logs` (
  `LoginID` int(11) NOT NULL AUTO_INCREMENT,
  `MemberID` int(11) DEFAULT NULL,
  `LoginOn` datetime DEFAULT NULL,
  `IsSuccess` int(11) DEFAULT NULL,
  PRIMARY KEY (`LoginID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_members_login_logs`
--

LOCK TABLES `_tbl_members_login_logs` WRITE;
/*!40000 ALTER TABLE `_tbl_members_login_logs` DISABLE KEYS */;
INSERT INTO `_tbl_members_login_logs` VALUES (1,1,'2020-06-15 10:30:51',1),(2,1,'2020-06-15 11:27:06',1),(3,1,'2020-06-15 11:44:40',1),(4,1,'2020-06-15 11:48:49',1),(5,1,'2020-06-15 11:51:33',1),(6,1,'2020-06-15 12:40:27',1),(7,1,'2020-06-15 12:52:00',1),(8,1,'2020-06-15 13:39:38',1),(9,1,'2020-06-15 13:52:00',1),(10,1,'2020-06-15 14:34:21',1),(11,1,'2020-06-15 14:51:30',1),(12,1,'2020-06-15 15:29:34',1),(13,1,'2020-06-15 19:40:35',1),(14,1,'2020-06-16 09:52:11',1),(15,1,'2020-06-16 10:08:20',1),(16,1,'2020-06-16 15:58:30',1),(17,1,'2020-06-16 16:41:23',1),(18,1,'2020-06-16 20:23:14',1),(19,1,'2020-06-17 10:17:12',1),(20,1,'2020-06-17 10:54:31',1),(21,1,'2020-06-17 11:10:38',1),(22,14,'2020-06-17 14:34:01',1),(23,1,'2020-06-17 17:10:16',1),(24,1,'2020-06-17 20:18:33',1),(25,1,'2020-06-18 09:20:36',1),(26,14,'2020-06-18 09:26:00',1),(27,1,'2020-06-18 09:28:33',1),(28,1,'2020-06-18 10:03:36',1),(29,1,'2020-06-18 13:11:20',1),(30,1,'2020-06-18 16:29:28',1),(31,1,'2020-06-19 18:13:17',1),(32,1,'2020-06-20 21:46:11',1),(33,1,'2020-06-22 10:26:40',1),(34,1,'2020-06-22 10:29:20',1);
/*!40000 ALTER TABLE `_tbl_members_login_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_news`
--

DROP TABLE IF EXISTS `_tbl_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_news` (
  `NewsID` int(11) NOT NULL AUTO_INCREMENT,
  `NewsTitle` varchar(255) DEFAULT NULL,
  `NewsDescription` text,
  `CreatedOn` datetime DEFAULT NULL,
  `IsPublish` int(11) DEFAULT '1',
  PRIMARY KEY (`NewsID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_news`
--

LOCK TABLES `_tbl_news` WRITE;
/*!40000 ALTER TABLE `_tbl_news` DISABLE KEYS */;
INSERT INTO `_tbl_news` VALUES (1,'Pre - Launching offer : ','Daily 10% for 18 days ',NULL,1);
/*!40000 ALTER TABLE `_tbl_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_package_roi_payout_days`
--

DROP TABLE IF EXISTS `_tbl_package_roi_payout_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_package_roi_payout_days` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TxnDate` date DEFAULT NULL,
  `DateFrom` date DEFAULT NULL,
  `DateTo` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_package_roi_payout_days`
--

LOCK TABLES `_tbl_package_roi_payout_days` WRITE;
/*!40000 ALTER TABLE `_tbl_package_roi_payout_days` DISABLE KEYS */;
INSERT INTO `_tbl_package_roi_payout_days` VALUES (1,'2020-07-01','2020-06-15','2020-06-30'),(2,'2020-07-16','2020-07-01','2020-07-15'),(3,'2020-08-01','2020-07-16','2020-07-31'),(4,'2020-08-16','2020-08-01','2020-08-15'),(5,'2020-09-01','2020-08-16','2020-08-31'),(6,'2020-09-16','2020-09-01','2020-09-15'),(7,'2020-10-01','2020-09-16','2020-09-30'),(8,'2020-10-16','2020-10-01','2020-10-15'),(9,'2020-11-01','2020-10-16','2020-10-31'),(10,'2020-11-16','2020-11-01','2020-11-15'),(11,'2020-12-01','2020-11-16','2020-11-30'),(12,'2020-12-16','2020-12-01','2020-12-15'),(13,'2021-01-01','2020-12-16','2020-12-31');
/*!40000 ALTER TABLE `_tbl_package_roi_payout_days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_payout_days`
--

DROP TABLE IF EXISTS `_tbl_payout_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_payout_days` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TxnDate` date DEFAULT NULL,
  `DateFrom` date DEFAULT NULL,
  `DateTo` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_payout_days`
--

LOCK TABLES `_tbl_payout_days` WRITE;
/*!40000 ALTER TABLE `_tbl_payout_days` DISABLE KEYS */;
INSERT INTO `_tbl_payout_days` VALUES (1,'2020-06-20','2020-06-14','2020-06-20'),(2,'0000-00-00',NULL,NULL),(3,'2020-07-04','2020-06-28','2020-07-04'),(4,'2020-07-11','2020-07-05','2020-07-11'),(5,'2020-07-18','2020-07-12','2020-07-18'),(6,'2020-07-25','2020-07-19','2020-07-25'),(7,'2020-08-01','2020-07-26','2020-08-01'),(8,'2020-08-08','2020-08-02','2020-08-08'),(9,'2020-08-15','2020-08-09','2020-08-15'),(10,'2020-08-22','2020-08-16','2020-08-22'),(11,'2020-08-29','2020-08-23','2020-08-29'),(12,'2020-09-05','2020-08-30','2020-09-05'),(13,'2020-09-12','2020-09-06','2020-09-12'),(14,'2020-09-19','2020-09-13','2020-09-19'),(15,'2020-09-26','2020-09-20','2020-09-26'),(16,'2020-10-03','2020-09-27','2020-10-03'),(17,'2020-10-10','2020-10-04','2020-10-10'),(18,'2020-10-17','2020-10-11','2020-10-17'),(19,'2020-10-24','2020-10-18','2020-10-24'),(20,'2020-10-31','2020-10-25','2020-10-31'),(21,'2020-11-07','2020-11-01','2020-11-07'),(22,'2020-11-14','2020-11-08','2020-11-14'),(23,'2020-11-21','2020-11-15','2020-11-21'),(24,'2020-11-28','2020-11-22','2020-11-28'),(25,'2020-12-05','2020-11-29','2020-12-05'),(26,'2020-12-12','2020-12-06','2020-12-12'),(27,'2020-12-19','2020-12-13','2020-12-19'),(28,'2020-12-26','2020-12-20','2020-12-26'),(29,'2021-01-02','2020-12-27','2021-01-02'),(31,'2020-06-27',NULL,NULL);
/*!40000 ALTER TABLE `_tbl_payout_days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_payout_log`
--

DROP TABLE IF EXISTS `_tbl_payout_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_payout_log` (
  `PayoutLogID` int(11) NOT NULL AUTO_INCREMENT,
  `PayoutDate` date DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `EndedOn` datetime DEFAULT NULL,
  `FileName` varchar(255) DEFAULT NULL,
  `CompanyCollectedPV` varchar(255) DEFAULT NULL,
  `TotalPayoutAmount` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PayoutLogID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_payout_log`
--

LOCK TABLES `_tbl_payout_log` WRITE;
/*!40000 ALTER TABLE `_tbl_payout_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `_tbl_payout_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_payout_request_earnings`
--

DROP TABLE IF EXISTS `_tbl_payout_request_earnings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_payout_request_earnings` (
  `RequestID` int(11) NOT NULL AUTO_INCREMENT,
  `MemberID` int(11) DEFAULT NULL,
  `Amount` varchar(255) DEFAULT NULL,
  `BankName` varchar(255) DEFAULT NULL,
  `AccountNumber` varchar(255) DEFAULT NULL,
  `AccountName` varchar(255) DEFAULT NULL,
  `IFSCode` varchar(255) DEFAULT NULL,
  `RequestedOn` datetime DEFAULT NULL,
  `Admin_TxnID` varchar(255) DEFAULT NULL,
  `Admin_FromBank` varchar(255) DEFAULT NULL,
  `Admin_AccountNumber` varchar(255) DEFAULT NULL,
  `Admin_IFSCode` varchar(255) DEFAULT NULL,
  `Admin_TxnDate` datetime DEFAULT NULL,
  `Admin_TxnMode` varchar(255) DEFAULT NULL,
  `IsApproved` int(11) DEFAULT '0',
  `IsApprovedOn` datetime DEFAULT NULL,
  `WalletTransactionID` int(11) DEFAULT '0',
  `IsRejected` int(11) DEFAULT '0',
  `IsRejectedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`RequestID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_payout_request_earnings`
--

LOCK TABLES `_tbl_payout_request_earnings` WRITE;
/*!40000 ALTER TABLE `_tbl_payout_request_earnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `_tbl_payout_request_earnings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_payoutsummary`
--

DROP TABLE IF EXISTS `_tbl_payoutsummary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_payoutsummary` (
  `PayoutID` int(11) NOT NULL AUTO_INCREMENT,
  `PayoutProcessDate` datetime DEFAULT NULL,
  `MemberID` int(11) DEFAULT NULL,
  `MemberCode` varchar(255) DEFAULT NULL,
  `TotalLeft` varchar(11) DEFAULT NULL,
  `TodayLeft` varchar(11) DEFAULT NULL,
  `TotalRight` varchar(11) DEFAULT NULL,
  `TodayRight` varchar(11) DEFAULT NULL,
  `DebitLeft` varchar(11) DEFAULT NULL,
  `DebitRight` varchar(11) DEFAULT NULL,
  `AvailableLeft` varchar(11) DEFAULT NULL,
  `AvailableRight` varchar(11) DEFAULT NULL,
  `TodayPayoutPV` varchar(11) DEFAULT NULL,
  `RemainingLeft` varchar(11) DEFAULT NULL,
  `RemainingRight` varchar(11) DEFAULT NULL,
  `PackageName` varchar(255) DEFAULT NULL,
  `PackageID` varchar(11) DEFAULT NULL,
  `EligibleMinimumPayoutPV` varchar(11) DEFAULT NULL,
  `EligibleMaximumPayoutPV` varchar(11) DEFAULT NULL,
  `PayablePV` varchar(11) DEFAULT NULL,
  `PayableAmount` varchar(11) DEFAULT NULL,
  `Charges` varchar(255) DEFAULT NULL,
  `ChargeAmount` varchar(255) DEFAULT NULL,
  `PayableAmountDebitCharge` varchar(255) DEFAULT NULL,
  `CompanyLeft` varchar(11) DEFAULT NULL,
  `CompanyRight` varchar(11) DEFAULT NULL,
  `processedon` datetime DEFAULT NULL,
  `IsPayoutEligible` int(11) DEFAULT '0',
  PRIMARY KEY (`PayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_payoutsummary`
--

LOCK TABLES `_tbl_payoutsummary` WRITE;
/*!40000 ALTER TABLE `_tbl_payoutsummary` DISABLE KEYS */;
/*!40000 ALTER TABLE `_tbl_payoutsummary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_roi_dates`
--

DROP TABLE IF EXISTS `_tbl_roi_dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_roi_dates` (
  `ROIDAYSID` int(11) NOT NULL AUTO_INCREMENT,
  `TDate` date DEFAULT NULL,
  PRIMARY KEY (`ROIDAYSID`)
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_roi_dates`
--

LOCK TABLES `_tbl_roi_dates` WRITE;
/*!40000 ALTER TABLE `_tbl_roi_dates` DISABLE KEYS */;
INSERT INTO `_tbl_roi_dates` VALUES (1,'2020-06-01'),(2,'2020-06-02'),(3,'2020-06-03'),(4,'2020-06-04'),(5,'2020-06-08'),(6,'2020-06-09'),(7,'2020-06-10'),(8,'2020-06-11'),(9,'2020-06-15'),(10,'2020-06-16'),(11,'2020-06-17'),(12,'2020-06-18'),(13,'2020-06-22'),(14,'2020-06-23'),(15,'2020-06-24'),(16,'2020-06-25'),(17,'2020-06-29'),(18,'2020-06-30'),(19,'2020-07-01'),(20,'2020-07-02'),(21,'2020-07-06'),(22,'2020-07-07'),(23,'2020-07-08'),(24,'2020-07-09'),(25,'2020-07-13'),(26,'2020-07-14'),(27,'2020-07-15'),(28,'2020-07-16'),(29,'2020-07-20'),(30,'2020-07-21'),(31,'2020-07-22'),(32,'2020-07-23'),(33,'2020-07-27'),(34,'2020-07-28'),(35,'2020-07-29'),(36,'2020-07-30'),(37,'2020-08-03'),(38,'2020-08-04'),(39,'2020-08-05'),(40,'2020-08-06'),(41,'2020-08-10'),(42,'2020-08-11'),(43,'2020-08-12'),(44,'2020-08-13'),(45,'2020-08-17'),(46,'2020-08-18'),(47,'2020-08-19'),(48,'2020-08-20'),(49,'2020-08-24'),(50,'2020-08-25'),(51,'2020-08-26'),(52,'2020-08-27'),(53,'2020-08-31'),(54,'2020-09-01'),(55,'2020-09-02'),(56,'2020-09-03'),(57,'2020-09-07'),(58,'2020-09-08'),(59,'2020-09-09'),(60,'2020-09-10'),(61,'2020-09-14'),(62,'2020-09-15'),(63,'2020-09-16'),(64,'2020-09-17'),(65,'2020-09-21'),(66,'2020-09-22'),(67,'2020-09-23'),(68,'2020-09-24'),(69,'2020-09-28'),(70,'2020-09-29'),(71,'2020-09-30'),(72,'2020-10-01'),(73,'2020-10-05'),(74,'2020-10-06'),(75,'2020-10-07'),(76,'2020-10-08'),(77,'2020-10-12'),(78,'2020-10-13'),(79,'2020-10-14'),(80,'2020-10-15'),(81,'2020-10-19'),(82,'2020-10-20'),(83,'2020-10-21'),(84,'2020-10-22'),(85,'2020-10-26'),(86,'2020-10-27'),(87,'2020-10-28'),(88,'2020-10-29'),(89,'2020-11-02'),(90,'2020-11-03'),(91,'2020-11-04'),(92,'2020-11-05'),(93,'2020-11-09'),(94,'2020-11-10'),(95,'2020-11-11'),(96,'2020-11-12'),(97,'2020-11-16'),(98,'2020-11-17'),(99,'2020-11-18'),(100,'2020-11-19'),(101,'2020-11-23'),(102,'2020-11-24'),(103,'2020-11-25'),(104,'2020-11-26'),(105,'2020-11-30'),(106,'2020-12-01'),(107,'2020-12-02'),(108,'2020-12-03'),(109,'2020-12-07'),(110,'2020-12-08'),(111,'2020-12-09'),(112,'2020-12-10'),(113,'2020-12-14'),(114,'2020-12-15'),(115,'2020-12-16'),(116,'2020-12-17'),(117,'2020-12-21'),(118,'2020-12-22'),(119,'2020-12-23'),(120,'2020-12-24'),(121,'2020-12-28'),(122,'2020-12-29'),(123,'2020-12-30'),(124,'2020-12-31'),(125,'2021-01-04'),(126,'2021-01-05'),(127,'2021-01-06'),(128,'2021-01-07'),(129,'2021-01-11'),(130,'2021-01-12'),(131,'2021-01-13'),(132,'2021-01-14'),(133,'2021-01-18'),(134,'2021-01-19'),(135,'2021-01-20'),(136,'2021-01-21'),(137,'2021-01-25'),(138,'2021-01-26'),(139,'2021-01-27'),(140,'2021-01-28'),(141,'2021-02-01'),(142,'2021-02-02'),(143,'2021-02-03'),(144,'2021-02-04'),(145,'2021-02-08'),(146,'2021-02-09'),(147,'2021-02-10'),(148,'2021-02-11'),(149,'2021-02-15'),(150,'2021-02-16'),(151,'2021-02-17'),(152,'2021-02-18'),(153,'2021-02-22'),(154,'2021-02-23'),(155,'2021-02-24'),(156,'2021-02-25'),(157,'2021-03-01'),(158,'2021-03-02'),(159,'2021-03-03'),(160,'2021-03-04'),(161,'2021-03-08'),(162,'2021-03-09'),(163,'2021-03-10'),(164,'2021-03-11'),(165,'2021-03-15'),(166,'2021-03-16'),(167,'2021-03-17'),(168,'2021-03-18'),(169,'2021-03-22'),(170,'2021-03-23'),(171,'2021-03-24'),(172,'2021-03-25'),(173,'2021-03-29'),(174,'2021-03-31'),(175,'2021-04-01'),(176,'2021-04-05'),(177,'2021-04-06'),(178,'2021-04-07'),(179,'2021-04-08'),(180,'2021-04-12'),(181,'2021-04-13'),(182,'2021-04-14'),(183,'2021-04-15'),(184,'2021-04-19'),(185,'2021-04-20'),(186,'2021-04-21'),(187,'2021-04-22'),(188,'2021-04-26'),(189,'2021-04-27'),(190,'2021-04-28'),(191,'2021-04-29'),(192,'2021-05-03'),(193,'2021-05-04'),(194,'2021-05-05'),(195,'2021-05-06'),(196,'2021-05-10'),(197,'2021-05-11'),(198,'2021-05-12'),(199,'2021-05-13'),(200,'2021-05-17'),(201,'2021-05-18'),(202,'2021-05-19'),(203,'2021-05-20'),(204,'2021-05-24'),(205,'2021-05-25'),(206,'2021-05-26'),(207,'2021-05-27'),(208,'2021-05-31'),(209,'2021-06-01'),(210,'2021-06-02'),(211,'2021-06-03'),(212,'2021-06-07'),(213,'2021-06-08'),(214,'2021-06-09'),(215,'2021-06-10'),(216,'2021-06-14'),(217,'2021-06-15'),(218,'2021-06-16'),(219,'2021-06-17'),(220,'2021-06-21'),(221,'2021-06-22'),(222,'2021-06-23'),(223,'2021-06-24'),(224,'2021-06-28'),(225,'2021-06-29'),(226,'2021-06-30'),(227,'2021-07-01'),(228,'2021-07-05'),(229,'2021-07-06'),(230,'2021-07-07'),(231,'2021-07-08'),(232,'2021-07-12'),(233,'2021-07-13'),(234,'2021-07-14'),(235,'2021-07-15'),(236,'2021-07-19'),(237,'2021-07-20'),(238,'2021-07-21'),(239,'2021-07-22'),(240,'2021-07-26'),(241,'2021-07-27'),(242,'2021-07-28'),(243,'2021-07-29'),(244,'2021-08-02'),(245,'2021-08-03'),(246,'2021-08-04'),(247,'2021-08-05'),(248,'2021-08-09'),(249,'2021-08-10'),(250,'2021-08-11'),(251,'2021-08-12'),(252,'2021-08-16'),(253,'2021-08-17'),(254,'2021-08-18'),(255,'2021-08-19'),(256,'2021-08-23'),(257,'2021-08-24'),(258,'2021-08-25'),(259,'2021-08-26'),(260,'2021-08-30'),(261,'2021-08-31'),(262,'2021-09-01'),(263,'2021-09-02'),(264,'2021-09-06'),(265,'2021-09-07'),(266,'2021-09-08'),(267,'2021-09-09'),(268,'2021-09-13'),(269,'2021-09-14'),(270,'2021-09-15'),(271,'2021-09-16'),(272,'2021-09-20'),(273,'2021-09-21'),(274,'2021-09-22'),(275,'2021-09-23'),(276,'2021-09-27'),(277,'2021-09-28'),(278,'2021-09-29'),(279,'2021-09-30'),(280,'2021-10-04'),(281,'2021-10-05'),(282,'2021-10-06'),(283,'2021-10-07'),(284,'2021-10-11'),(285,'2021-10-12'),(286,'2021-10-13'),(287,'2021-10-14'),(288,'2021-10-18'),(289,'2021-10-19'),(290,'2021-10-20'),(291,'2021-10-21'),(292,'2021-10-25'),(293,'2021-10-26'),(294,'2021-10-27'),(295,'2021-10-28'),(296,'2021-11-01'),(297,'2021-11-02'),(298,'2021-11-03'),(299,'2021-11-04'),(300,'2021-11-08'),(301,'2021-11-09'),(302,'2021-11-10'),(303,'2021-11-11'),(304,'2021-11-15'),(305,'2021-11-16'),(306,'2021-11-17'),(307,'2021-11-18'),(308,'2021-11-22'),(309,'2021-11-23'),(310,'2021-11-24'),(311,'2021-11-25'),(312,'2021-11-29'),(313,'2021-11-30'),(314,'2021-12-01'),(315,'2021-12-02'),(316,'2021-12-06'),(317,'2021-12-07'),(318,'2021-12-08'),(319,'2021-12-09'),(320,'2021-12-13'),(321,'2021-12-14'),(322,'2021-12-15'),(323,'2021-12-16'),(324,'2021-12-20'),(325,'2021-12-21'),(326,'2021-12-22'),(327,'2021-12-23'),(328,'2021-12-27'),(329,'2021-12-28'),(330,'2021-12-29'),(331,'2021-12-30');
/*!40000 ALTER TABLE `_tbl_roi_dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_wallet_earnings`
--

DROP TABLE IF EXISTS `_tbl_wallet_earnings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_wallet_earnings` (
  `EarningID` int(11) NOT NULL AUTO_INCREMENT,
  `MemberID` int(11) DEFAULT NULL,
  `MemberCode` varchar(255) DEFAULT NULL,
  `Particulars` varchar(255) DEFAULT NULL,
  `TxnDate` datetime DEFAULT NULL,
  `Credits` varchar(255) DEFAULT NULL,
  `Debits` varchar(255) DEFAULT NULL,
  `AvailableBalance` varchar(255) DEFAULT NULL,
  `details` text,
  `Ledger` int(11) DEFAULT '0',
  PRIMARY KEY (`EarningID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_wallet_earnings`
--

LOCK TABLES `_tbl_wallet_earnings` WRITE;
/*!40000 ALTER TABLE `_tbl_wallet_earnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `_tbl_wallet_earnings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_tbl_wallet_request_utility`
--

DROP TABLE IF EXISTS `_tbl_wallet_request_utility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tbl_wallet_request_utility` (
  `RequestID` int(11) NOT NULL AUTO_INCREMENT,
  `MemberID` int(11) DEFAULT NULL,
  `RequestedOn` datetime DEFAULT NULL,
  `Amount` varchar(255) DEFAULT NULL,
  `BankName` varchar(255) DEFAULT NULL,
  `AccountNumber` varchar(255) DEFAULT NULL,
  `IFSCode` varchar(255) DEFAULT NULL,
  `Mode` varchar(255) DEFAULT NULL,
  `TransactionNumber` varchar(255) DEFAULT NULL,
  `TransferDate` datetime DEFAULT NULL,
  `WalletTransactionID` int(11) DEFAULT NULL,
  `TransactionOn` datetime DEFAULT NULL,
  `IsApproved` int(11) DEFAULT '0',
  `IsApprovedOn` datetime DEFAULT NULL,
  `IsRejected` int(11) DEFAULT '0',
  `IsRejectedOn` datetime DEFAULT NULL,
  `WithdrawRequestID` int(11) DEFAULT NULL,
  `OldBalance` varchar(255) DEFAULT NULL,
  `NewBalance` varchar(255) DEFAULT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RequestID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_wallet_request_utility`
--

LOCK TABLES `_tbl_wallet_request_utility` WRITE;
/*!40000 ALTER TABLE `_tbl_wallet_request_utility` DISABLE KEYS */;
/*!40000 ALTER TABLE `_tbl_wallet_request_utility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_working_payouts`
--

DROP TABLE IF EXISTS `_working_payouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_working_payouts` (
  `WorkingPayoutID` int(11) NOT NULL AUTO_INCREMENT,
  `MemberID` int(11) DEFAULT NULL,
  `MemberCode` varchar(255) DEFAULT NULL,
  `ReportDateID` int(11) DEFAULT NULL,
  `ReportDate` date DEFAULT NULL,
  `ReportDateFrom` date DEFAULT NULL,
  `ReportDateTo` date DEFAULT NULL,
  `BinaryIncome` varchar(255) DEFAULT NULL,
  `BinaryCharges` varchar(255) DEFAULT NULL,
  `NetBinaryIncome` varchar(255) DEFAULT NULL,
  `ReferralROIIncome` varchar(255) DEFAULT NULL,
  `ReferralROICharges` varchar(255) DEFAULT NULL,
  `NetRefferalROIIncome` varchar(255) DEFAULT NULL,
  `WorkingInomce` varchar(255) DEFAULT NULL,
  `WalletBalance` varchar(255) DEFAULT NULL,
  `PayableWorkingIncome` varchar(255) DEFAULT NULL,
  `MemberBankAccountName` varchar(255) DEFAULT NULL,
  `MemberBankAccountNumber` varchar(255) DEFAULT NULL,
  `MemberIFSCode` varchar(255) DEFAULT NULL,
  `TransferAmount` varchar(255) DEFAULT NULL,
  `TransferOn` datetime DEFAULT NULL,
  `BankReferenceNumber` varchar(255) DEFAULT NULL,
  `IsSettled` int(11) DEFAULT NULL COMMENT '0-scheduled, 1 settled,2 processing',
  `SettledOn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`WorkingPayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_working_payouts`
--

LOCK TABLES `_working_payouts` WRITE;
/*!40000 ALTER TABLE `_working_payouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `_working_payouts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-22 23:30:02
