-- --------------------------------------------------------
-- Host:                         localhost
-- Server Version:               10.3.15-MariaDB - mariadb.org binary distribution
-- Server Betriebssystem:        Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Exportiere Datenbank Struktur für vr_schnaeppchen
CREATE DATABASE IF NOT EXISTS `vr_schnaeppchen` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_german2_ci */;
USE `vr_schnaeppchen`;

-- Exportiere Struktur von Tabelle vr_schnaeppchen.articles
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `website_article_id` bigint(20) NOT NULL,
  `article_name` tinytext COLLATE utf8_german2_ci NOT NULL,
  `regular_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_schnaeppchen.articles: ~0 rows (ungefähr)
DELETE FROM `articles`;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle vr_schnaeppchen.current_offers
CREATE TABLE IF NOT EXISTS `current_offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `date_time` mediumblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_schnaeppchen.current_offers: ~0 rows (ungefähr)
DELETE FROM `current_offers`;
/*!40000 ALTER TABLE `current_offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `current_offers` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle vr_schnaeppchen.expired_offers
CREATE TABLE IF NOT EXISTS `expired_offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `date_time` mediumblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_schnaeppchen.expired_offers: ~0 rows (ungefähr)
DELETE FROM `expired_offers`;
/*!40000 ALTER TABLE `expired_offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `expired_offers` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle vr_schnaeppchen.headsets
CREATE TABLE IF NOT EXISTS `headsets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext COLLATE utf8_german2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_schnaeppchen.headsets: ~4 rows (ungefähr)
DELETE FROM `headsets`;
/*!40000 ALTER TABLE `headsets` DISABLE KEYS */;
INSERT INTO `headsets` (`id`, `name`) VALUES
	(1, 'Rift'),
	(2, 'Rift S'),
	(3, 'Quest'),
	(4, 'Go');
/*!40000 ALTER TABLE `headsets` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle vr_schnaeppchen.stores
CREATE TABLE IF NOT EXISTS `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext COLLATE utf8_german2_ci NOT NULL,
  `url` text COLLATE utf8_german2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_schnaeppchen.stores: ~2 rows (ungefähr)
DELETE FROM `stores`;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` (`id`, `name`, `url`) VALUES
	(1, 'Oculus Quest Store', 'https://www.oculus.com/experiences/quest/'),
	(2, 'Oculus Rift Store', 'https://www.oculus.com/experiences/rift/section/1578364258944223/'),
	(3, 'Oculus Go Store', 'https://www.oculus.com/experiences/go/section/1500175860035862/');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
