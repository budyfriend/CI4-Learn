-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 12, 2021 at 05:47 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci42`
--

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto', 'naruto', 'Masashi Kishimoto', 'Shonen Jump', 'naruto.jpg', NULL, NULL),
(2, 'One Piece', 'one-piece', 'Eichiro Oda', 'Gramedia', 'onepiece.jpg', NULL, NULL),
(11, 'Yang berubah hanya judul', 'yang-berubah-hanya-judul', 'Budiono', 'Gramedia', '1628695473_f83f11f71315d563f769.png', '2021-08-11 08:32:24', '2021-08-11 10:24:33'),
(14, 'coba 3', 'coba-3', 'test 3', 'test 3', 'default.png', '2021-08-11 09:55:42', '2021-08-11 09:55:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-08-11-153313', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1628696401, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(5) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Salwa Hartati', 'Jr. Ketandan No. 218, Padangsidempuan 26705, SulTra', '2009-10-08 04:05:16', '2021-08-11 11:13:48'),
(2, 'Maria Ika Nurdiyanti', 'Kpg. W.R. Supratman No. 769, Yogyakarta 59235, KepR', '1992-12-09 16:58:25', '2021-08-11 11:13:48'),
(3, 'Kajen Irawan', 'Psr. Kebangkitan Nasional No. 60, Banjarbaru 98285, MalUt', '2021-03-08 17:26:44', '2021-08-11 11:13:48'),
(4, 'Kadir Lanjar Zulkarnain S.E.', 'Dk. Ters. Pasir Koja No. 518, Yogyakarta 17248, MalUt', '2009-11-08 19:40:22', '2021-08-11 11:13:48'),
(5, 'Balapati Sihombing', 'Kpg. B.Agam Dlm No. 3, Padangsidempuan 10211, SumUt', '2005-04-21 08:56:13', '2021-08-11 11:13:48'),
(6, 'Zamira Yolanda', 'Dk. Bayam No. 25, Depok 24667, MalUt', '2016-02-27 22:03:49', '2021-08-11 11:13:48'),
(7, 'Najwa Safitri S.T.', 'Jr. Radio No. 682, Palu 66263, Gorontalo', '2013-08-14 08:41:15', '2021-08-11 11:13:48'),
(8, 'Jaiman Januar', 'Ki. Salak No. 542, Kediri 66311, Aceh', '1977-11-02 03:48:14', '2021-08-11 11:13:48'),
(9, 'Oskar Damanik', 'Jln. Yos No. 156, Tomohon 17599, SulTra', '1970-03-17 14:00:34', '2021-08-11 11:13:48'),
(10, 'Jarwi Kamidin Tampubolon S.Psi', 'Gg. K.H. Wahid Hasyim (Kopo) No. 603, Balikpapan 79444, Lampung', '1975-12-18 06:29:55', '2021-08-11 11:13:48'),
(11, 'Setya Rajasa', 'Ki. Kyai Gede No. 970, Jambi 76996, JaTeng', '1992-03-15 20:23:40', '2021-08-11 11:13:48'),
(12, 'Bahuraksa Lega Hidayanto S.Farm', 'Gg. Jamika No. 713, Balikpapan 90417, SumSel', '1983-06-11 09:14:25', '2021-08-11 11:13:48'),
(13, 'Cemeti Wasis Suryono', 'Ki. Rajiman No. 936, Makassar 93064, SumUt', '1993-08-20 10:22:51', '2021-08-11 11:13:48'),
(14, 'Ega Asmianto Suryono', 'Gg. Ketandan No. 513, Blitar 19315, KalTeng', '1974-08-30 15:10:25', '2021-08-11 11:13:48'),
(15, 'Olga Tedi Prayoga', 'Gg. Padang No. 644, Denpasar 30711, SulBar', '1989-02-24 06:30:20', '2021-08-11 11:13:48'),
(16, 'Lidya Sabrina Laksmiwati', 'Ki. Achmad Yani No. 244, Cimahi 99353, SulBar', '1996-05-16 04:04:58', '2021-08-11 11:13:48'),
(17, 'Luhung Hakim M.Ak', 'Psr. Jend. A. Yani No. 572, Bontang 40054, KalUt', '1989-08-13 08:37:39', '2021-08-11 11:13:48'),
(18, 'Dian Laksita', 'Gg. Gambang No. 11, Semarang 15577, Jambi', '2005-03-06 21:45:51', '2021-08-11 11:13:48'),
(19, 'Sarah Yolanda M.Kom.', 'Jr. Cemara No. 657, Bandar Lampung 27610, KalSel', '2010-10-06 17:02:11', '2021-08-11 11:13:48'),
(20, 'Zizi Laila Yulianti S.E.I', 'Dk. Muwardi No. 268, Pontianak 18495, Bengkulu', '2020-04-16 10:50:02', '2021-08-11 11:13:48'),
(21, 'Karma Budiman', 'Gg. Abdul Muis No. 183, Tidore Kepulauan 82392, PapBar', '2016-05-17 09:38:28', '2021-08-11 11:13:48'),
(22, 'Yani Hasanah M.Pd', 'Ki. Warga No. 902, Pontianak 68023, Bali', '2006-09-05 10:19:21', '2021-08-11 11:13:48'),
(23, 'Sabrina Handayani S.Gz', 'Jr. Bak Mandi No. 249, Tegal 98810, Papua', '1976-02-13 07:32:36', '2021-08-11 11:13:48'),
(24, 'Yahya Mahendra', 'Jr. Abdul No. 572, Surabaya 99447, KalSel', '1995-01-23 06:16:04', '2021-08-11 11:13:48'),
(25, 'Latika Usada S.I.Kom', 'Dk. Moch. Yamin No. 808, Tual 97765, Gorontalo', '1993-09-03 23:45:17', '2021-08-11 11:13:48'),
(26, 'Kenari Najmudin', 'Jr. Mulyadi No. 98, Pasuruan 57381, SulBar', '2001-12-01 04:44:24', '2021-08-11 11:13:48'),
(27, 'Usman Asmuni Samosir S.Psi', 'Psr. Raden Saleh No. 695, Denpasar 43877, Lampung', '1972-03-18 03:38:38', '2021-08-11 11:13:48'),
(28, 'Emil Budiyanto', 'Dk. Pattimura No. 705, Binjai 60591, SulUt', '2016-07-10 07:52:01', '2021-08-11 11:13:48'),
(29, 'Azalea Aryani', 'Jln. Tambak No. 927, Padangsidempuan 77493, SumBar', '1991-05-09 18:23:35', '2021-08-11 11:13:48'),
(30, 'Humaira Nasyiah', 'Ds. Baja Raya No. 134, Ambon 35595, DIY', '2002-05-22 08:44:56', '2021-08-11 11:13:48'),
(31, 'Caturangga Wibowo', 'Jr. Lembong No. 783, Sungai Penuh 90528, SumUt', '1990-08-03 23:22:41', '2021-08-11 11:13:48'),
(32, 'Amelia Cornelia Widiastuti S.E.', 'Gg. Yos Sudarso No. 490, Makassar 19000, Bengkulu', '1987-05-18 00:53:47', '2021-08-11 11:13:48'),
(33, 'Pardi Hutapea', 'Jr. Dr. Junjunan No. 816, Pontianak 27415, SulTra', '2021-03-16 02:27:10', '2021-08-11 11:13:48'),
(34, 'Victoria Rika Wulandari M.Ak', 'Dk. Aceh No. 529, Batu 25803, SulUt', '1989-08-22 07:45:57', '2021-08-11 11:13:48'),
(35, 'Lasmono Baktianto Najmudin', 'Jln. Bawal No. 223, Tarakan 48601, PapBar', '1971-07-26 10:15:17', '2021-08-11 11:13:48'),
(36, 'Aurora Melani S.Farm', 'Gg. Adisumarmo No. 167, Bengkulu 51480, Bengkulu', '1985-07-15 11:45:36', '2021-08-11 11:13:48'),
(37, 'Lasmanto Wibisono', 'Ds. Cokroaminoto No. 916, Salatiga 41960, DIY', '1990-07-04 05:57:38', '2021-08-11 11:13:48'),
(38, 'Nrima Samosir S.Ked', 'Psr. Flores No. 609, Surabaya 59655, SulSel', '2018-11-11 05:10:55', '2021-08-11 11:13:48'),
(39, 'Tina Endah Laksmiwati', 'Jln. Yap Tjwan Bing No. 205, Kupang 77664, BaBel', '1991-01-18 15:09:19', '2021-08-11 11:13:48'),
(40, 'Jane Wulandari', 'Jln. Sumpah Pemuda No. 526, Bau-Bau 44538, SulSel', '1998-08-12 03:47:48', '2021-08-11 11:13:48'),
(41, 'Wulan Wastuti S.Gz', 'Ki. Ketandan No. 620, Binjai 45001, KepR', '2014-04-28 00:43:00', '2021-08-11 11:13:48'),
(42, 'Citra Anggraini', 'Dk. Kebangkitan Nasional No. 332, Ambon 66022, PapBar', '2002-02-09 16:45:38', '2021-08-11 11:13:48'),
(43, 'Ami Kuswandari', 'Jr. Banceng Pondok No. 469, Bengkulu 92611, JaTim', '2002-07-13 14:07:25', '2021-08-11 11:13:48'),
(44, 'Titi Hartati', 'Dk. Gambang No. 692, Pagar Alam 48606, Gorontalo', '2009-11-24 21:19:07', '2021-08-11 11:13:48'),
(45, 'Belinda Purnawati', 'Ki. Dr. Junjunan No. 218, Cilegon 87842, Gorontalo', '1985-10-01 14:33:11', '2021-08-11 11:13:48'),
(46, 'Gandi Megantara', 'Gg. Cokroaminoto No. 145, Makassar 94102, PapBar', '1991-11-29 14:39:29', '2021-08-11 11:13:48'),
(47, 'Balapati Wahyudin', 'Jr. Haji No. 7, Salatiga 91405, SulUt', '2020-10-25 03:06:56', '2021-08-11 11:13:48'),
(48, 'Dian Mardhiyah', 'Gg. Gotong Royong No. 160, Surakarta 38846, KalTim', '1974-10-09 00:45:17', '2021-08-11 11:13:48'),
(49, 'Karsa Mandala', 'Dk. Sugiyopranoto No. 574, Tanjungbalai 21624, Riau', '1993-04-12 01:09:26', '2021-08-11 11:13:48'),
(50, 'Harsanto Hutagalung', 'Gg. Banceng Pondok No. 405, Kotamobagu 26112, Banten', '1970-07-26 02:42:20', '2021-08-11 11:13:48'),
(51, 'Galang Nalar Haryanto S.Pt', 'Kpg. Ters. Buah Batu No. 744, Dumai 70053, KalUt', '2014-04-06 22:40:18', '2021-08-11 11:13:48'),
(52, 'Darmaji Wacana', 'Gg. Sunaryo No. 903, Kendari 83143, SulBar', '2011-09-26 16:29:07', '2021-08-11 11:13:48'),
(53, 'Karya Hidayat S.E.I', 'Jr. Abdul Muis No. 626, Serang 54621, KepR', '1990-10-04 22:47:57', '2021-08-11 11:13:48'),
(54, 'Caraka Kadir Wacana', 'Ki. Hasanuddin No. 318, Probolinggo 28651, JaBar', '2014-04-28 07:41:57', '2021-08-11 11:13:48'),
(55, 'Mahfud Mansur', 'Dk. Abdullah No. 210, Surabaya 58524, NTT', '1992-03-23 12:23:10', '2021-08-11 11:13:48'),
(56, 'Dacin Prasetya', 'Gg. Wahidin Sudirohusodo No. 340, Batam 72096, DKI', '1995-06-22 05:16:15', '2021-08-11 11:13:48'),
(57, 'Qori Hasanah', 'Ki. Ekonomi No. 348, Kupang 93797, Bengkulu', '1995-06-10 16:17:35', '2021-08-11 11:13:48'),
(58, 'Hana Ratih Yolanda M.Ak', 'Gg. Karel S. Tubun No. 128, Ambon 43375, SulBar', '1986-03-23 18:11:20', '2021-08-11 11:13:48'),
(59, 'Bakti Perkasa Pradipta M.M.', 'Psr. Madiun No. 926, Bontang 79224, SulTra', '2010-04-05 17:56:52', '2021-08-11 11:13:48'),
(60, 'Alambana Wijaya S.E.', 'Jln. Pasteur No. 530, Pagar Alam 72408, KalTim', '2019-07-14 17:18:53', '2021-08-11 11:13:48'),
(61, 'Gina Mandasari', 'Dk. Sukabumi No. 819, Bengkulu 32293, JaTeng', '1993-05-25 23:09:30', '2021-08-11 11:13:48'),
(62, 'Martaka Aslijan Tamba', 'Jln. Bambu No. 950, Cirebon 90293, DIY', '1983-07-25 10:36:25', '2021-08-11 11:13:48'),
(63, 'Naradi Mursita Thamrin S.Kom', 'Jln. Batako No. 702, Batu 44365, Aceh', '2005-05-15 19:26:57', '2021-08-11 11:13:48'),
(64, 'Cakrajiya Hardiansyah', 'Psr. Banceng Pondok No. 619, Palembang 22807, SulSel', '2000-04-20 16:37:36', '2021-08-11 11:13:48'),
(65, 'Elvin Utama Kurniawan', 'Jln. Bawal No. 946, Balikpapan 87947, Papua', '2007-06-07 03:51:40', '2021-08-11 11:13:48'),
(66, 'Bagas Adriansyah', 'Dk. Eka No. 624, Tasikmalaya 23230, KalUt', '2012-03-10 02:12:16', '2021-08-11 11:13:48'),
(67, 'Sakura Wijayanti', 'Psr. Abdul. Muis No. 312, Samarinda 83278, KepR', '1997-10-22 02:57:58', '2021-08-11 11:13:48'),
(68, 'Jagapati Utama', 'Gg. Basudewo No. 12, Batam 60756, Aceh', '2001-01-19 20:42:40', '2021-08-11 11:13:48'),
(69, 'Febi Yuni Laksmiwati S.Farm', 'Jr. Antapani Lama No. 396, Bitung 60387, SumSel', '1994-09-12 03:37:51', '2021-08-11 11:13:48'),
(70, 'Gara Suryono', 'Jr. Bah Jaya No. 889, Denpasar 14087, Riau', '2003-01-08 07:19:40', '2021-08-11 11:13:48'),
(71, 'Dewi Handayani', 'Ki. Baranang No. 464, Sabang 54542, SumBar', '2015-07-07 04:44:15', '2021-08-11 11:13:48'),
(72, 'Rafid Dacin Lazuardi S.Pd', 'Psr. Setiabudhi No. 140, Bogor 79697, KalTeng', '1979-09-30 05:18:46', '2021-08-11 11:13:48'),
(73, 'Manah Kusumo S.Pt', 'Gg. Moch. Ramdan No. 652, Tegal 89758, Jambi', '2019-10-16 12:02:17', '2021-08-11 11:13:48'),
(74, 'Bakiadi Pangestu M.M.', 'Kpg. Sukabumi No. 457, Kupang 21303, KalTim', '2019-06-28 04:02:48', '2021-08-11 11:13:48'),
(75, 'Asman Ibrani Gunarto', 'Jln. Kyai Gede No. 961, Tasikmalaya 78121, JaBar', '1991-02-26 06:41:26', '2021-08-11 11:13:48'),
(76, 'Reksa Kurniawan S.Pt', 'Jr. K.H. Wahid Hasyim (Kopo) No. 793, Pagar Alam 59307, SumBar', '1977-10-16 00:41:15', '2021-08-11 11:13:48'),
(77, 'Puti Nasyiah S.Kom', 'Jln. Banceng Pondok No. 529, Sungai Penuh 20992, SumUt', '1977-11-29 01:53:43', '2021-08-11 11:13:48'),
(78, 'Clara Widiastuti S.IP', 'Jln. Ters. Kiaracondong No. 477, Dumai 92172, JaTim', '2003-04-10 16:02:44', '2021-08-11 11:13:48'),
(79, 'Viktor Zulkarnain', 'Jr. Kusmanto No. 692, Singkawang 67270, DKI', '1994-11-08 08:54:36', '2021-08-11 11:13:48'),
(80, 'Melinda Hariyah', 'Gg. K.H. Maskur No. 218, Cimahi 96956, KalUt', '1998-07-29 22:41:59', '2021-08-11 11:13:48'),
(81, 'Narji Habibi S.E.', 'Gg. BKR No. 472, Banda Aceh 53112, MalUt', '1998-07-07 19:36:49', '2021-08-11 11:13:48'),
(82, 'Nabila Nilam Utami M.Farm', 'Ki. Monginsidi No. 431, Palu 94444, MalUt', '1970-02-17 20:07:53', '2021-08-11 11:13:48'),
(83, 'Baktiadi Hidayat S.Farm', 'Jln. Banal No. 590, Ambon 45004, Maluku', '1971-01-31 08:47:55', '2021-08-11 11:13:48'),
(84, 'Omar Irawan', 'Kpg. Gatot Subroto No. 198, Sibolga 77953, Riau', '2018-10-24 11:43:11', '2021-08-11 11:13:48'),
(85, 'Karman Gunawan', 'Dk. Bappenas No. 197, Sukabumi 98097, SulTeng', '1999-05-20 20:18:02', '2021-08-11 11:13:48'),
(86, 'Ulva Palastri S.Sos', 'Psr. Setiabudhi No. 224, Subulussalam 33660, SulSel', '2019-04-09 14:45:44', '2021-08-11 11:13:48'),
(87, 'Jaya Martani Sitompul S.Gz', 'Ki. Yos Sudarso No. 427, Prabumulih 91771, SulTeng', '1994-09-30 19:36:50', '2021-08-11 11:13:48'),
(88, 'Diah Mandasari', 'Jln. Cemara No. 122, Bitung 76593, Lampung', '1997-05-19 23:17:04', '2021-08-11 11:13:48'),
(89, 'Luwes Zulkarnain', 'Ds. Ters. Kiaracondong No. 538, Blitar 11521, NTT', '1992-02-27 14:09:36', '2021-08-11 11:13:48'),
(90, 'Ami Siska Rahimah', 'Jln. Asia Afrika No. 623, Pariaman 50010, Jambi', '2011-05-25 15:32:10', '2021-08-11 11:13:48'),
(91, 'Salimah Uyainah', 'Jln. Kyai Mojo No. 212, Depok 21992, MalUt', '2020-06-26 12:03:46', '2021-08-11 11:13:48'),
(92, 'Aditya Jinawi Mustofa S.Sos', 'Gg. Labu No. 12, Administrasi Jakarta Pusat 29837, Aceh', '1991-06-05 17:13:18', '2021-08-11 11:13:48'),
(93, 'Mustofa Dabukke', 'Gg. Sutoyo No. 313, Mojokerto 93136, SulTeng', '2003-10-21 11:34:57', '2021-08-11 11:13:48'),
(94, 'Wardaya Karna Irawan M.M.', 'Jln. Padang No. 591, Tomohon 77814, KalSel', '1976-10-30 05:47:34', '2021-08-11 11:13:48'),
(95, 'Omar Tampubolon', 'Ds. Orang No. 447, Sibolga 34657, Jambi', '1976-11-24 10:52:09', '2021-08-11 11:13:48'),
(96, 'Ana Ulya Yuniar M.TI.', 'Ds. Monginsidi No. 189, Pasuruan 38402, Riau', '1975-06-13 13:41:21', '2021-08-11 11:13:48'),
(97, 'Fitria Raisa Safitri', 'Kpg. Wahid No. 347, Binjai 76011, JaTeng', '1994-08-11 20:51:16', '2021-08-11 11:13:48'),
(98, 'Ayu Melani', 'Jln. Honggowongso No. 600, Kediri 70532, DKI', '1987-10-08 13:07:10', '2021-08-11 11:13:48'),
(99, 'Aisyah Hariyah M.Farm', 'Psr. Jamika No. 124, Batu 48606, MalUt', '2000-09-19 12:04:07', '2021-08-11 11:13:48'),
(100, 'Rachel Haryanti S.Ked', 'Kpg. Villa No. 940, Padangpanjang 84958, Jambi', '2018-05-29 20:29:23', '2021-08-11 11:13:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
