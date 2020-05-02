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
  `img_url` tinytext COLLATE utf8_german2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_schnaeppchen.articles: ~0 rows (ungefähr)
DELETE FROM `articles`;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `store_id`, `website_article_id`, `article_name`, `regular_price`, `img_url`) VALUES
	(1, 1, 2190353671014400, 'Arizona Sunshine', 39.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/75210390_1510261092464029_6184083806169858048_n.jpg?_nc_cat=105&_nc_sid=79b88e&_nc_ohc=y3e0y0XQu_AAX-C5rxe&_nc_ht=scontent.oculuscdn.com&oh=5c4e2400dc2ae7a688da657fcd780c09&oe=5ED23303'),
	(2, 1, 559809134739485, 'Exercise Your Brain From Home', 39.98, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/39031408_542259036491154_7247332020043382784_n.jpg?_nc_cat=1&_nc_sid=79b88e&_nc_ohc=87PnurT-6ZMAX_2uQfo&_nc_ht=scontent.oculuscdn.com&oh=1b5f6501bb73cfa4e9e6e4b70263fbaf&oe=5ED52683'),
	(3, 1, 606478123270498, 'Brave Adventures From Home', 39.98, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982708_579507596022658_4049990246996115456_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=SQqFFUz8rdEAX9E0tTG&_nc_ht=scontent.oculuscdn.com&oh=bae80295bd7aa3598aa10619c8087d9e&oe=5ED26AAE'),
	(4, 2, 1275664972562703, 'Dance Collider', 14.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/75439601_869403250152078_8773099395097821184_n.jpg?_nc_cat=1&_nc_sid=79b88e&_nc_ohc=N7R4NsJpELIAX-e1hVc&_nc_ht=scontent.oculuscdn.com&oh=05c9105c7db6ef2a878154eeaf48da3f&oe=5ED143BA'),
	(5, 2, 1653313354717205, 'Budget Cuts', 29.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12504788_197532784224714_4719341022969069568_n.jpg?_nc_cat=104&_nc_sid=79b88e&_nc_ohc=Prtr8X1JmF4AX9gddOo&_nc_ht=scontent.oculuscdn.com&oh=2b28ddf8c56f78c0aab04883d9f9d163&oe=5ED2C765'),
	(6, 2, 2739977019349635, 'Shadow Legend VR', 24.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974563_272492140121143_898625025110704128_n.jpg?_nc_cat=1&_nc_sid=79b88e&_nc_ohc=wBO6aPV0Fd4AX-J71aD&_nc_ht=scontent.oculuscdn.com&oh=c0bd79264f466d66b469b3c6906c63f1&oe=5ED38C5B'),
	(7, 2, 1833318536683635, 'Wands', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974725_2276911705958657_5463510734828732416_n.jpg?_nc_cat=101&_nc_sid=79b88e&_nc_ohc=XzEx7GXVcvUAX-qZgwt&_nc_ht=scontent.oculuscdn.com&oh=67c8a6729df8e91d6a3fb18b4a5047c4&oe=5ED4C414'),
	(8, 2, 1891601494191063, 'Coaster', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/39003268_533151837203699_472641866521640960_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=rvK2dUsTkJkAX8IgIjV&_nc_ht=scontent.oculuscdn.com&oh=52d7662437242a5099c14db1c241af19&oe=5ED3E618'),
	(9, 2, 1378281665554971, 'Karnage Chronicles', 24.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974489_2114186155559341_4538756344164909056_n.jpg?_nc_cat=107&_nc_sid=79b88e&_nc_ohc=5kJfwW_NxpcAX_CJoDL&_nc_ht=scontent.oculuscdn.com&oh=80dcd1d8ef6ef164597ef755c1ca765d&oe=5ED2B77F'),
	(10, 2, 1471853306166046, 'First Person Tennis - The Real Tennis Simulator', 24.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12138836_213255789368882_3336720608628047872_n.jpg?_nc_cat=1&_nc_sid=79b88e&_nc_ohc=y4MZpLNB5yIAX_ncLWJ&_nc_ht=scontent.oculuscdn.com&oh=55851ca598947a7de12a00bde195fc52&oe=5ED2FE94'),
	(11, 2, 1696308540462484, 'Cave Digger', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/75196223_2529090667361943_3266401711840821248_n.jpg?_nc_cat=1&_nc_sid=79b88e&_nc_ohc=gGkwr2LfFIsAX8CORUv&_nc_ht=scontent.oculuscdn.com&oh=dd55da16d19d7039fcd483bf3e6e0a34&oe=5ED31F28'),
	(12, 2, 1462259830529109, 'TribeXR DJ School', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/75302224_3493531960660217_5488199091609403392_n.jpg?_nc_cat=1&_nc_sid=79b88e&_nc_ohc=PxqM0VCSxakAX-IMchy&_nc_ht=scontent.oculuscdn.com&oh=cb22b70d934f778d364077815e2847d6&oe=5ED40435'),
	(13, 2, 2124641230881553, 'KOBOLD: Chapter I', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982453_567103313725999_7439880798401986560_n.jpg?_nc_cat=107&_nc_sid=79b88e&_nc_ohc=xk8Lm6k3Ya4AX-WJbME&_nc_ht=scontent.oculuscdn.com&oh=e68aee9e0916a7f0d87b24f7fdafb7c7&oe=5ED3EB64'),
	(14, 2, 903642616411015, 'Mount Wingsuit', 14.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12331131_288394068203800_1892742023_n.jpg?_nc_cat=110&_nc_sid=79b88e&_nc_ohc=GgGDdgdiJ8QAX83KP7X&_nc_ht=scontent.oculuscdn.com&oh=e1cd1392bc10ffad1f2076c1f5e892f2&oe=5ED3A04A'),
	(15, 2, 1163831313746254, 'Loco Dojo', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162706_167474497127997_7534853692231516160_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=5-PF4OHFshMAX-eZXry&_nc_ht=scontent.oculuscdn.com&oh=a8161f600876553d8e110046f36480fb&oe=5ED39103'),
	(16, 2, 1255051101208827, 'Apex Construct', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/57566686_828081160958387_4279926393543852032_n.jpg?_nc_cat=108&_nc_sid=79b88e&_nc_ohc=Yfk5LmrLR5wAX_fHE_5&_nc_ht=scontent.oculuscdn.com&oh=9a64f6ff5baeb06c2cd3e5ba1a019ce4&oe=5ED24851'),
	(17, 2, 1694532470661281, 'Last Labyrinth', 39.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/39035358_467075233876408_4459263758010679296_n.jpg?_nc_cat=107&_nc_sid=79b88e&_nc_ohc=zsNUDgTzVR0AX_OQjbo&_nc_ht=scontent.oculuscdn.com&oh=69796ed16497fba5540b1715a1e463fa&oe=5ED442E4'),
	(18, 2, 1990542257627879, 'Drops: Rhythm Garden', 6.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12602063_2149554861998397_1061964684371951616_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=eyyfBsD_rbkAX_ynaZt&_nc_ht=scontent.oculuscdn.com&oh=6b0f093dbf5eab0722b313cf21e0f96e&oe=5ED4D54D'),
	(19, 2, 1586465688076128, 'WORLDS at WAR', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982454_1876027789172271_6964011650504458240_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=-2leVykg6I8AX96yAft&_nc_ht=scontent.oculuscdn.com&oh=d037c54d32b9e48cb1ad6d0a29e311de&oe=5ED19E82'),
	(20, 2, 349692435154738, 'Mervils: A VR Adventure', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12139257_107375176403202_5590161567971803136_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=HmEBxcNayoAAX8iGRku&_nc_ht=scontent.oculuscdn.com&oh=f0a0051fac3d12b1c139ecc82cdba4f9&oe=5ED4A03F'),
	(21, 2, 1558943587481454, 'EVERYDAY GOLF VR', 29.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162675_1274705095985728_5436007499431936000_n.jpg?_nc_cat=104&_nc_sid=79b88e&_nc_ohc=gCiyo3dBr-UAX86RFGb&_nc_ht=scontent.oculuscdn.com&oh=201c4d71057f37fd09300acb99ba084e&oe=5ED40944'),
	(22, 2, 1249428591772689, 'Range Day VR', 17.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162686_135891550385637_136080180438368256_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=GdyNMlXVPRMAX-Hqvu9&_nc_ht=scontent.oculuscdn.com&oh=3ed08a5aae887e0deb4559e3fc11cd55&oe=5ED4963A'),
	(23, 2, 1942845939155229, 'Groundhog Day: Like Father Like Son', 14.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974503_376019906298966_5583285982460903424_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=hPXRrUkQR4QAX-ViY6T&_nc_ht=scontent.oculuscdn.com&oh=01ceaa353d570702ebcdf9c513b28d7f&oe=5ED265FC'),
	(24, 2, 1219205288123671, 'Marble Land', 14.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162700_281534549022007_7564065306704871424_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=_613EbgosOsAX8lu5dS&_nc_ht=scontent.oculuscdn.com&oh=fbeb1fa29dd281410f0cf3cc348b9977&oe=5ED4D2D0'),
	(25, 2, 1630322847038003, 'The Hospital: Allison\'s Diary', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162730_1530394407021897_2736745477314707456_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=7sPF4PTHJ44AX9uG2cK&_nc_ht=scontent.oculuscdn.com&oh=de0de1ecbf787e924e0fd3a1e751247b&oe=5ED3A45A'),
	(26, 2, 1340264072670004, 'Stunt Kite Masters', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162686_141873043022567_6343269291458035712_n.jpg?_nc_cat=101&_nc_sid=79b88e&_nc_ohc=feoevH3XiwEAX9XDZeH&_nc_ht=scontent.oculuscdn.com&oh=b4c08236c7cb6e264c7d66f04e6ac50d&oe=5ED1FF5E'),
	(27, 2, 1861374180578892, 'Clash of Chefs VR', 19.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974545_1400216163512827_275634486908026880_n.jpg?_nc_cat=1&_nc_sid=79b88e&_nc_ohc=p98dPmGz0_QAX-KbXzR&_nc_ht=scontent.oculuscdn.com&oh=16f0dae63dae9b4ab14456d8bf5c0bb3&oe=5ED3DA76'),
	(28, 3, 1124164450939641, 'Wands', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38984458_289181478659872_7453552890485932032_n.jpg?_nc_cat=110&_nc_sid=79b88e&_nc_ohc=RSOM-9N2jU8AX9F0tmF&_nc_ht=scontent.oculuscdn.com&oh=93834438f319f686f86c722522c24758&oe=5ED3E7C7'),
	(29, 3, 1035061809913798, 'Overflight', 7.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12410440_716713181808948_7775242633831514112_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=V7VBym4q1hwAX_oE9kz&_nc_ht=scontent.oculuscdn.com&oh=c8b34658af451cce5f64e5f31da2a537&oe=5ED1E072'),
	(30, 3, 1232181650154576, 'Zed Shot', 2.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162719_1270606906381020_1931655674450673664_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_ohc=QaGjKSC4qS4AX8tG8yy&_nc_ht=scontent.oculuscdn.com&oh=6477831f41f0a5e4c053772eba5b5208&oe=5ED51291'),
	(31, 3, 909222225797509, 'Neverout', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12448900_1115010278560664_1330254809_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=4WMxQ6QmAF4AX8SOFNd&_nc_ht=scontent.oculuscdn.com&oh=d1a4212752a386426b1c0f3f0d2e48b0&oe=5ED38A28'),
	(32, 3, 953565778099802, 'Space Maze', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162675_739907842858923_1613311650499133440_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=3yjvTa_WK2YAX8fFKFu&_nc_ht=scontent.oculuscdn.com&oh=b35c1a880188c85473e20699a03437c7&oe=5ED2DECC'),
	(33, 3, 1051452461583340, 'Hidden Temple – VR Adventure', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12410219_1692120874338076_1777138633_n.jpg?_nc_cat=105&_nc_sid=79b88e&_nc_ohc=qaJr4PqJ_CkAX_2dv0X&_nc_ht=scontent.oculuscdn.com&oh=6422979052cf7123a984646bd5b4c8ea&oe=5ED3EB50'),
	(34, 3, 1418554718219936, 'Dark Mechanism', 0.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12139289_1649853281983082_737272002972221440_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_ohc=ACRjQKMfMhIAX8YP10z&_nc_ht=scontent.oculuscdn.com&oh=8254c1f4f2f2b4b944eef01591dccfbd&oe=5ED257DF'),
	(35, 3, 1094315670658189, 'REFLEX UNIT', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12410440_2190557351158171_893019135011717120_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=peNqGiPAYU4AX9_zfG1&_nc_ht=scontent.oculuscdn.com&oh=f1b5ee424fe766d0d6df915f9e2734e2&oe=5ED33756'),
	(36, 3, 872167559579148, 'Starfighter Arduxim', 3.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/11162702_140661239912251_8898938509486718976_n.jpg?_nc_cat=111&_nc_sid=79b88e&_nc_ohc=CzJ-7qKgmmoAX9bZEMZ&_nc_ht=scontent.oculuscdn.com&oh=ecac57aa99cff838c40b63cb811a5db0&oe=5ED42A46'),
	(37, 3, 2221544801220466, 'TheBlu', 2.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974721_237060436973641_2557018765472563200_n.jpg?_nc_cat=108&_nc_sid=79b88e&_nc_ohc=v4vWBjZU9PUAX8ypd8T&_nc_ht=scontent.oculuscdn.com&oh=55e686326194577d70172c7bd1a7f8a9&oe=5ED4BC28'),
	(38, 3, 1681924048528676, 'Voxel Fly', 3.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/39001719_763571310690018_6247223188380450816_n.jpg?_nc_cat=105&_nc_sid=79b88e&_nc_ohc=xH66vjEcbiYAX8O7Y4q&_nc_ht=scontent.oculuscdn.com&oh=acfaa871cd2b1c110bcfb21d34113732&oe=5ED43462'),
	(39, 3, 2365079196906504, 'Neon Blast VR', 2.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974516_837636013296934_4162221753940049920_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=OtrpkqVpGJkAX9_AMCz&_nc_ht=scontent.oculuscdn.com&oh=f174800381d15a4f4c6efa6137a3c03d&oe=5ED2E7DC'),
	(40, 3, 2451176948282095, 'Color Invader', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982695_582098815886382_8879343691861327872_n.jpg?_nc_cat=101&_nc_sid=79b88e&_nc_ohc=mC5fTh46IY4AX_QxHr3&_nc_ht=scontent.oculuscdn.com&oh=08204addc322a9853f3f3d5a274b1dce&oe=5ED22CE0'),
	(41, 3, 1163285000441874, 'REFLEX UNIT 2', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/57572934_578778726259874_6354174913502248960_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_ohc=tf0j1l1nBukAX-5sYcd&_nc_ht=scontent.oculuscdn.com&oh=3d6d54bec31feafae946443d71d6f548&oe=5ED2B494'),
	(42, 3, 3013160292031145, 'Flying Aces: Navy Pilot Simulator', 8.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/39031433_2288337551222498_5154506971960836096_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=QSFsc8fOCxsAX9-qqwz&_nc_ht=scontent.oculuscdn.com&oh=4db5425ae70cf1dede74221eb9b4e583&oe=5ED2A7D5'),
	(43, 3, 2185901951459621, 'Drift Club', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982470_2607884042809447_6094292193382498304_n.jpg?_nc_cat=104&_nc_sid=79b88e&_nc_ohc=vrJkfdjUnckAX9XtA_Z&_nc_ht=scontent.oculuscdn.com&oh=49c27380304186c46d5ad28fe9b798ee&oe=5ED4340F'),
	(44, 3, 1612336165492390, 'SkyTrek', 3.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12504730_176118463044153_8287026023380287488_n.jpg?_nc_cat=110&_nc_sid=79b88e&_nc_ohc=ESOtAicibxYAX-38L09&_nc_ht=scontent.oculuscdn.com&oh=1c0c429ba522f167a419d202c985536d&oe=5ED3CA2E'),
	(45, 3, 2146744692021364, 'Fear Incarnate', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974501_528678351313451_8983829933956530176_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=q7Sa1j2I7zgAX--iQXw&_nc_ht=scontent.oculuscdn.com&oh=bea31159de2b22a71e15fedc9c15bb4f&oe=5ED17EE9'),
	(46, 3, 1459163684102799, 'Ping Pong', 2.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12482153_1284288108320020_8733698460340977664_n.jpg?_nc_cat=106&_nc_sid=79b88e&_nc_ohc=HghK_sg7O_cAX-s_0gI&_nc_ht=scontent.oculuscdn.com&oh=c88bf568b933c0739149b9405ccc7c9c&oe=5ED3B8A8'),
	(47, 3, 1113269302123405, 'Space Says', 1.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12138792_547041372165482_2201483515898363904_n.jpg?_nc_cat=107&_nc_sid=79b88e&_nc_ohc=MPN9wnQ2tPAAX-yim58&_nc_ht=scontent.oculuscdn.com&oh=d8eae9436cefd47ca5ae216d5ae2b629&oe=5ED46688'),
	(48, 3, 2175166109234555, 'Nicht sterben', 9.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38982720_653033418511681_6765696504888819712_n.jpg?_nc_cat=108&_nc_sid=79b88e&_nc_ohc=LGk8fiRBROYAX-W46EG&_nc_ht=scontent.oculuscdn.com&oh=82f2210a2ad40a075b201a62e3d7653b&oe=5ED310D9'),
	(49, 3, 1969568113114007, 'CURSED NIGHT - The House', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/12331252_2064288330481111_5127201794685927424_n.jpg?_nc_cat=102&_nc_sid=79b88e&_nc_ohc=sPKAAe34Yb8AX-WQwWo&_nc_ht=scontent.oculuscdn.com&oh=0c7f494264bc61cc1d5637f4c361a73a&oe=5ED43537'),
	(50, 3, 1978400832224524, 'Ultimate Video Player', 3.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38984473_2230645697154286_8842415777798684672_n.jpg?_nc_cat=103&_nc_sid=79b88e&_nc_ohc=nwLXIZavSskAX94dCuA&_nc_ht=scontent.oculuscdn.com&oh=7138ebe250019168431ca55a2a612e39&oe=5ED17716'),
	(51, 3, 1567358236658937, 'Relic Seeker: Hypogeum', 4.99, 'https://scontent.oculuscdn.com/v/t64.5771-25/q92/s720x720/38974606_266248524018517_4217342874590642176_n.jpg?_nc_cat=107&_nc_sid=79b88e&_nc_ohc=4M9Ro0iyrToAX8duXm4&_nc_ht=scontent.oculuscdn.com&oh=8220164c29a6dd342d27e7d80cc7f2fd&oe=5ED2440C');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle vr_schnaeppchen.current_offers
CREATE TABLE IF NOT EXISTS `current_offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `date_time` mediumblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_schnaeppchen.current_offers: ~0 rows (ungefähr)
DELETE FROM `current_offers`;
/*!40000 ALTER TABLE `current_offers` DISABLE KEYS */;
INSERT INTO `current_offers` (`id`, `article_id`, `sale_price`, `date_time`) VALUES
	(1, 1, 34.99, _binary 0x323032302D30352D30322031383A35313A3033),
	(2, 2, 25.99, _binary 0x323032302D30352D30322031383A35313A3033),
	(3, 3, 25.99, _binary 0x323032302D30352D30322031383A35313A3033),
	(4, 4, 7.49, _binary 0x323032302D30352D30322031393A31303A3232),
	(5, 5, 16.74, _binary 0x323032302D30352D30322031393A31303A3232),
	(6, 6, 11.31, _binary 0x323032302D30352D30322031393A31303A3232),
	(7, 7, 13.99, _binary 0x323032302D30352D30322031393A31303A3232),
	(8, 8, 2.99, _binary 0x323032302D30352D30322031393A31303A3232),
	(9, 9, 16.60, _binary 0x323032302D30352D30322031393A31303A3232),
	(10, 10, 19.99, _binary 0x323032302D30352D30322031393A31303A3232),
	(11, 11, 13.99, _binary 0x323032302D30352D30322031393A31303A3232),
	(12, 12, 17.99, _binary 0x323032302D30352D30322031393A31303A3232),
	(13, 13, 3.99, _binary 0x323032302D30352D30322031393A31303A3232),
	(14, 14, 3.75, _binary 0x323032302D30352D30322031393A31303A3232),
	(15, 15, 4.00, _binary 0x323032302D30352D30322031393A31303A3232),
	(16, 16, 14.99, _binary 0x323032302D30352D30322031393A31303A3232),
	(17, 17, 29.99, _binary 0x323032302D30352D30322031393A31303A3232),
	(18, 18, 4.99, _binary 0x323032302D30352D30322031393A31303A3232),
	(19, 19, 9.19, _binary 0x323032302D30352D30322031393A31303A3232),
	(20, 20, 4.99, _binary 0x323032302D30352D30322031393A31303A3232),
	(21, 21, 20.99, _binary 0x323032302D30352D30322031393A31303A3232),
	(22, 22, 11.99, _binary 0x323032302D30352D30322031393A31303A3232),
	(23, 23, 9.74, _binary 0x323032302D30352D30322031393A31303A3232),
	(24, 24, 7.49, _binary 0x323032302D30352D30322031393A31303A3232),
	(25, 25, 3.49, _binary 0x323032302D30352D30322031393A31303A3232),
	(26, 26, 0.92, _binary 0x323032302D30352D30322031393A31303A3232),
	(27, 27, 9.19, _binary 0x323032302D30352D30322031393A31303A3232),
	(28, 28, 6.99, _binary 0x323032302D30352D30322031393A31303A3232),
	(29, 29, 3.99, _binary 0x323032302D30352D30322031393A31303A3232),
	(30, 30, 1.99, _binary 0x323032302D30352D30322031393A31303A3232),
	(31, 31, 2.49, _binary 0x323032302D30352D30322031393A31303A3232),
	(32, 32, 0.92, _binary 0x323032302D30352D30322031393A31303A3232),
	(33, 33, 0.92, _binary 0x323032302D30352D30322031393A31303A3232),
	(34, 34, 0.49, _binary 0x323032302D30352D30322031393A31303A3232),
	(35, 35, 2.49, _binary 0x323032302D30352D30322031393A31303A3232),
	(36, 36, 2.99, _binary 0x323032302D30352D30322031393A31303A3232),
	(37, 37, 1.99, _binary 0x323032302D30352D30322031393A31303A3232),
	(38, 38, 2.99, _binary 0x323032302D30352D30322031393A31303A3232),
	(39, 39, 1.99, _binary 0x323032302D30352D30322031393A31303A3232),
	(40, 40, 2.49, _binary 0x323032302D30352D30322031393A31303A3232),
	(41, 41, 4.00, _binary 0x323032302D30352D30322031393A31303A3232),
	(42, 42, 4.95, _binary 0x323032302D30352D30322031393A31303A3232),
	(43, 43, 3.49, _binary 0x323032302D30352D30322031393A31303A3232),
	(44, 44, 1.99, _binary 0x323032302D30352D30322031393A31303A3232),
	(45, 45, 0.92, _binary 0x323032302D30352D30322031393A31303A3232),
	(46, 46, 1.49, _binary 0x323032302D30352D30322031393A31303A3232),
	(47, 47, 1.49, _binary 0x323032302D30352D30322031393A31303A3232),
	(48, 48, 4.00, _binary 0x323032302D30352D30322031393A31303A3232),
	(49, 49, 2.49, _binary 0x323032302D30352D30322031393A31303A3232),
	(50, 50, 1.99, _binary 0x323032302D30352D30322031393A31303A3232),
	(51, 51, 2.99, _binary 0x323032302D30352D30322031393A31303A3232);
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
  `regular_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_schnaeppchen.headsets: ~4 rows (ungefähr)
DELETE FROM `headsets`;
/*!40000 ALTER TABLE `headsets` DISABLE KEYS */;
INSERT INTO `headsets` (`id`, `name`, `regular_price`) VALUES
	(1, 'Rift', 350.00),
	(2, 'Rift S', 450.00),
	(3, 'Quest', 450.00),
	(4, 'Go', 150.00);
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
