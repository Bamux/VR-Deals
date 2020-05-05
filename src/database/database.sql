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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_deals.articles: ~80 rows (ungefähr)
DELETE FROM `articles`;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `store_id`, `website_article_id`, `article_name`, `regular_price`, `img_url`) VALUES
	(1, 1, 1124164450939641, 'Wands', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38984458_289181478659872_7453552890485932032_n.jpg?_nc_cat=110&_nc_sid=79b88e&_nc_ohc=RSOM-9N2jU8AX9LILPD&_nc_ht=scontent.oculuscdn.com&oh=9acadd16f2352d600f0efcfffc3d23ea&oe=5ED3E7C7'),
	(2, 1, 1232181650154576, 'Zed Shot', 2.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162719_1270606906381020_1931655674450673664_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_ohc=yvlnM2O4kKwAX85Ou_f&_nc_ht=scontent.oculuscdn.com&oh=02813f55407c6252ee83bf64ff4628ef&oe=5ED51291'),
	(3, 1, 909222225797509, 'Neverout', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12448900_1115010278560664_1330254809_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=W9G2pMp33XUAX-1LpiA&_nc_ht=scontent.oculuscdn.com&oh=cbb434d66de1d139b3104d8d7b30422d&oe=5ED38A28'),
	(4, 1, 953565778099802, 'Space Maze', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162675_739907842858923_1613311650499133440_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=SGvcGt7-ryUAX_U1pwV&_nc_ht=scontent.oculuscdn.com&oh=50eee8b6c3c50a9a6ccf9c0c309aae4a&oe=5ED6D34C'),
	(5, 1, 1051452461583340, 'Hidden Temple – VR Adventure', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12410219_1692120874338076_1777138633_n.jpg?_nc_cat=105&_nc_sid=79b88e&_nc_ohc=qaJr4PqJ_CkAX8UDgQh&_nc_ht=scontent.oculuscdn.com&oh=f2afe48e694a607a1a3b93a8a0860a75&oe=5ED3EB50'),
	(6, 1, 1418554718219936, 'Dark Mechanism', 0.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12139289_1649853281983082_737272002972221440_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_ohc=YPi_3Srz3bcAX_KBOnC&_nc_ht=scontent.oculuscdn.com&oh=f715ebb90ec2058b751cffae84c8e3ac&oe=5ED64C5F'),
	(7, 1, 1094315670658189, 'REFLEX UNIT', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12410440_2190557351158171_893019135011717120_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=Ani3XBoz1aQAX8z03OZ&_nc_ht=scontent.oculuscdn.com&oh=227332c976ec4c33cdb0e9e240a339a1&oe=5ED72BD6'),
	(8, 1, 872167559579148, 'Starfighter Arduxim', 3.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162702_140661239912251_8898938509486718976_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=CzJ-7qKgmmoAX-bnOfP&_nc_ht=scontent.oculuscdn.com&oh=f6ed7f7f3bec98a82227de304ec718ca&oe=5ED42A46'),
	(9, 1, 2221544801220466, 'TheBlu', 2.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974721_237060436973641_2557018765472563200_n.jpg?_nc_cat=108&_nc_sid=79b88e&_nc_ohc=aNmZyRwEIHYAX92YI0-&_nc_ht=scontent.oculuscdn.com&oh=c1e13c46f3a0e1f18e3bd6e6509ddb77&oe=5ED4BC28'),
	(10, 1, 1681924048528676, 'Voxel Fly', 3.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/39001719_763571310690018_6247223188380450816_n.jpg?_nc_cat=105&_nc_sid=79b88e&_nc_ohc=F9e2pHZaiJUAX8BNBqL&_nc_ht=scontent.oculuscdn.com&oh=49e69443bc4543d74fb848ab1a5647b8&oe=5ED43462'),
	(11, 1, 2365079196906504, 'Neon Blast VR', 2.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974516_837636013296934_4162221753940049920_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=OtrpkqVpGJkAX9OlKLV&_nc_ht=scontent.oculuscdn.com&oh=885130edb63c780d8f89256e8a498df6&oe=5ED6DC5C'),
	(12, 1, 2451176948282095, 'Color Invader', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982695_582098815886382_8879343691861327872_n.jpg?_nc_cat=101&_nc_sid=79b88e&_nc_ohc=mC5fTh46IY4AX_kE0O7&_nc_ht=scontent.oculuscdn.com&oh=64e2b61f65a0594cac75a4919c181905&oe=5ED62160'),
	(13, 1, 1163285000441874, 'REFLEX UNIT 2', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/57572934_578778726259874_6354174913502248960_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_ohc=tf0j1l1nBukAX8Qe5jg&_nc_ht=scontent.oculuscdn.com&oh=2c8c0ac3e3ab7dc38da002645840eca9&oe=5ED6A914'),
	(14, 1, 3013160292031145, 'Flying Aces: Navy Pilot Simulator', 8.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/39031433_2288337551222498_5154506971960836096_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=vcsJm8WMVrEAX9aquLE&_nc_ht=scontent.oculuscdn.com&oh=da525ae5b4dde7205f52db615f0d34b5&oe=5ED69C55'),
	(15, 1, 2185901951459621, 'Drift Club', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982470_2607884042809447_6094292193382498304_n.jpg?_nc_cat=104&_nc_sid=79b88e&_nc_ohc=vrJkfdjUnckAX-PjONh&_nc_ht=scontent.oculuscdn.com&oh=6bd2c985f44b43db92222908dee1712c&oe=5ED4340F'),
	(16, 1, 1612336165492390, 'SkyTrek', 3.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12504730_176118463044153_8287026023380287488_n.jpg?_nc_cat=110&_nc_sid=79b88e&_nc_ohc=6ZkYUgmkxqQAX9n6-IY&_nc_ht=scontent.oculuscdn.com&oh=2634ea9645b3408003e6fc3a81b85613&oe=5ED3CA2E'),
	(17, 1, 2146744692021364, 'Fear Incarnate', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974501_528678351313451_8983829933956530176_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=fEVq-w5iL2IAX_p2iIm&_nc_ht=scontent.oculuscdn.com&oh=97d098e0060dfebc2b60231d14024a63&oe=5ED57369'),
	(18, 1, 1459163684102799, 'Ping Pong', 2.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12482153_1284288108320020_8733698460340977664_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=Xfy3gvtdoH0AX9VsqrS&_nc_ht=scontent.oculuscdn.com&oh=f3976e016b36a6b45890282f526da796&oe=5ED3B8A8'),
	(19, 1, 1113269302123405, 'Space Says', 1.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12138792_547041372165482_2201483515898363904_n.jpg?_nc_cat=107&_nc_sid=79b88e&_nc_ohc=MPN9wnQ2tPAAX85RJPU&_nc_ht=scontent.oculuscdn.com&oh=ea3d151d9ba112eb8db964b60fe8979d&oe=5ED46688'),
	(20, 1, 2175166109234555, 'Nicht sterben', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982720_653033418511681_6765696504888819712_n.jpg?_nc_cat=108&_nc_sid=79b88e&_nc_ohc=LGk8fiRBROYAX_z1PCW&_nc_ht=scontent.oculuscdn.com&oh=81851c03b951ce2cfc355750135567d0&oe=5ED70559'),
	(21, 1, 1969568113114007, 'CURSED NIGHT - The House', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12331252_2064288330481111_5127201794685927424_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=tz2PdKFP7tgAX-20BoO&_nc_ht=scontent.oculuscdn.com&oh=0b2a5a56027d2810bcb0de734f962141&oe=5ED43537'),
	(22, 1, 1978400832224524, 'Ultimate Video Player', 3.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38984473_2230645697154286_8842415777798684672_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_ohc=nwLXIZavSskAX8b1PiO&_nc_ht=scontent.oculuscdn.com&oh=aac119a22b1af6a0d120184992c2a2b9&oe=5ED56B96'),
	(23, 1, 1567358236658937, 'Relic Seeker: Hypogeum', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974606_266248524018517_4217342874590642176_n.jpg?_nc_cat=107&_nc_sid=79b88e&_nc_ohc=alKd6tRwdJoAX-nHA9N&_nc_ht=scontent.oculuscdn.com&oh=8e990214235af4ff8060340338a001eb&oe=5ED6388C'),
	(24, 1, 2375089935867236, 'Die Insel Odyssey! Hi Spec', 3.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974557_561616978043278_1702950083277881344_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=k_G3rprJuHQAX9VXD9C&_nc_ht=scontent.oculuscdn.com&oh=a1124196f88f727e9e9e7c93f4407b24&oe=5ED6C5FF'),
	(25, 2, 1275664972562703, 'Dance Collider', 14.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/75439601_869403250152078_8773099395097821184_n.jpg?_nc_cat=1&_nc_sid=79b88e&_nc_ohc=7xAbHvD1caIAX97ZrRh&_nc_ht=scontent.oculuscdn.com&oh=e4f20e884b569f0f00eba3f1024a4631&oe=5ED5383A'),
	(26, 2, 1653313354717205, 'Budget Cuts', 29.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12504788_197532784224714_4719341022969069568_n.jpg?_nc_cat=104&_nc_sid=79b88e&_nc_ohc=Prtr8X1JmF4AX-vRm2H&_nc_ht=scontent.oculuscdn.com&oh=aa78831c75748b91050e8c5df3ce1a66&oe=5ED6BBE5'),
	(27, 2, 2739977019349635, 'Shadow Legend VR', 24.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974563_272492140121143_898625025110704128_n.jpg?_nc_cat=1&_nc_sid=79b88e&_nc_ohc=wBO6aPV0Fd4AX-uUtbC&_nc_ht=scontent.oculuscdn.com&oh=0ad0926619ad1bf353294ddb3f5fc4a7&oe=5ED38C5B'),
	(28, 2, 1833318536683635, 'Wands', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974725_2276911705958657_5463510734828732416_n.jpg?_nc_cat=101&_nc_sid=79b88e&_nc_ohc=wzO-a9-Cl8EAX_RCDJY&_nc_ht=scontent.oculuscdn.com&oh=1977beaa3a05e5a2fef7a74ff3d7e3d8&oe=5ED4C414'),
	(29, 2, 1891601494191063, 'Coaster', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/39003268_533151837203699_472641866521640960_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=5s9Y159T1ccAX9xoY9w&_nc_ht=scontent.oculuscdn.com&oh=f419f05c5f01b8e0d5c78f62b361334d&oe=5ED3E618'),
	(30, 2, 1378281665554971, 'Karnage Chronicles', 24.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974489_2114186155559341_4538756344164909056_n.jpg?_nc_cat=107&_nc_sid=79b88e&_nc_ohc=SdOBvi-gFxgAX93fLsK&_nc_ht=scontent.oculuscdn.com&oh=cf0a10cdc39019c94e2be4886dbaaf6c&oe=5ED6ABFF'),
	(31, 2, 1471853306166046, 'First Person Tennis - The Real Tennis Simulator', 24.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12138836_213255789368882_3336720608628047872_n.jpg?_nc_cat=1&_nc_sid=79b88e&_nc_ohc=y4MZpLNB5yIAX8etYCP&_nc_ht=scontent.oculuscdn.com&oh=91d5abe4e7f47e92384bbfcbf65e8de8&oe=5ED6F314'),
	(32, 2, 1696308540462484, 'Cave Digger', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/75196223_2529090667361943_3266401711840821248_n.jpg?_nc_cat=1&_nc_sid=79b88e&_nc_ohc=gGkwr2LfFIsAX_v9vh_&_nc_ht=scontent.oculuscdn.com&oh=10da4bc035cfb3b9768bbf4061a21a24&oe=5ED713A8'),
	(33, 2, 2124641230881553, 'KOBOLD: Chapter I', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982453_567103313725999_7439880798401986560_n.jpg?_nc_cat=107&_nc_sid=79b88e&_nc_ohc=hd9jGaSWYWcAX_POwo5&_nc_ht=scontent.oculuscdn.com&oh=9504e21891b4c2490b8daaf6270d9a54&oe=5ED3EB64'),
	(34, 2, 903642616411015, 'Mount Wingsuit', 14.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12331131_288394068203800_1892742023_n.jpg?_nc_cat=110&_nc_sid=79b88e&_nc_ohc=EqqGYHmq-T4AX9tICws&_nc_ht=scontent.oculuscdn.com&oh=cc43181cea1865402dcad1851884635a&oe=5ED3A04A'),
	(35, 2, 1163831313746254, 'Loco Dojo', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162706_167474497127997_7534853692231516160_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=5-PF4OHFshMAX8vw8kH&_nc_ht=scontent.oculuscdn.com&oh=96a7a04d36df98aa56dc8977b18e6755&oe=5ED39103'),
	(36, 2, 1255051101208827, 'Apex Construct', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/57566686_828081160958387_4279926393543852032_n.jpg?_nc_cat=108&_nc_sid=79b88e&_nc_ohc=6ikUs5Jd1TwAX8MSOWI&_nc_ht=scontent.oculuscdn.com&oh=81a27b8520bb9f9c08d491b20360834b&oe=5ED63CD1'),
	(37, 2, 1694532470661281, 'Last Labyrinth', 39.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/39035358_467075233876408_4459263758010679296_n.jpg?_nc_cat=107&_nc_sid=79b88e&_nc_ohc=Il8oWSTWjBwAX-znCLx&_nc_ht=scontent.oculuscdn.com&oh=f6fc05fdcbdc48bb01d53d8ed1d2baa6&oe=5ED442E4'),
	(38, 2, 1990542257627879, 'Drops: Rhythm Garden', 6.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12602063_2149554861998397_1061964684371951616_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=eyyfBsD_rbkAX-jfoUn&_nc_ht=scontent.oculuscdn.com&oh=fd78a2d255c32e360b337b1ec1a0c632&oe=5ED4D54D'),
	(39, 2, 1586465688076128, 'WORLDS at WAR', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982454_1876027789172271_6964011650504458240_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=-2leVykg6I8AX9oyAKc&_nc_ht=scontent.oculuscdn.com&oh=cfe38eeebd83b700d90e20125cd7ddf4&oe=5ED59302'),
	(40, 2, 349692435154738, 'Mervils: A VR Adventure', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12139257_107375176403202_5590161567971803136_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=HmEBxcNayoAAX8opI1_&_nc_ht=scontent.oculuscdn.com&oh=6bdb12f0a88687458a898740171381c6&oe=5ED4A03F'),
	(41, 2, 1558943587481454, 'EVERYDAY GOLF VR', 29.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162675_1274705095985728_5436007499431936000_n.jpg?_nc_cat=104&_nc_sid=79b88e&_nc_ohc=gCiyo3dBr-UAX8HlL5I&_nc_ht=scontent.oculuscdn.com&oh=a41d4e13539a1664389c3189f3e91b2c&oe=5ED40944'),
	(42, 2, 1249428591772689, 'Range Day VR', 17.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162686_135891550385637_136080180438368256_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=GdyNMlXVPRMAX8dDcaH&_nc_ht=scontent.oculuscdn.com&oh=7432e3198bd317d026371e1ab8daf124&oe=5ED4963A'),
	(43, 2, 1942845939155229, 'Groundhog Day: Like Father Like Son', 14.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974503_376019906298966_5583285982460903424_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=hPXRrUkQR4QAX852qTm&_nc_ht=scontent.oculuscdn.com&oh=3bd737897252a2151088ed9e72464f9f&oe=5ED65A7C'),
	(44, 2, 1219205288123671, 'Marble Land', 14.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162700_281534549022007_7564065306704871424_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=ydDt7CexVCMAX9Bo-US&_nc_ht=scontent.oculuscdn.com&oh=8710f8f0d95f38997410de5fecef332b&oe=5ED4D2D0'),
	(45, 2, 1630322847038003, 'The Hospital: Allison\'s Diary', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162730_1530394407021897_2736745477314707456_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=WaNza1z_6ngAX_eC8Aq&_nc_ht=scontent.oculuscdn.com&oh=6537d86a96348566a11a7b08fa3501a5&oe=5ED3A45A'),
	(46, 2, 1340264072670004, 'Stunt Kite Masters', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162686_141873043022567_6343269291458035712_n.jpg?_nc_cat=101&_nc_sid=79b88e&_nc_ohc=y1bFQA333UMAX9g-CBf&_nc_ht=scontent.oculuscdn.com&oh=a07f73b25c19d36ace5f8e6a897e7dc6&oe=5ED5F3DE'),
	(47, 2, 1861374180578892, 'Clash of Chefs VR', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974545_1400216163512827_275634486908026880_n.jpg?_nc_cat=1&_nc_sid=79b88e&_nc_ohc=9sv_p50Oar0AX-0ny1Z&_nc_ht=scontent.oculuscdn.com&oh=873fd7f6acbc2916f7038afd208650cb&oe=5ED3DA76'),
	(48, 2, 1958452074228276, 'VR Regatta - The Sailing Game', 29.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12410441_244578722790614_2856138833634787328_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_ohc=9Ri62INWyXgAX9xF2xH&_nc_ht=scontent.oculuscdn.com&oh=ee89e6a1250629d9484b99ca5b358339&oe=5ED62466'),
	(49, 3, 2299967930057156, 'A Fisherman\'s Tale', 14.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/57572930_318235829158372_3714224766245142528_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=I2xBkehCWccAX-Y5DWc&_nc_ht=scontent.oculuscdn.com&oh=bea659b97caab34c6317a71b6e9e6cc7&oe=5ED3F5EA'),
	(50, 3, 559809134739485, 'Exercise Your Brain From Home', 39.98, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/39031408_542259036491154_7247332020043382784_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=87PnurT-6ZMAX8o7eHn&_nc_ht=scontent.oculuscdn.com&oh=a6b1ad438b6bdd8a5c15b20d7dd8dc37&oe=5ED52683'),
	(51, 3, 606478123270498, 'Brave Adventures From Home', 39.98, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982708_579507596022658_4049990246996115456_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=SQqFFUz8rdEAX_dEI2p&_nc_ht=scontent.oculuscdn.com&oh=93a9da657f5ef5a338defd6ba8891703&oe=5ED65F2E'),
	(52, 1, 1135654449807002, 'Coaster', 2.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12410344_389877078067603_3800220340907409408_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=v6eHopwU1NMAX-T1peC&_nc_ht=scontent.oculuscdn.com&oh=a8cf42793448aff0dd87dc6d357046c6&oe=5ED43A8D'),
	(53, 1, 859807967457408, 'The Hospital: Allison\'s Diary', 2.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162696_279517842551324_1550060822477144064_n.jpg?_nc_cat=110&_nc_sid=79b88e&_nc_ohc=1gANNDOU9GEAX9dcbg7&_nc_ht=scontent.oculuscdn.com&oh=7e64b9e46c31a29158f9f25a55407f7a&oe=5ED4948B'),
	(54, 1, 1123989124339476, 'PAINT VR', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12410441_2030571613861749_4470457413446664192_n.jpg?_nc_cat=109&_nc_sid=79b88e&_nc_ohc=ReQZ89gp7ocAX9FjaWx&_nc_ht=scontent.oculuscdn.com&oh=c83ebb07c10e3bf0da34861c6fe11298&oe=5ED411F1'),
	(55, 1, 1085190581588500, 'Panzer Panic', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12386185_1647791632178002_3758893139088113664_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=mJ2YhMzbJZMAX9SelXv&_nc_ht=scontent.oculuscdn.com&oh=266d34f644f8edf8322bb5151cda529a&oe=5ED52164'),
	(56, 1, 1845987428750183, 'Doors of Silence - the prologue', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162704_511426895865010_7589031711078350848_n.jpg?_nc_cat=101&_nc_sid=79b88e&_nc_ohc=HeCInhLslH0AX_BFLWN&_nc_ht=scontent.oculuscdn.com&oh=d7300265ef9a2f2a57d9b95c171edc91&oe=5ED7A759'),
	(57, 1, 1272636489423125, 'Mondly: Learn Languages in VR', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982490_1630942020371100_2898018870759522304_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=NXNIReXj9T0AX8LtCLn&_nc_ht=scontent.oculuscdn.com&oh=61a08d35e9b6fe131b99c1670355f8df&oe=5ED525C0'),
	(58, 1, 1274071716010063, 'KryptCrawler', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162679_328943687545535_7035120318762975232_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_ohc=0n6fvxsM-x4AX98lmp1&_nc_ht=scontent.oculuscdn.com&oh=1673893297524a173fb4c21d6f26cfa3&oe=5ED7B263'),
	(59, 1, 2360037144040771, 'Spice & Wolf VR', 24.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974506_630672060677635_989032446013997056_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=HE1y9A3byb4AX_hOy8j&_nc_ht=scontent.oculuscdn.com&oh=90c69511a2b151170d79fdb2ad76fbe6&oe=5ED7788A'),
	(60, 1, 1465981820197033, 'Sky Duel: Tournament', 1.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12504685_996122463877245_4032493516599853056_n.jpg?_nc_cat=105&_nc_sid=79b88e&_nc_ohc=raz6rhulEasAX-e8OHI&_nc_ht=scontent.oculuscdn.com&oh=0cb0feaf44d83b6126dbdc63e4fb4255&oe=5ED6926C'),
	(61, 1, 1581112278669461, 'Big Breezy Boat', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12602064_156091088562700_6567464947926695936_n.jpg?_nc_cat=104&_nc_sid=79b88e&_nc_ohc=UgLEeXKEzvcAX-F6hrK&_nc_ht=scontent.oculuscdn.com&oh=402e1f58bacf1a7c3bab38f227a0ef56&oe=5ED49465'),
	(62, 1, 1834708653267876, 'Astronaut VR', 1.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12482156_153672155296014_773064293322063872_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_ohc=Hs717qi1jpwAX_PDsD9&_nc_ht=scontent.oculuscdn.com&oh=32df9cb78817a86b68fad5a56a46d4eb&oe=5ED51303'),
	(63, 2, 1225484597472435, 'Wilson’s Heart', 29.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12448937_1645595452435775_863228662_n.jpg?_nc_cat=108&_nc_sid=79b88e&_nc_oc=AQnbvd-OSql3q5QaB0bUolRhgu4tPuhQTN5ymf9TJ4qeecIfFmzrNXPdlLaKW-0ejpOfg6Li4We0tDEI1CDv0dHL&_nc_ht=scontent.oculuscdn.com&oh=2044db0f6d8c2b085f9d865fe4db83ab&oe=5ED7ACFE'),
	(64, 2, 888118474643317, 'Solitaire VR by Tripp', 2.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12331039_1768756553397670_2146265531_n.jpg?_nc_cat=108&_nc_sid=79b88e&_nc_oc=AQlg0lIXD-xAx3e44m3rrYNh2IqLJ6kyyhpykXj7jFXjMeeex6oOv6o8t8ljM7aVIGN2DiXxJMJDF6onO_iTPrCI&_nc_ht=scontent.oculuscdn.com&oh=ebf00ac8184c4d14c13449ee25f98327&oe=5ED453A5'),
	(65, 2, 984294025016007, 'theBlu: Season 1', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12522493_1192084087524431_4762836045106511872_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_oc=AQlT8lgt87FLydvBM7CgWVn9eCNEXgPRtHx-lr3r7VRs3VC8AtoC8A7O7VWJorIpS89OweQIaWSkr1uqhrV_rVlS&_nc_ht=scontent.oculuscdn.com&oh=37b0f8a363d00328a4a1642928b99634&oe=5ED4C143'),
	(66, 2, 1536415903036034, 'Paranormal Activity: The Lost Soul', 29.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162737_280115089160443_3274172308406665216_n.jpg?_nc_cat=100&_nc_sid=79b88e&_nc_oc=AQlMQ96tYalPCijocgCkCoRzmjoopGiCiAvSlnRcQPxoPWilsXAJwoIf91XFWdvNlekzg87sm3R4E2q1-As_ILwv&_nc_ht=scontent.oculuscdn.com&oh=c2e1edc2721fe75ef345a5dc03c104ec&oe=5ED3FAAB'),
	(67, 2, 1222120447828084, 'The American Dream', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12139031_165803487546693_3901671909435113472_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_oc=AQnLoDyJqEOrbgN5333goeOnqn6-uY3OMkYLG8ZvUZJVCWO79fRb1Q8zp210caBNCR8wnXKiuJlQ-ab2XYEtyT_-&_nc_ht=scontent.oculuscdn.com&oh=7975d8e6fd77f07a510b4b8303fb0af5&oe=5ED40A9E'),
	(68, 2, 1633794490011975, 'Final Assault', 29.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38984448_395344004579198_4576466955887706112_n.jpg?_nc_cat=104&_nc_sid=79b88e&_nc_oc=AQlx3WxEa8DcsytdVlJXEBHZt2a_guod-_nWmCqxJSyY9gM-vabGCWERZIsj8kReBM4Az1Fxk6xSW0l_EHntYG4Z&_nc_ht=scontent.oculuscdn.com&oh=595f03cc30ffcffd8a2cd4af34ae6685&oe=5ED449D4'),
	(69, 2, 703660393091961, 'Bending the Light', 14.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162686_197751094100113_5166692086237364224_n.jpg?_nc_cat=108&_nc_sid=79b88e&_nc_oc=AQlOoNscvByTSEqDhqRCIV5wSehDlWTf4iFCiNq6sU4GL7g8YOnKMaKUsTiV6ZF5FnfDxIMES15rEPZzGzRwD8gV&_nc_ht=scontent.oculuscdn.com&oh=7b89c585880e9f84ae997b656659d2bf&oe=5ED440A8'),
	(70, 2, 974372449301580, 'Black Hat Cooperative', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12138837_840020239441821_1931870073_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_oc=AQmZuvAQAcjhiSTIKXUSvGQo2wQztCh5LfWXekRE-IqUM12H7KUWOEs68SVaG7_BZ5muSgUtAaxlxYn7V7EssVcR&_nc_ht=scontent.oculuscdn.com&oh=3ae4a3818426ef6070ed3c46a78c9ebf&oe=5ED65AA2'),
	(71, 2, 1809390489075678, 'OVERVIEW: a Walk Through the Universe', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12482206_179896052703504_8855719069630857216_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_oc=AQm4xM46HCpldai61ioD5TbE_NaYS3cP9lwiswoR1-QxCq6DRzlOWWeEeSHZn7zqIqy8qGTNGMnmE_0-5AIec6BS&_nc_ht=scontent.oculuscdn.com&oh=eaa0c20c61cf3f2b764e0adc53510021&oe=5ED5DA31'),
	(72, 2, 1127100290673351, 'Twisted Arrow', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12427628_174419283196072_8224693695589384192_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_oc=AQnjQi2vxoSPSV3p_7duh5oKX6tAQsm-jKeOOhFCopFd1wXOywM4eY0D5rr9ltv5kZJukwcytny8w4KTb6ygtvqq&_nc_ht=scontent.oculuscdn.com&oh=de0a1c3db11b93af9df57205b59d89d0&oe=5ED6B803'),
	(73, 2, 1637736282963856, 'PAINT VR', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162716_1967067816868848_1314924883578191872_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_oc=AQnE-4hQ1JqVU8aB2m-R746s7v_sK2mc6Qqr9S1dVRZnn7VzlspD1AM3VkrGe9hob8frB2a6h2O3dpe7aU7-nPzt&_nc_ht=scontent.oculuscdn.com&oh=a00426c082f32f249dc018a9e59854a8&oe=5ED4D76A'),
	(74, 2, 1233189620061747, 'Project LUX', 24.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12482153_1237690203005467_6589028230668222464_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_oc=AQlRrTTOOMemPSsPDpKdu_ga2Q-6V5NRf0wZc0WKiyUHZh-v8hya0ta9emIMN8yHcGVar947KdZGCP0BjyKXfz1O&_nc_ht=scontent.oculuscdn.com&oh=84b7f9381db1ab77cb0e4a964460db40&oe=5ED47F66'),
	(75, 2, 3076088545738492, 'Spice & Wolf VR', 24.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974777_721275728287486_3750819051543199744_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_oc=AQnwITe1unuGlP5KhI4Wimbi4AAnWxJCQue_ig4GoRnsdukltcTPX9bEyIMHYW97bBj7pH5fe7hWVNnvDOlm4_tU&_nc_ht=scontent.oculuscdn.com&oh=f45413bb04acffb48a665980af9ac311&oe=5ED6C24C'),
	(76, 2, 784129301688154, 'Final Approach Pilot Edition', 14.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12504575_307973636201536_1736170308_n.jpg?_nc_cat=105&_nc_sid=79b88e&_nc_oc=AQlhl_ohIOBWpkwH31aMsmt6Jc5nNVTt-nhJ2myER3qflnXLVSXz-4gzH3Fz9gkNlyQpZErYnd1d2zFa1ZWlAOZR&_nc_ht=scontent.oculuscdn.com&oh=235505e95628e4e7d9eeb7b130f7fd5f&oe=5ED756DE'),
	(77, 2, 966139690133648, 'Final Approach', 14.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12427716_226135961141136_3926054030752612352_n.jpg?_nc_cat=107&_nc_sid=79b88e&_nc_oc=AQnSnc16tiOnxjuW3Zfu3yQi-G465g60XPl8RTbMZHkjv3EuvumnAPSOfdmIgU4Ia01s3Ee9F2ElF5HjM0_sBtMQ&_nc_ht=scontent.oculuscdn.com&oh=a81876b3879e7f2d16dfbe556642b9ec&oe=5ED72D0D'),
	(78, 2, 1437580549697592, 'The Villa: Allison\'s Diary', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12410200_2034673496813126_3407860913615667200_n.jpg?_nc_cat=100&_nc_sid=79b88e&_nc_oc=AQlSUlmSGN3GR-TCAyZsxuhIj-R9IvGnXNpt6m-0ae8H7JdFa5u001O511f1TedRpAfd5oP9E2ZtL8sWuDTGaG-f&_nc_ht=scontent.oculuscdn.com&oh=7f711507de599c991ad8a86bc52385fc&oe=5ED71358'),
	(79, 2, 1600776106603508, 'KryptCrawler', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162698_285368838604495_2088071949509984256_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_oc=AQm0cZMLTQnx2rkDbXsQIkWDWJrhu6K649fkrM2vpuW-Q8IPoZJ20KyHKjOX7xI0-vGDYjlszj6Zg45GKm3uFzat&_nc_ht=scontent.oculuscdn.com&oh=0e66daf41f3dd3f3661c1dde2510af5e&oe=5ED46A3C'),
	(80, 3, 1611681078875316, 'Ballista', 14.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/43931334_848261419005837_3524074916099915776_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_ohc=eErepi2qKGkAX9N1gyD&_nc_ht=scontent.oculuscdn.com&oh=43e35a32a054ba8eb9aa04f56708b904&oe=5ED66779');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle vr_deals.current_offers
CREATE TABLE IF NOT EXISTS `current_offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `date_time` mediumblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_deals.current_offers: ~51 rows (ungefähr)
DELETE FROM `current_offers`;
/*!40000 ALTER TABLE `current_offers` DISABLE KEYS */;
INSERT INTO `current_offers` (`id`, `article_id`, `sale_price`, `date_time`) VALUES
	(1, 1, 6.99, _binary 0x323032302D30352D30342031313A30333A3434),
	(4, 4, 0.92, _binary 0x323032302D30352D30342031313A30333A3434),
	(6, 6, 0.49, _binary 0x323032302D30352D30342031313A30333A3434),
	(7, 7, 2.49, _binary 0x323032302D30352D30342031313A30333A3434),
	(9, 9, 1.99, _binary 0x323032302D30352D30342031313A30333A3434),
	(12, 12, 2.49, _binary 0x323032302D30352D30342031313A30333A3434),
	(13, 13, 4.00, _binary 0x323032302D30352D30342031313A30333A3434),
	(16, 16, 1.99, _binary 0x323032302D30352D30342031313A30333A3434),
	(17, 17, 0.92, _binary 0x323032302D30352D30342031313A30333A3434),
	(20, 20, 4.00, _binary 0x323032302D30352D30342031313A30333A3434),
	(28, 28, 13.99, _binary 0x323032302D30352D30342031313A30333A3533),
	(31, 31, 19.99, _binary 0x323032302D30352D30342031313A30333A3533),
	(32, 32, 13.99, _binary 0x323032302D30352D30342031313A30333A3533),
	(38, 38, 4.99, _binary 0x323032302D30352D30342031313A30333A3533),
	(43, 43, 9.74, _binary 0x323032302D30352D30342031313A30333A3533),
	(48, 48, 14.99, _binary 0x323032302D30352D30342031313A30333A3533),
	(50, 50, 25.99, _binary 0x323032302D30352D30342031313A30343A3032),
	(51, 51, 25.99, _binary 0x323032302D30352D30342031313A30343A3032),
	(52, 2, 2.67, _binary 0x323032302D30352D30342032303A32343A3536),
	(53, 14, 6.43, _binary 0x323032302D30352D30342032303A32343A3536),
	(54, 21, 0.92, _binary 0x323032302D30352D30342032303A32343A3536),
	(55, 52, 1.99, _binary 0x323032302D30352D30342032303A32343A3536),
	(56, 53, 1.99, _binary 0x323032302D30352D30342032303A32343A3536),
	(57, 54, 3.99, _binary 0x323032302D30352D30342032303A32343A3536),
	(58, 55, 0.92, _binary 0x323032302D30352D30342032303A32343A3536),
	(59, 56, 2.00, _binary 0x323032302D30352D30342032303A32343A3536),
	(60, 57, 2.49, _binary 0x323032302D30352D30342032303A32343A3536),
	(61, 58, 1.49, _binary 0x323032302D30352D30342032303A32343A3536),
	(62, 59, 14.99, _binary 0x323032302D30352D30342032303A32343A3536),
	(63, 60, 0.49, _binary 0x323032302D30352D30342032303A32343A3536),
	(64, 61, 0.92, _binary 0x323032302D30352D30342032303A32343A3536),
	(65, 62, 0.49, _binary 0x323032302D30352D30342032303A32343A3536),
	(66, 33, 4.00, _binary 0x323032302D30352D30342032303A32353A3035),
	(67, 63, 14.99, _binary 0x323032302D30352D30342032303A32353A3035),
	(68, 64, 1.99, _binary 0x323032302D30352D30342032303A32353A3035),
	(69, 65, 6.99, _binary 0x323032302D30352D30342032303A32353A3035),
	(70, 66, 10.49, _binary 0x323032302D30352D30342032303A32353A3035),
	(71, 67, 4.99, _binary 0x323032302D30352D30342032303A32353A3035),
	(72, 68, 19.99, _binary 0x323032302D30352D30342032303A32353A3035),
	(73, 69, 10.49, _binary 0x323032302D30352D30342032303A32353A3035),
	(74, 70, 2.49, _binary 0x323032302D30352D30342032303A32353A3035),
	(75, 71, 4.00, _binary 0x323032302D30352D30342032303A32353A3035),
	(76, 72, 4.00, _binary 0x323032302D30352D30342032303A32353A3035),
	(77, 73, 3.99, _binary 0x323032302D30352D30342032303A32353A3035),
	(78, 74, 14.99, _binary 0x323032302D30352D30342032303A32353A3035),
	(79, 75, 14.99, _binary 0x323032302D30352D30342032303A32353A3035),
	(80, 76, 4.99, _binary 0x323032302D30352D30342032303A32353A3035),
	(81, 77, 4.99, _binary 0x323032302D30352D30342032303A32353A3035),
	(82, 78, 3.99, _binary 0x323032302D30352D30342032303A32353A3035),
	(83, 79, 2.99, _binary 0x323032302D30352D30342032303A32353A3035),
	(84, 80, 9.69, _binary 0x323032302D30352D30352031343A32373A3232);
/*!40000 ALTER TABLE `current_offers` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle vr_deals.expired_offers
CREATE TABLE IF NOT EXISTS `expired_offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `date_time` mediumblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_deals.expired_offers: ~33 rows (ungefähr)
DELETE FROM `expired_offers`;
/*!40000 ALTER TABLE `expired_offers` DISABLE KEYS */;
INSERT INTO `expired_offers` (`id`, `article_id`, `sale_price`, `date_time`) VALUES
	(1, 2, 1.99, _binary 0x323032302D30352D30342031313A30333A3434),
	(2, 3, 2.49, _binary 0x323032302D30352D30342031313A30333A3434),
	(3, 5, 0.92, _binary 0x323032302D30352D30342031313A30333A3434),
	(4, 8, 2.99, _binary 0x323032302D30352D30342031313A30333A3434),
	(5, 10, 2.99, _binary 0x323032302D30352D30342031313A30333A3434),
	(6, 11, 1.99, _binary 0x323032302D30352D30342031313A30333A3434),
	(7, 14, 4.95, _binary 0x323032302D30352D30342031313A30333A3434),
	(8, 15, 3.49, _binary 0x323032302D30352D30342031313A30333A3434),
	(9, 18, 1.49, _binary 0x323032302D30352D30342031313A30333A3434),
	(10, 19, 1.49, _binary 0x323032302D30352D30342031313A30333A3434),
	(11, 21, 2.49, _binary 0x323032302D30352D30342031313A30333A3434),
	(12, 22, 1.99, _binary 0x323032302D30352D30342031313A30333A3434),
	(13, 23, 2.99, _binary 0x323032302D30352D30342031313A30333A3434),
	(14, 24, 2.99, _binary 0x323032302D30352D30342031313A30333A3434),
	(15, 25, 7.49, _binary 0x323032302D30352D30342031313A30333A3533),
	(16, 26, 16.74, _binary 0x323032302D30352D30342031313A30333A3533),
	(17, 27, 11.31, _binary 0x323032302D30352D30342031313A30333A3533),
	(18, 29, 2.99, _binary 0x323032302D30352D30342031313A30333A3533),
	(19, 30, 16.60, _binary 0x323032302D30352D30342031313A30333A3533),
	(20, 33, 3.99, _binary 0x323032302D30352D30342031313A30333A3533),
	(21, 34, 3.75, _binary 0x323032302D30352D30342031313A30333A3533),
	(22, 35, 4.00, _binary 0x323032302D30352D30342031313A30333A3533),
	(23, 36, 14.99, _binary 0x323032302D30352D30342031313A30333A3533),
	(24, 37, 29.99, _binary 0x323032302D30352D30342031313A30333A3533),
	(25, 39, 9.19, _binary 0x323032302D30352D30342031313A30333A3533),
	(26, 40, 4.99, _binary 0x323032302D30352D30342031313A30333A3533),
	(27, 41, 20.99, _binary 0x323032302D30352D30342031313A30333A3533),
	(28, 42, 11.99, _binary 0x323032302D30352D30342031313A30333A3533),
	(29, 44, 7.49, _binary 0x323032302D30352D30342031313A30333A3533),
	(30, 45, 3.49, _binary 0x323032302D30352D30342031313A30333A3533),
	(31, 46, 0.92, _binary 0x323032302D30352D30342031313A30333A3533),
	(32, 47, 9.19, _binary 0x323032302D30352D30342031313A30333A3533),
	(33, 49, 9.99, _binary 0x323032302D30352D30342031313A30343A3032);
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

-- Exportiere Daten aus Tabelle vr_deals.stores: ~2 rows (ungefähr)
DELETE FROM `stores`;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` (`id`, `name`, `url`) VALUES
	(1, 'Go', 'https://www.oculus.com/experiences/go/section/1500175860035862/'),
	(2, 'Rift', 'https://www.oculus.com/experiences/rift/section/1578364258944223/'),
	(3, 'Quest', 'https://www.oculus.com/experiences/quest/');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
