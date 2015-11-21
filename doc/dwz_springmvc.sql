# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.14)
# Database: dwz_springmvc
# Generation Time: 2014-03-23 13:22:05 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table com_area
# ------------------------------------------------------------

DROP TABLE IF EXISTS `com_area`;

CREATE TABLE `com_area` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '区域: 省份/城市',
  `NAME` varchar(50) DEFAULT NULL,
  `PID` int(11) DEFAULT NULL,
  `LFT` int(10) unsigned DEFAULT NULL,
  `RGT` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `com_area` WRITE;
/*!40000 ALTER TABLE `com_area` DISABLE KEYS */;

INSERT INTO `com_area` (`ID`, `NAME`, `PID`, `LFT`, `RGT`)
VALUES
	(1,'中国',0,1,796),
	(366,'北京',1,2,5),
	(367,'北京市',366,3,4),
	(386,'天津',1,6,9),
	(387,'天津市',386,7,8),
	(406,'河北',1,10,35),
	(407,'石家庄市',406,11,12),
	(426,'唐山市',406,13,14),
	(438,'秦皇岛市',406,15,16),
	(444,'邯郸市',406,17,18),
	(461,'邢台市',406,19,20),
	(480,'保定市',406,21,22),
	(484,'张家口市',406,23,24),
	(499,'承德市',406,25,26),
	(509,'沧州市',406,27,28),
	(525,'廊坊市',406,29,30),
	(535,'保定市',406,31,32),
	(556,'衡水市',406,33,34),
	(568,'山西',1,36,59),
	(569,'太原市',568,37,38),
	(575,'大同市',568,39,40),
	(584,'阳泉市',568,41,42),
	(588,'长治市',568,43,44),
	(601,'晋城',568,45,46),
	(607,'朔州市',568,47,48),
	(613,'忻州市',568,49,50),
	(628,'吕梁市',568,51,52),
	(642,'晋中市',568,53,54),
	(654,'临汾市',568,55,56),
	(672,'运城市',568,57,58),
	(686,'内蒙古',1,60,85),
	(687,'呼和浩特市',686,61,62),
	(691,'包头市',686,63,64),
	(695,'乌海市',686,65,66),
	(697,'赤峰市',686,67,68),
	(708,'呼伦贝尔',686,69,70),
	(722,'兴安盟',686,71,72),
	(728,'通辽市',686,73,74),
	(737,'锡林郭勒盟',686,75,76),
	(750,'乌兰察布盟',686,77,78),
	(766,'鄂尔多斯',686,79,80),
	(775,'巴彦淖尔盟',686,81,82),
	(783,'阿拉善盟',686,83,84),
	(787,'辽宁',1,86,115),
	(788,'沈阳市',787,87,88),
	(794,'大连市',787,89,90),
	(800,'鞍山市',787,91,92),
	(805,'抚顺市',787,93,94),
	(810,'本溪市',787,95,96),
	(814,'丹东市',787,97,98),
	(819,'锦州市',787,99,100),
	(825,'营口市',787,101,102),
	(829,'阜新市',787,103,104),
	(833,'辽阳市',787,105,106),
	(837,'盘锦市',787,107,108),
	(841,'铁岭市',787,109,110),
	(848,'朝阳市',787,111,112),
	(855,'葫芦岛市',787,113,114),
	(860,'吉林',1,116,135),
	(861,'长春市',860,117,118),
	(868,'吉林市',860,119,120),
	(875,'四平市',860,121,122),
	(881,'辽源市',860,123,124),
	(885,'通化市',860,125,126),
	(898,'松原市',860,127,128),
	(903,'白城市',860,129,130),
	(909,'延边朝鲜族自治州',860,131,132),
	(918,'黑龙江',1,136,163),
	(919,'哈尔滨市',918,137,138),
	(926,'齐齐哈尔市',918,139,140),
	(937,'鸡西市',918,141,142),
	(941,'鹤岗市',918,143,144),
	(945,'双鸭山市',918,145,146),
	(951,'大庆市',918,147,148),
	(957,'伊春市',918,149,150),
	(961,'佳木斯市',918,151,152),
	(969,'七台河市',918,153,154),
	(972,'牡丹江市',918,155,156),
	(981,'黑河市',918,157,158),
	(997,'绥化市',918,159,160),
	(1008,'大兴安岭地区',918,161,162),
	(1012,'上海',1,164,167),
	(1013,'上海市',1012,165,166),
	(1034,'江苏',1,168,195),
	(1035,'南京市',1034,169,170),
	(1042,'无锡市',1034,171,172),
	(1047,'徐州市',1034,173,174),
	(1055,'常州市',1034,175,176),
	(1060,'苏州市',1034,177,178),
	(1068,'南通市',1034,179,180),
	(1076,'连云港市',1034,181,182),
	(1081,'淮安市',1034,183,184),
	(1092,'宿迁市',1034,185,186),
	(1094,'盐城市',1034,187,188),
	(1103,'扬州市',1034,189,190),
	(1110,'泰州市',1034,191,192),
	(1115,'镇江市',1034,193,194),
	(1121,'浙江',1,196,219),
	(1122,'杭州市',1121,197,198),
	(1131,'宁波市',1121,199,200),
	(1139,'温州市',1121,201,202),
	(1149,'嘉兴市',1121,203,204),
	(1156,'湖州市',1121,205,206),
	(1161,'绍兴市',1121,207,208),
	(1168,'金华市',1121,209,210),
	(1178,'衢州市',1121,211,212),
	(1185,'舟山市',1121,213,214),
	(1189,'丽水市',1121,215,216),
	(1199,'台州市',1121,217,218),
	(1208,'安徽',1,220,255),
	(1209,'合肥市',1208,221,222),
	(1214,'芜湖市',1208,223,224),
	(1219,'蚌埠市',1208,225,226),
	(1224,'淮南市',1208,227,228),
	(1227,'马鞍山市',1208,229,230),
	(1230,'淮北市',1208,231,232),
	(1233,'铜陵市',1208,233,234),
	(1236,'安庆市',1208,235,236),
	(1246,'黄山市',1208,237,238),
	(1252,'滁州市',1208,239,240),
	(1260,'阜阳地区',1208,241,242),
	(1271,'宿县地区',1208,243,244),
	(1277,'六安地区',1208,245,246),
	(1284,'宣城地区',1208,247,248),
	(1292,'巢湖地区',1208,249,250),
	(1298,'池州地区',1208,251,252),
	(1303,'福建',1,256,275),
	(1304,'福州市',1303,257,258),
	(1314,'厦门市',1303,259,260),
	(1317,'莆田市',1303,261,262),
	(1321,'三明市',1303,263,264),
	(1333,'泉州市',1303,265,266),
	(1343,'漳州市',1303,267,268),
	(1354,'南平地区',1303,269,270),
	(1365,'宁德地区',1303,271,272),
	(1375,'龙岩地区',1303,273,274),
	(1383,'江西',1,276,299),
	(1384,'南昌市',1383,277,278),
	(1390,'景德镇市',1383,279,280),
	(1394,'萍乡市',1383,281,282),
	(1397,'九江市',1383,283,284),
	(1409,'新余市',1383,285,286),
	(1412,'鹰潭市',1383,287,288),
	(1416,'赣州地区',1383,289,290),
	(1435,'宜春地区',1383,291,292),
	(1446,'上饶地区',1383,293,294),
	(1459,'吉安地区',1383,295,296),
	(1473,'抚州地区',1383,297,298),
	(1485,'山东',1,300,335),
	(1486,'济南市',1485,301,302),
	(1493,'青岛市',1485,303,304),
	(1500,'淄博市',1485,305,306),
	(1505,'枣庄市',1485,307,308),
	(1508,'东营市',1485,309,310),
	(1513,'烟台市',1485,311,312),
	(1524,'潍坊市',1485,313,314),
	(1534,'济宁市',1485,315,316),
	(1546,'泰安市',1485,317,318),
	(1552,'威海市',1485,319,320),
	(1557,'日照市',1485,321,322),
	(1561,'莱芜市',1485,323,324),
	(1562,'滨州市',1485,325,326),
	(1570,'德州地区',1485,327,328),
	(1582,'聊城地区',1485,329,330),
	(1592,'临沂市',1485,331,332),
	(1602,'荷泽市',1485,333,334),
	(1612,'河南',1,336,371),
	(1613,'郑州市',1612,337,338),
	(1621,'开封市',1612,339,340),
	(1628,'洛阳市',1612,341,342),
	(1639,'平顶山市',1612,343,344),
	(1648,'安阳市',1612,345,346),
	(1655,'鹤壁市',1612,347,348),
	(1659,'新乡市',1612,349,350),
	(1669,'焦作市',1612,351,352),
	(1678,'濮阳市',1612,353,354),
	(1685,'许昌市',1612,355,356),
	(1691,'漯河市',1612,357,358),
	(1696,'三门峡市',1612,359,360),
	(1703,'商丘',1612,361,362),
	(1713,'周口',1612,363,364),
	(1724,'驻马店',1612,365,366),
	(1735,'南阳',1612,367,368),
	(1749,'信阳',1612,369,370),
	(1760,'湖北',1,372,409),
	(1761,'武汉市',1760,373,374),
	(1766,'黄石市',1760,375,376),
	(1769,'十堰市',1760,377,378),
	(1770,'沙市市',1760,379,380),
	(1771,'宜昌市',1760,381,382),
	(1782,'襄樊市',1760,383,384),
	(1789,'随州市',1760,385,386),
	(1792,'鄂州市',1760,387,388),
	(1793,'荆门市',1760,389,390),
	(1794,'孝感市',1760,391,392),
	(1803,'黄冈市',1760,393,394),
	(1813,'咸宁市',1760,395,396),
	(1821,'荆州市',1760,397,398),
	(1822,'仙桃市',1760,399,400),
	(1825,'天门市',1760,401,402),
	(1826,'潜江市',1760,403,404),
	(1840,'恩施土家族苗族自治州',1760,405,406),
	(1849,'神农架林区',1760,407,408),
	(1851,'湖南',1,410,439),
	(1852,'长沙市',1851,411,412),
	(1858,'株州市',1851,413,414),
	(1865,'湘潭市',1851,415,416),
	(1870,'衡阳市',1851,417,418),
	(1879,'邵阳市',1851,419,420),
	(1890,'岳阳市',1851,421,422),
	(1898,'常德市',1851,423,424),
	(1907,'张家界',1851,425,426),
	(1911,'益阳地区',1851,427,428),
	(1918,'娄底地区',1851,429,430),
	(1924,'郴州地区',1851,431,432),
	(1936,'永州市',1851,433,434),
	(1948,'怀化地区',1851,435,436),
	(1961,'土家族苗族自治州',1851,437,438),
	(1970,'广东',1,440,483),
	(1971,'广州市',1970,441,442),
	(1977,'韶关市',1970,443,444),
	(1987,'深圳市',1970,445,446),
	(1988,'珠海市',1970,447,448),
	(1991,'汕头市',1970,449,450),
	(1996,'佛山市',1970,451,452),
	(2002,'江门市',1970,453,454),
	(2009,'湛江市',1970,455,456),
	(2016,'茂名市',1970,457,458),
	(2022,'肇庆市',1970,459,460),
	(2030,'云浮市',1970,461,462),
	(2034,'惠州市',1970,463,464),
	(2040,'梅州市',1970,465,466),
	(2049,'汕尾市',1970,467,468),
	(2054,'河源市',1970,469,470),
	(2061,'阳江市',1970,471,472),
	(2066,'清远市',1970,473,474),
	(2075,'东莞市',1970,475,476),
	(2076,'中山市',1970,477,478),
	(2077,'潮州市',1970,479,480),
	(2081,'揭阳市',1970,481,482),
	(2087,'广西',1,484,513),
	(2088,'南宁市',2087,485,486),
	(2092,'柳州市',2087,487,488),
	(2096,'桂林市',2087,489,490),
	(2100,'梧州市',2087,491,492),
	(2103,'北海市',2087,493,494),
	(2106,'防城港市',2087,495,496),
	(2109,'南宁地区',2087,497,498),
	(2122,'柳州地区',2087,499,500),
	(2133,'桂林地区',2087,501,502),
	(2144,'梧州地区',2087,503,504),
	(2152,'玉林地区',2087,505,506),
	(2161,'百色地区',2087,507,508),
	(2174,'河池地区',2087,509,510),
	(2186,'钦州地区',2087,511,512),
	(2190,'海南',1,514,551),
	(2191,'海口市',2190,515,516),
	(2192,'三亚市',2190,517,518),
	(2213,'四川',1,552,601),
	(2214,'成都市',2213,553,554),
	(2242,'自贡市',2213,555,556),
	(2246,'攀枝花市',2213,557,558),
	(2250,'泸州市',2213,559,560),
	(2257,'德阳市',2213,561,562),
	(2263,'绵阳市',2213,563,564),
	(2272,'广元市',2213,565,566),
	(2278,'遂宁市',2213,567,568),
	(2282,'内江市',2213,569,570),
	(2291,'乐山市',2213,571,572),
	(2306,'万县市',2213,573,574),
	(2316,'南充市',2213,575,576),
	(2324,'涪陵地区',2213,577,578),
	(2330,'宜宾地区',2213,579,580),
	(2341,'达州市',2213,581,582),
	(2349,'雅安地区',2213,583,584),
	(2358,'阿坝藏族羌族自治州',2213,585,586),
	(2372,'甘孜藏族自治州',2213,587,588),
	(2391,'凉山彝族自治州',2213,589,590),
	(2409,'黔江地区',2213,591,592),
	(2415,'广安地区',2213,593,594),
	(2421,'巴中地区',2213,595,596),
	(2426,'贵州',1,602,625),
	(2427,'贵阳市',2426,603,604),
	(2428,'六盘水市',2426,605,606),
	(2431,'遵义地区',2426,607,608),
	(2445,'铜仁地区',2426,609,610),
	(2456,'南布依族苗族自治州',2426,611,612),
	(2465,'毕节地区',2426,613,614),
	(2474,'安顺地区',2426,615,616),
	(2485,'黔东南苗族侗族自治州',2426,617,618),
	(2502,'布依族苗族自治州',2426,619,620),
	(2515,'云南',1,626,661),
	(2516,'昆明市',2515,627,628),
	(2526,'东川市',2515,629,630),
	(2527,'昭通地区',2515,631,632),
	(2539,'曲靖地区',2515,633,634),
	(2549,'楚雄彝族自治州',2515,635,636),
	(2560,'玉溪地区',2515,637,638),
	(2570,'红河哈尼族彝族自治州',2515,639,640),
	(2584,'文山壮族苗族自治州',2515,641,642),
	(2593,'思茅地区',2515,643,644),
	(2604,'西双版纳傣族自治州',2515,645,646),
	(2608,'大理白族自治州',2515,647,648),
	(2621,'保山地区',2515,649,650),
	(2627,'德宏傣族景颇族自治州',2515,651,652),
	(2634,'丽江地区',2515,653,654),
	(2639,'怒江傈僳族自治州',2515,655,656),
	(2644,'迪庆藏族自治州',2515,657,658),
	(2648,'临沧地区',2515,659,660),
	(2657,'西藏',1,662,677),
	(2658,'拉萨市',2657,663,664),
	(2667,'昌都地区',2657,665,666),
	(2683,'山南地区',2657,667,668),
	(2696,'日喀则地区',2657,669,670),
	(2715,'那曲地区',2657,671,672),
	(2726,'阿里地区',2657,673,674),
	(2735,'林芝地区',2657,675,676),
	(2743,'陕西',1,678,699),
	(2744,'西安市',2743,679,680),
	(2752,'铜川市',2743,681,682),
	(2756,'宝鸡市',2743,683,684),
	(2768,'咸阳市',2743,685,686),
	(2781,'渭南地区',2743,687,688),
	(2793,'汉中地区',2743,689,690),
	(2805,'安康地区',2743,691,692),
	(2816,'商洛地区',2743,693,694),
	(2824,'延安地区',2743,695,696),
	(2838,'榆林地区',2743,697,698),
	(2851,'甘肃',1,700,729),
	(2852,'兰州市',2851,701,702),
	(2857,'嘉峪关市',2851,703,704),
	(2858,'金昌市',2851,705,706),
	(2861,'白银市',2851,707,708),
	(2866,'天水市',2851,709,710),
	(2873,'酒泉地区',2851,711,712),
	(2881,'张掖地区',2851,713,714),
	(2888,'武威地区',2851,715,716),
	(2893,'定西地区',2851,717,718),
	(2901,'陇南地区',2851,719,720),
	(2911,'平凉地区',2851,721,722),
	(2919,'庆阳地区',2851,723,724),
	(2928,'临夏回族自治州',2851,725,726),
	(2937,'甘南藏族自治州',2851,727,728),
	(2945,'青海',1,730,747),
	(2946,'西宁市',2945,731,732),
	(2949,'海东地区',2945,733,734),
	(2958,'海北藏族自治州',2945,735,736),
	(2963,'黄南藏族自治州',2945,737,738),
	(2968,'海南藏族自治州',2945,739,740),
	(2974,'果洛藏族自治州',2945,741,742),
	(2981,'玉树藏族自治州',2945,743,744),
	(2988,'海西蒙古族藏族自治州',2945,745,746),
	(2994,'宁夏',1,748,757),
	(2995,'银川市',2994,749,750),
	(2999,'石嘴山市',2994,751,752),
	(3004,'吴忠市',2994,753,754),
	(3012,'固原市',2994,755,756),
	(3019,'新疆',1,758,791),
	(3020,'乌鲁木齐市',3019,759,760),
	(3023,'克拉玛依市',3019,761,762),
	(3024,'吐鲁番地区',3019,763,764),
	(3028,'哈密地区',3019,765,766),
	(3032,'昌吉回族自治州',3019,767,768),
	(3041,'博尔塔拉蒙古自治州',3019,769,770),
	(3045,'巴音郭楞蒙古自治州',3019,771,772),
	(3055,'阿克苏地区',3019,773,774),
	(3065,'克孜勒苏柯尔克孜自治州',3019,775,776),
	(3070,'喀什地区',3019,777,778),
	(3083,'和田地区',3019,779,780),
	(3094,'伊犁哈萨克自治州',3019,781,782),
	(3120,'石河子',3019,783,784),
	(3124,'白山市',860,133,134),
	(3133,'亳州市',1208,253,254),
	(3177,'图木舒克市',3019,785,786),
	(3178,'五家渠市',3019,787,788),
	(3179,'阿拉尔市',3019,789,790),
	(3231,'黔南布依族苗族自治州',2426,621,622),
	(3244,'黔西南布依族苗族自治州',2426,623,624),
	(3254,'眉山市',2213,597,598),
	(3268,'重庆',1,792,795),
	(3269,'重庆市',3268,793,794),
	(3305,'白沙黎族自治县',2190,519,520),
	(3306,'保亭黎族苗族自治县',2190,521,522),
	(3307,'昌江黎族自治县',2190,523,524),
	(3308,'澄迈县',2190,525,526),
	(3309,'定安县',2190,527,528),
	(3310,'东方市',2190,529,530),
	(3311,'乐东黎族自治县',2190,531,532),
	(3312,'临高县',2190,533,534),
	(3313,'陵水黎族自治县',2190,535,536),
	(3314,'琼海市',2190,537,538),
	(3315,'琼中黎族苗族自治县',2190,539,540),
	(3316,'屯昌县',2190,541,542),
	(3317,'万宁市',2190,543,544),
	(3318,'文昌市',2190,545,546),
	(3319,'五指山市',2190,547,548),
	(3320,'儋州市',2190,549,550),
	(3386,'资阳市',2213,599,600);

