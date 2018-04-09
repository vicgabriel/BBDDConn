-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: sqlwebappgraffiti
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `datos_comentarios`
--

DROP TABLE IF EXISTS `datos_comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datos_comentarios` (
  `ID_comentarios` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(45) DEFAULT NULL,
  `ID_usuario_enviar` varchar(45) DEFAULT NULL,
  `ID_usuario_recibir` int(11) NOT NULL,
  `Fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_comentarios`,`ID_usuario_recibir`),
  KEY `FK_datos_comentarios_datos_usuario_idx` (`ID_usuario_recibir`),
  CONSTRAINT `FK_datos_comentarios_datos_usuario` FOREIGN KEY (`ID_usuario_recibir`) REFERENCES `datos_usuario` (`ID_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_comentarios`
--

LOCK TABLES `datos_comentarios` WRITE;
/*!40000 ALTER TABLE `datos_comentarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `datos_comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_usuario`
--

DROP TABLE IF EXISTS `datos_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datos_usuario` (
  `ID_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Imagen_perfil` varchar(45) DEFAULT NULL,
  `Rating` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_usuario`),
  CONSTRAINT `FK_datos_usuario_registration_form` FOREIGN KEY (`ID_usuario`) REFERENCES `registration_form` (`ID_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_usuario`
--

LOCK TABLES `datos_usuario` WRITE;
/*!40000 ALTER TABLE `datos_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `datos_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_imagenes`
--

DROP TABLE IF EXISTS `host_imagenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_imagenes` (
  `ID_host_imagen` int(11) NOT NULL AUTO_INCREMENT,
  `ID_usuario` int(11) NOT NULL,
  `comentario_host` varchar(45) DEFAULT NULL,
  `rating_host` varchar(45) DEFAULT NULL,
  `imagen_host` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_host_imagen`,`ID_usuario`),
  KEY `FK_host_imagenes_datos_usuario_idx` (`ID_usuario`),
  CONSTRAINT `FK_host_imagenes_datos_usuario` FOREIGN KEY (`ID_usuario`) REFERENCES `datos_usuario` (`ID_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_imagenes`
--

LOCK TABLES `host_imagenes` WRITE;
/*!40000 ALTER TABLE `host_imagenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `host_imagenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio_imagenes`
--

DROP TABLE IF EXISTS `portfolio_imagenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portfolio_imagenes` (
  `ID_portfolio_imagen` int(11) NOT NULL AUTO_INCREMENT,
  `ID_usuario` int(11) NOT NULL,
  `imagen_portfolio` varchar(45) DEFAULT NULL,
  `comentario_portfolio` varchar(45) DEFAULT NULL,
  `rating_portfolio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_portfolio_imagen`,`ID_usuario`),
  KEY `FK_portfolio_imagenes_datos_usuario_idx` (`ID_usuario`),
  CONSTRAINT `FK_portfolio_imagenes_datos_usuario` FOREIGN KEY (`ID_usuario`) REFERENCES `datos_usuario` (`ID_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio_imagenes`
--

LOCK TABLES `portfolio_imagenes` WRITE;
/*!40000 ALTER TABLE `portfolio_imagenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolio_imagenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_form`
--

DROP TABLE IF EXISTS `registration_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_form` (
  `ID_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `NickName` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Movil` varchar(45) DEFAULT NULL,
  `Contraseña` varchar(45) DEFAULT NULL,
  `PaginaWebReferencia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_form`
--

LOCK TABLES `registration_form` WRITE;
/*!40000 ALTER TABLE `registration_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_form` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-09 13:00:26
