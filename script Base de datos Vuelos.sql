CREATE DATABASE  IF NOT EXISTS `databasevuelo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `databasevuelo`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: databasevuelo
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `aeropuerto`
--

DROP TABLE IF EXISTS `aeropuerto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aeropuerto` (
  `idAeropuerto` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `pais` varchar(45) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  PRIMARY KEY (`idAeropuerto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aeropuerto`
--

LOCK TABLES `aeropuerto` WRITE;
/*!40000 ALTER TABLE `aeropuerto` DISABLE KEYS */;
/*!40000 ALTER TABLE `aeropuerto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avion`
--

DROP TABLE IF EXISTS `avion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avion` (
  `matricula` varchar(45) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `capacidad` int NOT NULL,
  `fabricante` varchar(45) NOT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avion`
--

LOCK TABLES `avion` WRITE;
/*!40000 ALTER TABLE `avion` DISABLE KEYS */;
/*!40000 ALTER TABLE `avion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_vuelo_pasajero`
--

DROP TABLE IF EXISTS `detalle_vuelo_pasajero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_vuelo_pasajero` (
  `id` int NOT NULL,
  `idVuelo` int NOT NULL,
  `identificacion_pasajero` varchar(20) NOT NULL,
  `plazas_libres` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_vuelo_idx` (`idVuelo`),
  KEY `fk_pasajero_idx` (`identificacion_pasajero`),
  CONSTRAINT `fk_pasajero` FOREIGN KEY (`identificacion_pasajero`) REFERENCES `pasajero` (`identificacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_vuelo` FOREIGN KEY (`idVuelo`) REFERENCES `vuelo` (`idvuelo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_vuelo_pasajero`
--

LOCK TABLES `detalle_vuelo_pasajero` WRITE;
/*!40000 ALTER TABLE `detalle_vuelo_pasajero` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_vuelo_pasajero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pasajero`
--

DROP TABLE IF EXISTS `pasajero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pasajero` (
  `identificacion` varchar(20) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `pasaporte` varchar(45) NOT NULL,
  PRIMARY KEY (`identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasajero`
--

LOCK TABLES `pasajero` WRITE;
/*!40000 ALTER TABLE `pasajero` DISABLE KEYS */;
INSERT INTO `pasajero` VALUES ('114876321','Tatiana','Arango Holguin','Cr.15 calle #23-03 Cali','4903-394'),('18903478','Julián','Camargo Valencia','Cr.78 calle #25-34 Bogotá','5678-899'),('3840293829','Pedro Antonio','Gil Londoño','Cr.30 calle #18-34A Bogotá','394-0393'),('79084532','Julio','Ortiz Campiño','Cr.23 calle #18-34A Bogotá','8982-302'),('9920837','Andrés','Molina Campo','Cr.12 calle #12-09 Armenia','537-963');
/*!40000 ALTER TABLE `pasajero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vuelo`
--

DROP TABLE IF EXISTS `vuelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vuelo` (
  `idvuelo` int NOT NULL AUTO_INCREMENT,
  `precio` decimal(10,2) NOT NULL,
  `hora_salida` time NOT NULL,
  `hora_llegada` time NOT NULL,
  `fecha` date NOT NULL,
  `matricula_avion` varchar(45) NOT NULL,
  `aeropuerto_origen` varchar(20) NOT NULL,
  `aeropuerto_destino` varchar(20) NOT NULL,
  PRIMARY KEY (`idvuelo`),
  KEY `fk_avion_idx` (`matricula_avion`),
  KEY `fk_aeropuerto_idx` (`aeropuerto_origen`),
  KEY `fk_aeropuerto_destino_idx` (`aeropuerto_destino`),
  CONSTRAINT `fk_aeropuerto_destino` FOREIGN KEY (`aeropuerto_destino`) REFERENCES `aeropuerto` (`idAeropuerto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_aeropuerto_origen` FOREIGN KEY (`aeropuerto_origen`) REFERENCES `aeropuerto` (`idAeropuerto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_avion` FOREIGN KEY (`matricula_avion`) REFERENCES `avion` (`matricula`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vuelo`
--

LOCK TABLES `vuelo` WRITE;
/*!40000 ALTER TABLE `vuelo` DISABLE KEYS */;
/*!40000 ALTER TABLE `vuelo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-08  4:44:52
