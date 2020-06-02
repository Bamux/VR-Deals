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


-- Exportiere Datenbank Struktur für vr_deals
CREATE DATABASE IF NOT EXISTS `vr_deals` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_german2_ci */;
USE `vr_deals`;

-- Exportiere Struktur von Tabelle vr_deals.articles
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `category_name_id` int(11) NOT NULL,
  `website_article_id` tinytext COLLATE utf8_german2_ci NOT NULL,
  `regular_price` decimal(10,2) NOT NULL,
  `img_url` text COLLATE utf8_german2_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_deals.articles: ~0 rows (ungefähr)
DELETE FROM `articles`;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `store_id`, `category_name_id`, `website_article_id`, `regular_price`, `img_url`) VALUES
	(1, 20, 1, 'https://www.amazon.de/PlayStation-Virtual-Reality-Voucher-Version/dp/B07K2PT733/', 289.00, 'https://m.media-amazon.com/images/I/71EyHQikKjL._AC_UL640_FMwebp_QL65_.jpg'),
	(2, 21, 1, 'https://www.mediamarkt.de/de/product/_sony-playstation-vr-camera-vr-worlds-voucher-2495540.html', 289.00, 'https://assets.mmsrg.com/isr/166325/c1/-/pixelboxx-mss-79401463/fee_786_587_png'),
	(3, 21, 2, 'https://www.mediamarkt.de/de/product/_htc-vive-cosmos-2598711.html', 799.00, 'https://assets.mmsrg.com/isr/166325/c1/-/pixelboxx-mss-82253183/fee_786_587_png'),
	(4, 22, 3, 'https://netgames.de/Playstation-4/PS4-Konsolen---Zubeh--r/Controller---Speicher-1005/vr-aim-controller-sony-oem-ps4.html', 75.00, 'https://images.netgam.es/images/product_images/popup_images/47902_2.jpg'),
	(5, 33, 4, 'https://www.humblebundle.com/store/whale-rock-bundle', 66.66, 'https://hb.imgix.net/e318bed74e7c26b4c1ec832e06a4bb9d7e788bc4.jpg?auto=compress,format&fit=crop&h=353&w=616&s=064a55a89d8ba3c6e6f3492105562ea5'),
	(6, 33, 5, 'https://www.humblebundle.com/store/bus-driver-simulator-2019', 19.99, 'https://hb.imgix.net/1f2b3b195296d4bc574bea260735b3743daa11c6.jpg?auto=compress,format&fit=crop&h=353&w=616&s=b48a1be30c1a0ca88efb98a24cd49d0c'),
	(7, 33, 6, 'https://www.humblebundle.com/store/timelock-vr', 13.99, 'https://hb.imgix.net/4e55f3caec71519c153af88f49c39c887cd1ce90.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=7b829490e8d40127e1807c3a82dc4314'),
	(8, 33, 7, 'https://www.humblebundle.com/store/star-trek-bridge-crew-next-generation-bundle', 54.99, 'https://hb.imgix.net/e4a09c91b3e726e337559c47da386c0a780774cd.jpg?auto=compress,format&fit=crop&h=353&w=616&s=c80ca73132f9ccd7bc35463dbc5c79e9'),
	(9, 34, 8, 'https://store.steampowered.com/app/1051200/', 24.99, 'https://steamcdn-a.akamaihd.net/steam/apps/1051200/header.jpg'),
	(10, 34, 9, 'https://store.steampowered.com/app/617830/', 22.99, 'https://steamcdn-a.akamaihd.net/steam/apps/617830/header.jpg'),
	(11, 34, 10, 'https://store.steampowered.com/app/963930/', 16.79, 'https://steamcdn-a.akamaihd.net/steam/apps/963930/header.jpg'),
	(12, 34, 11, 'https://store.steampowered.com/app/283160/', 19.99, 'https://steamcdn-a.akamaihd.net/steam/apps/283160/header.jpg'),
	(13, 34, 12, 'https://store.steampowered.com/app/322770/', 16.79, 'https://steamcdn-a.akamaihd.net/steam/apps/322770/header.jpg'),
	(14, 34, 13, 'https://store.steampowered.com/app/1081610/', 19.99, 'https://steamcdn-a.akamaihd.net/steam/apps/1081610/header.jpg'),
	(15, 34, 14, 'https://store.steampowered.com/app/433100/', 18.99, 'https://steamcdn-a.akamaihd.net/steam/apps/433100/header.jpg'),
	(16, 34, 15, 'https://store.steampowered.com/app/673600/', 19.99, 'https://steamcdn-a.akamaihd.net/steam/apps/673600/header.jpg'),
	(17, 34, 16, 'https://store.steampowered.com/app/972740/', 6.99, 'https://steamcdn-a.akamaihd.net/steam/apps/972740/header.jpg'),
	(18, 34, 17, 'https://store.steampowered.com/app/451520/', 9.99, 'https://steamcdn-a.akamaihd.net/steam/apps/451520/header.jpg'),
	(19, 34, 18, 'https://store.steampowered.com/app/748370/', 22.99, 'https://steamcdn-a.akamaihd.net/steam/apps/748370/header.jpg'),
	(20, 34, 19, 'https://store.steampowered.com/app/579820/', 19.99, 'https://steamcdn-a.akamaihd.net/steam/apps/579820/header.jpg'),
	(21, 34, 20, 'https://store.steampowered.com/app/543390/', 12.49, 'https://steamcdn-a.akamaihd.net/steam/apps/543390/header.jpg'),
	(22, 34, 21, 'https://store.steampowered.com/app/532270/', 14.99, 'https://steamcdn-a.akamaihd.net/steam/apps/532270/header.jpg'),
	(23, 34, 22, 'https://store.steampowered.com/app/518060/', 12.99, 'https://steamcdn-a.akamaihd.net/steam/apps/518060/header.jpg'),
	(24, 34, 23, 'https://store.steampowered.com/app/531050/', 12.99, 'https://steamcdn-a.akamaihd.net/steam/apps/531050/header.jpg'),
	(25, 34, 24, 'https://store.steampowered.com/app/320540/', 9.99, 'https://steamcdn-a.akamaihd.net/steam/apps/320540/header.jpg'),
	(26, 34, 25, 'https://store.steampowered.com/app/499620/', 4.99, 'https://steamcdn-a.akamaihd.net/steam/apps/499620/header.jpg'),
	(27, 34, 26, 'https://store.steampowered.com/app/554280/', 19.99, 'https://steamcdn-a.akamaihd.net/steam/apps/554280/header.jpg'),
	(28, 34, 27, 'https://store.steampowered.com/app/412050/', 16.99, 'https://steamcdn-a.akamaihd.net/steam/apps/412050/header.jpg'),
	(29, 34, 6, 'https://store.steampowered.com/app/673450/', 8.19, 'https://steamcdn-a.akamaihd.net/steam/apps/673450/header.jpg'),
	(30, 34, 28, 'https://store.steampowered.com/app/593240/', 12.99, 'https://steamcdn-a.akamaihd.net/steam/apps/593240/header.jpg'),
	(31, 34, 29, 'https://store.steampowered.com/app/644420/', 8.19, 'https://steamcdn-a.akamaihd.net/steam/apps/644420/header.jpg'),
	(32, 34, 30, 'https://store.steampowered.com/app/914400/', 1.59, 'https://steamcdn-a.akamaihd.net/steam/apps/914400/header.jpg'),
	(33, 34, 31, 'https://store.steampowered.com/app/563550/', 12.49, 'https://steamcdn-a.akamaihd.net/steam/apps/563550/header.jpg'),
	(34, 34, 32, 'https://store.steampowered.com/app/710760/', 9.99, 'https://steamcdn-a.akamaihd.net/steam/apps/710760/header.jpg'),
	(35, 34, 33, 'https://store.steampowered.com/app/1218830/', 3.29, 'https://steamcdn-a.akamaihd.net/steam/apps/1218830/header.jpg'),
	(36, 34, 34, 'https://store.steampowered.com/app/604300/', 14.99, 'https://steamcdn-a.akamaihd.net/steam/apps/604300/header.jpg'),
	(37, 34, 35, 'https://store.steampowered.com/app/614970/', 9.99, 'https://steamcdn-a.akamaihd.net/steam/apps/614970/header.jpg'),
	(38, 34, 36, 'https://store.steampowered.com/app/595090/', 9.99, 'https://steamcdn-a.akamaihd.net/steam/apps/595090/header.jpg'),
	(39, 34, 37, 'https://store.steampowered.com/app/836610/', 1.59, 'https://steamcdn-a.akamaihd.net/steam/apps/836610/header.jpg'),
	(40, 34, 38, 'https://store.steampowered.com/app/1252860/', 3.99, 'https://steamcdn-a.akamaihd.net/steam/apps/1252860/header.jpg'),
	(41, 34, 39, 'https://store.steampowered.com/app/1231140/', 5.69, 'https://steamcdn-a.akamaihd.net/steam/apps/1231140/header.jpg'),
	(42, 34, 40, 'https://store.steampowered.com/app/1220630/', 3.99, 'https://steamcdn-a.akamaihd.net/steam/apps/1220630/header.jpg'),
	(43, 34, 41, 'https://store.steampowered.com/app/457340/', 4.99, 'https://steamcdn-a.akamaihd.net/steam/apps/457340/header.jpg'),
	(44, 34, 42, 'https://store.steampowered.com/app/1087970/', 1.59, 'https://steamcdn-a.akamaihd.net/steam/apps/1087970/header.jpg'),
	(45, 34, 43, 'https://store.steampowered.com/app/955580/', 15.90, 'https://steamcdn-a.akamaihd.net/steam/apps/955580/header.jpg'),
	(46, 34, 44, 'https://store.steampowered.com/app/648070/', 179.99, 'https://steamcdn-a.akamaihd.net/steam/apps/648070/header.jpg'),
	(47, 34, 45, 'https://store.steampowered.com/app/1070410/', 16.79, 'https://steamcdn-a.akamaihd.net/steam/apps/1070410/header.jpg'),
	(48, 34, 46, 'https://store.steampowered.com/app/557850/', 8.19, 'https://steamcdn-a.akamaihd.net/steam/apps/557850/header.jpg'),
	(49, 34, 47, 'https://store.steampowered.com/app/880200/', 13.99, 'https://steamcdn-a.akamaihd.net/steam/apps/880200/header.jpg'),
	(50, 34, 48, 'https://store.steampowered.com/app/673830/', 11.99, 'https://steamcdn-a.akamaihd.net/steam/apps/673830/header.jpg'),
	(51, 34, 49, 'https://store.steampowered.com/app/1219500/', 3.99, 'https://steamcdn-a.akamaihd.net/steam/apps/1219500/header.jpg'),
	(52, 34, 50, 'https://store.steampowered.com/app/522200/', 29.99, 'https://steamcdn-a.akamaihd.net/steam/apps/522200/header.jpg'),
	(53, 34, 51, 'https://store.steampowered.com/app/706840/', 12.49, 'https://steamcdn-a.akamaihd.net/steam/apps/706840/header.jpg'),
	(54, 34, 52, 'https://store.steampowered.com/app/1091270/', 3.99, 'https://steamcdn-a.akamaihd.net/steam/apps/1091270/header.jpg'),
	(55, 34, 53, 'https://store.steampowered.com/app/751430/', 14.99, 'https://steamcdn-a.akamaihd.net/steam/apps/751430/header.jpg'),
	(56, 34, 54, 'https://store.steampowered.com/app/649510/', 4.99, 'https://steamcdn-a.akamaihd.net/steam/apps/649510/header.jpg'),
	(57, 34, 55, 'https://store.steampowered.com/app/1016980/', 17.79, 'https://steamcdn-a.akamaihd.net/steam/apps/1016980/header.jpg'),
	(58, 34, 56, 'https://store.steampowered.com/app/789640/', 11.99, 'https://steamcdn-a.akamaihd.net/steam/apps/789640/header.jpg'),
	(59, 34, 57, 'https://store.steampowered.com/app/990500/', 3.99, 'https://steamcdn-a.akamaihd.net/steam/apps/990500/header.jpg'),
	(60, 34, 58, 'https://store.steampowered.com/app/1144100/', 4.99, 'https://steamcdn-a.akamaihd.net/steam/apps/1144100/header.jpg'),
	(61, 34, 59, 'https://store.steampowered.com/app/535270/', 0.99, 'https://steamcdn-a.akamaihd.net/steam/apps/535270/header.jpg'),
	(62, 34, 60, 'https://store.steampowered.com/app/562450/', 0.99, 'https://steamcdn-a.akamaihd.net/steam/apps/562450/header.jpg'),
	(63, 34, 61, 'https://store.steampowered.com/app/1199130/', 8.19, 'https://steamcdn-a.akamaihd.net/steam/apps/1199130/header.jpg'),
	(64, 34, 62, 'https://store.steampowered.com/app/864360/', 11.59, 'https://steamcdn-a.akamaihd.net/steam/apps/864360/header.jpg'),
	(65, 34, 63, 'https://store.steampowered.com/app/1166100/', 9.99, 'https://steamcdn-a.akamaihd.net/steam/apps/1166100/header.jpg'),
	(66, 34, 64, 'https://store.steampowered.com/app/1273390/', 9.20, 'https://steamcdn-a.akamaihd.net/steam/apps/1273390/header.jpg'),
	(67, 34, 65, 'https://store.steampowered.com/app/647370/', 4.99, 'https://steamcdn-a.akamaihd.net/steam/apps/647370/header.jpg'),
	(68, 34, 66, 'https://store.steampowered.com/app/647371/', 4.99, 'https://steamcdn-a.akamaihd.net/steam/apps/647371/header.jpg'),
	(69, 34, 67, 'https://store.steampowered.com/app/1206620/', 9.99, 'https://steamcdn-a.akamaihd.net/steam/apps/1206620/header.jpg'),
	(70, 34, 68, 'https://store.steampowered.com/app/1251430/', 0.79, 'https://steamcdn-a.akamaihd.net/steam/apps/1251430/header.jpg'),
	(71, 34, 69, 'https://store.steampowered.com/app/1318030/', 20.99, 'https://steamcdn-a.akamaihd.net/steam/apps/1318030/header.jpg'),
	(72, 34, 70, 'https://store.steampowered.com/app/606270/', 3.99, 'https://steamcdn-a.akamaihd.net/steam/apps/606270/header.jpg'),
	(73, 34, 71, 'https://store.steampowered.com/app/1265660/', 3.99, 'https://steamcdn-a.akamaihd.net/steam/apps/1265660/header.jpg'),
	(74, 34, 72, 'https://store.steampowered.com/app/1305860/', 3.99, 'https://steamcdn-a.akamaihd.net/steam/apps/1305860/header.jpg'),
	(75, 34, 73, 'https://store.steampowered.com/app/1171230/', 0.79, 'https://steamcdn-a.akamaihd.net/steam/apps/1171230/header.jpg'),
	(76, 34, 74, 'https://store.steampowered.com/app/1273060/', 8.19, 'https://steamcdn-a.akamaihd.net/steam/apps/1273060/header.jpg'),
	(77, 32, 75, 'https://www.oculus.com/experiences/rift/1446648452044502', 29.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974612_579802085774928_3046765974905683968_n.jpg?_nc_cat=1&_nc_sid=79b88e&_nc_ohc=NYgpOZSJUX8AX8ujCY8&_nc_ht=scontent.oculuscdn.com&oh=cae77021c75563f3f72f13f1c32cc2e5&oe=5EFC337E'),
	(78, 32, 76, 'https://www.oculus.com/experiences/rift/2739977019349635', 24.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974563_272492140121143_898625025110704128_n.jpg?_nc_cat=100&_nc_sid=79b88e&_nc_ohc=TEHN3dCb7e0AX_NC4ZG&_nc_ht=scontent.oculuscdn.com&oh=0657589f5f19fcf43db9ba19d32d7174&oe=5EFB195B'),
	(79, 32, 77, 'https://www.oculus.com/experiences/rift/1833318536683635', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974725_2276911705958657_5463510734828732416_n.jpg?_nc_cat=101&_nc_sid=79b88e&_nc_ohc=zJbcRtlXEN0AX839R8i&_nc_ht=scontent.oculuscdn.com&oh=915543cde1ebbcfb4d246c481d6a679b&oe=5EFC5114'),
	(80, 32, 78, 'https://www.oculus.com/experiences/rift/1471853306166046', 24.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12138836_213255789368882_3336720608628047872_n.jpg?_nc_cat=1&_nc_sid=79b88e&_nc_ohc=AbwrEf10xs0AX8oIal4&_nc_ht=scontent.oculuscdn.com&oh=110644b9993e1eff56764fae7f7152fa&oe=5EFA8B94'),
	(81, 32, 79, 'https://www.oculus.com/experiences/rift/1696308540462484', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/75196223_2529090667361943_3266401711840821248_n.jpg?_nc_cat=1&_nc_sid=79b88e&_nc_ohc=9e1Rd7GZIHEAX9dMiHl&_nc_ht=scontent.oculuscdn.com&oh=cbab6722400069a47a6a6fdd31c83274&oe=5EFAAC28'),
	(82, 32, 16, 'https://www.oculus.com/experiences/rift/2124641230881553', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982453_567103313725999_7439880798401986560_n.jpg?_nc_cat=107&_nc_sid=79b88e&_nc_ohc=PsoPbAwoXlkAX-ofeYS&_nc_ht=scontent.oculuscdn.com&oh=f271edb465c4ec84425dd8d27dea7833&oe=5EFB7864'),
	(83, 32, 80, 'https://www.oculus.com/experiences/rift/1462259830529109', 29.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974738_551805209052690_1361289356186222592_n.jpg?_nc_cat=1&_nc_sid=79b88e&_nc_ohc=j9pDqyot-VkAX-Cl8DZ&_nc_ht=scontent.oculuscdn.com&oh=d313f76ca0fc11fd5b427730ba9b0173&oe=5EFBC344'),
	(84, 32, 81, 'https://www.oculus.com/experiences/rift/1990542257627879', 6.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12602063_2149554861998397_1061964684371951616_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=dTlXN7z8kosAX9gEH29&_nc_ht=scontent.oculuscdn.com&oh=2ae098e51efaf9e3f9e87f19a08ef179&oe=5EFC624D'),
	(85, 32, 82, 'https://www.oculus.com/experiences/rift/1809390489075678', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12482206_179896052703504_8855719069630857216_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=Zyq1ZAMGbBMAX-tm7lN&_nc_ht=scontent.oculuscdn.com&oh=45b021a6382f742546f491a25727c43d&oe=5EFD6731'),
	(86, 32, 83, 'https://www.oculus.com/experiences/rift/349692435154738', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12139257_107375176403202_5590161567971803136_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=oyNLY6Og414AX_voGZB&_nc_ht=scontent.oculuscdn.com&oh=d00c63f1389586c78fafc65da469b6dd&oe=5EFC2D3F'),
	(87, 32, 84, 'https://www.oculus.com/experiences/rift/1558943587481454', 29.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162675_1274705095985728_5436007499431936000_n.jpg?_nc_cat=1&_nc_sid=79b88e&_nc_ohc=uvjfC-8lEy0AX8g9Fe8&_nc_ht=scontent.oculuscdn.com&oh=80e8e84b9f5b414fc7f68b3d82dd60c0&oe=5EFB9644'),
	(88, 32, 85, 'https://www.oculus.com/experiences/rift/1942845939155229', 14.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974503_376019906298966_5583285982460903424_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=7cbU1RjHQlsAX8rqRBk&_nc_ht=scontent.oculuscdn.com&oh=bbaa288a14e5c5a35a2fba4d80c68a9f&oe=5EF9F2FC'),
	(89, 32, 86, 'https://www.oculus.com/experiences/rift/1630322847038003', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162730_1530394407021897_2736745477314707456_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=AG2tR-SzPAQAX-YnWVd&_nc_ht=scontent.oculuscdn.com&oh=f8626b8875d05f890482c31cee3c2e55&oe=5EFB315A'),
	(90, 32, 87, 'https://www.oculus.com/experiences/rift/1773105779433103', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12602117_277109509688223_191106674369495040_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=5u1JOwpept8AX8fzHaT&_nc_ht=scontent.oculuscdn.com&oh=49c142e4d666be3dd304128a4aeca7f0&oe=5EFB58DD'),
	(91, 32, 88, 'https://www.oculus.com/experiences/rift/1958452074228276', 29.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12410441_244578722790614_2856138833634787328_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_ohc=c7wQkZI1AnsAX8je75V&_nc_ht=scontent.oculuscdn.com&oh=ddc067422e23c7857b36b2eb66dcb371&oe=5EF9BCE6'),
	(92, 32, 89, 'https://www.oculus.com/experiences/rift/1369785789766641', 14.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162711_555618911450893_3321764351387369472_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=-FrVSqDyjdcAX-xWYTx&_nc_ht=scontent.oculuscdn.com&oh=edee9a333ac80b3f53eaa57e1c65c013&oe=5EFA4D21'),
	(93, 32, 90, 'https://www.oculus.com/experiences/rift/1694083923995617', 1.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12331258_212308062685423_5384831332012523520_n.jpg?_nc_cat=104&_nc_sid=79b88e&_nc_ohc=DkvFjp7qDfMAX8RcCh8&_nc_ht=scontent.oculuscdn.com&oh=bd99d19b171f1c39b44586836a893d8e&oe=5EFA8AFD'),
	(94, 32, 91, 'https://www.oculus.com/experiences/rift/1414258035336280', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12386220_719788934884178_3140081548229869568_n.jpg?_nc_cat=108&_nc_sid=79b88e&_nc_ohc=akCrXHx5t8cAX_hTZap&_nc_ht=scontent.oculuscdn.com&oh=c83d2b1b072879809573a89a04e50f07&oe=5EFC8689'),
	(95, 32, 92, 'https://www.oculus.com/experiences/rift/2032052396805111', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974515_280411172561541_6494091182635745280_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=LWR3ECCBCPYAX9g-ULS&_nc_ht=scontent.oculuscdn.com&oh=f4e884d92544228c1bf99241df6f3053&oe=5EFA83EF'),
	(96, 32, 93, 'https://www.oculus.com/experiences/rift/2833444230004406', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/39001696_2461184474164492_2256647191084924928_n.jpg?_nc_cat=101&_nc_sid=79b88e&_nc_ohc=GnBf5lfFcMkAX9Mp1z4&_nc_ht=scontent.oculuscdn.com&oh=3ae459b515634ec5cc7065834afc68df&oe=5EFCC335'),
	(97, 32, 94, 'https://www.oculus.com/experiences/rift/1361822510535509', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12427537_597869367076772_1499559686477709312_n.jpg?_nc_cat=109&_nc_sid=79b88e&_nc_ohc=RqRFpM4JMGsAX9HAAch&_nc_ht=scontent.oculuscdn.com&oh=becbfca7f108eb081b08884ffbe38184&oe=5EFC250F'),
	(98, 32, 95, 'https://www.oculus.com/experiences/rift/1537999082896884', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12727894_1901617090083951_648834176761462784_n.jpg?_nc_cat=110&_nc_sid=79b88e&_nc_ohc=vZhy-7pweeQAX-zD8Ns&_nc_ht=scontent.oculuscdn.com&oh=914c09a5491c6a1f86571bf952984938&oe=5EFADDBD'),
	(99, 32, 96, 'https://www.oculus.com/experiences/rift/1437622026333338', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162681_134707570505592_8305901043141574656_n.jpg?_nc_cat=110&_nc_sid=79b88e&_nc_ohc=v4mToMRbLAYAX8FdYB1&_nc_ht=scontent.oculuscdn.com&oh=e6e383eea8f99e7695e984c01273e86a&oe=5EFB8AB3'),
	(100, 32, 97, 'https://www.oculus.com/experiences/rift/2192753377451572', 7.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982651_358332734843648_1252538649652756480_n.jpg?_nc_cat=108&_nc_sid=79b88e&_nc_ohc=097CzP5LPosAX89dq8U&_nc_ht=scontent.oculuscdn.com&oh=e27cd893bdc2e9e27360bf2bde3c9019&oe=5EFBD422'),
	(101, 35, 98, 'https://www.oculus.com/experiences/go/827294127398133', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12449084_331799624010317_4414368520700166144_n.jpg?_nc_cat=104&_nc_sid=79b88e&_nc_ohc=bW2iqrYnTxAAX_eD6H2&_nc_ht=scontent.oculuscdn.com&oh=af386f5dd8b64bd3bbfa975130fd4c32&oe=5EFB529A'),
	(102, 35, 77, 'https://www.oculus.com/experiences/go/1124164450939641', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38984458_289181478659872_7453552890485932032_n.jpg?_nc_cat=110&_nc_sid=79b88e&_nc_ohc=N7YoDKlBEEAAX9oE8nh&_nc_ht=scontent.oculuscdn.com&oh=35c37b8d6f8884c96c3bd9478c29fab8&oe=5EFB74C7'),
	(103, 35, 86, 'https://www.oculus.com/experiences/go/859807967457408', 2.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162696_279517842551324_1550060822477144064_n.jpg?_nc_cat=110&_nc_sid=79b88e&_nc_ohc=DBD1M3aby0QAX8DaMIO&_nc_ht=scontent.oculuscdn.com&oh=255c993fa4c241d68b153201efe2f3b6&oe=5EFC218B'),
	(104, 35, 99, 'https://www.oculus.com/experiences/go/1232181650154576', 2.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162719_1270606906381020_1931655674450673664_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_ohc=V_5ffGsNiQ8AX-kcchm&_nc_ht=scontent.oculuscdn.com&oh=6647f0262f9410d68810b6a733909315&oe=5EFC9F91'),
	(105, 35, 100, 'https://www.oculus.com/experiences/go/1328279610555554', 0.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12449077_1596092507357812_1623583244_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=SRBDNb0jxHEAX8lnk_T&_nc_ht=scontent.oculuscdn.com&oh=07b5947b904f4ca85bda54d70e617637&oe=5EFC9CCD'),
	(106, 35, 97, 'https://www.oculus.com/experiences/go/1272636489423125', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982490_1630942020371100_2898018870759522304_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=MXisk8u4yZgAX8M-Gqy&_nc_ht=scontent.oculuscdn.com&oh=d7775fa6534e698c63443bf97c0c4019&oe=5EFCB2C0'),
	(107, 35, 101, 'https://www.oculus.com/experiences/go/953565778099802', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162675_739907842858923_1613311650499133440_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=mw5qMeB2jf8AX_4ojWx&_nc_ht=scontent.oculuscdn.com&oh=974f40e595c05fda1430a73cef32faf0&oe=5EFA6BCC'),
	(108, 35, 102, 'https://www.oculus.com/experiences/go/1051452461583340', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12410219_1692120874338076_1777138633_n.jpg?_nc_cat=105&_nc_sid=79b88e&_nc_ohc=-uQj7xgbahEAX_UDEFy&_nc_ht=scontent.oculuscdn.com&oh=a6a390e8d5305d54c02bd141d30d52fa&oe=5EFB7850'),
	(109, 35, 103, 'https://www.oculus.com/experiences/go/1094315670658189', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12410440_2190557351158171_893019135011717120_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=bSawwZ_4NCYAX-d8jum&_nc_ht=scontent.oculuscdn.com&oh=a437089d5e4a9cfdb2e59127660944be&oe=5EFAC456'),
	(110, 35, 104, 'https://www.oculus.com/experiences/go/1491907854175850', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162679_1030814280388184_7604618941964484608_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=1w-9xkTfaV4AX9JzJwa&_nc_ht=scontent.oculuscdn.com&oh=54fa446880856837bf5c6f5dd5f0f957&oe=5EFC2FB9'),
	(111, 35, 105, 'https://www.oculus.com/experiences/go/2072976506063173', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974673_529342610860535_1542563141018189824_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=4sDPM0dftXkAX-r43br&_nc_ht=scontent.oculuscdn.com&oh=86f94da4eabdc7f989f9b699dfbbbb18&oe=5EFB017F'),
	(112, 35, 106, 'https://www.oculus.com/experiences/go/1467388843347781', 3.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162682_369196686826331_2385328577391362048_n.jpg?_nc_cat=107&_nc_sid=79b88e&_nc_ohc=5ACaR1gwP6kAX9BVywi&_nc_ht=scontent.oculuscdn.com&oh=2d1d384e8f07ecc49f2b7f2c021f4898&oe=5EFB006A'),
	(113, 35, 107, 'https://www.oculus.com/experiences/go/1854661794586834', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974552_346495479252066_6955473070836416512_n.jpg?_nc_cat=108&_nc_sid=79b88e&_nc_ohc=PleHbTy_azcAX96SBfw&_nc_ht=scontent.oculuscdn.com&oh=4304da01084124bd83359c6ca91597c6&oe=5EFBEF81'),
	(114, 35, 108, 'https://www.oculus.com/experiences/go/1681924048528676', 3.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/39001719_763571310690018_6247223188380450816_n.jpg?_nc_cat=105&_nc_sid=79b88e&_nc_ohc=nyDHuDMToykAX-Zlq3w&_nc_ht=scontent.oculuscdn.com&oh=69cc597e7c722afc742cbdbcfa0fad2f&oe=5EFBC162'),
	(115, 35, 109, 'https://www.oculus.com/experiences/go/2365079196906504', 2.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974516_837636013296934_4162221753940049920_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=2HInOSMNVswAX8xYXXX&_nc_ht=scontent.oculuscdn.com&oh=28830260c081dc21512b49e7c87f538a&oe=5EFA74DC'),
	(116, 35, 110, 'https://www.oculus.com/experiences/go/2451176948282095', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982695_582098815886382_8879343691861327872_n.jpg?_nc_cat=101&_nc_sid=79b88e&_nc_ohc=1OM0i5IPgQgAX9qGBAt&_nc_ht=scontent.oculuscdn.com&oh=e7b44fb90f3864ba967b53f8d236da8a&oe=5EF9B9E0'),
	(117, 35, 111, 'https://www.oculus.com/experiences/go/1163285000441874', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/57572934_578778726259874_6354174913502248960_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_ohc=nxdxqRvKvBEAX-5wAWy&_nc_ht=scontent.oculuscdn.com&oh=146e829be1f9cb3d41855986aa0c2164&oe=5EFA4194'),
	(118, 35, 112, 'https://www.oculus.com/experiences/go/1013248532088752', 2.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162823_200727013742105_528137319341883392_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=5D380uNySCEAX_esW-M&_nc_ht=scontent.oculuscdn.com&oh=e18f020756469ce0e963f5bf97731509&oe=5EFC5CCB'),
	(119, 35, 113, 'https://www.oculus.com/experiences/go/3013160292031145', 8.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/39031433_2288337551222498_5154506971960836096_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=uh4PQqusyYIAX9d_pfn&_nc_ht=scontent.oculuscdn.com&oh=78fb73cc0a408eefa6a832975e517db4&oe=5EFA34D5'),
	(120, 35, 114, 'https://www.oculus.com/experiences/go/1428287320528005', 1.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162699_110117686296518_3478609405916741632_n.jpg?_nc_cat=107&_nc_sid=79b88e&_nc_ohc=SshuBsWkEKYAX8G9vUm&_nc_ht=scontent.oculuscdn.com&oh=cf36c0d9812a32488de64b4c4e9462ae&oe=5EFA2B44'),
	(121, 35, 115, 'https://www.oculus.com/experiences/go/2185901951459621', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982470_2607884042809447_6094292193382498304_n.jpg?_nc_cat=104&_nc_sid=79b88e&_nc_ohc=xCaxs2bKqWwAX_bQM_J&_nc_ht=scontent.oculuscdn.com&oh=fcd7cf76262b6577da1301f4cc53c677&oe=5EFBC10F'),
	(122, 35, 116, 'https://www.oculus.com/experiences/go/1612336165492390', 3.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12504730_176118463044153_8287026023380287488_n.jpg?_nc_cat=110&_nc_sid=79b88e&_nc_ohc=kuH7BtuXe94AX8ha3Ql&_nc_ht=scontent.oculuscdn.com&oh=6cda48feee9d0d78eedb02a1cca4e4f7&oe=5EFB572E'),
	(123, 35, 117, 'https://www.oculus.com/experiences/go/2146744692021364', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974501_528678351313451_8983829933956530176_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=BIYaxeh_whUAX-gRcqS&_nc_ht=scontent.oculuscdn.com&oh=3f880a43cac8c7620ea02aae3aa06ca6&oe=5EFD0069'),
	(124, 35, 118, 'https://www.oculus.com/experiences/go/1459163684102799', 2.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12482153_1284288108320020_8733698460340977664_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=GBORb-CTq-0AX_-YgyO&_nc_ht=scontent.oculuscdn.com&oh=152c3221931398c5b20ec964e5ccfb31&oe=5EFB45A8');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle vr_deals.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` char(50) COLLATE utf8_german2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_deals.categories: ~3 rows (ungefähr)
DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `category`) VALUES
	(1, 'hardware'),
	(2, 'accessories'),
	(3, 'software');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle vr_deals.category_name
CREATE TABLE IF NOT EXISTS `category_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `article_name` tinytext COLLATE utf8_german2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_deals.category_name: ~0 rows (ungefähr)
DELETE FROM `category_name`;
/*!40000 ALTER TABLE `category_name` DISABLE KEYS */;
INSERT INTO `category_name` (`id`, `category_id`, `article_name`) VALUES
	(1, 1, 'PlayStation VR + Camera + VR Worlds'),
	(2, 1, 'Vive Cosmos'),
	(3, 2, 'VR Aim Controller'),
	(4, 3, 'Whale Rock Bundle'),
	(5, 3, 'Bus Driver Simulator 2019'),
	(6, 3, 'TimeLock VR'),
	(7, 3, 'Star Trek™: Bridge Crew + The Next Generation DLC'),
	(8, 3, 'Trover Saves the Universe'),
	(9, 3, 'SUPERHOT VR'),
	(10, 3, 'Contractors'),
	(11, 3, 'House of the Dying Sun'),
	(12, 3, 'Vanishing Realms™'),
	(13, 3, 'SILICON RISING'),
	(14, 3, 'The Town of Light'),
	(15, 3, 'Prison Boss VR'),
	(16, 3, 'KOBOLD: Chapter I'),
	(17, 3, 'theBlu'),
	(18, 3, 'STAND OUT : VR Battle Royale'),
	(19, 3, 'Robinson: The Journey'),
	(20, 3, 'Aeon'),
	(21, 3, 'Lethal VR'),
	(22, 3, 'Chess Ultra'),
	(23, 3, 'Far Beyond: A space odyssey VR'),
	(24, 3, 'Coffin Dodgers'),
	(25, 3, 'Ultimate Booster Experience'),
	(26, 3, 'Time Carnage VR'),
	(27, 3, 'HordeZ'),
	(28, 3, 'VR SUPER SPORTS'),
	(29, 3, 'Xion'),
	(30, 3, 'Key Of Impasse'),
	(31, 3, 'Nevrosa: Escape'),
	(32, 3, 'High Noon VR'),
	(33, 3, 'Tropical Air Hockey'),
	(34, 3, 'Show Must Go On'),
	(35, 3, 'Qbike: Cyberpunk Motorcycles'),
	(36, 3, 'Prevent The Fall'),
	(37, 3, 'Jigsaw 360'),
	(38, 3, 'Dancing with Anime Girls 2'),
	(39, 3, 'Tanky Tanks VR'),
	(40, 3, 'Crazy VR Dance Party'),
	(41, 3, 'Dimensional'),
	(42, 3, 'Nevrosa: Spider Song'),
	(43, 3, 'Rise: Race The Future'),
	(44, 3, 'CrisisActionVR'),
	(45, 3, 'Nevrosa: Primal Ritual'),
	(46, 3, 'Magnificent Ships: Volume 1'),
	(47, 3, 'J15 Jet Fighter VR (歼15舰载机)'),
	(48, 3, 'VR STOCK CAR RACERS'),
	(49, 3, 'Basketball Madness'),
	(50, 3, 'Loading Human: Chapter 1'),
	(51, 3, 'Castaway VR'),
	(52, 3, 'Frequency Garden'),
	(53, 3, 'Puzzle of Santa Girl VR'),
	(54, 3, 'Bullet VR'),
	(55, 3, 'Pirates of the Asteroid Belt VR'),
	(56, 3, 'VR SUPER SPORTS - 10 Edition'),
	(57, 3, 'PANTY SLIDE VR'),
	(58, 3, 'Linea VR'),
	(59, 3, 'Constricting Cubes'),
	(60, 3, 'Salvage Op'),
	(61, 3, 'Death Gasp VR'),
	(62, 3, 'SAVANNA SHOT VR'),
	(63, 3, 'Danger Course VR'),
	(64, 3, 'Baby Shark VR Dancing'),
	(65, 3, 'VR SUPER SPORTS - Golf'),
	(66, 3, 'VR SUPER SPORTS - Table Tennis'),
	(67, 3, 'Soul Axiom Rebooted'),
	(68, 3, 'Box:Boxing'),
	(69, 3, 'Fractal Alchemist VR'),
	(70, 3, 'Chess and Checkers VR'),
	(71, 3, 'One More Shot'),
	(72, 3, 'Step Up 2020'),
	(73, 3, 'Cubeland VR'),
	(74, 3, 'Aliens Love Beefs'),
	(75, 3, 'Seeking Dawn'),
	(76, 3, 'Shadow Legend VR'),
	(77, 3, 'Wands'),
	(78, 3, 'First Person Tennis - The Real Tennis Simulator'),
	(79, 3, 'Cave Digger'),
	(80, 3, 'TribeXR DJ School'),
	(81, 3, 'Drops: Rhythm Garden'),
	(82, 3, 'OVERVIEW: a Walk Through the Universe'),
	(83, 3, 'Mervils: A VR Adventure'),
	(84, 3, 'EVERYDAY GOLF VR'),
	(85, 3, 'Groundhog Day: Like Father Like Son'),
	(86, 3, 'The Hospital: Allison\'s Diary'),
	(87, 3, 'Ghostbusters is Hiring: Firehouse'),
	(88, 3, 'VR Regatta - The Sailing Game'),
	(89, 3, 'LyraVR'),
	(90, 3, 'High Mountain Roller Coaster VR'),
	(91, 3, 'Devil and the Fairy'),
	(92, 3, 'Ghostbusters is Hiring: Showdown'),
	(93, 3, 'PAGAN PEAK VR'),
	(94, 3, 'Off-Road Paradise: Trial 4x4'),
	(95, 3, 'Passengers: Awakening'),
	(96, 3, 'Battle of Red Cliffs VR'),
	(97, 3, 'Mondly: Learn Languages in VR'),
	(98, 3, 'Drop Dead'),
	(99, 3, 'Zed Shot'),
	(100, 3, 'The Rabbit Hole'),
	(101, 3, 'Space Maze'),
	(102, 3, 'Hidden Temple – VR Adventure'),
	(103, 3, 'REFLEX UNIT'),
	(104, 3, 'Where\'s Om Nom?'),
	(105, 3, 'ParkingVR'),
	(106, 3, 'Twobit Odyssey'),
	(107, 3, 'Void Racer'),
	(108, 3, 'Voxel Fly'),
	(109, 3, 'Neon Blast VR'),
	(110, 3, 'Color Invader'),
	(111, 3, 'REFLEX UNIT 2'),
	(112, 3, 'Reveries: Dream Flight'),
	(113, 3, 'Flying Aces: Navy Pilot Simulator'),
	(114, 3, 'Apocalypse Rider'),
	(115, 3, 'Drift Club'),
	(116, 3, 'SkyTrek'),
	(117, 3, 'Fear Incarnate'),
	(118, 3, 'Ping Pong');
/*!40000 ALTER TABLE `category_name` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle vr_deals.current_offers
CREATE TABLE IF NOT EXISTS `current_offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `date_time` mediumblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_deals.current_offers: ~0 rows (ungefähr)
DELETE FROM `current_offers`;
/*!40000 ALTER TABLE `current_offers` DISABLE KEYS */;
INSERT INTO `current_offers` (`id`, `article_id`, `sale_price`, `date_time`) VALUES
	(1, 1, 199.00, _binary 0x323032302D30362D30322030393A30303A3135),
	(4, 4, 55.00, _binary 0x323032302D30362D30322030393A30303A3135),
	(5, 5, 1.99, _binary 0x323032302D30362D30322030393A30303A3135),
	(6, 6, 4.99, _binary 0x323032302D30362D30322030393A30303A3135),
	(7, 7, 0.97, _binary 0x323032302D30362D30322030393A30303A3135),
	(8, 8, 49.49, _binary 0x323032302D30362D30322030393A30303A3135),
	(9, 9, 14.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(10, 10, 15.63, _binary 0x323032302D30362D30322030393A30303A3136),
	(11, 11, 8.39, _binary 0x323032302D30362D30322030393A30303A3136),
	(12, 12, 6.79, _binary 0x323032302D30362D30322030393A30303A3136),
	(13, 13, 8.39, _binary 0x323032302D30362D30322030393A30303A3136),
	(14, 14, 13.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(15, 15, 2.84, _binary 0x323032302D30362D30322030393A30303A3136),
	(16, 16, 9.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(17, 17, 3.49, _binary 0x323032302D30362D30322030393A30303A3136),
	(18, 18, 6.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(19, 19, 16.09, _binary 0x323032302D30362D30322030393A30303A3136),
	(20, 20, 7.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(21, 21, 6.24, _binary 0x323032302D30362D30322030393A30303A3136),
	(22, 22, 3.74, _binary 0x323032302D30362D30322030393A30303A3136),
	(23, 23, 11.69, _binary 0x323032302D30362D30322030393A30303A3136),
	(24, 24, 1.29, _binary 0x323032302D30362D30322030393A30303A3136),
	(25, 25, 1.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(26, 26, 2.49, _binary 0x323032302D30362D30322030393A30303A3136),
	(27, 27, 6.79, _binary 0x323032302D30362D30322030393A30303A3136),
	(28, 28, 4.24, _binary 0x323032302D30362D30322030393A30303A3136),
	(29, 29, 1.63, _binary 0x323032302D30362D30322030393A30303A3136),
	(30, 30, 6.49, _binary 0x323032302D30362D30322030393A30303A3136),
	(31, 31, 2.04, _binary 0x323032302D30362D30322030393A30303A3136),
	(32, 32, 0.39, _binary 0x323032302D30362D30322030393A30303A3136),
	(33, 33, 6.24, _binary 0x323032302D30362D30322030393A30303A3136),
	(34, 34, 2.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(35, 35, 1.97, _binary 0x323032302D30362D30322030393A30303A3136),
	(36, 36, 5.24, _binary 0x323032302D30362D30322030393A30303A3136),
	(37, 37, 1.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(38, 38, 2.49, _binary 0x323032302D30362D30322030393A30303A3136),
	(39, 39, 1.27, _binary 0x323032302D30362D30322030393A30303A3136),
	(40, 40, 2.39, _binary 0x323032302D30362D30322030393A30303A3136),
	(41, 41, 3.41, _binary 0x323032302D30362D30322030393A30303A3136),
	(42, 42, 2.39, _binary 0x323032302D30362D30322030393A30303A3136),
	(43, 43, 2.49, _binary 0x323032302D30362D30322030393A30303A3136),
	(44, 44, 1.03, _binary 0x323032302D30362D30322030393A30303A3136),
	(45, 45, 9.54, _binary 0x323032302D30362D30322030393A30303A3136),
	(46, 46, 89.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(47, 47, 11.75, _binary 0x323032302D30362D30322030393A30303A3136),
	(48, 48, 5.73, _binary 0x323032302D30362D30322030393A30303A3136),
	(49, 49, 11.19, _binary 0x323032302D30362D30322030393A30303A3136),
	(50, 50, 8.39, _binary 0x323032302D30362D30322030393A30303A3136),
	(51, 51, 1.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(52, 52, 4.49, _binary 0x323032302D30362D30322030393A30303A3136),
	(53, 53, 2.49, _binary 0x323032302D30362D30322030393A30303A3136),
	(54, 54, 0.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(55, 55, 4.49, _binary 0x323032302D30362D30322030393A30303A3136),
	(56, 56, 1.44, _binary 0x323032302D30362D30322030393A30303A3136),
	(57, 57, 8.89, _binary 0x323032302D30362D30322030393A30303A3136),
	(58, 58, 5.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(59, 59, 1.59, _binary 0x323032302D30362D30322030393A30303A3136),
	(60, 60, 2.49, _binary 0x323032302D30362D30322030393A30303A3136),
	(61, 61, 0.49, _binary 0x323032302D30362D30322030393A30303A3136),
	(62, 62, 0.49, _binary 0x323032302D30362D30322030393A30303A3136),
	(63, 63, 4.91, _binary 0x323032302D30362D30322030393A30303A3136),
	(64, 64, 5.79, _binary 0x323032302D30362D30322030393A30303A3136),
	(65, 65, 4.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(66, 66, 6.44, _binary 0x323032302D30362D30322030393A30303A3136),
	(67, 67, 3.49, _binary 0x323032302D30362D30322030393A30303A3136),
	(68, 68, 3.49, _binary 0x323032302D30362D30322030393A30303A3136),
	(69, 69, 7.79, _binary 0x323032302D30362D30322030393A30303A3136),
	(70, 70, 0.59, _binary 0x323032302D30362D30322030393A30303A3136),
	(71, 71, 16.79, _binary 0x323032302D30362D30322030393A30303A3136),
	(72, 72, 2.79, _binary 0x323032302D30362D30322030393A30303A3136),
	(73, 73, 2.79, _binary 0x323032302D30362D30322030393A30303A3136),
	(74, 74, 3.59, _binary 0x323032302D30362D30322030393A30303A3136),
	(75, 75, 0.71, _binary 0x323032302D30362D30322030393A30303A3136),
	(76, 76, 6.96, _binary 0x323032302D30362D30322030393A30303A3136),
	(77, 77, 8.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(78, 78, 11.31, _binary 0x323032302D30362D30322030393A30303A3136),
	(79, 79, 13.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(80, 80, 19.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(81, 81, 13.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(82, 82, 3.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(83, 83, 25.49, _binary 0x323032302D30362D30322030393A30303A3136),
	(84, 84, 4.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(85, 85, 6.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(86, 86, 4.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(87, 87, 20.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(88, 88, 9.74, _binary 0x323032302D30362D30322030393A30303A3136),
	(89, 89, 2.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(90, 90, 4.00, _binary 0x323032302D30362D30322030393A30303A3136),
	(91, 91, 23.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(92, 92, 12.74, _binary 0x323032302D30362D30322030393A30303A3136),
	(93, 93, 1.49, _binary 0x323032302D30362D30322030393A30303A3136),
	(94, 94, 0.92, _binary 0x323032302D30362D30322030393A30303A3136),
	(95, 95, 4.00, _binary 0x323032302D30362D30322030393A30303A3136),
	(96, 96, 3.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(97, 97, 2.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(98, 98, 4.00, _binary 0x323032302D30362D30322030393A30303A3136),
	(99, 99, 14.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(100, 100, 3.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(101, 101, 4.00, _binary 0x323032302D30362D30322030393A30303A3136),
	(102, 102, 6.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(103, 103, 1.49, _binary 0x323032302D30362D30322030393A30303A3136),
	(104, 104, 1.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(105, 105, 0.49, _binary 0x323032302D30362D30322030393A30303A3136),
	(106, 106, 2.49, _binary 0x323032302D30362D30322030393A30303A3136),
	(107, 107, 2.00, _binary 0x323032302D30362D30322030393A30303A3136),
	(108, 108, 0.92, _binary 0x323032302D30362D30322030393A30303A3136),
	(109, 109, 2.49, _binary 0x323032302D30362D30322030393A30303A3136),
	(110, 110, 2.37, _binary 0x323032302D30362D30322030393A30303A3136),
	(111, 111, 0.92, _binary 0x323032302D30362D30322030393A30303A3136),
	(112, 112, 1.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(113, 113, 2.49, _binary 0x323032302D30362D30322030393A30303A3136),
	(114, 114, 2.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(115, 115, 1.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(116, 116, 2.49, _binary 0x323032302D30362D30322030393A30303A3136),
	(117, 117, 4.00, _binary 0x323032302D30362D30322030393A30303A3136),
	(118, 118, 0.92, _binary 0x323032302D30362D30322030393A30303A3136),
	(119, 119, 7.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(120, 120, 0.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(121, 121, 3.49, _binary 0x323032302D30362D30322030393A30303A3136),
	(122, 122, 1.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(123, 123, 0.92, _binary 0x323032302D30362D30322030393A30303A3136),
	(124, 124, 1.99, _binary 0x323032302D30362D30322030393A30303A3136),
	(125, 2, 199.99, _binary 0x323032302D30362D30322031313A30353A3534);
/*!40000 ALTER TABLE `current_offers` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle vr_deals.expired_offers
CREATE TABLE IF NOT EXISTS `expired_offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `date_time` mediumblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_deals.expired_offers: ~0 rows (ungefähr)
DELETE FROM `expired_offers`;
/*!40000 ALTER TABLE `expired_offers` DISABLE KEYS */;
INSERT INTO `expired_offers` (`id`, `article_id`, `sale_price`, `date_time`) VALUES
	(1, 3, 699.00, _binary 0x323032302D30362D30322030393A30303A3135);
/*!40000 ALTER TABLE `expired_offers` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle vr_deals.hardware
CREATE TABLE IF NOT EXISTS `hardware` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` tinytext COLLATE utf8_german2_ci NOT NULL DEFAULT '',
  `img_url` tinytext COLLATE utf8_german2_ci NOT NULL DEFAULT '',
  `article_name` tinytext COLLATE utf8_german2_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_german2_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_deals.hardware: ~7 rows (ungefähr)
DELETE FROM `hardware`;
/*!40000 ALTER TABLE `hardware` DISABLE KEYS */;
INSERT INTO `hardware` (`id`, `url`, `img_url`, `article_name`, `description`) VALUES
	(1, 'https://geizhals.de/?cat=WL-1582428', 'sharkoon.jpg', 'Einsteiger PC bis 650€', 'AMD Ryzen 3 3300X, 16 GB Ram, 500 GB SSD, RX 5500 XT, B450M Mainbord, be quiet! Pure Power 11 400W'),
	(2, 'https://geizhals.de/?cat=WL-1591033', 'sharkoon.jpg', 'Einsteiger PC bis 700€', 'AMD Ryzen 3 3300X, 16 GB Ram, 500 GB SSD, GTX 1660 SUPER, B450M Mainbord, be quiet! Pure Power 11 500W'),
	(3, 'https://geizhals.de/?cat=WL-1354138', 'coolermaster.jpg', 'Mittelklasse PC bis 750€', 'AMD Ryzen 5 3600, 16 GB Ram, 500 GB SSD, GTX 1660 SUPER, B450M Mainbord, be quiet! Pure Power 11 500W'),
	(4, 'https://geizhals.de/?cat=WL-1582914', 'coolermaster.jpg', 'Mittelklasse PC bis 850€', 'AMD Ryzen 5 3600, 16 GB Ram, 1000 GB SSD, RX 5700, B450M Mainbord, be quiet! Pure Power 11 500W'),
	(6, 'https://geizhals.de/?cat=WL-1590990', 'coolermaster.jpg', 'Mittelklasse PC bis 950€', 'AMD Ryzen 5 3600, 16 GB Ram, 1000 GB SSD, RX 5700 XT, B450 Mainbord, be quiet! Straight Power 11 550W'),
	(7, 'https://geizhals.de/?cat=WL-1591067', 'phanteks.jpg', 'Oberklasse PC bis 1150€', 'AMD Ryzen 5 3600, 16 GB Ram, 1000 GB SSD, RTX 2070 Super, B450 Mainbord, be quiet! Straight Power 11 550W'),
	(8, 'https://geizhals.de/?cat=WL-1591695', 'phanteks.jpg', 'Oberklasse PC bis 1500€', 'AMD Ryzen 5 3700x, 16 GB Ram, 1000 GB SSD, RTX 2080 Super, B450 Mainbord, be quiet! Straight Power 11 550W');
/*!40000 ALTER TABLE `hardware` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle vr_deals.keywords
CREATE TABLE IF NOT EXISTS `keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `keyword` tinytext COLLATE utf8_german2_ci NOT NULL,
  `regular_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10005 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_deals.keywords: ~8 rows (ungefähr)
DELETE FROM `keywords`;
/*!40000 ALTER TABLE `keywords` DISABLE KEYS */;
INSERT INTO `keywords` (`id`, `category_id`, `keyword`, `regular_price`) VALUES
	(1, 1, 'Oculus Quest 128 GB', 549.00),
	(2, 1, 'Oculus Quest 64 GB', 449.00),
	(3, 1, 'Oculus Rift S', 449.00),
	(4, 1, 'PlayStation VR Mega Pack', 319.00),
	(5, 1, 'PlayStation VR + Camera + VR Worlds', 289.00),
	(6, 2, 'VR Aim Controller', 75.00),
	(7, 1, 'Vive Cosmos', 799.00),
	(8, 2, 'PlayStation Move Motion-Controller', 89.99);
/*!40000 ALTER TABLE `keywords` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle vr_deals.stores
CREATE TABLE IF NOT EXISTS `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext COLLATE utf8_german2_ci NOT NULL,
  `url` text COLLATE utf8_german2_ci NOT NULL DEFAULT '',
  `priority` text COLLATE utf8_german2_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_deals.stores: ~7 rows (ungefähr)
DELETE FROM `stores`;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` (`id`, `name`, `url`, `priority`) VALUES
	(20, 'Amazon', 'https://www.amazon.de/s?k=virtual+reality+brille', '1'),
	(21, 'Mediamarkt', 'https://www.mediamarkt.de/de/category/_virtual-reality-605009.html', '2'),
	(22, 'Netgames', 'https://netgames.de/ai_search.php?q=vr', '3'),
	(31, 'Oculus Quest', 'https://www.oculus.com/experiences/quest/', '4'),
	(32, 'Oculus Rift', 'https://www.oculus.com/experiences/rift/section/1578364258944223/', '5'),
	(33, 'Humble Bundle', 'https://www.humblebundle.com/store', '6'),
	(34, 'Steam', 'https://store.steampowered.com/', '7'),
	(35, 'Oculus Go', 'https://www.oculus.com/experiences/go/section/1500175860035862/', '8');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
