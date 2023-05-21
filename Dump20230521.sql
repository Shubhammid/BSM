-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: bekarydb
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `category_detail`
--

DROP TABLE IF EXISTS `category_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_detail` (
  `categoryid` int NOT NULL,
  `categoryname` varchar(45) NOT NULL,
  PRIMARY KEY (`categoryid`),
  UNIQUE KEY `categoryid_UNIQUE` (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_detail`
--

LOCK TABLES `category_detail` WRITE;
/*!40000 ALTER TABLE `category_detail` DISABLE KEYS */;
INSERT INTO `category_detail` VALUES (1,'Ice Cream'),(2,'Ice Cake');
/*!40000 ALTER TABLE `category_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_detail`
--

DROP TABLE IF EXISTS `company_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_detail` (
  `Company_Id` int NOT NULL AUTO_INCREMENT,
  `Company_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Company_Id`),
  UNIQUE KEY `companyid_UNIQUE` (`Company_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_detail`
--

LOCK TABLES `company_detail` WRITE;
/*!40000 ALTER TABLE `company_detail` DISABLE KEYS */;
INSERT INTO `company_detail` VALUES (1,'Amul'),(2,'sddsf');
/*!40000 ALTER TABLE `company_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_detail`
--

DROP TABLE IF EXISTS `customer_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_detail` (
  `customerid` int NOT NULL,
  `customername` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `contactno` varchar(45) NOT NULL,
  `emailid` varchar(45) NOT NULL,
  `accbal` varchar(45) NOT NULL,
  PRIMARY KEY (`customerid`),
  UNIQUE KEY `customerid_UNIQUE` (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_detail`
--

LOCK TABLES `customer_detail` WRITE;
/*!40000 ALTER TABLE `customer_detail` DISABLE KEYS */;
INSERT INTO `customer_detail` VALUES (1,'POOJA','Thane','123456789','shubham.midgule17@gmail.com','600'),(2,'Sonali Mane','Vitawa','987456123','sonali.mane456@gmail.com','300');
/*!40000 ALTER TABLE `customer_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_sale`
--

DROP TABLE IF EXISTS `customer_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_sale` (
  `itemid` int NOT NULL,
  `itemname` varchar(45) NOT NULL,
  `qty` varchar(45) NOT NULL,
  `customername` varchar(45) NOT NULL,
  `customercontact` varchar(45) NOT NULL,
  `rate` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`itemid`),
  UNIQUE KEY `itemid_UNIQUE` (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_sale`
--

LOCK TABLES `customer_sale` WRITE;
/*!40000 ALTER TABLE `customer_sale` DISABLE KEYS */;
INSERT INTO `customer_sale` VALUES (1,'Vanilla Cake','2','Siddhesh','7894651322','350','700','PAID'),(2,'Pineapple Cake','3','Tushar','7894561299','400','1200','PAID');
/*!40000 ALTER TABLE `customer_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_detail`
--

DROP TABLE IF EXISTS `item_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_detail` (
  `itemid` int NOT NULL,
  `itemname` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `company` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `qty` varchar(45) NOT NULL,
  `prize` varchar(45) NOT NULL,
  `unit` varchar(45) NOT NULL,
  PRIMARY KEY (`itemid`),
  UNIQUE KEY `itemid_UNIQUE` (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_detail`
--

LOCK TABLES `item_detail` WRITE;
/*!40000 ALTER TABLE `item_detail` DISABLE KEYS */;
INSERT INTO `item_detail` VALUES (1,'Choclate Cake','Ice Cake ','Monginis','Circle','1','350','1 KG'),(2,'Vanilla Cake','Ice Cake ','Monginis','Circle','3','350','4 KG'),(3,'Strawbery','Ice Cake ','Monginis','Circle','5','400','2 KG');
/*!40000 ALTER TABLE `item_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_from`
--

DROP TABLE IF EXISTS `login_from`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_from` (
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`Username`),
  UNIQUE KEY `username_UNIQUE` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_from`
--

LOCK TABLES `login_from` WRITE;
/*!40000 ALTER TABLE `login_from` DISABLE KEYS */;
INSERT INTO `login_from` VALUES ('admin','98765');
/*!40000 ALTER TABLE `login_from` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payable_account`
--

DROP TABLE IF EXISTS `payable_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payable_account` (
  `supplierid` int NOT NULL,
  `suppliername` varchar(45) NOT NULL,
  `bankname` varchar(45) NOT NULL,
  `accno` int NOT NULL,
  `accbal` int NOT NULL,
  `amtpaid` int NOT NULL,
  `paymentdetail` varchar(45) NOT NULL,
  PRIMARY KEY (`supplierid`),
  UNIQUE KEY `supplierid_UNIQUE` (`supplierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payable_account`
--

LOCK TABLES `payable_account` WRITE;
/*!40000 ALTER TABLE `payable_account` DISABLE KEYS */;
INSERT INTO `payable_account` VALUES (1,'Sachin Patil','ICIC',123456,1000,600,'CASH'),(2,'Pratik Rane','HDFC',457896,5000,2000,'PAYTM'),(3,'Priya More','G.P.Parsik ',12346580,3000,1500,'PHONE PAY');
/*!40000 ALTER TABLE `payable_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_order`
--

DROP TABLE IF EXISTS `purchase_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_order` (
  `Itemid` int NOT NULL,
  `Itemname` varchar(45) NOT NULL,
  `Quantity` varchar(45) NOT NULL,
  `Supplierid` varchar(45) NOT NULL,
  `Suppliername` varchar(45) NOT NULL,
  `rate` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL,
  `Status` varchar(45) NOT NULL,
  PRIMARY KEY (`Itemid`),
  UNIQUE KEY `Item Id_UNIQUE` (`Itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_order`
--

LOCK TABLES `purchase_order` WRITE;
/*!40000 ALTER TABLE `purchase_order` DISABLE KEYS */;
INSERT INTO `purchase_order` VALUES (1,'Ice Cream','6','S1','Amol','10','60','UNPAID');
/*!40000 ALTER TABLE `purchase_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receivable_account`
--

DROP TABLE IF EXISTS `receivable_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receivable_account` (
  `customerid` int NOT NULL,
  `customername` varchar(45) NOT NULL,
  `accbal` varchar(45) NOT NULL,
  `amtpaid` varchar(45) NOT NULL,
  `paymentdetail` varchar(45) NOT NULL,
  PRIMARY KEY (`customerid`),
  UNIQUE KEY `customerid_UNIQUE` (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receivable_account`
--

LOCK TABLES `receivable_account` WRITE;
/*!40000 ALTER TABLE `receivable_account` DISABLE KEYS */;
INSERT INTO `receivable_account` VALUES (1,'Tanmay Adak','300','100','CASH'),(2,'Pratik Karande','3000','2000','CASH'),(3,'Ajay Patil','1000','250','GOOGLE PAY');
/*!40000 ALTER TABLE `receivable_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_detail`
--

DROP TABLE IF EXISTS `supplier_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_detail` (
  `supplierid` int NOT NULL,
  `suppliername` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `contactno` varchar(45) NOT NULL,
  `contactperson` varchar(45) NOT NULL,
  `emailid` varchar(45) NOT NULL,
  `bankname` varchar(45) NOT NULL,
  `accno` int NOT NULL,
  `accbal` int NOT NULL,
  PRIMARY KEY (`supplierid`),
  UNIQUE KEY `supplierid_UNIQUE` (`supplierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_detail`
--

LOCK TABLES `supplier_detail` WRITE;
/*!40000 ALTER TABLE `supplier_detail` DISABLE KEYS */;
INSERT INTO `supplier_detail` VALUES (1,'Sachin','Sangli','9966345714','Shubham','sachin@gmail.com','ICIC',123456,79255),(2,'Amar Patil','Thane','147258369','Sakshi','amar.patil123@gmail.com','HDFC',7896,80000);
/*!40000 ALTER TABLE `supplier_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_log` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_log`
--

LOCK TABLES `user_log` WRITE;
/*!40000 ALTER TABLE `user_log` DISABLE KEYS */;
INSERT INTO `user_log` VALUES (1,'Shubham Midgule','7304793123','Vitawa','Administrator');
/*!40000 ALTER TABLE `user_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-21 11:42:15
