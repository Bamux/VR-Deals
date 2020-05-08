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
  `website_article_id` bigint(20) NOT NULL,
  `article_name` tinytext COLLATE utf8_german2_ci NOT NULL,
  `regular_price` decimal(10,2) NOT NULL,
  `img_url` text COLLATE utf8_german2_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_deals.articles: ~54 rows (ungefähr)
DELETE FROM `articles`;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `store_id`, `website_article_id`, `article_name`, `regular_price`, `img_url`) VALUES
	(1, 1, 1124164450939641, 'Wands', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38984458_289181478659872_7453552890485932032_n.jpg?_nc_cat=110&_nc_sid=79b88e&_nc_ohc=eXqWGD-5_B0AX_T8thS&_nc_ht=scontent.oculuscdn.com&oh=e919c3368cbfc359c70a8a2b6d9eaa90&oe=5ED7DC47'),
	(2, 1, 1135654449807002, 'Coaster', 2.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12410344_389877078067603_3800220340907409408_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=v6eHopwU1NMAX8Yb4xx&_nc_ht=scontent.oculuscdn.com&oh=714cf9b3e88e334fd789d984d4875d11&oe=5ED82F0D'),
	(3, 1, 859807967457408, 'The Hospital: Allison\'s Diary', 2.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162696_279517842551324_1550060822477144064_n.jpg?_nc_cat=110&_nc_sid=79b88e&_nc_ohc=1gANNDOU9GEAX_Nk2JQ&_nc_ht=scontent.oculuscdn.com&oh=5d4e8daa3f7120ea37602f1f3f79f872&oe=5ED8890B'),
	(4, 1, 1123989124339476, 'PAINT VR', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12410441_2030571613861749_4470457413446664192_n.jpg?_nc_cat=109&_nc_sid=79b88e&_nc_ohc=lRvdI5u3aU8AX8PGj2l&_nc_ht=scontent.oculuscdn.com&oh=2b7d5b7060c149b9b09fb83adc483d70&oe=5ED80671'),
	(5, 1, 1232181650154576, 'Zed Shot', 2.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162719_1270606906381020_1931655674450673664_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_ohc=yvlnM2O4kKwAX9rXgeh&_nc_ht=scontent.oculuscdn.com&oh=710b9d55fbcb7e105446a2eca6ce7b3c&oe=5ED51291'),
	(6, 1, 1085190581588500, 'Panzer Panic', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12386185_1647791632178002_3758893139088113664_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=CQGrgGC9E_UAX_uBrmg&_nc_ht=scontent.oculuscdn.com&oh=ae2bd882ee7559d8f4e8d16b25a661d9&oe=5ED52164'),
	(7, 1, 1845987428750183, 'Doors of Silence - the prologue', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162704_511426895865010_7589031711078350848_n.jpg?_nc_cat=101&_nc_sid=79b88e&_nc_ohc=HeCInhLslH0AX--3LyZ&_nc_ht=scontent.oculuscdn.com&oh=9c2ce4432127bb14376eda31fd5d9e39&oe=5ED7A759'),
	(8, 1, 1272636489423125, 'Mondly: Learn Languages in VR', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982490_1630942020371100_2898018870759522304_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=NXNIReXj9T0AX8S2l3G&_nc_ht=scontent.oculuscdn.com&oh=4545bf44ce019b16a52318fe5e9616a4&oe=5ED525C0'),
	(9, 1, 953565778099802, 'Space Maze', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162675_739907842858923_1613311650499133440_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=SGvcGt7-ryUAX8C4lQh&_nc_ht=scontent.oculuscdn.com&oh=a682d3e8ec484e71015eb07e4141ef9e&oe=5ED6D34C'),
	(10, 1, 1418554718219936, 'Dark Mechanism', 0.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12139289_1649853281983082_737272002972221440_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_ohc=YPi_3Srz3bcAX9W6nVb&_nc_ht=scontent.oculuscdn.com&oh=16cc6b002e535c8f95ffad9f751a7efb&oe=5ED64C5F'),
	(11, 1, 1274071716010063, 'KryptCrawler', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162679_328943687545535_7035120318762975232_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_ohc=0n6fvxsM-x4AX9d-t7r&_nc_ht=scontent.oculuscdn.com&oh=08c186363143af2b43a66812b933dc95&oe=5ED7B263'),
	(12, 1, 1094315670658189, 'REFLEX UNIT', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12410440_2190557351158171_893019135011717120_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=Ani3XBoz1aQAX_9p01R&_nc_ht=scontent.oculuscdn.com&oh=43d65b2b34e40d71b12af6e979357a96&oe=5ED72BD6'),
	(13, 1, 2221544801220466, 'TheBlu', 2.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974721_237060436973641_2557018765472563200_n.jpg?_nc_cat=108&_nc_sid=79b88e&_nc_ohc=aNmZyRwEIHYAX-WTp2I&_nc_ht=scontent.oculuscdn.com&oh=649eaf36db110b95ebf2a6403ea517ae&oe=5ED8B0A8'),
	(14, 1, 2360037144040771, 'Spice & Wolf VR', 24.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974506_630672060677635_989032446013997056_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=HE1y9A3byb4AX-psItD&_nc_ht=scontent.oculuscdn.com&oh=3a3ff6501a61385f216b9b599b7ab9b1&oe=5ED7788A'),
	(15, 1, 1465981820197033, 'Sky Duel: Tournament', 1.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12504685_996122463877245_4032493516599853056_n.jpg?_nc_cat=105&_nc_sid=79b88e&_nc_ohc=raz6rhulEasAX_6cvku&_nc_ht=scontent.oculuscdn.com&oh=25cb31daf9ff24f227f21ed390a945e7&oe=5ED6926C'),
	(16, 1, 2451176948282095, 'Color Invader', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982695_582098815886382_8879343691861327872_n.jpg?_nc_cat=101&_nc_sid=79b88e&_nc_ohc=Y0-qNq_kwyMAX9PTAXu&_nc_ht=scontent.oculuscdn.com&oh=43da82b7de2e8e8322ac0a8dd10482d7&oe=5ED62160'),
	(17, 1, 1163285000441874, 'REFLEX UNIT 2', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/57572934_578778726259874_6354174913502248960_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_ohc=u0ecgBL8l4kAX85yNQd&_nc_ht=scontent.oculuscdn.com&oh=a68636dcb5aab81e2789c02b76ceafde&oe=5ED6A914'),
	(18, 1, 3013160292031145, 'Flying Aces: Navy Pilot Simulator', 8.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/39031433_2288337551222498_5154506971960836096_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=vcsJm8WMVrEAX8RtPJx&_nc_ht=scontent.oculuscdn.com&oh=c81ffd9261bcc1562874eb2033eafeed&oe=5ED69C55'),
	(19, 1, 1581112278669461, 'Big Breezy Boat', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12602064_156091088562700_6567464947926695936_n.jpg?_nc_cat=104&_nc_sid=79b88e&_nc_ohc=UgLEeXKEzvcAX_AsSnY&_nc_ht=scontent.oculuscdn.com&oh=e4bd7973ddba78389d0cba63ddf60e9f&oe=5ED888E5'),
	(20, 1, 1612336165492390, 'SkyTrek', 3.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12504730_176118463044153_8287026023380287488_n.jpg?_nc_cat=110&_nc_sid=79b88e&_nc_ohc=6ZkYUgmkxqQAX-FYYPW&_nc_ht=scontent.oculuscdn.com&oh=1fd6bb14c4a9c1230b7f0a1868d3ba32&oe=5ED7BEAE'),
	(21, 1, 2146744692021364, 'Fear Incarnate', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974501_528678351313451_8983829933956530176_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=fEVq-w5iL2IAX_CFDpN&_nc_ht=scontent.oculuscdn.com&oh=ac2a630a63824d2f02357c6580dbd9fc&oe=5ED57369'),
	(22, 1, 1834708653267876, 'Astronaut VR', 1.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12482156_153672155296014_773064293322063872_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_ohc=22B1FKE0CgQAX-pkC5z&_nc_ht=scontent.oculuscdn.com&oh=6a6af073d41b5314b649178c2c64eb3f&oe=5ED51303'),
	(23, 1, 2175166109234555, 'Nicht sterben', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982720_653033418511681_6765696504888819712_n.jpg?_nc_cat=108&_nc_sid=79b88e&_nc_ohc=E6pSeT2pMxMAX-2abr9&_nc_ht=scontent.oculuscdn.com&oh=b3ef7310db52039b5aa6a979e04c6b7e&oe=5ED70559'),
	(24, 1, 1969568113114007, 'CURSED NIGHT - The House', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12331252_2064288330481111_5127201794685927424_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=tz2PdKFP7tgAX9HjjzM&_nc_ht=scontent.oculuscdn.com&oh=a92ca4939fa801864a95367fb8a32233&oe=5ED829B7'),
	(25, 2, 1225484597472435, 'Wilson’s Heart', 29.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12448937_1645595452435775_863228662_n.jpg?_nc_cat=108&_nc_sid=79b88e&_nc_ohc=mVxUO_Qy83cAX-Wio5X&_nc_ht=scontent.oculuscdn.com&oh=6e24e2975ec95c80cbc47dc4bf1bd079&oe=5ED7ACFE'),
	(26, 2, 1833318536683635, 'Wands', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974725_2276911705958657_5463510734828732416_n.jpg?_nc_cat=101&_nc_sid=79b88e&_nc_ohc=wzO-a9-Cl8EAX-N4WgO&_nc_ht=scontent.oculuscdn.com&oh=50ecc6c9d0ac627e73e4d034526ae94c&oe=5ED8B894'),
	(27, 2, 888118474643317, 'Solitaire VR by Tripp', 2.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12331039_1768756553397670_2146265531_n.jpg?_nc_cat=108&_nc_sid=79b88e&_nc_ohc=zpmO0aMhocEAX8fstgS&_nc_ht=scontent.oculuscdn.com&oh=b5da1f14b7a8593b9700f3c6ad8cbdc0&oe=5ED84825'),
	(28, 2, 984294025016007, 'theBlu: Season 1', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12522493_1192084087524431_4762836045106511872_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=wJY8FrWkw6QAX9Qoji3&_nc_ht=scontent.oculuscdn.com&oh=9eba86987dd1d97568fc179faf429b01&oe=5ED8B5C3'),
	(29, 2, 1536415903036034, 'Paranormal Activity: The Lost Soul', 29.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162737_280115089160443_3274172308406665216_n.jpg?_nc_cat=1&_nc_sid=79b88e&_nc_ohc=czla2Eh5nF0AX9L5DMP&_nc_ht=scontent.oculuscdn.com&oh=bf003046736d279cb2d8ed4189fb29d1&oe=5ED7EF2B'),
	(30, 2, 1222120447828084, 'The American Dream', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12139031_165803487546693_3901671909435113472_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=3qqGB2-uWQQAX-ck7zD&_nc_ht=scontent.oculuscdn.com&oh=e763eae1a54e5db0eda6d346042aafe6&oe=5ED7FF1E'),
	(31, 2, 1633794490011975, 'Final Assault', 29.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38984448_395344004579198_4576466955887706112_n.jpg?_nc_cat=1&_nc_sid=79b88e&_nc_ohc=0XaimeeqyqIAX-xmFiG&_nc_ht=scontent.oculuscdn.com&oh=494643dd9eecfa9824409190e59c3edd&oe=5ED83E54'),
	(32, 2, 1471853306166046, 'First Person Tennis - The Real Tennis Simulator', 24.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12138836_213255789368882_3336720608628047872_n.jpg?_nc_cat=109&_nc_sid=79b88e&_nc_ohc=Gx3CntxJFJ0AX_TQL8a&_nc_ht=scontent.oculuscdn.com&oh=6238bcf810f9c7a0637d9868db4510e0&oe=5ED6F314'),
	(33, 2, 1696308540462484, 'Cave Digger', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/75196223_2529090667361943_3266401711840821248_n.jpg?_nc_cat=1&_nc_sid=79b88e&_nc_ohc=A7kuSBtLGHoAX_9C35x&_nc_ht=scontent.oculuscdn.com&oh=59301411d62a70cf68e2d5d1660ced61&oe=5ED713A8'),
	(34, 2, 703660393091961, 'Bending the Light', 14.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162686_197751094100113_5166692086237364224_n.jpg?_nc_cat=108&_nc_sid=79b88e&_nc_ohc=XbckvLLzixIAX_T4NK-&_nc_ht=scontent.oculuscdn.com&oh=734b165ac075a6c4a121ecc7e2a3ddcf&oe=5ED83528'),
	(35, 2, 2124641230881553, 'KOBOLD: Chapter I', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982453_567103313725999_7439880798401986560_n.jpg?_nc_cat=107&_nc_sid=79b88e&_nc_ohc=hd9jGaSWYWcAX9mag4N&_nc_ht=scontent.oculuscdn.com&oh=7235e1f0ba8cc4c65f17e9a4c245b258&oe=5ED7DFE4'),
	(36, 2, 1990542257627879, 'Drops: Rhythm Garden', 6.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12602063_2149554861998397_1061964684371951616_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=3TlLYNu05h8AX-nU4a_&_nc_ht=scontent.oculuscdn.com&oh=eab5422c6477697dababf20138d3b8db&oe=5ED8C9CD'),
	(37, 2, 974372449301580, 'Black Hat Cooperative', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12138837_840020239441821_1931870073_n.jpg?_nc_cat=1&_nc_sid=79b88e&_nc_ohc=wUcuBbIV6ekAX9rP-xr&_nc_ht=scontent.oculuscdn.com&oh=20871af8df2cdb09ca47220dbc766afe&oe=5ED65AA2'),
	(38, 2, 1809390489075678, 'OVERVIEW: a Walk Through the Universe', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12482206_179896052703504_8855719069630857216_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=nfkXZqgVepEAX-ltfeI&_nc_ht=scontent.oculuscdn.com&oh=61ab19e18e8c69bf4b106969b3175157&oe=5ED5DA31'),
	(39, 2, 1127100290673351, 'Twisted Arrow', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12427628_174419283196072_8224693695589384192_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=2SvGbXmKhNMAX-J74Un&_nc_ht=scontent.oculuscdn.com&oh=ca39babb0b35d4d048a1777ffbec87bc&oe=5ED6B803'),
	(40, 2, 1942845939155229, 'Groundhog Day: Like Father Like Son', 14.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974503_376019906298966_5583285982460903424_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=EgM3BfQ18-QAX8k3IGN&_nc_ht=scontent.oculuscdn.com&oh=8ad0ffd24c3d0e609e7e0240ad735ffc&oe=5ED65A7C'),
	(41, 2, 1637736282963856, 'PAINT VR', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162716_1967067816868848_1314924883578191872_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=ur8clZHnFpsAX84bEg5&_nc_ht=scontent.oculuscdn.com&oh=f90617e07b435b985268e637cbfa7ba0&oe=5ED8CBEA'),
	(42, 2, 1233189620061747, 'Project LUX', 24.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12482153_1237690203005467_6589028230668222464_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=Fmf-T6TQUJQAX8GDJHX&_nc_ht=scontent.oculuscdn.com&oh=6d18299317818eaf8b82743b9e4a1748&oe=5ED873E6'),
	(43, 2, 3076088545738492, 'Spice & Wolf VR', 24.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974777_721275728287486_3750819051543199744_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=efxH3ytwGjMAX8GxCqA&_nc_ht=scontent.oculuscdn.com&oh=c94a393c74c2f1edae5485f939efe7a9&oe=5ED6C24C'),
	(44, 2, 784129301688154, 'Final Approach Pilot Edition', 14.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12504575_307973636201536_1736170308_n.jpg?_nc_cat=105&_nc_sid=79b88e&_nc_ohc=x6ZpgLtpb-AAX9Pd3zw&_nc_ht=scontent.oculuscdn.com&oh=758e541f1824fe8971064558205e638f&oe=5ED756DE'),
	(45, 2, 1958452074228276, 'VR Regatta - The Sailing Game', 29.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12410441_244578722790614_2856138833634787328_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_ohc=VOVD4_MI1vQAX9hyDeT&_nc_ht=scontent.oculuscdn.com&oh=7272d952496c60dba668ed0f2921d943&oe=5ED62466'),
	(46, 2, 966139690133648, 'Final Approach', 14.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12427716_226135961141136_3926054030752612352_n.jpg?_nc_cat=107&_nc_sid=79b88e&_nc_ohc=6yycB1sp0OUAX-PSEhv&_nc_ht=scontent.oculuscdn.com&oh=c68b482da9fced62dfe2e8ce1d02cc5e&oe=5ED72D0D'),
	(47, 2, 1437580549697592, 'The Villa: Allison\'s Diary', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12410200_2034673496813126_3407860913615667200_n.jpg?_nc_cat=100&_nc_sid=79b88e&_nc_ohc=_nfyTFybXx8AX-FEK3W&_nc_ht=scontent.oculuscdn.com&oh=568e0b0c4cb5c28c77e95e62f336938d&oe=5ED71358'),
	(48, 2, 1600776106603508, 'KryptCrawler', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162698_285368838604495_2088071949509984256_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_ohc=Sdn6jJavRgMAX-yn1Ep&_nc_ht=scontent.oculuscdn.com&oh=a22a6f11b5568da2f3c7919e6af3273a&oe=5ED85EBC'),
	(49, 3, 1611681078875316, 'Ballista', 14.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/43931334_848261419005837_3524074916099915776_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_oc=AQkKNO1RZWDZuq6lBMijIPmUNavnRfaBN1O536y3VQ2sL8S-RBfjjMt9WQ0X610YfnHnhOzkCZ_KzP6Om5YfF4ug&_nc_ht=scontent.oculuscdn.com&oh=36bbc88d1a5024a1bdf66cba75155a8b&oe=5ED66779'),
	(50, 3, 559809134739485, 'Exercise Your Brain From Home', 39.98, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/39031408_542259036491154_7247332020043382784_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_oc=AQnjMKa1vh6pjvFPx0P-VTkeU8sh3lZ-8Vc8pVlDDHC6gjELJ_nnWh-glFm_knLDu2syNinG541ctLDnmdLTrLqI&_nc_ht=scontent.oculuscdn.com&oh=3f6e6d252e3879655f2d621541bf0f57&oe=5ED52683'),
	(51, 3, 606478123270498, 'Brave Adventures From Home', 39.98, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982708_579507596022658_4049990246996115456_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_oc=AQn7Qph6zNghuEzKSsmB2a7vhm2W4AJ7ADCPMF6Rua8ZtRtSwb0BB9JSS5nHybrKj9zPMRErPQcyqJOLGHqnu5pB&_nc_ht=scontent.oculuscdn.com&oh=f1fd762c60827d4e0f4386dc1b94d57f&oe=5ED65F2E'),
	(52, 3, 2215140511885250, 'Fruit Ninja', 14.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974450_475444409850979_6523234498539159552_n.jpg?_nc_cat=100&_nc_sid=79b88e&_nc_ohc=UBKAwLBsrtcAX_RN5D2&_nc_ht=scontent.oculuscdn.com&oh=c9c30dc2ec3e80378fa342cacd256187&oe=5ED72E7B'),
	(53, 3, 3064046640291676, 'SWORDS of GARGANTUA', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/75195906_242590903606641_6947990434647900160_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=IeuqunXfg8oAX_7-lSP&_nc_ht=scontent.oculuscdn.com&oh=39348bb43dc58fa5c72ade5ad20a7b0f&oe=5ED82AC0'),
	(54, 3, 2592096760842149, '2MD: VR Football Unleashed', 14.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/39035379_656630631552496_2655991734143549440_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=3KneK6gz4SEAX9peLSs&_nc_ht=scontent.oculuscdn.com&oh=fe6a7548628df99d57e0cb80609b8cd2&oe=5EDBF551');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle vr_deals.current_offers
CREATE TABLE IF NOT EXISTS `current_offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `date_time` mediumblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_deals.current_offers: ~51 rows (ungefähr)
DELETE FROM `current_offers`;
/*!40000 ALTER TABLE `current_offers` DISABLE KEYS */;
INSERT INTO `current_offers` (`id`, `article_id`, `sale_price`, `date_time`) VALUES
	(1, 1, 6.99, _binary 0x323032302D30352D30352031363A33343A3337),
	(2, 2, 1.99, _binary 0x323032302D30352D30352031363A33343A3337),
	(3, 3, 1.99, _binary 0x323032302D30352D30352031363A33343A3337),
	(4, 4, 3.99, _binary 0x323032302D30352D30352031363A33343A3337),
	(5, 5, 2.67, _binary 0x323032302D30352D30352031363A33343A3337),
	(6, 6, 0.92, _binary 0x323032302D30352D30352031363A33343A3337),
	(7, 7, 2.00, _binary 0x323032302D30352D30352031363A33343A3337),
	(8, 8, 2.49, _binary 0x323032302D30352D30352031363A33343A3337),
	(9, 9, 0.92, _binary 0x323032302D30352D30352031363A33343A3337),
	(10, 10, 0.49, _binary 0x323032302D30352D30352031363A33343A3337),
	(11, 11, 1.49, _binary 0x323032302D30352D30352031363A33343A3337),
	(12, 12, 2.49, _binary 0x323032302D30352D30352031363A33343A3337),
	(13, 13, 1.99, _binary 0x323032302D30352D30352031363A33343A3337),
	(14, 14, 14.99, _binary 0x323032302D30352D30352031363A33343A3337),
	(15, 15, 0.49, _binary 0x323032302D30352D30352031363A33343A3337),
	(16, 16, 2.49, _binary 0x323032302D30352D30352031363A33343A3337),
	(17, 17, 4.00, _binary 0x323032302D30352D30352031363A33343A3337),
	(18, 18, 6.43, _binary 0x323032302D30352D30352031363A33343A3337),
	(19, 19, 0.92, _binary 0x323032302D30352D30352031363A33343A3337),
	(20, 20, 1.99, _binary 0x323032302D30352D30352031363A33343A3337),
	(21, 21, 0.92, _binary 0x323032302D30352D30352031363A33343A3337),
	(22, 22, 0.49, _binary 0x323032302D30352D30352031363A33343A3337),
	(23, 23, 4.00, _binary 0x323032302D30352D30352031363A33343A3337),
	(24, 24, 0.92, _binary 0x323032302D30352D30352031363A33343A3337),
	(25, 25, 14.99, _binary 0x323032302D30352D30352031363A33343A3438),
	(26, 26, 13.99, _binary 0x323032302D30352D30352031363A33343A3438),
	(27, 27, 1.99, _binary 0x323032302D30352D30352031363A33343A3438),
	(28, 28, 6.99, _binary 0x323032302D30352D30352031363A33343A3438),
	(29, 29, 10.49, _binary 0x323032302D30352D30352031363A33343A3438),
	(30, 30, 4.99, _binary 0x323032302D30352D30352031363A33343A3438),
	(31, 31, 19.99, _binary 0x323032302D30352D30352031363A33343A3438),
	(32, 32, 19.99, _binary 0x323032302D30352D30352031363A33343A3438),
	(33, 33, 13.99, _binary 0x323032302D30352D30352031363A33343A3438),
	(34, 34, 10.49, _binary 0x323032302D30352D30352031363A33343A3438),
	(35, 35, 4.00, _binary 0x323032302D30352D30352031363A33343A3438),
	(36, 36, 4.99, _binary 0x323032302D30352D30352031363A33343A3438),
	(37, 37, 2.49, _binary 0x323032302D30352D30352031363A33343A3438),
	(38, 38, 4.00, _binary 0x323032302D30352D30352031363A33343A3438),
	(39, 39, 4.00, _binary 0x323032302D30352D30352031363A33343A3438),
	(40, 40, 9.74, _binary 0x323032302D30352D30352031363A33343A3438),
	(41, 41, 3.99, _binary 0x323032302D30352D30352031363A33343A3438),
	(42, 42, 14.99, _binary 0x323032302D30352D30352031363A33343A3438),
	(43, 43, 14.99, _binary 0x323032302D30352D30352031363A33343A3438),
	(44, 44, 4.99, _binary 0x323032302D30352D30352031363A33343A3438),
	(45, 45, 14.99, _binary 0x323032302D30352D30352031363A33343A3438),
	(46, 46, 4.99, _binary 0x323032302D30352D30352031363A33343A3438),
	(47, 47, 3.99, _binary 0x323032302D30352D30352031363A33343A3438),
	(48, 48, 2.99, _binary 0x323032302D30352D30352031363A33343A3438),
	(50, 50, 25.99, _binary 0x323032302D30352D30352031363A33343A3536),
	(51, 51, 25.99, _binary 0x323032302D30352D30352031363A33343A3536),
	(54, 54, 9.99, _binary 0x323032302D30352D30382030393A33393A3331);
/*!40000 ALTER TABLE `current_offers` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle vr_deals.expired_offers
CREATE TABLE IF NOT EXISTS `expired_offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `date_time` mediumblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_deals.expired_offers: ~3 rows (ungefähr)
DELETE FROM `expired_offers`;
/*!40000 ALTER TABLE `expired_offers` DISABLE KEYS */;
INSERT INTO `expired_offers` (`id`, `article_id`, `sale_price`, `date_time`) VALUES
	(1, 49, 9.69, _binary 0x323032302D30352D30352031363A33343A3536),
	(2, 52, 9.99, _binary 0x323032302D30352D30362030393A32343A3535),
	(3, 53, 16.99, _binary 0x323032302D30352D30372030393A31363A3536);
/*!40000 ALTER TABLE `expired_offers` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle vr_deals.headsets
CREATE TABLE IF NOT EXISTS `headsets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext COLLATE utf8_german2_ci NOT NULL,
  `regular_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_deals.headsets: ~4 rows (ungefähr)
DELETE FROM `headsets`;
/*!40000 ALTER TABLE `headsets` DISABLE KEYS */;
INSERT INTO `headsets` (`id`, `name`, `regular_price`) VALUES
	(1, 'Rift', 350.00),
	(2, 'Rift S', 450.00),
	(3, 'Quest', 450.00),
	(4, 'Go', 150.00);
/*!40000 ALTER TABLE `headsets` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle vr_deals.stores
CREATE TABLE IF NOT EXISTS `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext COLLATE utf8_german2_ci NOT NULL,
  `url` text COLLATE utf8_german2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_deals.stores: ~3 rows (ungefähr)
DELETE FROM `stores`;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` (`id`, `name`, `url`) VALUES
	(1, 'Oculus Go', 'https://www.oculus.com/experiences/go/section/1500175860035862/'),
	(2, 'Oculus Rift', 'https://www.oculus.com/experiences/rift/section/1578364258944223/'),
	(3, 'Oculus Quest', 'https://www.oculus.com/experiences/quest/');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
