-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Bulan Mei 2026 pada 07.17
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nexera`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `actors`
--

CREATE TABLE `actors` (
  `ID` int(11) NOT NULL,
  `ActorSkin` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ActorName` varchar(24) NOT NULL DEFAULT '',
  `ActorAnim` int(11) NOT NULL DEFAULT 0,
  `ActorInvul` tinyint(4) NOT NULL DEFAULT 1,
  `ActorHealth` float NOT NULL DEFAULT 100,
  `ActorX` float NOT NULL DEFAULT 0,
  `ActorY` float NOT NULL DEFAULT 0,
  `ActorZ` float NOT NULL DEFAULT 0,
  `ActorA` float NOT NULL DEFAULT 0,
  `ActorWorld` int(11) NOT NULL DEFAULT 0,
  `ActorInterior` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `actors`
--

INSERT INTO `actors` (`ID`, `ActorSkin`, `ActorName`, `ActorAnim`, `ActorInvul`, `ActorHealth`, `ActorX`, `ActorY`, `ActorZ`, `ActorA`, `ActorWorld`, `ActorInterior`) VALUES
(0, 211, 'Jessica Winters', 36, 1, 100, 2109.78, -1917.11, 14.4244, 269.555, 0, 0),
(1, 66, 'Aidan Carr', 378, 1, 100, -2198.71, -2261.91, 30.7459, 325.396, 0, 0),
(2, 71, 'Vadel Badjideh', 417, 1, 100, 1742.1, -2511.9, 13.5969, 176.385, 60, 0),
(3, 211, 'Chloe Harvey', 377, 1, 100, 205.472, -1435.13, 13.1565, 135.283, 0, 0),
(4, 217, 'Robert Fletcher', 373, 1, 100, 660.666, -618.972, 16.3375, 270.124, 0, 0),
(5, 183, 'Leon Walker', 420, 1, 100, 2449.91, -1773.18, 13.7728, 178.05, 0, 0),
(6, 246, 'Maisie Moore', 954, 1, 100, 37.0295, -2651.89, 40.6959, 90.7545, 0, 0),
(7, 147, 'Caitlin White', 954, 1, 100, 1311.96, -889.208, 39.639, 269.982, 0, 0),
(8, 71, 'Jumingan Simarmata', 417, 1, 100, 1732.43, -2548.28, 13.5969, 2.33833, 60, 0),
(9, 112, 'Liam Hopkins', 417, 1, 100, -2821.28, -1518.66, 140.844, 90.6991, 0, 0),
(10, 71, 'Bambang Simatupang', 350, 1, 100, 402.038, -1333.53, 14.81, 208.827, 0, 0),
(11, 217, 'Alexander Gill', 368, 1, 100, -2246.73, -2282.29, 31.6368, 318.544, 0, 0),
(13, 11, 'Fani Harahap', 0, 1, 100, 2238.46, 1593.6, 1019.36, 359.374, 777, 1),
(14, 67, 'Taajuddeen Al-Salik', 1309, 1, 100, 1931.35, -1786.77, 13.5469, 271.158, 0, 0),
(15, 71, 'Lucas Alvarez', 350, 1, 100, -162.393, 1009.54, 19.7422, 1.06533, 0, 0),
(16, 71, 'Rampey Johnson', 419, 1, 100, -1999.75, -2411.72, 31.147, 135.196, 0, 0),
(17, 16, 'Jackob Berry', 1300, 1, 100, -23.905, -1338.63, 10.9608, 219.835, 0, 0),
(18, 260, 'Joni Sumanto', 419, 1, 100, 2614.75, -2365.8, 13.625, 90.8393, 0, 0),
(19, 260, 'Zain Rangkuti', 420, 1, 100, 2671, -2347.03, 13.6428, 355.585, 0, 0),
(20, 260, 'Jumingan Harto', 418, 1, 100, 2700.7, -2347.2, 13.6428, 357.151, 0, 0),
(21, 98, 'Corey Lloyd', 38, 1, 100, -2633.64, 1389.28, 906.461, 0.870207, 31, 3),
(22, 260, 'Bahedar Darwis', 417, 1, 100, 2730.45, -2346.9, 13.6428, 0.766428, 0, 0),
(23, 167, 'Jemik Fadlan', 919, 1, 100, 2403.56, -1502.1, 24, 86.1214, 0, 0),
(24, 217, 'Fadli Sihotang', 0, 1, 100, 1746.86, -2516.8, 20.3728, 87.7262, 60, 0),
(29, 16, 'Alex Reid', 1300, 1, 100, -5.20732, -1366.32, 10.769, 40.0035, 0, 0),
(30, 71, 'Luke Gordon', 1300, 1, 100, -94.3386, -931.651, 19.6428, 240.371, 0, 0),
(32, 201, 'Vika Tobrut', 0, 1, 100, 302.359, 1138.35, 8.58594, 269.946, 0, 0),
(33, 71, 'Rylee Anthony', 1298, 1, 100, 50.3937, -1533.41, 5.30218, 176.023, 0, 0),
(34, 71, 'Payton Salas', 1298, 1, 100, 52.2688, -1529.23, 5.27355, 350.841, 0, 0),
(37, 211, 'Victoria McDaren', 714, 1, 100, 1921.5, -1767.74, 13.5586, 177.807, 0, 0),
(38, 71, 'Aiden Kennedy', 1300, 1, 100, -73.9512, -889.692, 15.6523, 61.4557, 0, 0),
(39, 71, 'Aiden Hunter', 1300, 1, 100, -962.801, -352.844, 36.3583, 75.9908, 0, 0),
(40, 71, 'Luca Fraser', 1300, 1, 100, -967.718, -309.21, 36.7616, 257.389, 0, 0),
(41, 42, 'Reagan Pope', 1300, 1, 100, -172.552, 323.697, 12.2812, 75.9439, 0, 0),
(42, 16, 'Jay Holland', 1300, 1, 100, -164.486, 406.773, 12.2812, 255.485, 0, 0),
(43, 16, 'Tom Doyle', 1300, 1, 100, 527.116, 475.05, 19.1328, 124.511, 0, 0),
(44, 16, 'Henry Hamilton', 1300, 1, 100, 468.796, 534.835, 19.1328, 304.969, 0, 0),
(45, 71, 'Joni Purba', 419, 1, 100, 1732.35, -2486.37, 13.5969, 178.747, 60, 0),
(46, 71, 'Darwin Sihaloho', 420, 1, 100, 1737.88, -2485.39, 20.2869, 270.507, 60, 0),
(47, 71, 'Rafli Sidabutar', 376, 1, 100, 1737.76, -2548.1, 20.2869, 268.001, 60, 0),
(48, 71, 'Faris Rangkuti', 378, 1, 100, 1764.97, -2512.23, 20.2869, 178.845, 60, 0),
(49, 5, 'Brett Mckee', 567, 1, 100, 168.366, 1180.49, 14.8357, 250.55, 0, 0),
(50, 11, 'Justice Byrne', 567, 1, 100, -2613.42, 170.845, 4.37899, 88.8683, 0, 0),
(51, 217, 'Viki Sianipar', 8, 1, 100, 1742.85, -2494.37, 13.6069, 88.1458, 60, 0),
(52, 172, 'Alexa Siregar', 714, 1, 100, 1739.74, -2532.32, 13.5978, 179.64, 60, 0),
(53, 1, 'Carl Griffin', 859, 1, 100, 794.15, 1687.07, 5.28125, 269.997, 0, 0),
(54, 14, 'Jayden Mayer', 567, 1, 100, -2333.66, 1003.47, 50.9381, 87.975, 0, 0),
(58, 2, 'Victor McGerrald', 418, 1, 100, 2792.12, -2548.92, 13.935, 1.34697, 0, 0),
(59, 191, 'Emily Fancy', 419, 1, 100, 2801.58, -2548.91, 13.935, 356.479, 0, 0),
(60, 2, 'Jackob White', 567, 1, 100, 895.397, 1903.87, 10.8447, 0.413542, 0, 0),
(61, 1, 'Rory Palmer', 567, 1, 100, 2213.88, 2740.65, 10.829, 359.474, 0, 0),
(62, 17, 'Billy Zamora', 567, 1, 100, 2493.02, 736.738, 10.8474, 355.98, 0, 0),
(63, 2, 'Mujel Sianturi', 0, 1, 100, 2306.28, 997.332, 10.8199, 176.363, 0, 0),
(64, 41, 'Gracie Clark', 567, 1, 100, 1992.41, 2081.45, 11.3182, 0.203672, 0, 0),
(66, 12, 'Tia Hawkins', 567, 1, 100, 1933.44, -2476.81, -21.6931, 269.759, 543, 0),
(67, 168, 'Leon Kaur', 567, 1, 100, 1933.41, -2492.7, -21.6931, 269.109, 543, 0),
(68, 169, 'Amelia Brown', 567, 1, 100, 1980.55, -2482.71, -21.6931, 89.5676, 543, 0),
(69, 171, 'Ollie Cole', 567, 1, 100, 1980.54, -2465.92, -21.6931, 90.1943, 543, 0),
(70, 172, 'Samira Rathore', 567, 1, 100, 1976.53, -2478.15, -15.1331, 0.532658, 543, 0),
(71, 180, 'Kamran Mian', 567, 1, 100, 1980.55, -2481.92, -15.1332, 88.5575, 543, 0),
(72, 192, 'Sorousheh Bhatti', 579, 1, 100, 1957.12, -2461.48, -21.6441, 358.944, 543, 0),
(73, 191, 'Radwa Basher', 567, 1, 100, -2390.83, 131.908, 35.9783, 87.7268, 0, 0),
(74, 193, 'Saahira Yousuf', 567, 1, 100, -1665.4, 1331.41, 7.32312, 138.822, 0, 0),
(75, 27, 'Ghifari Ajimat', 859, 1, 100, 695.101, 901.632, -39.0072, 164.758, 0, 0),
(76, 260, 'Fadlan Syahputra', 1184, 1, 100, 694.932, 900.444, -39.0116, 349.916, 0, 0),
(77, 260, 'Urick Carter', 373, 1, 100, 2446.14, 1663.48, -13.8632, 297.177, 123, 244),
(78, 260, 'Tamonte Evans', 579, 1, 100, 2466.1, 1660.62, -13.9468, 87.2654, 123, 244),
(79, 27, 'Kaprice Gardner', 418, 1, 100, 2465.04, 1660.71, -13.9432, 264.904, 123, 244),
(81, 217, 'Ronald Vegan', 714, 1, 100, -2627.52, 2254.67, 8.21527, 269.18, 0, 0),
(83, 127, 'Jamal Hadi', 1708, 1, 100, -2634.6, 1408.43, 906.461, 89.7358, 554, 3),
(84, 111, 'Toby Hayes', 417, 1, 100, 2504.5, 2120.6, 10.8399, 357.82, 0, 0),
(86, 211, 'Millie Sheren', 714, 1, 100, -2478.45, 2281.86, 4.99009, 88.6742, 0, 0),
(87, 2, 'Maverick Nielsen', 0, 1, 100, 2771.11, -2406.73, 29.1981, 358.522, 91, 1),
(88, 211, 'Lauren Butler', 0, 1, 100, 2795.55, -2406.89, 29.1902, 358.498, 91, 1),
(89, 217, 'Miles Regany', 0, 1, 100, -1290.07, 2711.94, 50.1083, 119.975, 0, 0),
(90, 158, 'Rhys Harrison', 1293, 1, 100, -382.341, -1440.94, 25.7266, 268.995, 0, 0),
(91, 159, 'Gabriel Taylor', 1297, 1, 100, -488.683, -194.131, 78.3309, 358.941, 0, 0),
(93, 143, 'Aidan Sidabutar', 0, 1, 100, 1471.43, -1015.81, 26.0628, 88.9536, 0, 0),
(95, 217, 'Wendy Harrison', 0, 1, 100, 1437.26, 432.734, 20.2591, 58.3554, 0, 0),
(96, 12, 'Febby Catalina', 13, 1, 100, 2263.11, 27.317, 26.534, 267.664, 0, 0),
(97, 1, 'Raynald Weasley', 13, 1, 100, 115.89, -110.532, 1.62512, 179.594, 0, 0),
(98, 44, 'Samuel Victoria', 13, 1, 100, 697.916, -664.02, 16.3907, 357.858, 0, 0),
(99, 41, 'Sarah Jamien', 13, 1, 100, 571.259, 1634.31, 7.02229, 303.657, 0, 0),
(101, 169, 'Priska Marpaung', 0, 1, 100, 397.677, -1325.87, 14.817, 118.824, 0, 0),
(102, 16, 'Vikri Simarmata', 0, 1, 100, -2246.54, 2383.63, 5.07989, 312.831, 0, 0),
(107, 171, 'Wili Marpaung', 0, 1, 100, 2230.9, 1593.6, 1019.36, 0.313412, 777, 1),
(108, 189, 'Sikenzo Eky', 420, 1, 100, 2236.28, 1694.01, 1019.36, 272.121, 777, 1),
(109, 171, 'Roni Toba', 417, 1, 100, 2238.8, 1679.23, 1019.37, 306.251, 777, 1),
(110, 1, 'Fernando Ellion', 997, 1, 100, -2034.83, 148.46, 28.8359, 270.022, 0, 0),
(111, 202, 'Igbonefo Veddz', 1448, 1, 100, 1629.51, 972.123, 10.8203, 270.863, 0, 0),
(112, 235, 'Brad Myner', 859, 1, 100, 919.224, -1252.12, 16.2109, 90.7185, 0, 0),
(113, 2, 'Miles Huggens', 6, 1, 100, -2339.42, 2334.77, 4.98438, 266.358, 0, 0),
(125, 172, 'Shafa Batubara', 420, 1, 100, 2234.89, 1680.43, 1019.36, 18.6083, 777, 1),
(126, 189, 'Baber Robbie', 919, 1, 100, 2221.46, 1679.82, 1019.36, 268.796, 777, 1),
(127, 171, 'Fikri Hasibuan', 948, 1, 100, 2235.24, 1673.53, 1019.36, 169.926, 777, 1),
(128, 172, 'Sarah Hasibuan', 1219, 1, 100, 2237.95, 1658.92, 1019.36, 0.266144, 777, 1),
(129, 172, 'Stevi Siregar', 1288, 1, 100, 2233.04, 1643.51, 1019.36, 0.603283, 777, 1),
(130, 172, 'Elisa Damanik', 378, 1, 100, 2235.82, 1612.12, 1019.36, 3.13775, 777, 1),
(131, 1, 'Bambang Ginanjar', 0, 1, 100, 1543.6, 13.2824, 24.1378, 20.3737, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_logs`
--

CREATE TABLE `admin_logs` (
  `ID` int(11) NOT NULL,
  `Prefix` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Admin` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `AdminUCP` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `UCPTarget` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `admin_logs`
--

INSERT INTO `admin_logs` (`ID`, `Prefix`, `Admin`, `AdminUCP`, `UCPTarget`) VALUES
(1, 'givemoney', 'Ryuxi', 'Ryuxi', 'Ryuxi_Mozaya'),
(2, 'giveweap', 'Ryuxi', 'Ryuxi', 'Ryuxi_Mozaya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `armouries`
--

CREATE TABLE `armouries` (
  `id` int(12) NOT NULL DEFAULT -1,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `interior` int(12) DEFAULT 0,
  `world` int(12) DEFAULT 0,
  `name` varchar(64) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `armouries`
--

INSERT INTO `armouries` (`id`, `posx`, `posy`, `posz`, `interior`, `world`, `name`) VALUES
(1, 367.705, 216.322, 1008.38, 3, 0, 'Armoury Police'),
(2, 2754.4, 755.33, 13.7665, 0, 0, 'Kepolisian Nexotis'),
(3, 1865.54, 2204.79, 10.8818, 0, 0, 'Peralatan & Persenjataan SAMSAT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `atms`
--

CREATE TABLE `atms` (
  `ID` int(11) NOT NULL,
  `X` float NOT NULL DEFAULT 0,
  `Y` float NOT NULL DEFAULT 0,
  `Z` float NOT NULL DEFAULT 0,
  `RX` float NOT NULL DEFAULT 0,
  `RY` float NOT NULL DEFAULT 0,
  `RZ` float NOT NULL DEFAULT 0,
  `World` int(11) NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `atms`
--

INSERT INTO `atms` (`ID`, `X`, `Y`, `Z`, `RX`, `RY`, `RZ`, `World`, `Interior`) VALUES
(0, 1472.35, -2173.88, -9.54612, -0.6, 179.3, 178.468, 444, 4),
(2, 391.852, -2056.71, 8.39212, 1.6, 1.6, -91.7212, 0, 0),
(3, 1468.09, -1002.76, 9.05193, 0, 0, 42.7356, 999, 1),
(4, 1186.37, -912.709, 43.3619, 0, 0, 97.2126, 0, 0),
(5, 1920.21, -1786.22, 13.6706, 0, 0, 179.259, 0, 0),
(6, 1360.29, -1847.74, 13.6628, 0, 0, 88.3077, 0, 0),
(7, 1740.63, -1122.14, 24.1413, 0, 0, -90.8159, 0, 0),
(8, -313.934, 1291.58, 54.4246, 0, 0, 179.214, 0, 0),
(9, -2609.03, 2253.34, 8.24526, 0, 0, -90.6672, 0, 0),
(10, -1308.12, 2706.39, 50.1983, 0, 0, 118.215, 0, 0),
(11, 1421.17, 441.886, 20.3691, 0, 0, 64.1419, 0, 0),
(12, 2281.58, 25.892, 26.594, 0, 0, -91.6025, 0, 0),
(13, 114.536, -128.947, 1.71512, 0, 0, 181.473, 0, 0),
(14, -2628.39, 176.713, 4.36899, 0, 0, 359.246, 0, 0),
(15, 699.712, -645.478, 16.5207, 0, 0, -1.31502, 0, 0),
(16, 587.647, 1643.18, 7.1123, 0, 0, -57.0035, 0, 0),
(17, -67.9493, -1165.51, 2.23565, 0, 0, -22.9898, 0, 0),
(18, -825.325, 1504.59, 19.7634, 0, 0, -1.98376, 0, 0),
(19, 1304.14, -896.346, 39.6041, 0, 0, 89.113, 0, 0),
(20, 27.8838, -2658.66, 40.6634, 0, 0, -90.2595, 0, 0),
(21, 2439.64, -1769.24, 13.5485, 0, 0, -1.13867, 0, 0),
(22, -2198.95, -2250.59, 30.7134, 0, 0, 143.152, 0, 0),
(23, 2229.63, 1648.76, 1008.36, 0, 0, 92.1484, 44, 1),
(24, 1581.62, 2236.2, 10.9284, 0, 0, 89.4205, 0, 0),
(25, -1971.87, 190.489, 27.8222, 0, 0, 358.41, 0, 0),
(26, 1736.7, -2528.47, 13.6669, 0, 0, -90.9588, 60, 0),
(27, -2351.06, 1010.18, 50.9381, 0, 0, -0.440808, 0, 0),
(28, 182.51, 1176.05, 14.8457, 0, 0, 250.236, 0, 0),
(29, 753.141, 1444.19, 1102.83, 0, 0, -0.090076, 87, 6),
(30, 1270.55, 703.213, 10.9175, 0, 0, -0.783049, 0, 0),
(31, 890.818, 1909.45, 10.8447, 0, 0, 179.201, 0, 0),
(32, 2210.18, 2739.93, 10.819, 0, 0, 178.832, 0, 0),
(33, 2496.52, 745.943, 10.8674, 0, 0, -89.9198, 0, 0),
(34, 1983.88, -2473.31, -15.0931, 0, 0, -91.6942, 543, 0),
(35, 1364.12, 1562.08, 15.8403, 0, 0, 89.3124, 99, 3),
(36, 2093.09, -1359.08, 24.0243, 0, 0, -1.11153, 0, 0),
(37, 2216.41, 1602.53, 1019.44, 0, 0, 80.1926, 777, 1),
(38, 2223.36, 1632.59, 1008.36, 0, 0, 0.857935, 3476, 1),
(39, 2227.39, 1635.61, 1008.46, 0, 0, 47.1904, 2329, 1),
(40, 2222.84, 1632.56, 1008.36, 0, 0, -0.183485, 2372, 1),
(41, 1971.67, 1000.68, 992.469, 0, 0, 264.703, 1, 10),
(42, 1260.2, -773.469, 1091.91, 0, 0, 89.4349, 23248, 5),
(44, 2223.26, 1632.49, 1008.34, 0, 0, 4.14723, 0, 1),
(46, 391.49, -1318.05, 15.077, 0, 0, 32.7374, 0, 0),
(47, 239.25, 1069.07, 1084.19, 0, 0, -179.707, 0, 6),
(48, 1224.44, -811.612, 1084.01, 0, 0, 91.439, 1, 5),
(49, 955.754, -48.7749, 1000.71, 0, 0, 90.2633, 3, 3),
(50, 1129.09, -14.2084, 1000.68, 0, 0, 89.8812, 0, 12),
(51, 504.14, -14.4687, 1000.71, 0, 0, -90.0202, 0, 17),
(52, 381.087, -193.27, 1000.63, 0, 0, 267.084, 44, 17),
(53, -2643, 1412.96, 906.414, 0, 0, -90.2794, 57, 3),
(54, 1076.05, -645.572, 113.602, 0, 0, 1.21307, 0, 0),
(55, 706.668, -1472.38, 5.60908, 0, 0, -1.95288, 0, 0),
(56, 717.344, -1273.75, 17.6484, 0, 0, 85.2877, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `avtreasure`
--

CREATE TABLE `avtreasure` (
  `ID` int(12) NOT NULL,
  `Owner_ID` int(12) NOT NULL DEFAULT -1,
  `InteroKey` int(12) UNSIGNED NOT NULL DEFAULT 0,
  `FlagtufKey` int(12) UNSIGNED NOT NULL DEFAULT 0,
  `FanciousKey` int(12) UNSIGNED NOT NULL DEFAULT 0,
  `RareousKey` int(12) UNSIGNED NOT NULL DEFAULT 0,
  `Intero` int(12) UNSIGNED NOT NULL DEFAULT 0,
  `Flagtuf` int(12) UNSIGNED NOT NULL DEFAULT 0,
  `Fancious` int(12) UNSIGNED NOT NULL DEFAULT 0,
  `Rareous` int(12) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `avtreasure`
--

INSERT INTO `avtreasure` (`ID`, `Owner_ID`, `InteroKey`, `FlagtufKey`, `FanciousKey`, `RareousKey`, `Intero`, `Flagtuf`, `Fancious`, `Rareous`) VALUES
(1, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 4, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 5, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 6, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 7, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 8, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `badside_brankas`
--

CREATE TABLE `badside_brankas` (
  `FMID` int(11) DEFAULT 0,
  `ID` int(11) NOT NULL,
  `Item` varchar(32) DEFAULT NULL,
  `Model` int(11) DEFAULT 0,
  `Quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bankpoints`
--

CREATE TABLE `bankpoints` (
  `ID` int(11) NOT NULL,
  `X` float NOT NULL DEFAULT 0,
  `Y` float NOT NULL DEFAULT 0,
  `Z` float NOT NULL DEFAULT 0,
  `World` int(11) NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `bankpoints`
--

INSERT INTO `bankpoints` (`ID`, `X`, `Y`, `Z`, `World`, `Interior`) VALUES
(0, 1666.98, -1885.54, 13.5487, 0, 0),
(1, 1219.53, -1556.28, 13.5517, 0, 0),
(2, 267.853, -144.833, 1.57831, 0, 0),
(3, 1378.8, 192.684, 19.6028, 0, 0),
(4, 2329.09, 227.819, 26.5611, 0, 0),
(5, -2274.85, -126.215, 35.3289, 0, 0),
(6, -2515.96, -9.01081, 25.7077, 0, 0),
(7, 1553.57, 1031.65, 10.8495, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `basement`
--

CREATE TABLE `basement` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) DEFAULT 'None',
  `password` varchar(50) DEFAULT '',
  `icon` int(11) DEFAULT 19130,
  `locked` int(11) NOT NULL DEFAULT 0,
  `admin` int(11) NOT NULL DEFAULT 0,
  `vip` int(11) NOT NULL DEFAULT 0,
  `faction` int(11) NOT NULL DEFAULT 0,
  `family` int(11) NOT NULL DEFAULT -1,
  `extvw` int(11) DEFAULT 0,
  `extint` int(11) DEFAULT 0,
  `extposx` float DEFAULT 0,
  `extposy` float DEFAULT 0,
  `extposz` float DEFAULT 0,
  `extposa` float DEFAULT 0,
  `intvw` int(11) DEFAULT 0,
  `intint` int(11) NOT NULL DEFAULT 0,
  `intposx` float DEFAULT 0,
  `intposy` float DEFAULT 0,
  `intposz` float DEFAULT 0,
  `intposa` float DEFAULT 0,
  `inexitx` float DEFAULT 0,
  `inexity` float DEFAULT 0,
  `inexitz` float DEFAULT 0,
  `outexitx` float DEFAULT 0,
  `outexity` float DEFAULT 0,
  `outexitz` float DEFAULT 0,
  `outexita` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `basement`
--

INSERT INTO `basement` (`ID`, `name`, `password`, `icon`, `locked`, `admin`, `vip`, `faction`, `family`, `extvw`, `extint`, `extposx`, `extposy`, `extposz`, `extposa`, `intvw`, `intint`, `intposx`, `intposy`, `intposz`, `intposa`, `inexitx`, `inexity`, `inexitz`, `outexitx`, `outexity`, `outexitz`, `outexita`) VALUES
(1, 'Diamond Royal Casino Basement', '', 19130, 0, 0, 0, 0, 0, 0, 0, 552.265, -1512.38, 14.5821, 270.474, 2, 0, 2486.19, 2374.87, 6.9827, 270.495, 2486.18, 2379.41, 6.9822, 552.067, -1500.82, 14.5804, 88.4258);

-- --------------------------------------------------------

--
-- Struktur dari tabel `biz`
--

CREATE TABLE `biz` (
  `ID` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL DEFAULT '-',
  `OwnerID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `OwnerName` varchar(25) NOT NULL DEFAULT '',
  `Locked` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Money` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Price` int(10) UNSIGNED NOT NULL DEFAULT 1000,
  `Fee` int(10) UNSIGNED NOT NULL DEFAULT 500,
  `ProdStock0` int(10) UNSIGNED NOT NULL DEFAULT 200,
  `ProdStock1` int(10) UNSIGNED DEFAULT 200,
  `ProdStock2` int(10) UNSIGNED NOT NULL DEFAULT 200,
  `ProdStock3` int(10) UNSIGNED NOT NULL DEFAULT 200,
  `ProdStock4` int(10) UNSIGNED NOT NULL DEFAULT 200,
  `ProdStock5` int(10) UNSIGNED NOT NULL DEFAULT 200,
  `ProdStock6` int(10) UNSIGNED NOT NULL DEFAULT 200,
  `ProdStock7` int(10) UNSIGNED NOT NULL DEFAULT 200,
  `ProdStock8` int(10) UNSIGNED NOT NULL DEFAULT 200,
  `ProdStock9` int(10) UNSIGNED NOT NULL DEFAULT 200,
  `ProdStock10` int(10) UNSIGNED NOT NULL DEFAULT 200,
  `ProdPrice0` int(10) UNSIGNED NOT NULL DEFAULT 5000,
  `ProdPrice1` int(10) UNSIGNED NOT NULL DEFAULT 5000,
  `ProdPrice2` int(10) UNSIGNED NOT NULL DEFAULT 5000,
  `ProdPrice3` int(10) UNSIGNED NOT NULL DEFAULT 5000,
  `ProdPrice4` int(10) UNSIGNED NOT NULL DEFAULT 5000,
  `ProdPrice5` int(10) UNSIGNED NOT NULL DEFAULT 5000,
  `ProdPrice6` int(10) UNSIGNED NOT NULL DEFAULT 5000,
  `ProdPrice7` int(10) UNSIGNED NOT NULL DEFAULT 5000,
  `ProdPrice8` int(10) UNSIGNED NOT NULL DEFAULT 5000,
  `ProdPrice9` int(10) UNSIGNED NOT NULL DEFAULT 5000,
  `ProdPrice10` int(10) UNSIGNED NOT NULL DEFAULT 5000,
  `X` float NOT NULL DEFAULT 0,
  `Y` float NOT NULL DEFAULT 0,
  `Z` float NOT NULL DEFAULT 0,
  `A` float NOT NULL DEFAULT 0,
  `IntX` float NOT NULL DEFAULT 0,
  `IntY` float NOT NULL DEFAULT 0,
  `IntZ` float NOT NULL DEFAULT 0,
  `IntA` float NOT NULL DEFAULT 0,
  `ExtVw` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ExtInt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `IntVw` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `IntInt` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bj_tables`
--

CREATE TABLE `bj_tables` (
  `id` int(11) NOT NULL,
  `X` float NOT NULL DEFAULT 0,
  `Y` float NOT NULL DEFAULT 0,
  `Z` float NOT NULL DEFAULT 0,
  `RX` float NOT NULL DEFAULT 0,
  `RY` float NOT NULL DEFAULT 0,
  `RZ` float NOT NULL DEFAULT 0,
  `World` int(11) NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0,
  `MinBet` bigint(32) NOT NULL DEFAULT 10000,
  `MaxBet` bigint(32) NOT NULL DEFAULT 50000
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `bj_tables`
--

INSERT INTO `bj_tables` (`id`, `X`, `Y`, `Z`, `RX`, `RY`, `RZ`, `World`, `Interior`, `MinBet`, `MaxBet`) VALUES
(0, 2240.16, 1652.68, 1019.36, 0, 0, -89.6, 777, 1, 10000, 15000),
(1, 2240.21, 1648.58, 1019.36, 0, 0, -90.2, 777, 1, 10000, 15000),
(2, 2231.65, 1652.91, 1019.36, 0, 0, 91, 777, 1, 10000, 15000),
(3, 2231.65, 1648.68, 1019.36, 0, 0, 90.1, 777, 1, 10000, 15000),
(4, 2240.08, 1633.97, 1019.36, 0, 0, -90.2, 777, 1, 15000, 30000),
(5, 2240.08, 1628.21, 1019.36, 0, 0, -89.7, 777, 1, 15000, 30000),
(6, 2231.51, 1628.13, 1019.36, 0, 0, 89.7, 777, 1, 15000, 30000),
(7, 2231.56, 1633.65, 1019.36, 0, 0, 88.9, 777, 1, 15000, 30000),
(8, 2243, 1616.72, 1019.36, 0, 0, -26.7, 777, 1, 30000, 50000),
(9, 2247.94, 1613.7, 1019.36, 0, 0, -45.1, 777, 1, 30000, 50000),
(10, 2251.78, 1609.16, 1019.36, 0, 0, -63, 777, 1, 30000, 50000),
(11, 2227.53, 1616.16, 1019.36, 0, 0, 29.7, 777, 1, 30000, 50000),
(12, 2221.79, 1611.67, 1019.36, 0, 0, 46.3, 777, 1, 30000, 50000),
(13, 2218.65, 1606.65, 1019.36, 0, 0, 64.2, 777, 1, 30000, 50000),
(14, 2235.95, 1624.34, 1019.36, 0, 0, 1.6, 777, 1, 50000, 80000),
(15, 2235.82, 1639.22, 1019.36, 0, 0, -180, 777, 1, 50000, 80000),
(16, 2236.1, 1654.18, 1019.36, 0, 0, 178.1, 777, 1, 50000, 80000),
(17, 2235.96, 1646.81, 1019.36, 0, 0, 0, 777, 1, 50000, 80000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `buttons`
--

CREATE TABLE `buttons` (
  `ID` int(11) NOT NULL,
  `doormodel` int(11) NOT NULL DEFAULT 3089,
  `faction` tinyint(4) NOT NULL DEFAULT 0,
  `family` tinyint(4) NOT NULL DEFAULT -1,
  `speed` float NOT NULL DEFAULT 2,
  `bposx` float NOT NULL,
  `bposy` float NOT NULL,
  `bposz` float NOT NULL,
  `bposrx` float NOT NULL,
  `bposry` float NOT NULL,
  `bposrz` float NOT NULL,
  `doorposx` float NOT NULL,
  `doorposy` float NOT NULL,
  `doorposz` float NOT NULL,
  `doorposrx` float NOT NULL,
  `doorposry` float NOT NULL,
  `doorposrz` float NOT NULL,
  `dopenx` float NOT NULL,
  `dopeny` float NOT NULL,
  `dopenz` float NOT NULL,
  `dopenrx` float NOT NULL,
  `dopenry` float DEFAULT NULL,
  `dopenrz` float NOT NULL,
  `world` int(11) NOT NULL DEFAULT 0,
  `interior` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `buttons`
--

INSERT INTO `buttons` (`ID`, `doormodel`, `faction`, `family`, `speed`, `bposx`, `bposy`, `bposz`, `bposrx`, `bposry`, `bposrz`, `doorposx`, `doorposy`, `doorposz`, `doorposrx`, `doorposry`, `doorposrz`, `dopenx`, `dopeny`, `dopenz`, `dopenrx`, `dopenry`, `dopenrz`, `world`, `interior`) VALUES
(6, 3089, 2, -1, 2, 1079.28, 1746.8, 11.5343, 0, 0, -176.6, 1081.08, 1746.73, 11.1343, 0, 0, -179.8, 1082.54, 1746.74, 11.1343, 0, 0, -179.8, 2, 1),
(8, 2963, 0, -1, 2, 982.325, -53.0699, 1001.12, 0, 0, 0, 963.316, -50.9199, 1001.12, 0, 0, 0, 968.595, -53.2698, 1001.96, 0, 0, 0, 44, 3),
(9, 3089, 5, -1, 2, 1271.27, 706.222, 11.3275, 0, 0, 88.8, 1271.24, 705.918, 10.9875, 0, 0, -90.1, 1271.24, 707.389, 10.9875, 0, 0, -90.1, 0, 0),
(10, 3294, 5, -1, 2, 967.983, -52.1434, 1001.84, 0, 0, 0, 963.052, -50.2833, 1001.12, 0, 0, 0, 968.553, -53.1247, 1001.83, 90.8, 0.1, -179.8, 88, 3),
(12, 3089, 5, -1, 2, 1274.98, 682.867, 11.4675, 0, 0, 88.8, 1274.91, 682.28, 11.1575, 0, 0, -89.4, 1274.9, 683.74, 11.1575, 0, 0, -89.4, 0, 0),
(15, 3089, 5, -1, 2, 1268.48, 697.561, 15.9781, 0, 0, 0, 1268.87, 697.57, 15.6581, 0, 0, 0, 1267.39, 697.57, 15.6581, 0, 0, 0, 0, 0),
(16, 19912, 5, -1, 2, 1290.76, 759.393, 11.5975, 0, 0, 89.7, 1290.85, 760.256, 12.6875, 0, 0, -90, 1290.85, 760.256, 7.12748, 0, 0, -90, 0, 0),
(17, 19912, 5, -1, 2, 1321.35, 709.241, 11.5675, 0, 0, -179.8, 1321.57, 709.412, 12.6875, 0, 0, -179.8, 1321.57, 709.412, 7.10748, 0, 0, -179.8, 0, 0),
(18, 3089, 1, -1, 2, 1584.39, -1637.88, 13.9905, 0, 0, 0, 1582.62, -1637.95, 13.6705, 0, 0, 0, 1581.15, -1637.95, 13.6705, 0, 0, 0, 0, 0),
(22, 3089, 4, -1, 2, 1374.81, 1600.85, 16.1905, 0, -0.2, 89.5001, 1374.72, 1603.16, 15.8085, -0.1, -0.1, -90.7997, 1374.73, 1604.46, 15.8062, -0.1, -0.1, -90.7997, 99, 3),
(23, 3089, 4, -1, 2, 1384.07, 1528.81, 15.985, 0, 0.1, 179.1, 1384.57, 1528.72, 15.82, 0, 0, 0, 1383.11, 1528.72, 15.82, 0, 0, 0, 99, 3),
(24, 3089, 8, -1, 2, 370.736, 166.744, 1008.8, 0, 0, 179.8, 371.26, 166.718, 1008.58, 0, 0, 0, 371.26, 166.718, 1008.58, 0, 0, -92.3999, 100, 3),
(25, 3089, 8, -1, 2, 367.686, 189.528, 1008.88, 0, 0, 0, 364.285, 189.428, 1008.58, 0, 0, 0, 365.785, 189.428, 1008.58, 0, 0, 0, 100, 3),
(28, 3089, 2, -1, 2, 1092.01, 1746.78, 11.4143, 0, 0, 179.9, 1092.4, 1746.75, 11.1043, 0, 0, 0, 1093.89, 1746.75, 11.1043, 0, 0, 0, 2, 1),
(36, 3089, 11, -1, 2, -318.149, 1292.02, 54.9555, 0, 0, 88.2, -318.174, 1292.42, 54.6555, 0, 0, 90.4, -318.164, 1290.95, 54.6555, 0, 0, 90.4, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `crafttables`
--

CREATE TABLE `crafttables` (
  `id` int(11) NOT NULL,
  `X` float DEFAULT 0,
  `Y` float DEFAULT 0,
  `Z` float DEFAULT 0,
  `Rx` float DEFAULT 0,
  `Ry` float DEFAULT 0,
  `Rz` float DEFAULT 0,
  `Interior` int(11) DEFAULT 0,
  `World` int(11) DEFAULT 0,
  `Family` int(11) DEFAULT -1,
  `Type` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `damagelogs`
--

CREATE TABLE `damagelogs` (
  `ID` int(11) NOT NULL,
  `OwnerID` int(11) NOT NULL,
  `Date` varchar(128) NOT NULL DEFAULT '',
  `Weapon` varchar(128) NOT NULL DEFAULT '',
  `Damage` float NOT NULL DEFAULT 0,
  `BodyPart` varchar(35) NOT NULL DEFAULT '',
  `IssuerName` varchar(25) NOT NULL DEFAULT '',
  `KorbanName` varchar(25) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `damagelogs`
--

INSERT INTO `damagelogs` (`ID`, `OwnerID`, `Date`, `Weapon`, `Damage`, `BodyPart`, `IssuerName`, `KorbanName`) VALUES
(1, 1, '01/06/2025 20:51:27', 'Splat', 0, 'Torso', 'Unknown', 'Ryuxi_Mozaya'),
(2, 1, '02/06/2025 07:45:40', 'Splat', 4.95, 'Torso', 'Unknown', 'Ryuxi_Mozaya'),
(3, 1, '02/06/2025 07:46:19', 'Splat', 4.95, 'Torso', 'Unknown', 'Ryuxi_Mozaya'),
(4, 2, '02/06/2025 17:14:08', 'Splat', 24.1, 'Torso', 'Unknown', 'Tatang_Saepudin'),
(5, 2, '02/06/2025 17:24:39', 'Splat', 4.95, 'Torso', 'Unknown', 'Tatang_Saepudin'),
(6, 3, '02/06/2025 17:40:04', 'Splat', 4.95, 'Torso', 'Unknown', 'Jajang_Sutanto'),
(7, 3, '02/06/2025 17:40:08', 'Splat', 4.95, 'Torso', 'Unknown', 'Jajang_Sutanto'),
(8, 2, '02/06/2025 17:40:57', 'Splat', 26.19, 'Torso', 'Unknown', 'Tatang_Saepudin'),
(9, 2, '02/06/2025 17:40:57', 'Splat', 4.95, 'Torso', 'Unknown', 'Tatang_Saepudin'),
(10, 2, '02/06/2025 17:50:12', 'Splat', 42.99, 'Torso', 'Unknown', 'Tatang_Saepudin'),
(11, 2, '02/06/2025 17:50:20', 'Splat', 4.95, 'Torso', 'Unknown', 'Tatang_Saepudin'),
(12, 2, '02/06/2025 17:52:01', 'Splat', 18.24, 'Torso', 'Unknown', 'Tatang_Saepudin'),
(13, 2, '02/06/2025 17:52:41', 'Splat', 4.95, 'Torso', 'Unknown', 'Tatang_Saepudin'),
(14, 2, '02/06/2025 18:01:03', 'Splat', 3.3, 'Torso', 'Unknown', ''),
(15, 2, '02/06/2025 18:01:05', 'Splat', 3.3, 'Torso', 'Unknown', ''),
(16, 2, '02/06/2025 18:01:07', 'Splat', 3.3, 'Torso', 'Unknown', ''),
(17, 2, '02/06/2025 18:01:09', 'Splat', 3.3, 'Torso', 'Unknown', ''),
(18, 2, '02/06/2025 18:01:11', 'Splat', 3.3, 'Torso', 'Unknown', ''),
(19, 2, '02/06/2025 18:01:13', 'Splat', 3.3, 'Torso', 'Unknown', ''),
(20, 2, '02/06/2025 18:01:15', 'Splat', 3.3, 'Torso', 'Unknown', ''),
(21, 2, '02/06/2025 18:01:17', 'Splat', 3.3, 'Torso', 'Unknown', ''),
(22, 2, '02/06/2025 18:01:19', 'Splat', 3.3, 'Torso', 'Unknown', ''),
(23, 2, '02/06/2025 18:01:21', 'Splat', 3.3, 'Torso', 'Unknown', ''),
(24, 2, '02/06/2025 18:03:37', 'Splat', 3.3, 'Torso', 'Unknown', ''),
(25, 2, '02/06/2025 18:03:39', 'Splat', 3.3, 'Torso', 'Unknown', ''),
(26, 2, '02/06/2025 18:03:41', 'Splat', 3.3, 'Torso', 'Unknown', ''),
(27, 2, '02/06/2025 18:08:40', 'Splat', 30.17, 'Torso', 'Unknown', 'Tatang_Saepudin'),
(28, 1, '06/06/2025 06:49:23', 'Splat', 16.99, 'Torso', 'Unknown', 'Ryuxi_Mozaya'),
(29, 4, '06/06/2025 08:40:59', 'Splat', 1.85, 'Torso', 'Unknown', 'TOD_ANJASSS'),
(30, 4, '06/06/2025 08:44:46', 'Splat', 2.27, 'Torso', 'Unknown', 'TOD_ANJASSS'),
(31, 6, '06/06/2025 10:03:55', 'Splat', 4.95, 'Torso', 'Unknown', 'Kont_WKWK'),
(32, 6, '06/06/2025 10:17:06', 'Splat', 28.24, 'Torso', 'Unknown', 'Kont_WKWK'),
(33, 6, '06/06/2025 10:17:10', 'Splat', 27.64, 'Torso', 'Unknown', 'Kont_WKWK'),
(34, 6, '06/06/2025 10:19:55', 'Splat', 4.95, 'Torso', 'Unknown', 'Kont_WKWK'),
(35, 6, '06/06/2025 10:23:00', 'Splat', 4.95, 'Torso', 'Unknown', 'Kont_WKWK'),
(36, 6, '06/06/2025 10:28:37', 'Splat', 4.95, 'Torso', 'Unknown', 'Kont_WKWK'),
(37, 7, '15/05/2026 02:04:06', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(38, 7, '15/05/2026 02:09:03', 'Splat', 165, 'Torso', 'Unknown', 'Alvin_Ytp'),
(39, 7, '15/05/2026 02:10:27', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(40, 7, '15/05/2026 02:10:28', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(41, 7, '15/05/2026 14:07:42', 'Splat', 1.57, 'Torso', 'Unknown', 'Alvin_Ytp'),
(42, 7, '16/05/2026 10:57:40', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(43, 7, '16/05/2026 11:09:15', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(44, 7, '17/05/2026 12:00:54', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(45, 7, '18/05/2026 12:52:33', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(46, 7, '18/05/2026 15:39:09', 'Splat', 24.63, 'Torso', 'Unknown', 'Alvin_Ytp'),
(47, 7, '18/05/2026 15:39:17', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(48, 7, '18/05/2026 15:43:37', 'Splat', 22.75, 'Torso', 'Unknown', 'Alvin_Ytp'),
(49, 7, '18/05/2026 15:43:53', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(50, 7, '18/05/2026 15:44:35', 'Splat', 165, 'Torso', 'Unknown', 'Alvin_Ytp'),
(51, 7, '18/05/2026 15:47:31', 'Splat', 24.69, 'Torso', 'Unknown', 'Alvin_Ytp'),
(52, 7, '18/05/2026 15:49:03', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(53, 7, '18/05/2026 15:52:36', 'Splat', 22.93, 'Torso', 'Unknown', 'Alvin_Ytp'),
(54, 7, '18/05/2026 15:56:38', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(55, 7, '18/05/2026 16:01:58', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(56, 7, '18/05/2026 16:03:07', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(57, 7, '18/05/2026 16:08:32', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(58, 7, '18/05/2026 16:08:34', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(59, 7, '18/05/2026 16:19:52', 'Splat', 21.58, 'Torso', 'Unknown', 'Alvin_Ytp'),
(60, 7, '18/05/2026 17:51:18', 'Splat', 165, 'Torso', 'Unknown', 'Alvin_Ytp'),
(61, 7, '19/05/2026 10:34:40', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(62, 7, '19/05/2026 15:17:56', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(63, 7, '19/05/2026 15:18:28', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(64, 7, '19/05/2026 15:19:55', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(65, 7, '19/05/2026 15:20:37', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(66, 7, '19/05/2026 16:07:33', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(67, 7, '20/05/2026 14:17:59', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(68, 7, '20/05/2026 14:43:03', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(69, 7, '20/05/2026 23:19:08', 'Splat', 21.07, 'Torso', 'Unknown', 'Alvin_Ytp'),
(70, 7, '21/05/2026 12:23:03', 'Splat', 31.46, 'Torso', 'Unknown', 'Alvin_Ytp'),
(71, 7, '21/05/2026 13:12:53', 'Splat', 31.42, 'Torso', 'Unknown', 'Alvin_Ytp'),
(72, 7, '21/05/2026 13:23:19', 'Splat', 1.4, 'Torso', 'Unknown', 'Alvin_Ytp'),
(73, 7, '21/05/2026 19:50:45', 'Splat', 1.26, 'Torso', 'Unknown', 'Alvin_Ytp'),
(74, 7, '22/05/2026 03:31:50', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(75, 7, '22/05/2026 03:35:25', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(76, 7, '24/05/2026 11:08:25', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(77, 7, '24/05/2026 13:29:47', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(78, 7, '24/05/2026 13:31:24', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(79, 7, '24/05/2026 13:42:46', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(80, 7, '24/05/2026 13:43:26', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(81, 7, '24/05/2026 13:47:08', 'Splat', 35.09, 'Torso', 'Unknown', 'Alvin_Ytp'),
(82, 7, '24/05/2026 17:21:43', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(83, 7, '24/05/2026 17:28:22', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(84, 7, '24/05/2026 17:29:27', 'Splat', 0.79, 'Torso', 'Unknown', 'Alvin_Ytp'),
(85, 7, '24/05/2026 17:29:51', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(86, 7, '25/05/2026 15:05:26', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(87, 7, '25/05/2026 15:05:51', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(88, 7, '26/05/2026 13:33:27', 'Splat', 1.49, 'Torso', 'Unknown', 'Alvin_Ytp'),
(89, 7, '26/05/2026 13:52:55', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(90, 7, '26/05/2026 13:54:25', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(91, 7, '26/05/2026 20:56:56', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(92, 7, '26/05/2026 20:57:01', 'Splat', 16.93, 'Torso', 'Unknown', 'Alvin_Ytp'),
(93, 7, '26/05/2026 20:58:38', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(94, 7, '26/05/2026 20:58:43', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(95, 7, '26/05/2026 21:38:54', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(96, 7, '26/05/2026 21:39:05', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(97, 7, '26/05/2026 21:39:40', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(98, 7, '27/05/2026 14:39:18', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(99, 7, '27/05/2026 15:56:46', 'Splat', 28.17, 'Torso', 'Unknown', 'Alvin_Ytp'),
(100, 7, '27/05/2026 16:14:13', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(101, 7, '27/05/2026 16:16:05', 'Splat', 4.95, 'Torso', 'Unknown', 'Alvin_Ytp'),
(102, 8, '29/05/2026 10:19:21', 'Splat', 27.62, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(103, 8, '29/05/2026 10:19:23', 'Splat', 30.76, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(104, 8, '29/05/2026 10:19:24', 'Splat', 28.34, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(105, 8, '29/05/2026 10:19:29', 'Splat', 31.42, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(106, 8, '29/05/2026 10:19:29', 'Splat', 3.3, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(107, 8, '29/05/2026 10:24:16', 'Splat', 26.94, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(108, 8, '29/05/2026 10:24:17', 'Splat', 29.53, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(109, 8, '29/05/2026 10:27:21', 'Splat', 33.1, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(110, 8, '29/05/2026 10:27:58', 'Splat', 4.95, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(111, 8, '29/05/2026 17:09:07', 'Splat', 20.89, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(112, 8, '29/05/2026 17:19:34', 'Splat', 21.33, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(113, 8, '29/05/2026 17:20:50', 'Splat', 21.2, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(114, 8, '29/05/2026 17:21:36', 'Splat', 20.53, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(115, 8, '29/05/2026 17:27:07', 'Splat', 4.95, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(116, 8, '29/05/2026 18:34:52', 'Splat', 35.17, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(117, 8, '29/05/2026 19:04:36', 'Splat', 27.25, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(118, 8, '29/05/2026 20:36:21', 'Splat', 26.86, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(119, 8, '29/05/2026 20:36:57', 'Splat', 18.79, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(120, 8, '29/05/2026 20:36:57', 'Splat', 18.79, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(121, 8, '29/05/2026 20:36:57', 'Splat', 18.79, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(122, 8, '29/05/2026 20:36:57', 'Splat', 18.79, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(123, 8, '29/05/2026 20:36:57', 'Splat', 23.97, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(124, 8, '29/05/2026 20:36:57', 'Splat', 18.79, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(127, 8, '29/05/2026 20:36:57', 'Splat', 23.97, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(126, 8, '29/05/2026 20:36:57', 'Splat', 18.79, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(125, 8, '29/05/2026 20:36:57', 'Splat', 18.79, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(128, 8, '29/05/2026 20:36:57', 'Splat', 18.79, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(129, 8, '29/05/2026 20:36:57', 'Splat', 18.79, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(130, 8, '29/05/2026 20:36:57', 'Splat', 18.79, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(131, 8, '29/05/2026 20:36:57', 'Splat', 18.79, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(132, 8, '29/05/2026 20:36:57', 'Splat', 18.79, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(133, 8, '29/05/2026 20:36:57', 'Splat', 18.79, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(134, 8, '29/05/2026 20:36:57', 'Splat', 23.97, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(135, 8, '29/05/2026 20:36:57', 'Splat', 18.79, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(136, 8, '29/05/2026 20:36:57', 'Splat', 18.79, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(137, 8, '29/05/2026 20:36:57', 'Splat', 18.79, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(138, 8, '29/05/2026 20:36:57', 'Splat', 18.79, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(139, 8, '29/05/2026 20:36:57', 'Splat', 18.79, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(140, 8, '29/05/2026 20:36:57', 'Splat', 18.79, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(141, 8, '29/05/2026 20:36:57', 'Splat', 18.79, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(142, 8, '29/05/2026 20:36:57', 'Splat', 18.79, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(143, 8, '29/05/2026 20:36:57', 'Splat', 18.79, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(144, 8, '29/05/2026 20:42:18', 'Splat', 20.53, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(145, 8, '29/05/2026 20:45:59', 'Splat', 21.2, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(146, 8, '29/05/2026 20:47:01', 'Splat', 21.39, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(147, 8, '29/05/2026 20:49:42', 'Splat', 4.95, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(148, 8, '29/05/2026 20:51:12', 'Splat', 20.99, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(149, 8, '29/05/2026 20:54:13', 'Splat', 4.95, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(150, 8, '29/05/2026 20:54:21', 'Splat', 20.93, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(151, 8, '29/05/2026 21:04:56', 'Splat', 4.95, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(152, 8, '29/05/2026 21:34:26', 'Splat', 21.14, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(153, 8, '29/05/2026 21:35:28', 'Splat', 21.16, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(154, 8, '29/05/2026 21:36:41', 'Splat', 21.09, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(155, 8, '29/05/2026 21:40:06', 'Splat', 20.74, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(156, 8, '29/05/2026 21:57:06', 'Splat', 20.81, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(157, 8, '29/05/2026 21:57:34', 'Splat', 21.09, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(158, 8, '29/05/2026 21:57:56', 'Splat', 26.57, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(159, 8, '29/05/2026 22:16:02', 'Splat', 4.95, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(160, 8, '29/05/2026 22:24:40', 'Splat', 21.48, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(161, 8, '29/05/2026 22:31:31', 'Splat', 22.02, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(162, 8, '30/05/2026 08:51:08', 'Splat', 6.06, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(163, 8, '30/05/2026 09:26:02', 'Splat', 4.95, 'Torso', 'Unknown', 'Nugrhh_Ganteng'),
(164, 8, '30/05/2026 09:29:25', 'Splat', 165, 'Torso', 'Unknown', 'Nugrhh_Ganteng');

-- --------------------------------------------------------

--
-- Struktur dari tabel `demand_vehicles`
--

CREATE TABLE `demand_vehicles` (
  `id` int(11) NOT NULL,
  `ownerid` int(11) DEFAULT 0,
  `model` int(11) DEFAULT 0,
  `vehX` float DEFAULT 0,
  `vehY` float DEFAULT 0,
  `vehZ` float DEFAULT 0,
  `vehA` float DEFAULT 0,
  `damage0` int(11) DEFAULT 0,
  `damage1` int(11) DEFAULT 0,
  `damage2` int(11) DEFAULT 0,
  `damage3` int(11) DEFAULT 0,
  `health` float DEFAULT 1000,
  `maxhealth` float DEFAULT 1000,
  `bodyupgraded` tinyint(4) DEFAULT 0,
  `bodybroken` tinyint(4) DEFAULT 0,
  `fuel` int(11) DEFAULT 100,
  `locked` tinyint(3) DEFAULT 0,
  `world` int(11) DEFAULT 0,
  `color1` int(11) DEFAULT 0,
  `color2` int(11) DEFAULT 0,
  `comp1` int(11) DEFAULT 0,
  `comp2` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `demand_vehicles`
--

INSERT INTO `demand_vehicles` (`id`, `ownerid`, `model`, `vehX`, `vehY`, `vehZ`, `vehA`, `damage0`, `damage1`, `damage2`, `damage3`, `health`, `maxhealth`, `bodyupgraded`, `bodybroken`, `fuel`, `locked`, `world`, `color1`, `color2`, `comp1`, `comp2`) VALUES
(15, 7, 596, 1154.8, 1345.62, 10.55, 269.951, 0, 0, 0, 0, 1839.51, 2000, 1, 0, 97, 0, 0, 25, 25, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `documents`
--

CREATE TABLE `documents` (
  `Owner_ID` int(11) DEFAULT 0,
  `Type` int(11) DEFAULT 0,
  `BPJS_Class` int(11) DEFAULT 0,
  `BPJS_Dur` int(11) DEFAULT 0,
  `BPJS_Issuer` varchar(24) DEFAULT '',
  `BPJS_IssuerRank` varchar(128) DEFAULT '',
  `BPJS_IssueDate` varchar(128) DEFAULT '',
  `SKS_Dur` int(11) DEFAULT 0,
  `SKS_Text` varchar(64) DEFAULT '',
  `SKS_Issuer` varchar(24) DEFAULT '',
  `SKS_IssuerRank` varchar(128) DEFAULT '',
  `SKS_IssueDate` varchar(128) DEFAULT '',
  `SKCK_Dur` int(11) DEFAULT 0,
  `SKCK_Text` varchar(64) DEFAULT '',
  `SKCK_Issuer` varchar(24) DEFAULT '',
  `SKCK_IssuerRank` varchar(128) DEFAULT '',
  `SKCK_IssueDate` varchar(128) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `doors`
--

CREATE TABLE `doors` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) DEFAULT 'None',
  `password` varchar(50) DEFAULT '',
  `icon` int(11) DEFAULT 19130,
  `locked` int(11) NOT NULL DEFAULT 0,
  `admin` int(11) NOT NULL DEFAULT 0,
  `vip` int(11) NOT NULL DEFAULT 0,
  `faction` int(11) NOT NULL DEFAULT 0,
  `family` int(11) NOT NULL DEFAULT -1,
  `extvw` int(11) DEFAULT 0,
  `extint` int(11) DEFAULT 0,
  `extposx` float DEFAULT 0,
  `extposy` float DEFAULT 0,
  `extposz` float DEFAULT 0,
  `extposa` float DEFAULT 0,
  `intvw` int(11) DEFAULT 0,
  `intint` int(11) NOT NULL DEFAULT 0,
  `intposx` float DEFAULT 0,
  `intposy` float DEFAULT 0,
  `intposz` float DEFAULT 0,
  `intposa` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `doors`
--

INSERT INTO `doors` (`ID`, `name`, `password`, `icon`, `locked`, `admin`, `vip`, `faction`, `family`, `extvw`, `extint`, `extposx`, `extposy`, `extposz`, `extposa`, `intvw`, `intint`, `intposx`, `intposy`, `intposz`, `intposa`) VALUES
(0, 'ADMIN', '', 19197, 0, 0, 0, 0, 0, 0, 0, 2104.24, 2678.92, 10.813, 269.52, 0, 6, 234.172, 1064.05, 1084.21, 359.385),
(2, 'Pembuatan SIM & Plat', '', 19130, 0, 0, 0, 0, -1, 0, 0, 2101.17, -1360.14, 24.0243, 179.788, 3, 3, -2026.93, -104.151, 1035.17, 180.94),
(8, 'RSU Arivena || Helipad', '', 19130, 0, 0, 0, 2, -1, 0, 0, 1761.86, -1098.47, 28.1893, 181.775, 0, 0, 1768.97, -1106.34, 38.1213, 4.76539),
(14, '(( Roleplay School ))', '', 19130, 0, 0, 0, 0, -1, 0, 0, 1285.4, -1329.44, 13.5487, 85.8017, 256, 0, 1060.2, 2447.73, 301.5, 91.4941),
(21, 'Lapas Arivena', '', 19130, 0, 0, 0, 1, -1, 0, 0, 1169.7, 1262.84, 10.882, 1.24002, 788, 10, 246.434, 107.433, 1003.22, 0.990513),
(24, 'Diamond Royal Casino', '', 19130, 0, 0, 0, 0, -1, 0, 0, 556.275, -1477.37, 14.6886, 93.1141, 777, 1, 2233.96, 1713.99, 1023.15, 183.351),
(25, 'Bramble Club', '', 19130, 0, 0, 0, 0, -1, 0, 0, -1896.56, 487.184, 35.1719, 90.2635, 57, 3, -2636.7, 1402.84, 906.461, 2.61711),
(26, 'Pacific Standard Public Deposit Bank', '', 19130, 0, 0, 0, 0, -1, 0, 0, 1462.36, -1011.15, 26.8438, 181.012, 999, 1, 1472.26, -1006.85, 9.05193, 44.9521),
(27, 'Balai Kota Arivena', '', 19130, 0, 0, 0, 0, -1, 0, 0, 1123.74, -2037.01, 69.8862, 269.497, 99, 3, 1365.73, 1575.54, 17.0003, 269.928),
(28, 'Gnocchi Casino Basement', '', 19130, 0, 0, 0, 0, -1, 2, 0, 2488.85, 2397.18, 4.21094, 270.037, 777, 1, 2250.01, 1593.36, 1019.36, 359.205),
(30, 'Bedroom', '', 19130, 0, 0, 0, 0, -1, 12, 9, 2316.32, -1010.74, 1054.72, 270.797, 12, 5, 2231.81, -1112.18, 1050.88, 272.634),
(31, 'Rahasia', '', 19130, 0, 0, 0, 0, -1, 0, 0, -358.135, 2239.24, 42.4844, 104.612, 87, 1, 1473.39, -37.5916, 9.71901, 270.072),
(32, 'Bahamas Las Venturas', '', 19130, 0, 0, 0, 0, -1, 0, 0, 2506.82, 2120.88, 10.84, 358.278, 554, 3, -2636.62, 1403.03, 906.461, 358.578),
(33, 'GYM', '', 19130, 0, 0, 0, 0, -1, 0, 0, 400.769, -1946.3, 7.81119, 91.8294, 12, 6, 774.216, -50.4769, 1000.59, 171.123),
(34, 'MC', '', 19130, 0, 0, 0, 0, 10, 0, 0, -136.342, 1070.16, 19.7524, 96.1029, 0, 3, 966.864, -53.1279, 1001.12, 91.096),
(35, 'Loving Donuts', '', 19130, 0, 0, 0, 0, -1, 0, 0, 1038.2, -1340.11, 13.7376, 0.48092, 44, 17, 377.118, -192.731, 1000.64, 359.832),
(36, 'Kios Jamu Moro Seneng', '', 19130, 0, 0, 0, 0, -1, 0, 0, -180.031, 1087.68, 19.7422, 47.9353, 0, 6, 744.409, 1436.74, 1102.7, 358.611),
(37, 'Dilarang Masuk', '', 19130, 0, 5, 0, 0, 0, 0, 0, 1952.33, 1343.03, 15.3746, 275.882, 99, 3, 389.558, 173.958, 1008.38, 88.5058),
(38, 'Casa Fu\'ente', '', 19130, 0, 0, 0, 0, -1, 0, 0, 1930.9, 1345.28, 9.96875, 272.52, 44, 1, 2234.18, 1713.82, 1012.25, 182.173),
(39, 'Leak Office', '', 19130, 0, 0, 0, 0, 13, 0, 0, 2770.79, -1628.42, 12.1775, 1.31, 88, 5, 1261.39, -785.489, 1091.91, 270.742),
(40, 'Rajasika', '', 19130, 0, 0, 0, 0, -1, 0, 0, 1022.41, -1121.76, 23.8717, 178.255, 0, 10, 2017.94, 1017.79, 996.875, 92.3496),
(41, 'Pelabuhan Belawan', '', 19130, 0, 0, 0, 0, -1, 0, 0, 2719.23, -2516.93, 17.3672, 0.138476, 91, 1, 2782.05, -2390.05, 37.2239, 135.506),
(42, 'Venturas Club', '', 19130, 0, 0, 0, 0, -1, 0, 0, 1042.82, 1010.68, 11, 318.505, 7, 1, 2233.8, 1713.29, 1012.09, 178.998),
(43, 'The Colore Venturas', '', 19130, 0, 0, 0, 0, 14, 0, 0, 1652.33, 2709.54, 10.8203, 0.458849, 99, 5, 1261.83, -785.491, 1091.91, 266.481),
(44, 'Tanah Air Internasional Airport', '', 19130, 0, 0, 0, 0, -1, 0, 0, 1685.78, -2238.59, 13.5469, 180.912, 60, 0, 1770.78, -2517.18, 20.2869, 89.1322),
(45, 'VIP', '', 19130, 0, 0, 0, 0, -1, 0, 10, 1963.7, 972.877, 994.469, 25.9202, 88, 3, 966.743, -53.2849, 1001.12, 96.2383),
(46, 'CDM Area', '', 19130, 0, 0, 0, 0, 15, 0, 0, 2315.16, 33.5881, 27.474, 266.792, 1, 5, 1260.75, -785.372, 1091.91, 270.086),
(47, 'D\'Warriors Area', '', 19130, 0, 0, 0, 0, 16, 0, 0, 1958.76, -1560.5, 13.5947, 222.312, 1, 5, 2352.84, -1180.96, 1027.98, 90.3548),
(48, 'CDM Bar', '', 19130, 0, 0, 0, 0, -1, 0, 0, 2269.62, -74.8438, 26.7724, 178.964, 0, 12, 1133.21, -14.9863, 1000.68, 359.659),
(51, 'Rusun Jefferson', '', 19130, 0, 0, 0, 0, -1, 0, 0, 2232.78, -1159.8, 25.8906, 89.2606, 1, 171, -981.9, -1111.36, 129.268, 90.0961),
(52, 'Rusun Redsands East', '', 19130, 0, 0, 0, 0, -1, 0, 0, 2004.19, 2149.86, 10.8203, 268.343, 3, 171, -981.921, -1111.37, 129.268, 90.2645),
(53, 'DESTROYER GYM', '', 19130, 0, 0, 0, 0, -1, 0, 0, 1083.4, -1226.87, 15.8203, 271.568, 0, 5, 772.399, -4.39813, 1000.73, 3.36441),
(55, 'SECRET DOOR', '', 19130, 0, 0, 0, 0, 19, 0, 0, -50.621, -233.352, 6.76462, 355.748, 2342, 6, 744.438, 1436.69, 1102.7, 355.529),
(56, 'SECRET CLUB', '', 19130, 0, 0, 0, 0, -1, 0, 0, -49.7255, -269.802, 6.63319, 185.109, 24842, 17, 493.355, -24.5065, 1000.68, 0.358274),
(57, 'SECRET ROOM', '', 19130, 0, 0, 0, 0, 0, 24842, 17, 503.504, -11.6451, 1000.68, 91.9575, 2342, 6, 759.493, 1443.28, 1102.7, 178.23),
(58, 'Mafia del Nord', '', 19130, 0, 0, 0, 0, 20, 0, 0, -2491.86, 2363.13, 10.2729, 280.131, 5820, 5, 1261.56, -785.38, 1091.91, 266.649),
(61, 'Rusun Juniper Hollow', '', 19130, 0, 0, 0, 0, -1, 0, 0, -2524.14, 1216.2, 37.5431, 95.6796, 2, 171, -981.786, -1111.37, 129.268, 90.8911),
(64, 'Gedung Administrasi Akademi Kepolisian Arivena', '', 19130, 0, 0, 0, 0, -1, 0, 0, 1110.76, 1328.74, 10.862, 269.779, 0, 3, 389.32, 173.934, 1008.38, 88.1925),
(65, 'Ruang Latihan Tembak Akademi Kepolisian Arivena', '', 19130, 0, 0, 0, 0, -1, 0, 0, 1105.16, 1294.45, 10.862, 1.73167, 71, 2, 1007.9, 1675.53, -16.4808, 181.656),
(80, '(( Staff Only ))', '', 19130, 0, 1, 0, 0, -1, 256, 0, 1050.07, 2451.34, 301.5, 270.096, 256, 0, 1023.48, 2452.98, 302.598, 268.819),
(84, 'Uber Office', '', 19130, 0, 0, 0, 0, -1, 0, 0, -2001.81, -940.654, 33.0359, 268.755, 444, 4, 1478.61, -2174.96, -10.6731, 359.857);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dropped_items`
--

CREATE TABLE `dropped_items` (
  `ID` int(11) NOT NULL,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(11) DEFAULT 0,
  `itemX` float DEFAULT 0,
  `itemY` float DEFAULT 0,
  `itemZ` float DEFAULT 0,
  `itemInt` int(11) DEFAULT 0,
  `itemWorld` int(11) DEFAULT 0,
  `itemQuantity` int(11) DEFAULT 0,
  `itemAmmo` int(11) DEFAULT 0,
  `itemWeapon` int(11) DEFAULT 0,
  `itemPlayer` varchar(24) DEFAULT NULL,
  `itemTime` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dynamic_deer`
--

CREATE TABLE `dynamic_deer` (
  `ID` int(11) NOT NULL,
  `X` float DEFAULT 0,
  `Y` float DEFAULT 0,
  `Z` float DEFAULT 0,
  `RX` float DEFAULT 0,
  `RY` float DEFAULT 0,
  `RZ` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `dynamic_deer`
--

INSERT INTO `dynamic_deer` (`ID`, `X`, `Y`, `Z`, `RX`, `RY`, `RZ`) VALUES
(0, -624.788, -2401.57, 29.6132, 0, 2.5, 0),
(1, -627.081, -2372.02, 30.4251, 0, -10.2, 171.4),
(2, -636.134, -2343.87, 34.2336, 0, 0, 0),
(3, -582.009, -2327.55, 27.7917, 0, 0, 0),
(4, -684.417, -2388.36, 50.3357, 0, 0, 0),
(5, -561.31, -2275.02, 27.5661, 0, 0, 0),
(6, -564.688, -2225.04, 31.6586, 0, -12.6, 0),
(7, -537.533, -2238.06, 33.5418, 0, -8.6, 0),
(8, -602.037, -2276.4, 25.5464, 0, 0, 0),
(9, -670.508, -2285.56, 27.9999, 0, 0, 0),
(10, -688.268, -2322.91, 31.8578, 0, 0, 0),
(11, -794.435, -2331.08, 40.4844, 0, 0, 0),
(12, -688.138, -2243.89, 13.0467, 0, 0, 0),
(13, -784.687, -2384.24, 56.8074, 0, 0, 0),
(14, -706.275, -2552.18, 52.1998, 0, 0, 0),
(15, -806.504, -2359.4, 48.6959, 0, 0, 0),
(16, -750.49, -2579.69, 66.7317, 0, 0, 0),
(17, -720.818, -2662.06, 85.5123, 0, 0, 0),
(18, -824.632, -2324.42, 35.0392, 0, 0, 0),
(19, -766.532, -2653.19, 83.061, 0, 0, 0),
(20, -792.127, -2658.33, 85.4831, 0, 7.6, 0),
(21, -822.022, -2672.95, 92.9682, 0, 0, 0),
(22, -811.428, -2310.73, 31.6011, 0, -9.5, 0),
(23, -787.054, -2691.71, 84.1695, 0, 30.7, 0),
(24, -701.165, -2695.01, 93.2995, 0, -14, 0),
(25, -640.101, -2682.77, 110.379, 0, 0, 0),
(26, -781.453, -2301.53, 36.4229, 0, 0, -123.9),
(27, -740.418, -2733.82, 89.9576, 0, -20, 0),
(28, -828.823, -2286.14, 21.8236, 0, 0, 0),
(29, -843.763, -2307.59, 25.9421, 0, -19.2, -45.4),
(30, -868.165, -2314.69, 33.1254, 0, 0, 0),
(31, -457.834, -2267.92, 45.3561, 0, 0, 0),
(32, -855.537, -2277.43, 23.5383, 0, 0, 0),
(33, -488.378, -2253.4, 38.8049, 0, 0, 0),
(34, -871.476, -2236.63, 26.9813, 0, 10.9, 0),
(35, -440.833, -2252.3, 46.7398, 0, 0, 0),
(36, -839.038, -2215.14, 23.1519, 0, 0, 0),
(37, -868.392, -2197.47, 30.8725, 0, 0, 0),
(38, -500.677, -2285.82, 34.5306, 0, 0, 0),
(39, -917.455, -2251.09, 40.8078, 0, 14.8, 0),
(40, -793.347, -2182, 22.5846, 0, 0, 0),
(41, -1029.65, -2156.82, 33.7476, 0, 0, 0),
(42, -1007.12, -2149.23, 34.6548, 0, 0, 0),
(43, -928.427, -2280.36, 48.8746, 0, 16.3, 0),
(44, -979.392, -2162.93, 34.1215, 0, 0, 48.9),
(45, -953.78, -2159.61, 34.4627, 0, 0, -118.8),
(46, -909.322, -2207.66, 35.8994, -3.6, 8.8, 0),
(47, -1065, -2274.79, 48.2851, 0, 0, 0),
(48, -1042.61, -2314.11, 56.6964, 0, 0, 0),
(49, -1005.54, -2299.32, 59.9366, 0, 0, -46.6),
(50, -644.176, -2310.58, 34.2788, 0, 0, 0),
(51, -641.82, -2282.73, 28.3061, 0, 0, 0),
(52, -979.402, -2341.84, 66.4131, 0, 0, 0),
(53, -923.489, -2374.63, 55.8219, 0, 0, 0),
(54, -972.609, -2316.47, 62.7124, 0, 0, 0),
(55, -955.321, -2344.61, 60.3931, 0, 0, 0),
(56, -960.671, -2387.56, 70.4274, 0, 0, 0),
(57, -990.895, -2389.93, 69.7777, 0, 0, 0),
(58, -1051.25, -2347.17, 55.2759, 0, 0, 0),
(59, -1003.04, -2360.07, 66.4576, 0, 0, 0),
(60, -976.177, -2290.27, 59.6029, 0, -6, 0),
(61, -915.081, -2342.72, 69.0341, 0, 0, 0),
(62, -944.104, -2298.93, 64.1323, 0, 29.6, 0),
(63, -766.937, -2545.23, 92.2802, 0, 0, 0),
(64, -475.301, -2227.82, 63.5896, 0, 0, 0),
(65, -400.885, -2479.82, 103.651, 0, 0, 0),
(66, -358.677, -2425.33, 99.3625, 0, -10.9, 0),
(67, -690.875, -2452.46, 67.2669, 0, 0, 0),
(68, -421.142, -2343.59, 87.826, 0, 0, 0),
(69, -401.488, -2594.34, 143.301, 0, 0, 0),
(70, -352.248, -2516.31, 112.587, 0, 0, 0),
(71, -346.567, -2585.55, 128.64, 0, 0, 0),
(72, -532.703, -2373.68, 49.6958, 0, -36, 0),
(73, -459.607, -2657.17, 156.727, 0, 0, 0),
(74, -503.557, -2640.59, 164.493, 0, -22.4, 0),
(75, -532.868, -2189.07, 52.2716, 14.3999, 0, 0),
(76, -475.278, -2587.2, 131.891, -20.2836, -9.39129, 3.45118),
(77, -535.243, -2692.37, 143.952, 0, -16.4, 0),
(78, -466.895, -2641.48, 156.644, 0, 0, 0),
(79, -455.067, -2567.95, 127.389, 0, -26.9, 0),
(80, -505.309, -2744.79, 145.141, 0, -23.4, 0),
(81, -475.639, -2536.83, 111.857, 0, -15.2, 0),
(82, -471.688, -2496.67, 113.1, 0, 0, 0),
(83, -582.63, -2676.57, 135.906, 0, -21.6, 0),
(84, -493.349, -2573.73, 120.96, 0, 20, 90),
(85, -465.443, -2411.01, 110.913, 0, 0, 0),
(86, -508.836, -2445.86, 104.053, 0, -14.8, 0),
(87, -466.002, -2434.41, 111.953, 0, 0, -124.9),
(88, -609.218, -2623.84, 134.717, 0, 0, -27.3),
(89, -398.708, -2402.91, 92.559, 0, -13.1, 0),
(90, -517.614, -2593.72, 152.75, 0, -20, 0),
(91, -541.483, -2545.28, 141.169, 0, -15.4, 0),
(92, -725.777, -2183.17, 35.0808, 0, 0, 0),
(93, -733.093, -2207.11, 35.3807, 0, 0, 0),
(94, -534.169, -2411.24, 97.5763, 0, 0, 0),
(95, -808.742, -2248.42, 38.2842, 0, 0, 0),
(96, -797.914, -2275.25, 41.0547, 0, -6.7, 0),
(97, -796.933, -2237.19, 35.5627, 0, 0, 0),
(98, -563.196, -2629.4, 147.925, 0, 0, 0),
(99, -619.067, -2573.29, 119.843, 0, -27, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `faction_brankas`
--

CREATE TABLE `faction_brankas` (
  `FID` int(11) DEFAULT 0,
  `ID` int(11) NOT NULL,
  `Item` varchar(32) DEFAULT NULL,
  `Model` int(11) DEFAULT 0,
  `Quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `faction_brankas`
--

INSERT INTO `faction_brankas` (`FID`, `ID`, `Item`, `Model`, `Quantity`) VALUES
(2, 1, 'Perban', 11736, 200),
(2, 2, 'Medkit', 11738, 200),
(2, 3, 'Nasi Padang', 2219, 200),
(2, 4, 'Sirup Selasih', 1544, 200),
(1, 5, 'Brewed Coffee', 19835, 200),
(1, 6, 'Nasi Padang', 2219, 200),
(1, 7, 'Kevlar', 19515, 50);

-- --------------------------------------------------------

--
-- Struktur dari tabel `faction_garages`
--

CREATE TABLE `faction_garages` (
  `id` int(12) NOT NULL DEFAULT -1,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `gposx` float DEFAULT NULL,
  `gposy` float DEFAULT NULL,
  `gposz` float DEFAULT NULL,
  `gposspawnx` float DEFAULT NULL,
  `gposspawny` float DEFAULT NULL,
  `gposspawnz` float DEFAULT NULL,
  `gposspawna` float DEFAULT NULL,
  `world` int(12) DEFAULT 0,
  `interior` int(12) DEFAULT 0,
  `type` int(12) DEFAULT 0,
  `name` varchar(64) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `faction_garages`
--

INSERT INTO `faction_garages` (`id`, `posx`, `posy`, `posz`, `gposx`, `gposy`, `gposz`, `gposspawnx`, `gposspawny`, `gposspawnz`, `gposspawna`, `world`, `interior`, `type`, `name`) VALUES
(0, 2743.03, 693.78, 10.9165, 2743.03, 693.78, 10.9165, 2743.03, 693.78, 10.9165, 274.544, 0, 0, 1, 'Kepolisian Nexotis'),
(1, 2195.2, 910.999, 10.8573, 2195.2, 910.999, 10.8573, 2195.2, 910.999, 10.8573, 90.1019, 0, 0, 2, 'Rumah Sakit Nexotis'),
(5, 1360.4, -1854.74, 13.5928, 1360.4, -1854.74, 13.5928, 1354.38, -1848.3, 13.5928, 77.9354, 0, 0, 3, 'Garasi Kantor McDouglas'),
(6, 1172.49, 1341.15, 10.832, 1172.49, 1341.15, 10.832, 1166.41, 1334.72, 10.832, 89.176, 0, 0, 1, 'Police Academy Vehicle Spawn Point'),
(7, -2027.63, -961.576, 32.1874, -2027.63, -961.576, 32.1874, -2035.16, -957.799, 32.1874, 0.027976, 0, 0, 6, 'Uber Office Vehicle Spawn'),
(10, -2042.15, -904.177, 32.1874, -2042.15, -904.177, 32.1874, -2036.1, -895.631, 31.795, 184.292, 0, 0, 6, 'Uber Garage'),
(11, 1029.03, -1357.18, 13.7266, 1029.03, -1357.18, 13.7266, 1025.77, -1353.13, 13.7266, 359.966, 0, 0, 7, 'Loving Donuts - Static Vehicle Spawn'),
(12, 739.311, -1348.4, 13.5098, 739.311, -1348.4, 13.5098, 742.712, -1338.17, 13.5323, 269.053, 0, 0, 8, 'Pewarta Berita Vehicle Spawn'),
(15, -296.662, 1334.4, 54.6986, -296.662, 1334.4, 54.6986, -291.942, 1326.86, 54.5017, 82.0128, 0, 0, 11, '+Arivena Vehicle Spawn Point');

-- --------------------------------------------------------

--
-- Struktur dari tabel `faction_logs`
--

CREATE TABLE `faction_logs` (
  `ID` int(11) NOT NULL,
  `SusName` varchar(128) DEFAULT '',
  `Activity` varchar(128) DEFAULT '',
  `Faction` varchar(34) DEFAULT '',
  `Time` varchar(30) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `faction_vaultlogs`
--

CREATE TABLE `faction_vaultlogs` (
  `ID` int(11) NOT NULL,
  `Name` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '',
  `UCP` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '',
  `Item` varchar(34) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '',
  `Quantity` int(11) DEFAULT 0,
  `Faction` varchar(34) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '',
  `Time` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `families`
--

CREATE TABLE `families` (
  `ID` int(11) NOT NULL,
  `LeaderID` int(11) DEFAULT NULL,
  `LeaderName` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '',
  `Name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '',
  `Money` int(11) NOT NULL DEFAULT 0,
  `DirtyMoney` int(11) NOT NULL DEFAULT 0,
  `VW` int(11) NOT NULL DEFAULT 0,
  `VI` int(11) NOT NULL DEFAULT 0,
  `VX` float NOT NULL DEFAULT 0,
  `VY` float NOT NULL DEFAULT 0,
  `VZ` float NOT NULL DEFAULT 0,
  `DW` int(11) NOT NULL DEFAULT 0,
  `DI` int(11) NOT NULL DEFAULT 0,
  `DX` float NOT NULL DEFAULT 0,
  `DY` float NOT NULL DEFAULT 0,
  `DZ` float NOT NULL DEFAULT 0,
  `GW` int(11) NOT NULL DEFAULT 0,
  `GI` int(11) NOT NULL DEFAULT 0,
  `GX` float NOT NULL DEFAULT 0,
  `GY` float NOT NULL DEFAULT 0,
  `GZ` float NOT NULL DEFAULT 0,
  `GSW` int(11) NOT NULL DEFAULT 0,
  `GSI` int(11) NOT NULL DEFAULT 0,
  `GSX` float NOT NULL DEFAULT 0,
  `GSY` float NOT NULL DEFAULT 0,
  `GSZ` float NOT NULL DEFAULT 0,
  `GSA` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `families`
--

INSERT INTO `families` (`ID`, `LeaderID`, `LeaderName`, `Name`, `Money`, `DirtyMoney`, `VW`, `VI`, `VX`, `VY`, `VZ`, `DW`, `DI`, `DX`, `DY`, `DZ`, `GW`, `GI`, `GX`, `GY`, `GZ`, `GSW`, `GSI`, `GSX`, `GSY`, `GSZ`, `GSA`) VALUES
(0, 3, 'Vhay_Galazkha', 'ADMIN', 80636, 99000, 0, 6, 241.898, 1075.28, 1084.19, 0, 6, 241.876, 1071.58, 1084.19, 0, 0, 2101.73, 2671.15, 10.813, 0, 0, 2101.73, 2671.15, 10.813, 89.7728);

-- --------------------------------------------------------

--
-- Struktur dari tabel `farmplants`
--

CREATE TABLE `farmplants` (
  `id` int(11) NOT NULL,
  `posX` float DEFAULT 0,
  `posY` float DEFAULT 0,
  `posZ` float DEFAULT 0,
  `plantType` int(11) DEFAULT 0,
  `spawnTimer` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `farmplants`
--

INSERT INTO `farmplants` (`id`, `posX`, `posY`, `posZ`, `plantType`, `spawnTimer`) VALUES
(3, -394.91, -1374.05, 23.69, 1, 900);

-- --------------------------------------------------------

--
-- Struktur dari tabel `fcrafts`
--

CREATE TABLE `fcrafts` (
  `id` int(12) NOT NULL DEFAULT -1,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `interior` int(12) DEFAULT 0,
  `world` int(12) DEFAULT 0,
  `type` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `fcrafts`
--

INSERT INTO `fcrafts` (`id`, `posx`, `posy`, `posz`, `interior`, `world`, `type`) VALUES
(2, 1271.59, 776.205, 10.8875, 0, 0, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `fivem_labels`
--

CREATE TABLE `fivem_labels` (
  `ID` int(11) NOT NULL,
  `TogPickup` tinyint(4) NOT NULL DEFAULT 0,
  `PickupID` int(11) DEFAULT 1239,
  `Text` char(128) DEFAULT NULL,
  `PosX` float DEFAULT 0,
  `PosY` float DEFAULT 0,
  `PosZ` float DEFAULT 0,
  `PosA` float DEFAULT 0,
  `PosWorld` int(11) DEFAULT 0,
  `PosInterior` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `fivem_labels`
--

INSERT INTO `fivem_labels` (`ID`, `TogPickup`, `PickupID`, `Text`, `PosX`, `PosY`, `PosZ`, `PosA`, `PosWorld`, `PosInterior`) VALUES
(0, 0, 1239, '/paycheck', 1460.08, -1002.38, 9.05193, -2.3376, 999, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `garbages`
--

CREATE TABLE `garbages` (
  `id` int(11) NOT NULL,
  `garbageModel` int(11) DEFAULT 1236,
  `garbageCapacity` int(11) DEFAULT 0,
  `garbageX` float DEFAULT 0,
  `garbageY` float DEFAULT 0,
  `garbageZ` float DEFAULT 0,
  `garbageRx` float DEFAULT 0,
  `garbageRy` float DEFAULT 0,
  `garbageRz` float DEFAULT 0,
  `garbageInterior` int(11) DEFAULT 0,
  `garbageWorld` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `garbages`
--

INSERT INTO `garbages` (`id`, `garbageModel`, `garbageCapacity`, `garbageX`, `garbageY`, `garbageZ`, `garbageRx`, `garbageRy`, `garbageRz`, `garbageInterior`, `garbageWorld`) VALUES
(0, 1300, 0, 1667.26, -2262.01, -3.38948, 0, 0, 0, 0, 0),
(1, 1300, 0, 781.639, -520.615, 15.6859, 0, 0, 0, 0, 0),
(2, 1300, 0, 671.885, -1279.71, 12.9951, 0, 0, 0, 0, 0),
(3, 1300, 0, -2400.53, 125.444, 35.262, 0, 0, -29.2, 0, 0),
(4, 1300, 0, 2304.37, -1509.35, 26.2609, 0, 0, 0, 0, 0),
(5, 1227, 0, -2502.18, 2276.7, 4.78594, 0, 0, 89.2, 0, 0),
(6, 1236, 0, 947.577, -1383.2, 12.9937, 0, 0, 89.9999, 0, 0),
(7, 1344, 0, 1031.43, -1362.69, 13.3116, 0, 0, -90.1, 0, 0),
(8, 1344, 20, 2155.18, -2150.58, 13.3896, 0.5, 0.099998, -134.2, 0, 0),
(9, 1300, 3, 1040.38, -1339.4, 13.0402, 0, 0, 0, 0, 0),
(10, 1344, 0, 2306.61, -2388.3, 13.3155, 0.699998, 0.6, -135.3, 0, 0),
(11, 1300, 0, 380.695, -1926.8, 7.20008, 0, 0, 0, 0, 0),
(12, 1345, 0, 388.74, -1861.49, 7.58594, 0, 0, -90.1, 0, 0),
(13, 1344, 0, 374.548, -2055.73, 7.82562, 0, 0, 90.1, 0, 0),
(14, 1300, 0, 365.015, -2073.85, 7.20593, 0, 0, 90.5, 0, 0),
(15, 1344, 0, 2206, -2664.36, 13.3469, 0, 0, 178.4, 0, 0),
(16, 1344, 6, 2692.99, -2513.48, 13.1585, -0.8, 1.6, 177.8, 0, 0),
(17, 1345, 0, 1796.26, -1813.49, 13.3251, 0, 0, 0, 0, 0),
(18, 1300, 0, 1086.12, -1698.18, 12.9169, 0, 0, 0, 0, 0),
(19, 1300, 1, 1130.7, -2044.97, 68.3478, 0, 0, -90.1, 0, 0),
(20, 1236, 0, 2692.11, -6855.1, 24.7801, 0, 0, 0, 0, 0),
(21, 1300, 0, 2170.54, -1708.17, 14.6111, 0, 0, 0, 0, 0),
(22, 1344, 5, 1952.49, -1802.35, 13.3269, 0, 0, 89.6001, 0, 0),
(23, 1300, 1, 1547.99, -1007.27, 23.294, 0, 0, 0, 0, 0),
(24, 1236, 2, 1321.88, -883.302, 39.2527, 0, -0.299998, -90.2, 0, 0),
(25, 1345, 0, 2807.26, -1198.37, 25.1051, 0, 0, 0, 0, 0),
(26, 1300, 0, 1687.89, -2283.31, 12.8636, 0, 0, 90.0999, 0, 0),
(27, 1236, 0, -52.2005, 60.2437, 2.74048, 0.9, 0, -17.8, 0, 0),
(28, 1236, 0, -2416.2, 476.936, 29.4781, 0, 0, 24.1, 0, 0),
(29, 1227, 0, 19.6716, -2664.06, 40.3311, 0, 0, -179.9, 0, 0),
(30, 1344, 0, 1238.95, -2032.32, 59.6776, 0, 0, 91.5001, 0, 0),
(31, 1344, 0, -2035.74, -2375.72, 30.415, 0, 0, -46.4, 0, 0),
(32, 1236, 0, 2381.72, -1912.19, 13.2069, 0, 0, 90, 0, 0),
(33, 1227, 0, 687.431, 838.922, -43.1509, 0, 0, -119.4, 0, 0),
(34, 1300, 0, 646.788, -1348.26, 12.9125, -0.399999, 0.799999, 89.4, 0, 0),
(35, 1227, 0, 2278.82, -2370.32, 13.3669, 0, 0, 44.5999, 0, 0),
(36, 1236, 0, 2396.42, -2281.66, 13.1869, 0, 0, 43.9, 0, 0),
(37, 1300, 0, -2062.55, -2560.91, 29.9534, 0.1, 0.499996, 51.8, 0, 0),
(38, 1227, 0, 1885.09, -1888.78, 13.2451, 0, 0, -178.9, 0, 0),
(39, 1344, 0, 1993.86, -2057.46, 13.1792, 0, 0, -88.8, 0, 0),
(40, 1300, 0, -2057.18, -90.2788, 34.6703, 0, 0, 0, 0, 0),
(41, 1344, 0, 2791.05, -1565.93, 10.8848, 0, -0.199999, 90.7, 0, 0),
(42, 1227, 0, 10.1551, 1348.7, 8.95187, 0, 0, 179.7, 0, 0),
(43, 1344, 0, 1286.66, -1297.6, 13.3499, 0, 0, -90.8, 0, 0),
(44, 1300, 0, 2128.82, -1913.91, 12.8928, 0, 0, -89.2, 0, 0),
(45, 1300, 0, 1186.32, -1345.95, 12.921, 0, 0, 0, 0, 0),
(46, 1300, 0, 2440.68, -1786.29, 12.9685, 0, 0, 0, 0, 0),
(47, 1344, 0, -2656.02, 1393.86, 6.88156, 0, 0, 13.3, 0, 0),
(48, 1227, 0, 2615.82, -2182.26, 13.3669, 0, 0, 0, 0, 0),
(49, 1300, 0, 2655.98, -1598.11, 11.9374, 13.3, 0, 0, 0, 0),
(50, 1236, 0, 2692.99, -2427.3, 13.2628, 0, 0, 91.5, 0, 0),
(51, 1300, 0, 2773.71, -2482.03, 12.985, 0, 0, 0, 0, 0),
(52, 1344, 0, -995.898, -700.527, 31.7578, 0, 0, -178.5, 0, 0),
(53, 1344, 0, 312.104, 1144.16, 8.37593, 0, 0, 0, 0, 0),
(54, 1227, 0, 578.38, 1436.62, 10.8806, 0, 0, 179.8, 0, 0),
(55, 1227, 0, 1054.6, 2153.91, 10.6203, 0, 0, -90.4, 0, 0),
(56, 1344, 0, -495.857, -196.882, 78.1646, 0, 0, -89.3, 0, 0),
(57, 1227, 0, 2189, -2282.09, 13.3369, 0, 0, -135.7, 0, 0),
(58, 1344, 0, 2551.09, -1067.06, 68.8522, 0, -2.9, 75.7, 0, 0),
(59, 1300, 0, -2228.17, -2279.78, 30.8697, 0, 0, -40.7, 0, 0),
(60, 1344, 0, -2191.76, -2242.79, 30.5696, 0, 0, -33.7, 0, 0),
(61, 1227, 0, 211.98, -1437.36, 12.941, 0, 0, 136.9, 0, 0),
(62, 1227, 0, 2802.08, -2015.66, 13.3447, 0, 0, -89.7, 0, 0),
(63, 1300, 0, 418.438, -1320.77, 14.2538, 0, 0, -56.6, 0, 0),
(64, 1300, 0, 1620.35, 1835.48, 10.1703, 0, 0, 0, 0, 0),
(65, 1344, 0, 992.661, 2404.31, 10.5349, 0, 0, 179.7, 0, 0),
(66, 1300, 0, 1798.01, -1582.75, 12.8392, 0, 0, 40.6, 0, 0),
(67, 1300, 0, 341.363, -1516.24, 32.7609, 0, 0, 54.4, 0, 0),
(68, 1227, 0, 161.001, -160.349, 1.46812, 0, 0, 0, 0, 0),
(69, 1227, 0, -2480.88, 2295.03, 4.83594, 0, 0, 0, 0, 0),
(70, 1227, 0, 1917.06, -1787.96, 13.1706, 0, 0, 0, 0, 0),
(71, 1300, 0, 283.978, 1827.57, 7.39257, 0, 0, 0, 0, 69),
(72, 1345, 0, 1336.81, -1839.48, 13.2591, 0, 0, 85.8, 0, 0),
(73, 1300, 0, -1462.43, 2589.46, 55.166, 0, 0, 0, 0, 0),
(74, 1300, 0, -284.024, -2168.29, 28.0161, -1.3, 0.3, -65.4, 0, 0),
(75, 1300, 0, 1741.79, -2288.97, 12.8665, 0, 0, 0, 0, 0),
(76, 1227, 0, 2478.59, -1687.59, 13.3378, 0, 0, 173.9, 0, 0),
(77, 1227, 0, -2604.55, 2248.18, 7.97093, 0, 0, -179.6, 0, 0),
(78, 1227, 0, 1540.61, 7.26163, 23.5544, 3.9, 0, 16.6, 0, 0),
(79, 1227, 0, -322.54, 1184.02, 19.5722, 0, 0, 179.7, 0, 0),
(80, 1344, 0, -788.643, 1623.99, 26.9072, 0, 0, 0, 0, 0),
(81, 1300, 0, 2334.31, 8.31888, 25.8444, 0, 0, 90, 0, 0),
(82, 1344, 0, -1645.85, 1315.55, 6.89028, 0, 0, -44.8, 0, 0),
(83, 1236, 0, -1739.96, 58.1925, 3.19469, 0, 0, 90.7, 0, 0),
(84, 1227, 0, 46.7418, 1216.91, 18.8177, 0, 0, -89.7, 0, 0),
(85, 1300, 0, 2075.91, -1639.13, 12.6828, 0, 0, 90, 0, 0),
(86, 1300, 0, 1759.53, -2530.88, 19.6469, 0, 0, 0, 0, 60),
(87, 1345, 0, -845.876, -1911.26, 13.9873, 8.7, 3.8, 45.2, 0, 0),
(88, 1236, 0, 120.863, 1930.29, 18.7079, 0, 0, 0, 0, 0),
(89, 1236, 0, 275.341, 1829.89, 17.2406, 0, 0, -90, 0, 0),
(90, 1227, 0, 265.934, 1989.78, 17.4406, 0, 0, -90, 0, 0),
(91, 1345, 0, 333.29, -1179.43, 76.4048, 0, -1.5, 40.6, 0, 0),
(92, 1236, 0, 584.865, -1494.5, 15.1049, 0, 0, 0, 0, 0),
(93, 1344, 0, -2016.21, 943.181, 45.2253, 0, 0, 89.7, 0, 0),
(94, 1345, 0, 255.205, -161.319, 1.27812, 0, 0, -90, 0, 0),
(95, 1236, 0, -2507.35, 1199.3, 37.0509, 1.3, 1.6, -86.4999, 0, 0),
(96, 1227, 0, -2276.01, 533.847, 34.9169, -0.699999, 0.3, 91.1999, 0, 0),
(97, 1344, 0, -2042.42, 18.2138, 35.0203, 0, 0, -90, 0, 0),
(98, 1344, 0, -2037.47, 166.528, 28.6326, -1.6, -0.099996, -177.9, 0, 0),
(99, 1227, 0, -2495.94, 785.075, 35.0577, 0, -0.099999, 86.9, 0, 0),
(100, 1300, 0, -1980.74, 883.766, 44.5232, 0, 0, 0, 0, 0),
(101, 1300, 0, -2750.25, -314.58, 6.53906, 0, 0, 20, 0, 0),
(102, 1344, 0, -1576.94, 687.417, 6.85749, 0, 0, 0, 0, 0),
(103, 1344, 0, -2077.84, 1436.33, 6.76155, 0, 0, 0, 0, 0),
(104, 1227, 0, -2333.89, 1016.53, 50.6861, 0, 0, 179, 0, 0),
(105, 1344, 0, -2658.15, 145.887, 3.87969, 0, 0, 90, 0, 0),
(106, 1227, 0, -2767.61, 775.232, 52.5831, -0.6, -0.499999, 90.0003, 0, 0),
(107, 1227, 0, -2996.16, 474.21, 4.75406, 0, -0.299999, 90, 0, 0),
(108, 1344, 0, -2408.4, 720.532, 34.8719, 0, 0, 0, 0, 0),
(109, 1227, 0, -2766.31, 83.0878, 6.86962, 0, -0.1, 87.1, 0, 0),
(110, 1344, 0, 182.464, 1185.71, 14.5878, 0, 0, 162, 0, 0),
(111, 1300, 0, -2846.11, 1312.68, 6.40156, 0, 0, 50, 0, 0),
(112, 1345, 0, 1913.02, 2316.88, 10.5803, 0, 0, 89.9, 0, 0),
(113, 1300, 0, 672.29, -624.701, 15.6859, 0, 0, -90, 0, 0),
(114, 1227, 0, -2530.97, -624.557, 132.562, 0, 0, 177.3, 0, 0),
(115, 1227, 0, 2124.04, -1165.5, 23.9733, 0, 0, -90, 0, 0),
(116, 1345, 0, -2624, 178.331, 4.07044, 0, 0, -179.7, 0, 0),
(117, 1227, 0, -149.683, 1133.78, 19.6022, 0, 0, 90.7, 0, 0),
(118, 1227, 0, 567.118, -1296.81, 17.0422, 0, 0, 90, 0, 0),
(119, 1227, 0, 1142.63, -1058.35, 29.3402, 0, -0.099999, 92, 0, 0),
(120, 1344, 0, 1442.76, 2523.69, 10.6103, 0, 0, 0, 0, 0),
(121, 1300, 0, -2176.29, -2424.6, 30.4144, -0.199999, 2.2, -125.7, 0, 0),
(122, 1227, 0, -1677.45, 436.065, 6.97968, 0, 0, 134.6, 0, 0),
(123, 1300, 0, 361.009, -2017.84, 7.20593, 0, 0, 0, 0, 0),
(124, 1344, 0, 2404.46, -1239.63, 23.5825, 0, 0, 91.5, 0, 0),
(125, 1236, 0, 393.701, -2053.04, 7.43594, 0, 0, -89.9632, 0, 0),
(126, 1227, 0, -1834.89, 110.818, 14.9472, 0, 0, 178.2, 0, 0),
(127, 1300, 0, 622.312, -1278.09, 16.0537, 0, 0, 4.1, 0, 0),
(128, 1300, 0, 500.676, -1293.7, 15.2019, 0, 0, 34.3, 0, 0),
(129, 1345, 0, -2638.06, 346.113, 4.08932, 0, 0, 0, 0, 0),
(130, 1227, 0, 948.053, -671.056, 120.581, 0, 0, -150, 0, 0),
(131, 1300, 0, -2020.43, -755.513, 31.4719, 0, 0, 0, 0, 0),
(132, 1227, 0, 2304.25, -1087.08, 48.1779, 0, 2.9, 168.5, 0, 0),
(133, 1345, 0, -2115.35, -392.377, 34.9359, 0, 0, -120, 0, 0),
(134, 1227, 0, -2631.1, -5.11433, 5.98281, 0, 0, 90.2, 0, 0),
(135, 1300, 0, -2281.47, -253.84, 42.271, 0, 0, -80, 0, 0),
(136, 1344, 0, 1553.73, 2716.61, 10.6003, 0, 0, -90.2, 0, 0),
(137, 1300, 0, 1547.21, -1269.25, 16.8062, 0, 0, -50, 0, 0),
(138, 1300, 0, -2705.98, 400.097, 3.69718, 0, 0, 0, 0, 0),
(139, 1300, 0, -2629.85, -274.931, 6.87031, 0, 0, -10, 0, 0),
(140, 1227, 0, -2423.85, 957.683, 45.1269, 0, 0, 0, 0, 0),
(141, 1344, 0, -2930.29, 447.422, 4.61406, 0, 0, 90, 0, 0),
(142, 1300, 0, 2480.07, -2580.57, 13.4829, 0, 0, 0, 0, 0),
(143, 1300, 0, -2075.78, 6.89608, 34.5804, 0, 0, 0, 0, 0),
(144, 1227, 0, 2128.04, -1764.11, 13.3625, 0, 0, -90, 0, 0),
(145, 1227, 0, 2237.18, -1150.06, 25.6969, 0, 0, -180, 0, 0),
(146, 1345, 0, -1640.15, 673.313, 6.7875, 0, 0, 90, 0, 0),
(147, 1227, 0, -2299.31, -116.605, 35.1103, 0, 0, 0, 0, 0),
(148, 1227, 0, 1535.22, 2811.55, 10.5803, 0, 0, 89.5, 0, 0),
(149, 1227, 0, 2798.57, -1097.26, 30.6187, 0, 0, 180, 0, 0),
(150, 1227, 0, -2258.13, 2377.96, 4.80948, 0, 0, -50, 0, 0),
(151, 1227, 0, -2688.1, 238.999, 4.07593, 0, 0, 0, 0, 0),
(152, 1344, 0, -269.297, 2670.47, 62.368, 0, 0, -180, 0, 0),
(153, 1345, 0, -2673.04, 238.931, 4.05593, 0, 0, 0, 0, 0),
(154, 1344, 0, -352.411, 1513.87, 75.2625, 0, 0, 90, 0, 0),
(155, 1300, 0, 1073.55, -1053.84, 30.4506, 13.6, -0.299999, 0, 0, 0),
(156, 1300, 0, -2672.95, 376.126, 3.71719, 0, 0, 0, 0, 0),
(157, 1227, 0, -2701.63, 994.867, 55.2687, 0, 2.4, -178.8, 0, 0),
(158, 1300, 0, -2706.66, 346.913, 3.76406, 0, 0, 0, 0, 0),
(159, 1345, 0, -2445.61, 2251.93, 4.67186, 0, 0, 0, 0, 0),
(160, 1300, 0, -2739.87, 376.149, 3.72718, 0, 0, 0, 0, 0),
(161, 1300, 0, 886.712, -862.026, 77.8565, 0, 10, -60, 0, 0),
(162, 1236, 0, -2614.33, 598.664, 14.0531, 0, 0, 0, 0, 0),
(163, 1344, 0, -2406.06, 2357.82, 4.8592, 0, 0, 0, 0, 0),
(164, 1300, 0, 1089.29, -649.317, 113.007, -0.499999, 0, -91.8, 0, 0),
(165, 1227, 0, -2296.7, 2234.34, 4.83203, -0.099999, 0.099999, 89.9, 0, 0),
(166, 1227, 0, -2239.45, 2356.41, 4.82167, 0.799998, 0, -48.5, 0, 0),
(167, 1227, 0, 2715.81, -1878.42, 9.33523, 0, 0, 170, 0, 0),
(168, 1227, 0, 1520.8, -864.607, 63.7544, 0, 10, -110, 0, 0),
(169, 1236, 0, -2337.75, 2475.14, 4.60219, 0, -0.099999, -134, 0, 0),
(170, 1345, 0, -2521.32, 2521.47, 18.6104, 0, 0, 88.8999, 0, 0),
(171, 1345, 0, -2521.46, 2504.32, 18.6223, 0, 0, 90.5001, 0, 0),
(172, 1227, 0, 1059.16, -1110.52, 24.1889, 0, 0, -180, 0, 0),
(173, 1345, 0, -1911.06, 868.311, 34.8941, 0, 0, 89.7999, 0, 0),
(174, 1300, 0, -2543.07, 2388.01, 14.2249, 0, 0, -131.8, 0, 0),
(175, 1227, 0, 474.908, -1762.26, 5.32159, 0, 0, 0, 0, 0),
(176, 1345, 0, -2441.68, 2251.94, 4.71158, 0, 0, 0, 0, 0),
(177, 1227, 0, -2281.7, 2333.52, 4.79402, 0, 0, 88.9999, 0, 0),
(178, 1300, 0, 803.338, -1485.32, 12.844, 0, 0, -10, 0, 0),
(179, 1227, 0, -2455.95, 2314.81, 4.80437, 0, 0, -89.8997, 0, 0),
(180, 1345, 0, -2462.69, 2517.26, 16.5932, 0, 0, 95.3999, 0, 0),
(181, 1227, 0, 853.812, -1671.07, 13.3533, 0, 0, 90, 0, 0),
(182, 1300, 0, -373.706, 2235.59, 41.8844, 0, 0, -162.8, 0, 0),
(183, 1227, 0, 1769.14, -2123.98, 13.3469, 0, 0, -90, 0, 0),
(184, 1345, 0, -783.449, 1556.93, 26.8672, 0, 0, -89.0999, 0, 0),
(185, 1227, 0, 2037.46, -1624.91, 13.3469, 0, 0, 90, 0, 0),
(186, 1227, 0, -866.94, 1534.02, 22.4199, 0, 0, -87.8999, 0, 0),
(187, 1300, 0, 1918.76, 2317.7, 10.1903, 0, 0, 0, 0, 0),
(188, 1236, 0, -828.057, 1420.31, 13.6085, 0, 0, -178.9, 0, 0),
(189, 1345, 0, 1904.77, 2287.6, 10.5703, 0, 0, 179, 0, 0),
(190, 1300, 0, 1913.14, 703.289, 10.5128, 0, 0, 0, 0, 0),
(191, 1227, 0, 1709.66, 1049.29, 10.6203, 0, 0, -180, 0, 0),
(192, 1300, 0, -753.832, 1598.11, 26.4972, 0, 0, -27.4, 0, 0),
(193, 1227, 0, 2123.69, 962.286, 10.6303, 0, 0, 0, 0, 0),
(194, 1227, 0, 2130.3, 962.262, 10.653, 0, 0, 0, 0, 0),
(195, 1236, 0, 716.947, -1426.24, 13.184, 0, 0, -1.6, 0, 0),
(196, 1227, 0, -305.66, 1781.58, 42.6413, 0, 0, 0, 0, 0),
(197, 1227, 0, 2108.22, 2005.92, 10.7203, 0, 0, 90, 0, 0),
(198, 1300, 0, 477.654, -1518.59, 19.7112, 0, 0, -80, 0, 0),
(199, 1227, 0, 661.492, 1698.95, 7.0175, 0, 0, 39.2999, 0, 0),
(200, 1227, 0, 2123.27, 1403.81, 10.9328, 0, 0, 0, 0, 0),
(201, 1227, 0, 794.23, 1683.42, 5.11125, 0, 0, 86.3, 0, 0),
(202, 1227, 0, 2320.53, 2784.42, 10.6203, 0, 0, 170, 0, 0),
(203, 1300, 0, 852.459, -2046.11, 12.1672, 0, 0, 90, 0, 0),
(204, 1300, 0, 1000.08, -1858.61, 12.1203, 0, 0, -50, 0, 0),
(205, 1300, 0, 2300.92, 1519.08, 10.3844, 0, 0, 0, 0, 0),
(206, 1227, 0, 774.683, 1883.27, 4.82274, 0, 0, -175.2, 0, 0),
(207, 1227, 0, 685.07, 1968.1, 5.35656, 0.8, 0, 0.1, 0, 0),
(208, 1227, 0, 2513.12, 1444.14, 10.7062, 0, 0, -180, 0, 0),
(209, 1227, 0, 2268.91, 1391.88, 10.7203, 0, 0, 90, 0, 0),
(210, 1345, 0, 421.716, 2531.95, 16.3746, 0, 0, 0, 0, 0),
(211, 1236, 0, 2641.98, 1999.13, 10.5469, 0, 0, 0, 0, 0),
(212, 1227, 0, 1016.72, 1979.46, 10.6203, 0, 0, -90, 0, 0),
(213, 1227, 0, -219.983, 2725.08, 62.4775, 0, 0, 178.7, 0, 0),
(214, 1227, 0, 1104.64, 2062.35, 10.6203, 0, 0, 0, 0, 0),
(215, 1345, 0, -253.643, 2598.27, 62.6082, 0, 0, -90.3998, 0, 0),
(216, 1345, 0, 588.633, 836.688, -42.6907, -0.499999, 0.9, -46.2, 0, 0),
(217, 1300, 0, -740.06, 2748.9, 46.6347, 0, 0, 0, 0, 0),
(218, 1227, 0, -284.126, 2686.61, 62.5222, 0, 0, 91.6999, 0, 0),
(219, 1300, 0, 1077.27, 1722.05, 10.1203, 0, 0, 0, 0, 0),
(220, 1227, 0, -1438.76, 2623.37, 55.6359, 0, 0, 180, 0, 0),
(221, 1345, 0, 2798.45, 1326.85, 10.8018, 0.699999, 1.2, 90.8001, 0, 0),
(222, 1227, 0, -332.333, 2676.53, 62.7873, 0, 0, -93.2999, 0, 0),
(223, 1300, 0, -1584.3, 2658.49, 55.2974, 0, 0, 0, 0, 0),
(224, 1236, 0, 2254.1, 1804.47, 10.5603, 0, 0, 0, 0, 0),
(225, 1227, 0, -1529.13, 2515.51, 55.6875, 0, 0, -93.3001, 0, 0),
(226, 1236, 0, 1936.17, 949.882, 10.4203, 0, 0, -90, 0, 0),
(227, 1227, 0, -1281.05, 2718.34, 49.8625, 0, 0, -150.5, 0, 0),
(228, 1344, 0, 2407.92, 1020.06, 10.5203, 0, 0, -180, 0, 0),
(229, 1300, 0, 2480.01, 1413.75, 10.1203, 0, 0, 90, 0, 0),
(230, 1227, 0, -1215.12, 1841.08, 41.5788, 0, 0, 133.6, 0, 0),
(231, 1227, 0, 2749.75, -2384.51, 13.4303, 0.300058, -0.799977, 1.2916, 0, 0),
(232, 1300, 0, 2023.38, 1538.65, 10.1204, 0, 0, -100, 0, 0),
(233, 1236, 0, 1019.28, 2334.03, 10.4203, 0, 0, 0, 0, 0),
(234, 1344, 0, 2713.27, -1220.04, 64.4614, -0.899999, -11.2, 88.3, 0, 0),
(235, 1227, 0, 1482.19, 2682.53, 10.6803, 0, 0, 0, 0, 0),
(236, 1227, 0, 1569.24, 2605.34, 10.6203, 0, 0, 92.8, 0, 0),
(237, 1227, 0, 1569.37, 2620.25, 10.6403, 0, 0, 89.8, 0, 0),
(238, 1300, 0, 1876.75, 2616.83, 10.2003, 0, 0, 0, 0, 0),
(239, 1300, 0, 1830.76, 2615.93, 10.2603, 0, 0, 0, 0, 0),
(241, 1344, 0, 2300.27, 598.175, 7.48125, 0, 0, 0, 0, 0),
(242, 1227, 0, 2157.86, 2728.97, 11.0403, 0, 0, 91.8999, 0, 0),
(243, 1227, 0, 2158.92, 2810.18, 10.7303, 0, 0, -88.0999, 0, 0),
(244, 1300, 0, 2620.7, 2328.39, 10.1703, 0, 0, 0, 0, 0),
(245, 1300, 0, 2294.04, 548.171, 1.09687, 0, 0, 0, 0, 0),
(246, 1345, 0, 2639.86, 2257.82, 10.7703, 0, 0, -89.6, 0, 0),
(247, 1227, 0, 2508.81, 2793.23, 10.6203, 0, 0, 90, 0, 0),
(248, 1227, 0, 2409.67, 2759.96, 10.7203, 0, 0, 0, 0, 0),
(249, 1300, 0, 2359.88, 548.138, 1.09687, 0, 0, 0, 0, 0),
(250, 1344, 0, 832.685, -520.788, 16.0659, 0, 0, -43.6, 0, 0),
(251, 1300, 0, 2800.23, 2304.35, 10.4625, 0, 0, 0, 0, 0),
(252, 1227, 0, 2515.59, 2312.55, 10.6203, 0, 0, 89.4, 0, 0),
(253, 1227, 0, 2542.85, 2027.01, 10.6803, 0, 0, -179.2, 0, 0),
(254, 1227, 0, 2794.11, 2012.48, 10.6714, 0, 0, -94.6, 0, 0),
(255, 1227, 0, 2494.29, 1604.06, 10.7203, 0, 0, 180, 0, 0),
(256, 1344, 0, 2037.24, 2135.66, 10.5203, 0, 0, -90, 0, 0),
(257, 1345, 0, 693.255, -450.457, 16.0759, 0, 0, 91.9, 0, 0),
(258, 1227, 0, 1520.21, -1014.64, 23.8452, 0, 0, 84.8, 0, 0),
(259, 1300, 0, 1718.08, 1313.06, 10.2125, 0, 0, 0, 0, 0),
(260, 1345, 0, 1789.65, -1813.55, 13.3109, 0, 0, -179.2, 0, 0),
(261, 1227, 0, 2276.23, -74.5284, 26.3571, 0, 0, 92, 0, 0),
(262, 1345, 0, 2423.19, 88.0576, 26.24, 0, 0, -90.2, 0, 0),
(263, 1227, 0, 2233.27, 78.6042, 26.3044, 0, 0, -92.6, 0, 0),
(264, 1227, 0, 2105.97, 2203.93, 10.6403, 0, 0, -179.6, 0, 0),
(265, 1227, 0, 1918.59, 2160.47, 10.7203, 0, 0, 90, 0, 0),
(266, 1300, 0, 2138.36, 1447.78, 10.1703, 0, 0, 0, 0, 0),
(267, 1300, 0, 2138.83, 1519.09, 10.2303, 0, 0, 0, 0, 0),
(268, 1300, 0, 1191.41, -914.51, 42.6519, 0, 0, 10.2, 0, 0),
(269, 1344, 0, 1973.05, 693.81, 10.6403, 0, 0, -176.7, 0, 0),
(270, 1344, 0, 1972.24, 712.51, 10.6303, 0, 0, 0, 0, 0),
(271, 1300, 0, 2597.83, 2099.77, 10.2214, 0, 0, -90, 0, 0),
(272, 1227, 0, 1915.43, -1416.77, 13.4303, 0, 0, -173.4, 0, 0),
(273, 1300, 0, 1978.8, -1175.34, 19.3734, 0, 0, 0, 0, 0),
(274, 1227, 0, 2565.97, 2012.29, 10.6276, 0, 0, -180, 0, 0),
(275, 1227, 0, 866.793, -1371.85, 13.3669, 0, 0, -87.5, 0, 0),
(276, 1300, 0, 2299.91, 1905.22, 10.3766, 0, 0, 0, 0, 0),
(277, 1300, 0, -206.298, 1129.59, 19.0925, 0, 0, -89.5999, 0, 0),
(278, 1227, 0, 2070.45, -1999.32, 13.3369, 0, 0, -178.8, 0, 0),
(279, 1300, 0, 2495.01, 1963.8, 10.2203, 0, 0, 0, 0, 0),
(280, 1344, 0, 755.368, -1544.56, 13.3364, 0, 0, 177.7, 0, 0),
(281, 1300, 0, 2435.58, 1702.4, 10.2203, 0, 0, 0, 0, 0),
(282, 1300, 0, 1377.02, 2600.05, 10.2203, 0, 0, -110, 0, 0),
(283, 1345, 0, 2843.23, 891.333, 10.5278, 0, 0, 3.9, 0, 0),
(284, 1300, 0, 1702.99, 1442.89, 10.2087, 0, 0, 0, 0, 0),
(285, 1227, 0, 1025.81, -929.789, 42.0598, 0, 2, -169.9, 0, 0),
(286, 1300, 0, 1556.44, 1863.95, 10.2203, 0, 0, 0, 0, 0),
(287, 1227, 0, -545.611, -506.144, 25.3634, 0, 0, -177.3, 0, 0),
(288, 1300, 0, 1478.62, 1986.16, 10.4234, 0, 0, 0, 0, 0),
(289, 1236, 0, 879.618, -790.855, 100.827, 0.499994, -1.2, -66.9, 0, 0),
(290, 1227, 0, 2171.28, -1786.73, 13.3618, 0, 0, 0, 0, 0),
(291, 1344, 0, 1476.51, 2700.75, 10.6203, 0, 0, -90, 0, 0),
(292, 1227, 0, 2650.73, 1081.29, 10.7003, 0, 0, -175.8, 0, 0),
(293, 1300, 0, 1817.41, 2722.6, 10.2203, 0, 0, 0, 0, 0),
(294, 1227, 0, 2579.33, 1219.86, 10.7703, 0, 0, -88.6, 0, 0),
(295, 1227, 0, 2535.43, 1724.4, 10.6803, 0, 0, -178.5, 0, 0),
(296, 1300, 0, 2517.97, 1267.34, 10.2203, 0, 0, 0, 0, 0),
(297, 1344, 0, 2425.27, 1782.46, 10.6203, 0, 0, 0, 0, 0),
(298, 1227, 0, 2101.47, 2139.56, 10.8203, 0, 0.499999, -178.9, 0, 0),
(299, 1300, 0, 2537.93, 2149.91, 10.2203, 0, 0, 0, 0, 0),
(300, 1344, 0, 2513.44, 2403.81, 10.6203, 0, 0, -180, 0, 0),
(301, 1345, 0, -551.489, 2577.36, 53.7458, 0, 0, -90.3, 0, 0),
(302, 1344, 0, 2192.73, 2443.81, 10.6203, 0, 0, 180, 0, 0),
(303, 1227, 0, -906.013, 2688.03, 42.2203, 0, 0, 136.8, 0, 0),
(304, 1300, 0, -143.286, 1078.64, 19.0822, 0, 0, 0, 0, 0),
(305, 1300, 0, 1632.01, 1863.84, 10.2203, 0, 0, 0, 0, 0),
(306, 1345, 0, 1277.94, 195.146, 19.4492, 0, 0, -114.3, 0, 0),
(307, 1345, 0, 1349.84, 476.788, 19.9267, 0, 0, 64.5, 0, 0),
(308, 1227, 0, 2254.72, 80.2769, 26.3844, 0, 0, 90, 0, 0),
(309, 1227, 0, -286.873, 1307.67, 53.755, -1.3, 1.5, -97.8, 0, 0),
(310, 1300, 0, 2333.9, 204.928, 25.8941, 0, 0, -90, 0, 0),
(311, 1300, 0, 1590.69, 1835.64, 10.1703, 0, 0, 0, 0, 0),
(312, 1344, 0, 2703.17, -1966.3, 13.4469, 0, 0, -90, 0, 0),
(313, 1300, 0, -208.945, 1008.9, 19.1422, 0, 0, 0, 0, 0),
(314, 1344, 0, -222.885, 1229.33, 19.5422, 0, 0, 0, 0, 0),
(315, 1227, 0, -2433.85, 125.616, 34.9919, 0, 0.899999, 178.4, 0, 0),
(316, 1227, 0, 666.042, -578.355, 16.1159, 0, 0, 4.09999, 0, 0),
(317, 1227, 0, 836.14, -605.162, 16.1559, 0, 0, -90.2999, 0, 0),
(318, 1345, 0, 2423.16, 95.7711, 26.2266, 0.599999, 0.199999, -87.5, 0, 0),
(319, 1227, 0, -1307.05, 2714.29, 49.7825, 0, 0, -150.1, 0, 0),
(320, 1300, 0, -2417.87, -595.78, 132.109, 0, 0, -147.9, 0, 0),
(321, 1227, 0, -1943.42, 2365.23, 49.2909, 0, 0, 21.8, 0, 0),
(322, 1227, 0, 1635.75, -2285.74, 13.3241, 0, 0, 91.4, 0, 0),
(323, 1345, 0, 2754.41, -1096.53, 69.287, -2.1, 0, 95.5, 0, 0),
(324, 1227, 0, 2375.92, -1417.66, 23.8526, 0, 0, 89.5001, 0, 0),
(325, 1300, 0, -2000.99, -916.995, 32.0484, 0, 0, 0, 0, 0),
(326, 1300, 0, 2536.71, 1024.14, 10.1803, 0, 0, 0, 0, 0),
(327, 1344, 0, 1722.22, -1472.44, 13.2769, 0, 0, -89.1, 0, 0),
(328, 1300, 0, 1377.6, -1840.41, 12.9683, 0, 0, -89, 0, 0),
(329, 1227, 0, 1205.43, -1449.29, 13.2035, 0, 0, -91.3, 0, 0),
(330, 1345, 0, 894.197, 1917.62, 10.5703, 0, 0, 179.1, 0, 0),
(331, 1345, 0, 2215.53, 2738.34, 10.5603, 0, 0, 0, 0, 0),
(332, 1227, 0, 2210.04, 2750.52, 10.6303, 0, 0, -179.6, 0, 0),
(333, 1300, 0, 2479.81, -1541.89, 23.6322, 0, 0, 0, 0, 0),
(334, 1236, 0, 2490.92, 733.884, 10.5003, 0, 0, 0, 0, 0),
(335, 1300, 0, 2667.18, 1225.67, 10.1803, 0, 0, 90.1, 0, 0),
(336, 1300, 0, -2561.7, 985.718, 77.5734, 0, 0, 0, 0, 0),
(337, 1344, 0, 2001.95, 2094.8, 10.5903, 0, 0, 90.3, 0, 0),
(338, 1300, 0, 1501.78, -686.325, 94.0901, 0, 0, 0, 0, 0),
(339, 1300, 0, -2508.69, 2370.18, 4.32816, 0, 0, 0, 0, 0),
(340, 1344, 0, 2550.02, 1661.9, -14.7482, 0, 0, -86, 244, 123),
(341, 1227, 0, 955.099, -1443.93, 13.3697, 0, 0, 90.3, 0, 0),
(342, 1300, 0, 2488.52, 1676.59, -24.4515, 0, 0, 0, 244, 123),
(343, 1300, 0, 1951.73, -2470.67, -22.3431, 0, 0, 0, 0, 543),
(344, 1300, 0, 1969.43, -2455.31, -15.7832, 0, 0, 0, 0, 543),
(345, 1344, 0, 600.727, 1511.89, 7.63165, 0, -0.899999, 175.7, 0, 0),
(346, 1300, 0, 1004.81, 1068.16, 10.4403, 0, 0, 0, 0, 0),
(347, 1344, 0, 2525.6, -1493.78, 23.78, 0, 0, 0, 0, 0),
(348, 1236, 0, 1446.44, 1922.77, 10.2583, -0.299999, 1, -87.9999, 0, 0),
(349, 1300, 0, 1497.66, 1802.19, 17.8971, 0, 0, 0, 18, 18),
(350, 1300, 0, 1267.81, -820.041, 83.4806, 0, 0, 0, 0, 0),
(351, 1300, 0, 2307.81, -1792.22, 12.6717, 0, 0, 0, 0, 0),
(352, 1344, 0, -2174.32, 631.893, 49.1375, 0, 0, 179, 0, 0),
(353, 1236, 0, 1437.59, 427.672, 19.8226, 0, 0, 64.7, 0, 0),
(354, 1236, 0, 2282.52, 22.6956, 26.0844, 0, 0, 90, 0, 0),
(355, 1236, 0, 120.444, -108.096, 1.22812, 0, 0, 0, 0, 0),
(356, 1344, 0, 694.657, -666.093, 16.1007, 0, 0, 0, 0, 0),
(357, 1227, 0, 2846.52, -1339.85, 10.8707, 0, 0, 179.9, 0, 0),
(358, 1300, 0, 1057.41, -640.665, 119.517, 0, 0, -171.874, 0, 0),
(359, 1300, 0, 708.932, -1689.91, 2.84748, 0, 0, -90, 0, 0),
(360, 1300, 0, 708.974, -1656.16, 2.8375, 0, 0, -90, 0, 0),
(361, 1344, 0, 590.743, 1639.91, 6.74219, 0, 0, 121, 0, 0),
(362, 1236, 0, 947.731, 1744.34, 8.53141, -2.3, 1.4, -89.3, 0, 0),
(363, 1227, 0, -72.644, -1186.01, 1.47, 0, 0, -21.7, 0, 0),
(364, 1300, 0, -1977.04, 191.333, 27.0108, 0, 0, 0, 0, 0),
(365, 1344, 0, 1605.62, 2242.08, 10.6003, 0, 0, 0, 0, 0),
(366, 1345, 0, 270.304, -1226.35, 74.3701, 0, -4.3, 35.1, 0, 0),
(367, 1300, 0, 2022.74, -1271.4, 23.3044, 0, 0, -91.2, 0, 0),
(368, 1227, 0, 1812.36, -1902.14, 13.5736, 0, 0, 90.2, 0, 0),
(369, 1227, 0, 1658.49, -1692.64, 20.2634, 0, 0, 0, 0, 0),
(370, 1300, 0, 1961.23, -1575.11, 12.9447, -0.599999, 0, 41.2, 0, 0),
(371, 1344, 0, 896.414, 2035.1, 10.5503, 0, 0, 0, 0, 0),
(372, 1300, 0, 1123.83, 1278.59, 10.212, 0, 0, 0, 0, 0),
(373, 1227, 0, 2449.96, -1998.6, 13.3969, 0, 0, 0, 0, 0),
(374, 1227, 0, -382.631, -1430.74, 25.5366, 0, 0, 88, 0, 0),
(375, 1300, 0, 1123.9, 1343.11, 10.182, 0, 0, 0, 0, 0),
(376, 1344, 0, -2543.64, 219.417, 10.8237, 0, 0, 58.4, 0, 0),
(377, 1344, 0, 1615.43, -1780.63, 13.2923, -0.099999, 0, -89.8001, 0, 0),
(378, 1300, 0, -2195.98, -2384.34, 29.975, 0, 0, 49.5, 0, 0),
(379, 1300, 0, 2021.63, -1401.8, 16.5487, 0, 0, 0, 0, 0),
(380, 1300, 0, 2027.22, 1936.13, 11.6745, 0, 0, 0, 0, 0),
(381, 1300, 0, -1702.05, 995.027, 17.284, 0, 0, 0, 0, 0),
(382, 1300, 0, 1083.86, 2377.2, 10.1103, 0, 0, 0, 0, 0),
(383, 1236, 0, 1334.22, 710.448, 10.5403, 0, 0, 0, 0, 0),
(384, 1300, 0, -2414.44, 309.433, 34.522, 0, 0, -24.2, 0, 0),
(385, 1300, 0, 377.682, 177.653, 1007.75, 0, 0, 0, 3, 115),
(386, 1300, 0, 1966.02, 984.706, 993.686, 2.7, -0.4, 98, 10, 108),
(387, 1300, 0, 1994.91, -1126.31, 24.9137, 0, 0, 0, 0, 0),
(388, 1300, 0, 1966.07, 984.978, 993.758, -1.2, -1.9, 100.1, 10, 116),
(389, 1236, 0, -2139.66, -224.776, 34.9603, 0, 0, 0, 0, 0),
(390, 1300, 0, 1466.82, -1716.2, 13.3669, 0, 0, 0, 0, 0),
(391, 1300, 0, -2069.64, 755.485, 71.2405, 0, 0, 0, 0, 0),
(392, 1236, 0, -2620.27, 1418.12, 6.74375, 0, 0, 104.4, 0, 0),
(393, 1300, 0, 2142.92, -1187.41, 23.3903, 0, 0, -93, 0, 0),
(394, 1227, 0, 2499.77, 923.525, 10.548, 0, 0, 179.9, 0, 0),
(395, 1300, 0, 2304.41, -1917.25, 12.861, 0, 0, 89.7, 0, 0),
(396, 1300, 0, 377.093, 167.216, 1007.75, 0, 0, -89.6, 3, 143627),
(397, 1300, 0, -2330.98, 2338.3, 4.31436, 0, 0, 0, 0, 0),
(398, 1344, 0, -2380.68, 2355.61, 4.74209, 0, -0.399999, 5.5, 0, 0),
(399, 1227, 0, -1889.66, -194.247, 18.1784, 0, 0, 90.2, 0, 0),
(400, 1227, 0, 2114.5, -1370.87, 23.6985, 0, 0, -89.9999, 0, 0),
(401, 1300, 0, 2585.46, -1037.28, 68.9081, 0, 0, 0, 0, 0),
(402, 1236, 0, 673.124, -1860.79, 5.06371, 0, 0, 0, 0, 0),
(403, 1300, 0, 1081.65, 2122.71, 10.1503, 0, 0, 88.2, 0, 0),
(404, 1300, 0, 546.333, -1495.88, 13.8352, 0, 0, 89.6, 0, 0),
(405, 1227, 0, -469.632, -181.076, 77.9022, 0, 0, 89.1, 0, 0),
(406, 1227, 0, 1036.76, 1351.51, 10.5703, 0, 0, -87.8, 0, 0),
(407, 1300, 0, 244.269, -1355.78, 52.4394, 0, 0, -54.4, 0, 0),
(408, 1227, 0, 628.083, 1366.63, 11.7049, 0, 0, 179.1, 0, 0),
(409, 1344, 0, -1082.08, -642.107, 31.7678, 0, 0, 0, 0, 0),
(410, 1344, 0, -2114.64, -2419.39, 30.365, 0, 0, 51.8, 0, 0),
(411, 1344, 0, 1947.5, 159.762, 36.7978, 0, 0, 73.3, 0, 0),
(412, 1300, 0, 376.99, 178.839, 1007.73, 0, 0, -91.4, 3, 143627),
(413, 1227, 0, -1427.43, -1506.19, 101.469, 0, 0, 1.4, 0, 0),
(414, 1300, 0, 412.617, -1943.34, 7.18119, 0, 0, 0, 0, 0),
(415, 1344, 0, -1467.41, -1596.75, 101.368, 0, 0, 97.4, 0, 0),
(416, 1300, 0, 1122.4, -1200.53, 17.0339, 0, 0, -89, 0, 0),
(417, 1300, 0, 1356.72, -625.015, 108.433, 0, 0, -160, 0, 0),
(418, 1227, 0, 2320.39, -1246.06, 27.7766, 0, 0, -90, 0, 145),
(419, 1227, 0, 2320.39, -1245.93, 27.7766, 0, 0, -90, 0, 0),
(420, 1300, 0, 2206.14, 1596.4, 1004.06, 0, 0, 60, 1, 2329),
(421, 1227, 0, -2176.79, 603.62, 34.8641, 0, 0, -90, 0, 0),
(422, 1300, 0, 2553.54, -1291.53, 1060.38, 0, 0, 90, 2, 0),
(423, 1300, 0, -2230, -2480.61, 30.3412, 0, 0, 50, 0, 0),
(424, 1344, 0, -8.4425, -267.588, 5.12969, 0, 0, 90, 0, 0),
(425, 1344, 0, 1243.25, 213.828, 19.1547, 0, 0, -110, 0, 0),
(427, 1300, 0, 2141.15, 2361.25, 10.1203, 0, 0, 0, 0, 0),
(428, 1300, 0, -2668.64, 910.784, 79.0296, 0, 0, 0, 0, 0),
(429, 1300, 0, 160.705, -1767.97, 6.16687, 0, 0, -90.8, 0, 0),
(430, 1300, 0, 1740.18, -1623.83, 19.623, 0, 0, 0, 0, 0),
(431, 1300, 0, 1557.09, 2743.87, 10.2203, 0, 0, 0, 0, 0),
(432, 1300, 0, 1930.27, 1359.9, 9.29875, 0, 0, 88.3, 0, 0),
(433, 1227, 0, 2460.43, -1306.26, 23.85, 0, 0, -89.5001, 0, 0),
(434, 1227, 0, 1461.8, 2807.62, 10.6103, 0, 0, 0, 0, 0),
(435, 1300, 0, 1868.39, -2035.47, 12.7469, 0, 0, -90, 0, 0),
(436, 1300, 0, 677.225, 1930.81, 4.89478, 0, 0, 0, 0, 0),
(437, 1300, 0, -686.988, 925.866, 11.4828, 0, 0, 0, 0, 0),
(438, 1300, 0, 857.146, -1523.81, 12.9547, 0, 0, -90, 0, 0),
(439, 1227, 0, 2192.61, -2515.56, 13.3469, 0, 0, -180, 0, 0),
(440, 1236, 0, 2211.73, -2534.02, 13.1369, 0, 0, 0, 0, 0),
(441, 1344, 0, 2186.62, -2513.67, 13.2969, 0, 0, 86.5, 0, 0),
(442, 1344, 0, 2186.76, -2509.64, 13.3369, 0, 0, 90.1, 0, 0),
(443, 1344, 0, 2243.24, -2513.09, 13.3269, 0, 0, -90.7, 0, 0),
(444, 1344, 0, 2243.27, -2509.64, 13.3369, 0, 0, -91.1, 0, 0),
(445, 1344, 0, -31.5988, 1352.92, 8.90188, 0, 0, 90.7, 0, 0),
(446, 1344, 0, 1992.2, -1701.42, 13.3269, 0, 0, 90.1, 0, 0),
(447, 1300, 0, 843.523, -900.122, 68.1035, 0, 0, -34.7, 0, 0),
(448, 1344, 0, 1628.74, -1747.69, 13.3369, 0, 0, 115.7, 0, 0),
(449, 1227, 0, 1620.59, -1741.01, 13.3369, 0, 0, -179.4, 0, 0),
(450, 1236, 0, -1980.98, 151.193, 27.2675, 0, 0, 90.1999, 0, 0),
(451, 1227, 0, 289.992, 1141.83, 8.31669, 0, 0, -92.4, 0, 0),
(452, 1344, 0, 254.159, 1101.29, 12.1534, 0, 0, 177.8, 0, 0),
(453, 1344, 0, 243.44, 1117.76, 11.511, 0, 0, 0, 0, 0),
(454, 1344, 0, 263.677, 1118.91, 10.5549, 0, 0, 8.79999, 0, 0),
(455, 1344, 0, -2513.53, -16.1981, 25.3472, 0, 0, 0, 0, 0),
(456, 1227, 0, -2609.63, 167.241, 4.04812, 0, 0, 0, 0, 0),
(457, 1300, 0, -1883.16, 817.276, 34.4918, 0, 0, 35.2, 0, 0),
(458, 1227, 0, 2804.44, -1113.9, 30.4998, 0, 0, 176.7, 0, 0),
(459, 1227, 0, 2804.33, -1060.89, 30.4603, 0, 0, 0, 0, 0),
(460, 1344, 0, 2798.03, -1078.04, 30.4598, 0, 0, 0, 0, 0),
(461, 1300, 0, 2808.97, -1099.1, 30.0787, 0, 0, 0, 0, 0),
(462, 1300, 0, 2808.88, -1080.08, 30.0626, 0, 0, 0, 0, 0),
(463, 1344, 0, -1716.37, -85.6636, 3.25469, 0, 0, -135, 0, 0),
(464, 1344, 0, 2202.03, -2468.77, 13.3069, 0, 0, 88.8, 0, 0),
(465, 1300, 0, 2233.51, -2469.88, 12.9069, 0, 0, 0, 0, 0),
(466, 1300, 0, 2216.62, -2469.71, 12.8869, 0, 0, 0, 0, 0),
(467, 1344, 0, 2195.94, -2279.02, 13.3069, 0, 0, -136, 0, 0),
(468, 1344, 0, 2186.07, -2288.9, 13.2769, 0, 0, -134.8, 0, 0),
(469, 1344, 0, 1930.63, 168.132, 37.0052, 0, 0.299999, 162.4, 0, 0),
(470, 1344, 0, 1922.54, 171.192, 37.0113, 0, 0, 158.6, 0, 0),
(471, 1236, 0, -567.872, -1484.75, 9.54825, 0, 0, -52.7, 0, 0),
(472, 1344, 0, 1813.53, -2020.33, 13.2896, 0, 0, 88.9, 0, 0),
(473, 1227, 0, 651.005, -499.828, 16.0859, 0, 0, -92.1999, 0, 0),
(475, 1344, 0, 2835.86, 933.773, 10.67, 0, 0, 88.5, 0, 0),
(476, 1300, 0, 1453.75, 2523.54, 10.1203, 0, 0, -90.6, 0, 0),
(477, 1300, 0, 2558.28, 1567.95, 10.1503, 0, 0, 87.2, 0, 0),
(478, 1236, 0, 203.092, -271.014, 1.17813, 0, 0, 0, 0, 0),
(479, 1300, 0, 222.249, 37.5691, 1.89955, 0.7, -0.299999, -11.4, 0, 0),
(480, 1300, 0, -308.154, 1283.35, 53.7543, 0, 0, 90.2, 0, 0),
(481, 1300, 0, 2778.91, -1406.52, 24.085, -0.299999, -0.099999, -89.9001, 0, 0),
(482, 1344, 0, 1013.87, -315.787, 73.7222, 0, 0, 0, 0, 0),
(483, 1236, 0, 336.257, -1525.51, 32.904, 0, 0, -126.3, 0, 0),
(484, 1345, 0, 177.269, -1336.06, 69.8574, -0.399999, -0.000006, 89.9005, 0, 0),
(485, 1300, 0, 733.643, -578.389, 15.713, 0.699999, 0, -179.3, 0, 0),
(486, 1300, 0, -1924.36, 477.088, 34.4919, 0, 0, -90, 0, 0),
(487, 1300, 0, 1772.13, -1131.92, 27.5393, 0, 0, 0, 0, 0),
(488, 1300, 0, 1718.01, -1124.33, 23.4772, 0, 0, 0, 0, 0),
(489, 1227, 0, 1704.71, -1124.54, 23.8981, 0, 0, -89.4, 0, 0),
(490, 1227, 0, 1755.72, -1101.65, 23.9081, 0, 0, -90.7, 0, 0),
(491, 1300, 0, 1005.97, -1115.57, 23.2199, 0, 0, 0, 0, 0),
(492, 1300, 0, 2321.37, 16.8287, 25.8266, 0, 0, -89.9, 0, 0),
(493, 1300, 0, 1273.22, -824.695, 1084.98, 0, 0, -90.4999, 5, 1),
(494, 1300, 0, 1083.07, -1230.69, 15.1403, 0, 0, 90.4, 0, 0),
(495, 1236, 0, 729.509, -1282.03, 13.1488, 0, 0, -90, 0, 0),
(496, 1300, 0, -2644.62, 935.521, 71.3031, 0, 0, 0, 0, 0),
(497, 1300, 0, 741.165, -553.735, 16.6625, 0, 0, 0, 0, 0),
(498, 1300, 0, -1985.93, 1104.66, 52.5647, 0, 0, -178.6, 0, 0),
(499, 1300, 0, 721.384, -1450.93, 17.0653, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gudang`
--

CREATE TABLE `gudang` (
  `ID` int(11) NOT NULL,
  `Name` varchar(34) NOT NULL DEFAULT '',
  `Cost_30Day` int(11) NOT NULL DEFAULT 0,
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `World` int(11) NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `gudang`
--

INSERT INTO `gudang` (`ID`, `Name`, `Cost_30Day`, `PosX`, `PosY`, `PosZ`, `World`, `Interior`) VALUES
(0, 'Gudang Amplas', 1200150, 2076.44, -2033.18, 13.5469, 0, 0),
(1, 'Gudang Panglima Denai', 1200150, 1708.56, 1074.06, 10.8203, 0, 0),
(2, 'Kualanamu', 15000, -134.592, 1116.69, 20.1966, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gudang_brankas`
--

CREATE TABLE `gudang_brankas` (
  `Owner` int(11) DEFAULT 0,
  `ID` int(11) NOT NULL,
  `Item` varchar(32) DEFAULT NULL,
  `Model` int(11) DEFAULT 0,
  `Quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `gudang_brankas`
--

INSERT INTO `gudang_brankas` (`Owner`, `ID`, `Item`, `Model`, `Quantity`) VALUES
(6, 1, 'Komponen', 2040, 238);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gunpos`
--

CREATE TABLE `gunpos` (
  `Owner` int(11) NOT NULL,
  `PosX_0` float DEFAULT -0.116,
  `PosY_0` float DEFAULT 0.189,
  `PosZ_0` float DEFAULT 0.088,
  `RotX_0` float DEFAULT 0,
  `RotY_0` float DEFAULT 44.5,
  `RotZ_0` float DEFAULT 0,
  `Bone_0` tinyint(4) NOT NULL DEFAULT 1,
  `Hidden_0` tinyint(4) NOT NULL DEFAULT 0,
  `Tint_0` tinyint(4) NOT NULL DEFAULT 0,
  `PosX_1` float DEFAULT -0.116,
  `PosY_1` float DEFAULT 0.189,
  `PosZ_1` float DEFAULT 0.088,
  `RotX_1` float DEFAULT 0,
  `RotY_1` float DEFAULT 44.5,
  `RotZ_1` float DEFAULT 0,
  `Bone_1` tinyint(4) NOT NULL DEFAULT 1,
  `Hidden_1` tinyint(4) NOT NULL DEFAULT 0,
  `Tint_1` tinyint(4) NOT NULL DEFAULT 0,
  `PosX_2` float DEFAULT -0.116,
  `PosY_2` float DEFAULT 0.189,
  `PosZ_2` float DEFAULT 0.088,
  `RotX_2` float DEFAULT 0,
  `RotY_2` float DEFAULT 44.5,
  `RotZ_2` float DEFAULT 0,
  `Bone_2` tinyint(4) NOT NULL DEFAULT 1,
  `Hidden_2` tinyint(4) NOT NULL DEFAULT 0,
  `Tint_2` tinyint(4) DEFAULT 0,
  `PosX_3` float DEFAULT -0.116,
  `PosY_3` float DEFAULT 0.189,
  `PosZ_3` float DEFAULT 0.088,
  `RotX_3` float DEFAULT 0,
  `RotY_3` float DEFAULT 44.5,
  `RotZ_3` float DEFAULT 0,
  `Bone_3` tinyint(4) NOT NULL DEFAULT 1,
  `Hidden_3` tinyint(4) NOT NULL DEFAULT 0,
  `Tint_3` tinyint(4) DEFAULT 0,
  `PosX_4` float DEFAULT -0.116,
  `PosY_4` float DEFAULT 0.189,
  `PosZ_4` float DEFAULT 0.088,
  `RotX_4` float DEFAULT 0,
  `RotY_4` float DEFAULT 44.5,
  `RotZ_4` float DEFAULT 0,
  `Bone_4` tinyint(4) NOT NULL DEFAULT 1,
  `Hidden_4` tinyint(4) NOT NULL DEFAULT 0,
  `Tint_4` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `gunpos`
--

INSERT INTO `gunpos` (`Owner`, `PosX_0`, `PosY_0`, `PosZ_0`, `RotX_0`, `RotY_0`, `RotZ_0`, `Bone_0`, `Hidden_0`, `Tint_0`, `PosX_1`, `PosY_1`, `PosZ_1`, `RotX_1`, `RotY_1`, `RotZ_1`, `Bone_1`, `Hidden_1`, `Tint_1`, `PosX_2`, `PosY_2`, `PosZ_2`, `RotX_2`, `RotY_2`, `RotZ_2`, `Bone_2`, `Hidden_2`, `Tint_2`, `PosX_3`, `PosY_3`, `PosZ_3`, `RotX_3`, `RotY_3`, `RotZ_3`, `Bone_3`, `Hidden_3`, `Tint_3`, `PosX_4`, `PosY_4`, `PosZ_4`, `RotX_4`, `RotY_4`, `RotZ_4`, `Bone_4`, `Hidden_4`, `Tint_4`) VALUES
(1, -0.007, 0.082, -0.058, -69.7, 89.9, 2, 7, 0, 0, 0, -0.036, 0.125, -90.8, 1.4, 3.7, 8, 0, 0, 0.186, -0.163, 0.163, -4.1, 158.3, 10.9, 1, 0, 0, -0.187, 0.178, 0.092, -4.1, 42.7, -1, 1, 0, 0, -0.063, -0.052, 0.047, 119.5, -113.5, -29, 8, 0, 0),
(2, -0.007, 0.082, -0.058, -69.7, 89.9, 2, 7, 0, 0, 0, -0.036, 0.125, -90.8, 1.4, 3.7, 8, 0, 0, 0.186, -0.163, 0.163, -4.1, 158.3, 10.9, 1, 0, 0, -0.187, 0.178, 0.092, -4.1, 42.7, -1, 1, 0, 0, -0.063, -0.052, 0.047, 119.5, -113.5, -29, 8, 0, 0),
(4, -0.007, 0.082, -0.058, -69.7, 89.9, 2, 7, 0, 0, 0, -0.036, 0.125, -90.8, 1.4, 3.7, 8, 0, 0, 0.186, -0.163, 0.163, -4.1, 158.3, 10.9, 1, 0, 0, -0.187, 0.178, 0.092, -4.1, 42.7, -1, 1, 0, 0, -0.063, -0.052, 0.047, 119.5, -113.5, -29, 8, 0, 0),
(5, -0.007, 0.082, -0.058, -69.7, 89.9, 2, 7, 0, 0, 0, -0.036, 0.125, -90.8, 1.4, 3.7, 8, 0, 0, 0.186, -0.163, 0.163, -4.1, 158.3, 10.9, 1, 0, 0, -0.187, 0.178, 0.092, -4.1, 42.7, -1, 1, 0, 0, -0.063, -0.052, 0.047, 119.5, -113.5, -29, 8, 0, 0),
(6, -0.007, 0.082, -0.058, -69.7, 89.9, 2, 7, 0, 0, 0, -0.036, 0.125, -90.8, 1.4, 3.7, 8, 0, 0, 0.186, -0.163, 0.163, -4.1, 158.3, 10.9, 1, 0, 0, -0.187, 0.178, 0.092, -4.1, 42.7, -1, 1, 0, 0, -0.063, -0.052, 0.047, 119.5, -113.5, -29, 8, 0, 0),
(7, -0.007, 0.082, -0.058, -69.7, 89.9, 2, 7, 0, 0, 0, -0.036, 0.125, -90.8, 1.4, 3.7, 8, 0, 0, 0.186, -0.163, 0.163, -4.1, 158.3, 10.9, 1, 0, 0, -0.187, 0.178, 0.092, -4.1, 42.7, -1, 1, 0, 0, -0.063, -0.052, 0.047, 119.5, -113.5, -29, 8, 0, 0),
(8, -0.007, 0.082, -0.058, -69.7, 89.9, 2, 7, 0, 0, 0, -0.036, 0.125, -90.8, 1.4, 3.7, 8, 0, 0, 0.186, -0.163, 0.163, -4.1, 158.3, 10.9, 1, 0, 0, -0.187, 0.178, 0.092, -4.1, 42.7, -1, 1, 0, 0, -0.063, -0.052, 0.047, 119.5, -113.5, -29, 8, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `houses`
--

CREATE TABLE `houses` (
  `ID` int(11) NOT NULL,
  `OwnerID` int(11) NOT NULL DEFAULT 0,
  `OwnerName` varchar(24) DEFAULT '',
  `X` float NOT NULL DEFAULT 0,
  `Y` float NOT NULL DEFAULT 0,
  `Z` float NOT NULL DEFAULT 0,
  `A` float NOT NULL DEFAULT 0,
  `IX` float NOT NULL DEFAULT 0,
  `IY` float NOT NULL DEFAULT 0,
  `IZ` float NOT NULL DEFAULT 0,
  `IA` float NOT NULL DEFAULT 0,
  `BX` float NOT NULL DEFAULT 0,
  `BY` float NOT NULL DEFAULT 0,
  `BZ` float NOT NULL DEFAULT 0,
  `GX` float NOT NULL DEFAULT 0,
  `GY` float NOT NULL DEFAULT 0,
  `GZ` float NOT NULL DEFAULT 0,
  `GA` float NOT NULL DEFAULT 0,
  `Type` int(11) NOT NULL DEFAULT 0,
  `World` int(11) NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0,
  `IntWorld` int(11) NOT NULL DEFAULT 0,
  `IntInterior` int(11) NOT NULL DEFAULT 0,
  `MusicURL` varchar(128) DEFAULT '',
  `Lapor` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `house_brankas`
--

CREATE TABLE `house_brankas` (
  `Owner` int(11) DEFAULT 0,
  `ID` int(11) NOT NULL,
  `Item` varchar(32) DEFAULT NULL,
  `Model` int(11) DEFAULT 0,
  `Quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `house_holster`
--

CREATE TABLE `house_holster` (
  `House_DBID` int(11) DEFAULT 0,
  `ID` int(11) NOT NULL,
  `WeaponID` int(11) DEFAULT 0,
  `WeaponAmmo` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventory`
--

CREATE TABLE `inventory` (
  `Owner_ID` int(11) DEFAULT 0,
  `invent_ID` int(11) NOT NULL,
  `invent_Item` varchar(32) DEFAULT NULL,
  `invent_Model` int(11) DEFAULT 0,
  `invent_Quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `inventory`
--

INSERT INTO `inventory` (`Owner_ID`, `invent_ID`, `invent_Item`, `invent_Model`, `invent_Quantity`) VALUES
(1, 2, 'Smartphone', 18873, 1),
(1, 3, 'Chicken BBQ', 2355, 10),
(1, 4, 'Coconut Water', 19564, 10),
(1, 9, 'Vape', 19823, 1),
(1, 11, 'Ember', 19468, 1),
(1, 16, 'Sampah Makanan', 2840, 4),
(1, 18, 'Ember Terisi', 1554, 4),
(2, 23, 'Elektronik Rusak', 2041, 1),
(2, 24, 'Smartphone', 18873, 1),
(3, 26, 'Smartphone', 18873, 1),
(3, 27, 'Chicken BBQ', 2355, 10),
(3, 28, 'Coconut Water', 19564, 10),
(2, 29, 'Coconut Water', 19564, 10),
(2, 30, 'Chicken BBQ', 2355, 9),
(2, 31, 'Sampah Makanan', 2840, 1),
(4, 33, 'Smartphone', 18873, 1),
(4, 34, 'Chicken BBQ', 2355, 10),
(4, 35, 'Coconut Water', 19564, 10),
(5, 36, 'Ransel', 3026, 1),
(5, 37, 'Smartphone', 18873, 1),
(6, 38, 'Ransel', 3026, 1),
(6, 39, 'Smartphone', 18873, 1),
(6, 40, 'Ayam', 16776, 1),
(6, 42, 'Ayam Kemas', 2768, 8),
(7, 100, 'Nasi Uduk', 2769, 1),
(7, 101, 'Smartphone', 18873, 1),
(7, 102, 'Sawit', 19636, 1),
(7, 105, 'Plastik', 1265, 7),
(7, 106, 'Minyak Sawit', 19820, 5),
(8, 112, 'Chicken BBQ', 2355, 20),
(8, 113, 'Coconut Water', 19564, 20),
(8, 114, 'Elektronik Rusak', 2041, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoices`
--

CREATE TABLE `invoices` (
  `ID` int(11) NOT NULL,
  `Owner` int(11) NOT NULL DEFAULT 0,
  `Name` varchar(34) NOT NULL,
  `Cost` int(11) NOT NULL DEFAULT 0,
  `IssuerDB` int(11) NOT NULL DEFAULT 0,
  `IssuerName` varchar(34) NOT NULL,
  `Faction` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kanabis`
--

CREATE TABLE `kanabis` (
  `id` int(11) NOT NULL,
  `kanabisModel` int(11) DEFAULT 1236,
  `kanabisX` float DEFAULT 0,
  `kanabisY` float DEFAULT 0,
  `kanabisZ` float DEFAULT 0,
  `kanabisRx` float DEFAULT 0,
  `kanabisRy` float DEFAULT 0,
  `kanabisRz` float DEFAULT 0,
  `kanabisInterior` int(11) DEFAULT 0,
  `kanabisWorld` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kanabis`
--

INSERT INTO `kanabis` (`id`, `kanabisModel`, `kanabisX`, `kanabisY`, `kanabisZ`, `kanabisRx`, `kanabisRy`, `kanabisRz`, `kanabisInterior`, `kanabisWorld`) VALUES
(0, 19473, 170.525, -549.649, 42.7339, 0, 0, 0, 0, 0),
(1, 19473, 158.419, -558.848, 41.3542, 0, 0, 0, 0, 0),
(2, 19473, 154.543, -535.565, 39.5194, 0, 0, 0, 0, 0),
(3, 19473, 171.989, -523.965, 41.3636, 0, 0, 0, 0, 0),
(4, 19473, 187.711, -535.076, 44.6457, 0, 0, 0, 0, 0),
(5, 19473, 193.977, -556.186, 48.1259, 0, 0, 0, 0, 0),
(6, 19473, 187.029, -569.431, 46.682, 0, 0, 0, 0, 0),
(7, 19473, 176.109, -584.717, 44.2497, 0, 0, 0, 0, 0),
(8, 19473, 156.164, -587.859, 41.0295, 0, 0, 0, 0, 0),
(9, 19473, 141.337, -564.627, 36.8885, 0, 0, 0, 0, 0),
(10, 19473, 124.485, -551.049, 30.4539, 0, 0, 0, 0, 0),
(11, 19473, 196.044, -547.03, 47.9698, 0, 0, 0, 0, 0),
(12, 19473, 201.506, -531.054, 47.0568, 0, 0, 0, 0, 0),
(13, 19473, 190.679, -519.091, 43.6139, 0, 0, 0, 0, 0),
(14, 19473, 179.585, -506.928, 34.9825, 0, 0, 0, 0, 0),
(15, 19473, 164.802, -501.528, 31.1681, 0, 0, 0, 0, 0),
(16, 19473, 140.479, -501.143, 26.254, 0, 0, 0, 0, 0),
(17, 19473, 124.239, -504.236, 24.431, 0, 0, 0, 0, 0),
(18, 19473, 125.969, -529.162, 30.6335, 0, 0, 0, 0, 0),
(19, 19473, 132.959, -537.17, 33.3049, 0, 0, 0, 0, 0),
(20, 19473, 145.391, -548.167, 37.8681, 0, 0, 0, 0, 0),
(21, 19473, 135.119, -557.966, 34.5195, 0, 0, 0, 0, 0),
(22, 19473, 116.804, -574.827, 27.4945, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lockers`
--

CREATE TABLE `lockers` (
  `id` int(12) NOT NULL DEFAULT -1,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `interior` int(12) DEFAULT 0,
  `world` int(12) DEFAULT 0,
  `type` int(12) DEFAULT 0,
  `name` varchar(64) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `lockers`
--

INSERT INTO `lockers` (`id`, `posx`, `posy`, `posz`, `interior`, `world`, `type`, `name`) VALUES
(0, 2195.73, 919.457, 12.9673, 0, 0, 2, 'Rumah Sakit Nexotis'),
(1, 1371.12, 1615.93, 15.6703, 3, 99, 4, 'Loker baju'),
(2, 351.332, 216.317, 1008.38, 3, 100, 8, 'Locker Pewarta'),
(3, 1867.15, 2195.71, 10.8818, 0, 0, 1, 'SAMSAT Locker'),
(4, 1779.62, -1111.22, 28.2093, 0, 0, 2, 'EMS Locker'),
(5, 1357.47, -1833.53, 13.5974, 0, 0, 3, 'Locker McDouglas'),
(6, 381.808, -188.616, 1000.63, 17, 44, 7, 'Loving Donuts - Locker'),
(7, 1487.73, -2146.81, -10.6731, 4, 444, 6, 'Uber Office Locker'),
(8, 351.504, 216.653, 1008.38, 3, 0, 1, 'Locker'),
(9, 1264.77, 708.212, 10.8875, 0, 0, 5, 'Locker Bennys'),
(10, 2753.6, 746.772, 13.7665, 0, 0, 1, 'Kepolisian Nexotis'),
(14, -322.128, 1291.65, 48.2753, 0, 0, 11, '+Arivena Faction Locker');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_fmoney`
--

CREATE TABLE `log_fmoney` (
  `Nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '',
  `UCP` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '',
  `Jumlah` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Faction` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Tanggal` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_transaction`
--

CREATE TABLE `log_transaction` (
  `Pemberi` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '',
  `UCP Pemberi` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '',
  `Penerima` varchar(50) DEFAULT '',
  `UCP Penerima` varchar(50) DEFAULT '',
  `Jumlah` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Tanggal` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapicons`
--

CREATE TABLE `mapicons` (
  `ID` int(11) NOT NULL,
  `iconvw` int(11) NOT NULL DEFAULT 0,
  `iconint` int(11) NOT NULL DEFAULT 0,
  `iconpos0` float NOT NULL DEFAULT 0,
  `iconpos1` float NOT NULL DEFAULT 0,
  `iconpos2` float NOT NULL DEFAULT 0,
  `icontype` int(11) NOT NULL DEFAULT 0,
  `iconcolor` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `mapicons`
--

INSERT INTO `mapicons` (`ID`, `iconvw`, `iconint`, `iconpos0`, `iconpos1`, `iconpos2`, `icontype`, `iconcolor`) VALUES
(0, 0, 0, 594.759, -1509.16, 15.2067, 37, -1),
(1, 0, 0, -1720.1, -62.9193, 3.55469, 37, -1),
(2, 0, 0, 2101.17, -1360.14, 24.0243, 36, -1),
(3, 0, 0, 2119.51, -1183.61, 23.626, 37, -1),
(4, 0, 0, 2004.19, 2149.86, 10.8203, 38, -1),
(5, 0, 0, 2232.78, -1159.8, 26.2906, 38, -1),
(6, 0, 0, -2520.35, 1214.07, 37.4283, 38, -1),
(7, 0, 0, 1129.55, -2038.77, 69.0078, 19, -1),
(8, 0, 0, 2472.73, -2672.69, 13.6619, 20, -1),
(9, 0, 0, 552.119, -1480.59, 14.6189, 44, -1),
(10, 0, 0, -2078.79, -2430.82, 30.6379, 14, -1),
(11, 0, 0, 2720.84, -6893.42, 25.2101, 20, -1),
(12, 0, 0, 2527.01, -2134.86, 13.9469, 20, -1),
(13, 0, 0, 292.711, -1428.57, 14, 9, -1),
(14, 0, 0, 2528.46, -2436.71, 17.8828, 9, -1),
(15, 0, 0, 1758.71, -1121.6, 24.1473, 22, -1),
(16, 0, 0, 5164.26, -2347.55, -0.5292, 9, -1),
(17, 0, 0, -2002.26, -939.166, 33.0359, 13, -1),
(19, 0, 0, 1692.16, -1462.3, 13.5469, 58, -1),
(20, 0, 0, 1664.72, -1885.79, 13.5487, 52, -1),
(21, 0, 0, 1221.8, -1556.18, 13.5517, 52, -1),
(22, 0, 0, 267.85, -142.558, 1.57831, 52, -1),
(23, 0, 0, 1376.5, 193.602, 19.6028, 52, -1),
(24, 0, 0, 2329.09, 230.113, 26.5611, 52, -1),
(25, 0, 0, -2275.2, -123.512, 35.3289, 52, -1),
(26, 0, 0, -2516.21, -6.24175, 25.7077, 52, -1),
(27, 0, 0, 1553.21, 1034.31, 10.8495, 52, -1),
(28, 0, 0, 1469.45, -1009.92, 26.8438, 52, -1),
(29, 0, 0, 382.284, -1337.48, 15.547, 55, -1),
(30, 0, 0, 1324.38, 760.081, 10.8322, 26, -1),
(31, 0, 0, -1699.43, 19.9845, 3.11365, 51, -1),
(32, 0, 0, 2044.2, -1872.65, 13.5893, 27, -1),
(33, 0, 0, 2320.85, 572.285, 7.33989, 24, -1),
(34, 0, 0, 2101.24, -1359.74, 23.9844, 35, -1),
(35, 0, 0, 378.87, -2075.82, 7.83594, 9, -1),
(36, 0, 0, 1286.25, -1329.15, 13.5525, 38, -1),
(39, 0, 0, 679.247, 838.856, -42.9609, 11, -1),
(40, 0, 0, -3.87998, 1361.66, 8.72409, 11, -1),
(41, 0, 0, 2152.62, -2260.95, 12.8474, 11, -1),
(47, 0, 0, 1682.81, -2289.38, 13.5125, 5, -1),
(49, 0, 0, 2699.23, -2454.66, 13.6422, 9, -1),
(50, 0, 0, 677.886, -1365.35, 29.0108, 34, -1),
(53, 0, 0, 2120.6, -1787.39, 13.5547, 37, -1),
(54, 0, 0, -376.264, -1431.28, 25.7266, 62, -1),
(55, 0, 0, -41.3511, 56.4949, 3.11719, 62, -1),
(58, 0, 0, -388.986, 2230.08, 41.9923, 40, -1),
(59, 0, 0, -1831.7, 148.99, 15.1172, 26, -1),
(60, 0, 0, 207.421, -247.796, 1.91162, 26, -1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mdc_arrestrecords`
--

CREATE TABLE `mdc_arrestrecords` (
  `id` int(11) NOT NULL,
  `ownerid` int(11) NOT NULL DEFAULT 0,
  `time` varchar(128) NOT NULL DEFAULT '',
  `detentions` varchar(144) NOT NULL DEFAULT '',
  `officer` varchar(25) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mdc_broadcasts`
--

CREATE TABLE `mdc_broadcasts` (
  `id` int(11) NOT NULL,
  `time` varchar(128) NOT NULL DEFAULT '',
  `description` varchar(144) NOT NULL DEFAULT '',
  `issuer` varchar(25) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `mdc_broadcasts`
--

INSERT INTO `mdc_broadcasts` (`id`, `time`, `description`, `issuer`) VALUES
(1, '30/05/2025', '123', 'Jefri_Nikol');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mdc_charges`
--

CREATE TABLE `mdc_charges` (
  `id` int(11) NOT NULL,
  `ownerid` int(11) NOT NULL DEFAULT 0,
  `time` varchar(128) NOT NULL DEFAULT '',
  `description` varchar(144) NOT NULL DEFAULT '',
  `issuer` varchar(25) NOT NULL DEFAULT '',
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `arrest_report_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mdc_warrants`
--

CREATE TABLE `mdc_warrants` (
  `id` int(11) NOT NULL,
  `ownerid` int(11) NOT NULL DEFAULT 0,
  `time` varchar(128) NOT NULL DEFAULT '',
  `description` varchar(144) NOT NULL DEFAULT '',
  `issuer` varchar(25) NOT NULL DEFAULT '',
  `suspect` varchar(25) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `newsstands`
--

CREATE TABLE `newsstands` (
  `id` int(11) NOT NULL,
  `X` float DEFAULT 0,
  `Y` float DEFAULT 0,
  `Z` float DEFAULT 0,
  `Rx` float DEFAULT 0,
  `Ry` float DEFAULT 0,
  `Rz` float DEFAULT 0,
  `Interior` int(11) DEFAULT 0,
  `World` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `newsstands`
--

INSERT INTO `newsstands` (`id`, `X`, `Y`, `Z`, `Rx`, `Ry`, `Rz`, `Interior`, `World`) VALUES
(0, 1672.82, -2246.54, 13.0818, 0, 0, 178.4, 0, 0),
(1, 1704.1, -2245.87, 13.0569, 0, 0, 88.8, 0, 0),
(3, 421.404, -1785.9, 5.05687, 0, 0, 0, 0, 0),
(4, 1385, 1583.57, 16.4403, 0, 0, 90.5999, 3, 99),
(5, -2272.82, 2380.61, 4.44657, 0, 0, -46, 0, 0),
(7, 2819.45, 1309.78, 10.2668, 0, 0, 0, 0, 0),
(8, -1985.78, 122.266, 27.2075, 0, 0, -90.8, 0, 0),
(9, -2355.05, 999.795, 50.4285, 0, 0, 90.1, 0, 0),
(10, 1322.87, -902.895, 39.1201, 0, 0, 0, 0, 0),
(11, 1925.75, -1786.77, 13.0806, 0, 0, 179.2, 0, 0),
(12, 39.2382, -2644.45, 40.194, 0, 0, 92, 0, 0),
(13, 2434.63, -1769.71, 13.0585, 0, 0, 179.8, 0, 0),
(14, -2182.81, -2266.36, 30.125, 0, 0, -128, 0, 0),
(15, -2597.17, 2274.64, 7.84937, 0, 0, 89.4, 0, 0),
(16, -2634.58, 167.988, 3.93567, 0, 0, 89.3, 0, 0),
(17, 180.872, 1171.46, 14.2878, 0, 0, 165.2, 0, 0),
(18, -1279.61, 2707.49, 49.7963, 0, 0, -151.6, 0, 0),
(19, 2497.67, 734.27, 10.3503, 0, 0, -89.8001, 0, 0),
(20, 1403.21, 419.279, 19.3195, 0, 0, -113.4, 0, 0),
(21, 897.715, 1902.43, 10.3503, 0, 0, -90.4999, 0, 0),
(22, 2233.39, 2751.39, 10.3603, 0, 0, 90.1, 0, 0),
(23, 2271.04, 50.9303, 26.0244, 0, 0, 179.3, 0, 0),
(24, 123.087, -128.867, 1.10812, 0, 0, -89.5, 0, 0),
(25, 690.884, -644.269, 15.7987, 0, 0, 90, 0, 0),
(26, 564.03, 1641.51, 6.50218, 0, 0, -58.1, 0, 0),
(27, -77.034, -1183.88, 1.27, 0, 0, 158.4, 0, 0),
(28, 1602.1, 2236.15, 10.3303, 0, 0, -90.1001, 0, 0),
(29, -1980.51, 168.883, 27.2175, 0, 0, 90.7, 0, 0),
(30, 1490.37, -1716.14, 13.5669, 0, 0, 179.5, 0, 0),
(31, 2807.93, -1089.68, 30.193, 0, 0, 91.3, 0, 0),
(32, 290.952, 1144.97, 8.09593, 0, 0, 0, 0, 0),
(33, 1017.5, -1343.42, 12.8979, 0, 0, 88.2, 0, 0),
(34, 1868.99, -1863.58, 13.1139, 0, 0, -90.8, 0, 0),
(35, 1187.95, -1332.82, 13.034, 0, 0, -91.7, 0, 0),
(36, -1446.22, -1515.91, 101.198, 0, 0, -92.2, 0, 0),
(37, 1551.85, 18.5416, 23.6606, 0, 0, 16.2, 0, 0),
(38, -2108.64, -2427.37, 30.095, 0, 0, 140, 0, 0),
(39, -1974.14, -2393.24, 30.125, 0, 0, -45.6, 0, 0),
(40, -1435.31, -1584.9, 101.268, 0, 0, 176.8, 0, 0),
(41, -18.9781, -1115.62, 8.00529, 0, 0, -93.1, 0, 0),
(42, 2187.12, -2257.97, 12.9589, 0, 0, -136.1, 0, 0),
(43, 695.221, 897.354, -39.5106, 0, 0, 89.2999, 0, 0),
(44, 622.225, 1359.84, 11.4222, 0, 0, 90.7, 0, 0),
(45, 584.379, 1428.87, 10.6506, 0, 0, -89.9, 0, 0),
(46, 606.703, 1504.1, 7.56031, 0, 0, -88.6, 0, 0),
(47, -989.409, -700.812, 31.4878, 0, 0, 0, 0, 0),
(48, -1070.4, -641.76, 31.4578, 0, 0, 179.9, 0, 0),
(49, 1932.76, 167.182, 36.7453, 0, 0, -19.9, 0, 0),
(50, 2307.03, -2080.53, 13.0669, 0, 0, 135.4, 0, 0),
(51, 2124.4, -1192.32, 23.512, 0, 0, 89.6, 0, 0),
(52, 1785.94, -1941.38, 13.0569, 0, 0, 0, 0, 0),
(53, 615.898, -1523.53, 14.6083, 0, 0, 0, 0, 0),
(54, -1729.94, -43.1701, 3.06469, 0, 0, 44.5, 0, 0),
(55, 1057.47, 1246.91, 10.2903, 0, 0, -92.3, 0, 0),
(56, 410.151, -1913.2, 7.26119, 0, 0, -179.4, 0, 0),
(57, 1336.02, 730.388, 10.3975, 0, 0, 90.6, 0, 0),
(58, 2208.33, -2514.78, 13.0569, 0, 0, -92.5, 0, 0),
(59, -36.4304, 38.8868, 2.59719, 0, 0, -110.6, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ores`
--

CREATE TABLE `ores` (
  `id` int(11) DEFAULT -1,
  `Type` int(11) DEFAULT 0,
  `posX` float DEFAULT 0,
  `posY` float DEFAULT 0,
  `posZ` float DEFAULT 0,
  `posRx` float DEFAULT 0,
  `posRy` float DEFAULT 0,
  `posRz` float DEFAULT 0,
  `Interior` int(11) DEFAULT 0,
  `World` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ores`
--

INSERT INTO `ores` (`id`, `Type`, `posX`, `posY`, `posZ`, `posRx`, `posRy`, `posRz`, `Interior`, `World`) VALUES
(0, 3, 630.977, 859.548, -43.6209, 0, 0, 0, 0, 0),
(1, 1, 641.021, 827.536, -42.3523, 0, 0, 0, 0, 0),
(2, 3, 607.061, 868.093, -41.0853, 0, 0, 0, 0, 0),
(3, 1, 638.51, 856.572, -41.0514, 0, 0, 0, 0, 0),
(4, 2, 635.747, 827.908, -41.5681, 0, 0, 0, 0, 0),
(5, 1, 647.733, 889.315, -42.9633, 0, 0, 0, 0, 0),
(6, 1, 635.669, 889.253, -43.5309, 0, 0, 0, 0, 0),
(7, 2, 635.31, 823.592, -42.3831, 0, 0, 0, 0, 0),
(8, 2, 607.306, 885.711, -44.1135, 0, 0, 0, 0, 0),
(9, 1, 594.058, 885.987, -45.0117, 0, 0, 0, 0, 0),
(10, 1, 627.723, 808.578, -43.8209, 0, 0, 0, 0, 0),
(11, 3, 636.932, 803.615, -42.9609, 0, 0, 0, 0, 0),
(12, 1, 599.99, 922.635, -40.9249, 0, 0, 0, 0, 0),
(13, 2, 613.848, 815.398, -43.6934, 0, 0, 0, 0, 0),
(14, 1, 590.771, 922.861, -40.4794, 0, 0, 0, 0, 0),
(15, 1, 616.828, 821.921, -43.7334, 0, 0, 0, 0, 0),
(16, 2, 550.242, 914.291, -40.1419, 0, 0, 0, 0, 0),
(17, 2, 619.831, 814.836, -43.6909, 0, 0, 0, 0, 0),
(18, 2, 673.93, 816.865, -42.2834, 0, 0, 0, 0, 0),
(19, 1, 590.501, 931.037, -40.9714, 0, 0, 0, 0, 0),
(20, 2, 578.057, 906.958, -44.0737, 0, 0, 0, 0, 0),
(21, 3, 566.21, 890.867, -43.9511, 0, 0, 0, 0, 0),
(22, 1, 645.595, 810.542, -43.7909, 0, 0, 0, 0, 0),
(23, 2, 658.772, 870.31, -42.7051, 0, 0, 0, 0, 0),
(24, 2, 651.782, 816.522, -43.7709, 0, 0, 0, 0, 0),
(25, 1, 557.268, 887.426, -43.8821, 0, 0, 0, 0, 0),
(26, 1, 545.558, 891.488, -42.6305, 0, 0, 0, 0, 0),
(27, 1, 666.898, 878.25, -41.5219, 0, 0, 0, 0, 0),
(28, 1, 539.232, 915.048, -40.5676, 0, 0, 0, 0, 0),
(29, 2, 644.932, 819.87, -43.7509, 0, 0, 0, 0, 0),
(30, 1, 655.207, 897.288, -41.9626, 0, 0, 0, 0, 0),
(31, 1, 626.42, 830.942, -43.8409, 0, 0, 0, 0, 0),
(32, 2, 569.802, 865.748, -43.9812, 0, 0, 0, 0, 0),
(33, 2, 668.116, 933.708, -40.0003, 0, 0, 0, 0, 0),
(34, 1, 546.886, 869.147, -42.8195, 0, 0, 0, 0, 0),
(35, 2, 561.914, 934.216, -42.1128, 0, 0, 0, 0, 0),
(36, 2, 652.516, 858.424, -43.6088, 0, 0, 0, 0, 0),
(37, 1, 531.587, 850.26, -43.5494, 0, 0, 0, 0, 0),
(38, 1, 661.233, 918.55, -41.475, 0, 0, 0, 0, 0),
(39, 1, 547.026, 849.752, -42.945, 0, 0, 0, 0, 0),
(40, 1, 617.263, 850.592, -43.7892, 0, 0, 0, 0, 0),
(41, 1, 557.896, 840.195, -41.9863, 0, 0, 0, 0, 0),
(42, 1, 551.708, 923.938, -41.6426, 0, 0, 0, 0, 0),
(43, 2, 623.809, 845.855, -43.7509, 0, 0, 0, 0, 0),
(44, 2, 571.225, 850.51, -43.0684, 0, 0, 0, 0, 0),
(45, 2, 582.519, 844.292, -43.1989, 0, 0, 0, 0, 0),
(46, 2, 667.384, 905.847, -41.0284, 0, 0, 0, 0, 0),
(47, 1, 668.347, 893.628, -40.9916, 0, 0, 0, 0, 0),
(48, 2, 605.439, 822, -43.8697, 0, 0, 0, 0, 0),
(49, 1, 600.159, 847.403, -44.001, 0, 0, 0, 0, 0),
(50, 1, 605.93, 839.977, -43.9932, 0, 0, 0, 0, 0),
(51, 3, 686.533, 893.448, -40.0811, 0, 0, 0, 0, 0),
(52, 3, 617.994, 870.639, -43.7509, 0, 0, 0, 0, 0),
(53, 1, 687.393, 885.426, -39.8754, 0, 0, 0, 0, 0),
(54, 1, 658.744, 861.638, -43.3543, 0, 0, 0, 0, 0),
(55, 2, 662.001, 804.631, -42.9609, 0, 0, 0, 0, 0),
(56, 1, 674.953, 863.239, -42.9263, 0, 0, 0, 0, 0),
(57, 1, 634.169, 915.263, -43.499, 0, 0, 0, 0, 0),
(58, 1, 647.325, 918.056, -42.1791, 0, 0, 0, 0, 0),
(59, 1, 647.254, 842.224, -43.7709, 0, 0, 0, 0, 0),
(60, 3, 616.401, 937.538, -39.3213, 0, 0, 0, 0, 0),
(61, 1, 660.757, 822.592, -43.651, 0, 0, 0, 0, 0),
(62, 2, 628.848, 818.87, -43.8209, 0, 0, 0, 0, 0),
(63, 1, 603.714, 940.072, -40.4639, 0, 0, 0, 0, 0),
(64, 2, 665.174, 840.707, -43.8409, 0, 0, 0, 0, 0),
(65, 1, 576.43, 920.934, -43.6309, 0, 0, 0, 0, 0),
(66, 1, 659.135, 851.399, -43.8709, 0, 0, 0, 0, 0),
(67, 1, 532.403, 873.213, -41.7866, 0, 0, 0, 0, 0),
(68, 2, 670.062, 924.054, -41.503, 0, 0, 0, 0, 0),
(69, 2, 643.578, 854.445, -42.8994, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `phone_contacts`
--

CREATE TABLE `phone_contacts` (
  `contactID` int(11) NOT NULL,
  `contactName` varchar(32) DEFAULT '',
  `contactNumber` varchar(13) NOT NULL DEFAULT '',
  `contactUnread` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `contactOwnerID` int(11) DEFAULT 0,
  `contactBlocked` tinyint(3) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `phone_contacts`
--

INSERT INTO `phone_contacts` (`contactID`, `contactName`, `contactNumber`, `contactUnread`, `contactOwnerID`, `contactBlocked`) VALUES
(1, 'Tatang Saepudin', '08288095439', 0, 1, 0),
(2, 'Ryuxi Mozaya', '08281252004', 1, 2, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pilkada_voters`
--

CREATE TABLE `pilkada_voters` (
  `ID` int(11) NOT NULL,
  `Voters_ID` int(11) NOT NULL DEFAULT -1,
  `Nama` varchar(24) NOT NULL DEFAULT '',
  `UCP` varchar(24) NOT NULL DEFAULT '',
  `VotedNumber` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `player_bans`
--

CREATE TABLE `player_bans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(24) DEFAULT 'None',
  `ip` varchar(24) DEFAULT 'None',
  `longip` int(11) DEFAULT 0,
  `ban_expire` bigint(20) DEFAULT 0,
  `ban_date` bigint(20) DEFAULT 0,
  `last_activity_timestamp` bigint(20) DEFAULT 0,
  `admin` varchar(40) DEFAULT 'Server',
  `reason` varchar(128) DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `player_characters`
--

CREATE TABLE `player_characters` (
  `pID` int(11) NOT NULL,
  `Char_RegisterDate` varchar(30) NOT NULL DEFAULT '',
  `Char_LastLogin` varchar(30) NOT NULL DEFAULT '',
  `Char_IP` varchar(24) NOT NULL DEFAULT '',
  `Char_SSN` bigint(32) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Name` varchar(64) NOT NULL,
  `Char_AdminName` varchar(24) NOT NULL,
  `Char_DonatorTag` varchar(128) NOT NULL DEFAULT '',
  `Char_Admin` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Apprentice` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Steward` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_StewTime` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Char_VIP` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_VIPTime` bigint(32) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Money` bigint(32) NOT NULL DEFAULT 0,
  `Char_DirtyMoney` bigint(32) UNSIGNED NOT NULL DEFAULT 0,
  `Char_BankMoney` bigint(32) NOT NULL DEFAULT 0,
  `Char_SlipSalary` bigint(32) NOT NULL DEFAULT 0,
  `Char_BankNumber` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Char_WaterInBucket` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Char_CasinoChip` bigint(32) UNSIGNED NOT NULL DEFAULT 0,
  `Char_PosX` float NOT NULL DEFAULT 0,
  `Char_PosY` float NOT NULL DEFAULT 0,
  `Char_PosZ` float NOT NULL DEFAULT 0,
  `Char_Health` float NOT NULL DEFAULT 100,
  `Char_Armor` float NOT NULL DEFAULT 0,
  `Char_WID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Char_IntID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Birthday` varchar(50) NOT NULL DEFAULT '0',
  `Char_Origin` varchar(64) NOT NULL DEFAULT 'None',
  `Char_Gender` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_BodyHeight` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Char_BodyWeight` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Skin` mediumint(8) UNSIGNED NOT NULL DEFAULT 250,
  `Char_Level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Uniform` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Job` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `Char_InDoor` mediumint(9) NOT NULL DEFAULT -1,
  `Char_InHouse` mediumint(9) NOT NULL DEFAULT -1,
  `Char_InBiz` mediumint(9) NOT NULL DEFAULT -1,
  `Char_InRusun` mediumint(9) NOT NULL DEFAULT -1,
  `Char_Hunger` smallint(6) NOT NULL DEFAULT 100,
  `Char_Thirst` smallint(6) NOT NULL DEFAULT 100,
  `Char_Stress` smallint(6) NOT NULL DEFAULT 0,
  `Char_Faction` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_FactionRank` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Badge` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Char_OnDuty` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_UsingUniform` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_UsingPoliceVest` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Family` tinyint(4) NOT NULL DEFAULT -1,
  `Char_FamilyRank` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Jailed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Char_JailCell` int(11) NOT NULL DEFAULT -1,
  `Char_JailAdmin` varchar(24) NOT NULL DEFAULT '',
  `Char_JailTime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Char_JailDur` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Char_JailReason` varchar(60) NOT NULL DEFAULT '',
  `Char_JailFine` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Arrest` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_ArrestTime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Char_ComServing` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Warn` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_DinarPoints` int(10) UNSIGNED NOT NULL DEFAULT 25,
  `Char_TogPM` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `Char_TogGOOC` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `Char_TogLogin` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `Char_TogLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `Char_TogAdv` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `Char_TogAdmCmd` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `Char_TogMoneyTD` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `Char_XmasGiftTime` bigint(20) NOT NULL DEFAULT 0,
  `Char_RenderSetting` float NOT NULL DEFAULT 1,
  `Char_Radio` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Earphone` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Boombox` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_HuntingRifle` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_HasGudangID` int(11) NOT NULL DEFAULT -1,
  `Char_GudangRentTime` bigint(32) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Knockdown` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_KnockdownTime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Char_KTPTime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Char_GVL1Lic` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_GVL1LicTime` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Char_GVL2Lic` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_GVL2LicTime` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Char_MBLic` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_MBLicTime` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Char_BLic` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_BLicTime` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Air1Lic` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Air1LicTime` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Air2Lic` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Air2LicTime` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Char_FirearmLic` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_FirearmLicTime` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Char_HuntingLic` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_HuntingLicTime` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Char_SPClaimed` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_MowingDelay` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Char_SweeperDelay` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Char_ForkliftDelay` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Char_TrashCollectorDelay` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Char_PizzaDelay` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Char_TaxMinute` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Char_HouseSharedID` int(11) NOT NULL DEFAULT -1,
  `Char_TutorialPassed` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Hours` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Minutes` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `Char_Seconds` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `Char_KTP` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `Char_DCTime` bigint(32) UNSIGNED NOT NULL DEFAULT 0,
  `Char_FightStyle` int(32) UNSIGNED NOT NULL DEFAULT 0,
  `Char_UCP` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `player_characters`
--

INSERT INTO `player_characters` (`pID`, `Char_RegisterDate`, `Char_LastLogin`, `Char_IP`, `Char_SSN`, `Char_Name`, `Char_AdminName`, `Char_DonatorTag`, `Char_Admin`, `Char_Apprentice`, `Char_Steward`, `Char_StewTime`, `Char_VIP`, `Char_VIPTime`, `Char_Money`, `Char_DirtyMoney`, `Char_BankMoney`, `Char_SlipSalary`, `Char_BankNumber`, `Char_WaterInBucket`, `Char_CasinoChip`, `Char_PosX`, `Char_PosY`, `Char_PosZ`, `Char_Health`, `Char_Armor`, `Char_WID`, `Char_IntID`, `Char_Birthday`, `Char_Origin`, `Char_Gender`, `Char_BodyHeight`, `Char_BodyWeight`, `Char_Skin`, `Char_Level`, `Char_Uniform`, `Char_Job`, `Char_InDoor`, `Char_InHouse`, `Char_InBiz`, `Char_InRusun`, `Char_Hunger`, `Char_Thirst`, `Char_Stress`, `Char_Faction`, `Char_FactionRank`, `Char_Badge`, `Char_OnDuty`, `Char_UsingUniform`, `Char_UsingPoliceVest`, `Char_Family`, `Char_FamilyRank`, `Char_Jailed`, `Char_JailCell`, `Char_JailAdmin`, `Char_JailTime`, `Char_JailDur`, `Char_JailReason`, `Char_JailFine`, `Char_Arrest`, `Char_ArrestTime`, `Char_ComServing`, `Char_Warn`, `Char_DinarPoints`, `Char_TogPM`, `Char_TogGOOC`, `Char_TogLogin`, `Char_TogLevel`, `Char_TogAdv`, `Char_TogAdmCmd`, `Char_TogMoneyTD`, `Char_XmasGiftTime`, `Char_RenderSetting`, `Char_Radio`, `Char_Earphone`, `Char_Boombox`, `Char_HuntingRifle`, `Char_HasGudangID`, `Char_GudangRentTime`, `Char_Knockdown`, `Char_KnockdownTime`, `Char_KTPTime`, `Char_GVL1Lic`, `Char_GVL1LicTime`, `Char_GVL2Lic`, `Char_GVL2LicTime`, `Char_MBLic`, `Char_MBLicTime`, `Char_BLic`, `Char_BLicTime`, `Char_Air1Lic`, `Char_Air1LicTime`, `Char_Air2Lic`, `Char_Air2LicTime`, `Char_FirearmLic`, `Char_FirearmLicTime`, `Char_HuntingLic`, `Char_HuntingLicTime`, `Char_SPClaimed`, `Char_MowingDelay`, `Char_SweeperDelay`, `Char_ForkliftDelay`, `Char_TrashCollectorDelay`, `Char_PizzaDelay`, `Char_TaxMinute`, `Char_HouseSharedID`, `Char_TutorialPassed`, `Char_Hours`, `Char_Minutes`, `Char_Seconds`, `Char_KTP`, `Char_DCTime`, `Char_FightStyle`, `Char_UCP`) VALUES
(7, '2026-05-15 01:44:19', '2026-05-27 16:18:52', '127.0.0.1', 153122685, 'Alvin_Ytp', 'Vynyt', '', 6, 0, 0, 0, 0, 0, 88020, 0, 100000, 250, 660741, 0, 86400, 1517.96, -2216.59, 14.047, 149, 0, 0, 0, '20/07/2000', 'Indonesia', 1, 170, 54, 2, 11, 183, 11, -1, -1, -1, -1, 75, 48, 48, 4, 4, 0, 0, 0, 0, -1, 0, 0, -1, '', 0, 0, '', 0, 0, 0, 0, 0, 25, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1782182362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 551, -1, 0, 54, 7, 22, 1, 0, 4, 'Vynyt'),
(8, '2026-05-29 08:55:27', '2026-05-30 09:30:29', '127.0.0.1', 574918513, 'Nugrhh_Ganteng', 'Nugrhh', '', 6, 0, 0, 0, 3, 0, 99989599, 0, 15406, 0, 914678, 0, 0, -2114.3, -2343.05, 30.969, 250, 0, 0, 0, '15/12/2011', 'Indonesia', 1, 160, 45, 59, 1, 1, 0, -1, -1, -1, -1, 10, 37, 0, 1, 16, 0, 0, 0, 0, -1, 0, 0, -1, '', 0, 0, '', 0, 0, 0, 0, 0, 25, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 179, -1, 0, 2, 56, 6, 0, 0, 4, 'Nugrhh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `player_clothes`
--

CREATE TABLE `player_clothes` (
  `ID` int(11) NOT NULL,
  `Owner` int(11) NOT NULL DEFAULT 0,
  `Name` varchar(34) NOT NULL DEFAULT '',
  `Skin` int(10) UNSIGNED NOT NULL,
  `Toys0` int(11) NOT NULL DEFAULT 0,
  `Toys1` int(11) NOT NULL DEFAULT 0,
  `Toys2` int(11) NOT NULL DEFAULT 0,
  `Toys3` int(11) NOT NULL DEFAULT 0,
  `Bone0` int(11) NOT NULL DEFAULT 1,
  `Bone1` int(11) NOT NULL DEFAULT 1,
  `Bone2` int(11) NOT NULL DEFAULT 1,
  `Bone3` int(11) NOT NULL DEFAULT 1,
  `ToysX_0` float NOT NULL DEFAULT 0,
  `ToysY_0` float NOT NULL DEFAULT 0,
  `ToysZ_0` float NOT NULL DEFAULT 0,
  `ToysRX_0` float NOT NULL DEFAULT 0,
  `ToysRY_0` float NOT NULL DEFAULT 0,
  `ToysRZ_0` float NOT NULL DEFAULT 0,
  `ToysSX_0` float NOT NULL DEFAULT 0,
  `ToysSY_0` float NOT NULL DEFAULT 0,
  `ToysSZ_0` float NOT NULL DEFAULT 0,
  `ToysX_1` float NOT NULL DEFAULT 0,
  `ToysY_1` float NOT NULL DEFAULT 0,
  `ToysZ_1` float NOT NULL DEFAULT 0,
  `ToysRX_1` float NOT NULL DEFAULT 0,
  `ToysRY_1` float NOT NULL DEFAULT 0,
  `ToysRZ_1` float NOT NULL DEFAULT 0,
  `ToysSX_1` float NOT NULL DEFAULT 0,
  `ToysSY_1` float NOT NULL DEFAULT 0,
  `ToysSZ_1` float NOT NULL DEFAULT 0,
  `ToysX_2` float NOT NULL DEFAULT 0,
  `ToysY_2` float NOT NULL DEFAULT 0,
  `ToysZ_2` float NOT NULL DEFAULT 0,
  `ToysRX_2` float NOT NULL DEFAULT 0,
  `ToysRY_2` float NOT NULL DEFAULT 0,
  `ToysRZ_2` float NOT NULL DEFAULT 0,
  `ToysSX_2` float NOT NULL DEFAULT 0,
  `ToysSY_2` float NOT NULL DEFAULT 0,
  `ToysSZ_2` float NOT NULL DEFAULT 0,
  `ToysX_3` float NOT NULL DEFAULT 0,
  `ToysY_3` float NOT NULL DEFAULT 0,
  `ToysZ_3` float NOT NULL DEFAULT 0,
  `ToysRX_3` float NOT NULL DEFAULT 0,
  `ToysRY_3` float NOT NULL DEFAULT 0,
  `ToysRZ_3` float NOT NULL DEFAULT 0,
  `ToysSX_3` float NOT NULL DEFAULT 0,
  `ToysSY_3` float NOT NULL DEFAULT 0,
  `ToysSZ_3` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `player_fishes`
--

CREATE TABLE `player_fishes` (
  `ID` int(11) NOT NULL,
  `Owner` int(11) NOT NULL DEFAULT 0,
  `Weight` int(11) NOT NULL DEFAULT 0,
  `Type` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `player_phones`
--

CREATE TABLE `player_phones` (
  `ID` int(10) UNSIGNED NOT NULL,
  `phoneOwner` int(11) NOT NULL DEFAULT -1,
  `phoneOwnerName` varchar(24) NOT NULL DEFAULT '',
  `phoneNumber` varchar(13) NOT NULL DEFAULT '',
  `phoneWallpaper` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `WhatsappInstalled` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SpotifyInstalled` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TwitterInstalled` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `YellowInstalled` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `UberInstalled` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TwitterLoggedIn` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `player_phones`
--

INSERT INTO `player_phones` (`ID`, `phoneOwner`, `phoneOwnerName`, `phoneNumber`, `phoneWallpaper`, `WhatsappInstalled`, `SpotifyInstalled`, `TwitterInstalled`, `YellowInstalled`, `UberInstalled`, `TwitterLoggedIn`) VALUES
(1, 1, 'Ryuxi Mozaya', '08281252004', 5, 1, 1, 1, 1, 1, 0),
(2, 2, 'Tatang Saepudin', '08288095439', 5, 1, 0, 0, 0, 0, 0),
(3, 3, 'Jajang Sutanto', '08284611605', 5, 0, 0, 0, 0, 0, 0),
(4, 4, 'TOD ANJASSS', '08288956403', 5, 0, 0, 0, 0, 0, 0),
(5, 5, 'Anjassss Pukimay', '08284922532', 5, 0, 0, 0, 0, 0, 0),
(6, 6, 'Kont WKWK', '08284331877', 5, 0, 0, 0, 0, 0, 0),
(7, 7, 'Alvin Ytp', '08281993192', 5, 1, 1, 0, 0, 0, 0),
(8, 8, 'Nugrhh Ganteng', '08288929768', 5, 1, 1, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `player_toys`
--

CREATE TABLE `player_toys` (
  `Id` int(11) NOT NULL,
  `Owner` varchar(40) NOT NULL DEFAULT '',
  `Slot0_Model` int(11) NOT NULL DEFAULT 0,
  `Slot0_Bone` int(11) NOT NULL DEFAULT 0,
  `Slot0_XPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_YPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_ZPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_XRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_YRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_ZRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_XScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_YScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_ZScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_Color1` varchar(32) NOT NULL DEFAULT '0x00000000',
  `Slot0_Color2` varchar(32) NOT NULL DEFAULT '0x00000000',
  `Slot1_Model` int(11) NOT NULL DEFAULT 0,
  `Slot1_Bone` int(11) NOT NULL DEFAULT 0,
  `Slot1_XPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_YPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_ZPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_XRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_YRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_ZRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_XScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_YScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_ZScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_Color1` varchar(32) NOT NULL DEFAULT '0x00000000',
  `Slot1_Color2` varchar(32) NOT NULL DEFAULT '0x00000000',
  `Slot2_Model` int(11) NOT NULL DEFAULT 0,
  `Slot2_Bone` int(11) NOT NULL DEFAULT 0,
  `Slot2_XPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_YPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_ZPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_XRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_YRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_ZRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_XScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_YScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_ZScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_Color1` varchar(32) NOT NULL DEFAULT '0x00000000',
  `Slot2_Color2` varchar(32) NOT NULL DEFAULT '0x00000000',
  `Slot3_Model` int(11) NOT NULL DEFAULT 0,
  `Slot3_Bone` int(11) NOT NULL DEFAULT 0,
  `Slot3_XPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_YPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_ZPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_XRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_YRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_ZRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_XScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_YScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_ZScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_Color1` varchar(32) NOT NULL DEFAULT '0x00000000',
  `Slot3_Color2` varchar(32) NOT NULL DEFAULT '0x00000000',
  `Slot4_Model` int(11) NOT NULL DEFAULT 0,
  `Slot4_Bone` int(11) NOT NULL DEFAULT 0,
  `Slot4_XPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_YPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_ZPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_XRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_YRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_ZRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_XScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_YScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_ZScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_Color1` varchar(32) NOT NULL DEFAULT '0x00000000',
  `Slot4_Color2` varchar(32) NOT NULL DEFAULT '0x00000000',
  `Slot5_Model` int(11) NOT NULL DEFAULT 0,
  `Slot5_Bone` int(11) NOT NULL DEFAULT 0,
  `Slot5_XPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_YPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_ZPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_XRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_YRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_ZRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_XScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_YScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_ZScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_Color1` varchar(32) NOT NULL DEFAULT '0x00000000',
  `Slot5_Color2` varchar(32) NOT NULL DEFAULT '0x00000000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `player_twitter`
--

CREATE TABLE `player_twitter` (
  `ID` int(11) NOT NULL,
  `OwnerID` int(11) NOT NULL DEFAULT 0,
  `Username` varchar(24) NOT NULL DEFAULT '',
  `Password` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `player_twitter`
--

INSERT INTO `player_twitter` (`ID`, `OwnerID`, `Username`, `Password`) VALUES
(1, 8, 'Nugrhhh', 'nugrhh2011');

-- --------------------------------------------------------

--
-- Struktur dari tabel `player_ucp`
--

CREATE TABLE `player_ucp` (
  `ID` int(11) NOT NULL,
  `UCP` varchar(22) NOT NULL,
  `IP` varchar(24) NOT NULL DEFAULT '',
  `Password` varchar(64) NOT NULL,
  `claimedSP` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FreeCar` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Blocked` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Block_Duration` bigint(20) DEFAULT 0,
  `Block_Reason` varchar(128) NOT NULL DEFAULT '',
  `Block_AdminName` varchar(24) NOT NULL DEFAULT '',
  `Block_IssuedDate` varchar(30) NOT NULL DEFAULT '',
  `Register_Date` varchar(30) NOT NULL DEFAULT '',
  `Last_Login` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `player_ucp`
--

INSERT INTO `player_ucp` (`ID`, `UCP`, `IP`, `Password`, `claimedSP`, `FreeCar`, `Blocked`, `Block_Duration`, `Block_Reason`, `Block_AdminName`, `Block_IssuedDate`, `Register_Date`, `Last_Login`) VALUES
(6, 'Nugrhh', '127.0.0.1', '$2y$12$AZJ/gV88ghkycYbYPurpRO97sR1ZyahkOzCXxBldgkbJdUjcuZnuS', 1, 0, 0, 0, '', '', '', '2026-05-29 08:55:15', '2026-05-29 08:55:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `player_vehicles`
--

CREATE TABLE `player_vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `PVeh_Owner` int(11) NOT NULL DEFAULT -1,
  `PVeh_ModelID` int(11) NOT NULL DEFAULT 0,
  `PVeh_Price` int(11) NOT NULL DEFAULT 1000,
  `PVeh_Parked` int(11) NOT NULL DEFAULT -1,
  `PVeh_Familied` int(11) NOT NULL DEFAULT -1,
  `PVeh_Housed` int(11) NOT NULL DEFAULT -1,
  `PVeh_RentTime` int(11) NOT NULL DEFAULT 0,
  `PVeh_Rental` int(11) NOT NULL DEFAULT 0,
  `PVeh_Plate` varchar(32) NOT NULL DEFAULT '-',
  `PVeh_PlateTime` int(11) NOT NULL DEFAULT 0,
  `PVeh_Health` float NOT NULL DEFAULT 1000,
  `PVeh_BodyUpgraded` int(11) NOT NULL DEFAULT 0,
  `PVeh_BodyBroken` int(11) NOT NULL DEFAULT 0,
  `PVeh_MaxHealth` float NOT NULL DEFAULT 1000,
  `PVeh_Fuel` int(11) NOT NULL DEFAULT 100,
  `PVeh_Locked` tinyint(4) NOT NULL DEFAULT 0,
  `PVeh_Mod0` int(11) NOT NULL DEFAULT 0,
  `PVeh_Mod1` int(11) NOT NULL DEFAULT 0,
  `PVeh_Mod2` int(11) NOT NULL DEFAULT 0,
  `PVeh_Mod3` int(11) NOT NULL DEFAULT 0,
  `PVeh_Mod4` int(11) NOT NULL DEFAULT 0,
  `PVeh_Mod5` int(11) NOT NULL DEFAULT 0,
  `PVeh_Mod6` int(11) NOT NULL DEFAULT 0,
  `PVeh_Mod7` int(11) NOT NULL DEFAULT 0,
  `PVeh_Mod8` int(11) NOT NULL DEFAULT 0,
  `PVeh_Mod9` int(11) NOT NULL DEFAULT 0,
  `PVeh_Mod10` int(11) NOT NULL DEFAULT 0,
  `PVeh_Mod11` int(11) NOT NULL DEFAULT 0,
  `PVeh_Mod12` int(11) NOT NULL DEFAULT 0,
  `PVeh_Mod13` int(11) NOT NULL DEFAULT 0,
  `PVeh_Mod14` int(11) NOT NULL DEFAULT 0,
  `PVeh_Mod15` int(11) NOT NULL DEFAULT 0,
  `PVeh_Mod16` int(11) NOT NULL DEFAULT 0,
  `PVeh_Damage0` int(11) NOT NULL DEFAULT 0,
  `PVeh_Damage1` int(11) NOT NULL DEFAULT 0,
  `PVeh_Damage2` int(11) NOT NULL DEFAULT 0,
  `PVeh_Damage3` int(11) NOT NULL DEFAULT 0,
  `PVeh_PosX` float DEFAULT 0,
  `PVeh_PosY` float DEFAULT 0,
  `PVeh_PosZ` float DEFAULT 0,
  `PVeh_PosA` float DEFAULT 0,
  `PVeh_Neon` int(11) NOT NULL DEFAULT 0,
  `PVeh_Paintjob` int(11) NOT NULL DEFAULT -1,
  `PVeh_Color1` int(11) NOT NULL DEFAULT 0,
  `PVeh_Color2` int(11) NOT NULL DEFAULT 0,
  `PVeh_World` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `PVeh_Interior` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `PVeh_Impounded` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PVeh_ImpoundDuration` bigint(20) NOT NULL DEFAULT 0,
  `PVeh_ImpoundFee` int(11) NOT NULL DEFAULT 0,
  `PVeh_ImpoundReason` char(128) NOT NULL DEFAULT '',
  `PVeh_Insuranced` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PVeh_TireLocked` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PVeh_DCTime` bigint(32) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `player_vehicles`
--

INSERT INTO `player_vehicles` (`id`, `PVeh_Owner`, `PVeh_ModelID`, `PVeh_Price`, `PVeh_Parked`, `PVeh_Familied`, `PVeh_Housed`, `PVeh_RentTime`, `PVeh_Rental`, `PVeh_Plate`, `PVeh_PlateTime`, `PVeh_Health`, `PVeh_BodyUpgraded`, `PVeh_BodyBroken`, `PVeh_MaxHealth`, `PVeh_Fuel`, `PVeh_Locked`, `PVeh_Mod0`, `PVeh_Mod1`, `PVeh_Mod2`, `PVeh_Mod3`, `PVeh_Mod4`, `PVeh_Mod5`, `PVeh_Mod6`, `PVeh_Mod7`, `PVeh_Mod8`, `PVeh_Mod9`, `PVeh_Mod10`, `PVeh_Mod11`, `PVeh_Mod12`, `PVeh_Mod13`, `PVeh_Mod14`, `PVeh_Mod15`, `PVeh_Mod16`, `PVeh_Damage0`, `PVeh_Damage1`, `PVeh_Damage2`, `PVeh_Damage3`, `PVeh_PosX`, `PVeh_PosY`, `PVeh_PosZ`, `PVeh_PosA`, `PVeh_Neon`, `PVeh_Paintjob`, `PVeh_Color1`, `PVeh_Color2`, `PVeh_World`, `PVeh_Interior`, `PVeh_Impounded`, `PVeh_ImpoundDuration`, `PVeh_ImpoundFee`, `PVeh_ImpoundReason`, `PVeh_Insuranced`, `PVeh_TireLocked`, `PVeh_DCTime`) VALUES
(1, 1, 560, 250000, -1, -1, -1, 0, -1, '-', 0, 1000, 0, 0, 1000, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -180.53, -1123.2, 4.03, 241.98, 0, -1, 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0),
(2, 2, 453, 250000, -1, -1, -1, 1748882860, 0, 'RENTAL', 1748882860, 1000, 0, 0, 1000, 97, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -47.51, -1869.41, -0.32, 128.31, 0, -1, 84, 182, 0, 0, 0, 0, 0, '', 0, 0, 0),
(3, 4, 462, 250000, -1, -1, -1, 1749177649, 3, 'RENTAL', 1749177649, 886.92, 0, 0, 1000, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1239.34, -2036.82, 59.43, 0.03, 0, -1, 56, 6, 0, 0, 0, 0, 0, '', 0, 0, 0),
(4, 6, 560, 250000, -1, -1, -1, 0, -1, '-', 0, 1000, 0, 0, 1000, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067.65, -1868.25, 13.33, 359.6, 0, -1, 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0),
(6, 7, 602, 200000, -1, -1, -1, 0, -1, '-', 0, 650, 0, 1, 1000, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1560.34, -2257.69, 13.31, 262.3, 0, -1, 3, 3, 0, 0, 0, 0, 0, '', 0, 0, 0),
(11, 7, 545, 105000, -1, -1, -1, 0, -1, '-', 0, 989.56, 0, 1, 1000, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2097152, 0, 0, 0, 411.8, -1317.43, 14.7, 323.55, 0, -1, 1, 1, 0, 0, 0, 0, 0, '', 1, 0, 0),
(18, 7, 462, 0, -1, -1, -1, 1779871017, 3, 'RENTAL', 1779871017, 1000, 0, 0, 1000, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1551.89, -2258, 13.12, 79.38, 0, -1, 15, 237, 0, 0, 0, 0, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `player_warns`
--

CREATE TABLE `player_warns` (
  `ID` int(11) NOT NULL,
  `Owner_ID` int(11) NOT NULL,
  `Date` varchar(100) NOT NULL DEFAULT '',
  `Date_Time` varchar(100) NOT NULL DEFAULT '',
  `Issuer` varchar(25) NOT NULL DEFAULT '',
  `Type` int(11) NOT NULL,
  `Reason` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `player_weapons`
--

CREATE TABLE `player_weapons` (
  `ID` int(11) UNSIGNED NOT NULL,
  `Owner_ID` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `Type1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Type2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Type3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Type4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Type5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Type6` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Type7` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Type8` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Type9` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Type10` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Type11` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Type12` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Type13` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun6` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun7` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun8` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun9` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun10` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun11` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun12` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Gun13` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo6` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo7` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo8` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo9` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo10` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo11` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo12` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Ammo13` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `player_weapons`
--

INSERT INTO `player_weapons` (`ID`, `Owner_ID`, `Type1`, `Type2`, `Type3`, `Type4`, `Type5`, `Type6`, `Type7`, `Type8`, `Type9`, `Type10`, `Type11`, `Type12`, `Type13`, `Gun1`, `Gun2`, `Gun3`, `Gun4`, `Gun5`, `Gun6`, `Gun7`, `Gun8`, `Gun9`, `Gun10`, `Gun11`, `Gun12`, `Gun13`, `Ammo1`, `Ammo2`, `Ammo3`, `Ammo4`, `Ammo5`, `Ammo6`, `Ammo7`, `Ammo8`, `Ammo9`, `Ammo10`, `Ammo11`, `Ammo12`, `Ammo13`) VALUES
(1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 7, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `public_garages`
--

CREATE TABLE `public_garages` (
  `ID` int(11) NOT NULL,
  `PG_Name` varchar(64) NOT NULL DEFAULT '',
  `PG_GreenX` float DEFAULT 0,
  `PG_GreenY` float DEFAULT 0,
  `PG_GreenZ` float DEFAULT 0,
  `PG_GreenWorld` int(11) DEFAULT 0,
  `PG_GreenInterior` int(11) DEFAULT 0,
  `PG_RedX` float DEFAULT 0,
  `PG_RedY` float DEFAULT 0,
  `PG_RedZ` float DEFAULT 0,
  `PG_RedWorld` int(11) DEFAULT 0,
  `PG_RedInterior` int(11) DEFAULT 0,
  `PG_SpawnX` float DEFAULT 0,
  `PG_SpawnY` float DEFAULT 0,
  `PG_SpawnZ` float DEFAULT 0,
  `PG_SpawnA` float DEFAULT 0,
  `PG_SpawnWorld` int(11) DEFAULT 0,
  `PG_SpawnInterior` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `public_garages`
--

INSERT INTO `public_garages` (`ID`, `PG_Name`, `PG_GreenX`, `PG_GreenY`, `PG_GreenZ`, `PG_GreenWorld`, `PG_GreenInterior`, `PG_RedX`, `PG_RedY`, `PG_RedZ`, `PG_RedWorld`, `PG_RedInterior`, `PG_SpawnX`, `PG_SpawnY`, `PG_SpawnZ`, `PG_SpawnA`, `PG_SpawnWorld`, `PG_SpawnInterior`) VALUES
(0, 'Market', 0, 0, 0, 0, 0, 993.232, -1355.7, 13.3979, 0, 0, 1012.17, -1361.47, 13.3979, 359.821, 0, 0),
(1, 'Truk Depot', 0, 0, 0, 0, 0, -1721.85, 84.7258, 3.54956, 0, 0, -1705.44, 79.3031, 3.55469, 132.771, 0, 0),
(2, 'Idlewood', 0, 0, 0, 0, 0, 1921.03, -1792.66, 13.3828, 0, 0, 1910.8, -1776.88, 13.3828, 359.369, 0, 0),
(3, 'GARKOT UBER', 0, 0, 0, 0, 0, -2003.43, -970.025, 32.1719, 0, 0, -2004.95, -982.451, 32.1719, 275.342, 0, 0),
(4, 'Pertambangan', 0, 0, 0, 0, 0, 598.506, 848.692, -43.1885, 0, 0, 578.315, 847.553, -42.3713, 354.73, 0, 0),
(5, 'BALAI KOTA', 0, 0, 0, 0, 0, 1277.56, -2035.7, 58.9971, 0, 0, 1269.5, -2010.92, 59.1485, 180.108, 0, 0),
(6, 'Garasi Pencucian Batu', 0, 0, 0, 0, 0, -82.279, 1341.66, 10.8472, 0, 0, -94.7863, 1339.61, 10.4277, 5.36735, 0, 0),
(7, 'garasi umum', 0, 0, 0, 0, 0, 1560.04, -2250.8, 13.5469, 0, 0, 1560.13, -2257.61, 13.5461, 262.084, 0, 0),
(9, 'Peternak', 0, 0, 0, 0, 0, 323.233, 1161.38, 8.54939, 0, 0, 334.424, 1175.31, 8.36561, 180.242, 0, 0),
(10, 'garasi umum', 0, 0, 0, 0, 0, -1108.17, -1620.99, 76.3672, 0, 0, -1108.33, -1655.27, 76.3672, 270.677, 0, 0),
(11, 'Bengkel Bennys LV', 0, 0, 0, 0, 0, 1318.2, 770.814, 10.8875, 0, 0, 1330.04, 770.366, 10.8875, 179.685, 0, 0),
(12, 'Carnaval', 0, 0, 0, 0, 0, 429.034, -1901.62, 7.80119, 0, 0, 404.268, -1885.47, 7.79535, 180.758, 0, 0),
(13, 'Ocean Docks', 0, 0, 0, 0, 0, 2483.59, -2686.13, 13.6566, 0, 0, 2475.64, -2685.77, 13.6573, 359.097, 0, 0),
(14, 'Peleburan Batu', 0, 0, 0, 0, 0, 2212.63, -2267.39, 13.5547, 0, 0, 2197.82, -2269.12, 13.5547, 315.435, 0, 0),
(15, 'Kandang Ayam', 0, 0, 0, 0, 0, 1568.94, 41.734, 24.8363, 0, 0, 1581.89, 46.1326, 25.1708, 97.8329, 0, 0),
(16, 'Angel Pine', 0, 0, 0, 0, 0, -2152.4, -2441.84, 30.625, 0, 0, -2136.69, -2455.75, 30.625, 232.095, 0, 0),
(17, 'Pemotongan Kayu', 0, 0, 0, 0, 0, -1434.56, -1509.54, 101.74, 0, 0, -1434.05, -1521.12, 101.75, 273.259, 0, 0),
(18, 'Tambang Minyak', 0, 0, 0, 0, 0, 623.387, 1435.76, 9.79795, 0, 0, 625.261, 1455.79, 8.7401, 351.097, 0, 0),
(19, 'Pengolahan Minyak', 0, 0, 0, 0, 0, -1035.05, -723.523, 32.0078, 0, 0, -1024.88, -714.271, 32.0078, 271.823, 0, 0),
(20, 'Pengambilan Wool', 0, 0, 0, 0, 0, 1902.1, 176.62, 37.1413, 0, 0, 1899.17, 189.18, 35.8273, 78.6623, 0, 0),
(21, 'Fisher Docks', 0, 0, 0, 0, 0, 2861.16, -2014.62, 10.9341, 0, 0, 2854.49, -2051.06, 10.9291, 90.8209, 0, 0),
(22, 'Angkot Job', 0, 0, 0, 0, 0, 1641.8, -1458.95, 13.5469, 0, 0, 1641.1, -1452.8, 13.5469, 267.764, 0, 0),
(23, 'Pertanian', 0, 0, 0, 0, 0, -379.081, -1451.3, 25.7266, 0, 0, -373.418, -1451.07, 25.7266, 4.66816, 0, 0),
(24, 'Pengolahan Tani', 0, 0, 0, 0, 0, -76.8472, 4.06919, 3.11719, 0, 0, -83.6485, -12.5414, 3.11719, 251.462, 0, 0),
(25, 'Pekerjaan Electric', 0, 0, 0, 0, 0, -2395.66, -608.246, 132.648, 0, 0, -2399.18, -592.926, 132.648, 124.626, 0, 0),
(26, 'Bank Pacific', 0, 0, 0, 0, 0, 1547.18, -1024.36, 23.9062, 0, 0, 1558.63, -1014.11, 23.9062, 179.238, 0, 0),
(27, 'SCHOOL', 0, 0, 0, 0, 0, 1279.52, -1347.16, 13.3671, 0, 0, 1272.73, -1337.56, 13.3454, 94.5722, 0, 0),
(28, '+Arivena Resto', 0, 0, 0, 0, 0, -291.146, 1312.76, 54.1827, 0, 0, -294.322, 1322.7, 54.4039, 84.1827, 0, 0),
(29, 'GARKOT PEWARTA', 0, 0, 0, 0, 0, 611.857, -1301.89, 14.7313, 0, 0, 603.762, -1286.76, 15.6267, 279.622, 0, 0),
(30, 'SIM', 0, 0, 0, 0, 0, 2106.73, -1364.8, 23.9844, 0, 0, 2106.54, -1371.07, 23.9844, 182.146, 0, 0),
(31, 'Garasi umum SAMSAT', 0, 0, 0, 0, 0, 991.513, 2413.68, 10.8549, 0, 0, 989.725, 2418.28, 10.8549, 90.9031, 0, 0),
(32, 'Porter', 0, 0, 0, 0, 0, 2266.03, 613.384, 10.8203, 0, 0, 2249.49, 615.731, 10.8203, 359.037, 0, 0),
(33, 'RS', 0, 0, 0, 0, 0, 1715.33, -1140.75, 24.0852, 0, 0, 1695.98, -1143.32, 24.0527, 181.51, 0, 0),
(34, 'GARKOT', 0, 0, 0, 0, 0, 1916.43, 708.385, 10.5899, 0, 0, 1895.85, 702.995, 10.8203, 89.7841, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `redeem`
--

CREATE TABLE `redeem` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Text` varchar(32) NOT NULL DEFAULT '',
  `Name` varchar(64) NOT NULL DEFAULT '',
  `VIP` int(11) NOT NULL DEFAULT 0,
  `Money` int(11) NOT NULL DEFAULT 0,
  `Item` varchar(32) NOT NULL DEFAULT '',
  `Quantity` int(11) NOT NULL DEFAULT 0,
  `VehicleID` int(11) NOT NULL DEFAULT 0,
  `Expired` int(11) NOT NULL DEFAULT 0,
  `MaxClaim` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rentals`
--

CREATE TABLE `rentals` (
  `ID` int(11) NOT NULL,
  `Name` varchar(64) DEFAULT '',
  `Model1` int(10) UNSIGNED DEFAULT 462,
  `Model2` int(10) UNSIGNED DEFAULT 586,
  `Cost1` int(10) UNSIGNED DEFAULT 0,
  `Cost2` int(10) UNSIGNED DEFAULT 0,
  `PosX` float DEFAULT 0,
  `PosY` float DEFAULT 0,
  `PosZ` float DEFAULT 0,
  `SpawnX` float DEFAULT 0,
  `SpawnY` float DEFAULT 0,
  `SpawnZ` float DEFAULT 0,
  `SpawnA` float DEFAULT 0,
  `World` int(11) DEFAULT 0,
  `Interior` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `rentals`
--

INSERT INTO `rentals` (`ID`, `Name`, `Model1`, `Model2`, `Cost1`, `Cost2`, `PosX`, `PosY`, `PosZ`, `SpawnX`, `SpawnY`, `SpawnZ`, `SpawnA`, `World`, `Interior`) VALUES
(0, 'Boat Rental Point', 453, 452, 4000, 8000, 149.252, -1817.89, 3.74675, 136.292, -1822.68, -0.563881, 179.157, 0, 0),
(2, 'Santa Marina Beach Rental', 462, 586, 100, 250, 376.14, -1998.92, 7.83594, 373.192, -1999.02, 7.67188, 2.13368, 0, 0),
(3, 'LS Airport Rental', 462, 586, 5000, 10000, 1570.2, -2241.99, 13.5379, 1561.81, -2241.09, 13.5469, 89.9275, 0, 0),
(4, 'Market Station Rental', 462, 586, 5000, 10000, 809.794, -1353.78, 13.54, 801.893, -1353.06, 13.3906, 359.688, 0, 0),
(7, 'Vehicle Rental Point', 462, 586, 5000, 7500, -1982.96, 104.575, 27.6875, -1990.36, 100.373, 27.5391, 88.4312, 0, 0),
(8, 'Bayside Rental Point', 462, 586, 5000, 7500, -2340.67, 2339.68, 4.98438, -2340.54, 2347.72, 5.07133, 358.256, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roadsigns`
--

CREATE TABLE `roadsigns` (
  `id` int(11) NOT NULL,
  `objid` int(11) DEFAULT NULL,
  `posx` float NOT NULL,
  `posy` float NOT NULL,
  `posz` float NOT NULL,
  `posrx` float NOT NULL,
  `posry` float NOT NULL,
  `posrz` float NOT NULL,
  `interior` int(11) NOT NULL DEFAULT 0,
  `world` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `roadsigns`
--

INSERT INTO `roadsigns` (`id`, `objid`, `posx`, `posy`, `posz`, `posrx`, `posry`, `posrz`, `interior`, `world`) VALUES
(0, 19966, -180.124, 1154.19, 18.7057, 0, 0, 90.5, 0, 0),
(1, 19966, -59.6318, 1188.28, 18.5695, 0, 0, 0, 0, 0),
(2, 19966, -55.1893, 1154.16, 18.6969, 0, 0, 87.4, 0, 0),
(3, 19966, 112.286, 1191.66, 16.8649, 0, 0, -110.7, 0, 0),
(4, 19976, 175, 1138.15, 13.2398, 0, 0, -128, 0, 0),
(5, 19976, 81.6898, 1204.19, 17.6654, 0, 0, 88.9, 0, 0),
(6, 19976, 55.7908, 1192.31, 17.7132, 0, 0, -93.3, 0, 0),
(7, 19964, -29.9266, 1203.98, 19.1394, 0, 0, 90.6, 0, 0),
(8, 19965, 22.756, 1192.77, 18.0796, 0, 0, -87.8, 0, 0),
(9, 19968, -56.044, 1203.94, 18.3426, 0, 0, 0, 0, 0),
(10, 19969, -95.7663, 1203.8, 18.6875, 0, 0, 0, 0, 0),
(11, 19978, -95.7575, 1203.78, 18.048, 0, 0, -1.1, 0, 0),
(12, 19978, -56.0438, 1203.93, 17.6602, 0, 0, 0, 0, 0),
(13, 19962, -104.663, 1203.97, 18.6846, 0, 0, 91.1, 0, 0),
(14, 19962, -126.794, 1192.83, 18.6951, 0, 0, -88.5, 0, 0),
(15, 19962, -109.919, 1187.42, 18.8061, 0, 0, 0.4, 0, 0),
(16, 19962, -121.334, 1209.55, 18.4879, 0, 0, -178.6, 0, 0),
(17, 19962, -71.1879, 1109.82, 18.7022, 0, 0, -179, 0, 0),
(18, 19962, -76.7352, 1092.83, 18.7149, 0, 0, -89.7, 0, 0),
(19, 19962, -59.7567, 1086.94, 18.6922, 0, 0, 0.1, 0, 0),
(20, 19962, -54.0235, 1104.01, 18.7088, 0, 0, 91.9, 0, 0),
(21, 19966, -290.474, 820.704, 12.9841, 0, 0, 111.3, 0, 0),
(22, 19966, -111.675, 817.975, 19.1281, 0, 0, 21.8, 0, 0),
(23, 1427, 2010.07, -1271.71, 23.2603, 0, 0, -38.3, 0, 0),
(24, 3264, 2008.64, -1271.05, 22.9503, 0, 0, -178.4, 0, 0),
(25, 19470, 2008.57, -1271.04, 25.3603, 0, 0, 92.8, 0, 0),
(26, 1282, 2007.81, -1270.7, 23.6044, 0, 0, 124, 0, 0),
(27, 1282, 967.938, -52.6541, 1000.72, 0, 0, 0, 3, 98),
(28, 1282, 967.916, -53.6126, 1000.69, 0, 0, 0, 3, 98),
(29, 3264, 968.393, -53.1121, 999.994, 0, 0, -89.7001, 3, 98),
(30, 19962, -2483.62, 2435.76, 15.1598, 0, 0, 106, 0, 0),
(31, 19966, -576.513, 1105.66, 10.0383, 0, 0, -56.5, 0, 0),
(32, 19966, -764.844, 729.253, 17.1403, 0, 0, 131.2, 0, 0),
(33, 19966, 230.619, 979.892, 27.1796, 0, 0, 110.8, 0, 0),
(34, 19966, 221.712, 961.344, 27.13, 0, 0, -69.7, 0, 0),
(35, 19962, 247.82, 938.353, 25.6635, 0, 0, 22.4, 0, 0),
(36, 19962, 205.282, 1005.96, 25.4246, 0, 0, -161.8, 0, 0),
(37, 19966, 180.857, 1097.52, 15.6034, 0, 0, -76.9, 0, 0),
(38, 19976, 185.469, 1158.37, 13.6163, 0, 0, 150.5, 0, 0),
(39, 19966, -79.1329, 1270.76, 11.8232, 0, 0, -178.3, 0, 0),
(40, 19966, -113.393, 1248.62, 15.7318, 0, 0, 7.2, 0, 0),
(41, 19987, -307.421, 1243.89, 22.4791, 0, 0, -104.7, 0, 0),
(42, 19990, -213.846, 1232.97, 22.1317, 0, 0, -84.3, 0, 0),
(43, 19987, -216.661, 1245.74, 22.1917, 0, 0, 91.2, 0, 0),
(44, 19990, -306.261, 1256.67, 22.463, 0, 0, 74, 0, 0),
(45, 19963, -184.96, 1187.74, 18.64, 0, 0, 0, 0, 0),
(46, 19962, -180.042, 1103.95, 18.6322, 0, 0, 90.4, 0, 0),
(47, 19962, -206.551, 1093, 18.6622, 0, 0, -90.7, 0, 0),
(48, 19962, -185.162, 1087.43, 18.6722, 0, 0, 0, 0, 0),
(49, 19962, -201.074, 1109.33, 18.6637, 0, 0, 179.9, 0, 0),
(50, 19966, -205.705, 1012.89, 18.6764, 0, 0, -88.8, 0, 0),
(51, 19966, 644.588, 1752.12, 3.63791, 0, 0, 66.8, 0, 0),
(52, 19966, -9.98852, 1088.13, 18.7222, 0, 0, 0, 0, 0),
(53, 19966, 824.277, 1720.09, 4.19752, 0, 0, -74.2, 0, 0),
(54, 19966, -285.57, 1057.77, 18.7522, 0, 0, -92.1, 0, 0),
(55, 19966, -311.515, 1088.34, 18.7022, 0, 0, 0, 0, 0),
(56, 19966, -285.64, 1142.67, 18.6922, 0, 0, -91.5001, 0, 0),
(57, 19966, 526.737, 1684.84, 10.5964, 0, 0, -154.2, 0, 0),
(58, 19966, 658.525, 1822.89, 4.43046, 0, 0, 78.7, 0, 0),
(59, 19990, 652.651, 1777.96, 4.19982, 0, 0, -11.1, 0, 0),
(60, 19966, 716.354, 1848.32, 4.57016, 0, 0, -13.7, 0, 0),
(61, 19966, 707.644, 1862.58, 4.45243, 0, 0, 174.9, 0, 0),
(62, 8548, 756.409, 1852.43, 5.94744, 0, 0, 72.6001, 0, 0),
(63, 8548, 752.458, 1920.98, 5.73846, 0, 0, 91.9, 0, 0),
(64, 8548, 727.296, 1909.03, 5.79623, 0, 0, -89, 0, 0),
(65, 19966, 668.367, 1920.95, 4.44905, 0, 0, 84.8, 0, 0),
(66, 19963, 718.945, 1898.35, 4.64422, 0, 0, 0, 0, 0),
(67, 19962, 707.265, 1873.31, 4.54905, 0, 0, 178.2, 0, 0),
(68, 19962, 713.242, 1825.01, 4.56788, 0, 0, -16.7, 0, 0),
(69, 19966, 664.826, 1869.36, 4.40873, 0, 0, 81.3, 0, 0),
(70, 19966, 804.813, 1909.7, 4.45097, 0, 0, -96.6, 0, 0),
(71, 19966, 805.883, 1800.96, 2.83993, 0, 0, -141.8, 0, 0),
(72, 19949, 797.972, 1813.54, 3.32583, 0, 0, -148.7, 0, 0),
(73, 19966, 695.613, 1851.96, 4.68381, 0, 0, -10.3, 0, 0),
(74, 19966, -2329.54, 2379.46, 4.82076, 0, 0, -35.8, 0, 0),
(75, 19966, -2555.55, 2337.03, 3.94398, 0, 0, 90, 0, 0),
(76, 19966, -2571.66, 2325.01, 3.94542, 0, 0, -90, 0, 0),
(77, 19966, -2557.74, 2321.07, 3.95465, 0, 0, -0.2, 0, 0),
(78, 19966, -2569.53, 2341.33, 3.98139, 0, 0, -179.7, 0, 0),
(79, 19966, -2553.04, 2397.35, 13.8502, 0, 0, -133, 0, 0),
(80, 19965, -2608.07, 2399.25, 10.6667, 0, 0, -7.3, 0, 0),
(81, 19966, -2608.15, 2337.3, 7.31559, 0, 0, 84.5, 0, 0),
(82, 19965, -2526.63, 2280.55, 3.95436, 0, 0, 62.7, 0, 0),
(83, 19966, -2474.26, 2254.72, 3.94436, 0, 0, -90.1001, 0, 0),
(84, 19966, -2440, 2439.62, 12.7675, 0, 0, 175.4, 0, 0),
(85, 19966, -1431.82, 2611.37, 54.806, 0, 0, -179.5, 0, 0),
(86, 19966, -1388.44, 2595.66, 54.9062, 0, 0, -91.4, 0, 0),
(87, 19966, -1352.61, 2640.09, 50.2735, 0, 0, -143.4, 0, 0),
(88, 19966, -1363.73, 2675.17, 50.6413, 0, 0, 124.7, 0, 0),
(89, 19966, -1299.6, 2663.46, 48.6585, 0, 0, -160.7, 0, 0),
(90, 19966, -1489.88, 2660.9, 54.786, 0, 0, 0, 0, 0),
(91, 19963, -1490.22, 2651.03, 54.796, 0, 0, 0, 0, 0),
(92, 19966, -1540.09, 2660.84, 54.786, 0, 0, 0, 0, 0),
(93, 19963, -1602.65, 2676.92, 53.8443, 0, 0, 86.7, 0, 0),
(94, 19966, -1622.26, 2676.58, 53.438, 0, 0, 103.3, 0, 0),
(95, 19966, -1627.8, 2718.34, 56.6971, 0, 0, 0, 0, 0),
(96, 19963, -1533.27, 2606.96, 54.8071, 0, 0, 89.1, 0, 0),
(97, 19962, -1508.71, 2595.57, 54.7949, 0, 0, -91.4999, 0, 0),
(98, 19962, -1478.73, 2606.87, 54.786, 0, 0, 85.9999, 0, 0),
(99, 19962, -1501.54, 2613.53, 54.826, 0, 0, 178, 0, 0),
(100, 19962, -1490.28, 2588.34, 54.7843, 0, 0, 0, 0, 0),
(101, 19966, -1218.9, 2678.4, 45.2134, 0, 0, 10.3, 0, 0),
(102, 19966, -851.163, 2719.62, 44.7412, 0, 0, -40.9, 0, 0),
(103, 19966, -771.702, 2723.6, 44.2938, 0, 0, -1.9, 0, 0),
(104, 19966, -780.093, 2736.79, 44.286, 0, 0, 173.3, 0, 0),
(105, 19965, -730.319, 2628.68, 65.3395, 0, 0, 10.6, 0, 0),
(106, 19966, -267.485, 2695.54, 61.6276, 0, 0, -93.0999, 0, 0),
(107, 19966, -251.346, 2690.88, 61.5903, 0, 0, 0, 0, 0),
(108, 19966, -246.876, 2706.93, 61.6398, 0, 0, 89.8, 0, 0),
(109, 19966, -262.891, 2711.92, 61.6476, 0, 0, -179.6, 0, 0),
(110, 19966, -197.36, 2695.43, 61.631, 0, 0, -91.7, 0, 0),
(111, 19966, -192.79, 2646.42, 62.1292, 0, 0, 176.6, 0, 0),
(112, 19966, -215.194, 2628.47, 61.9099, 0, 0, -1.5, 0, 0),
(113, 19966, -263.033, 2645.08, 61.5928, 0, 0, -175.6, 0, 0),
(114, 19966, -372.232, 2692.8, 62.8161, 0, 0, 117.7, 0, 0),
(115, 19966, -1186.69, 1804.96, 39.6908, 0, 0, -176.8, 0, 0),
(116, 19966, -1155.26, 1791.91, 38.9565, 0, 0, 47, 0, 0),
(117, 19992, -925.38, 1708.21, 26.71, 0, 0, -145.2, 0, 0),
(118, 19965, -961.166, 1732.97, 29.4631, 0, 0, 89.6, 0, 0),
(119, 19966, -854.725, 1622.37, 25.9544, 0, 0, 94.1, 0, 0),
(120, 19966, -858.924, 1600.44, 25.7269, 0, 0, -70.9001, 0, 0),
(121, 19966, -840.228, 1497.69, 17.8153, 0, 0, 89.7, 0, 0),
(122, 19976, -769.275, 1531.1, 26.045, 0, 0, -92.5, 0, 0),
(123, 19976, -798.117, 1583.06, 25.9449, 0, 0, 88.9, 0, 0),
(124, 19966, -776.771, 1582.58, 25.9539, 0, 0, 178.3, 0, 0),
(125, 19966, -807.179, 1618.75, 25.9691, 0, 0, 117.8, 0, 0),
(126, 19966, -842.558, 1463.63, 14.7052, 0, 0, 82.0001, 0, 0),
(127, 19966, -859.363, 1486.13, 17.1742, 0, 0, -123.3, 0, 0),
(128, 19992, -787.031, 1327.1, 12.9246, 0, 0, 27.6, 0, 0),
(129, 19988, -834.233, 1486.76, 16.9633, 0, 0, -89.9999, 0, 0),
(130, 19987, -772.347, 1542.85, 25.9383, 0, 0, 87.6, 0, 0),
(131, 19987, -795.574, 1571.62, 25.9381, 0, 0, -90.3, 0, 0),
(132, 19988, -764.247, 1519.68, 25.7293, 0, 0, 179.4, 0, 0),
(133, 19988, -842.936, 1611.3, 26.0816, 0, 0, -94, 0, 0),
(134, 19966, -1129.83, 1760.47, 35.0942, 0, 0, 17, 0, 0),
(135, 19966, -1487.08, 1838.89, 30.6158, 0, 0, 2.8, 0, 0),
(136, 19965, -1334.25, 1793.38, 27.9114, 0, 0, 66.1, 0, 0),
(137, 19948, -1663.98, 1834.78, 24.8785, 0, 0, 91.8, 0, 0),
(138, 19967, -1681.76, 1832.5, 24.4679, 0, 0, 8.6, 0, 0),
(139, 19966, -1695.22, 1830.85, 24.1486, 0, 0, -175.2, 0, 0),
(140, 19949, -1707.25, 1814.92, 23.9555, 0, 0, -79.7, 0, 0),
(141, 19971, -1527.12, 1849.49, 28.2534, 0, 0, 93.3, 0, 0),
(142, 19971, -1697.96, 1815.69, 24.3621, 0, 0, -82.8, 0, 0),
(143, 19967, -1521.52, 2545.24, 54.6788, 0, 0, 178.9, 0, 0),
(144, 19960, 1348.3, -1914.66, 19.9967, 0, 0, 74.8, 0, 0),
(145, 19961, 1310.69, -1951.71, 28.1173, 0, 0, 77.2, 0, 0),
(146, 19951, 1251.66, -1907.72, 29.5901, 0, 0, 69.7, 0, 0),
(147, 19951, 1247.96, -1911.92, 29.8714, 0, 0, 76.6, 0, 0),
(148, 19966, -1440.97, 2364.31, 51.9619, 0, 0, -76.6, 0, 0),
(149, 19966, -1361.24, 2170.9, 47.5986, 0, 0, -66.2, 0, 0),
(150, 19966, -838.245, 1007.74, 23.3829, 0, 0, 95.7001, 0, 0),
(151, 19966, 337.738, 1402, 5.57019, 0, 0, -107.3, 0, 0),
(152, 19966, 476.655, 2383.2, 28.0815, 0, 0, 156.3, 0, 0),
(153, 19966, -172.732, 2494.89, 22.2168, 0, 0, 136.1, 0, 0),
(154, 19966, -394.62, 2455.39, 40.8058, 0, 0, 32.4, 0, 0),
(155, 19966, -460.249, 2035.11, 59.6221, 0, 0, -141, 0, 0),
(156, 19966, -389.969, 1750.81, 42.295, 0, 0, 63.9, 0, 0),
(157, 19966, -429.036, 1435.65, 33.2136, 0, 0, 105.8, 0, 0),
(158, 19966, -231.647, 138.812, 1.48008, 0, 0, 67.3, 0, 0),
(159, 19966, 522.016, 228.041, 13.3701, 0, 0, 8.29999, 0, 0),
(160, 19966, 353.865, 1017.98, 27.0574, 0, 0, -177.2, 0, 0),
(161, 19966, -1820.35, 2143.54, 6.66845, 0, 0, 112.2, 0, 0),
(162, 19985, -29.9017, 1203.98, 18.1009, 0, 0, 94.7, 0, 0),
(163, 19962, 621.961, -1381.17, 12.6067, 0, 0, 179, 0, 0),
(164, 19966, 1211.52, -924.423, 41.8381, 0, 0, -170.9, 0, 0),
(165, 19961, 424.206, -1708.42, 8.58113, 0, 0, 91.5999, 0, 0),
(166, 19964, 1165.48, -704.544, 61.1034, 0, 0, 159.1, 0, 0),
(167, 19966, 1270.29, -380.407, 1.3036, 0, 0, 104.3, 0, 0),
(168, 19966, 1251.44, -422.336, 1.32931, 0, 0, -83.8, 0, 0),
(169, 19966, 464.961, -1728.83, 9.48217, 0, 0, -9.09999, 0, 0),
(170, 19949, 464.959, -1728.8, 10.7641, 0, 0, -9.29999, 0, 0),
(171, 19966, 1190.39, -171.924, 39.3709, 0, 0, 29.2, 0, 0),
(172, 19966, 1290.14, -75.3019, 35.4192, 0, 0, -139.7, 0, 0),
(173, 19956, 464.962, -1728.82, 10.1781, 0, 0, -9, 0, 0),
(174, 19964, 781.678, -924.16, 42.4536, 0, 0, -166.4, 0, 0),
(175, 19963, 1247.86, 183.884, 18.4947, 0, 0, -114.5, 0, 0),
(176, 19978, 334.885, -1763.46, 4.20885, 0, 0, 87.8, 0, 0),
(177, 19963, 1333.72, 241.671, 18.4847, 0, 0, 155.6, 0, 0),
(178, 19962, 789.451, -1029.9, 24.3236, 0, 0, 178.7, 0, 0),
(179, 19960, 179.69, -1604.45, 13.008, 0, 0, -137.4, 0, 0),
(180, 19963, 1364.53, 281.09, 19.5747, 0, 0, -27.1, 0, 0),
(181, 19962, 1329.84, 314.622, 19.6447, 0, 0, 62.2, 0, 0),
(182, 19966, 159.197, -1401.54, 46.2076, 0, 0, -137.6, 0, 0),
(183, 19962, 1318.83, 301.214, 19.5947, 0, 0, -26.4, 0, 0),
(184, 19972, 180.1, -1409.43, 44.5077, 0, 0, -130.1, 0, 0),
(185, 19962, 1305.86, 312.178, 19.6847, 0, 0, -113.8, 0, 0),
(186, 19951, 181.935, -1407.33, 44.5727, 0, 0, -131.3, 0, 0),
(187, 19963, 1523.71, -1721.73, 12.7869, 0, 0, -179.4, 0, 0),
(188, 19962, 1316.59, 325.116, 19.4947, 0, 0, 153.6, 0, 0),
(189, 19966, 1516.77, 111.958, 28.536, 0, 0, -160.6, 0, 0),
(190, 19963, 1535.22, -1603.03, 12.4869, 0, 0, 0, 0, 0),
(191, 19952, 178.297, -1411.63, 44.3866, 0, 0, -130, 0, 0),
(192, 19963, 1227.66, 340.854, 18.4569, 0, 0, -25.2, 0, 0),
(193, 19966, 671.816, -700.792, 14.8153, 0, 0, -91.3, 0, 0),
(194, 19964, 137.456, -1436.67, 32.6932, 0, 0, 142.4, 0, 0),
(195, 19963, 1652.24, -1581.7, 12.4323, 0, 0, 180, 0, 0),
(196, 19966, 671.574, -668.377, 15.2871, 0, 0, -86.8, 0, 0),
(197, 19963, 1664.11, -1451.48, 12.4569, 0, 0, 0, 0, 0),
(198, 19966, 1596.28, -1430.16, 12.4944, 0, 0, 175.7, 0, 0),
(199, 19963, 1377.2, 431.73, 18.7524, 0, 0, -25.4, 0, 0),
(200, 19966, -299.089, -140.497, -0.151219, 0, 0, 73.9, 0, 0),
(201, 19966, 538.599, -134.604, 36.6119, 0, 0, 82.4, 0, 0),
(202, 19966, 430.543, -584.726, 36.751, 0, 0, 71.8, 0, 0),
(203, 19992, 1284.35, 499.707, 18.9544, 0, 0, 63.8, 0, 0),
(204, 19963, 1615.28, -1315.82, 16.455, 0, 0, 0, 0, 0),
(205, 19966, 515.203, -145.172, 36.869, 0, 0, -88.7, 0, 0),
(206, 19963, 671.573, -668.362, 16.1176, 0, 0, -89.9, 0, 0),
(207, 19966, -253.086, -278.774, 0.133904, 0, 0, -60.1, 0, 0),
(208, 19962, 1704.36, -1309.13, 12.549, 0, 0, -90.8, 0, 0),
(209, 19963, 648.614, -701.586, 13.2031, 0, 0, -85.7, 0, 0),
(210, 19962, 343.845, -135.283, 0.510064, 0, 0, 87.8, 0, 0),
(211, 19963, 1721.72, -1171.36, 22.7081, 0, 0, 0, 0, 0),
(212, 19966, 45.2459, -645.627, 1.71949, 0, 0, 63.8, 0, 0),
(213, 19966, 1035.19, 481.386, 18.9873, 0, 0, 69.1, 0, 0),
(214, 19962, 459.773, -593.93, 36.0584, 0, 0, 73.6, 0, 0),
(215, 19965, 1144.94, 407.924, 24.9817, 0, 0, 47.1, 0, 0),
(216, 19966, 406.164, -590.773, 35.9032, 0, 0, -107.6, 0, 0),
(217, 19962, 1725.22, -1295.02, 12.4174, 0, 0, 82.4, 0, 0),
(218, 19966, 457.217, -412.534, 27.6198, 0, 0, -104, 0, 0),
(219, 19962, 1707.31, -1288.48, 12.4469, 0, 0, -177.2, 0, 0),
(220, 19962, 436.856, -412.816, 26.5521, 0, 0, -92, 0, 0),
(221, 19992, 747.335, 315.941, 18.8731, 0, 0, -74.2, 0, 0),
(222, 19962, 1722.7, -1311.17, 12.4069, 0, 0, 0, 0, 0),
(223, 19966, 479.689, -406.016, 26.9941, 0, 0, 78, 0, 0),
(224, 19963, 1708.53, -1430.53, 12.4869, 0, 0, 178.5, 0, 0),
(225, 19962, 499.499, -409.579, 26.9222, 0, 0, 84.1, 0, 0),
(226, 19966, -201.636, 208.754, 10.6113, 0, 0, 69.8, 0, 0),
(227, 19966, -198.295, 226.571, 11.078, 0, 0, -18, 0, 0),
(228, 19962, -215.149, 234.998, 11.0436, 0, 0, -105.3, 0, 0),
(229, 19962, 363.537, -581.403, 39.165, 0, 0, -101.6, 0, 0),
(230, 19963, 1773.79, -1459.45, 12.5169, 0, 0, -21.9, 0, 0),
(231, 19962, -189.559, 242.303, 10.8137, 0, 0, 73.5, 0, 0),
(232, 19966, 262.195, -1018.63, 55.2955, 0, 0, 59.1, 0, 0),
(233, 19962, 1834.76, -1466.27, 12.4299, 0, 0, -87.2, 0, 0),
(234, 19963, 293.3, -1048.66, 58.5173, 0, 0, 46.7, 0, 0),
(235, 19962, 1841.19, -1448.89, 12.4488, 0, 0, -174.1, 0, 0),
(236, 19958, 135.841, -1236.94, 44.5296, 0, 0, 161.1, 0, 0),
(237, 19962, 1864.1, -1455.44, 12.4916, 0, 0, 92.3, 0, 0),
(238, 19966, -205.222, 251.473, 11.1112, 0, 0, 172.9, 0, 0),
(239, 19965, -211.256, 715.705, 24.546, 0, 0, -51.2, 0, 0),
(240, 19962, 1857.2, -1478.18, 12.4269, 0, 0, 0, 0, 0),
(241, 19962, 1816.13, -1599.95, 12.3769, 0, 0, 178.4, 0, 0),
(242, 19992, -53.222, 850.13, 16.7321, 0, 0, -60.7, 0, 0),
(243, 19962, 1809.42, -1617.69, 12.4169, 0, 0, -97.7999, 0, 0),
(244, 19962, 1827.06, -1624.98, 12.5069, 0, 0, 0, 0, 0),
(245, 19962, 1301.4, 250.543, 19.5947, 0, 0, 69.5, 0, 0),
(246, 19992, 320.535, 744.893, 10.1869, 0, 0, 16.1, 0, 0),
(247, 19962, 1834.52, -1606.58, 12.4369, 0, 0, 86.8, 0, 0),
(248, 19961, 374.728, 785.015, 5.28421, 0, 0, 66.5, 0, 0),
(249, 19962, 1277.43, 248.11, 19.5847, 0, 0, -115.6, 0, 0),
(250, 19966, 1811.23, -1738.29, 12.4753, 0, 0, -93.8, 0, 0),
(251, 19963, 1834.33, -1746.62, 12.4169, 0, 0, 86.2, 0, 0),
(252, 19992, 788.475, 1297.79, 24.0954, 0, 0, -150.1, 0, 0),
(253, 19964, 238.065, -2.98585, 0.958139, 0, 0, -1.8, 0, 0),
(254, 19992, 365.969, 668.946, 10.3981, 0, 0, -137.5, 0, 0),
(255, 19966, 1811.27, -1838.06, 12.4781, 0, 0, -92.1, 0, 0),
(256, 19992, 571.684, 1072.74, 27.1369, 0, 0, 108.2, 0, 0),
(257, 19962, 1153.61, -929.147, 41.8231, 0, 0, -175.9, 0, 0),
(258, 19962, 486.95, -145.624, 31.4288, 0, 0, -90.6, 0, 0),
(259, 19992, 585.24, -1226.39, 16.827, 0, 0, 111.5, 0, 0),
(260, 19962, 1167.93, -974.292, 39.8003, 0, 0, 0, 0, 0),
(261, 19962, 603.407, -1230.28, 17.2792, 0, 0, -65.3001, 0, 0),
(262, 19962, 1183.28, -934.178, 41.7034, 0, 0, 100.1, 0, 0),
(263, 19963, 1743.53, -1722.14, 12.4069, 0, 0, 175.9, 0, 0),
(264, 19966, 1967.32, -1762.53, 12.2869, 0, 0, 0, 0, 0),
(265, 19963, 687.669, -495.833, 16.3359, 0, 0, -1.1, 0, 0),
(266, 19962, 1699.86, -1726.24, 12.3769, 0, 0, 86.1, 0, 0),
(267, 19962, 1133.06, -960.501, 41.4005, 0, 0, -88.2, 0, 0),
(268, 19962, 1683.19, -1719.76, 12.4269, 0, 0, 178.6, 0, 0),
(269, 19966, 977.41, -954.868, 39.1488, 0, 0, -117.3, 0, 0),
(270, 19962, 1679.28, -1738.63, 12.4783, 0, 0, -91.1, 0, 0),
(271, 19962, 1695.26, -1750.55, 12.4669, 0, 0, 0, 0, 0),
(272, 19962, 801.179, -1076.69, 23.2996, 0, 0, 0, 0, 0),
(273, 19963, 1695.17, -1609.17, 12.4969, 0, 0, 0, 0, 0),
(274, 19966, 496.635, -1265.18, 14.9587, 0, 0, -135.8, 0, 0),
(275, 19962, 649.37, -1389.09, 12.6212, 0, 0, 96.8, 0, 0),
(276, 19963, 1423.37, -1721.63, 12.4269, 0, 0, 177.7, 0, 0),
(277, 19963, 1575.74, -1743.06, 12.3869, 0, 0, 0, 0, 0),
(278, 19960, 333.824, -1389.04, 13.2535, 0, 0, 119.9, 0, 0),
(279, 19962, 643.936, -1416.63, 12.6368, 0, 0, 0, 0, 0),
(280, 19978, 338.411, -1374.79, 13.2713, 0, 0, 27.2, 0, 0),
(281, 19963, 1395.32, -1746.74, 12.5069, 0, 0, 0, 0, 0),
(282, 19966, 1291.5, -1842.23, 12.4869, 0, 0, 174.1, 0, 0),
(283, 19962, 518.841, -1359.38, 15.0009, 0, 0, 17.8, 0, 0),
(284, 19963, 1383.44, -1854.56, 12.4069, 0, 0, -178.4, 0, 0),
(285, 19966, 1367.44, -1135.45, 22.7281, 0, 0, 80.6, 0, 0),
(286, 19962, 618.452, -1682.24, 15.0034, 0, 0, -96.2, 0, 0),
(287, 19963, 1432.32, -1891.71, 12.5564, 0, 0, 0, 0, 0),
(288, 19963, 1872.73, -1334.87, 12.4623, 0, 0, 90.8, 0, 0),
(289, 19959, 952.669, -1799.66, 13.255, 0, 0, -106.1, 0, 0),
(290, 19966, 195.229, -1516.32, 11.6711, 0, 0, 65.8, 0, 0),
(291, 19962, 616.174, -1411.17, 12.4287, 0, 0, -86.3, 0, 0),
(292, 19962, 617.473, -1598.32, 15.0484, 0, 0, -89.7, 0, 0),
(293, 19984, 232.447, -1497.88, 21.1199, 0, 0, 134.1, 0, 0),
(294, 19963, 1291.5, -1842.23, 13.5469, 0, 0, -176.2, 0, 0),
(295, 19962, 922.708, -1582.7, 13.6769, 0, 0, 0, 0, 0),
(296, 19962, 647.396, -1581.26, 14.5226, 0, 0, 87, 0, 0),
(297, 19966, 280.223, -1491.63, 31.7561, 0, 0, -142.6, 0, 0),
(298, 19962, 649.638, -1666.93, 13.6562, 0, 0, 88.5, 0, 0),
(299, 1422, 271.772, -1460.12, 27.4732, 0, -4.9, -52, 0, 0),
(300, 19962, 1376.32, -994.066, 28.1677, 0, 0, -5.6, 0, 0),
(301, 19962, 1168.25, -1054.58, 29.8324, 0, 0, 0, 0, 0),
(302, 19962, 1348.04, -1025.66, 26.2317, 0, 0, -165.5, 0, 0),
(303, 19978, 1353.47, -974.689, 30.6533, 0, 0, 83.6, 0, 0),
(304, 19962, 1174.87, -1033.81, 30.9167, 0, 0, 93.6001, 0, 0),
(305, 19962, 1157.55, -1023.58, 31.8841, 0, 0, -174.5, 0, 0),
(306, 19978, 1251.07, -2050.31, 58.8449, 0, 0, 0, 0, 0),
(307, 19960, 1305.42, -2062.1, 57.2566, 0, 0, -88.1, 0, 0),
(308, 19985, 1365.29, -2047.64, 55.2449, 0, 0, 102.1, 0, 0),
(309, 19978, 1308.59, -1857.44, 12.4469, 0, 0, 178.9, 0, 0),
(310, 19962, 1148.29, -1045.2, 30.7876, 0, 0, -92.9001, 0, 0),
(311, 19962, 1101.66, -1033.83, 30.603, 0, 0, 89.5999, 0, 0),
(312, 19962, 1077.03, -1025.33, 31.793, 0, 0, -178.9, 0, 0),
(313, 19966, 374.927, -1658.07, 31.8131, 0, 0, 0, 0, 0),
(314, 19963, 374.931, -1658.05, 32.6254, 0, 0, 0, 0, 0),
(315, 19962, 1070.76, -1045.04, 30.7816, 0, 0, -93.2, 0, 0),
(316, 19963, 1092.12, -969.678, 41.0018, 0, 0, 0, 0, 0),
(317, 19963, 968.368, -989.08, 36.8479, 0, 0, 0, 0, 0),
(318, 19963, 989.529, -1033.81, 29.5499, 0, 0, 89.5, 0, 0),
(319, 19963, 957.167, -1127.42, 22.6544, 0, 0, 179.6, 0, 0),
(320, 19963, 1267.4, -949.54, 40.7591, 0, 0, 0, 0, 0),
(321, 19962, 1257.35, -1028.11, 31.2378, 0, 0, 173.5, 0, 0),
(322, 19962, 1247.29, -1044.34, 30.8439, 0, 0, -91.2, 0, 0),
(323, 19962, 1268.2, -1055.32, 29.7484, 0, 0, 0, 0, 0),
(324, 19962, 1283.41, -1033.48, 30.5519, 0, 0, 88.5, 0, 0),
(325, 19963, 604.687, 341.046, 18.0287, 0, 0, -142.6, 0, 0),
(326, 19966, 612.947, 320.575, 18.6107, 0, 0, 176.6, 0, 0),
(327, 19959, 1336.68, -1726.85, 12.4269, 0, 0, 87.1, 0, 0),
(328, 19962, 1435.99, -1605.85, 12.4469, 0, 0, 0, 0, 0),
(329, 19962, 1441.15, -1586.44, 12.4969, 0, 0, 79.5, 0, 0),
(330, 19962, 1423.83, -1575.11, 12.4569, 0, 0, 173.7, 0, 0),
(331, 19962, 1418.3, -1598.4, 12.3969, 0, 0, -98.3999, 0, 0),
(332, 19963, 1755.08, -1612.84, 12.459, 0, 0, 0, 0, 0),
(333, 19963, 1563.85, -1853.4, 12.4369, 0, 0, 178.4, 0, 0),
(334, 19963, 1702.7, -1806.08, 12.4869, 0, 0, 77.5999, 0, 0),
(335, 19962, 1460.31, -1452.77, 12.4669, 0, 0, 0, 0, 0),
(336, 19962, 1466.15, -1434.92, 12.4169, 0, 0, 83.3, 0, 0),
(337, 19962, 1448.84, -1429.89, 12.5238, 0, 0, 173.8, 0, 0),
(338, 19962, 1443.9, -1446.59, 12.4247, 0, 0, -94.7, 0, 0),
(339, 19962, 1368.64, -1389.37, 12.5654, 0, 0, 79.7, 0, 0),
(340, 19962, 1337.08, -1378.39, 12.651, 0, 0, 167, 0, 0),
(341, 19962, 1330.52, -1411.37, 12.5089, 0, 0, -91.5999, 0, 0),
(342, 19962, 1362.11, -1432.15, 12.4891, 0, 0, -9.7, 0, 0),
(343, 19959, 1285.88, -1718.77, 12.4869, 0, 0, -98.9, 0, 0),
(344, 19978, 1186.59, -1367.94, 12.4548, 0, 0, 89.9999, 0, 0),
(345, 19962, 1201.43, -1415.88, 12.2619, 0, 0, 0, 0, 0),
(346, 19963, 1168.81, -1834.42, 12.4903, 0, 0, 168.4, 0, 0),
(347, 19963, 1185.8, -1723.08, 12.4527, 0, 0, -7.4, 0, 0),
(348, 19963, 1143.79, -1700.62, 12.9231, 0, 0, 168.8, 0, 0),
(349, 19963, 1156.19, -1582.63, 12.4412, 0, 0, 0, 0, 0),
(350, 8548, 2226.25, -1726.76, 13.7596, 0, 0, 91.7, 0, 0),
(351, 19959, 1278.66, -1577.75, 12.4714, 0, 0, -104.4, 0, 0),
(352, 19963, 1190.44, -1551.76, 12.3393, 0, 0, 177.4, 0, 0),
(353, 8548, 2173.8, -1757.83, 13.6696, 0, 0, -87.8, 0, 0),
(354, 19962, 2108.02, -1746.99, 12.4925, 0, 0, 74.8, 0, 0),
(355, 19962, 1052.77, -1566.58, 12.4369, 0, 0, 73.6, 0, 0),
(356, 19962, 1031.7, -1560.48, 12.4569, 0, 0, 156.9, 0, 0),
(357, 19962, 2068.9, -1757.68, 12.487, 0, 0, -85.5, 0, 0),
(358, 19962, 1026.8, -1578.18, 12.4869, 0, 0, -105.2, 0, 0),
(359, 19962, 1043.35, -1583.01, 12.4672, 0, 0, -16.8, 0, 0),
(360, 19962, 2095.13, -1762.97, 12.4994, 0, 0, -11.3, 0, 0),
(361, 19963, 1048.45, -1706.1, 12.4869, 0, 0, 81.5, 0, 0),
(362, 19963, 2069.64, -1817.74, 12.4368, 0, 0, -89.6, 0, 0),
(363, 19963, 1974.48, -1806.99, 12.4169, 0, 0, 94.6, 0, 0),
(364, 19963, 1535.14, -1905.02, 13.3907, 0, 0, 0, 0, 0),
(365, 19966, 284.673, -1238.36, 73.7628, 0, 0, 41.5, 0, 0),
(366, 19963, 284.674, -1238.35, 74.5138, 0, 0, 41.8001, 0, 0),
(367, 19963, 1936.28, -1741.16, 12.4469, 0, 0, 178.6, 0, 0),
(368, 19966, 400.954, -1223.68, 50.6572, 0, 0, 26.3, 0, 0),
(369, 19963, 400.945, -1223.68, 51.4259, 0, 0, 26.3, 0, 0),
(370, 19962, 2296.07, -2084.37, 12.4691, 0, 0, 32.7, 0, 0),
(371, 19962, 2287.14, -2067.99, 12.4791, 0, 0, 119.7, 0, 0),
(372, 19966, 395.367, -1242.37, 51.1557, 0, 0, -149.6, 0, 0),
(373, 19963, 395.373, -1242.37, 51.9223, 0, 0, -149.7, 0, 0),
(374, 19962, 2271.18, -2077.08, 12.5169, 0, 0, -150, 0, 0),
(375, 19988, 1628.54, -1726.56, 13.5469, 0, 0, 89.9, 0, 0),
(376, 19962, 2279.43, -2092.94, 12.5054, 0, 0, -64.2, 0, 0),
(377, 19963, 2308.05, -1953.92, 12.5356, 0, 0, 173.5, 0, 0),
(378, 19963, 2225.47, -1966.37, 12.4636, 0, 0, 82.4, 0, 0),
(379, 19966, 237.58, -1328.89, 51.3177, 0, 0, -141.4, 0, 0),
(380, 19963, 237.585, -1328.89, 52.0805, 0, 0, -147.5, 0, 0),
(381, 19963, 2402.08, -1978.53, 12.3969, 0, 0, -98.0999, 0, 0),
(382, 19963, 159.198, -1401.55, 46.9443, 0, 0, -137.5, 0, 0),
(383, 19976, 1322.45, -1566.42, 12.3168, 0, 0, 87.5, 0, 0),
(384, 19963, 2425.76, -1925.92, 12.4569, 0, 0, 72.3, 0, 0),
(385, 19963, 2510.82, -1920.39, 12.4269, 0, 0, 162, 0, 0),
(386, 19963, 2419.6, -1742.74, 12.3769, 0, 0, 0, 0, 0),
(387, 19963, 2425.71, -1721.9, 12.6377, 0, 0, -179.2, 0, 0),
(388, 19963, 2336.84, -1721.47, 12.4591, 0, 0, 172.7, 0, 0),
(389, 8548, 2230.61, -1888.52, 13.6269, 0, 0, 89.3, 0, 0),
(390, 8548, 2173.98, -1899.96, 13.6491, 0, 0, -96.6, 0, 0),
(391, 19959, 1322.48, -1566.42, 11.4768, 0, 0, 94.0001, 0, 0),
(392, 19949, 1073.29, -1846, 12.9769, 0, 0, 89.6999, 0, 0),
(393, 1229, 1108.66, -1845.21, 13.8862, 0, 0, 0, 0, 0),
(394, 19978, 1043.34, -1618.78, 12.2584, 0, 0, -89.9, 0, 0),
(395, 19976, 1285.9, -1718.78, 13.3669, 0, 0, -90.6999, 0, 0),
(396, 19963, 1036.11, -1499.71, 12.3611, 0, 0, -103.6, 0, 0),
(397, 19978, 1055.92, -1496.46, 12.4469, 0, 0, -104.1, 0, 0),
(398, 19962, 2076.31, -1740.42, 12.4369, 0, 0, 177, 0, 0),
(399, 1229, 1106.19, -1412.68, 13.7345, 0, 0, 177.2, 0, 0),
(400, 19978, 1129.56, -1411.51, 12.4254, 0, 0, -179.1, 0, 0),
(401, 19964, 2107.39, -1594.46, 24.7377, 0, 0, 173.7, 0, 0),
(402, 19948, 1758.45, -1449.11, 12.4269, 0, 0, -103.9, 0, 0),
(403, 19975, 1086.5, -1365.03, 12.6112, 0, 0, -6.50001, 0, 0),
(404, 1422, 1087.74, -1366.11, 13.1612, 0, 0, -36.5, 0, 0),
(405, 1422, 1084.27, -1365.41, 13.2112, 0, 0, 0, 0, 0),
(406, 19963, 2013.51, -1666.79, 12.4469, 0, 0, 78.5, 0, 0),
(407, 19963, 2069.87, -1677.7, 12.3591, 0, 0, -89.6, 0, 0),
(408, 19992, 2089.93, -1517.66, 1.6716, 0, 0, 76.5, 0, 0),
(409, 19992, 2089.92, -1517.66, 1.68543, 0, 0, -103.9, 0, 0),
(410, 1229, 1216.43, -1413.66, 13.3435, 0, 0, -172, 0, 0),
(411, 19963, 1996.21, -1740.35, 12.4669, 0, 0, 170.9, 0, 0),
(412, 1234, 1809.85, -1596.38, 13.9969, 0, 0, 47.3998, 0, 0),
(413, 1229, 1777.26, -1614.89, 13.5375, 0, 0, 156.8, 0, 0),
(414, 19961, 2026.52, -1524.64, 2.51772, 0, 0, -103.8, 0, 0),
(415, 1229, 1814.69, -1708.06, 13.8869, 0, 0, 89.1, 0, 0),
(416, 19962, 1951.09, -1937.93, 12.4269, 0, 0, -89.8, 0, 0),
(417, 19962, 1967.27, -1977.42, 12.4369, 0, 0, -8.3, 0, 0),
(418, 8548, 1967.25, -1977.41, 14.8969, 0, 0, -6.40001, 0, 0),
(419, 19988, 1826.92, -1896.54, 13.2052, 0, 0, -5.4, 0, 0),
(420, 19988, 1816, -1647.04, 12.4868, 0, 0, -177.8, 0, 0),
(421, 19975, 1992.4, -1977.48, 12.3445, 0, 0, -90.6, 0, 0),
(422, 1282, 1992.83, -1980.56, 13.1645, 0, 0, -25.4, 0, 0),
(423, 19963, 2034.12, -1600.58, 12.2971, 0, 0, -179.1, 0, 0),
(424, 19963, 1950.28, -2058.02, 12.4368, 0, 0, -92.7, 0, 0),
(425, 19966, 1950.27, -2058.02, 11.6652, 0, 0, -92.6, 0, 0),
(426, 19963, 2441.25, -1498.32, 22.9271, 0, 0, 92.1, 0, 0),
(427, 19963, 2420.35, -1530.03, 22.83, 0, 0, -95.4, 0, 0),
(428, 19966, 1971.74, -2104.36, 12.3969, 0, 0, 83.5, 0, 0),
(429, 19963, 1971.74, -2104.36, 13.1669, 0, 0, 83.2, 0, 0),
(430, 19988, 2459.21, -1509.7, 23.62, 0, 0, -96.1, 0, 0),
(431, 19949, 2027.93, -1617.69, 12.5069, 0, 0, -88, 0, 0),
(432, 19966, 1955.71, -2156.7, 12.4769, 0, 0, 179.8, 0, 0),
(433, 8548, 2180.85, -1644.07, 15.3238, 0, 0, -101.2, 0, 0),
(434, 19963, 2087.07, -1627.32, 11.9069, 0, 0, -0.40006, 0, 0),
(435, 19992, 2556.42, -1455.52, 22.8988, 0, 0, 150.6, 0, 0),
(436, 19963, 1955.72, -2156.7, 13.2569, 0, 0, 179.2, 0, 0),
(437, 19967, 1956.24, -2176.72, 12.4469, 0, 0, 176, 0, 0),
(438, 19962, 2180.88, -1644.09, 14.4095, 0, 0, -104.2, 0, 0),
(439, 19963, 2654.56, -1651.72, 9.77716, 0, 0, 85.6, 0, 0),
(440, 8548, 2239.56, -1648.52, 15.5248, 0, 0, 81.0999, 0, 0),
(441, 3265, 1956.31, -2176.74, 12.3169, 0, 0, -179.9, 0, 0),
(442, 19976, 2654.53, -1651.72, 10.5872, 0, 0, 84.8, 0, 0),
(443, 19962, 2347.99, -1669.26, 12.3831, 0, 0, -3.6, 0, 0),
(444, 19963, 2436.37, -1456.31, 22.95, 0, 0, 0, 0, 0),
(445, 19962, 1971.81, -1926.67, 12.4769, 0, 0, 86.2, 0, 0),
(446, 19963, 2533.07, -1744.07, 12.4869, 0, 0, -2.3, 0, 0),
(447, 19963, 2445.69, -1432.22, 22.65, 0, 0, -175.7, 0, 0),
(448, 19963, 2629.92, -1737.72, 9.93474, 0, 0, -91.6, 0, 0),
(449, 19962, 1956.1, -1921.9, 12.4669, 0, 0, 173.5, 0, 0),
(450, 19963, 2456.4, -1196.21, 35.2299, 0, 0, 4.60004, 0, 0),
(451, 19949, 1336.67, -1726.84, 13.0969, 0, 0, 86.7001, 0, 0),
(452, 19962, 2712.27, -1263.23, 58.3667, 0, 0, -87.5, 0, 0),
(453, 19966, 2354.36, -1653.26, 12.5174, 0, 0, 90.4999, 0, 0),
(454, 19962, 2337.04, -1648.81, 12.5374, 0, 0, 179.7, 0, 0),
(455, 19962, 2332.29, -1664.74, 12.6726, 0, 0, -93.4, 0, 0),
(456, 19962, 2354.36, -1653.25, 13.31, 0, 0, 90.5999, 0, 0),
(457, 19976, 2425.7, -1721.9, 13.5569, 0, 0, 177.2, 0, 0),
(458, 19978, 1211.42, -1312.28, 12.4962, 0, 0, -88.2001, 0, 0),
(459, 19978, 1211.35, -1353.94, 12.4523, 0, 0, -89.1001, 0, 0),
(460, 8548, 1956.1, -1921.91, 15.0269, 0, 0, 173.9, 0, 0),
(461, 19963, 1250.16, -1382.5, 12.2203, 0, 0, -179.4, 0, 0),
(462, 19976, 1250.17, -1382.58, 13.0662, 0, 0, -169.4, 0, 0),
(463, 19963, 1190.03, -1383.2, 12.6594, 0, 0, 179.2, 0, 0),
(464, 19976, 1190.02, -1383.23, 13.5196, 0, 0, 174.7, 0, 0),
(465, 19963, 1211.51, -1292.26, 12.4674, 0, 0, 1.9, 0, 0),
(466, 19976, 1211.51, -1292.25, 13.3166, 0, 0, 0, 0, 0),
(467, 19988, 975.851, -1390.35, 13.5281, 0, 0, 87.1, 0, 0),
(468, 19988, 695.7, -1411.15, 12.9688, 0, 0, -89.7, 0, 0),
(469, 19992, -272.595, 44.405, 0.059688, 0, 0, -19.8, 0, 0),
(470, 19963, 2093.19, -1888.81, 12.4269, 0, 0, 92.5, 0, 0),
(471, 19992, 2155.4, -1889.2, 12.4369, 0, 0, 69, 0, 0),
(472, 19963, 1814.82, -2153.97, 12.4869, 0, 0, 169.2, 0, 0),
(473, 19964, 1578.77, -2118.24, 31.1655, 0, 0, 33.8, 0, 0),
(474, 19963, 1072.85, -1274.78, 12.4069, 0, 0, 85.8, 0, 0),
(475, 19963, 1048.15, -1384.54, 12.6909, 0, 0, 179.1, 0, 0),
(476, 19963, 1043.12, -1333.31, 12.4176, 0, 0, -97.6999, 0, 0),
(477, 19963, 1036.86, -1226.57, 15.8357, 0, 0, -105.7, 0, 0),
(478, 19966, 953.911, -1215.31, 15.8312, 0, 0, 76, 0, 0),
(479, 19963, 953.905, -1215.32, 16.8705, 0, 0, 80.1, 0, 0),
(480, 19963, 1067.87, -1171.27, 22.7419, 0, 0, 0, 0, 0),
(481, 19963, 948.086, -1171.48, 20.2225, 0, 0, 0, 0, 0),
(482, 19963, 936.791, -1299.39, 13.0136, 0, 0, 169.3, 0, 0),
(483, 19963, 922.853, -1338.94, 12.4432, 0, 0, 0, 0, 0),
(484, 19963, 911.069, -1384.82, 12.466, 0, 0, 169.4, 0, 0),
(485, 19963, 923.091, -1417.1, 12.2728, 0, 0, 0, 0, 0),
(486, 19963, 1157.32, -1123.59, 22.4422, 0, 0, 178.2, 0, 0),
(487, 19963, 2678, -2492.75, 12.4971, 0, 0, 171, 0, 0),
(488, 19963, 2689.72, -2417.09, 12.5228, 0, 0, 0, 0, 0),
(489, 19959, 2291.95, -2299.37, 12.3913, 0, 0, 33, 0, 0),
(490, 19962, 2318.96, -2350.93, 12.4768, 0, 0, -58.3, 0, 0),
(491, 19962, 2327.18, -2326.59, 12.4769, 0, 0, 125.9, 0, 0),
(492, 19962, 2310.78, -2334.74, 12.4469, 0, 0, -142.9, 0, 0),
(493, 19962, 2335.67, -2343.15, 12.5069, 0, 0, 32.8, 0, 0),
(494, 19991, 2720.12, -2508.34, 14.5618, 0, 0, -101.7, 0, 0),
(495, 19991, 2752.6, -2508.26, 12.4584, 0, 0, -86.3, 0, 0),
(496, 19991, 2720.26, -2409.81, 14.4828, 0, 0, -100.9, 0, 0),
(497, 19991, 2755.49, -2424.45, 12.6477, 0, 0, -173.7, 0, 0),
(498, 19992, 2567.66, -2509.43, 12.4441, 0, 0, -107.2, 0, 0),
(499, 19963, 2213.47, -2501.22, 12.3468, 0, 0, -96.0999, 0, 0),
(500, 19966, 1412.74, -2291.84, 12.4169, 0, 0, -97.4, 0, 0),
(501, 19966, 1479.95, -2342.9, 12.4469, 0, 0, -6, 0, 0),
(502, 19966, 1468.96, -2367.5, 12.4569, 0, 0, 170.1, 0, 0),
(503, 19949, 1530.83, -2280.87, -4.27032, 0, 0, 76.3001, 0, 0),
(504, 19959, 1530.82, -2280.86, -3.51031, 0, 0, 79.2, 0, 0),
(505, 19966, 1565.68, -2291.89, -3.89031, 0, 0, -110.6, 0, 0),
(506, 19991, 1608.42, -2324.78, -3.74969, 0, 0, -112.4, 0, 0),
(507, 19966, 1727.04, -2308.87, -3.79929, 0, 0, 164.9, 0, 0),
(508, 19966, 1742.95, -2281.91, -3.75296, 0, 0, 75.4, 0, 0),
(509, 19966, 1738.01, -2264.24, -3.77969, 0, 0, -12.8, 0, 0),
(510, 19991, 1737.66, -2248.38, -3.72893, 0, 0, 78.5, 0, 0),
(511, 19959, 1565.5, -2292, 12.8177, 0, 0, -99.6, 0, 0),
(512, 19949, 1565.49, -2292, 12.0555, 0, 0, -102.8, 0, 0),
(513, 19962, -2490.06, 2407.03, 15.1604, 0, 0, 29.2, 0, 0),
(514, 19962, -2526.76, 2402.34, 14.5436, 0, 0, -57.3, 0, 0),
(515, 19962, -2527.04, 2439.16, 16.5885, 0, 0, -138.5, 0, 0),
(516, 19976, 338.523, 694.375, 7.41875, 0, 0, -127.5, 0, 0),
(517, 19976, 431.33, 721.938, 6.29661, 0, 0, -93.7, 0, 0),
(518, 19976, 281.414, 871.647, 19.2193, 0, 0, 33.1, 0, 0),
(519, 19976, 227.3, 766.467, 5.12446, 0, 0, 135, 0, 0),
(520, 19967, 285.633, 852.577, 17.9453, 0, 0, -146, 0, 0),
(521, 19967, 342.124, 700.787, 7.29998, 0, 0, 43.8, 0, 0),
(522, 19959, 1742.93, -2313.61, 12.4969, 0, 0, 73.3, 0, 0),
(523, 19966, 1468.83, -2229.77, 12.4869, 0, 0, 171.9, 0, 0),
(524, 19966, 1480.14, -2205.34, 12.4869, 0, 0, -11.2, 0, 0),
(525, 19962, 911.975, -1561.97, 13.5266, 0, 0, 170.5, 0, 0),
(526, 19962, 906.992, -1577.66, 13.6669, 0, 0, -90.9, 0, 0),
(527, 19962, 927.702, -1566.94, 13.5469, 0, 0, 80.7, 0, 0),
(528, 19966, 1811.46, -1860.59, 12.4182, 0, 0, -90.3999, 0, 0),
(529, 19963, 827.402, -1135.17, 22.5881, 0, 0, 90.1, 0, 0),
(530, 19963, 1569.56, -1115.08, 22.4789, 0, 0, -170.1, 0, 0),
(531, 19960, 1571.88, -1082.46, 22.362, 0, 0, 22.2, 0, 0),
(532, 19964, 1515.64, -1042.44, 22.5914, 0, 0, -109.8, 0, 0),
(533, 19966, 1857.64, -1191.44, 22.5896, 0, 0, 0, 0, 0),
(534, 19960, 1916.04, -1035.51, 22.8809, 0, 0, 81.2, 0, 0),
(535, 19963, 1478.07, -1292.63, 12.4409, 0, 0, 89.5, 0, 0),
(536, 19966, 1530.9, -2281, 12.4869, 0, 0, 76.2, 0, 0),
(537, 19975, 1017.04, 2124.04, 9.6503, 0, 0, -108.9, 0, 0),
(538, 19975, 1017.36, 2142.38, 9.7203, 0, 0, -63.5, 0, 0),
(539, 19963, 88.6099, -1516.38, 4.57156, 0, 0, 160.3, 0, 0),
(540, 19966, 369.253, -1166.09, 77.1542, 0, 0, -54, 0, 0),
(541, 19962, 369.299, -1166.07, 78.0003, 0, 0, -65.7, 0, 0),
(542, 19966, 370.562, -1144.56, 76.9982, 0, 0, 133, 0, 0),
(543, 19962, 370.55, -1144.6, 77.9558, 0, 0, 132, 0, 0),
(544, 19966, 617.097, -1127.23, 46.1396, 0, 0, 0, 0, 0),
(545, 19963, 617.079, -1127.18, 47.0627, 0, 0, 0, 0, 0),
(546, 19963, 496.643, -1265.19, 15.8634, 0, 0, -150.1, 0, 0),
(547, 1422, 765.844, -938.814, 55.1891, 0, -2.4, 49.4, 0, 0),
(548, 1422, 763.95, -940.952, 55.0486, 0, -2.3, 47.4, 0, 0),
(549, 1422, 762.006, -943.057, 54.9197, 0, -2.7, 47.5, 0, 0),
(550, 1422, 760.131, -945.136, 54.8001, 0, -2.6, 48.0999, 0, 0),
(551, 1422, 758.249, -947.197, 54.6629, 0, -3.2, 47.5, 0, 0),
(552, 1422, 756.385, -949.267, 54.6033, 0, 0, 48.5999, 0, 0),
(553, 1422, 754.636, -951.419, 54.4788, 0, -2.9, 50.8, 0, 0),
(554, 1422, 752.856, -953.525, 54.3304, 0, -2.5, 48.5, 0, 0),
(555, 1422, 751.066, -955.604, 54.1425, 0, -2.8, 49.3, 0, 0),
(556, 1422, 749.267, -957.745, 53.9985, 0, -3.5, 50.2999, 0, 0),
(557, 1422, 745.641, -962.052, 53.778, 2.9, -1.4, 49.6, 0, 0),
(558, 1422, 747.462, -959.87, 53.8329, 0, -3.8, 50.5, 0, 0),
(559, 19966, 696.68, -1005.49, 51.1118, 0, 0, -132.8, 0, 0),
(560, 19963, 696.709, -1005.52, 52.1559, 0, 0, -141.4, 0, 0),
(561, 19966, 679.976, -993.175, 51.0924, 0, 0, -79.1, 0, 0),
(562, 19963, 506.487, -1003.98, 89.7337, 0, 0, 74.8, 0, 0),
(563, 19963, 679.983, -993.164, 51.9458, 0, 0, -81.8, 0, 0),
(564, 19966, 506.51, -1003.98, 88.7689, 0, 0, 78.1, 0, 0),
(565, 19985, 1281.92, -918.005, 40.6731, -1.2, -0.499999, 95.9, 0, 0),
(566, 19966, 564.515, -1035.47, 73.5497, 0, 0, -112.6, 0, 0),
(567, 19963, 564.527, -1035.48, 74.4933, 0, 0, -122.9, 0, 0),
(568, 19966, 174.423, -1184.24, 51.3204, 0, 0, 117.7, 0, 0),
(569, 19963, 174.374, -1184.28, 52.2303, 0, 0, 103, 0, 0),
(570, 19951, 1246.06, -1916.74, 30.0983, 0, 0, 82.5, 0, 0),
(571, 19966, 1689.08, -603.428, 39.073, 0, 0, -169.4, 0, 0),
(572, 19951, 1258.12, -1903.83, 28.78, 0, 0, 58.5, 0, 0),
(573, 19951, 1266.44, -1901.7, 27.8595, 0, 0, 45.1, 0, 0),
(574, 19966, 995.888, -793.031, 99.0145, 0, 0, -94.9, 0, 0),
(575, 19951, 1273.37, -1901.46, 26.9998, 0, 0, 39.3, 0, 0),
(576, 19960, -153.755, -1294.7, 1.60531, 0, 0, 165.3, 0, 0),
(577, 19990, -158.458, -1340.65, 1.65531, 0, 0, 172, 0, 0),
(578, 19966, 1909.22, 32.9767, 33.5725, 0, 0, -24.3, 0, 0),
(579, 19963, 1909.22, 32.9693, 34.4577, 0, 0, -26.9, 0, 0),
(580, 19951, -158.884, -1388.66, 1.66531, 0, 0, 161.5, 0, 0),
(581, 19951, -157.74, -1397.97, 1.72531, 0, 0, 168.4, 0, 0),
(582, 19951, -156.048, -1407.7, 1.73531, 0, 0, 150.9, 0, 0),
(583, 19963, 2283.54, 35.9219, 26.4844, 0, 0, -88.4, 0, 0),
(584, 19951, -154.262, -1416.41, 1.81502, 0, 0, 153.9, 0, 0),
(585, 19951, -159.43, -1379.36, 1.73531, 0, 0, 150.1, 0, 0),
(586, 19951, -151.699, -1425.38, 1.71226, 0, 0, 169.3, 0, 0),
(587, 19951, -148.809, -1434.29, 1.73531, 0, 0, 167, 0, 0),
(588, 19962, 2299.57, -38.4912, 25.4044, 0, 0, 0, 0, 0),
(589, 19962, 2288.31, -18.1878, 25.4144, 0, 0, 177.5, 0, 0),
(590, 19963, 2288.41, -88.0731, 26.4844, 0, 0, 171, 0, 0),
(591, 19951, -152.129, -1624.18, 1.685, 0, 0, 40.7, 0, 0),
(592, 19951, -161.386, -1623.38, 1.50259, 0, 0, 43.1, 0, 0),
(593, 19962, 2349.4, -38.625, 26.6744, 0, 0, 0, 0, 0),
(594, 19962, 2338.36, -17.7778, 26.4844, 0, 0, 175.7, 0, 0),
(595, 19962, 2333.74, -34.1418, 25.3444, 0, 0, -96.7, 0, 0),
(596, 19962, 2354.16, -22.564, 25.3844, 0, 0, 82.9, 0, 0),
(597, 19963, 2234.16, 97.3587, 26.5544, 0, 0, 69.8, 0, 0),
(598, 19962, 2283.53, 86.2817, 26.4844, 0, 0, -98, 0, 0),
(599, 19962, 2304.36, 97.1733, 26.4844, 0, 0, 82, 0, 0),
(600, 19962, 2288.26, 102.083, 25.4044, 0, 0, 173, 0, 0),
(601, 19951, -170.785, -1622.9, 1.46594, 0, 0, 39, 0, 0),
(602, 19962, 2299.63, 81.3256, 25.3943, 0, 0, -5.4, 0, 0),
(603, 19962, 2349.94, 81.4925, 25.3443, 0, 0, 0, 0, 0),
(604, 19962, 2333.66, 85.8983, 25.4406, 0, 0, -92.4, 0, 0),
(605, 19962, 2337.82, 101.869, 25.3744, 0, 0, 168.3, 0, 0),
(606, 19962, 2354.17, 97.6953, 25.3612, 0, 0, 76.5, 0, 0),
(607, 19951, -180.09, -1623, 1.48594, 0, 0, 48.8, 0, 0),
(608, 19966, 2333.79, 208.025, 25.2982, 0, 0, -101.5, 0, 0),
(609, 19966, 2333.11, 277.588, 26.3597, 0, 0, -100.2, 0, 0),
(610, 19962, 2333.11, 277.593, 27.2381, 0, 0, -98.5, 0, 0),
(611, 19951, -189.243, -1624.29, 1.49373, 0, 0, 55.7, 0, 0),
(612, 19963, 2333.79, 208.019, 26.3126, 0, 0, -102.1, 0, 0),
(613, 19963, 2388.04, -17.8369, 26.5644, 0, 0, 174.7, 0, 0),
(614, 19951, -197.822, -1627.63, 1.46594, 0, 0, 54.6, 0, 0),
(615, 19963, 2404.22, 47.0948, 26.7444, 0, 0, 64, 0, 0),
(616, 19962, 2453.81, 36.0402, 25.4144, 0, 0, -107.1, 0, 0),
(617, 19951, -206.488, -1631.25, 1.52042, 0, 0, 84.5, 0, 0),
(618, 19962, 2469.45, 31.4402, 26.5744, 0, 0, -4, 0, 0),
(619, 19962, 2473.91, 47.3661, 25.4244, 0, 0, 81.9, 0, 0),
(620, 19962, 2458.59, 51.9314, 26.5844, 0, 0, 177.2, 0, 0),
(621, 19951, -142.761, -1624.38, 1.725, 0, 0, 37, 0, 0),
(622, 19963, 2474.46, -2.88617, 26.4844, 0, 0, 90.9, 0, 0),
(623, 19951, -214.443, -1635.95, 1.11953, 0, 0, 82.2, 0, 0),
(624, 19962, 2523.82, 35.7021, 25.3844, 0, 0, -94.1999, 0, 0),
(625, 19962, 2539.3, 31.4334, 26.4844, 0, 0, 0, 0, 0),
(626, 19962, 2544.1, 47.2452, 25.4344, 0, 0, 78.5, 0, 0),
(627, 19962, 2528.45, 51.9262, 26.4844, 0, 0, 163.5, 0, 0),
(628, 19963, -47.1208, -1600.15, 1.4064, 0, 0, -43.3, 0, 0),
(629, 19966, 2707.18, 55.1053, 23.942, 0, 0, 140.9, 0, 0),
(630, 19960, -99.0065, -1618.48, 2.30035, 0, 0, 95.9, 0, 0),
(631, 19961, -274.979, -1983.94, 28.5928, 0, 0, -176.8, 0, 0),
(632, 19963, 1190.4, -171.921, 40.4566, 0, 0, 20.7, 0, 0),
(633, 19987, -122.549, -1204.74, 1.77929, 0, 0, -15.8, 0, 0),
(634, 19986, -26.7676, -774.363, 8.16644, 0, 0, 151.4, 0, 0),
(635, 19966, 841.809, -561.03, 15.2947, 0, 0, 78.7, 0, 0),
(636, 19963, 117.312, -673.932, 4.95373, 0, 0, 80.8, 0, 0),
(637, 19963, 841.807, -561.038, 16.2116, 0, 0, 84.2, 0, 0),
(638, 19963, 797.904, -540.818, 16.3359, 0, 0, -3.9, 0, 0),
(639, 19962, 732.268, -524.345, 16.3359, 0, 0, 82.9, 0, 0),
(640, 19962, 716.058, -519.903, 15.2859, 0, 0, 170, 0, 0),
(641, 19962, 710.835, -536.019, 16.3359, 0, 0, -98.5, 0, 0),
(642, 19962, 727.403, -540.612, 15.3959, 0, 0, -9.2, 0, 0),
(643, 19962, 692.101, -524.452, 15.2759, 0, 0, 79.9999, 0, 0),
(644, 19962, 675.975, -519.293, 16.3359, 0, 0, 177, 0, 0),
(645, 19962, 671.213, -535.819, 15.2659, 0, 0, -95.4, 0, 0),
(646, 19962, 1068.49, -1420.61, 12.197, 0, 0, 0, 0, 0),
(647, 19962, 687.329, -540.774, 16.3359, 0, 0, 0, 0, 0),
(648, 19962, 1088.14, -1059.02, 28.9852, 0, 0, 0, 0, 0),
(649, 19963, 647.771, -540.854, 16.3146, 0, 0, -13.4, 0, 0),
(650, 19962, 1077.1, -1122.27, 23.0169, 0, 0, -179.2, 0, 0),
(651, 19962, 675.932, -590.294, 15.2759, 0, 0, 166, 0, 0),
(652, 19962, 670.876, -606.025, 15.2559, 0, 0, -100.5, 0, 0),
(653, 19962, 687.565, -610.173, 15.2659, 0, 0, -4.5, 0, 0),
(654, 19963, 1221.52, -1165.19, 22.066, 0, 0, 0, 0, 0),
(655, 19962, 692.315, -594.329, 16.3359, 0, 0, 75.7, 0, 0),
(656, 19983, 1210.9, -1268.92, 12.6357, 0, 0, 179.3, 0, 0),
(657, 19966, 633.635, -647.266, 16.7367, 0, 0, 157.1, 0, 0),
(658, 19966, 654.226, -610.964, 15.2459, 0, 0, -15.5, 0, 0),
(659, 19962, 1210.9, -1268.92, 13.5209, 0, 0, 176.5, 0, 0),
(660, 19963, 635.736, -474.696, 16.3359, 0, 0, 172, 0, 0),
(661, 19963, 1327.68, -1286.16, 12.3569, 0, 0, -84.7, 0, 0),
(662, 1422, 743.888, -964.187, 53.643, 0, -2.1, 49.5, 0, 0),
(663, 1422, 742.168, -966.319, 53.4806, 0, -3.1, 51.8, 0, 0),
(664, 19963, 1460.11, -1172.94, 22.245, 0, 0, 0, 0, 0),
(665, 19976, 1460.11, -1172.89, 23.0793, 0, 0, 0, 0, 0),
(666, 1422, 740.483, -968.523, 53.3522, 0, -3.4, 52.4, 0, 0),
(667, 19963, 1476.72, -1145.5, 22.8081, 0, 0, 174, 0, 0),
(668, 1422, 738.771, -970.698, 53.1972, 0, -3.3, 51.2, 0, 0),
(669, 1422, 737.069, -972.887, 53.0763, 0, -2.2, 52.9, 0, 0),
(670, 19963, 1487.36, -1045.84, 22.2806, 0, 0, 0, 0, 0),
(671, 19976, 1487.38, -1045.8, 23.1, 0, 0, 0, 0, 0),
(672, 1422, 735.365, -975.068, 52.9764, 0, -1.8, 50.9, 0, 0),
(673, 1422, 733.703, -977.237, 52.8232, 0, -2.5, 53, 0, 0),
(674, 1422, 732.041, -979.437, 52.6673, 0, -2.1, 52.7999, 0, 0),
(675, 19963, 1992.39, -1367.16, 22.5334, 0, 0, 0, 0, 0),
(676, 1422, 730.313, -981.624, 52.5241, 0, -3.3, 52.9, 0, 0),
(677, 19963, 1981.63, -1446.84, 12.1264, 0, 0, -179, 0, 0),
(678, 1422, 728.698, -983.833, 52.4086, 0, -2.7, 54.7, 0, 0),
(679, 1422, 727.091, -986.112, 52.2527, 0, -3, 53.5, 0, 0),
(680, 19959, 2759.27, -1896.01, 9.51468, 0, 0, -83.8, 0, 0),
(681, 1422, 725.759, -988.301, 52.1673, 0, -0.099999, 62.7, 0, 0),
(682, 19959, 2535.69, -1927.05, 12.1469, 0, 0, 89.7, 0, 0),
(683, 19963, 1244.76, 257.47, 19.7147, 0, 0, -26.1, 0, 0),
(684, 19962, 2576.35, -1269.8, 44.4488, 0, 0, 0, 0, 0),
(685, 19962, 1290.39, 237.146, 19.5547, 0, 0, -34.9, 0, 0),
(686, 19962, 2585.48, -1251.25, 44.7973, 0, 0, 92.1, 0, 0),
(687, 19962, 2565.73, -1245.06, 44.8966, 0, 0, -179.7, 0, 0),
(688, 19962, 1288.16, 261.063, 19.8147, 0, 0, 152.2, 0, 0),
(689, 19976, 2565.74, -1245.09, 45.7169, 0, 0, -171.1, 0, 0),
(690, 19963, 1380.15, 220.377, 19.5547, 0, 0, 151.2, 0, 0),
(691, 19963, 1270.84, 345.274, 19.6747, 0, 0, 156.1, 0, 0),
(692, 19963, 1325.87, 357.998, 19.6747, 0, 0, -125.7, 0, 0),
(693, 19965, 194.629, -648.881, 17.1549, 0, 0, 146.1, 0, 0),
(694, 19966, -126.355, -976.086, 24.8461, 0, 0, 137.3, 0, 0),
(695, 19966, -302.19, -863.805, 45.6454, 0, 0, 156.2, 0, 0),
(696, 19966, -347.266, -775.039, 28.9014, 0, 0, 75, 0, 0),
(697, 19951, -397.198, -822.268, 46.4608, 0, 0, 56.7, 0, 0),
(698, 19951, -416.891, -821.361, 47.54, 0, 0, 60.5, 0, 0),
(699, 19951, -406.519, -821.349, 47.0077, 0, 0, 44.3, 0, 0),
(700, 19951, -426.209, -823.797, 47.6838, 0, 0, 65.2, 0, 0),
(701, 19960, -358.567, -841.302, 45.9878, 0, 0, 63.4, 0, 0),
(702, 19948, -49.431, -1507.6, 0.692142, 0, 0, 67.3, 0, 0),
(703, 19967, -65.9911, -1503.36, 0.965368, 0, 0, -95.9, 0, 0),
(704, 19976, -93.3383, -1486.48, 1.50716, 0, 0, 83.2, 0, 0),
(705, 19966, -17.7373, -1525.74, 0.755469, 0, 0, -3.2, 0, 0),
(706, 19968, 2110.1, -1378.9, 22.7281, 0, 0, 0, 0, 0),
(707, 19969, 2082.01, -1378.89, 22.7504, 0, 0, 0, 0, 0),
(708, 19966, 2222.13, -1412.06, 22.8281, 0, 0, 91.0999, 0, 0),
(709, 19967, 2222.14, -1419.33, 22.8203, 0, 0, -87.4, 0, 0),
(710, 19970, 2227.01, -1454.99, 22.84, 0, 0, 179.8, 0, 0),
(711, 1233, 2091.12, -1378.91, 24.4481, 0, 0, 0, 0, 0),
(712, 19978, 2091.12, -1378.93, 21.9686, 0, 0, 0, 0, 0),
(713, 19978, 2082.01, -1378.9, 22.0738, 0, 0, 0, 0, 0),
(714, 19978, 2110.09, -1378.91, 22.0681, 0, 0, 0, 0, 0),
(715, 19967, 2517.61, 2342.27, 9.7503, 0, 0, 89.3, 0, 0),
(716, 19967, 2517.53, 2350.38, 9.73031, 0, 0, 92.3, 0, 0),
(717, 19967, 2516.95, 2286.54, 10.0603, 0, 0, 88.8, 0, 0),
(718, 19972, 2516.62, 2293.57, 9.76029, 0, 0, 119.4, 0, 0),
(719, 1422, 2516.24, 2293.13, 10.1803, 0, 0, -37.4, 0, 0),
(720, 19966, -1956.88, -2550.93, 37.5762, 0, 0, 110.6, 0, 0),
(721, 19967, -1947.48, -2560.41, 38.1019, 0, 0, -63.5, 0, 0),
(722, 19967, -1913.35, -2655.9, 49.1258, 0, 0, 108.5, 0, 0),
(723, 19966, -1908.42, -2667.84, 50.4392, 0, 0, -68.7001, 0, 0),
(724, 19966, -1901.03, -2689.07, 53.0324, 0, 0, -163.3, 0, 0),
(725, 19980, 453.758, -18.4227, 1002.26, 0, -179.4, -88.2, 1, 2329),
(726, 19980, 453.741, -17.9215, 1002.25, 0, -179.9, 90, 1, 2329),
(727, 19980, 453.752, -17.912, 1001.13, 0, 0, 89.7, 1, 2329),
(728, 19980, 453.758, -18.4017, 1001.13, 0, 0, 91.4, 1, 2329),
(729, 19972, 681.906, -450.632, -24.5172, -180, -0.000005, 180, 1, 0),
(730, 19972, 681.405, -450.662, -24.5172, 180, -0.000005, -180, 1, 0),
(731, 19975, 2617.76, 1167.18, 9.3903, 0, 0, -94.5, 0, 0),
(732, 1282, 2617.49, 1166.17, 10.3817, 0, 0, -18.1, 0, 0),
(733, 19966, -1551.97, -1594.8, 36.6986, 0, 0, 171.6, 0, 0),
(734, 19963, -1637.16, -1514.27, 35.7929, 0, 0, -97.3, 0, 0),
(735, 19965, -1681.81, -1505.52, 34.0072, 0, 0, -107.9, 0, 0),
(736, 19991, -1550.9, -1304.49, 54.4141, 0, 0, -159, 0, 0),
(737, 19991, -1748.68, -1172.79, 53.9062, 0, 0, -152, 0, 0),
(738, 19986, -1775.79, -1074.41, 53.1957, 0, 0, 22.3, 0, 0),
(739, 1282, 967.936, -52.7486, 1000.73, 0, 0, 0, 3, 0),
(740, 1282, 967.974, -53.6852, 1000.71, 0, 0, 0, 3, 0),
(741, 3264, 967.98, -53.1518, 1000.24, 0, 0, -85.4, 3, 0),
(742, 1427, -19.9574, -1345.25, 10.4383, 0, 0, -55.3, 0, 0),
(743, 19980, -20.0683, -1345.39, 8.8471, 0, 0, 128.8, 0, 0),
(744, 19470, 1276.85, -617.12, 104.732, 0, 0, 123.1, 0, 0),
(745, 3264, 1276.17, -616.6, 101.802, 0, 0, -142.7, 0, 0),
(746, 19470, 1286.14, -612.94, 104.815, 0, 0, 125.4, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `robberies`
--

CREATE TABLE `robberies` (
  `ID` int(11) NOT NULL,
  `Robbery_X` float NOT NULL DEFAULT 0,
  `Robbery_Y` float NOT NULL DEFAULT 0,
  `Robbery_Z` float NOT NULL DEFAULT 0,
  `Robbery_RX` float NOT NULL DEFAULT 0,
  `Robbery_RY` float NOT NULL DEFAULT 0,
  `Robbery_RZ` float NOT NULL DEFAULT 0,
  `Robbery_World` int(11) NOT NULL DEFAULT 0,
  `Robbery_Interior` int(11) NOT NULL DEFAULT 0,
  `Robbery_Cooldown` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `robberies`
--

INSERT INTO `robberies` (`ID`, `Robbery_X`, `Robbery_Y`, `Robbery_Z`, `Robbery_RX`, `Robbery_RY`, `Robbery_RZ`, `Robbery_World`, `Robbery_Interior`, `Robbery_Cooldown`) VALUES
(0, 1318.29, -883.37, 39.0241, 0, 0, -90.6658, 0, 0, 0),
(1, 30.7266, -2657.7, 40.1233, 0, 0, 89.4618, 0, 0, 0),
(2, 2455.62, -1779.91, 13.1633, 0, 0, 179.946, 0, 0, 0),
(3, -2199.83, -2253.41, 30.1533, 0, 0, -38.458, 0, 0, 0),
(4, 176.411, 1189.66, 15.0457, 0, 0, 265.277, 0, 0, 0),
(5, -2338.56, 1011.92, 51.0481, 0, 0, 128.372, 0, 0, 0),
(6, -2617.9, 180.767, 3.77898, 0, 0, 87.6583, 0, 0, 0),
(7, 890.816, 1908.77, 10.2447, 0, 0, -1.42961, 0, 0, 0),
(8, 2206.34, 2748.54, 10.2317, 0, 0, 0.390671, 0, 0, 0),
(9, 2486.22, 742.834, 10.9774, 0, 0, 89.9439, 0, 0, 0),
(10, 1916.99, -1766.58, 12.9676, 0, 0, 359.566, 0, 0, 0),
(11, -2628.73, 2250.2, 7.60425, 0, 0, 89.6379, 0, 0, 0),
(12, -1292.87, 2719.17, 49.5073, 0, 0, 301.687, 0, 0, 0),
(13, 1440.09, 436.183, 19.6481, 0, 0, 244.164, 0, 0, 0),
(14, 2261.94, 22.8484, 25.953, 0, 0, 90.0026, 0, 0, 0),
(15, 111.447, -109.353, 1.01411, 0, 0, 359.738, 0, 0, 0),
(16, 702.279, -665.107, 15.7697, 0, 0, 178.944, 0, 0, 0),
(17, 574.206, 1629.07, 7.30129, 0, 0, -148.005, 0, 0, 0),
(18, -72.5638, -1184.79, 1.50465, 0, 0, 158.435, 0, 0, 0),
(19, 1601.31, 2239.43, 10.2474, 0, 0, -89.6744, 0, 0, 0),
(20, -1968.84, 170.913, 27.0811, 0, 0, -179.222, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rusun`
--

CREATE TABLE `rusun` (
  `ID` int(11) NOT NULL,
  `Name` varchar(34) NOT NULL DEFAULT '',
  `OwnerName` varchar(24) NOT NULL DEFAULT '',
  `OwnerID` int(11) NOT NULL DEFAULT 0,
  `Cost_30Day` int(11) NOT NULL DEFAULT 0,
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `PosA` float NOT NULL DEFAULT 0,
  `World` int(11) NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `rusun`
--

INSERT INTO `rusun` (`ID`, `Name`, `OwnerName`, `OwnerID`, `Cost_30Day`, `PosX`, `PosY`, `PosZ`, `PosA`, `World`, `Interior`) VALUES
(0, 'Jefferson Motel #1', '', 0, 1500000, -984.245, -1119.84, 129.488, 89.4692, 1, 171),
(1, 'Jefferson Motel #2', '', 0, 1500000, -984.268, -1124.41, 129.488, 90.0958, 1, 171),
(2, 'Jefferson Motel #3', '', 0, 1500000, -984.27, -1128.88, 129.488, 89.7826, 1, 171),
(3, 'Jefferson Motel #4', '', 0, 1500000, -988.5, -1128.89, 129.488, 268.048, 1, 171),
(4, 'Jefferson Motel #5', '', 0, 1500000, -988.539, -1124.41, 129.488, 268.361, 1, 171),
(5, 'Jefferson Motel #6', '', 0, 1500000, -988.44, -1119.84, 129.488, 267.734, 1, 171),
(6, 'Jefferson Motel #7', '', 0, 1500000, -988.631, -1102.64, 129.488, 269.638, 1, 171),
(7, 'Jefferson Motel #8', '', 0, 1500000, -988.483, -1098.16, 129.488, 269.951, 1, 171),
(8, 'Jefferson Motel #9', '', 0, 1500000, -988.517, -1093.66, 129.488, 268.384, 1, 171),
(9, 'Jefferson Motel #10', '', 0, 1500000, -984.245, -1093.76, 129.488, 88.5293, 1, 171),
(10, 'Jefferson Motel #11', '', 0, 1500000, -984.297, -1098.35, 129.488, 88.8426, 1, 171),
(11, 'Jefferson Motel #12', '', 0, 1500000, -984.357, -1102.94, 129.488, 90.4093, 1, 171),
(12, 'Jefferson Motel #13', '', 0, 1500000, -984.294, -1119.88, 135.398, 89.8063, 1, 171),
(13, 'Jefferson Motel #14', '', 0, 1500000, -984.14, -1124.49, 135.398, 88.5529, 1, 171),
(14, 'Jefferson Motel #15', '', 0, 1500000, -984.217, -1128.86, 135.398, 91.373, 1, 171),
(15, 'Jefferson Motel #16', '', 0, 1500000, -988.568, -1128.86, 135.398, 269.011, 1, 171),
(16, 'Jefferson Motel #17', '', 0, 1500000, -988.42, -1124.35, 135.398, 267.445, 1, 171),
(17, 'Jefferson Motel #18', '', 0, 1500000, -988.538, -1119.88, 135.398, 267.445, 1, 171),
(18, 'Jefferson Motel #19', '', 0, 1500000, -988.57, -1102.73, 135.398, 269.928, 1, 171),
(19, 'Jefferson Motel #20', '', 0, 1500000, -988.537, -1098.19, 135.398, 268.988, 1, 171),
(20, 'Jefferson Motel #21', '', 0, 1500000, -988.54, -1093.67, 135.398, 268.988, 1, 171),
(21, 'Jefferson Motel #22', '', 0, 1500000, -984.274, -1093.77, 135.398, 89.4463, 1, 171),
(22, 'Jefferson Motel #23', '', 0, 1500000, -984.25, -1098.34, 135.398, 87.2529, 1, 171),
(23, 'Jefferson Motel #24', '', 0, 1500000, -984.243, -1102.8, 135.398, 90.0729, 1, 171),
(24, 'Redsands East Motel #1', '', 0, 1500000, -984.295, -1119.86, 129.488, 89.6611, 3, 171),
(25, 'Redsands East Motel #2', '', 0, 1500000, -984.271, -1124.42, 129.488, 88.4078, 3, 171),
(26, 'Redsands East Motel #3', '', 0, 1500000, -984.273, -1128.91, 129.488, 90.6011, 3, 171),
(27, 'Redsands East Motel #4', '', 0, 1500000, -988.357, -1128.86, 129.488, 270.119, 3, 171),
(28, 'Redsands East Motel #5', '', 0, 1500000, -988.851, -1124.46, 129.488, 269.806, 3, 171),
(29, 'Redsands East Motel #6', '', 0, 1500000, -988.851, -1119.83, 129.488, 269.493, 3, 171),
(30, 'Redsands East Motel #7', '', 0, 1500000, -988.851, -1102.75, 129.488, 270.119, 3, 171),
(31, 'Redsands East Motel #8', '', 0, 1500000, -988.853, -1098.19, 129.488, 270.746, 3, 171),
(32, 'Redsands East Motel #9', '', 0, 1500000, -988.851, -1093.63, 129.488, 269.179, 3, 171),
(33, 'Redsands East Motel #10', '', 0, 1500000, -983.963, -1093.82, 129.488, 89.011, 3, 171),
(34, 'Redsands East Motel #11', '', 0, 1500000, -983.963, -1098.44, 129.488, 87.4444, 3, 171),
(35, 'Redsands East Motel #12', '', 0, 1500000, -983.961, -1102.85, 129.488, 90.2644, 3, 171),
(36, 'Redsands East Motel #13', '', 0, 1500000, -988.72, -1102.66, 135.398, 269.493, 3, 171),
(37, 'Redsands East Motel #14', '', 0, 1500000, -988.851, -1098.22, 135.398, 269.179, 3, 171),
(38, 'Redsands East Motel #15', '', 0, 1500000, -988.801, -1093.54, 135.398, 267.926, 3, 171),
(39, 'Redsands East Motel #16', '', 0, 1500000, -983.961, -1093.85, 135.398, 89.0111, 3, 171),
(40, 'Redsands East Motel #17', '', 0, 1500000, -984.177, -1098.45, 135.398, 91.2045, 3, 171),
(41, 'Redsands East Motel #18', '', 0, 1500000, -983.963, -1102.88, 135.398, 89.0112, 3, 171),
(42, 'Redsands East Motel #19', '', 0, 1500000, -983.959, -1119.86, 135.398, 90.5779, 3, 171),
(43, 'Redsands East Motel #20', '', 0, 1500000, -984.169, -1124.49, 135.398, 90.2646, 3, 171),
(44, 'Redsands East Motel #21', '', 0, 1500000, -983.961, -1128.92, 135.398, 90.2646, 3, 171),
(45, 'Redsands East Motel #22', '', 0, 1500000, -988.851, -1128.89, 135.398, 268.53, 3, 171),
(46, 'Redsands East Motel #23', '', 0, 1500000, -988.82, -1124.36, 135.398, 271.35, 3, 171),
(47, 'Redsands East Motel #24', '', 0, 1500000, -988.851, -1119.85, 135.398, 270.41, 3, 171),
(48, 'Juniper Hollow Motel #1', '', 0, 1500000, -988.387, -1102.52, 129.488, 269.806, 2, 171),
(49, 'Juniper Hollow Motel #2', '', 0, 1500000, -988.848, -1098.17, 129.488, 267.926, 2, 171),
(50, 'Juniper Hollow Motel #3', '', 0, 1500000, -988.851, -1093.61, 129.488, 269.806, 2, 171),
(51, 'Juniper Hollow Motel #4', '', 0, 1500000, -984.002, -1093.87, 129.488, 87.7577, 2, 171),
(52, 'Juniper Hollow Motel #5', '', 0, 1500000, -983.96, -1098.44, 129.488, 90.2643, 2, 171),
(53, 'Juniper Hollow Motel #6', '', 0, 1500000, -983.958, -1102.84, 129.488, 92.7711, 2, 171),
(54, 'Juniper Hollow Motel #7', '', 0, 1500000, -983.961, -1119.87, 129.488, 87.7577, 2, 171),
(55, 'Juniper Hollow Motel #8', '', 0, 1500000, -983.96, -1124.38, 129.488, 90.5778, 2, 171),
(56, 'Juniper Hollow Motel #9', '', 0, 1500000, -983.961, -1128.87, 129.488, 89.0111, 2, 171),
(57, 'Juniper Hollow Motel #10', '', 0, 1500000, -988.807, -1128.79, 129.488, 270.096, 2, 171),
(58, 'Juniper Hollow Motel #11', '', 0, 1500000, -988.642, -1124.38, 129.488, 269.783, 2, 171),
(59, 'Juniper Hollow Motel #12', '', 0, 1500000, -988.723, -1119.72, 129.488, 271.663, 2, 171),
(60, 'Juniper Hollow Motel #13', '', 0, 1500000, -984.015, -1119.93, 135.398, 91.8312, 2, 171),
(61, 'Juniper Hollow Motel #14', '', 0, 1500000, -983.958, -1124.46, 135.398, 91.2046, 2, 171),
(62, 'Juniper Hollow Motel #15', '', 0, 1500000, -983.956, -1128.92, 135.398, 93.3979, 2, 171),
(63, 'Juniper Hollow Motel #16', '', 0, 1500000, -988.797, -1128.82, 135.398, 269.156, 2, 171),
(64, 'Juniper Hollow Motel #17', '', 0, 1500000, -988.79, -1124.37, 135.398, 271.036, 2, 171),
(65, 'Juniper Hollow Motel #18', '', 0, 1500000, -988.768, -1119.77, 135.398, 268.843, 2, 171),
(66, 'Juniper Hollow Motel #19', '', 0, 1500000, -988.854, -1102.65, 135.398, 272.603, 2, 171),
(67, 'Juniper Hollow Motel #20', '', 0, 1500000, -988.852, -1098.14, 135.398, 271.036, 2, 171),
(68, 'Juniper Hollow Motel #21', '', 0, 1500000, -988.851, -1093.6, 135.398, 272.916, 2, 171),
(69, 'Juniper Hollow Motel #22', '', 0, 1500000, -983.959, -1093.76, 135.398, 93.0846, 2, 171),
(70, 'Juniper Hollow Motel #23', '', 0, 1500000, -984.003, -1098.44, 135.398, 91.5179, 2, 171),
(71, 'Juniper Hollow Motel #24', '', 0, 1500000, -983.961, -1102.87, 135.398, 90.8912, 2, 171);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rusun_brankas`
--

CREATE TABLE `rusun_brankas` (
  `Owner` int(11) DEFAULT 0,
  `ID` int(11) NOT NULL,
  `Item` varchar(32) DEFAULT NULL,
  `Model` int(11) DEFAULT 0,
  `Quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `salary`
--

CREATE TABLE `salary` (
  `id` bigint(20) NOT NULL,
  `owner` int(11) DEFAULT 0,
  `issuer` varchar(46) DEFAULT '',
  `money` int(11) NOT NULL DEFAULT 0,
  `reason` varchar(46) DEFAULT '',
  `date` varchar(36) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `server_tags`
--

CREATE TABLE `server_tags` (
  `id` int(11) NOT NULL DEFAULT -1,
  `Model` int(11) NOT NULL DEFAULT 0,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0,
  `Text` varchar(144) NOT NULL DEFAULT '',
  `CreatorID` int(11) NOT NULL DEFAULT 0,
  `Creator` varchar(25) NOT NULL DEFAULT '',
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `PosRX` float NOT NULL DEFAULT 0,
  `PosRY` float NOT NULL DEFAULT 0,
  `PosRZ` float NOT NULL DEFAULT 0,
  `Expired` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `shops`
--

CREATE TABLE `shops` (
  `ID` int(11) NOT NULL,
  `type` tinyint(4) DEFAULT 0,
  `shopX` float DEFAULT 0,
  `shopY` float DEFAULT 0,
  `shopZ` float DEFAULT 0,
  `shopVw` int(11) DEFAULT 0,
  `shopInt` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `shops`
--

INSERT INTO `shops` (`ID`, `type`, `shopX`, `shopY`, `shopZ`, `shopVw`, `shopInt`) VALUES
(0, 1, 1313.55, -889.175, 39.639, 0, 0),
(1, 1, 1921.93, -1769.91, 13.5586, 0, 0),
(2, 2, 668.062, -618.492, 16.3386, 0, 0),
(3, 2, 2124.33, -1917.88, 14.4254, 0, 0),
(4, 1, 35.438, -2651.98, 40.6959, 0, 0),
(5, 1, 2449.96, -1775.18, 13.7728, 0, 0),
(6, 1, -2197.88, -2260.55, 30.7459, 0, 0),
(7, 2, 199.972, -1438.41, 13.1575, 0, 0),
(8, 1, -2625.87, 2254.74, 8.21527, 0, 0),
(9, 2, -2239.2, -2281.08, 31.5264, 0, 0),
(10, 2, -2398.26, 131.915, 35.9793, 0, 0),
(11, 2, -1678.72, 1318.21, 7.20866, 0, 0),
(12, 4, -254.859, 1220.09, 19.7797, 0, 0),
(13, 2, -2489.29, 2281.28, 4.99009, 0, 0),
(14, 1, 1741.59, -2534.36, 13.5978, 60, 0),
(15, 2, 1741.19, -2490.02, 13.6069, 60, 0),
(16, 1, -2615.56, 170.129, 4.37899, 0, 0),
(17, 1, -2335.68, 1002.88, 50.9381, 0, 0),
(18, 1, 170.608, 1180.91, 14.8557, 0, 0),
(19, 1, -1293.03, 2713.69, 50.1083, 0, 0),
(20, 1, 1435.74, 433.379, 20.2591, 0, 0),
(21, 3, 1745.05, -2516.83, 20.2869, 60, 0),
(22, 1, 894.105, 1905.39, 10.8447, 0, 0),
(23, 1, 2214.79, 2742.73, 10.829, 0, 0),
(24, 1, 2494.7, 738.826, 10.8474, 0, 0),
(25, 2, 2322.53, 994.767, 11.473, 0, 0),
(26, 2, 1993.3, 2084.94, 11.3172, 0, 0),
(27, 1, 2265.09, 27.2706, 26.534, 0, 0),
(28, 1, 1977.53, -2476.53, -15.1331, 543, 0),
(29, 1, 1324.17, -1841.74, 13.5469, 0, 0),
(30, 1, 115.857, -112.516, 1.62512, 0, 0),
(31, 1, 359.328, -2032.23, 7.83594, 0, 0),
(32, 1, 2771.12, -2405.13, 29.1981, 91, 1),
(33, 2, 2797.92, -2399.29, 29.1902, 91, 1),
(34, 1, 698.013, -661.992, 16.3907, 0, 0),
(35, 1, 572.86, 1635.44, 7.02229, 0, 0),
(36, 1, -75.5716, -1180.42, 2.13565, 0, 0),
(37, 1, 1598.39, 2234.87, 10.8484, 0, 0),
(38, 1, -1973.39, 173.754, 27.7022, 0, 0),
(39, 3, 444.608, -1802.68, 5.55362, 0, 0),
(40, 2, 2328.1, 6.78741, 26.5301, 0, 0),
(41, 3, -2144.14, -2425.89, 30.625, 0, 0),
(42, 3, 745.001, 1439.75, 1102.7, 0, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `speedcam`
--

CREATE TABLE `speedcam` (
  `ID` int(11) NOT NULL,
  `scvw` int(11) NOT NULL DEFAULT 0,
  `scint` int(11) NOT NULL DEFAULT 0,
  `scx` float NOT NULL,
  `scy` float NOT NULL,
  `scz` float NOT NULL,
  `scrx` float NOT NULL,
  `scry` float NOT NULL,
  `scrz` float NOT NULL,
  `scspeed` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `speedcam`
--

INSERT INTO `speedcam` (`ID`, `scvw`, `scint`, `scx`, `scy`, `scz`, `scrx`, `scry`, `scrz`, `scspeed`) VALUES
(0, 0, 0, -1329.9, 2654.29, 49.2701, 0, 0, -69.2, 55),
(1, 0, 0, -1269.54, 1921.57, 42.1937, 0, 0, 43.6, 55),
(2, 0, 0, -1187.66, 1790.16, 40.2612, 0, 0, 37.2, 55),
(3, 0, 0, -851.747, 1555.74, 23.2296, 0, 0, 0, 55),
(4, 0, 0, -608.425, 1156.18, 7.10459, 0, 0, 16.2, 55),
(5, 0, 0, -330.689, 942.828, 10.2274, 0, 0, -127.8, 55),
(6, 0, 0, 193.446, 1140.15, 13.7655, 0, 0, 165.5, 55),
(7, 0, 0, -1529.57, 2738.93, 62.9075, 0, 0, -90.9001, 55),
(8, 0, 0, -2004.89, 2399.11, 32.6834, 0, 0, 21.1, 55),
(9, 0, 0, -1602.8, 2450.68, 62.3542, 0, 0, -19.4, 55),
(10, 0, 0, 56.3371, 879.357, 23.0963, 0, 0, 86.9, 55),
(11, 0, 0, -48.4121, 2647.04, 62.7466, 0, 0, -88.8, 55),
(12, 0, 0, -431.485, 2729.32, 61.6634, 0, 0, -88.0999, 55),
(13, 0, 0, -957.093, 2727.64, 44.9978, 0, 0, -83.4, 55),
(14, 0, 0, -951.889, 1825.16, 60.7286, 0, 0, -145.2, 55),
(15, 0, 0, -504.402, 1995.51, 59.4383, 0, 0, -87.4, 55),
(16, 0, 0, -374.74, 1839.24, 50.5165, 0, 0, -169.4, 55),
(17, 0, 0, -389.842, 1328.24, 25.7745, 0, 0, -151.5, 45),
(18, 0, 0, -165.786, 1239.18, 20.0081, 0, 0, 94.5, 45),
(19, 0, 0, 437.405, 1607.41, 16.4806, 0, 0, 134.1, 55),
(20, 0, 0, 670.607, 1955.5, 5.04108, 0, 0, 175.7, 55),
(21, 0, 0, 810.88, 2016.81, 9.33506, 0, 0, 0, 55),
(22, 0, 0, 853.809, 1552.8, 17.2736, 0, 0, 154.6, 55),
(23, 0, 0, 782.879, 1134.83, 27.1774, 0, 0, -71, 55),
(24, 0, 0, 394.307, 1027.77, 27.6358, 0, 0, -71.8, 55),
(25, 0, 0, 418.179, 602.047, 18.1901, 0, 0, 32.8, 55),
(26, 0, 0, 585.091, 2096.11, 37.1446, 0, 0, 6.8, 55),
(27, 0, 0, 343.984, 2322.63, 24.3036, 0, 0, -49.6, 55),
(28, 0, 0, -77.2415, 2399.78, 15.3802, 0, 0, -169.4, 55),
(29, 0, 0, -623.231, 2470.57, 73.5646, 0, 0, -132.7, 55),
(30, 0, 0, -1878.21, 2632.37, 50.4184, 0, 0, -41.6, 70),
(31, 0, 0, -2472.53, 2291.47, 3.89437, 0, 0, 0, 55),
(32, 0, 0, -2473.87, 2426.72, 14.6653, 0, 0, 101.3, 20),
(33, 0, 0, -2570.6, 2424.31, 13.805, 0, 0, -127.6, 20),
(34, 0, 0, -2561.31, 2288.89, 3.90437, 0, 0, 30.3, 20),
(35, 0, 0, 822.48, 707.88, 10.5909, 0, 0, -70.8, 70),
(36, 0, 0, 483.828, 701.248, 3.94959, 0, 0, 62.6, 70),
(37, 0, 0, 124.434, 671.489, 4.92152, 0, 0, 118.9, 70),
(38, 0, 0, -755.93, 693.204, 17.0788, 0, 0, 66.2, 70),
(39, 0, 0, -745.451, 719.044, 17.2738, 0, 0, -115.8, 70),
(40, 0, 0, -893.115, 1143.61, 27.5676, 0, 0, -148.9, 70),
(41, 0, 0, -973.319, 1141.94, 29.3315, 0, 0, 32.7, 70),
(42, 0, 0, -1136.64, 1531.09, 21.098, 0, 0, 5.4, 70),
(43, 0, 0, -1617.44, 1774.86, 9.15276, 0, 0, 35.3, 70),
(44, 0, 0, -1906.45, 2458.19, 52.8967, 0, 0, -160.8, 70),
(45, 0, 0, -1942.71, 2444.77, 52.5223, 0, 0, 21.9, 70),
(46, 0, 0, -2357.71, 2627.51, 53.0272, 0, 0, 97, 70),
(47, 0, 0, -2726.51, 2480.16, 75.8743, 0, 0, 163.9, 70),
(48, 0, 0, 835.121, 675.582, 10.6763, 0, 0, 109, 70),
(49, 0, 0, 500.469, 731.768, 2.85903, 0, 0, -119.9, 70),
(50, 0, 0, 106.311, 703.148, 4.73504, 0, 0, -61.2, 70),
(51, 0, 0, -1091.2, 1536.71, 25.9973, 0, 0, -173.4, 70),
(52, 0, 0, -1407.94, 1811.57, 35.8544, 0, 0, -101, 50),
(53, 0, 0, -1580.8, 1803.77, 15.8625, 0, 0, -133.3, 70),
(54, 0, 0, -2357.69, 2679.79, 57.6047, 0, 0, -89.5001, 70),
(55, 0, 0, -281.286, 1157.81, 18.6422, 0, 0, 0, 20),
(56, 0, 0, -269.504, 1064.52, 18.6322, 0, 0, -179.3, 20),
(57, 0, 0, -49.2182, 1204.39, 18.2594, 0, 0, -88, 20),
(58, 0, 0, -199.083, 954.93, 15.7636, 0, 0, 0.699998, 20),
(59, 0, 0, 611.665, 318.325, 18.6764, 0, 0, -40.6, 55),
(60, 0, 0, 448.194, 190.391, 9.74699, 0, 0, -55.4, 55),
(61, 0, 0, -55.9861, 202.066, 1.29969, 0, 0, -122.2, 55),
(62, 0, 0, -251.014, 100.014, 0.329688, 0, 0, 157.5, 55),
(63, 0, 0, -31.3254, -196.967, 0.51433, 0, 0, -95.8, 55),
(64, 0, 0, 227.119, -123.921, 0.458126, 0, 0, 0, 20),
(65, 0, 0, 273.727, -78.3576, 0.448126, 0, 0, 88.7, 20),
(66, 0, 0, 338.575, -106.668, 0.312294, 0, 0, 177.7, 20),
(67, 0, 0, 539.864, -37.0391, 29.4221, 0, 0, 177.6, 55),
(68, 0, 0, 921.416, 360.378, 18.9399, 0, 0, 111.1, 55),
(69, 0, 0, 1222.16, 532.709, 19.0443, 0, 0, -119.2, 55),
(70, 0, 0, 1516.24, 381.856, 19.0323, 0, 0, 79.1, 55),
(71, 0, 0, 1232.72, 52.7636, 22.4979, 0, 0, 0, 55),
(72, 0, 0, 1393.46, -6.22704, 32.1833, 0, 0, 126.4, 55),
(73, 0, 0, 1411.94, 185.474, 19.4152, 0, 0, 61.7, 55),
(74, 0, 0, 1774.85, 100.753, 32.8327, 0, 0, -111.7, 55),
(75, 0, 0, 2156.52, 34.6582, 25.309, 0, 0, 86.8, 55),
(76, 0, 0, 1122.12, -178.547, 40.8413, 0, 0, -82.7, 55),
(77, 0, 0, 709.357, -152.043, 20.8235, 0, 0, -101.5, 55),
(78, 0, 0, 489.187, -300.511, 39.9491, 0, 0, -15, 55),
(79, 0, 0, 267.319, 896.437, 21.5963, 0, 0, -159.5, 55),
(80, 0, 0, 815.361, -1390.1, 12.5733, 0, 0, -88.9, 35),
(81, 0, 0, 1545.73, -1726.81, 13.7769, 0, 0, -89.4999, 35),
(82, 0, 0, 1291.65, -1620.74, 12.4569, 0, 0, 0, 35),
(83, 0, 0, 1964.02, -1492.44, 2.39259, 0, 0, -87.6001, 55),
(84, 0, 0, 1827.17, -1807.42, 12.5112, 0, 0, -179.1, 35),
(85, 0, 0, 907.031, -1411.47, 13.4686, 0, 0, 89.8001, 35),
(86, 0, 0, 1816.01, -1741.16, 13.6728, 0, 0, 0, 35),
(87, 0, 0, 2514.53, -1162.04, 39.6683, 0, 0, 95, 50),
(88, 0, 0, 2531.47, -1144.1, 41.0466, 0, 0, -87.8, 50),
(89, 0, 0, 2111.48, -1113.47, 24.0011, 0, 0, 74.6, 50),
(90, 0, 0, 2118.03, -1094.34, 23.1817, 0, 0, 61.9, 50),
(91, 0, 0, 1958.72, -1129.46, 24.7668, 0, 0, -90.2, 40),
(92, 0, 0, 1962.1, -1267.04, 22.2274, 0, 0, 92.1, 40),
(93, 0, 0, 1729.32, -1294.32, 12.2912, 0, 0, -89.4, 40),
(94, 0, 0, 1448.65, -1294.71, 12.2869, 0, 0, 0, 40),
(95, 0, 0, 1439.67, -1737.99, 12.3969, 0, 0, 85.6, 35),
(96, 0, 0, 1609.4, -1878.05, 12.3669, 0, 0, 93.1, 35),
(97, 0, 0, 1318.95, -1907.94, 22.1875, 0, 0, -103.1, 35),
(98, 0, 0, 1372.64, -1961.96, 32.3529, 0, 0, -91, 35),
(99, 0, 0, 1555.51, -2107.91, 32.2249, 0, 0, 39, 35),
(100, 0, 0, 1671.52, -2160.18, 17.7581, 0, 0, -90, 35),
(101, 0, 0, 1967.24, -2042.54, 12.4669, 0, 0, -178.7, 35),
(102, 0, 0, 1967.2, -1801.09, 12.4769, 0, 0, -178.8, 35),
(103, 0, 0, 2118.4, -1573.3, 24.9096, 0, 0, 179.3, 35),
(104, 0, 0, 2088.67, -1744.6, 13.5617, 0, 0, 0, 35),
(105, 0, 0, -472.88, 275.591, 1.11888, 0, 0, 89.4, 55),
(106, 0, 0, -1165.84, -607.033, 36.7515, 0, 0, -14.6, 55),
(107, 0, 0, -1426.04, -825.082, 78.0505, 0, 0, 92.8, 55),
(108, 0, 0, 169.41, -1513.81, 11.3335, 0, 0, 144.8, 50),
(109, 0, 0, 235.949, -1458.15, 12.2607, 0, 0, -45.5, 50),
(110, 0, 0, 1907.74, -1015.9, 34.4988, 0, 0, 84.6, 30),
(111, 0, 0, 622.949, -1201.51, 17.2062, 0, 0, 28.3, 30),
(112, 0, 0, -1645.64, -815.366, 90.387, 0, 0, -142.4, 30),
(113, 0, 0, -287.897, -870.413, 45.6321, 0, 0, 69.8999, 30),
(114, 0, 0, 1661.47, 296.128, 28.9229, 0, 0, -15.8, 50),
(115, 0, 0, -1764.65, -1690.23, 32.6931, 0, 0, -65.6, 40),
(116, 0, 0, -787.656, -1755, 92.8553, 0, 0, 144.4, 40),
(117, 0, 0, -510.481, -1048.85, 22.9264, 0, 0, -38.8, 40),
(118, 0, 0, 195.105, -1740.22, 3.36904, 0, 0, 92.6, 35),
(119, 0, 0, -1995.67, 1297.71, 6.0975, 0, 0, 91.4, 45),
(120, 0, 0, -1760.89, 1354.53, 6.10749, 0, 0, 57.2, 45),
(121, 0, 0, -1592.26, 1025.52, 6.22562, 0, 0, 27, 45),
(122, 0, 0, -1568.12, 522.749, 6.07642, 0, 0, 0, 45),
(123, 0, 0, -1713.33, 351.614, 6.12749, 0, 0, -43.2, 45),
(124, 0, 0, -1805.24, -57.2913, 11.8839, 0, 0, 8.3, 45),
(125, 0, 0, -1811.93, -427.851, 14.0194, 0, 0, 170.7, 45),
(126, 0, 0, -1754.98, -721.891, 29.3719, 0, 0, 39.7, 45);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stuffs`
--

CREATE TABLE `stuffs` (
  `id` int(11) NOT NULL DEFAULT 0,
  `rusunreset` bigint(32) UNSIGNED NOT NULL DEFAULT 0,
  `taxtiming` bigint(32) UNSIGNED NOT NULL DEFAULT 0,
  `polisimoneyvault` bigint(32) UNSIGNED NOT NULL DEFAULT 0,
  `emsmoneyvault` bigint(32) UNSIGNED NOT NULL DEFAULT 0,
  `burgershotmoneyvault` bigint(32) UNSIGNED NOT NULL DEFAULT 0,
  `pemermoneyvault` bigint(32) UNSIGNED NOT NULL DEFAULT 0,
  `dinarbucksmoneyvault` bigint(32) UNSIGNED NOT NULL DEFAULT 0,
  `ubermoneyvault` bigint(32) UNSIGNED NOT NULL DEFAULT 0,
  `bennysmoneyvault` bigint(32) UNSIGNED NOT NULL DEFAULT 0,
  `fox11moneyvault` bigint(32) UNSIGNED NOT NULL DEFAULT 0,
  `automaxmoneyvault` bigint(32) UNSIGNED NOT NULL DEFAULT 0,
  `handovermoneyvault` bigint(32) UNSIGNED NOT NULL DEFAULT 0,
  `srimersingmoneyvault` bigint(32) UNSIGNED NOT NULL DEFAULT 0,
  `putridelimoneyvault` bigint(32) UNSIGNED NOT NULL DEFAULT 0,
  `texaschickenmoneyvault` bigint(32) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `stuffs`
--

INSERT INTO `stuffs` (`id`, `rusunreset`, `taxtiming`, `polisimoneyvault`, `emsmoneyvault`, `burgershotmoneyvault`, `pemermoneyvault`, `dinarbucksmoneyvault`, `ubermoneyvault`, `bennysmoneyvault`, `fox11moneyvault`, `automaxmoneyvault`, `handovermoneyvault`, `srimersingmoneyvault`, `putridelimoneyvault`, `texaschickenmoneyvault`) VALUES
(0, 1781372067, 1780620975, 0, 43068407, 93, 0, 37049113, 0, 0, 2809268, 32585519, 77002265, 26401060, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `trees`
--

CREATE TABLE `trees` (
  `id` int(11) DEFAULT -1,
  `Type` int(11) DEFAULT 0,
  `posX` float DEFAULT 0,
  `posY` float DEFAULT 0,
  `posZ` float DEFAULT 0,
  `posRx` float DEFAULT 0,
  `posRy` float DEFAULT 0,
  `posRz` float DEFAULT 0,
  `Interior` int(11) DEFAULT 0,
  `World` int(11) DEFAULT 0,
  `Health` float DEFAULT 1000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `trees`
--

INSERT INTO `trees` (`id`, `Type`, `posX`, `posY`, `posZ`, `posRx`, `posRy`, `posRz`, `Interior`, `World`, `Health`) VALUES
(1, 1, -420.691, -88.3541, 53.5185, 0, 0, 0, 0, 0, 600),
(2, 1, -450.909, -61.7187, 58.7726, 0, 0, 0, 0, 0, 600),
(3, 1, -443.207, -81.0531, 57.8359, 0, 0, 0, 0, 0, 600),
(5, 1, -446.663, -102.979, 59.5825, 0, 0, 0, 0, 0, 600),
(7, 1, -497.357, -66.37, 60.2534, 0, 0, 0, 0, 0, 600),
(8, 1, -515.768, -59.9801, 60.8171, 0, 0, 0, 0, 0, 600),
(10, 1, -465.712, -96.9203, 59.6835, 0, 0, 0, 0, 0, 600),
(12, 1, -498.366, -41.6227, 58.8942, 0, 0, 0, 0, 0, 600),
(13, 1, -462.578, -46.6943, 58.9936, 0, 0, 0, 0, 0, 600),
(14, 1, -472.38, -31.0556, 58.0398, 0, 0, 0, 0, 0, 600),
(15, 1, -488.509, -20.0382, 56.3291, 0, 0, 0, 0, 0, 600),
(17, 1, -458.551, -13.5974, 54.2942, 0, 0, 0, 0, 0, 600),
(18, 1, -446.844, -29.6949, 56.7593, 0, 0, 0, 0, 0, 600),
(19, 1, -459.915, -72.2694, 59.0525, 0, 0, 0, 0, 0, 600),
(20, 1, -488.155, -100.343, 61.023, 0, 0, 0, 0, 0, 600),
(21, 1, -511.947, -2.28874, 54.8241, 0, -1.3, 0, 0, 0, 600),
(22, 1, -445.071, -147.32, 70.9661, 0, 0, 0, 0, 0, 600),
(23, 1, -486.4, 2.29375, 52.7788, 0, 0, 0, 0, 0, 600),
(24, 1, -431.132, -121.042, 62.1928, 0, 0, 0, 0, 0, 600),
(25, 1, -477.839, 19.3099, 48.5239, 0, 0, 0, 0, 0, 600),
(26, 1, -538.738, 26.3545, 57.8446, 0, 0, 0, 0, 0, 600),
(28, 2, -566.878, 29.8097, 58.9439, 0, 0, 0, 0, 0, 1000),
(29, 2, -567.478, -14.5496, 62.3706, 0, 0, 0, 0, 0, 1000),
(30, 2, -515.429, -17.7374, 56.9679, 0, 0, 0, 0, 0, 1000),
(31, 2, -481.414, -48.7175, 58.5468, 0, 0, 0, 0, 0, 1000),
(32, 1, -559.36, 173.942, 13.5075, 0, 0, 0, 0, 0, 600),
(0, 1, -671.466, 183.624, 22.8132, 0, 0, 0, 0, 0, 600),
(33, 1, -652.399, 226.586, 17.7176, 0, 0, 0, 0, 0, 600),
(34, 1, -429.175, -30.9885, 56.5012, 0, 0, 0, 0, 0, 600),
(36, 1, -625.768, 240.718, 19.3798, 0, 0, 0, 0, 0, 600),
(38, 1, -617.129, 211.016, 24.5888, 0, 0, 0, 0, 0, 600),
(39, 1, -451.825, 6.36648, 51.6278, 0, 0, 0, 0, 0, 600),
(42, 1, -573.682, 252.488, 18.5895, 0, 0, 0, 0, 0, 600),
(43, 1, -576.659, 226.402, 16.8877, 0, 0, 0, 0, 0, 600),
(44, 1, -426.592, 30.1099, 49.732, 0, 0, 0, 0, 0, 600),
(45, 1, -556.612, 241.177, 15.7406, 0, 0, 0, 0, 0, 600),
(46, 1, -540.883, 218.986, 11.4449, 0, 0, 0, 0, 0, 600),
(47, 1, -436.099, 6.84849, 51.4754, 0, 0, 0, 0, 0, 600),
(51, 1, -526.073, 245.017, 14.2054, 0, 0, 0, 0, 0, 600),
(52, 1, -519.484, 209.57, 10.2632, 0, 0, 0, 0, 0, 600),
(53, 1, -499.024, 229.929, 9.23721, 0, 0, 0, 0, 0, 600),
(56, 1, -591.58, 160.005, 20.5617, 0, 0, 0, 0, 0, 600),
(57, 1, -340.584, 175.303, 5.70638, 0, 0, 0, 0, 0, 600),
(58, 3, -456.764, 65.2807, 32.101, 0, 0, 0, 0, 0, 1500),
(59, 1, -636.841, 119.057, 35.319, 0, 0, 0, 0, 0, 600),
(60, 3, -413.899, 85.3945, 26.2181, 0, 0, 0, 0, 0, 1500),
(61, 3, -442.929, 127.066, 16.2241, 0, 0, 0, 0, 0, 1500),
(54, 1, -568.572, 202.476, 13.5992, 0, 0, 0, 0, 0, 600),
(62, 1, -599.901, 191.36, 24.1308, 0, 0, 0, 0, 0, 600),
(63, 1, -370.686, 204.622, 4.17807, 0, 0, 0, 0, 0, 600),
(64, 1, -640, 182.515, 23.2746, 0, 0, 0, 0, 0, 600),
(66, 3, -505.762, 116.73, 20.1488, 0, 0, 0, 0, 0, 1500),
(67, 3, -489.617, 153.896, 11.2475, 0, 0, 0, 0, 0, 1500),
(68, 1, -395.996, 204.924, 5.90695, 0, 0, 0, 0, 0, 600),
(69, 1, -469.726, 257.584, 11.0226, 0, 0, 0, 0, 0, 600),
(71, 1, -564.86, 126.333, 21.7835, 0, 0, 0, 0, 0, 600),
(72, 1, -375.371, 230.542, 7.77834, 0, 0, 0, 0, 0, 600),
(6, 1, -564.373, 150.519, 19.0513, 0, 0, 0, 0, 0, 600),
(74, 1, -525.358, 122.139, 22.4598, 0, 0, 0, 0, 0, 600),
(75, 1, -492.76, 55.0461, 39.2886, 0, 0, 0, 0, 0, 600),
(78, 1, -324.026, 233.519, 13.3027, 0, 0, 0, 0, 0, 600),
(81, 3, -538.197, 54.3406, 52.3823, 0, 0, 0, 0, 0, 1500),
(82, 1, -290.982, 203.736, 5.43831, 0, 0, 0, 0, 0, 600),
(83, 1, -319.889, 213.024, 9.97575, 0, 0, 0, 0, 0, 600),
(84, 1, -476.731, 125.709, 14.3985, 0, 0, 0, 0, 0, 600),
(86, 1, -542.843, 109.111, 26.312, 0, 0, 0, 0, 0, 600),
(87, 1, -357.65, 181.925, 4.76576, 0, 0, 0, 0, 0, 600),
(88, 1, -534.257, 154.692, 15.0774, 0, 0, 0, 0, 0, 600),
(89, 1, -360.486, 220.392, 6.36563, 0, 0, 0, 0, 0, 600),
(90, 1, -559.337, 56.8736, 51.9754, 0, 0, 0, 0, 0, 600),
(91, 1, -392.275, 240.159, 9.38231, 0, 0, 0, 0, 0, 600),
(92, 1, -413.923, 247.221, 10.5396, 0, 0, 0, 0, 0, 600),
(93, 1, -258.989, 215.143, 9.74569, 0, 0, 0, 0, 0, 600),
(94, 1, -425.106, 219.876, 9.98114, 0, 0, 0, 0, 0, 600),
(95, 1, -425.682, 203.434, 9.29993, 0, 0, 0, 0, 0, 600),
(96, 1, -578.264, 74.2592, 43.6933, 0, 0, 0, 0, 0, 600),
(97, 1, -422.304, 188.277, 4.98743, 0, 0, 0, 0, 0, 600),
(98, 1, -466.146, 219.202, 7.9872, 0, 0, 0, 0, 0, 600),
(99, 1, -446.651, 235.39, 8.82061, 0, 0, 0, 0, 0, 600),
(11, 1, -509.738, 165.374, 9.55737, 0, 0, 0, 0, 0, 600),
(37, 1, -508.284, 186.786, 8.14423, 0, 0, 0, 0, 0, 600),
(100, 2, -352.017, -40.4024, 40.7482, 0, 0, 0, 0, 0, 1000),
(101, 2, -352.788, -15.0469, 42.2066, 0, 0, 0, 0, 0, 1000),
(102, 3, -314.164, 130.781, 4.4253, 0, 0, 0, 0, 0, 1500),
(103, 3, -359.601, 109.825, 12.3242, 0, 0, 0, 0, 0, 1500),
(104, 2, -328.952, -26.7541, 42.7736, 0, 0, 0, 0, 0, 1000),
(105, 2, -371.264, -64.9137, 40.7099, 0, 0, 0, 0, 0, 1000),
(107, 2, -380.499, -97.7154, 45.8909, 0, 0, 0, 0, 0, 1000),
(109, 3, -361.424, 25.3634, 33.8094, 0, 0, 0, 0, 0, 1500),
(110, 2, -364.614, -129.192, 50.4718, 0, 0, 0, 0, 0, 1000),
(112, 2, -383.695, -158.469, 56.1781, 0, 0, 0, 0, 0, 1000),
(113, 2, -331.579, 24.6049, 32.3857, 0, 0, 0, 0, 0, 1000),
(114, 1, -321.893, 38.1218, 30.1385, 0, 0, 0, 0, 0, 600),
(115, 2, -396.168, -141.555, 56.5891, 0, 0, 0, 0, 0, 1000),
(117, 2, -409.994, -105.607, 51.9608, 0, 0, 0, 0, 0, 1000),
(118, 2, -397.959, -79.9041, 44.4408, 0, 0, 0, 0, 0, 1000),
(119, 2, -407.659, -63.5043, 47.6727, 0, 0, 0, 0, 0, 1000),
(121, 2, -384.834, -41.1802, 36.5305, 0, 0, 0, 0, 0, 1000),
(122, 2, -409.603, -36.7205, 45.9912, 0, 0, 0, 0, 0, 1000),
(123, 2, -402.359, -25.4157, 35.8491, 0, 0, 0, 0, 0, 1000),
(124, 2, -405.232, -2.07154, 34.7469, 0, 0, 0, 0, 0, 1000),
(125, 2, -380.378, 3.88498, 35.9948, 0, 0, 0, 0, 0, 1000),
(126, 2, -341.015, -62.4646, 44.5973, 0, 0, 0, 0, 0, 1000),
(106, 3, -369.786, -86.351, 44.4421, 0, 0, 0, 0, 0, 1500),
(120, 3, -391.052, -60.8439, 40.5227, 0, 0, 0, 0, 0, 1500),
(116, 3, -409.206, -130.712, 58.2685, 0, 0, 0, 0, 0, 1500),
(127, 3, -441.541, 258.636, 10.485, 0, 0, 0, 0, 0, 1500),
(108, 3, -382.979, -117.856, 50.118, 0, 0, 0, 0, 0, 1500),
(76, 2, -422.483, -165.492, 70.2777, 0, 0, 0, 0, 0, 1000),
(128, 2, -406.518, 224.202, 8.29686, 0, 0, 0, 0, 0, 1000),
(129, 3, -441.36, -171.601, 74.1194, 0, 0, 0, 0, 0, 1500),
(130, 3, -448.144, -211.23, 74.5454, 0, 0, 0, 0, 0, 1500),
(131, 1, -475.102, -207.744, 77.4562, 0, 0, 0, 0, 0, 600),
(9, 3, -473.638, -64.0749, 59.2167, 0, 0, 0, 0, 0, 1500),
(4, 2, -473.111, -9.68528, 54.1333, 0, 0, 0, 0, 0, 1000),
(16, 1, -350.205, -25.2321, 41.6765, 0, 0, 0, 0, 0, 600),
(27, 2, -540.441, 194.814, 11.051, 0, 0, 0, 0, 0, 1000),
(35, 1, -340.91, -47.3028, 42.9441, 0, 0, 0, 0, 0, 600),
(40, 2, -585.711, 205.805, 17.5792, 0, 0, 0, 0, 0, 1000),
(48, 1, -341.178, -89.3706, 48.3826, 0, 0, 0, 0, 0, 600),
(49, 3, -582.552, 143.738, 20.6732, 0, 0, 0, 0, 0, 1500),
(50, 2, -542.661, 132.812, 20.0923, 0, 0, 0, 0, 0, 1000),
(41, 2, -384.268, 181.108, 4.08292, 0, 0, 0, 0, 0, 1000),
(55, 3, -340.024, 200.297, 8.56363, 0, 0, 0, 0, 0, 1500),
(65, 2, -284.175, 226.609, 11.3054, 0, 0, 0, 0, 0, 1000),
(70, 1, -377.808, -141.731, 52.6676, 0, 0, 0, 0, 0, 600),
(73, 2, -339.452, 82.9526, 17.4784, 0, 0, 0, 0, 0, 1000),
(77, 1, -369.931, 59.3709, 30.3892, 0, 0, 0, 0, 0, 600),
(79, 1, -395.175, -166.898, 60.6047, 0, 0, 0, 0, 0, 600),
(80, 2, -648.827, -157.027, 61.3559, 0, 0, 0, 0, 0, 1000),
(85, 2, -683.258, -189.435, 63.9539, 0, 0, 0, 0, 0, 1000),
(111, 1, -623.041, -147.67, 68.4239, 0, 0, 0, 0, 0, 600),
(132, 3, -607.407, -170.492, 74.8013, 0, 0, 0, 0, 0, 1500),
(133, 1, -627.163, -131.976, 66.3689, 0, 0, 0, 0, 0, 600),
(134, 1, -648.137, -133.377, 61.8783, 0, 0, 0, 0, 0, 600),
(135, 3, -596.475, -110.913, 66.3512, 0, 0, 0, 0, 0, 1500),
(136, 1, -609.95, -119.615, 66.7619, 0, 0, 0, 0, 0, 600),
(137, 2, -652.816, -116.703, 61.1409, 0, 0, 0, 0, 0, 1000),
(138, 1, -630.569, -109.174, 64.036, 0, 0, 0, 0, 0, 600),
(139, 2, -644.536, -76.8724, 62.7761, 0, 0, 0, 0, 0, 1000),
(140, 1, -651.206, -101.174, 61.7357, 0, 0, 0, 0, 0, 600),
(141, 1, -669.352, -118.508, 60.7379, 0, 0, 0, 0, 0, 600),
(143, 1, -639.358, -149.199, 64.3622, 0, 0, 0, 0, 0, 600),
(144, 1, -626.864, -168.197, 67.9026, 0, 0, 0, 0, 0, 600),
(145, 1, -603.613, -148.072, 74.1848, 0, 0, 0, 0, 0, 600),
(146, 1, -672.278, -154.271, 59.833, 0, 0, 0, 0, 0, 600),
(147, 1, -663.625, -181.647, 62.5131, 0, 0, 0, 0, 0, 600),
(148, 1, -647.497, -196.63, 68.2211, 0, 0, 0, 0, 0, 600),
(149, 1, -634.093, -189.377, 68.4437, 0, 0, 0, 0, 0, 600),
(142, 2, -668.796, -132.234, 59.1305, 0, 0, 0, 0, 0, 1000),
(150, 1, -645.984, -183.902, 64.333, 0, 0, 0, 0, 0, 600),
(151, 1, -667.036, -198.069, 66.3266, 0, 0, 0, 0, 0, 600),
(152, 1, -678.536, -204.517, 66.84, 0, 0, 0, 0, 0, 600),
(153, 1, -691.606, -181.844, 63.3145, 0, 0, 0, 0, 0, 600),
(154, 1, -681.149, -175.522, 61.17, 0, 0, 0, 0, 0, 600),
(155, 1, -702.897, -196.703, 66.4362, 0, 0, 0, 0, 0, 600),
(156, 1, -714.286, -180.442, 64.9078, 0, 0, 0, 0, 0, 600),
(157, 1, -719.787, -155.347, 65.9355, 0, 0, 0, 0, 0, 600),
(158, 1, -705.59, -145.319, 65.3407, 0, 0, 0, 0, 0, 600),
(159, 1, -689.576, -133.54, 62.6019, 0, 0, 0, 0, 0, 600),
(160, 1, -684.403, -117.242, 62.2558, 0, 0, 0, 0, 0, 600),
(161, 1, -683.138, -145.022, 59.8401, 0, 0, 0, 0, 0, 600),
(162, 3, -603.935, -51.8083, 62.1863, 0, 0, 0, 0, 0, 1500),
(163, 3, -587.166, -25.9387, 63.1947, 0, 0, 0, 0, 0, 1500),
(164, 3, -706.379, -107.449, 67.9748, 0, 0, 0, 0, 0, 1500),
(165, 3, 1529.13, -655.098, 89.9401, 0, 0, 0, 0, 0, 1500),
(166, 3, 1524.61, -654.738, 89.5372, 0, 0, 0, 0, 0, 1500),
(167, 3, 1537.24, -659.04, 88.6358, 0, 0, 0, 0, 0, 1500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tweets`
--

CREATE TABLE `tweets` (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `TweetFrom` varchar(24) NOT NULL,
  `TweetMessage` char(128) NOT NULL,
  `TweetDate` char(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tweets`
--

INSERT INTO `tweets` (`ID`, `TweetFrom`, `TweetMessage`, `TweetDate`) VALUES
(1, 'Nugrhhh', 'Halo', '29/05/2026 09:59:01'),
(1, 'Nugrhhh', 'nexotis 1jt', '29/05/2026 10:15:09'),
(1, 'Nugrhhh', 'nexotot', '29/05/2026 10:15:35'),
(1, 'Nugrhhh', '12', '29/05/2026 10:18:08'),
(1, 'Nugrhhh', 'anjing lu kontol', '29/05/2026 10:29:24'),
(1, 'Nugrhhh', 'anjing lc apaan 50k seminggu', '29/05/2026 18:28:36'),
(1, 'Nugrhhh', 'kontol anj', '29/05/2026 18:29:00'),
(1, 'Nugrhhh', 'jual lc 50k buat depo bu banget', '29/05/2026 18:33:37'),
(1, 'Nugrhhh', 'anjing', '29/05/2026 19:06:04'),
(1, 'Nugrhhh', 'kaishkaishkaishkaishkaishvkaishkaishkaishkaishkaishkaishkaish', '29/05/2026 19:06:34'),
(1, 'Nugrhhh', 'anjing', '29/05/2026 21:17:10'),
(1, 'Nugrhhh', 'memek', '29/05/2026 22:08:11'),
(1, 'Nugrhhh', 'anjing luh', '30/05/2026 08:43:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vaults`
--

CREATE TABLE `vaults` (
  `id` int(12) NOT NULL DEFAULT -1,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `world` int(12) DEFAULT 0,
  `interior` int(12) DEFAULT 0,
  `type` int(12) DEFAULT 0,
  `name` varchar(64) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `vaults`
--

INSERT INTO `vaults` (`id`, `posx`, `posy`, `posz`, `world`, `interior`, `type`, `name`) VALUES
(0, 2194.01, 919.336, 12.9673, 0, 0, 2, 'Rumah Sakit Nexotis'),
(1, 1264.5, 683.254, 10.8875, 0, 0, 5, 'Bengkel Bennys Kota Arivena Vault'),
(2, 1354.38, -1833.04, 13.5974, 0, 0, 3, 'Lemari McDouglas'),
(3, 377.166, -178.055, 1000.63, 44, 17, 7, 'Loving Donuts - Vault'),
(4, 1752.7, -1111.9, 24.1013, 0, 0, 2, 'EMS Vault'),
(5, 1478.35, -2143.52, -6.71682, 444, 4, 6, 'Uber Vault'),
(6, 351.334, 199.122, 1008.38, 100, 3, 8, 'Brangkas Pewarta'),
(7, 351.589, 197.384, 1008.38, 0, 3, 1, 'Brankas Barang'),
(8, 1367.52, 1604.27, 15.6703, 99, 3, 4, 'pemerintah'),
(9, 2753.03, 749.461, 13.7665, 0, 0, 1, 'Kepolisian Nexotis'),
(12, -330.817, 1294.47, 54.3635, 0, 0, 11, '+Arivena Faction Vault'),
(13, 242.687, 1858.76, 14.084, 69, 0, 1, 'Brangkas Sitaan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vehicle_bagasi`
--

CREATE TABLE `vehicle_bagasi` (
  `Veh_DBID` int(11) DEFAULT 0,
  `ID` int(11) NOT NULL,
  `Item` varchar(32) DEFAULT NULL,
  `Model` int(11) DEFAULT 0,
  `Quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vehicle_holster`
--

CREATE TABLE `vehicle_holster` (
  `Veh_DBID` int(11) DEFAULT 0,
  `ID` int(11) NOT NULL,
  `WeaponID` int(11) DEFAULT 0,
  `WeaponAmmo` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendings`
--

CREATE TABLE `vendings` (
  `ID` int(11) NOT NULL,
  `World` int(11) NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0,
  `X` float NOT NULL DEFAULT 0,
  `Y` float NOT NULL DEFAULT 0,
  `Z` float NOT NULL DEFAULT 0,
  `RX` float NOT NULL DEFAULT 0,
  `RY` float NOT NULL DEFAULT 0,
  `RZ` float NOT NULL DEFAULT 0,
  `Type` tinyint(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `vendings`
--

INSERT INTO `vendings` (`ID`, `World`, `Interior`, `X`, `Y`, `Z`, `RX`, `RY`, `RZ`, `Type`) VALUES
(0, 0, 0, -5.63517, 61.4856, 2.07719, 0, 0, -108.999, 1),
(1, 0, 0, -6.64298, 59.0243, 3.08719, 0, 0, -111.512, 2),
(2, 0, 0, -154.281, -304.787, 0.389688, 0, 0, 268.273, 1),
(3, 0, 0, -154.205, -306.607, 1.29969, 0, 0, -90.1266, 2),
(4, 0, 0, -81.9673, -1181.95, 0.760001, 0, 0, -22.914, 1),
(5, 0, 0, -79.5909, -1182.91, 1.65, 0, 0, -22.9339, 2),
(6, 0, 0, 363.018, -1335.41, 13.4604, 0, 0, 118.825, 1),
(7, 0, 0, 361.854, -1333.25, 14.5088, 0, 0, 117.986, 2),
(8, 0, 0, 1023.21, -940.823, 41.2087, 0, 0, -81.4672, 1),
(9, 0, 0, 1022.76, -938.743, 42.1812, 0, 0, 277.259, 2),
(10, 0, 0, 1317.9, -1167.93, 22.7781, 0, 0, 90.07, 1),
(11, 0, 0, 1317.99, -1165.46, 23.7681, 0, 0, 90.1828, 2),
(12, 0, 17, 490.53, -24.5402, 999.7, 0, 0, 180.569, 1),
(13, 0, 0, 1286.69, -1339.38, 12.4624, 0, 0, -85.398, 1),
(14, 0, 0, 1091.39, -1803.76, 12.5332, 0, 0, 179.943, 1),
(15, 0, 0, 1088.77, -1803.8, 13.5229, 0, 0, 180.329, 2),
(16, 0, 0, 1247.56, -1804.18, 12.5456, 0, 0, 37.1734, 1),
(17, 0, 0, 1249.37, -1802.98, 13.5433, 0, 0, 37.0599, 2),
(19, 0, 0, -363.499, -1426.36, 24.6266, 0, 0, -89.4159, 1),
(20, 0, 0, 1777.99, -1867.53, 12.5037, 0, 0, 179.984, 1),
(21, 0, 0, 1775.41, -1867.35, 13.535, 0, 0, 178.761, 2),
(22, 0, 0, 1969.72, -1742.52, 12.4969, 0, 0, 0.018857, 1),
(23, 0, 0, 1972.27, -1742.65, 13.5269, 0, 0, 0.791243, 2),
(24, 0, 0, 2568.48, -1487.09, 22.9468, 0, 0, -1.81814, 1),
(25, 0, 0, 2571.23, -1487.01, 24.0226, 0, 0, 0.855334, 2),
(26, 0, 0, 2278.71, -1721.8, 12.5169, 0, 0, 359.744, 1),
(27, 0, 0, 2281.5, -1721.82, 13.5269, 0, 0, 359.744, 2),
(28, 0, 0, 607.965, -1488.99, 13.7949, 0, 0, 0.269172, 1),
(29, 0, 0, 605.331, -1489.07, 14.8824, 0, 0, 0.603029, 2),
(30, 0, 0, 406.498, -1921.75, 6.80119, 0, 0, 90.1123, 1),
(31, 0, 0, 406.349, -1920.33, 7.81119, 0, 0, 90.785, 2),
(32, 0, 0, 1593.61, -2204.49, 12.4969, 0, 0, 179.656, 1),
(33, 0, 0, 1597.2, -2204.43, 13.4769, 0, 0, 179.275, 2),
(34, 0, 0, 2176.42, -1764.89, 12.5091, 0, 0, 140.478, 1),
(35, 0, 0, 2174.46, -1763.2, 13.5091, 0, 0, 138.912, 2),
(36, 777, 1, 2250.31, 1690.24, 1018.31, 0, 0, -45.0335, 1),
(37, 777, 1, 2248.99, 1691.64, 1019.36, 0, 0, 316.226, 2),
(38, 0, 0, -1980.5, 166.665, 26.6075, 0, 0, -89.9743, 1),
(39, 0, 0, -1980.56, 163.908, 27.6175, 0, 0, -91.6942, 2),
(40, 0, 0, 1602.05, 2229.88, 9.73031, 0, 0, 88.9174, 1),
(41, 0, 0, 1602.15, 2233.27, 10.7303, 0, 0, 88.6041, 2),
(42, 0, 0, 667.872, 1721.61, 6.1675, 0, 0, -139.057, 1),
(43, 0, 0, 665.823, 1719.71, 7.25219, 0, 0, -139.857, 2),
(44, 0, 0, 1265.54, 697.362, 14.3381, 0, 0, 0.076377, 1),
(45, 0, 0, 1267, 697.512, 15.3481, 0, 0, 1.77291, 2),
(46, 0, 0, -363.279, -1427.95, 25.6266, 0, 0, -94.2021, 2),
(47, 0, 0, 584.036, 840.247, -43.2988, 0, 0, 172.259, 1),
(48, 0, 0, 581.935, 840.532, -42.2884, 0, 0, 166.092, 2),
(49, 0, 0, 1782.52, -1106.98, 28.2093, 0, 0, -90.5469, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `vtoys`
--

CREATE TABLE `vtoys` (
  `ID` int(11) NOT NULL,
  `Veh_DBID` int(11) NOT NULL DEFAULT 0,
  `Modelid` int(11) DEFAULT 0,
  `Text` varchar(144) DEFAULT 'PREMIERE',
  `Font` varchar(64) DEFAULT 'Arial',
  `FontSize` int(11) DEFAULT 11,
  `FontColor` varchar(32) DEFAULT '255|0|0|0',
  `ObjectColor` varchar(32) DEFAULT '255|0|0|0',
  `XPos` float DEFAULT 0,
  `YPos` float DEFAULT 0,
  `ZPos` float DEFAULT 0,
  `XRot` float DEFAULT 0,
  `YRot` float DEFAULT 0,
  `ZRot` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `whatsapp_chats`
--

CREATE TABLE `whatsapp_chats` (
  `ID` int(11) DEFAULT 0,
  `chatID` int(11) NOT NULL,
  `chatTimestamp` varchar(30) NOT NULL DEFAULT '',
  `chatMessage` char(128) NOT NULL DEFAULT '',
  `chatSender` varchar(24) NOT NULL DEFAULT '',
  `chatNumber` varchar(50) DEFAULT '',
  `chatOwner` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `whatsapp_chats`
--

INSERT INTO `whatsapp_chats` (`ID`, `chatID`, `chatTimestamp`, `chatMessage`, `chatSender`, `chatNumber`, `chatOwner`) VALUES
(3, 1, '2025-06-02 17:12:35', 'p', 'Tatang Saepudin', '08281252004', 2),
(3, 2, '2025-06-02 17:12:49', 'oi', 'Ryuxi Mozaya', '08288095439', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `whitelists`
--

CREATE TABLE `whitelists` (
  `id` int(11) NOT NULL,
  `ucp` varchar(25) NOT NULL DEFAULT '',
  `nickadmin` varchar(25) NOT NULL DEFAULT 'Bot',
  `adutyname` varchar(25) NOT NULL DEFAULT 'Bot',
  `verify` int(11) NOT NULL DEFAULT 1,
  `recovery` int(11) NOT NULL DEFAULT -1,
  `date` varchar(36) DEFAULT '',
  `discordid` varchar(31) NOT NULL DEFAULT '',
  `allowed` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `whitelists`
--

INSERT INTO `whitelists` (`id`, `ucp`, `nickadmin`, `adutyname`, `verify`, `recovery`, `date`, `discordid`, `allowed`) VALUES
(6, 'Nugrhh', 'Nugrhh', 'Nugrhh', -1, -1, '', '12345678909876', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `xmas_trees`
--

CREATE TABLE `xmas_trees` (
  `ID` int(11) NOT NULL,
  `X` float NOT NULL DEFAULT 0,
  `Y` float NOT NULL DEFAULT 0,
  `Z` float NOT NULL DEFAULT 0,
  `RX` float NOT NULL DEFAULT 0,
  `RY` float NOT NULL DEFAULT 0,
  `RZ` float NOT NULL DEFAULT 0,
  `Vw` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `yellowpages`
--

CREATE TABLE `yellowpages` (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `YellowFrom` varchar(24) NOT NULL,
  `YellowMessage` char(128) NOT NULL,
  `YellowDate` char(128) NOT NULL,
  `YellowPhone` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `admin_logs`
--
ALTER TABLE `admin_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `armouries`
--
ALTER TABLE `armouries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `atms`
--
ALTER TABLE `atms`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `avtreasure`
--
ALTER TABLE `avtreasure`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `badside_brankas`
--
ALTER TABLE `badside_brankas`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `bankpoints`
--
ALTER TABLE `bankpoints`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `biz`
--
ALTER TABLE `biz`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `bj_tables`
--
ALTER TABLE `bj_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `buttons`
--
ALTER TABLE `buttons`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `crafttables`
--
ALTER TABLE `crafttables`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `damagelogs`
--
ALTER TABLE `damagelogs`
  ADD KEY `Index 1` (`ID`);

--
-- Indeks untuk tabel `demand_vehicles`
--
ALTER TABLE `demand_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `doors`
--
ALTER TABLE `doors`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `dropped_items`
--
ALTER TABLE `dropped_items`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `dynamic_deer`
--
ALTER TABLE `dynamic_deer`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `faction_brankas`
--
ALTER TABLE `faction_brankas`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `faction_garages`
--
ALTER TABLE `faction_garages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `faction_logs`
--
ALTER TABLE `faction_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `faction_vaultlogs`
--
ALTER TABLE `faction_vaultlogs`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `farmplants`
--
ALTER TABLE `farmplants`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fcrafts`
--
ALTER TABLE `fcrafts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fivem_labels`
--
ALTER TABLE `fivem_labels`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `garbages`
--
ALTER TABLE `garbages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gudang`
--
ALTER TABLE `gudang`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `gudang_brankas`
--
ALTER TABLE `gudang_brankas`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `gunpos`
--
ALTER TABLE `gunpos`
  ADD PRIMARY KEY (`Owner`) USING BTREE;

--
-- Indeks untuk tabel `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `house_brankas`
--
ALTER TABLE `house_brankas`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `house_holster`
--
ALTER TABLE `house_holster`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`invent_ID`);

--
-- Indeks untuk tabel `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `kanabis`
--
ALTER TABLE `kanabis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lockers`
--
ALTER TABLE `lockers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mapicons`
--
ALTER TABLE `mapicons`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `mdc_arrestrecords`
--
ALTER TABLE `mdc_arrestrecords`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mdc_broadcasts`
--
ALTER TABLE `mdc_broadcasts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mdc_charges`
--
ALTER TABLE `mdc_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mdc_warrants`
--
ALTER TABLE `mdc_warrants`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `newsstands`
--
ALTER TABLE `newsstands`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `phone_contacts`
--
ALTER TABLE `phone_contacts`
  ADD PRIMARY KEY (`contactID`);

--
-- Indeks untuk tabel `pilkada_voters`
--
ALTER TABLE `pilkada_voters`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `player_bans`
--
ALTER TABLE `player_bans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `player_characters`
--
ALTER TABLE `player_characters`
  ADD PRIMARY KEY (`pID`);

--
-- Indeks untuk tabel `player_clothes`
--
ALTER TABLE `player_clothes`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `player_fishes`
--
ALTER TABLE `player_fishes`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `player_phones`
--
ALTER TABLE `player_phones`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `player_toys`
--
ALTER TABLE `player_toys`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `id` (`Owner`);

--
-- Indeks untuk tabel `player_twitter`
--
ALTER TABLE `player_twitter`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `player_ucp`
--
ALTER TABLE `player_ucp`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `player_vehicles`
--
ALTER TABLE `player_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `player_warns`
--
ALTER TABLE `player_warns`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `player_weapons`
--
ALTER TABLE `player_weapons`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `public_garages`
--
ALTER TABLE `public_garages`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `redeem`
--
ALTER TABLE `redeem`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `roadsigns`
--
ALTER TABLE `roadsigns`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `robberies`
--
ALTER TABLE `robberies`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `rusun`
--
ALTER TABLE `rusun`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `rusun_brankas`
--
ALTER TABLE `rusun_brankas`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `speedcam`
--
ALTER TABLE `speedcam`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `stuffs`
--
ALTER TABLE `stuffs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `vaults`
--
ALTER TABLE `vaults`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `vehicle_bagasi`
--
ALTER TABLE `vehicle_bagasi`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `vehicle_holster`
--
ALTER TABLE `vehicle_holster`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `vendings`
--
ALTER TABLE `vendings`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `vtoys`
--
ALTER TABLE `vtoys`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `whatsapp_chats`
--
ALTER TABLE `whatsapp_chats`
  ADD PRIMARY KEY (`chatID`);

--
-- Indeks untuk tabel `whitelists`
--
ALTER TABLE `whitelists`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `xmas_trees`
--
ALTER TABLE `xmas_trees`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin_logs`
--
ALTER TABLE `admin_logs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `avtreasure`
--
ALTER TABLE `avtreasure`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `badside_brankas`
--
ALTER TABLE `badside_brankas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `damagelogs`
--
ALTER TABLE `damagelogs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT untuk tabel `demand_vehicles`
--
ALTER TABLE `demand_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `dropped_items`
--
ALTER TABLE `dropped_items`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `faction_brankas`
--
ALTER TABLE `faction_brankas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `faction_logs`
--
ALTER TABLE `faction_logs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `faction_vaultlogs`
--
ALTER TABLE `faction_vaultlogs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gudang_brankas`
--
ALTER TABLE `gudang_brankas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `house_brankas`
--
ALTER TABLE `house_brankas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `house_holster`
--
ALTER TABLE `house_holster`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `inventory`
--
ALTER TABLE `inventory`
  MODIFY `invent_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT untuk tabel `invoices`
--
ALTER TABLE `invoices`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mdc_arrestrecords`
--
ALTER TABLE `mdc_arrestrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mdc_broadcasts`
--
ALTER TABLE `mdc_broadcasts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mdc_charges`
--
ALTER TABLE `mdc_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mdc_warrants`
--
ALTER TABLE `mdc_warrants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `phone_contacts`
--
ALTER TABLE `phone_contacts`
  MODIFY `contactID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pilkada_voters`
--
ALTER TABLE `pilkada_voters`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `player_bans`
--
ALTER TABLE `player_bans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `player_characters`
--
ALTER TABLE `player_characters`
  MODIFY `pID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `player_clothes`
--
ALTER TABLE `player_clothes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `player_fishes`
--
ALTER TABLE `player_fishes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `player_phones`
--
ALTER TABLE `player_phones`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `player_toys`
--
ALTER TABLE `player_toys`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `player_twitter`
--
ALTER TABLE `player_twitter`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `player_ucp`
--
ALTER TABLE `player_ucp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `player_vehicles`
--
ALTER TABLE `player_vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `player_warns`
--
ALTER TABLE `player_warns`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `player_weapons`
--
ALTER TABLE `player_weapons`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `rusun_brankas`
--
ALTER TABLE `rusun_brankas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `salary`
--
ALTER TABLE `salary`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `vehicle_bagasi`
--
ALTER TABLE `vehicle_bagasi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `vehicle_holster`
--
ALTER TABLE `vehicle_holster`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `vtoys`
--
ALTER TABLE `vtoys`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `whatsapp_chats`
--
ALTER TABLE `whatsapp_chats`
  MODIFY `chatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `whitelists`
--
ALTER TABLE `whitelists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
