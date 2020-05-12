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
  `website_article_id` varchar(50) COLLATE utf8_german2_ci NOT NULL,
  `article_name` tinytext COLLATE utf8_german2_ci NOT NULL,
  `regular_price` decimal(10,2) NOT NULL,
  `img_url` text COLLATE utf8_german2_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=344 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_deals.articles: ~0 rows (ungefähr)
DELETE FROM `articles`;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `store_id`, `website_article_id`, `article_name`, `regular_price`, `img_url`) VALUES
	(255, 3, 'the-walking-dead-saints-sinners-tourist-edition', 'The Walking Dead: Saints & Sinners Tourist Edition', 41.99, 'https://hb.imgix.net/f72cdcb2b47c27f06cf07a790de0815755304f96.jpg?auto=compress,format&fit=crop&h=353&w=616&s=bd0f1ce9caa6a20113ae3b6d70761aee'),
	(256, 3, 'arizona-sunshine', 'Arizona Sunshine', 39.99, 'https://hb.imgix.net/b7a3797894a46ef7358502da5139316c6cce78f1.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=5524e0143b214e444f054cc4ef5ea95c'),
	(257, 3, 'superhot-vr', 'SUPERHOT VR', 22.99, 'https://hb.imgix.net/01c90fbc9c5dca9fc1e7512be345ea5591e7ce96.jpg?auto=compress,format&fit=crop&h=353&w=616&s=57b02e9cfa557376c9f88de54d42eee6'),
	(258, 3, 'the-elder-scrolls-v-skyrim-vr', 'The Elder Scrolls V: Skyrim VR', 59.99, 'https://hb.imgix.net/951e891c863158ff7bbc3c97913c4aeb636ca900.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=4f3fedd0866b92d74ac9bda14e63f949'),
	(259, 3, 'fallout-4-vr', 'Fallout® 4 VR', 59.99, 'https://hb.imgix.net/3c79a6848c4c0ab4f0f3169adb91daec3c3663d8.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=773e62f6ca9fd7f7495ded5bb69696b0'),
	(260, 3, 'zero-caliber-vr', 'Zero Caliber VR', 24.99, 'https://hb.imgix.net/eb8120f17dd198ed4f6f5dcc3cec93239dd0ccf8.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=cca2bb4cdf93ac541dcf45b4a54345f7'),
	(261, 3, 'creed-rise-to-glory', 'Creed: Rise to Glory', 24.99, 'https://hb.imgix.net/afa0751a6aea62b7665bf638ae99a06e19834196.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=a330d175910e4b4aed67b247f7cd4ae0'),
	(262, 3, 'star-trek-bridge-crew', 'Star Trek™: Bridge Crew', 24.99, 'https://hb.imgix.net/cf7dd464684951e0394351c1910bcd78bef30d52.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=f9a3e8ec33ec48d9deb0f4bd3a51e614'),
	(263, 3, 'the-invisible-hours', 'The Invisible Hours', 34.99, 'https://hb.imgix.net/228309eab37241abb2526226093cfb98951ec93e.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=ebbc5e7313669e0bea0f1a68765df94e'),
	(264, 3, 'duck-season', 'Duck Season', 19.99, 'https://hb.imgix.net/f4e551e97ee9d82566de9b0b3254cc8cb3c296ae.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=b9f0fe7623743f4c1ba57bc0990a11ad'),
	(265, 3, 'star-trek-bridge-crew-next-generation-bundle', 'Star Trek™: Bridge Crew + The Next Generation DLC', 54.99, 'https://hb.imgix.net/e4a09c91b3e726e337559c47da386c0a780774cd.jpg?auto=compress,format&fit=crop&h=353&w=616&s=c80ca73132f9ccd7bc35463dbc5c79e9'),
	(266, 3, 'to-the-top', 'TO THE TOP', 16.79, 'https://hb.imgix.net/24137868577cbe41d6ba134bc01b5335fbec29c8.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=f3b3aa092b90d3b0baf0040f33783084'),
	(267, 3, 'until-you-fall', 'Until You Fall', 18.46, 'https://hb.imgix.net/ed1fa533aaf4720982cb47a40d31a894b7fa8db3.jpg?auto=compress,format&fit=crop&h=353&w=616&s=5fd9ca4ba8bb8791cbc36085eb3eb6e1'),
	(268, 3, 'raw-data', 'Raw Data', 36.99, 'https://hb.imgix.net/b6ef64f3627b9fb6cace39c23d545eb2a526e921.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=cbb9340c2ea419641f7a811177eb55a6'),
	(269, 3, 'the-gallery-episode-2-heart-of-the-emberstone', 'The Gallery - Episode 2: Heart of the Emberstone', 27.99, 'https://hb.imgix.net/17f1f726fb5a9950ae6d0c78563243b249c52d4c.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=d4504381f9b527737ddd7d0d575b2e8e'),
	(270, 3, 'a-fishermans-tale', 'A Fisherman\'s Tale', 14.99, 'https://hb.imgix.net/053ad6936fb255512f2e84538dacc3e5ff4ba367.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=d7dbe392aa4d7a8d7e6fba51c9d78e9c'),
	(271, 3, 'racket-nx', 'Racket: Nx', 19.99, 'https://hb.imgix.net/e85e65676b63256159495ec520283a31e461e916.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=eaeedb2dee9850e9b3945e94c69a6eb0'),
	(272, 3, 'sprint-vector', 'Sprint Vector', 27.99, 'https://hb.imgix.net/18b71a4801e3e2113e33ed22d7b8f7fd65ffda74.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=aaaada5600cbe242413a9beb3a8cfc93'),
	(273, 3, 'red-matter', 'Red Matter', 24.99, 'https://hb.imgix.net/974a546494ef4bf4fac52443ea1d91799c67eb2a.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=3059daa01b791de5e4a3b28119898daf'),
	(274, 3, 'eve-valkyrie-warzone', 'EVE: Valkyrie – Warzone', 29.99, 'https://hb.imgix.net/d44f97b3325d3a2dbe473a0ae2fe2705509955e6.jpg?auto=compress,format&fit=crop&h=353&w=616&s=8692523a4f91f13ba1ac255f34a967ca'),
	(275, 3, 'the-gallery-episode-one-call-of-the-starseed', 'The Gallery - Episode 1: Call of the Starseed', 19.99, 'https://hb.imgix.net/664be76d0386a3b44dd133d1ffa72d6ce08e4ea9.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=aa7c22544901ce4580bde9621df1554b'),
	(276, 3, 'alice-vr', 'ALICE VR', 9.99, 'https://hb.imgix.net/26f1a8c2e104dcffd15e331ab31b61da7d1ff27a.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=ee73749f78b4f1414419f3a963b57794'),
	(277, 3, 'vr-regatta-the-sailing-game', 'VR Regatta - The Sailing Game', 27.70, 'https://hb.imgix.net/eedfe91a9364f24ea509475e9ddc29d91457e776.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=474abb02206ac5c5d2e5785204efb70f'),
	(278, 3, 'hatsune-miku-vr', 'Hatsune Miku VR / 初音ミク VR', 22.99, 'https://hb.imgix.net/569805da560d5fa2d1cda88ea815240b1ab28223.jpg?auto=compress,format&fit=crop&h=353&w=616&s=658d50f6a27b776c6d677e1be597960d'),
	(279, 3, 'reikos-fragments', 'Reiko\'s Fragments', 8.19, 'https://hb.imgix.net/46c471eb9951df5322076feac38e037d4c30e59b.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=7eadb277a3503a09753d84cd57191bdb'),
	(280, 3, 'killing-floor-incursion', 'Killing Floor: Incursion', 26.99, 'https://hb.imgix.net/a9c46d3a260839b578dc1014fdcb55828f1c7531.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=e18a4aedd6c7dd23936286d7e4b4907a'),
	(281, 3, 'sparc', 'Sparc', 19.99, 'https://hb.imgix.net/e64b85e8c5777c4d2246824093ce9c8ff3dfc5c6.jpg?auto=compress,format&fit=crop&h=353&w=616&s=5a081dab6d5b62b06a5aca7d7899f658'),
	(282, 3, 'megadimension-neptunia-viir', 'Megadimension Neptunia VIIR', 24.99, 'https://hb.imgix.net/0d3896a834be95d58f7dd65918890b4c3f4b932d.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=6c2334a9d3ce38acce13057345cbd344'),
	(283, 3, 'vrmark', 'VRMark', 19.99, 'https://hb.imgix.net/231cedb533e6d576d837268de58766119fc13dad.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=949ee7301c298ef9d3f38cf27a31f33a'),
	(284, 3, 'detached', 'Detached', 23.08, 'https://hb.imgix.net/b4c7c45af2ade4b9bafa581a6f49230e4b453856.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=50abf41debcd1150f4d94a4f90b1c4f0'),
	(285, 3, 'whale-rock-bundle', 'Whale Rock Bundle', 66.66, 'https://hb.imgix.net/e318bed74e7c26b4c1ec832e06a4bb9d7e788bc4.jpg?auto=compress,format&fit=crop&h=353&w=616&s=064a55a89d8ba3c6e6f3492105562ea5'),
	(286, 3, 'ski-jumping-pro-vr', 'Ski Jumping Pro VR', 19.99, 'https://hb.imgix.net/10f7b157069a50683333629a17000ae2201729db.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=e7a8db3d421b5345199540d9076a975d'),
	(287, 3, 'transpose', 'Transpose', 18.46, 'https://hb.imgix.net/f4819e077032f9144bc6d03710edb4c5e7776c03.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=6d9ff80d235e9fd47b4734c1de7aa440'),
	(288, 3, 'fruit-ninja-vr', 'Fruit Ninja VR', 14.99, 'https://hb.imgix.net/be159c5b2c069319210d0ecc72b2fb9ff5074106.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=15a7788b752805a6aec3dde667ed52a8'),
	(289, 3, 'surgeon-simulator-experience-reality', 'Surgeon Simulator: Experience Reality', 19.99, 'https://hb.imgix.net/9da00184647383ddfebf27a82cdfddc64a09aa9e.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=03ed93c69dd6d2dab8fb53230136f6bc'),
	(290, 3, 'eagle-flight', 'Eagle Flight', 19.99, 'https://hb.imgix.net/43b8b93308f9073013b697fee028e1a77e541155.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=1a4aba6e8778071f717e93637d0926f2'),
	(291, 3, 'townsmen-vr', 'Townsmen VR', 9.99, 'https://hb.imgix.net/ed92e7351f35c59f2de663c35e283afabc0c9f89.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=b0882fa3e3c40b80f5f0761b8565f311'),
	(292, 3, 'apex-construct', 'Apex Construct', 19.99, 'https://hb.imgix.net/8a4f38a4575dd69f9cd5d32e7cd3ea7720e7b45a.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=9dc00e59c4e254e9b1c0b9aa19395ed1'),
	(293, 3, 'werewolves-within', 'Werewolves Within™', 19.99, 'https://hb.imgix.net/b59697306f3283c2f23ee9c13b4c5b82bb960a32.jpg?auto=compress,format&fit=crop&h=353&w=616&s=edb98396a32d935972dee851dda298f6'),
	(294, 3, 'bus-driver-simulator-2019', 'Bus Driver Simulator 2019', 19.99, 'https://hb.imgix.net/1f2b3b195296d4bc574bea260735b3743daa11c6.jpg?auto=compress,format&fit=crop&h=353&w=616&s=b48a1be30c1a0ca88efb98a24cd49d0c'),
	(295, 3, 'voronium-locust-sols', 'Voronium - Locust Sols', 12.49, 'https://hb.imgix.net/646068b791986ec63eba30d10cb137a4a2cfa417.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=100773bf69cd19f8ce50223561780f1b'),
	(296, 3, 'curious-cases', 'Curious Cases', 6.45, 'https://hb.imgix.net/8d7898a8081b9464c963659d368e2c929b7fe096.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=af66e0036736b12ca3f4ca5f7ee0d461'),
	(297, 3, 'containment-initiative', 'Containment Initiative', 9.99, 'https://hb.imgix.net/f433851a21548cb848f7231c685846d66e32aa9c.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=54d63c7462e640efc7c0622190ade0cd'),
	(298, 3, 'space-junkies', 'Space Junkies™', 19.99, 'https://hb.imgix.net/2038ab0638ebffd3b9e72f4606b0483bf1a5ff62.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=62ea89aab0c5995ebdfa494e6b2d7ec6'),
	(299, 3, 'gunjack', 'Gunjack', 4.99, 'https://hb.imgix.net/b61ba8e0050ed96992e73dfad571ae278ec7780e.jpg?auto=compress,format&fit=crop&h=353&w=616&s=8a1ddeffcfbd2243c99dc0194d2370b7'),
	(300, 3, 'timelock-vr', 'TimeLock VR', 13.99, 'https://hb.imgix.net/740a29d9c0b6f44af4195ec04a16e22401259b80.jpg?auto=compress,format&fit=crop&h=353&w=616&s=f4d4cb80fa58cf2d9b6bae4d884f0950'),
	(301, 3, 'the-great-c', 'The Great C', 5.20, 'https://hb.imgix.net/2ae35838ba1d220f0cd834b1b10004335ca157a0.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=bc6c334a8bddf24c9db97c3ca8e654c0'),
	(302, 3, 'panzer-panic-vr', 'Panzer Panic VR', 9.99, 'https://hb.imgix.net/e73a1d52563039376e05a259f44382e51b167084.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=ba4597273a070c6b4f7edd4c1c7a4ee5'),
	(303, 3, 'space-ribbon', 'Space Ribbon', 12.99, 'https://hb.imgix.net/d529d5ecaf3afad50c1cd5ef22c85df0ea9a25bb.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=789ab2869c05682c5e8741a0e22317a9'),
	(304, 3, 'i-expect-you-to-die', 'I Expect You To Die', 22.99, 'https://hb.imgix.net/63dcd28ed775311205fff9f51f45f43ab8c69d08.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=4414a4ccae8e6648e6de2cb774e2719e'),
	(305, 3, 'doom-vfr', 'DOOM VFR', 29.99, 'https://hb.imgix.net/439f48d683deb92d5e4b22179c2a95e2ad196b3b.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=e0a21175c59bb29e94fd8d98033aa4bc'),
	(306, 3, 'sairento-vr', 'Sairento VR', 27.99, 'https://hb.imgix.net/e8393ad1a977951f1dc0b1e5400e8e327c54d4ee.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=fb0e8c935c6929676ae67b421acdce68'),
	(307, 3, 'tilt-brush', 'Tilt Brush', 19.99, 'https://hb.imgix.net/c7f5e028fd6f4173956031fd648672b5e19e661a.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=662f9821dbc3553259a554a9ddbc6842'),
	(308, 3, 'quivr', 'QuiVr', 19.99, 'https://hb.imgix.net/cd52d45c51f86a8d45d60d7dfec08aebb4f6078e.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=e28c8d11900878e88e6986512dfbbb0d'),
	(309, 3, 'paranormal-activity-the-lost-soul', 'Paranormal Activity: The Lost Soul', 27.99, 'https://hb.imgix.net/9412a064215138d54941556d2007573551749a75.jpg?auto=compress,format&fit=crop&h=353&w=616&s=c53b2ee1a435f42559b4ae43fcb682eb'),
	(310, 3, 'vtol-vr', 'VTOL VR', 25.99, 'https://hb.imgix.net/ecdce812e174d7df41aa88c72d36bd54bf0aad06.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=485da890fc0fab9991a794cf3f7df0f7'),
	(311, 3, 'skyfront-vr', 'Skyfront VR', 8.99, 'https://hb.imgix.net/8fe23459885e4862131c9f3f654feebf0b38a27d.jpg?auto=compress,format&fit=crop&h=353&w=616&s=f0669332cff483c871f7c63802bb8ed8'),
	(312, 3, 'the-exorcist-legion-vr-complete', 'The Exorcist: Legion VR - The Complete Series', 25.20, 'https://hb.imgix.net/b50eedf72385ca062aa0e8ea8ed82b82bc80b533.png?auto=compress,format&fit=crop&h=353&w=616&s=31cc14247c1aacf45747912720029677'),
	(313, 3, 'megadimension-neptunia-viir-complete-deluxe-set', 'Megadimension Neptunia VIIR - Complete Deluxe Set', 39.12, 'https://hb.imgix.net/00b7a5e21901f2a228f2adf75fb673396323550d.jpg?auto=compress,format&fit=crop&h=353&w=616&s=ebd86f3ba0f0ae24108428333375a632'),
	(314, 3, 'contagion-vr-outbreak', 'Contagion VR: Outbreak', 18.46, 'https://hb.imgix.net/27fc2c1f0ae918401e2c0e0746ade34870c856b4.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=55f1e7c233b87b14231958ce46dcf3ad'),
	(315, 3, 'legendary-hunter-vr', 'Legendary Hunter VR', 9.22, 'https://hb.imgix.net/90fcc438d01a0cb80a100da42f35a22630bf4ff8.jpg?auto=compress,format&fit=crop&h=353&w=616&s=f3336cd7e2b518f2b1f6a5cd234bf244'),
	(316, 3, 'cosmic-trip', 'Cosmic Trip', 18.46, 'https://hb.imgix.net/b33c3b1dddfc435e182cec6af5580655f07ae814.jpg?auto=compress,format&fit=crop&h=353&w=616&s=64cea51e38a0e4a0d395daec95221317'),
	(317, 3, 'theblu', 'theBlu', 9.99, 'https://hb.imgix.net/a380d51d710ff47c6c6084c191efd0d661c218e3.jpg?auto=compress,format&fit=crop&h=353&w=616&s=7b2203fdd2096f95f3c0b425effba43a'),
	(318, 3, 'hop-step-sing-kimamani-summer-vacation-hq-edition', 'Hop Step Sing! Kimamani☆Summer vacation (HQ Edition)', 6.99, 'https://hb.imgix.net/e6252e50d236206a744ad11eca59ec767b468511.jpg?auto=compress,format&fit=crop&h=353&w=616&s=493e0613a2cc3fc45b357819b9780e56'),
	(319, 3, 'disco-time-80s-vr', 'Disco Time 80s VR', 6.99, 'https://hb.imgix.net/8caad755f5cbff6022e3d3543dd913f73a1ad168.jpg?auto=compress,format&fit=crop&h=353&w=616&s=ae5e53414c2fae51d17a87d13eb1a0eb'),
	(320, 3, 'hop-step-sing-kisekiteki-shining-hq-edition', 'Hop Step Sing! Kisekiteki Shining! (HQ Edition)', 4.99, 'https://hb.imgix.net/6fde17cde8d82e1fb17e0f6c33c7e634ed5d698f.jpg?auto=compress,format&fit=crop&h=353&w=616&s=9ad71fc636dd6f0a9188b7f9879ce9a4'),
	(321, 3, 'espire-1-vr-operative', 'Espire 1: VR Operative', 27.99, 'https://hb.imgix.net/70583bc5ccc3e074153962323d62bdb5693cf0cd.jpg?auto=compress,format&fit=crop&h=353&w=616&s=0849097f94168a80a251ad5b7367ec06'),
	(322, 3, 'space-battle-vr', 'Space Battle VR', 12.49, 'https://hb.imgix.net/db9d1329be5f28a4c3c6c5b7cbdc6a3e172dd3f0.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=6295f73e46c4fe37e8843f438a1caae1'),
	(323, 3, 'duck-season-pc', 'Duck Season PC', 9.22, 'https://hb.imgix.net/0bb92dc2420642ca2bbc622dc2ca551899d234e3.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=f10d5a91cb543bce275e89cd8775179d'),
	(324, 3, 'the-exorcist-legion-vr', 'The Exorcist: Legion VR Chapter 1', 4.99, 'https://hb.imgix.net/2336b1b1ba9e916341690a601ae0631b531c34dc.jpg?auto=compress,format&fit=crop&h=353&w=616&s=6ea01e5a4883d0d0b0ab8638ad1221f4'),
	(325, 3, '3dsenvr', '3dSenVR', 18.46, 'https://hb.imgix.net/2f97596321e012ba8f4c156ac882cd6d99ced88f.jpg?auto=compress,format&fit=crop&h=353&w=616&s=cb96adb767bdc1f14f38b55a0689c8f2'),
	(326, 3, 'battlewake', 'Battlewake', 24.99, 'https://hb.imgix.net/c5fa3d32326ea7ca19f0a6f2e75e8bba9167871d.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=9ca375de729b657b24070759350b1942'),
	(327, 3, 'megadimension-neptunia-viir-deluxe-bundle', 'Megadimension Neptunia VIIR - Deluxe Bundle', 26.54, 'https://hb.imgix.net/1e1794cbc30a460afb8b3ab342252a61e330288e.jpg?auto=compress,format&fit=crop&h=353&w=616&s=fbcfbc9f31afdcd1404de3e495ec7587'),
	(328, 3, 'blasters-of-the-universe', 'Blasters of the Universe', 14.99, 'https://hb.imgix.net/48dd94bb0d9beb120cb0939583bd4cfd541d33cd.jpg?auto=compress,format&fit=crop&h=353&w=616&s=2c97a85adba4168689620dda97b1d8cb'),
	(329, 3, 'megadimension-neptunia-viir-dlc-bundle', 'Megadimension Neptunia VIIR - DLC Bundle', 31.75, 'https://hb.imgix.net/4947a1d34d7485dec15f85195f9be69ad8d0a2b6.jpg?auto=compress,format&fit=crop&h=353&w=616&s=58d656af26fb8c047bad5b402dd6ecf2'),
	(330, 3, 'starbear-taxi', 'Starbear: Taxi', 6.59, 'https://hb.imgix.net/77650d177fb0050b2480600cc910febc39cbebe5.jpg?auto=compress,format&fit=crop&h=353&w=616&s=2a6491ccbbee4e91ff3a52f7e3844c64'),
	(331, 3, 'proze-enlightenment', 'PROZE: Enlightenment', 17.49, 'https://hb.imgix.net/39a846a88d827d94bc07fc7238890da0c95a8c31.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=49335d242a82ad7648fc8d7e43a0704d'),
	(332, 3, 'skyworld-kingdom-brawl', 'Skyworld: Kingdom Brawl', 9.99, 'https://hb.imgix.net/8389df63c8be88b7c6794324bbef4278c8410fcf.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=ac8aac9daa5a2d3bef1da543a6a1d9d7'),
	(333, 3, 'audio-trip', 'Audio Trip', 16.79, 'https://hb.imgix.net/7aedba435ea4ea751114d0d3c95c0b57149d6010.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=ba7278cdc54174fbcd80de1f751e1897'),
	(334, 3, 'vr-ping-pong-pro', 'VR Ping Pong Pro', 24.99, 'https://hb.imgix.net/0868ad0c9e7e8ffd972edc67b1e512a7e3a42d33.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=b1fdc56928ef51785c0398f9a4fbe4de'),
	(335, 3, 'song-beater-quite-my-tempo', 'Song Beater: Quite My Tempo!', 13.84, 'https://hb.imgix.net/d70562bd7ff07ecf92368954d728c1d5c1fb0123.jpg?auto=compress,format&fit=crop&h=353&w=616&s=43610a10f30c4e3d9534411ee2d98683'),
	(336, 3, 'orb-labs-inc', 'Orb Labs, Inc', 6.99, 'https://hb.imgix.net/d4afb98560ccb6762f3948631c9c166b305d01d6.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=7552ff6243e867240559269000ff78ae'),
	(337, 3, 'powerbeatsvr', 'PowerBeatsVR', 19.99, 'https://hb.imgix.net/0e024cbc4ab85af5dac91b735a3fb1132fa34364.jpg?auto=compress,format&fit=crop&h=353&w=616&s=b0f3b4fcc3854cb48e109b0f164a6981'),
	(338, 3, 'escapevr-the-basement', 'EscapeVR: The Basement', 8.99, 'https://hb.imgix.net/9b140e8662e350461032b5e27052a5accc0be614.jpg?auto=compress,format&fit=crop&h=353&w=616&s=955f360d80722944493a7e7e4e2f3267'),
	(339, 3, 'telefrag-vr', 'Telefrag VR', 18.46, 'https://hb.imgix.net/872de6492a5dccbbb601b0f7847c1ef94798bd49.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=12d9858bbcade666c4bcbe03e139e90a'),
	(340, 3, 'water-bears-vr', 'Water Bears VR', 9.22, 'https://hb.imgix.net/e14b0a534d2f28df4e69de17d43b4b6be6c2182b.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=8c18be61b94bbab057419bc4060a9bb5'),
	(341, 3, 'smushtv-competitive-vr-x-pc-action', 'SMUSH.TV - Competitive VR x PC Action', 16.79, 'https://hb.imgix.net/59561f5dc24b3c02dac0e096aaaa82883fd776ae.jpg?auto=compress,format&fit=crop&h=353&w=616&s=f0b44f937a7d54c19a4e925b52895799'),
	(342, 3, 'escapevr-trapped-above-the-clouds', 'EscapeVR: Trapped Above the Clouds', 11.99, 'https://hb.imgix.net/ddb5ac8407c1ed18f9e8afab2d210ed78621b746.jpg?auto=compress,format&fit=crop&h=353&w=616&s=edd4b9901cdd6f1f8fe944a177c1308e'),
	(343, 3, 'keep-defending', 'Keep Defending', 3.99, 'https://hb.imgix.net/269e397a9254c28b87dadfbd6838132bfc56e497.jpeg?auto=compress,format&fit=crop&h=353&w=616&s=9ac75d18c8b7cd50a97a2ae84554d6a6');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle vr_deals.current_offers
