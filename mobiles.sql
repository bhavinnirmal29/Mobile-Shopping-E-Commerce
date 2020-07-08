-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2017 at 01:23 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobiles`
--

-- --------------------------------------------------------

--
-- Table structure for table `mobiles`
--

CREATE TABLE `mobiles` (
  `id` int(11) NOT NULL,
  `Brand_Name` varchar(2000) NOT NULL,
  `Model_Name` varchar(2000) NOT NULL,
  `Network_Type` varchar(2000) NOT NULL,
  `Release_Date` varchar(2000) NOT NULL,
  `Display` varchar(2000) NOT NULL,
  `Body` varchar(2000) NOT NULL,
  `OS` varchar(2000) NOT NULL,
  `CPU` varchar(2000) NOT NULL,
  `GPU` varchar(2000) NOT NULL,
  `External_Memory` varchar(2000) NOT NULL,
  `ROM` varchar(2000) NOT NULL,
  `Primary_Camera` varchar(2000) NOT NULL,
  `Secondary_Camera` varchar(2000) NOT NULL,
  `RAM` varchar(2000) NOT NULL,
  `Battery` varchar(2000) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobiles`
--

INSERT INTO `mobiles` (`id`, `Brand_Name`, `Model_Name`, `Network_Type`, `Release_Date`, `Display`, `Body`, `OS`, `CPU`, `GPU`, `External_Memory`, `ROM`, `Primary_Camera`, `Secondary_Camera`, `RAM`, `Battery`, `Price`) VALUES
(1, 'Apple', 'Iphone5', 'GSM / CDMA / HSPA / EVDO / LTE', '2012,September', 'LED-backlit IPS LCD, capacitive touchscreen, 16M colors', '123.8 x 58.6 x 7.6 mm', 'iOS 6, upgradable to iOS 10.2', 'Dual-core 1.3 GHz Swift ', 'PowerVR SGX 543MP3', 'NO', '16/32/64 GB', '8 MP, f/2.4, 33mm, autofocus, LED flash', '1.2 MP, f/2.4, 35mm, 720p@30fps, face detection, FaceTime over Wi-Fi or Cellular', '1 GB RAM DDR2', 'Non-removable Li-Po 1440 mAh battery', 16398),
(2, 'Apple', 'Iphone5s', 'GSM / CDMA / HSPA / EVDO / LTE', '2012, September', 'LED-backlit IPS LCD, capacitive touchscreen, 16M colors', '123.8 x 58.6 x 7.6 mm', 'iOS 6, upgradable to iOS 10.2', 'Dual-core 1.3 GHz Swift ', 'PowerVR SGX 543MP3', 'NO', '16/32/64 GB', '8 MP, f/2.4, 33mm, autofocus, LED flash', '1.2 MP, f/2.4, 35mm, 720p@30fps, face detection, FaceTime over Wi-Fi or Cellular', ' 1 GB RAM DDR2', 'Non-removable Li-Po 1440 mAh battery', 17999),
(3, 'Apple', 'Iphone6', 'GSM / CDMA / HSPA / EVDO / LTE', '2014, September', 'LED-backlit IPS LCD, capacitive touchscreen, 16M colors', '138.1 x 67 x 6.9 mm', 'iOS 8, upgradable to iOS 10.2', 'Dual-core 1.4 GHz Typhoon ', 'PowerVR GX6450', 'NO', '16/32/64/128 GB', '8 MP, f/2.2, 29mm, phase detection autofocus, dual-LED', '1.2 MP, f/2.2, 31mm, 720p@30fps, face detection, HDR, FaceTime over Wi-Fi or Cellular', '1 GB RAM DDR3', 'Non-removable Li-Po 1810 mAh battery', 29898),
(4, 'Apple', 'Iphone6 plus', 'GSM / CDMA / HSPA / EVDO / LTE', '2014, September', 'LED-backlit IPS LCD, capacitive touchscreen, 16M colors', '158.1 x 77.8 x 7.1 mm', 'iOS 8, upgradable to iOS 10.2', 'Dual-core 1.4 GHz Typhoon', 'PowerVR GX6450 ', 'NO', '16/64/128 GB', '8 MP, f/2.2, 29mm, phase detection autofocus, OIS, dual-LED (dual tone) flash', '1.2 MP, f/2.2, 31mm, 720p@30fps, face detection, HDR, FaceTime over Wi-Fi or Cellular', ' 1 GB RAM DDR3', 'Non-removable Li-Po 2915 mAh battery ', 48290),
(5, 'Apple', 'Iphone6s', 'GSM / CDMA / HSPA / EVDO / LTE', '2015, September', '	LED-backlit IPS LCD, capacitive touchscreen, 16M colors', '138.3 x 67.1 x 7.1 mm', 'iOS 9, upgradable to iOS 10.2', 'Dual-core 1.84 GHz Twister', 'PowerVR GT7600', 'NO', '16/32/64/128 GB', '12 MP, f/2.2, 29mm, phase detection autofocus, dual-LED (dual tone) flash', '5 MP, f/2.2, 31mm, 1080p@30fps, 720p@240fps, face detection, HDR, panorama', '2 GB RAM', 'Non-removable Li-Ion 1715 mAh battery', 59999),
(6, 'Apple', 'Iphone7', 'GSM / CDMA / HSPA / EVDO / LTE', '2016, September', 'LED-backlit IPS LCD, capacitive touchscreen, 16M colors', '138.3 x 67.1 x 7.1 mm', 'iOS 10.0.1, upgradable to iOS 10.2', 'Quad-core 2.34 GHz', 'PowerVR Series7XT Plus ', 'NO', '32/128/256 GB', '12 MP, f/1.8, 28mm, phase detection autofocus, OIS, quad-LED (dual tone) flash', '7 MP, f/2.2, 32mm, 1080p@30fps, 720p@240fps, face detection, HDR, panorama', '2 GB RAM', 'Non-removable Li-Ion 1960 mAh battery ', 58900),
(7, 'Apple', 'Iphone7 plus', 'GSM / CDMA / HSPA / EVDO / LTE', '2016, September', 'LED-backlit IPS LCD, capacitive touchscreen, 16M colors', '158.2 x 77.9 x 7.3 mm', 'iOS 10.0.1, upgradable to iOS 10.2', 'Quad-core 2.34 GHz', 'PowerVR Series7XT Plus ', 'NO', '32/128/256 GB', 'Dual 12 MP, (28mm, f/1.8, OIS & 56mm, f/2.8), phase detection autofocus, 2x optical zoom, quad-LED (dual tone) flash', '7 MP, f/2.2, 32mm, 1080p@30fps, 720p@240fps, face detection, HDR, panorama', ' 3 GB RAM', 'Non-removable Li-Ion 2900 mAh battery', 77990),
(8, 'LENOVO', 'A3690', 'GSM / HSPA / LTE', '2015, October', 'IPS LCD capacitive touchscreen, 16M colors', '141.2 x 71.2 x 8.8 mm', '141.2 x 71.2 x 8.8 mm', '141.2 x 71.2 x 8.8 mm', 'Mali-T720MP2', 'microSD, up to 32 GB ', '8 GB,', '8 MP, autofocus, LED flash', '2 MP', ' 1 GB RAM', 'Removable Li-Po 2300 mAh', 9999),
(9, 'LENOVO', 'Lemon 3', 'GSM / HSPA / LTE', '2016, January', 'IPS LCD capacitive touchscreen, 16M colors', '142 x 71 x 8 mm', '	Android OS, v5.1 (Lollipop)', '	Octa-core (4x1.5 GHz Cortex-A53 & 4x1.2 GHz Cortex-A53)', 'Adreno 405', 'microSD, up to 32 GB', '16 GB', '13 MP, autofocus, LED flash', '5 MP', '2 GB RAM', 'Removable Li-Po 2750 mAh battery', 8499),
(10, 'LENOVO', 'K5 Note', 'GSM / HSPA / LTE', '2016, January', 'LTPS IPS LCD capacitive touchscreen, 16M colors', '152 x 75.7 x 8.5 mm', 'Android OS, v5.1 (Lollipop)', 'Octa-core (4x1.8 GHz Cortex-A53 & 4x1.0 GHz Cortex-A53)', 'Mali-T860MP2', 'microSD, up to 256 GB', '32 GB', '13 MP, f/2.2, phase detection autofocus, dual-LED (dual tone) flash', '8 MP', '3/4 GB RAM', 'Non-removable Li-Po 3500 mAh battery', 12499),
(11, 'LENOVO', 'A7000 Turbo', 'GSM / HSPA / LTE', '2016, January', 'IPS LCD capacitive touchscreen, 16M colors', '152.6 x 76.2 x 8 mm', 'Android OS, v5.0 (Lollipop)', 'Octa-core 1.7 GHz Cortex-A53', 'Mali-T760MP2', 'microSD, up to 32 GB', '16 GB', '	13 MP, f/2.0, autofocus, dual-LED flash', '5 MP', '2 GB RAM', 'Removable Li-Ion 2900 mAh battery', 9999),
(12, 'LENOVO', 'Vibe K5', 'GSM / HSPA / LTE', '2016, February', 'IPS LCD capacitive touchscreen, 16M colors', '142 x 71 x 8 mm', 'Android OS, v5.1 (Lollipop)', 'Octa-core (4x1.5 GHz Cortex-A53 & 4x1.2 GHz Cortex-A53)', 'Adreno 405', 'microSD, up to 32 GB', '16 GB', '13 MP, f/2.2, autofocus, LED flash', '5 MP', '2 GB RAM', 'Removable Li-Ion 2750 mAh battery', 12499),
(13, 'LENOVO', 'Tab3 8', 'GSM / HSPA / LTE', '2016, February', 'IPS LCD capacitive touchscreen, 16M colors', '210 x 125 x 8.9 mm', 'Android OS, v6.0.1 (Marshmallow)', 'Quad-core 1.0 GHz Cortex-A53', 'Mali-T720MP2', 'microSD, up to 64 GB ', '16 GB', '5 MP, autofocus', '2 MP', '1/2 GB RAM', 'Non-removable Li-Ion 4290 mAh battery', 9999),
(14, 'LENOVO', 'C2', 'GSM / HSPA / LTE', '2016, July', 'IPS LCD capacitive touchscreen, 16M colors', '143 x 71.4 x 8.6 mm', 'Android OS, v6.0 (Marshmallow)', 'Quad-core 1.0 GHz Cortex-A53', 'Mali-T720MP2', 'microSD, up to 32 GB ', '8/16 GB', '8 MP, autofocus, LED flash', '5 MP', '1 GB RAM', 'Removable Li-Ion 2750 mAh battery', 6999),
(15, 'LENOVO', 'K6', 'GSM / HSPA / LTE', '2016, September', 'IPS LCD capacitive touchscreen, 16M colors', '141.9 x 70.3 x 8.2 mm', 'Android OS, v6.0 (Marshmallow)', 'Octa-core 1.4 GHz Cortex-A53', 'Adreno 505', 'microSD, up to 256 GB ', '16/32 GB', '13 MP, autofocus, LED flash', '8 MP', '2 GB RAM', 'Non-removable Li-Ion 3000 mAh battery', 9999),
(16, 'LENOVO', 'A Plus', 'GSM/HSPA', '2016, September', 'Capacitive touchscreen', '133 x 66 x 9.9 mm', 'Android OS, v5.1 (Lollipop)', 'Quad-core 1.3 GHz Cortex-A7', 'Mali-400MP2', 'microSD, up to 32 GB', '8 GB', '5 MP, autofocus, LED flash', '2 MP', '1 GB RAM', 'Removable Li-Po 2000 mAh battery', 8499),
(17, 'LENOVO', 'A6600', 'GSM / HSPA / LTE', '2016, September', 'IPS LCD capacitive touchscreen, 16M colors', '141 x 71 x 8.8 mm', 'Android OS, v6.0 (Marshmallow)', 'Quad-core 1.0 GHz Cortex-A53', 'Quad-core 1.0 GHz Cortex-A53', 'microSD, up to 32 GB', '16 GB', '8 MP, autofocus, LED flash', '2 MP', '1 GB RAM', 'Removable Li-Po 2300 mAh battery', 7499),
(18, 'HTC', 'Desire 828', 'GSM / HSPA / LTE', '2015, November', 'Capacitive touchscreen, 16M colors', '157.7 x 78.9 x 7.9 mm', 'Android OS, v5.1 (Lollipop)', 'Octa-core 1.5 GHz Cortex-A53', 'Mali-T720MP3', 'microSD, up to 256 GB ', '16 GB', '13 MP, f/2.2, autofocus, OIS, LED flash', '4 MP, f/2.0, 27mm, 1/3" sensor size, 2µm pixel size, 1080p@30fps, HDR', ' 2 GB RAM', 'Non-removable Li-Ion 2800 mAh battery', 15590),
(19, 'HTC', 'One M9', 'GSM / CDMA / HSPA / EVDO / LTE', '2015, March', 'Super LCD3 capacitive touchscreen, 16M colors', '144.6 x 69.7 x 9.6 mm', 'Android OS, v5.0 (Lollipop), upgradable to v7.0', 'Octa-core', 'Adreno 430', 'microSD, up to 256 GB ', '32 GB', '20 MP, f/2.2, 28mm, autofocus, dual-LED (dual tone) flash', '4 MP, f/2.0, 27mm, 1/3" sensor size, 2µm pixel size, 1080p@30fps, HDR', '3 GB RAM', 'Non-removable Li-Po 2840 mAh battery', 19999),
(20, 'HTC', 'One ME', 'GSM / HSPA / LTE', '2015, June', 'Capacitive touchscreen, 16M colors', '151 x 72 x 9.8 mm ', 'Android OS, v5.0.2 (Lollipop), planned upgrade to v6.0 (Marshmallow)', 'Octa-core 2.2 GHz Cortex-A53', 'PowerVR G6200', 'microSD, up to 256 GB', '32 GB', '20 MP, f/2.2, 28mm, autofocus, dual-LED (dual tone) flash', '4 MP, f/2.0, 27mm, 1/3" sensor size, 2µm pixel size, 1080p@30fps, HDR', '3 GBRAM', 'Non-removable Li-Po 2840 mAh battery', 21000),
(21, 'HTC', 'One A9', 'GSM / HSPA / LTE', '2015, September', 'AMOLED capacitive touchscreen, 16M colors', '145.8 x 70.8 x 7.3 mm', 'Android OS, v6.0 (Marshmallow), upgradable to v7.0 (Nougat)', 'Octa-core', 'Adreno 405', 'microSD, up to 256 GB ', '32 GB', '13 MP, f/2.0, autofocus, OIS, dual-LED (dual tone) flash', '4 MP, f/2.0, 27mm, 1/3" sensor size, 2µm pixel size, 1080p@30fps, HDR', '3 GB RAM', 'Non-removable Li-Ion 2150 mAh battery', 23000),
(22, 'HTC', 'Butterfly 3', 'GSM / HSPA / LTE', '2015, September', 'Capacitive touchscreen, 16M colors', '151 x 73 x 10 mm ', 'Android OS, v5.0 (Lollipop), planned upgrade to v6.0 (Marshmallow)', 'Octa-core (4x1.5 GHz Cortex-A53 & 4x2.0 GHz Cortex-A57', 'Adreno 430', 'microSD, up to 256 GB', '32 GB', '20.2 MP Duo, f/2.2, 28mm, autofocus, dual-LED (dual tone) flash', '13 MP, f/2.0, 28mm, 2160p@30fps', '3 GB RAM', 'Non-removable Li-Ion 2700 mAh battery', 39999),
(23, 'HTC', 'One E9s ', 'GSM / HSPA / LTE', '2015, October', 'Capacitive touchscreen, 16M colors', '157.7 x 79.7 x 7.6 mm ', 'Android OS, v5.0 (Lollipop)', 'Octa-core 1.5 GHz Cortex-A53', 'Mali-T760MP2', 'microSD, up to 256 GB', '16 GB', '13 MP, f/2.2, 28mm, autofocus, LED flash', '4 MP, f/2.0, 27mm, 1/3" sensor size, 2µm pixel size, 1080p@30fps, HDR', '2 GB RAM', 'Removable Li-Ion 2600 mAh battery', 12999),
(24, 'HTC', 'One M9s', 'GSM / HSPA / LTE', '2015, November', 'Super LCD3 capacitive touchscreen, 16M colors', '	144.6 x 69.7 x 9.6 mm ', 'Android OS, v5.1 (Lollipop)', 'Octa-core 2.2 GHz Cortex-A53', 'PowerVR G6200', 'microSD, up to 256 GB', '16 GB,', '13 MP, f/2.0, 28mm, OIS, autofocus, dual-LED (dual tone) flash', '4 MP, f/2.0, 27mm, 1/3" sensor size, 2µm pixel size, 1080p@30fps, HDR', '2 GB RAM', 'Non-removable Li-Po 2840 mAh battery', 26999),
(25, 'HTC', 'One X9', 'GSM / HSPA / LTE', '2015, December', 'Super LCD capacitive touchscreen, 16M colors', '153.9 x 75.9 x 8 mm', 'Android OS, v6.0 (Marshmallow)', 'Octa-core 2.2 GHz Cortex-A53', 'Octa-core 2.2 GHz Cortex-A53', 'microSD, up to 256 GB', '32 GB', '13 MP, f/2.0, 28mm, autofocus, OIS, dual-LED (dual tone) flash', '13 MP, f/2.0, 28mm, autofocus, OIS, dual-LED (dual tone) flash', '3 GB RAM', 'Non-removable Li-Ion 3000 mAh battery', 19470),
(26, 'HTC', 'U Play', 'GSM / HSPA / LTE', '2017, January', 'Super LCD capacitive touchscreen, 16M colors', '146 x 72.9 x 8 mm ', 'Android OS, v6.0 (Marshmallow)', 'Octa-core (4x2.0 GHz Cortex-A53 & 4x1.1 GHz Cortex-A53)', 'Mali-T860MP2', 'microSD, up to 256 GB ', '64 GB', '16 MP, f/2.0, 28mm, OIS, phase detection autofocus, dual-LED (dual tone) flash', '16 MP, f/2.0, 27mm, 1 µm pixel size, 1080p, Auto-HDR', '4 GB RAM', 'Non-removable Li-Ion 2500 mAh battery', 30999),
(27, 'HTC', 'U Ultra', 'GSM / HSPA / LTE', '2017, January', 'Super LCD5 capacitive touchscreen, 16M colors', '162.4 x 79.8 x 8 mm', 'Android OS, v7.0 (Nougat)', 'Quad-core (2x2.15 GHz Kryo & 2x1.6 GHz Kryo)', 'Adreno 530', 'microSD, up to 256 GB ', '	64/128 GB', '12 MP, f/1.8, 26mm, OIS, laser & phase detection autofocus, dual-LED (dual tone) flash', '16 MP, 1080p, Auto-HDR', '4 GB RAM', 'Non-removable Li-Ion 3000 mAh battery', 51390);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
