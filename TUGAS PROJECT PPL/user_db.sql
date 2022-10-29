-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2022 at 02:44 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id` int(11) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id`, `id_provinsi`, `nama`) VALUES
(1163, 3, 'Kabupaten Aceh Barat'),
(1164, 3, 'Kabupaten Aceh Barat Daya'),
(1165, 3, 'Kabupaten Aceh Besar'),
(1166, 3, 'Kabupaten Aceh Jaya'),
(1167, 3, 'Kabupaten Aceh Selatan'),
(1168, 3, 'Kabupaten Aceh Singkil'),
(1169, 3, 'Kabupaten Aceh Tamiang'),
(1170, 3, 'Kabupaten Aceh Tengah'),
(1171, 3, 'Kabupaten Aceh Tenggara'),
(1172, 3, 'Kabupaten Aceh Timur'),
(1173, 3, 'Kabupaten Aceh Utara'),
(1174, 3, 'Kabupaten Bener Meriah'),
(1175, 3, 'Kabupaten Bireuen'),
(1176, 3, 'Kabupaten Gayo Lues'),
(1177, 3, 'Kabupaten Nagan Raya'),
(1178, 3, 'Kabupaten Pidie'),
(1179, 3, 'Kabupaten Pidie Jaya'),
(1180, 3, 'Kabupaten Simeulue'),
(1181, 3, 'Kota Banda Aceh'),
(1182, 3, 'Kota Langsa'),
(1183, 3, 'Kota Lhokseumawe'),
(1184, 3, 'Kota Sabang'),
(1185, 3, 'Kota Subulussalam'),
(1186, 4, 'Kabupaten Asahan'),
(1187, 4, 'Kabupaten Batubara'),
(1188, 4, 'Kabupaten Dairi'),
(1189, 4, 'Kabupaten Deli Serdang'),
(1190, 4, 'Kabupaten Humbang Hasundutan'),
(1191, 4, 'Kabupaten Karo'),
(1192, 4, 'Kabupaten Labuhanbatu'),
(1193, 4, 'Kabupaten Labuhanbatu Selatan'),
(1194, 4, 'Kabupaten Labuhanbatu Utara'),
(1195, 4, 'Kabupaten Langkat'),
(1196, 4, 'Kabupaten Mandailing Natal'),
(1197, 4, 'Kabupaten Nias'),
(1198, 4, 'Kabupaten Nias Barat'),
(1199, 4, 'Kabupaten Nias Selatan'),
(1200, 4, 'Kabupaten Nias Utara'),
(1201, 4, 'Kabupaten Padang Lawas'),
(1202, 4, 'Kabupaten Padang Lawas Utara'),
(1203, 4, 'Kabupaten Pakpak Bharat'),
(1204, 4, 'Kabupaten Samosir'),
(1205, 4, 'Kabupaten Serdang Bedagai'),
(1206, 4, 'Kabupaten Simalungun'),
(1207, 4, 'Kabupaten Tapanuli Selatan'),
(1208, 4, 'Kabupaten Tapanuli Tengah'),
(1209, 4, 'Kabupaten Tapanuli Utara'),
(1210, 4, 'Kabupaten Toba Samosir'),
(1211, 4, 'Kota Binjai'),
(1212, 4, 'Kota Gunungsitoli'),
(1213, 4, 'Kota Medan'),
(1214, 4, 'Kota Padangsidempuan'),
(1215, 4, 'Kota Pematangsiantar'),
(1216, 4, 'Kota Sibolga'),
(1217, 4, 'Kota Tanjungbalai'),
(1218, 4, 'Kota Tebing Tinggi'),
(1219, 5, 'Kabupaten Agam'),
(1220, 5, 'Kabupaten Dharmasraya'),
(1221, 5, 'Kabupaten Kepulauan Mentawai'),
(1222, 5, 'Kabupaten Lima Puluh Kota'),
(1223, 5, 'Kabupaten Padang Pariaman'),
(1224, 5, 'Kabupaten Pasaman'),
(1225, 5, 'Kabupaten Pasaman Barat'),
(1226, 5, 'Kabupaten Pesisir Selatan'),
(1227, 5, 'Kabupaten Sijunjung'),
(1228, 5, 'Kabupaten Solok'),
(1229, 5, 'Kabupaten Solok Selatan'),
(1230, 5, 'Kabupaten Tanah Datar'),
(1231, 5, 'Kota Bukittinggi'),
(1232, 5, 'Kota Padang'),
(1233, 5, 'Kota Padangpanjang'),
(1234, 5, 'Kota Pariaman'),
(1235, 5, 'Kota Payakumbuh'),
(1236, 5, 'Kota Sawahlunto'),
(1237, 5, 'Kota Solok'),
(1238, 6, 'Kabupaten Banyuasin'),
(1239, 6, 'Kabupaten Empat Lawang'),
(1240, 6, 'Kabupaten Lahat'),
(1241, 6, 'Kabupaten Muara Enim'),
(1242, 6, 'Kabupaten Musi Banyuasin'),
(1243, 6, 'Kabupaten Musi Rawas'),
(1244, 6, 'Kabupaten Musi Rawas Utara'),
(1245, 6, 'Kabupaten Ogan Ilir'),
(1246, 6, 'Kabupaten Ogan Komering Ilir'),
(1247, 6, 'Kabupaten Ogan Komering Ulu'),
(1248, 6, 'Kabupaten Ogan Komering Ulu Selatan'),
(1249, 6, 'Kabupaten Ogan Komering Ulu Timur'),
(1250, 6, 'Kabupaten Penukal Abab Lematang Ilir'),
(1251, 6, 'Kota Lubuklinggau'),
(1252, 6, 'Kota Pagar Alam'),
(1253, 6, 'Kota Palembang'),
(1254, 6, 'Kota Prabumulih'),
(1255, 7, 'Kabupaten Bengkalis'),
(1256, 7, 'Kabupaten Indragiri Hilir'),
(1257, 7, 'Kabupaten Indragiri Hulu'),
(1258, 7, 'Kabupaten Kampar'),
(1259, 7, 'Kabupaten Kepulauan Meranti'),
(1260, 7, 'Kabupaten Kuantan Singingi'),
(1261, 7, 'Kabupaten Pelalawan'),
(1262, 7, 'Kabupaten Rokan Hilir'),
(1263, 7, 'Kabupaten Rokan Hulu'),
(1264, 7, 'Kabupaten Siak'),
(1265, 7, 'Kota Dumai'),
(1266, 7, 'Kota Pekanbaru'),
(1267, 8, 'Kabupaten Bintan'),
(1268, 8, 'Kabupaten Karimun'),
(1269, 8, 'Kabupaten Kepulauan Anambas'),
(1270, 8, 'Kabupaten Lingga'),
(1271, 8, 'Kabupaten Natuna'),
(1272, 8, 'Kota Batam'),
(1273, 8, 'Kota Tanjung Pinang'),
(1274, 9, 'Kabupaten Batanghari'),
(1275, 9, 'Kabupaten Bungo'),
(1276, 9, 'Kabupaten Kerinci'),
(1277, 9, 'Kabupaten Merangin'),
(1278, 9, 'Kabupaten Muaro Jambi'),
(1279, 9, 'Kabupaten Sarolangun'),
(1280, 9, 'Kabupaten Tanjung Jabung Barat'),
(1281, 9, 'Kabupaten Tanjung Jabung Timur'),
(1282, 9, 'Kabupaten Tebo'),
(1283, 9, 'Kota Jambi'),
(1284, 9, 'Kota Sungai Penuh'),
(1285, 10, 'Kabupaten Bengkulu Selatan'),
(1286, 10, 'Kabupaten Bengkulu Tengah'),
(1287, 10, 'Kabupaten Bengkulu Utara'),
(1288, 10, 'Kabupaten Kaur'),
(1289, 10, 'Kabupaten Kepahiang'),
(1290, 10, 'Kabupaten Lebong'),
(1291, 10, 'Kabupaten Mukomuko'),
(1292, 10, 'Kabupaten Rejang Lebong'),
(1293, 10, 'Kabupaten Seluma'),
(1294, 10, 'Kota Bengkulu'),
(1295, 11, 'Kabupaten Bangka'),
(1296, 11, 'Kabupaten Bangka Barat'),
(1297, 11, 'Kabupaten Bangka Selatan'),
(1298, 11, 'Kabupaten Bangka Tengah'),
(1299, 11, 'Kabupaten Belitung'),
(1300, 11, 'Kabupaten Belitung Timur'),
(1301, 11, 'Kota Pangkal Pinang'),
(1302, 12, 'Kabupaten Lampung Tengah'),
(1303, 12, 'Kabupaten Lampung Utara'),
(1304, 12, 'Kabupaten Lampung Selatan'),
(1305, 12, 'Kabupaten Lampung Barat'),
(1306, 12, 'Kabupaten Lampung Timur'),
(1307, 12, 'Kabupaten Mesuji'),
(1308, 12, 'Kabupaten Pesawaran'),
(1309, 12, 'Kabupaten Pesisir Barat'),
(1310, 12, 'Kabupaten Pringsewu'),
(1311, 12, 'Kabupaten Tulang Bawang'),
(1312, 12, 'Kabupaten Tulang Bawang Barat'),
(1313, 12, 'Kabupaten Tanggamus'),
(1314, 12, 'Kabupaten Way Kanan'),
(1315, 12, 'Kota Bandar Lampung'),
(1316, 12, 'Kota Metro'),
(1317, 13, 'Kabupaten Lebak'),
(1318, 13, 'Kabupaten Pandeglang'),
(1319, 13, 'Kabupaten Serang'),
(1320, 13, 'Kabupaten Tangerang'),
(1321, 13, 'Kota Cilegon'),
(1322, 13, 'Kota Serang'),
(1323, 13, 'Kota Tangerang'),
(1324, 13, 'Kota Tangerang Selatan'),
(1325, 14, 'Kabupaten Bandung'),
(1326, 14, 'Kabupaten Bandung Barat'),
(1327, 14, 'Kabupaten Bekasi'),
(1328, 14, 'Kabupaten Bogor'),
(1329, 14, 'Kabupaten Ciamis'),
(1330, 14, 'Kabupaten Cianjur'),
(1331, 14, 'Kabupaten Cirebon'),
(1332, 14, 'Kabupaten Garut'),
(1333, 14, 'Kabupaten Indramayu'),
(1334, 14, 'Kabupaten Karawang'),
(1335, 14, 'Kabupaten Kuningan'),
(1336, 14, 'Kabupaten Majalengka'),
(1337, 14, 'Kabupaten Pangandaran'),
(1338, 14, 'Kabupaten Purwakarta'),
(1339, 14, 'Kabupaten Subang'),
(1340, 14, 'Kabupaten Sukabumi'),
(1341, 14, 'Kabupaten Sumedang'),
(1342, 14, 'Kabupaten Tasikmalaya'),
(1343, 14, 'Kota Bandung'),
(1344, 14, 'Kota Banjar'),
(1345, 14, 'Kota Bekasi'),
(1346, 14, 'Kota Bogor'),
(1347, 14, 'Kota Cimahi'),
(1348, 14, 'Kota Cirebon'),
(1349, 14, 'Kota Depok'),
(1350, 14, 'Kota Sukabumi'),
(1351, 14, 'Kota Tasikmalaya'),
(1352, 15, 'Kabupaten Banjarnegara'),
(1353, 15, 'Kabupaten Banyumas'),
(1354, 15, 'Kabupaten Batang'),
(1355, 15, 'Kabupaten Blora'),
(1356, 15, 'Kabupaten Boyolali'),
(1357, 15, 'Kabupaten Brebes'),
(1358, 15, 'Kabupaten Cilacap'),
(1359, 15, 'Kabupaten Demak'),
(1360, 15, 'Kabupaten Grobogan'),
(1361, 15, 'Kabupaten Jepara'),
(1362, 15, 'Kabupaten Karanganyar'),
(1363, 15, 'Kabupaten Kebumen'),
(1364, 15, 'Kabupaten Kendal'),
(1365, 15, 'Kabupaten Klaten'),
(1366, 15, 'Kabupaten Kudus'),
(1367, 15, 'Kabupaten Magelang'),
(1368, 15, 'Kabupaten Pati'),
(1369, 15, 'Kabupaten Pekalongan'),
(1370, 15, 'Kabupaten Pemalang'),
(1371, 15, 'Kabupaten Purbalingga'),
(1372, 15, 'Kabupaten Purworejo'),
(1373, 15, 'Kabupaten Rembang'),
(1374, 15, 'Kabupaten Semarang'),
(1375, 15, 'Kabupaten Sragen'),
(1376, 15, 'Kabupaten Sukoharjo'),
(1377, 15, 'Kabupaten Tegal'),
(1378, 15, 'Kabupaten Temanggung'),
(1379, 15, 'Kabupaten Wonogiri'),
(1380, 15, 'Kabupaten Wonosobo'),
(1381, 15, 'Kota Magelang'),
(1382, 15, 'Kota Pekalongan'),
(1383, 15, 'Kota Salatiga'),
(1384, 15, 'Kota Semarang'),
(1385, 15, 'Kota Surakarta'),
(1386, 15, 'Kota Tegal'),
(1387, 16, 'Kabupaten Bangkalan'),
(1388, 16, 'Kabupaten Banyuwangi'),
(1389, 16, 'Kabupaten Blitar'),
(1390, 16, 'Kabupaten Bojonegoro'),
(1391, 16, 'Kabupaten Bondowoso'),
(1392, 16, 'Kabupaten Gresik'),
(1393, 16, 'Kabupaten Jember'),
(1394, 16, 'Kabupaten Jombang'),
(1395, 16, 'Kabupaten Kediri'),
(1396, 16, 'Kabupaten Lamongan'),
(1397, 16, 'Kabupaten Lumajang'),
(1398, 16, 'Kabupaten Madiun'),
(1399, 16, 'Kabupaten Magetan'),
(1400, 16, 'Kabupaten Malang'),
(1401, 16, 'Kabupaten Mojokerto'),
(1402, 16, 'Kabupaten Nganjuk'),
(1403, 16, 'Kabupaten Ngawi'),
(1404, 16, 'Kabupaten Pacitan'),
(1405, 16, 'Kabupaten Pamekasan'),
(1406, 16, 'Kabupaten Pasuruan'),
(1407, 16, 'Kabupaten Ponorogo'),
(1408, 16, 'Kabupaten Probolinggo'),
(1409, 16, 'Kabupaten Sampang'),
(1410, 16, 'Kabupaten Sidoarjo'),
(1411, 16, 'Kabupaten Situbondo'),
(1412, 16, 'Kabupaten Sumenep'),
(1413, 16, 'Kabupaten Trenggalek'),
(1414, 16, 'Kabupaten Tuban'),
(1415, 16, 'Kabupaten Tulungagung'),
(1416, 16, 'Kota Batu'),
(1417, 16, 'Kota Blitar'),
(1418, 16, 'Kota Kediri'),
(1419, 16, 'Kota Madiun'),
(1420, 16, 'Kota Malang'),
(1421, 16, 'Kota Mojokerto'),
(1422, 16, 'Kota Pasuruan'),
(1423, 16, 'Kota Probolinggo'),
(1424, 16, 'Kota Surabaya'),
(1425, 17, 'Kota Administrasi Jakarta Barat'),
(1426, 17, 'Kota Administrasi Jakarta Pusat'),
(1427, 17, 'Kota Administrasi Jakarta Selatan'),
(1428, 17, 'Kota Administrasi Jakarta Timur'),
(1429, 17, 'Kota Administrasi Jakarta Utara'),
(1430, 17, 'Kabupaten Administrasi Kepulauan Seribu'),
(1431, 18, 'Kabupaten Bantul'),
(1432, 18, 'Kabupaten Gunungkidul'),
(1433, 18, 'Kabupaten Kulon Progo'),
(1434, 18, 'Kabupaten Sleman'),
(1435, 18, 'Kota Yogyakarta'),
(1436, 19, 'Kabupaten Badung'),
(1437, 19, 'Kabupaten Bangli'),
(1438, 19, 'Kabupaten Buleleng'),
(1439, 19, 'Kabupaten Gianyar'),
(1440, 19, 'Kabupaten Jembrana'),
(1441, 19, 'Kabupaten Karangasem'),
(1442, 19, 'Kabupaten Klungkung'),
(1443, 19, 'Kabupaten Tabanan'),
(1444, 19, 'Kota Denpasar'),
(1445, 20, 'Kabupaten Bima'),
(1446, 20, 'Kabupaten Dompu'),
(1447, 20, 'Kabupaten Lombok Barat'),
(1448, 20, 'Kabupaten Lombok Tengah'),
(1449, 20, 'Kabupaten Lombok Timur'),
(1450, 20, 'Kabupaten Lombok Utara'),
(1451, 20, 'Kabupaten Sumbawa'),
(1452, 20, 'Kabupaten Sumbawa Barat'),
(1453, 20, 'Kota Bima'),
(1454, 20, 'Kota Mataram'),
(1455, 21, 'Kabupaten Alor'),
(1456, 21, 'Kabupaten Belu'),
(1457, 21, 'Kabupaten Ende'),
(1458, 21, 'Kabupaten Flores Timur'),
(1459, 21, 'Kabupaten Kupang'),
(1460, 21, 'Kabupaten Lembata'),
(1461, 21, 'Kabupaten Malaka'),
(1462, 21, 'Kabupaten Manggarai'),
(1463, 21, 'Kabupaten Manggarai Barat'),
(1464, 21, 'Kabupaten Manggarai Timur'),
(1465, 21, 'Kabupaten Ngada'),
(1466, 21, 'Kabupaten Nagekeo'),
(1467, 21, 'Kabupaten Rote Ndao'),
(1468, 21, 'Kabupaten Sabu Raijua'),
(1469, 21, 'Kabupaten Sikka'),
(1470, 21, 'Kabupaten Sumba Barat'),
(1471, 21, 'Kabupaten Sumba Barat Daya'),
(1472, 21, 'Kabupaten Sumba Tengah'),
(1473, 21, 'Kabupaten Sumba Timur'),
(1474, 21, 'Kabupaten Timor Tengah Selatan'),
(1475, 21, 'Kabupaten Timor Tengah Utara'),
(1476, 21, 'Kota Kupang'),
(1477, 22, 'Kabupaten Bengkayang'),
(1478, 22, 'Kabupaten Kapuas Hulu'),
(1479, 22, 'Kabupaten Kayong Utara'),
(1480, 22, 'Kabupaten Ketapang'),
(1481, 22, 'Kabupaten Kubu Raya'),
(1482, 22, 'Kabupaten Landak'),
(1483, 22, 'Kabupaten Melawi'),
(1484, 22, 'Kabupaten Mempawah'),
(1485, 22, 'Kabupaten Sambas'),
(1486, 22, 'Kabupaten Sanggau'),
(1487, 22, 'Kabupaten Sekadau'),
(1488, 22, 'Kabupaten Sintang'),
(1489, 22, 'Kota Pontianak'),
(1490, 22, 'Kota Singkawang'),
(1491, 23, 'Kabupaten Balangan'),
(1492, 23, 'Kabupaten Banjar'),
(1493, 23, 'Kabupaten Barito Kuala'),
(1494, 23, 'Kabupaten Hulu Sungai Selatan'),
(1495, 23, 'Kabupaten Hulu Sungai Tengah'),
(1496, 23, 'Kabupaten Hulu Sungai Utara'),
(1497, 23, 'Kabupaten Kotabaru'),
(1498, 23, 'Kabupaten Tabalong'),
(1499, 23, 'Kabupaten Tanah Bumbu'),
(1500, 23, 'Kabupaten Tanah Laut'),
(1501, 23, 'Kabupaten Tapin'),
(1502, 23, 'Kota Banjarbaru'),
(1503, 23, 'Kota Banjarmasin'),
(1504, 24, 'Kabupaten Barito Selatan'),
(1505, 24, 'Kabupaten Barito Timur'),
(1506, 24, 'Kabupaten Barito Utara'),
(1507, 24, 'Kabupaten Gunung Mas'),
(1508, 24, 'Kabupaten Kapuas'),
(1509, 24, 'Kabupaten Katingan'),
(1510, 24, 'Kabupaten Kotawaringin Barat'),
(1511, 24, 'Kabupaten Kotawaringin Timur'),
(1512, 24, 'Kabupaten Lamandau'),
(1513, 24, 'Kabupaten Murung Raya'),
(1514, 24, 'Kabupaten Pulang Pisau'),
(1515, 24, 'Kabupaten Sukamara'),
(1516, 24, 'Kabupaten Seruyan'),
(1517, 24, 'Kota Palangka Raya'),
(1518, 25, 'Kabupaten Berau'),
(1519, 25, 'Kabupaten Kutai Barat'),
(1520, 25, 'Kabupaten Kutai Kartanegara'),
(1521, 25, 'Kabupaten Kutai Timur'),
(1522, 25, 'Kabupaten Mahakam Ulu'),
(1523, 25, 'Kabupaten Paser'),
(1524, 25, 'Kabupaten Penajam Paser Utara'),
(1525, 25, 'Kota Balikpapan'),
(1526, 25, 'Kota Bontang'),
(1527, 25, 'Kota Samarinda'),
(1528, 26, 'Kabupaten Bulungan'),
(1529, 26, 'Kabupaten Malinau'),
(1530, 26, 'Kabupaten Nunukan'),
(1531, 26, 'Kabupaten Tana Tidung'),
(1532, 26, 'Kota Tarakan'),
(1533, 27, 'Kabupaten Boalemo'),
(1534, 27, 'Kabupaten Bone Bolango'),
(1535, 27, 'Kabupaten Gorontalo'),
(1536, 27, 'Kabupaten Gorontalo Utara'),
(1537, 27, 'Kabupaten Pohuwato'),
(1538, 27, 'Kota Gorontalo'),
(1539, 28, 'Kabupaten Bantaeng'),
(1540, 28, 'Kabupaten Barru'),
(1541, 28, 'Kabupaten Bone'),
(1542, 28, 'Kabupaten Bulukumba'),
(1543, 28, 'Kabupaten Enrekang'),
(1544, 28, 'Kabupaten Gowa'),
(1545, 28, 'Kabupaten Jeneponto'),
(1546, 28, 'Kabupaten Kepulauan Selayar'),
(1547, 28, 'Kabupaten Luwu'),
(1548, 28, 'Kabupaten Luwu Timur'),
(1549, 28, 'Kabupaten Luwu Utara'),
(1550, 28, 'Kabupaten Maros'),
(1551, 28, 'Kabupaten Pangkajene dan Kepulauan'),
(1552, 28, 'Kabupaten Pinrang'),
(1553, 28, 'Kabupaten Sidenreng Rappang'),
(1554, 28, 'Kabupaten Sinjai'),
(1555, 28, 'Kabupaten Soppeng'),
(1556, 28, 'Kabupaten Takalar'),
(1557, 28, 'Kabupaten Tana Toraja'),
(1558, 28, 'Kabupaten Toraja Utara'),
(1559, 28, 'Kabupaten Wajo'),
(1560, 28, 'Kota Makassar'),
(1561, 28, 'Kota Palopo'),
(1562, 28, 'Kota Parepare'),
(1563, 29, 'Kabupaten Bombana'),
(1564, 29, 'Kabupaten Buton'),
(1565, 29, 'Kabupaten Buton Selatan'),
(1566, 29, 'Kabupaten Buton Tengah'),
(1567, 29, 'Kabupaten Buton Utara'),
(1568, 29, 'Kabupaten Kolaka'),
(1569, 29, 'Kabupaten Kolaka Timur'),
(1570, 29, 'Kabupaten Kolaka Utara'),
(1571, 29, 'Kabupaten Konawe'),
(1572, 29, 'Kabupaten Konawe Kepulauan'),
(1573, 29, 'Kabupaten Konawe Selatan'),
(1574, 29, 'Kabupaten Konawe Utara'),
(1575, 29, 'Kabupaten Muna'),
(1576, 29, 'Kabupaten Muna Barat'),
(1577, 29, 'Kabupaten Wakatobi'),
(1578, 29, 'Kota Bau-Bau'),
(1579, 29, 'Kota Kendari'),
(1580, 30, 'Kabupaten Banggai'),
(1581, 30, 'Kabupaten Banggai Kepulauan'),
(1582, 30, 'Kabupaten Banggai Laut'),
(1583, 30, 'Kabupaten Buol'),
(1584, 30, 'Kabupaten Donggala'),
(1585, 30, 'Kabupaten Morowali'),
(1586, 30, 'Kabupaten Morowali Utara'),
(1587, 30, 'Kabupaten Parigi Moutong'),
(1588, 30, 'Kabupaten Poso'),
(1589, 30, 'Kabupaten Sigi'),
(1590, 30, 'Kabupaten Tojo Una-Una'),
(1591, 30, 'Kabupaten Toli-Toli'),
(1592, 30, 'Kota Palu'),
(1593, 31, 'Kabupaten Bolaang Mongondow'),
(1594, 31, 'Kabupaten Bolaang Mongondow Selatan'),
(1595, 31, 'Kabupaten Bolaang Mongondow Timur'),
(1596, 31, 'Kabupaten Bolaang Mongondow Utara'),
(1597, 31, 'Kabupaten Kepulauan Sangihe'),
(1598, 31, 'Kabupaten Kepulauan Siau Tagulandang Biaro'),
(1599, 31, 'Kabupaten Kepulauan Talaud'),
(1600, 31, 'Kabupaten Minahasa'),
(1601, 31, 'Kabupaten Minahasa Selatan'),
(1602, 31, 'Kabupaten Minahasa Tenggara'),
(1603, 31, 'Kabupaten Minahasa Utara'),
(1604, 31, 'Kota Bitung'),
(1605, 31, 'Kota Kotamobagu'),
(1606, 31, 'Kota Manado'),
(1607, 31, 'Kota Tomohon'),
(1608, 32, 'Kabupaten Majene'),
(1609, 32, 'Kabupaten Mamasa'),
(1610, 32, 'Kabupaten Mamuju'),
(1611, 32, 'Kabupaten Mamuju Tengah'),
(1612, 32, 'Kabupaten Mamuju Utara'),
(1613, 32, 'Kabupaten Polewali Mandar'),
(1614, 32, 'Kota Mamuju'),
(1615, 33, 'Kabupaten Buru'),
(1616, 33, 'Kabupaten Buru Selatan'),
(1617, 33, 'Kabupaten Kepulauan Aru'),
(1618, 33, 'Kabupaten Maluku Barat Daya'),
(1619, 33, 'Kabupaten Maluku Tengah'),
(1620, 33, 'Kabupaten Maluku Tenggara'),
(1621, 33, 'Kabupaten Maluku Tenggara Barat'),
(1622, 33, 'Kabupaten Seram Bagian Barat'),
(1623, 33, 'Kabupaten Seram Bagian Timur'),
(1624, 33, 'Kota Ambon'),
(1625, 33, 'Kota Tual'),
(1626, 34, 'Kabupaten Halmahera Barat'),
(1627, 34, 'Kabupaten Halmahera Tengah'),
(1628, 34, 'Kabupaten Halmahera Utara'),
(1629, 34, 'Kabupaten Halmahera Selatan'),
(1630, 34, 'Kabupaten Kepulauan Sula'),
(1631, 34, 'Kabupaten Halmahera Timur'),
(1632, 34, 'Kabupaten Pulau Morotai'),
(1633, 34, 'Kabupaten Pulau Taliabu'),
(1634, 34, 'Kota Ternate'),
(1635, 34, 'Kota Tidore Kepulauan'),
(1636, 35, 'Kabupaten Asmat'),
(1637, 35, 'Kabupaten Biak Numfor'),
(1638, 35, 'Kabupaten Boven Digoel'),
(1639, 35, 'Kabupaten Deiyai'),
(1640, 35, 'Kabupaten Dogiyai'),
(1641, 35, 'Kabupaten Intan Jaya'),
(1642, 35, 'Kabupaten Jayapura'),
(1643, 35, 'Kabupaten Jayawijaya'),
(1644, 35, 'Kabupaten Keerom'),
(1645, 35, 'Kabupaten Kepulauan Yapen'),
(1646, 35, 'Kabupaten Lanny Jaya'),
(1647, 35, 'Kabupaten Mamberamo Raya'),
(1648, 35, 'Kabupaten Mamberamo Tengah'),
(1649, 35, 'Kabupaten Mappi'),
(1650, 35, 'Kabupaten Merauke'),
(1651, 35, 'Kabupaten Mimika'),
(1652, 35, 'Kabupaten Nabire'),
(1653, 35, 'Kabupaten Nduga'),
(1654, 35, 'Kabupaten Paniai'),
(1655, 35, 'Kabupaten Pegunungan Bintang'),
(1656, 35, 'Kabupaten Puncak'),
(1657, 35, 'Kabupaten Puncak Jaya'),
(1658, 35, 'Kabupaten Sarmi'),
(1659, 35, 'Kabupaten Supiori'),
(1660, 35, 'Kabupaten Tolikara'),
(1661, 35, 'Kabupaten Waropen'),
(1662, 35, 'Kabupaten Yahukimo'),
(1663, 35, 'Kabupaten Yalimo'),
(1664, 35, 'Kota Jayapura'),
(1665, 36, 'Kabupaten Fakfak'),
(1666, 36, 'Kabupaten Kaimana'),
(1667, 36, 'Kabupaten Manokwari'),
(1668, 36, 'Kabupaten Manokwari Selatan'),
(1669, 36, 'Kabupaten Maybrat'),
(1670, 36, 'Kabupaten Pegunungan Arfak'),
(1671, 36, 'Kabupaten Raja Ampat'),
(1672, 36, 'Kabupaten Sorong'),
(1673, 36, 'Kabupaten Sorong Selatan'),
(1674, 36, 'Kabupaten Tambrauw'),
(1675, 36, 'Kabupaten Teluk Bintuni'),
(1676, 36, 'Kabupaten Teluk Wondama');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id`, `nama`) VALUES
(3, 'NAD Aceh '),
(4, 'Sumatera Utara (SUMUT)'),
(5, 'Sumatera Barat (SUMBAR)'),
(6, 'Sumatera Selatan (SUMSEL)'),
(7, 'Riau'),
(8, 'Kepulauan Riau (KEPRI)'),
(9, 'Jambi'),
(10, 'Bengkulu'),
(11, 'Bangka Belitung (BABEL)'),
(12, 'Lampung'),
(13, 'Banten'),
(14, 'Jawa Barat (JABAR)'),
(15, 'Jawa Tengah (JATENG)'),
(16, 'Jawa Timur (JATIM)'),
(17, 'DKI Jakarta'),
(18, 'Daerah Istimewa Yogyakarta'),
(19, 'Bali'),
(20, 'Nusa Tenggara Barat (NTB)'),
(21, 'Nusa Tenggara Timur (NTT)'),
(22, 'Kalimantan Barat (KALBAR)'),
(23, 'Kalimantan Selatan (KALSEL)'),
(24, 'Kalimantan Tengah (KALTENG)'),
(25, 'Kalimantan Timur (KALTIM)'),
(26, 'Kalimantan Utara (KALTARA)'),
(27, 'Gorontalo'),
(28, 'Sulawesi Selatan (SULSEL)'),
(29, 'Sulawesi Tenggara (SULTRA)'),
(30, 'Sulawesi Tengah (SULTENG)'),
(31, 'Sulawesi Utara (SULUT)'),
(32, 'Sulawesi Barat (SULBAR)'),
(33, 'Maluku'),
(34, 'Maluku Utara'),
(35, 'Papua'),
(36, 'Papua Barat');

-- --------------------------------------------------------

--
-- Table structure for table `tb_irs`
--

CREATE TABLE `tb_irs` (
  `id_irs` int(11) NOT NULL,
  `semester` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14') NOT NULL,
  `jmlh_sks` varchar(255) NOT NULL,
  `scan_irs` varchar(255) DEFAULT NULL,
  `nim` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_irs`