CREATE TABLE IF NOT EXISTS `current_offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `date_time` mediumblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_deals.current_offers: ~0 rows (ungefähr)
DELETE FROM `current_offers`;
/*!40000 ALTER TABLE `current_offers` DISABLE KEYS */;
INSERT INTO `current_offers` (`id`, `article_id`, `sale_price`, `date_time`) VALUES
	(1, 255, 33.59, _binary 0x323032302D30352D31322031393A31343A3030),
	(2, 256, 14.79, _binary 0x323032302D30352D31322031393A31343A3030),
	(3, 257, 15.63, _binary 0x323032302D30352D31322031393A31343A3030),
	(4, 258, 29.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(5, 259, 29.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(6, 260, 19.49, _binary 0x323032302D30352D31322031393A31343A3030),
	(7, 261, 12.49, _binary 0x323032302D30352D31322031393A31343A3030),
	(8, 262, 7.49, _binary 0x323032302D30352D31322031393A31343A3030),
	(9, 263, 11.89, _binary 0x323032302D30352D31322031393A31343A3030),
	(10, 264, 11.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(11, 265, 27.49, _binary 0x323032302D30352D31322031393A31343A3030),
	(12, 266, 8.39, _binary 0x323032302D30352D31322031393A31343A3030),
	(13, 267, 12.92, _binary 0x323032302D30352D31322031393A31343A3030),
	(14, 268, 9.24, _binary 0x323032302D30352D31322031393A31343A3030),
	(15, 269, 11.19, _binary 0x323032302D30352D31322031393A31343A3030),
	(16, 270, 9.74, _binary 0x323032302D30352D31322031393A31343A3030),
	(17, 271, 9.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(18, 272, 9.23, _binary 0x323032302D30352D31322031393A31343A3030),
	(19, 273, 16.24, _binary 0x323032302D30352D31322031393A31343A3030),
	(20, 274, 14.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(21, 275, 7.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(22, 276, 2.49, _binary 0x323032302D30352D31322031393A31343A3030),
	(23, 277, 6.92, _binary 0x323032302D30352D31322031393A31343A3030),
	(24, 278, 13.79, _binary 0x323032302D30352D31322031393A31343A3030),
	(25, 279, 5.73, _binary 0x323032302D30352D31322031393A31343A3030),
	(26, 280, 13.49, _binary 0x323032302D30352D31322031393A31343A3030),
	(27, 281, 9.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(28, 282, 9.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(29, 283, 2.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(30, 284, 4.61, _binary 0x323032302D30352D31322031393A31343A3030),
	(31, 285, 1.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(32, 286, 9.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(33, 287, 9.23, _binary 0x323032302D30352D31322031393A31343A3030),
	(34, 288, 10.49, _binary 0x323032302D30352D31322031393A31343A3030),
	(35, 289, 7.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(36, 290, 5.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(37, 291, 5.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(38, 292, 7.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(39, 293, 5.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(40, 294, 4.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(41, 295, 2.49, _binary 0x323032302D30352D31322031393A31343A3030),
	(42, 296, 4.83, _binary 0x323032302D30352D31322031393A31343A3030),
	(43, 297, 2.49, _binary 0x323032302D30352D31322031393A31343A3030),
	(44, 298, 4.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(45, 299, 2.49, _binary 0x323032302D30352D31322031393A31343A3030),
	(46, 300, 0.83, _binary 0x323032302D30352D31322031393A31343A3030),
	(47, 301, 2.60, _binary 0x323032302D30352D31322031393A31343A3030),
	(48, 302, 1.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(49, 303, 1.03, _binary 0x323032302D30352D31322031393A31343A3030),
	(50, 304, 15.63, _binary 0x323032302D30352D31322031393A31343A3030),
	(51, 305, 14.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(52, 306, 20.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(53, 307, 14.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(54, 308, 14.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(55, 309, 11.19, _binary 0x323032302D30352D31322031393A31343A3030),
	(56, 310, 22.09, _binary 0x323032302D30352D31322031393A31343A3030),
	(57, 311, 4.49, _binary 0x323032302D30352D31322031393A31343A3030),
	(58, 312, 20.16, _binary 0x323032302D30352D31322031393A31343A3030),
	(59, 313, 17.60, _binary 0x323032302D30352D31322031393A31343A3030),
	(60, 314, 13.84, _binary 0x323032302D30352D31322031393A31343A3030),
	(61, 315, 3.22, _binary 0x323032302D30352D31322031393A31343A3030),
	(62, 316, 11.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(63, 317, 6.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(64, 318, 4.89, _binary 0x323032302D30352D31322031393A31343A3030),
	(65, 319, 3.49, _binary 0x323032302D30352D31322031393A31343A3030),
	(66, 320, 2.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(67, 321, 23.79, _binary 0x323032302D30352D31322031393A31343A3030),
	(68, 322, 6.24, _binary 0x323032302D30352D31322031393A31343A3030),
	(69, 323, 8.29, _binary 0x323032302D30352D31322031393A31343A3030),
	(70, 324, 3.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(71, 325, 11.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(72, 326, 8.24, _binary 0x323032302D30352D31322031393A31343A3030),
	(73, 327, 9.28, _binary 0x323032302D30352D31322031393A31343A3030),
	(74, 328, 7.49, _binary 0x323032302D30352D31322031393A31343A3030),
	(75, 329, 15.87, _binary 0x323032302D30352D31322031393A31343A3030),
	(76, 330, 4.28, _binary 0x323032302D30352D31322031393A31343A3030),
	(77, 331, 5.24, _binary 0x323032302D30352D31322031393A31343A3030),
	(78, 332, 4.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(79, 333, 13.43, _binary 0x323032302D30352D31322031393A31343A3030),
	(80, 334, 12.49, _binary 0x323032302D30352D31322031393A31343A3030),
	(81, 335, 6.92, _binary 0x323032302D30352D31322031393A31343A3030),
	(82, 336, 3.49, _binary 0x323032302D30352D31322031393A31343A3030),
	(83, 337, 13.99, _binary 0x323032302D30352D31322031393A31343A3030),
	(84, 338, 6.29, _binary 0x323032302D30352D31322031393A31343A3030),
	(85, 339, 7.38, _binary 0x323032302D30352D31322031393A31343A3030),
	(86, 340, 6.45, _binary 0x323032302D30352D31322031393A31343A3030),
	(87, 341, 12.59, _binary 0x323032302D30352D31322031393A31343A3030),
	(88, 342, 8.39, _binary 0x323032302D30352D31322031393A31343A3030),
	(89, 343, 1.19, _binary 0x323032302D30352D31322031393A31343A3030);
/*!40000 ALTER TABLE `current_offers` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle vr_deals.expired_offers
CREATE TABLE IF NOT EXISTS `expired_offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `date_time` mediumblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_deals.expired_offers: ~0 rows (ungefähr)
DELETE FROM `expired_offers`;
/*!40000 ALTER TABLE `expired_offers` DISABLE KEYS */;
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
	(1, 'Rift', 349.00),
	(2, 'Rift S', 449.00),
	(3, 'Quest', 449.00),
	(4, 'Go', 200.00);
/*!40000 ALTER TABLE `headsets` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle vr_deals.stores
CREATE TABLE IF NOT EXISTS `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext COLLATE utf8_german2_ci NOT NULL,
  `url` text COLLATE utf8_german2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- Exportiere Daten aus Tabelle vr_deals.stores: ~5 rows (ungefähr)
DELETE FROM `stores`;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` (`id`, `name`, `url`) VALUES
	(1, 'Oculus Quest', 'https://www.oculus.com/experiences/quest/'),
	(2, 'Oculus Rift', 'https://www.oculus.com/experiences/rift/section/1578364258944223/'),
	(3, 'Humble Bundle', 'https://www.humblebundle.com/store'),
	(4, 'Steam', 'https://store.steampowered.com/'),
	(5, 'Oculus Go', 'https://www.oculus.com/experiences/go/section/1500175860035862/');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