/*!40000 ALTER TABLE `com_area` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table inf_news
# ------------------------------------------------------------

DROP TABLE IF EXISTS `inf_news`;

CREATE TABLE `inf_news` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TYPE` enum('NEWS','NOTICE','ANNOUNCEMENT') NOT NULL,
  `STATUS` enum('PENDING','ACTIVE','DISABLED') NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  `CONTENT` text,
  `AUTHOR` varchar(100) DEFAULT NULL,
  `SOURCE` varchar(100) DEFAULT NULL,
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_DATE` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `INSERT_DATE` (`INSERT_DATE`),
  KEY `UPDATE_DATE` (`UPDATE_DATE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `inf_news` WRITE;
/*!40000 ALTER TABLE `inf_news` DISABLE KEYS */;

INSERT INTO `inf_news` (`ID`, `TYPE`, `STATUS`, `TITLE`, `CONTENT`, `AUTHOR`, `SOURCE`, `INSERT_DATE`, `UPDATE_DATE`)
VALUES
	(1,'NEWS','PENDING','测试1','#################### 张慧华<br />',NULL,NULL,'2014-03-21 21:46:05','2014-03-21 21:46:05'),
	(2,'NEWS','PENDING','阅读器问题','<table border=\"0\" cellspacing=\"3\" cellpadding=\"0\" width=\"98%\" bgcolor=\"#e6f0ff\" align=\"center\"><tbody><tr><td><span class=\"style75\"><strong><span style=\"color:#17385b;\"><a href=\"http://www.angle.com.tw\">点击打开链接</a>阅读器问题</span></strong></span></td></tr><tr><td><table border=\"0\" cellspacing=\"1\" cellpadding=\"3\" width=\"100%\" bgcolor=\"#ffffff\" align=\"center\"><tbody><tr><td class=\"style136\" valign=\"top\" width=\"100%\"><ol><li><a class=\"style38\" href=\"http://lawdata01.com.cn/QA.htm#a01\"><span style=\"color:#006699;\">安装了新版阅读器HyView后，可以移除SafeNet Foxit Reader吗？</span></a> <!--				\r\n				<li>我计算机从来都没有安装过Adobe Reader，那开启PDF类型档案，需要再安装Adobe Reader来开启吗？</li>--&gt;<li><a href=\"http://lawdata01.com.cn/QA.htm#a05\"><span class=\"style145\"><strong><span style=\"font-size:16px;color:#cc0000;\">为何下载储存文档后却无法开启？</span></strong></span></a> </li><li><a class=\"style67\" href=\"http://lawdata01.com.cn/QA.htm#a02\"><span style=\"color:#006699;\">如何将HyView阅读器设为文文件的预设开启程序？ </span></a></li><li><a class=\"style67\" href=\"http://lawdata01.com.cn/QA.htm#a03\"><span style=\"color:#006699;\">PDA、智能型手机(ex.IPhone)、MAC 计算机可否安装使用HyView阅读器？ </span></a></li><li><a class=\"style67\" href=\"http://lawdata01.com.cn/QA.htm#a04\"><span style=\"color:#006699;\">如何得知我计算机所安装的 HyView阅读器版本？</span></a> </li><li><a class=\"style67\" href=\"http://lawdata01.com.cn/QA.htm#a06\"><span style=\"color:#006699;\">如开启失败，如何录制DRM Log 并截图反应问题？</span></a> </li></ol></td></tr></tbody></table></td></tr></tbody></table>',NULL,NULL,'2013-07-21 21:13:03','2013-07-21 21:13:03');

