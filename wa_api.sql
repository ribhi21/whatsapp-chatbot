-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2022 at 02:34 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wa_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(5) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(1, 'FaQ'),
(2, 'Slider'),
(4, 'About Us'),
(5, 'Services'),
(6, 'Team'),
(7, 'Berita'),
(9, 'Contact Us'),
(10, 'Kalender Akademik');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `isi` text NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `file` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `judul`, `tanggal`, `isi`, `kategori`, `file`) VALUES
(4, 'percobaan 1', '2022-08-19', '<p>percobaan 1</p>', '3', '4d28041c9f38a6dedcfd16858a8e10b1.jpg'),
(5, 'Ini Contoh Slider 1', '2022-08-20', '<p>Ut velit est quam dolor ad a aliquid qui aliquid. Sequi ea ut et est quaerat sequi nihil ut aliquam. Occaecati alias dolorem mollitia ut. Similique ea voluptatem. Esse doloremque accusamus repellendus deleniti vel. Minus et tempore modi architecto.</p>', '2', ''),
(6, 'Ini Contoh Slider 2', '0000-00-00', '<p>wsfdfsd wsfdfsd wsfdfsd wsfdfsd wsfdfsd wsfdfsd wsfdfsd wsfdfsd wsfdfsd wsfdfsd wsfdfsd wsfdfsd wsfdfsd wsfdfsd wsfdfsd wsfdfsd wsfdfsd </p>', '2', ''),
(7, 'Services 1', '2022-08-19', '<p>Ini Services pertama yiha Ini Services pertama yiha Ini Services pertama yiha Ini Services pertama yiha Ini Services pertama yiha Ini Services pertama yiha </p>', '5', ''),
(8, 'Services 2', '2022-08-18', '<p>Ini services ke 2 yuhu Ini services ke 2 yuhu <strong>Ini services ke 2 yuhu Ini services ke 2 yuhu Ini services ke 2 yuhu Ini services ke 2 yuhu Ini services ke 2 yuhu</strong></p>', '5', ''),
(9, 'Services 3', '2022-08-13', '<p>Ini services ke 3 yehe Ini services ke 3 yehe Ini services ke 3 yehe Ini services ke 3 yehe Ini services ke 3 yehe Ini services ke 3 yehe Ini services ke 3 yehe </p>', '5', ''),
(10, 'Services 4', '2020-04-04', '<p>Ini Services ke 4 yoho Ini Services ke 4 yoho Ini Services ke 4 yoho Ini Services ke 4 yoho Ini Services ke 4 yoho Ini Services ke 4 yoho Ini Services ke 4 yoho </p>', '5', ''),
(11, 'Services 5', '2020-05-05', '<p>ini services ke 5 yahu ini services ke 5 yahu ini services ke 5 yahu ini services ke 5 yahu ini services ke 5 yahu ini services ke 5 yahu ini services ke 5 yahu </p>', '5', ''),
(12, 'Services 6', '2020-06-06', '<p>Ini Services Ke 6 yaha Ini Services Ke 6 yaha Ini Services Ke 6 yaha Ini Services Ke 6 yaha Ini Services Ke 6 yaha Ini Services Ke 6 yaha Ini Services Ke 6 yaha </p>', '5', ''),
(13, 'ini Sub Menu About US', '2021-07-07', '<p>ini isi about us ini isi about us ini isi about us ini isi about us ini isi about us ini isi about us ini isi about us ini isi about us ini isi about us ini isi about us ini isi about us ini isi about us ini isi about us ini isi about us ini isi about us ini isi about us ini isi about us </p>', '4', ''),
(15, 'Walter Black', '2020-02-20', '<p>Biar Beda Biar Beda Biar Beda Biar Beda Biar Beda Biar Beda </p>', '6', '187712bd148481a7e1e463f17f0c9717.jpg'),
(16, 'Lumayan sering ditanyakan pertama', '2020-02-20', '<p>ini lumayan sering dipertanyakan</p>', '1', ''),
(17, 'Lumayan Sering ditanyakan Kedua', '2022-08-13', '<p>ini lumayan sering dipertanyakan juga</p>', '1', ''),
(18, 'Lumayan Sering dipertanyakan Ketiga', '2022-08-10', '<p>Ini juga Lumayan Sering dipertanyakan loh</p>', '1', ''),
(19, 'Lumayan Sering Dipertanyakan Keempat', '2022-08-02', '<p>Apalagi ini, sering jugah</p>', '1', ''),
(20, 'Black Maria', '2020-02-20', '<p>Yihaaa YihaaaYihaaaYihaaa Yihaaa Yihaaa Yihaaa Yihaaa Yihaaa</p>', '6', 'ffb7531c53301c59e86c51e924ced45a.jpg'),
(21, 'Anna Taylor Joy', '2019-12-13', '<p>The Queen\'s Gambit</p>', '6', 'fc3caab0c57cd71f51b60392b7bd08dd.jpg'),
(22, 'POLITEKNIK CALTEX RIAU', '2022-08-10', '<p>Jl. Umban Sari (Patin) No. 1 Rumbai<br>Pekanbaru-Riau 28265<br>Telp : (0761) - 53939<br>Fax : (0761) - 554224</p>', '9', ''),
(23, 'Anoother Slider', '2021-10-10', '<p>This is another sllider </p>', '2', ''),
(24, 'Yayasan PCR Menunjuk Kembali Dadang Syarif Sebagai Direktur Politeknik Caltex Riau', '2022-08-02', '<p><strong>Pekanbaru (2/8)</strong> – Politeknik Caltex Riau (PCR) menggelar Serah Terima Jabatan (Sertijab) Direktur periode 2022–2024 dari Dr. Mohammad Yanuar Hariyawan, S.T., M.T., kepada Dr. Dadang Syarif SS, S.Si., M.Sc.  Senin, 1 Agustus 2022. Dadang kembali mengemban jabatan Direktur PCR hingga dua tahun kedepan.</p><p>Pelantikan Direktur PCR periode 2022-2024 ini dipimpin langsung oleh Ketua Umum Yayasan Politeknik Chevron Riau (YPCR), Drs. Azhar, M.M. dan disaksikan oleh Ketua Dewan Pembina YPCR H. Saleh Djasit, S.H. serta dihadiri beberapa dewan pembina, pengurus YPCR, pimpinan dan staf di PCR.</p><p>Dalam sambutannya, Azhar menuturkan bahwa pergantian Direktur PCR ini merupakan agenda yang sudah dijadwalkan setiap 2 (dua) tahun sekali.</p><p>“Berdasarkan statuta bahwa masa jabatan Direktur Politeknik Caltex Riau berlaku selama dua tahun, Pak Yanuar sudah memasuki akhir jabatannya per 31 Juli 2022. Untuk dua tahun kedepan, PCR akan dipimpin oleh Pak Dadang. Kami mengucapkan terimakasih kepada pak Dadang yang telah bersedia menerima amanah dari Yayasan PCR untuk memimpin PCR ketiga kalinya,” ujarnya</p>', '7', '7c71ee2bb1d76df63129ad701b8f883b.jpg'),
(25, 'PCR Raih 2 Prestasi di KMIPN 2022', '2022-08-09', '<p><strong>Pekanbaru (5/8) – </strong>Politeknik Caltex Riau (PCR) kembali menorehkan prestasi tingkat nasional. Prestasi kali ini diraih pada ajang Kompetisi Mahasiswa Bidang Informatika Politeknik Nasional (KMIPN). Kompetisi ini digelar secara luring pada tanggal 2 - 3 Agustus 2022 di Kampus Politeknik Negeri Batam.</p><p>Pada ajang ini, PCR berhasil meraih prestasi pada kategori Keamanan Siber dan Cipta Inovasi. Tim Istiqomah yang mewakili PCR pada kategori Keamanan Siber berhasil meraih juara 2. Tim ini beranggotakan Andre Prisya Lubis, Embun Duta Laksmana dan Muhammad Anwar. Sedangkan Tim PEKA yang beranggotakan Kelly Chan, Camelin dan Chintya Ang pada kategori Cipta Inovasi berhasil meraih penghargaan best presentation. Mereka berlima merupakan mahasiswa dari Program Studi Teknik Informatika.</p><p>“Alhamdulillah, kita dapat membawa nama harum PCR dan kembali meraih prestasi pada KMIPN khususnya pada kategori Keamanan Siber. Kami ucapkan terimakasih banyak kepada pembimbing kita pak Fadhly dan kerja sama tim Anwar dan Embun serta teman lainnya,” ungkap Andre, selaku ketua Tim Istiqomah</p>', '7', 'cbebfc8700c3cd1a82116a16a662ba29.jpg'),
(26, '', '2022-08-09', '', '8', '741a7ecba3323e5c91d81bfab3e1e23a.jpg'),
(27, '', '2022-08-09', '', '8', 'e7757269df47d605a1fa10351ba3c3f4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` varchar(1000) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_post`
-- (See below for the actual view)
--
CREATE TABLE `v_post` (
`id` int(5)
,`judul` varchar(100)
,`tanggal` date
,`isi` text
,`kategori` varchar(100)
,`file` varchar(1000)
,`nama_kategori` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_user`
-- (See below for the actual view)
--
CREATE TABLE `v_user` (
`no_hp` varchar(20)
,`id_last_chat` int(5)
,`kategori` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `wa_replies`
--
-- Error reading structure for table wa_api.wa_replies: #1932 - Table 'wa_api.wa_replies' doesn't exist in engine
-- Error reading data for table wa_api.wa_replies: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `wa_api`.`wa_replies`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `wa_satu`
--

CREATE TABLE `wa_satu` (
  `id` int(5) NOT NULL,
  `jawaban` varchar(1000) NOT NULL,
  `id_root` int(5) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `pertanyaan` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wa_satu`
--

INSERT INTO `wa_satu` (`id`, `jawaban`, `id_root`, `kategori`, `pertanyaan`) VALUES
(1, 'Halo {nama} , apa yang bisa dibantu?\r\nBAAK Virtual Assistant akan membantu kamu.\r\nSilahkan ketik *MENU* untuk memilih pilihan dari opsi yang disediakan.', 1, 'Salam Awal', 'halo,helo,hai,hey,hi,assalamu\'alaikum,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,ping'),
(2, 'Ketik *REGISTRASI* untuk informasi terkait Pendaftaran Ulang.\r\nKetik *AKADEMIK* untuk informasi seputar Akademik Mahasiswa.\r\nKetik *KALMIK* untuk melihat Kalender Akademik\r\n\r\n', 1, 'Menu', 'menu'),
(3, 'Apa kendala yang kamu hadapi saat melakukan Registrasi.\n\nKetik *1* jika kamu sudah membayar uang SPP, namun tidak bisa melakukan Pendaftaran Ulang.\n\nKetik *2* jika kamu telat dan melewati batas waktu melakukan Pendaftaran Ulang.\n \nKetik *0* untuk kembali ke menu sebelumnya', 2, 'Registrasi', 'registrasi'),
(4, 'Apabila kamu sudah membayar Tagihan namun tidak bisa Pendaftaran Ulang, kemungkinan kamu belum memenuhi syarat lain untuk dapat melakukan Pendaftaran Ulang seperti bebas pustaka atau bebas kompensasi. Silahkan buka Sistem Akademik Mahasiswa(SIAK) kamu untuk mengecek syarat tersebut.\r\n\r\nKetik *0* untuk kembali', 3, 'Registrasi', '1'),
(5, 'Apabila kamu melewati batas waktu Pendaftaran Ulang dan belum melakukan pembayaran SPP, sebaiknya kamu langsung ke Keuangan PCR untuk membuka Tagihan kamu di Sistem Akademik Mahasiswa(SIAK) agar dapat diproses.\r\n\r\nKetik *0* untuk kembali ', 3, 'Registrasi', '2'),
(6, 'Ketik *1* jika kamu memiliki keluhan terhadap Presensi kamu\r\n\r\nKetik *2* untuk informasi permohonan Surat Akademik\r\n\r\nKetik *3* untuk informasi seputar TAK\r\n\r\nKetik *4* untuk informasi Pendaftaran Wifi Kampus\r\n\r\nKetik *5* untuk informasi Tata Cara/Prosedur Izin\r\n\r\nKetik *6* untuk informasi mengurus mata kuliah yang CO (CarryOver)\r\n\r\nKetik *0* untuk kembali ke menu sebelumnya\r\n\r\n', 2, 'Akademik', 'akademik'),
(7, 'Jika kamu memiliki keluhan terhadap presensi perkuliahan kamu seperti hadir namun di sistem akademik mahasiswa(SIAK) tercatat alpha atau menyerahkan surat sakit namun di SIAK tercatat alpha, maka kamu dapat mengajukan Komplain di Layanan Akademik dalam SIAK kamu. \r\n\r\nketik *0* untuk kembali', 6, 'Presensi', '1'),
(8, 'untuk membuat permohonan Surat Akademik seperti Surat Keterangan Aktif Kuliah, Transkrip Nilai, Surat Keterangan Lulus, ataupun lainnya, kamu dapat mengajukannya di Layanan Akademik pada Sistem informasi Akademik Mahasiswa(SIAK) kamu.\r\n\r\nKetik *0* untuk kembali', 6, 'Permohonan Akademik', '2'),
(9, 'Untuk melihat apakah TAK kamu sudah diproses atau belum, kamu dapat mengeceknya di Daftar Aktivitas Mahasiswa pada Sistem Informasi Akademik Mahasiswa(SIAK) kamu.\r\n\r\nketik *0* untuk kembali', 6, 'TAK', '3'),
(10, 'untuk melakukan pendaftaran Wifi kampus, silahkan mengambil lembaran formulir yang sudah disediakan dikantor BAAK, lalu diisi sesuai perangkat kamu dan diserahkan ke Pusat Komputer(PUSKOM) kampus.\r\n\r\nketik *0* untuk kembali', 6, 'WiFi Kampus', '4'),
(11, 'Untuk mendapatkan izin dari kampus apabila keluarga kamu terkena musibah (sakit atau meninggal) atau ada acara keluarga (pernikahan), maka kamu dapat mengambil formulir izin yang disediakan di kantor BAAK, lalu diisi dan meminta persetujuan(tanda tangan) dari KAPRODI kamu, lalu diserahkan kembali ke BAAK.\r\n\r\nKetik *0* untuk kembali', 6, 'Izin', '5'),
(12, 'Apabila salah satu mata perkuliahan kamu tidak lulus, maka kamu akan mendapatkan email untuk mengurus CO (CarryOver) dengan melapor dan daftar ke Keuangan PCR. Setelah itu, kamu akan mendapatkan rekap jadwal pelaksanaan CO mata kuliah terkait melalui Email mahasiswa kamu.\r\n\r\nketik *0* untuk kembali', 6, 'CarryOver', '6'),
(15, 'Kalender Akademik Semester Ganjil TA. 2022/2023', 2, 'Kalender Akademik', 'kalmik');

-- --------------------------------------------------------

--
-- Table structure for table `wa_user`
--

CREATE TABLE `wa_user` (
  `id` int(5) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `id_last_chat` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wa_user`
--

INSERT INTO `wa_user` (`id`, `no_hp`, `id_last_chat`) VALUES
(43, '6281275575929@c.us', 3),
(98, '6281261105556@c.us', 6);

-- --------------------------------------------------------

--
-- Structure for view `v_post`
--
DROP TABLE IF EXISTS `v_post`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_post`  AS SELECT `post`.`id` AS `id`, `post`.`judul` AS `judul`, `post`.`tanggal` AS `tanggal`, `post`.`isi` AS `isi`, `post`.`kategori` AS `kategori`, `post`.`file` AS `file`, `kategori`.`kategori` AS `nama_kategori` FROM (`post` join `kategori`) WHERE `kategori`.`id` = `post`.`kategori``kategori`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_user`
--
DROP TABLE IF EXISTS `v_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_user`  AS SELECT `wa_user`.`no_hp` AS `no_hp`, `wa_user`.`id_last_chat` AS `id_last_chat`, `wa_satu`.`kategori` AS `kategori` FROM (`wa_user` join `wa_satu` on(`wa_user`.`id_last_chat` = `wa_satu`.`id`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wa_satu`
--
ALTER TABLE `wa_satu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wa_user`
--
ALTER TABLE `wa_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wa_satu`
--
ALTER TABLE `wa_satu`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wa_user`
--
ALTER TABLE `wa_user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
