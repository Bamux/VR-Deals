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


-- Exportiere Datenbank Struktur für vr_dealz
CREATE DATABASE IF NOT EXISTS `vr_dealz` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_german2_ci */;
USE `vr_dealz`;

-- Exportiere Struktur von Tabelle vr_dealz.current_offers
CREATE TABLE IF NOT EXISTS `current_offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` bigint(20) NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8_german2_ci NOT NULL,
  `sale_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `regular_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `headset` tinytext COLLATE utf8_german2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_dealz.current_offers: ~0 rows (ungefähr)
DELETE FROM `current_offers`;
/*!40000 ALTER TABLE `current_offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `current_offers` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