/*!40000 ALTER TABLE `inf_news` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table inv_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `inv_category`;

CREATE TABLE `inv_category` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PID` int(10) unsigned DEFAULT NULL,
  `LFT` int(10) unsigned DEFAULT NULL,
  `RGT` int(10) unsigned DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `DESCRIPTION` text,
  `META_TITLE` varchar(100) DEFAULT NULL,
  `META_KEYWORD` varchar(200) DEFAULT NULL,
  `META_DESCRIPTION` varchar(500) DEFAULT NULL,
  `PIC_URL` varchar(255) DEFAULT NULL,
  `PRODUCT_NUM` int(11) NOT NULL DEFAULT '0',
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_DATE` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table inv_product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `inv_product`;

CREATE TABLE `inv_product` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BRAND_ID` int(10) unsigned DEFAULT NULL,
  `CATEGORY_ID` int(10) unsigned DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `SKU` varchar(30) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `SHORT_DESCRIPTION` text,
  `LONG_DESCRIPTION` text,
  `PIC_URL` varchar(255) DEFAULT NULL,
  `META_TITLE` varchar(100) DEFAULT NULL,
  `META_KEYWORD` text,
  `META_DESCRIPTION` text,
  `REGULAR_PRICE` decimal(8,2) DEFAULT NULL,
  `QUANTITY` int(11) DEFAULT '0',
  `SALES_PRICE` decimal(8,2) DEFAULT NULL,
  `SHOW_SALES_PRICE` smallint(1) DEFAULT '1',
  `LIST_PRICE` decimal(8,2) DEFAULT NULL,
  `SHOW_LIST_PRICE` smallint(1) DEFAULT NULL,
  `SHOW_ON_WEB` smallint(1) DEFAULT '1',
  `CALL_PRICING` smallint(1) DEFAULT '0',
  `CALL_PRICING_MESSAGE` varchar(100) DEFAULT NULL,
  `COST` decimal(8,2) DEFAULT NULL,
  `SELL_COUNT` decimal(5,0) DEFAULT '0',
  `HIT_COUNT` decimal(5,0) DEFAULT '0',
  `SPEC_URL` varchar(255) DEFAULT NULL,
  `WEIGHT` decimal(6,2) DEFAULT NULL,
  `WEIGHT_UOM` varchar(10) DEFAULT NULL,
  `INSERT_DATE` datetime DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table sys_permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_permission`;

CREATE TABLE `sys_permission` (
  `ROLE_ID` int(10) unsigned NOT NULL,
  `RESOURCE_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`RESOURCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table sys_resource
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_resource`;

CREATE TABLE `sys_resource` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SN` varchar(50) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `PID` int(10) unsigned DEFAULT NULL,
  `LFT` int(10) unsigned DEFAULT NULL,
  `RGT` int(10) unsigned DEFAULT NULL,
  `LEVEL` int(2) unsigned DEFAULT NULL,
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_DATE` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table sys_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SN` varchar(50) DEFAULT NULL,
  `NAME` varchar(50) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `STATUS` enum('ACTIVE','INACTIVE') NOT NULL,
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_DATE` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROLE_SN` (`SN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;

INSERT INTO `sys_role` (`ID`, `SN`, `NAME`, `REMARK`, `STATUS`, `INSERT_DATE`, `UPDATE_DATE`)
VALUES
	(1,'manager','管理员',NULL,'ACTIVE','2013-01-13 19:15:51','2013-01-13 19:15:53'),
	(2,'reader','用户',NULL,'ACTIVE','2013-01-13 19:16:26','2013-01-13 19:16:29'),
	(3,'author','作者',NULL,'ACTIVE','2013-01-13 19:16:48','2013-01-13 19:16:52');

/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sys_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `GENDER` enum('male','female') DEFAULT NULL,
  `USERNAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `VERIFY` varchar(50) DEFAULT NULL COMMENT '用户注册验证码',
  `NICKNAME` varchar(50) DEFAULT NULL,
  `FIRST_NAME` varchar(30) DEFAULT NULL,
  `LAST_NAME` varchar(30) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PHONE` varchar(30) DEFAULT NULL,
  `STATUS` enum('PENDING','ACTIVE','INACTIVE','DELETED') NOT NULL,
  `BIRTH_DATE` datetime DEFAULT NULL,
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_DATE` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;

INSERT INTO `sys_user` (`ID`, `GENDER`, `USERNAME`, `PASSWORD`, `VERIFY`, `NICKNAME`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE`, `STATUS`, `BIRTH_DATE`, `INSERT_DATE`, `UPDATE_DATE`)
VALUES
	(1,'male','admin','123456',NULL,'张慧华',NULL,NULL,'zhanghuihua@sohu.com','1234546567','ACTIVE','2011-11-13 00:00:00','2012-09-13 20:39:01','2012-09-16 22:14:15'),
	(3,'male','zhanghuihua','corezon','3ef52c7f-5271-1030-bbf5-5ab6836e9cc3','张慧华',NULL,NULL,'zhanghuihua@sohu.com','1234546567','PENDING',NULL,'2012-09-16 14:55:10','2014-03-13 15:20:03'),
	(4,'male','duquan','123456',NULL,'杜权',NULL,NULL,'d@j-ui.com','','ACTIVE',NULL,'2013-07-27 19:32:17','2013-07-27 19:32:17');

/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sys_user_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `USER_ID` int(10) unsigned NOT NULL,
  `ROLE_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`USER_ID`,`ROLE_ID`),
  KEY `FK_sys_user_role` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table web_page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_page`;

CREATE TABLE `web_page` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) DEFAULT NULL,
  `SEQUENCE` int(5) DEFAULT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `META_KEYWORDS` varchar(255) DEFAULT NULL,
  `META_DESCRIPTION` varchar(500) DEFAULT NULL,
  `CONTENT` text,
  `TARGET` set('header','sidebar','footer') DEFAULT NULL,
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_page` WRITE;
/*!40000 ALTER TABLE `web_page` DISABLE KEYS */;