--

INSERT INTO `tb_irs` (`id_irs`, `semester`, `jmlh_sks`, `scan_irs`, `nim`) VALUES
(1, '5', '24', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_khs`
--

CREATE TABLE `tb_khs` (
  `id_khs` int(11) NOT NULL,
  `semester` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14') NOT NULL,
  `sks_semester` varchar(255) NOT NULL,
  `jmlh_sks` varchar(255) NOT NULL,
  `sks_kumulatif` varchar(255) NOT NULL,
  `ip_semester` varchar(255) NOT NULL,
  `ipk` varchar(255) NOT NULL,
  `scan_khs` varchar(255) DEFAULT NULL,
  `nim` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_khs`
--

INSERT INTO `tb_khs` (`id_khs`, `semester`, `sks_semester`, `jmlh_sks`, `sks_kumulatif`, `ip_semester`, `ipk`, `scan_khs`, `nim`) VALUES
(1, '5', '22', '22', '83', '3.50', '3.20', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pkl`
--

CREATE TABLE `tb_pkl` (
  `id_pkl` int(11) NOT NULL,
  `nilai_pkl` enum('A','B','C','D','E') NOT NULL,
  `status_pkl` enum('LULUS','TIDAK LULUS') NOT NULL,
  `scan_berita_pkl` varchar(255) DEFAULT NULL,
  `nim` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pkl`
--

INSERT INTO `tb_pkl` (`id_pkl`, `nilai_pkl`, `status_pkl`, `scan_berita_pkl`, `nim`) VALUES
(1, 'A', 'LULUS', NULL, '24060120140099');

-- --------------------------------------------------------

--
-- Table structure for table `tb_profile_admin`
--

CREATE TABLE `tb_profile_admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nohp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_profile_admin`
--

INSERT INTO `tb_profile_admin` (`id`, `nama`, `provinsi`, `kota`, `email`, `nohp`) VALUES
(1, 'RYAN BABAYO', '17', '1427', 'dc', '14134134134');

-- --------------------------------------------------------

--
-- Table structure for table `tb_profile_user`
--

CREATE TABLE `tb_profile_user` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nim` varchar(255) NOT NULL,
  `angkatan` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nohp` varchar(12) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_profile_user`
--

INSERT INTO `tb_profile_user` (`id`, `nama`, `nim`, `angkatan`, `provinsi`, `kota`, `email`, `nohp`, `user_id`) VALUES
(1, 'Farhan Dwicahyo', '24060120140099', '2020', '17', '1428', 'farhandwicahyoo@gmail.com', '123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_skripsi`
--

CREATE TABLE `tb_skripsi` (
  `id_skripsi` int(11) NOT NULL,
  `stat_skripsi` enum('LULUS','TIDAK LULUS') NOT NULL,
  `nilai_skripsi` enum('A','B','C','D','E') NOT NULL,
  `lama_studi` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14') NOT NULL,
  `tgl_sidang` date NOT NULL,
  `scan_berita` varchar(255) DEFAULT NULL,
  `nim` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_skripsi`
--

INSERT INTO `tb_skripsi` (`id_skripsi`, `stat_skripsi`, `nilai_skripsi`, `lama_studi`, `tgl_sidang`, `scan_berita`, `nim`) VALUES
(1, 'LULUS', 'A', '5', '2022-10-23', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Farhan Dwicahyo', 'farhandwicahyoo@gmail.com', '202cb962ac59075b964b07152d234b70', 'mahasiswa'),
(5, 'RYAN BABAYO', 'dc@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin'),
(6, 'Michael Arga', 'dece@gmail.com', '202cb962ac59075b964b07152d234b70', 'dosen');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_provinsi` (`id_provinsi`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_irs`
--
ALTER TABLE `tb_irs`
  ADD PRIMARY KEY (`id_irs`);

--
-- Indexes for table `tb_khs`
--
ALTER TABLE `tb_khs`
  ADD PRIMARY KEY (`id_khs`);

--
-- Indexes for table `tb_pkl`
--
ALTER TABLE `tb_pkl`
  ADD PRIMARY KEY (`id_pkl`);

--
-- Indexes for table `tb_profile_admin`
--
ALTER TABLE `tb_profile_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_profile_user`
--
ALTER TABLE `tb_profile_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_skripsi`
--
ALTER TABLE `tb_skripsi`
  ADD PRIMARY KEY (`id_skripsi`);

--
-- Indexes for table `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1677;

--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tb_irs`
--
ALTER TABLE `tb_irs`
  MODIFY `id_irs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_khs`
--
ALTER TABLE `tb_khs`
  MODIFY `id_khs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_pkl`
--
ALTER TABLE `tb_pkl`
  MODIFY `id_pkl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_profile_admin`
--
ALTER TABLE `tb_profile_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_profile_user`
--
ALTER TABLE `tb_profile_user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_skripsi`
--
ALTER TABLE `tb_skripsi`
  MODIFY `id_skripsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD CONSTRAINT `kabupaten_ibfk_1` FOREIGN KEY (`id_provinsi`) REFERENCES `provinsi` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