INSERT INTO `web_page` (`ID`, `NAME`, `SEQUENCE`, `TITLE`, `META_KEYWORDS`, `META_DESCRIPTION`, `CONTENT`, `TARGET`, `INSERT_DATE`, `UPDATE_DATE`)
VALUES
	(1,'关于我们',1,'关于我们','','','###','header,footer','2014-03-23 19:22:40',NULL),
	(2,'联系我们',2,'联系我们','','','<p class=\"p1\">联系我们</p>','header,footer','2014-03-23 19:22:47',NULL),
	(3,'帮助',3,'帮助','','','帮助','header,footer','2014-03-23 19:23:27',NULL);

/*!40000 ALTER TABLE `web_page` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table web_website
# ------------------------------------------------------------

DROP TABLE IF EXISTS `web_website`;

CREATE TABLE `web_website` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(100) DEFAULT NULL,
  `META_KEYWORDS` varchar(255) DEFAULT NULL,
  `META_DESCRIPTION` varchar(500) DEFAULT NULL,
  `TEMPLATE` varchar(20) DEFAULT NULL,
  `LAYOUT` varchar(20) DEFAULT NULL,
  `THEME` varchar(20) DEFAULT NULL,
  `LOGO` text,
  `AREA_HEADER` text,
  `AREA_SIDEBAR` text,
  `AREA_BANNER` text,
  `AREA_FOOTER` text,
  `ICP` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `web_website` WRITE;
/*!40000 ALTER TABLE `web_website` DISABLE KEYS */;

INSERT INTO `web_website` (`ID`, `TITLE`, `META_KEYWORDS`, `META_DESCRIPTION`, `TEMPLATE`, `LAYOUT`, `THEME`, `LOGO`, `AREA_HEADER`, `AREA_SIDEBAR`, `AREA_BANNER`, `AREA_FOOTER`, `ICP`)
VALUES
	(1,'jUI框架 + (Mybatis + SpringMVC) 整合应用','用于SEO优化','用于SEO优化','template2','hlcf','theme0',NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `web_website` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
