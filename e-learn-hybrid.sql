-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 02, 2022 at 03:20 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-learn-hybrid`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `admin_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `email`, `user_id`) VALUES
(1, 'Admin 1', 'admin1@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `id` int(10) NOT NULL,
  `class_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `class_name`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E');

-- --------------------------------------------------------

--
-- Table structure for table `class_attendance`
--

DROP TABLE IF EXISTS `class_attendance`;
CREATE TABLE `class_attendance` (
  `id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `teacher_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_attendance`
--

INSERT INTO `class_attendance` (`id`, `class_id`, `teacher_id`) VALUES
(2, 1, 52),
(3, 1, 53),
(4, 2, 53),
(5, 3, 53),
(6, 1, 1),
(7, 4, 1),
(8, 1, 2),
(9, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `level_student`
--

DROP TABLE IF EXISTS `level_student`;
CREATE TABLE `level_student` (
  `id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `level` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level_student`
--

INSERT INTO `level_student` (`id`, `student_id`, `level`) VALUES
(1, 1, 2),
(2, 3, 2),
(3, 11, 3),
(4, 15, 3),
(5, 18, 2),
(6, 31, 2),
(7, 42, 2),
(8, 44, 2),
(9, 54, 2),
(10, 55, 3),
(11, 70, 2),
(12, 78, 3),
(13, 79, 3),
(14, 84, 3),
(15, 85, 2),
(16, 86, 2),
(17, 91, 2),
(18, 95, 3),
(19, 104, 3),
(20, 105, 3),
(21, 107, 3),
(22, 113, 2),
(23, 121, 2),
(24, 127, 3),
(25, 138, 2),
(26, 140, 3),
(27, 141, 2),
(28, 143, 2),
(29, 145, 2),
(30, 148, 2);

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

DROP TABLE IF EXISTS `materi`;
CREATE TABLE `materi` (
  `id` int(10) NOT NULL,
  `materi_desc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id`, `materi_desc`, `module_id`) VALUES
(55, '<p>&nbsp; &nbsp; &nbsp; &nbsp; Otak manusia tidak pernah berhenti bekerja, baik siang maupun malam hari meskipun kita sedang tidur. Otak manusia berfungsi sebagai alat untuk memproses data yang diterima oleh reseptor pada alat indra. Otak merupakan komponen penting dalam sistem saraf manusia. Sistem saraf bersama dengan sistem endokrin dan sistem indra tergabung dalam sistem koordinasi.<br />\n&nbsp; &nbsp; &nbsp; &nbsp; Sistem koordinasi tersusun dari sistem saraf, system endokrin, dan sistem indra. Sistem saraf tersusun dari berjuta-juta sel saraf yang mempunyai bentuk bervariasi. Dalam tubuh, sel-sel saraf saling berhubungan untuk memindahkan impuls listrik dari satu bagian tubuh ke bagian tubuh lainnya. Seluruh sel-sel saraf saling bekerja sama dalam pengaturan kerja alat tubuh.</p>\n\n<h2>1. Sel Saraf (Neuron)</h2>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Sel saraf (neuron) adalah sel-sel yang bermuatan listrik dengan serabut-serabut mirip benang yang menghubungkannya dengan bagian-bagian tubuh atau dengan sel-sel saraf lain (Rutland, 1976). Sel saraf memiliki struktur tertentu yang meliputi dendrit, badan sel saraf, dan neurit.<br />\n&nbsp; &nbsp; &nbsp; &nbsp; <img alt=\"\" src=\"../assets/images/materi/struktur-selsaraf.png\" style=\"float:right; height:354px; width:422px\" />Sel-sel saraf tersusun dari dendrit, badan sel, dan neurit (akson). Dendrit berfungsi menerima impuls dari ujung saraf lain dan menghantarkannya ke badan sel saraf. Dalam badan sel terdapat badan Nissl yang berfungsi menerima dan meneruskan impuls dari dendrit ke neurit. Neurit berfungsi meneruskan impuls dari badan sel saraf ke sel saraf yang lain. Neurit terbungkus oleh selubung mielin yang disusun oleh sel-sel Schwann. Selubung mielin berfungsi sebagai pelindung neurit dan pemberi nutrisi bagi neuron. Bagian neurit yang tidak terbungkus selubung mielin disebut nodus Ranvier. Ketika di neurit, impuls menjalar ke nodus Ranvier dan kemudian meloncati selubung mielin. Hal ini terjadi karena selubung mielin bersifat sebagai isolator impuls. Loncatan impuls tersebut mempercepat gerakan impuls. Sel-sel saraf saling berhubungan membentuk suatu simpul saraf yang disebut ganglion. Antara neuron satu dengan neuron lainnya dihubungkan oleh sinapsis.<br />\n&nbsp; &nbsp; &nbsp; &nbsp; Ada tiga macam neuron berdasarkan fungsinya, yaitu neuron sensorik (neuron aferen), neuron motorik (neuron eferen), dan neuron asosiasi (neuron penghubung).<br />\n1) Neuron sensorik berfungsi menghantarkan impuls dari reseptor ke sistem saraf pusat. Reseptor adalah penerima rangsang. Organ yang mengandung reseptor disebut indra.<br />\n2) Neuron motorik berfungsi menghantarkan impuls dari sistem saraf pusat ke efektor. Efektor berupa otot dan kelenjar.<br />\n3) Neuron asosiasi berfungsi menghubungkan neuron sensorik dengan neuron motorik. Neuron asosiasi terdapat dalam otak dan sumsum tulang belakang.</p>\n', 1),
(56, '<h2>2. Susunan Sistem Saraf Manusia</h2>\n\n<p>Sistem saraf manusia terdiri atas sistem saraf pusat dan sistem saraf tepi.<br />\n<strong>a. Sistem Saraf Pusat</strong><br />\nSistem saraf pusat terdiri atas otak dan sumsum tulang belakang.<br />\n<em><strong>1) Otak</strong></em><br />\nOtak merupakan pusat saraf utama karena berperan dalam pengaturan seluruh aktivitas tubuh. Bagian luar otak (korteks) berwarna abu-abu. Bagian ini mengandung banyak badan sel saraf yang disebut substansi grissea. Bagian dalam otak (medula) berwarna putih. Bagian ini mengandung banyak neurit dan dendrit yang disebut substansi alba. Otak terdiri atas enam bagian, yaitu otak besar (serebrum), otak depan (diensefalon), otak tengah (mesensefalon), otak kecil (serebelum), jembatan varol (Pons varolli), dan sumsum lanjutan (medula oblongata).</p>\n\n<p><img alt=\"\" src=\"../assets/images/materi/bagian_otak.png\" style=\"height:250px; width:402px\" /><img alt=\"\" src=\"../assets/images/materi/otak_besar.png\" style=\"height:250px; width:300px\" /><br />\n<em>a) Otak besar (serebrum)</em><br />\nSerebrum terdiri atas dua belahan. Setiap belahan terdiri atas empat lobus, yaitu lobus frontalis (pengendali gerakan otot rangka dan tempat terjadinya proses intelektual), lobus oksipitalis (pusat penglihatan), lobus temporalis (pusat pendengaran, penciuman, dan pengecap), serta lobus parietalis (pengatur perubahan pada kulit dan otot).<br />\nOtak besar berfungsi dalam pengaturan semua aktivitas yang berkaitan dengan kepandaian (intelegensi), ingatan (memori), kesadaran, dan pertimbangan. Otak besar merupakan pusat pengaturan semua kegiatan/gerakan yang kita sadari.<br />\n<em>b) Otak depan (diensefalon)</em><br />\nOtak depan terdiri atas talamus dan hipotalamus. Talamus berfungsi sebagai pusat pengaturan perasaan dan gerakan. Hipotalamus berperan dalam pengaturan suhu tubuh, rasa lapar, dan haus.<br />\n<em>c) Otak tengah (mesensefalon)</em><br />\nOtak tengah berfungsi mengatur gerak refleks mata. Selain itu, otak tengah juga berfungsi mengontrol pendengaran.<br />\n<em>d) Otak kecil (serebelum)</em><br />\nSerebelum terletak tepat di bawah bagian posterior otak besar. Serebelum merupakan pusat keseimbangan gerak, koordinasi gerak otot, serta posisi tubuh.<br />\n<em>e) Jembatan Varol (pons varolli)</em><br />\nPons varolli berfungsi menghantarkan impuls otot-otot bagian kiri dan kanan tubuh. Pons varolli juga berfungsi menghubungkan otak besar dengan otak kecil.<br />\n<em>f) Sumsum lanjutan (medula oblongata)</em><br />\nMedula oblongata merupakan lanjutan otak yang menghubungkan otak dengan sumsum tulang belakang. Medula oblongata berfungsi mengatur denyut jantung, pelebaran dan penyempitan pembuluh darah, gerak alat pencernaan, sekresi kelenjar, bersin, bersendawa, batuk, muntah, serta gerak alat pernapasan.<br />\n<em><strong>2) Sumsum Tulang Belakang (Medula Spinalis)</strong></em><br />\nBagian luar (tepi) medula spinalis berwarna putih (substansi alba) dan bagian dalamnya berwarna abu-abu (substansi grissea). Medula spinalis merupakan lanjutan medula oblongata dan terdapat dalam rongga tulang belakang. Medula spinalis berfungsi menghantarkan impuls dari dan ke otak serta mengendalikan gerak refleks.<br />\n<strong>b. Sistem Saraf Tepi</strong><br />\nSaraf tepi menghubungkan semua bagian tubuh dengan pusat saraf (otak dan sumsum tulang belakang). Berdasarkan tempatnya, sistem saraf tepi terdiri atas saraf kranial dan saraf spinal. Saraf kranial berasal dari otak dan berjumlah 12 pasang. Saraf spinal berasal dari sumsum tulang belakang. Cabang-cabang<br />\nsaraf spinal mempersatukan seluruh otot rangka dan kulit. Saraf spinal berjumlah 31 pasang.<br />\nBerdasarkan fungsinya, sistem saraf tepi terdiri atas sistem saraf somatic (saraf sadar) dan sistem saraf otonom (saraf tidak sadar).<br />\n<strong>1) Sistem Saraf Somatik</strong><br />\nSaraf somatik berfungsi mengatur gerakan yang disadari, contoh gerakan kaki melangkah menuju ke suatu tempat. Berdasarkan arah impuls yang dibawanya, sistem saraf tepi dibedakan menjadi sistem saraf aferen dan eferen.<br />\n<strong>2) Sistem Saraf Otonom</strong><br />\nSistem saraf otonom mengendalikan gerak organ-organ yang bekerja secara otomatis, contohnya otot polos, jantung, lambung, usus, pembuluh darah, dan kelenjar. Sistem saraf otonom terdiri atas saraf simpatetik dan saraf parasimpatetik. Kedua macam saraf itu bekerja saling berlawanan. Fungsi kedua macam saraf sebagai berikut.<br />\nJenis Saraf Otonom dan Fungsinya<br />\n&nbsp;</p>\n\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:800px\">\n	<tbody>\n		<tr>\n			<td><strong>No</strong></td>\n			<td><strong>Parasimpatetik</strong></td>\n			<td><strong>Simpatetik</strong></td>\n		</tr>\n		<tr>\n			<td>1.<br />\n			2.<br />\n			3.<br />\n			4.<br />\n			5.<br />\n			6.<br />\n			7.<br />\n			8.<br />\n			9.</td>\n			<td>Mengecilkan pupil<br />\n			Memacu sekresi saliva<br />\n			Mengerutkan bronkus<br />\n			Memperlambat detak jantung<br />\n			Meningkatkan sekresi asam lambung<br />\n			Memacu kerja kantong empedu<br />\n			Mengerutkan kandung kemih<br />\n			Memacu ereksi pada alat kelamin<br />\n			&nbsp;</td>\n			<td>Membesarkan pupil<br />\n			Menghambat sekresi saliva<br />\n			Membesarkan bronkus<br />\n			Mempercepat detak jantung<br />\n			Menghambat sekresi asam lambung<br />\n			Memacu pelepasan glukosa oleh hati<br />\n			Menghambat kontraksi kandung kemih<br />\n			Memacu ejakulasi<br />\n			Menyekresi adrenalin</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n', 2),
(57, '<h2>3. Terjadinya Gerak Biasa dan Gerak Refleks</h2>\n\n<p>&nbsp; &nbsp; Tubuh kita dapat melakukan gerakan karena adanya hantaran impuls oleh sel-sel saraf. Gerak dapat dibedakan menjadi dua macam, yaitu gerak biasa dan gerak refleks.<br />\n<strong>a. Gerak Biasa</strong><br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gerak biasa merupakan gerak yang disadari, contohnya melangkahkan kaki menuju suatu tempat, berlari, dan menyapu. Urutan perjalanan impuls pada gerak biasa secara skematis sebagai berikut.<br />\nRangsang &rarr;reseptor &rarr;neuron sensorik &rarr;otak &rarr;neuron motorik &rarr;efektor<br />\n<strong>b. Gerak Refleks</strong><br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gerak refleks merupakan gerak yang tidak disadari. Hantaran impuls pada gerak refleks mirip seperti pada gerak biasa. Bedanya, impuls pada gerak refleks tidak melalui pengolahan oleh pusat saraf. Neuron di otak hanya berperan sebagai konektor saja. Urutan perjalanan impuls pada gerak refleks secara skematis sebagai berikut.<br />\nRangsang &rarr;reseptor &rarr;neuron sensorik &rarr;konektor (otak/sumsum tulang belakang) &rarr;neuron motorik &rarr;efektor</p>\n', 3),
(58, '<h2>4. Prinsip Penghantaran Impuls</h2>\n\n<p>Ada dua prinsip penghantaran impuls, yaitu melalui neuron dan melalui sinapsis.</p>\n\n<ul>\n	<li><strong>Penghantaran Impuls Melalui Neuron</strong></li>\n</ul>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"\" src=\"../assets/images/materi/penghantaran_impuls_darineuron.png\" style=\"float:right; height:265px; width:443px\" /> &nbsp;Penghantaran impuls dengan cara ini terjadi karena adanya perbedaan muatan listrik antara bagian luar dan bagian dalam membran serabut saraf. Ketika istirahat, bagian luar membran serabut saraf bermuatan listrik positif. Sementara itu, bagian dalam membrane serabut saraf bermuatan listrik negatif. Keadaan tersebut dinamakan polarisasi.<br />\nKetika menerima rangsang berupa impuls, permukaan luar membran serabut saraf bermuatan negatif dan permukaan dalamnya bermuatan positif. Keadaan ini disebut depolarisasi. Selanjutnya akan terjadi aliran listrik dari daerah bermuatan listrik negatif ke daerah bermuatan listrik positif. Impuls kemudian diteruskan ke neuron dan akhirnya menuju sumsum tulang belakang dan otak. Pesan kemudian diolah oleh otak dan sumsum tulang belakang sehingga timbul tanggapan atau respons. Respons diubah menjadi impuls dan diteruskan ke neuron motorik hingga ke efektor.</p>\n\n<ul>\n	<li><strong>Penghantaran Impuls Melalui Sinapsis</strong></li>\n</ul>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"\" src=\"../assets/images/materi/penghantaran_impuls_darisinapsis.png\" style=\"float:right; height:242px; width:443px\" />Jika impuls telah sampai di membran prasinapsis, vesikel-vesikel akan menuju membrane prasinapsis karena pengaruh Ca2+ yang masuk ke bonggol sinapsis. Selanjutnya, vesikel-vesikel tersebut akan melepaskan zat <strong>neurotransmiter</strong>. Zat ini berfungsi menghantarkan impuls ke ujung dendrit neuron berikutnya. Neurotransmiter menerima impuls dan akan berdifusi melewati celah sinapsis. Selanjutnya,<br />\nneurotransmiter akan berikatan dengan protein khusus atau reseptor yang berada di membran pascasinapsis. Ikatan antara neurotransmiter dengan reseptor ini mengakibatkan impuls dapat diteruskan ke saraf lainnya.</p>\n', 4),
(59, '<p>&nbsp; &nbsp; &nbsp; &nbsp; Di dalam tubuh, pengaturan kadar gula darah, tekanan darah, dan kerja jantung terjadi secara otomatis. Pengaturan ini dilakukan oleh kerja sama antara sistem saraf dan sistem endokrin. Namun, antara sistem saraf dan sistem endokrin memiliki beberapa perbedaan.<br />\n&nbsp; &nbsp; &nbsp; &nbsp; Sistem endokrin disebut juga sistem kelenjar buntu, yaitu kelenjar yang tidak mempunyai saluran khusus untuk mengeluarkan sekretnya. Sekret dari kelenjar endokrin dinamakan hormon (Isnaeni, 2006).<br />\nHormon berfungsi untuk mengatur homeostasis, pertumbuhan, reproduksi, metabolisme, dan tingkah laku. Hipofisis merupakan salah satu kelenjar endokrin. Hipofisis sering disebut master of glands karena memengaruhi aktivitas kelenjar yang lain. Macam-macam hormon yang dihasilkan oleh kelenjar hipofisis beserta fungsinya.</p>\n\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:800px\">\n	<tbody>\n		<tr>\n			<td><strong>Kelenjar</strong></td>\n			<td><strong>Letak</strong></td>\n			<td><strong>Hormon</strong></td>\n			<td><strong>Fungsi</strong></td>\n		</tr>\n		<tr>\n			<td>\n			<p>Hipofisis / pituitary<br />\n			<br />\n			a. Lobus anterior<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			b.&nbsp;Intermedia<br />\n			<br />\n			<br />\n			c. Lobus posterior<br />\n			<br />\n			&nbsp;</p>\n			</td>\n			<td>Dasar Otak Besar<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			&nbsp;</td>\n			<td>\n			<ul>\n				<li>ACTH (Adenocorticotropic Hormone)</li>\n				<li>GH (Growth Hormone )/hormon somatotropin</li>\n				<li>FSH (Follicle Stimulating Hormone)</li>\n				<li>LH (Luteinizing Hormone)</li>\n				<li>ICSH (Interstitial Cell Stimulating Hormone)</li>\n				<li>Prolaktin</li>\n				<li>TSH (Thyroid Stimulating Hormone)<br />\n				<br />\n				<br />\n				&nbsp;</li>\n				<li>MSH (Melanocyte Stimulating Hormone)<br />\n				&nbsp;</li>\n				<li>Oksitosin</li>\n				<li>ADH (Antidiuretic Hormone)/vasopressin<br />\n				&nbsp;</li>\n			</ul>\n			</td>\n			<td>\n			<ul>\n				<li>Merangsang kelenjar adrenal untuk menyekresi glukokortikoid (hormon yang berperan dalam metabolisme karbohidrat)</li>\n				<li>Merangsang sintesis protein dan metabolisme lemak serta merangsang pertumbuhan tulang dan otot</li>\n				<li>Merangsang spermatogenesis, merangsang pematangan folikel dalam ovarium, dan menghasilkan hormone estrogen</li>\n				<li>Menstimulasi pembentukan hormon progesterone</li>\n				<li>Menstimulasi produksi testosterone</li>\n				<li>Menstimulasi sekresi air susu</li>\n				<li>Merangsang kelenjar tiroid dan menyekresi hormon tiroksin<br />\n				&nbsp;</li>\n				<li>Memengaruhi pembentukan zat warna kulit (melanin)<br />\n				&nbsp;</li>\n				<li>Merangsang kontraksi otot uterus saat proses kelahiran</li>\n				<li>Mencegah pembentukan urine dalam jumlah banyak</li>\n			</ul>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n', 5),
(60, '<p>Selain sistem saraf dan sistem endokrin (hormon), bagian dari sistem koordinasi yang lain adalah sistem indra. Sistem indra berfungsi menerima rangsang dari lingkungan sekitarnya.<br />\nAlat-alat penyusun sistem indra manusia terdiri atas mata, telinga, kulit, hidung, dan lidah.</p>\n\n<h2>1. Mata</h2>\n\n<p>Pada mata terdapat sel-sel saraf penerima rangsang cahaya (fotoreseptor). Oleh karena itu, mata merupakan indra penglihat. Mata tersusun dari alat tambahan mata, bola mata, otot bola mata, dan saraf optik.<br />\n<strong>a. Alat Tambahan Mata</strong><br />\nAlat tambahan mata meliputi alis mata, kelopak mata, bulu mata, dan aparatus lakrimalis.<br />\n<strong>b. Otot Bola Mata</strong><br />\nOtot bola mata tersusun dari tiga pasang otot lurik. Otot bola mata berguna untuk menggerakkan bola mata.<br />\n<strong>c. Bola Mata</strong><br />\nBola mata dilapisi oleh tiga lapisan dinding berikut.<br />\n1) Lapisan luar terdiri atas sklera dan kornea<br />\n<img alt=\"Gambar 9.7 Bola mata dan bagian-bagiannya\" src=\"../assets/images/materi/mata.png\" style=\"float:right; height:253px; width:432px\" />Sklera berwarna putih dan tidak tembus cahaya. Kornea mengandung banyak serabut saraf, tidak terdapat pembuluh darah, dan tembus cahaya. Kornea berfungsi meneruskan cahaya ke lensa mata. Kornea dilindungi oleh selaput pelindung konjungtiva.<br />\n2) Lapisan tengah terdiri atas koroidea dan iris atau selaput pelangi<br />\nKoroidea mengandung banyak pembuluh darah dan berfungsi memberi nutrisi pada retina. Bagian depan koroidea dan di belakang kornea terdapat iris. Iris mengandung pigmen warna sehingga mengakibatkan perbedaan warna pada mata. Lubang bulat di tengah iris disebut pupil. Pupil merupakan jalan masuknya cahaya. Pupil akan mengecil jika cahaya terang. Sebaliknya, pupil membesar jika cahaya redup.<br />\n3) Lapisan dalam<br />\nPada lapisan dalam terdapat retina. Pada retina inilah terdapat fotoreseptor. Ada dua macam fotoreseptor, yaitu sel batang dan sel kerucut. Sel batang mengandung rodopsin dan diperlukan untuk melihat dalam suasana redup. Sel kerucut mengandung pigmen iodopsin yang mampu menerima rangsang warna dan sinar terang. Pada lapisan dalam juga terdapat bintik kuning dan bintik buta. Bintik kuning (fovea sentralis) merupakan bagian retina yang mengandung banyak fotoreseptor berupa sel kerucut. Bintik buta, yaitu bagian mata tempat serabut saraf yang berasal dari retina meninggalkan bola mata menuju ke otak. Dibagian bintik buta tidak ada sel sensorik.<br />\n<strong>d. Saraf Optik</strong><br />\nSaraf optik merupakan bagian mata yang menjalarkan impuls saraf dari retina menuju otak. Setelah sampai di otak, impuls saraf tersebut kemudian diinterpretasikan oleh otak sehingga benda dapat dilihat.<br />\nRuangan di antara lensa mata dan retina diisi oleh vitreous humour yang berfungsi mempertahankan bentuk bola mata agar tetap bundar. Sementara itu, ruangan di antara lensa, iris, dan kornea diisi oleh aqueous humour. Aqueous humour berfungsi memberi makan kornea dan lensa. Adapun mekanisme kerja indra penglihat sebagai berikut.<br />\nCahaya &rarr;aqueous humour &rarr;pupil &rarr;lensa &rarr;vitreous humour &rarr;retina &rarr;saraf optik &rarr;otak.<br />\nSuatu benda dapat terlihat jelas jika bayangan benda jatuh tepat di bintik kuning. Namun, benda tidak dapat terlihat jika bayangan benda jatuh di bintik buta.</p>\n', 6),
(61, '<h2>2. Telinga</h2>\n\n<p>Pada telingga terdapat sel-sel saraf penerima rangsang suara (fonoreseptor). Telinga tersusun dari telinga bagian luar, telinga bagian tengah, dan telinga bagian dalam.<br />\n<strong>a. Telinga Bagian Luar</strong><br />\n<img alt=\"\" src=\"../assets/images/materi/telinga.png\" style=\"float:right; height:451px; width:433px\" />Pada bagian luar terdapat daun telinga dan saluran telinga luar. Telinga bagian luar berfungsi menangkap getaran bunyi.<br />\n<strong>b. Telinga Bagian Tengah</strong><br />\nPada bagian tengah terdapat tulang-tulang pendengaran dan saluran eustachius. Tulang-tulang pendengaran terdiri atas tulang martil (maleus), landasan (inkus), dan sanggurdi (stapes). Saluran<br />\neustachius merupakan penghubung telinga tengah dengan rongga faring. Eustachius berfungsi menyamakan tekanan telinga luar dengan telinga tengah.<br />\n<strong>c. Telinga Bagian Dalam</strong><br />\nTelinga bagian dalam terdiri atas beberapa bagian berikut.<br />\n1) Alat keseimbangan yang terdiri atas kanalis semisirkularis, sakulus, dan utrikulus. Bagian-bagian tersebut berhubungan dengan saraf otak VIII.<br />\n2) Tingkap jorong merupakan membran yang terdapat pada pangkal koklea. Tingkap jorong berfungsi menyalurkan getaran ke koklea.<br />\n3) Koklea/rumah siput, saluran koklea berisi cairan limfe dan terdapat ujung saraf pendengaran yang menghubungkan koklea dengan otak.<br />\nMekanisme kerja indra pendengar sebagai berikut.<br />\nGetaran suara &rarr;daun telinga &rarr;saluran telinga &rarr;gendang telinga (membran timpani) &rarr;tiga tulang pendengaran &rarr;rumah siput (koklea) &rarr;sel-sel rambut dalam organ korti &rarr;sel saraf auditori &rarr;ï€ otak.</p>\n', 7),
(62, '<h2><strong>3. Kulit</strong></h2>\n\n<p><img alt=\"\" src=\"../assets/images/materi/kulit.png\" style=\"float:right; height:416px; width:433px\" />Pada kulit terdapat reseptor yang peka terhadap rangsang fisik (mekanoreseptor).</p>\n', 8),
(63, '<h2>4. Hidung</h2>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Serabut-serabut saraf penciuman terdapat pada bagian atas selaput lendir hidung. Serabut-serabut olfaktori berfungsi mendeteksi rangsang zat kimia dalam bentuk gas di udara (kemoreseptor). Mekanisme kerja indra penciuman sebagai berikut.<br />\n&nbsp; &nbsp; &nbsp; &nbsp; Rangsang (bau) &rarr;lubang hidung &rarr;epitelium olfaktori &rarr;mukosa olfaktori &rarr;saraf olfaktori &rarr;talamus &rarr;hipotalamus &rarr;otak.</p>\n', 9),
(64, '<h2>5. Lidah</h2>\n\n<p><img alt=\"\" src=\"../assets/images/materi/lidah.png\" style=\"float:right; height:265px; width:432px\" />&nbsp; &nbsp; &nbsp; &nbsp; Lidah merupakan indra pengecap yang dapat merasakan pahit, asam, asin, dan manis. Setiap bagian lidah peka terhadap rasa tertentu.<br />\n&nbsp; &nbsp; &nbsp; &nbsp; Lidah mempunyai reseptor yang peka terhadap zat kimia berbentuk cair (kemoreseptor). Permukaan lidah ditutupi oleh papila yang peka terhadap rasa. Lidah berfungsi sebagai alat berbicara, membantu mengatur letak makanan ketika dikunyah, membantu dalam proses menelan makanan, serta sebagai indra pengecap. Mekanisme kerja indra pengecap sebagai berikut.<br />\nMakanan/larutan berasa &rarr;papila lidah &rarr;saraf gustatori &rarr;medula oblongata &rarr;talamus &rarr;otak.</p>\n', 10),
(65, '<p>Sistem koordinasi terdiri atas sistem saraf, sistem endokrin, dan sistem indra yang saling bekerja sama dalam mengatur kegiatan tubuh. Oleh karena itu, apabila salah satunya mengalami gangguan ataupun kelainan akan memengaruhi kerja sistem koordinasi.<br />\n1. Gangguan dan Kelainan pada Sistem Koordinasi<br />\nManusia<br />\na. Gangguan dan Kelainan pada Sistem<br />\nSaraf Manusia<br />\nSistem saraf dapat mengalami gangguan dan kelainan. Gangguan dan kelainan tersebut dapat mengakibatkan penyakit pada sistem saraf yaitu meningitis, hidrosefalus, neuritis, parkinson, gegar otak, epilepsi, alzheimer, afasia, dan ataksia.<br />\nb. Gangguan dan Kelainan pada Sistem Endokrin (Hormon) Manusia<br />\nTubuh kita kadang kala mengalami gangguan sekresi hormon. Beberapa faktor yang memengaruhi sekresi hormon, antara lain stres, infeksi, penuaan, genetik, dan lingkungan. Gangguan sekresi hormon dapat berupa sekresi hormon yang berlebihan (hipersekresi) atau kekurangan sekresi hormon (hiposekresi). Hipersekresi dan hiposekresi hormon dapat menimbulkan kelainan seperti berikut.<br />\nKelainan Akibat Gangguan Sekresi Hormon dan Gejala yang Dialami Penderita</p>\n\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:800px\">\n	<thead>\n		<tr>\n			<th scope=\"col\">No</th>\n			<th scope=\"col\">Kelainan Sekresi Hormon</th>\n			<th scope=\"col\">Gejala yang Dialami Penderita</th>\n		</tr>\n	</thead>\n	<tbody>\n		<tr>\n			<td>1</td>\n			<td>\n			<p>Hiposekresi somatotropin sebelum pubertas dapat mengakibatkan dwarfisme<br />\n			Hipersekresi somatotropin<br />\n			a. Pada anak: gigantisme<br />\n			b. Pada dewasa: akromegali</p>\n			</td>\n			<td>\n			<p>Anak tumbuh kerdil<br />\n			<br />\n			Pertumbuhan raksasa<br />\n			Pertumbuhan tulang tidak normal masa dewasa misal ujung tulang jari dan tulang dagu sehingga bentuk dan ukuran jari dan dagu menjadi abnormal, yaitu lebih besar dan panjang dibanding ukuran normal</p>\n			</td>\n		</tr>\n		<tr>\n			<td>2</td>\n			<td>Hiposekresi ADH (<em>Anti Diuretic Hormone</em>) dapat mengakibatkan diabetes insipidus</td>\n			<td>Produksi urine berlebihan</td>\n		</tr>\n		<tr>\n			<td>3</td>\n			<td>Hiposekresi tiroksin<br />\n			a. Pada anak : kretinisme<br />\n			b. Pada dewasa: miksedema<br />\n			Hipersekresi tiroksin mengakibatkan penyakit basedowi</td>\n			<td>Terjadi hambatan pertumbuhan fisik dan mental sehingga menjadi kerdil<br />\n			Terjadi pembengkakan di bawah kulit berisi cairan dan berat badan bertambah<br />\n			Metabolisme dalam tubuh meningkat, banyak keringat, suhu tubuh cenderung tinggi, dan tangan gemetar</td>\n		</tr>\n		<tr>\n			<td>4</td>\n			<td>\n			<p>Hiposekresi parathormon</p>\n\n			<p>Hipersekresi parathormon</p>\n			</td>\n			<td>Kekurangan kalsum dalam darah dan terjadi kejang pada otot tangan dan kaki<br />\n			Kalsium keluar dari darah dan tulang menuju serum darah sehingga tulang menjadi keropos dan dapat mengakibatkan gagal ginjal</td>\n		</tr>\n		<tr>\n			<td>5</td>\n			<td>Hiposekresi glukokortikoid dan meniralkortikoid mengakibatkan penyakit adison<br />\n			Hipersekresi glukokortikoid dan mineralokortikoid mengakibatkan&nbsp;<em>coushing syndrome</em></td>\n			<td>\n			<p>Hiperpigmentasi, kelelahan, dan nafsu makan turun</p>\n\n			<p>Wajah bulat, tumbuh benjolan pada tulang punggung, hiperpigmentasi, dan perut gelantung</p>\n			</td>\n		</tr>\n		<tr>\n			<td>6</td>\n			<td>Hiposekresi insulin mengakibatkan penyakit diabetes melitus</td>\n			<td>Kadar gula darah tinggi, berat badan turun, mudah merasa haus, serta kulit dan mulut terasa kering</td>\n		</tr>\n	</tbody>\n</table>\n\n<p><br />\n<strong>c. Gangguan dan Kelainan pada Sistem Indra Manusia</strong><br />\nSistem indra yang tersusun dari mata, telinga, kulit, hidung, dan lidah dapat mengalami gangguan dan kelainan. Gangguan dan kelainan pada sistem indra manusi sebagai berikut</p>\n\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:800px\">\n	<thead>\n		<tr>\n			<th scope=\"col\">No</th>\n			<th scope=\"col\">Alat Indra</th>\n			<th scope=\"col\">Gangguan dan Kelainan</th>\n		</tr>\n	</thead>\n	<tbody>\n		<tr>\n			<td>1<br />\n			2<br />\n			3<br />\n			4<br />\n			5</td>\n			<td>Mata<br />\n			Telinga<br />\n			Kulit<br />\n			Hidung<br />\n			Lidah</td>\n			<td>Miopi, hipermetropi, astigmatisme, presbiopi, juling, buta warna, rabun senja, dan katarak<br />\n			Tuli konduktif dan tuli saraf<br />\n			jerawat, dermatitis, panu, kudis, dan eksim<br />\n			Influenza, polip, dan sinusitis<br />\n			Sariawan, kanker lidah, glossoptosis, glossopyrosis, dan atrophic glossitis</td>\n		</tr>\n	</tbody>\n</table>\n', 11),
(66, '<h2>2. Pengaruh Psikotropika terhadap Sistem Saraf</h2>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Beberapa obat-obatan tertentu bermanfaat dalam bidang kesehatan dengan cara kerja memengaruhi sistem saraf misalnya obat penghilang rasa sakit. Akan tetapi, obat-obatan tersebut sering disalahgunakan oleh oknum-oknum tertentu, sehingga menimbulkan gangguan pada sistem saraf. Salah satu obat yang sering disalahgunakan adalah psikotropika.<br />\nMenurut UU No. 5 tahun 1997, psikotropika merupakan zat atau obat, baik alamiah maupun sintetik yang berkhasiat psikoaktif melalui pengaruh selektif menurut susunan saraf pusat yang menyebabkan perubahan khas pada aktivitas mental dan perilaku. Berdasarkan pengaruhnya, obat-obatan tersebut dapat dikelompokkan menjadi beberapa golongan berikut.<br />\na. Sedatif<br />\n&nbsp; &nbsp; &nbsp; &nbsp; Obat-obatan golongan sedatif dapat memberikan efek penenang dengan menurunkan aktivitas otak. Contohnya valium dan barbiturate.<br />\nb. Stimulan<br />\n&nbsp; &nbsp; &nbsp; &nbsp; Obat-obatan golongan stimulan dapat menimbulkan efek menjadi lebih aktif, tidak mengantuk, dan memberikan kondisi prima dengan mengaktifkan susunan saraf pusat dan meningkatkan kerja otak. Contohnya amphetamin dan kokain.<br />\nc. Halusinogen<br />\n&nbsp; &nbsp; &nbsp; &nbsp; Obat-obatan golongan halusinogen dapat memberikan efek halusinasi pada penggunanya. Golongan ini merupakan golongan psikotropika yang paling berbahaya karena menimbulkan efek yang sama seperti narkotika. Contohnya mariyuana, ekstasi, heroin, kokain, dan ganja.<br />\nd. Painkiller<br />\n&nbsp; &nbsp; &nbsp; &nbsp; Golongan ini dapat menghilangkan rasa nyeri dengan cara menekan bagian otak yang mengatur rasa nyeri. Penggunaan golongan ini dapat mengakibatkan ketergantungan. Contohnya opium, morfin, dan kokain.</p>\n\n<p><br />\nPenggunaan obat-obatan psikotropika melebihi dosis dan tanpa pengawasan dokter dapat berakibat buruk terhadap sistem koordinasi. Beberapa gangguan yang diakibatkan oleh psikotropika terhadap sistem saraf sebagai berikut.<br />\na. Hilangnya koordinasi tubuh. Hal tersebut terjadi karena dopamin yang berfungsi sebagai neurotransmiter dalam tubuh berkurang.<br />\nb. Pengaturan saraf terhadap kendali otot gerak dan denyut jantung melemah. Mengingat rawannya penyalahgunaan psikotropika, maka pemerintah melakukan pengawasan terhadap peredaran obat-obat psikotropika seperti tercantum pada UU No. 5 tahun 1997 Bab IV Pasal 9&ndash;13.</p>\n', 12);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `id` int(10) NOT NULL,
  `module_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_topic_id` int(10) NOT NULL,
  `number` int(3) NOT NULL,
  `module_level` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `module_desc`, `sub_topic_id`, `number`, `module_level`) VALUES
(1, 'Sel Saraf', 21, 1, '3'),
(2, 'Susunan Sistem Saraf Manusia', 21, 2, '3'),
(3, 'Terjadinya Gerak Biasa dan Gerak Refleks', 21, 3, '2'),
(4, 'Prinsip Penghantaran Impuls', 21, 4, '2'),
(5, 'Kelenjar Hipofisis', 22, 5, '3'),
(6, 'Mata', 23, 6, '2'),
(7, 'Telinga', 23, 7, '2'),
(8, 'Kulit', 23, 8, '1'),
(9, 'Hidung', 23, 9, '1'),
(10, 'Lidah', 23, 10, '1'),
(11, 'Gangguan dan Kelainan pada Sistem Koordinasi Manusia', 24, 11, '2'),
(12, 'Pengaruh Psikotropika terhadap Sistem Koordinasi Manusia', 24, 12, '2');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) NOT NULL,
  `module_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_topic_id` int(10) NOT NULL,
  `number` int(3) NOT NULL,
  `module_level` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_desc`, `sub_topic_id`, `number`, `module_level`) VALUES
(1, 'Konsep Sel', 1, 1, '2'),
(2, 'Komponen Kimiawi Penyusun Sel', 1, 2, '2'),
(3, 'Struktur Sel Prokariotik dan Eukariotik', 2, 3, '2'),
(4, 'Perbedaan Sel Hewan dengan Sel Tumbuhan', 2, 4, '1'),
(5, 'Mekanisme Transpor Melalui Membran', 3, 5, '2'),
(6, 'Sintesis Protein', 3, 6, '3'),
(7, 'Reproduksi Sel', 3, 7, '2'),
(14, 'Jaringan Meristematik', 4, 1, '2'),
(15, 'Jaringan Dewasa', 4, 2, '2'),
(16, 'Jaringan Penyusun Akar', 5, 3, '2'),
(17, 'Jaringan Penyusun Batang', 5, 4, '2'),
(18, 'Jaringan Penyusun Daun', 5, 5, '2'),
(19, 'Sifat Autonom dan Sifat Totipotensi', 6, 6, '2'),
(20, 'Jaringan Epitelium', 7, 1, '2'),
(21, 'Jaringan Pengikat', 7, 2, '2'),
(22, 'Jaringan Otot', 7, 3, '2'),
(23, 'Jaringan Saraf', 7, 4, '2'),
(24, 'Stem Cell', 8, 5, '2'),
(25, 'Transplantasi Organ', 8, 6, '2'),
(26, 'Fungsi Rangka', 9, 1, '1'),
(27, 'Jenis Tulang', 9, 2, '1'),
(28, 'Bentuk Tulang', 9, 3, '1'),
(29, 'Proses Pembentukan Tulang', 9, 4, '2'),
(30, 'Susunan Tulang dalam Tubuh', 9, 5, '1'),
(31, 'Hubungan Antartulang (Persendian/Artikulasi)', 9, 6, '2'),
(32, 'Macam-Macam Otot', 9, 7, '2'),
(33, 'Mekanisme Gerak Otot', 9, 8, '2'),
(34, 'Sifat Gerak Otot dan Jenis-Jenis Gerak', 9, 9, '2'),
(35, 'Transplantasi Sumsum Tulang', 10, 10, '2'),
(36, 'Penggantian Sendi', 10, 11, '2'),
(37, 'Penyembuhan Patah Tulang', 10, 12, '2'),
(38, 'Komponen Darah', 11, 1, '2'),
(39, 'Golongan Darah', 11, 2, '1'),
(40, 'Pembekuan Darah', 11, 3, '1'),
(41, 'Alat-Alat Peredaran Darah', 12, 4, '2'),
(42, 'Mekanisme Peredaran Darah', 12, 5, '2'),
(43, 'Kelainan dan Gangguan pada Darah, Jantung, dan Pembuluh Darah', 13, 6, '3'),
(44, 'Peranan Zat Makanan bagi Tubuh', 14, 1, '1'),
(45, 'Menu Makanan Bergizi Seimbang Berdasarkan Kebutuhan Energi', 14, 2, '1'),
(46, 'Sistem Pencernaan Manusia', 15, 3, '1'),
(47, 'Sistem Pencernaan Hewan Memamah Biak (Ruminansia)', 15, 4, '1'),
(48, 'Alat-Alat Pernapasan Manusia', 16, 1, '2'),
(49, 'Mekanisme Pernapasan Manusia', 16, 2, '2'),
(50, 'Volume Udara Pernapasan', 16, 3, '2'),
(51, 'Faktor-Faktor yang Memengaruhi Volume Pernapasan', 16, 4, '1'),
(52, 'Sistem Pernapasan pada Serangga', 17, 5, '2'),
(53, 'Sistem Pernapasan pada Burung', 17, 6, '2'),
(54, 'Pola Hidup Sehat', 18, 7, '1'),
(55, 'Ginjal', 19, 1, '3'),
(56, 'Hati', 19, 2, '3'),
(57, 'Kulit', 19, 3, '2'),
(58, 'Paru-Paru', 19, 4, '3'),
(59, 'Gangguan dan Penyakit pada Ginjal, Hati, Kulit', 20, 5, '2'),
(60, 'Sel Saraf', 21, 1, '3'),
(61, 'Susunan Sistem Saraf Manusia', 21, 2, '3'),
(62, 'Terjadinya Gerak Biasa dan Gerak Refleks', 21, 3, '2'),
(63, 'Prinsip Penghantaran Impuls', 21, 4, '2'),
(64, 'Kelenjar Hipofisis', 22, 5, '3'),
(65, 'Mata', 23, 6, '2'),
(66, 'Telinga', 23, 7, '2'),
(67, 'Kulit', 23, 8, '1'),
(68, 'Hidung', 23, 9, '1'),
(69, 'Lidah', 23, 10, '1'),
(70, 'Gangguan dan Kelainan pada Sistem Koordinasi Manusia', 24, 11, '2'),
(71, 'Pengaruh Psikotropika terhadap Sistem Koordinasi Manusia', 24, 12, '2'),
(72, 'Organ Reproduksi Pria', 25, 1, '2'),
(73, 'Organ Reproduksi Wanita', 25, 2, '2'),
(74, 'Organ Reproduksi Pria & Wanita', 26, 3, '2'),
(75, 'Penyakit dan Gangguan yang Berhubungan dengan Sistem Reproduksi', 27, 4, '3'),
(76, 'Jenis-jenis Pertahanan Tubuh', 28, 1, '2'),
(77, 'Respon Kekebalan Terhadap Antigen', 28, 2, '2'),
(78, 'Jenis-jenis Kekebalan Tubuh', 29, 3, '2'),
(79, 'Gangguan Pada Sistem Kekebalan Tubuh', 29, 4, '2');

-- --------------------------------------------------------

--
-- Table structure for table `module_learned`
--

DROP TABLE IF EXISTS `module_learned`;
CREATE TABLE `module_learned` (
  `id` int(10) NOT NULL,
  `module_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_learned`
--

INSERT INTO `module_learned` (`id`, `module_id`, `student_id`) VALUES
(1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_question`
--

DROP TABLE IF EXISTS `module_question`;
CREATE TABLE `module_question` (
  `id` int(10) NOT NULL,
  `module_id` int(10) NOT NULL,
  `question` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_question`
--

INSERT INTO `module_question` (`id`, `module_id`, `question`, `answer`) VALUES
(99, 1, 'Sel saraf (neuron) yang membentuk jaringan saraf mempunyai fungsi ...', 1),
(100, 1, 'Neurit bertugas sebagai ...', 5),
(101, 1, 'Tugas dendrit adalah ...', 12),
(102, 1, 'Neurit dan dendrtit bercabang-cabang, tempat pertemuan kedua ujung itu disebut ...', 15),
(103, 1, 'Sel saraf (neuron) terdiri atas ...', 17),
(104, 1, 'Bila tubuh menerima rangsang dari luar, maka rangsang tersebut diterima oleh urat saraf ... menuju ke otak', 22),
(105, 1, 'Saraf berdasarkan fungsinya dibedakan menjadi sensoris, motoris dan konektor. Berikut ini merupakan perntaraan yang benar adalah …', 25),
(106, 1, 'Saraf kita berfungsi sebagai ...', 29),
(107, 1, 'Burhan mengalami kecelakaan lalu lintas saat mengendarai motor. Saat dibawa ke rumah sakit, dokter yang merawat Burhan menjelaskan bahwa Burhan mengalami kerusakan otak yang mengakibatkan kelumpuhan dan kehilangan kesadaran. Akan tetapi, Burhan masih dapat bernapas dengan baik. Berdasarkan peristiwa tersebut, bagian otak Burhan yang tidak rusak terdapat pada...', 36),
(108, 1, 'Perhatikan bagian-bagian neuron berikut!\n1) Akson\n2) Dendrit\n3) Badan sel\n4) Ujung akson\nArah jalannya impuls dalam neuron secara berurutan ditunjukkan oleh nomor . . . .\n', 39),
(109, 2, 'Saraf pusat adalah saraf yang berfungsi sebagai ...', 41),
(110, 2, 'Sistem saraf pusat terdiri dari ...', 45),
(111, 2, 'Otak kita terdiri atas ...', 51),
(112, 2, 'Otak kecil bertugas sebagai ...', 55),
(113, 2, 'Otak besar bertugas sebagai ...', 59),
(114, 2, 'Yang berperan dalam pengaturan suhu tubuh, rasa lapar, dan haus adalah...', 62),
(115, 2, 'Gerakan kaki melangkah menuju ke suatu tempat merupakan contoh dari...', 65),
(116, 2, 'Saraf tepi bertugas sebagai ...', 72),
(117, 2, 'Saraf spinal berjumlah...', 76),
(118, 2, 'Fungsinya mengatur pernapasan dan denyut jantung, tekanan darah, dan suhu tubuh merupakan fungsi dari ...', 79),
(119, 2, 'Permukaan otak besar berwarna kelabu disebut ...', 84),
(120, 2, 'Pernyataan yang tepat mengenai sistem saraf tepi, yaitu ....', 86),
(121, 3, 'Gerak dapat dibedakan menjadi ... macam', 89),
(122, 3, 'Urutan gerak biasa/gerak sadar yang benar adalah ...', 94),
(123, 3, 'Uji refleks kerap kali dilakukan dengan cara memukulkan benda lunak secara perlahan ke bagian bawah tempurung lutut sehingga tungkai bawah penderita bergerak ke depan secara tidak sadar. Lengkung refleks yang menghasilkan gerakan tersebut memiliki jalur sebagai berikut ...', 100),
(124, 3, 'Saraf sensorik berfungsi meneruskan rangsang dari ...', 101),
(125, 3, 'Pada gerakan kedip mata, impuls secara berurutan yaitu...', 108),
(126, 3, 'Ketika Fina memasak air, tiba-tiba tangannya terkena cipratan air yang mendidih, kemudian Fina secara spontan menggerakkan tangannya untuk menghindar. Peristiwa tersebut disebut ...', 110),
(127, 3, 'Gerak yang tidak membutuhkan kerja sama dari kulit otak disebut gerak ...', 116),
(128, 4, 'Prinsip penghantaran impuls yaitu melalui...', 119),
(129, 4, 'Penghantaran impuls yang melalui neuron terjadi karena adanya perbedaan muatan listrik antara bagian luar dan bagian dalam membran serabut saraf. Ketika istirahat, bagian luar membran serabut saraf bermuatan listrik .... Sementara itu, bagian dalam membran serabut saraf bermuatan listrik ....', 122),
(130, 4, 'depolarisasi adalah keadaan dimana permukaan luar membran serabut saraf bermuatan .... dan permukaan dalamnya bermuatan ..... saat menerima rangsang berupa impuls', 125),
(131, 4, 'Kelenjar yang terbesar di dalam tubuh dan memiliki fungsi paling penting adalah ...', 130),
(132, 4, 'prinsip penghantaran impuls ada ....', 135),
(133, 4, 'Jika impuls telah sampai di membran prasinapsis, vesikel-vesikel akan menuju membran prasinapsis karena pengaruh .... yang masuk ke bonggol sinapsis.', 139),
(134, 4, 'Perjalanan impuls melintasi sinaps melibatkan zat yang dinamakan ...', 142),
(135, 5, 'Berikut ini yang termasuk kelenjar endokrin adalah...', 148),
(136, 5, 'Hormon berfungsi untuk mengatur...', 152),
(137, 5, 'Fungsi hormon somatotropin yaitu ...', 155),
(138, 5, 'Kelenjar pengendali disebut juga kelenjar…', 157),
(139, 5, 'Lobus anterior terletak di ...', 162),
(140, 5, 'Hipofisis pars intermedia berpengaruh dalam...', 165),
(141, 5, 'Hormon oksitosin adalah hormon yang dihasilkan kelenjar...', 172),
(142, 5, 'Hormon yang berperan dalam metabolisme karbohidrat adalah ....', 174),
(143, 5, 'Hubungan yang tepat antara hormon dan fungsinya adalah...', 179),
(144, 6, 'Mata merupakan indra ....', 182),
(145, 6, 'Alat-alat penyusun sistem indra manusia terdiri atas .....', 188),
(146, 6, 'Dibawah ini yang bukan bagian penyusun bola mata adalah..', 191),
(147, 6, 'Sifat bayangan yang jauh di retina adalah..', 193),
(148, 6, 'Yang tidak termasuk alat tambahan mata yaitu...', 200),
(149, 6, 'Otot bola mata tersusun dari ... pasang otot lurik', 203),
(150, 6, 'Menggerakkan bola mata mata adalah fungsi ...', 205),
(151, 6, 'Bagian bola mata yang berwarna bening dan dapat tembus cahaya adalah..', 210),
(152, 6, 'Merupakan jalan masuknya cahaya adalah fungsi ....', 216),
(153, 6, 'Di bawah ini mekanisme kerja indra penglihat yang benar adalah...', 217),
(154, 7, 'Telinga tersusun dari :\r\n(1) telinga bagian luar\r\n(2) telinga bagian tengah\r\n(3) telinga bagian dalam\r\nBagian-bagian penyusun telinga yang benar adalah...\r\n', 224),
(155, 7, 'Yang berfungsi menangkap getaran bunyi adalah...', 225),
(156, 7, 'Yang menghubungkan telinga tengah dengan rongga faring adalah ...', 230),
(157, 7, 'Penyusun alat keseimbangan pada telinga\r\n(1) Kanalis semisirkularis\r\n(2) Skala vestibuli\r\n(3) Utrikulus\r\n(4) Skala timpani\r\nPenyusun alat keseimbangan pada telinga yang benar adalah..\r\n', 233),
(158, 7, 'Telinga bagian dalam terdiri atas ... bagian', 239),
(159, 7, 'Yang menyalurkan getaran ke koklea adalah ...', 241),
(160, 7, 'Mekanisme kerja indra pendengar yang benar adalah ...', 245),
(161, 8, 'Pada kulit, reseptor yang peka terhadap rangsang fisik disebut...', 252),
(162, 8, 'Kulit sebagai indra peraba berdasarkan asal reseptor bertindak sebagai …', 253),
(163, 8, 'Kulit memiliki peranan sebagai alat eksresi dikarenakan …', 260),
(164, 8, 'Pada kulit, ujung saraf yang merasakan tekanan kuat disebut ...', 263),
(165, 8, 'Pada kulit, ujung saraf yang merasakan panas disebut ...', 266),
(166, 8, 'Pada kulit indra peraba perasa dingin disebut ...', 269),
(167, 8, 'Pada kulit, ujung saraf yang merasakan sentuhan disebut ...', 276),
(168, 9, 'Struktur bulu hidung sifatnya sangat halus yang fungsinya untuk menyaring udara yang masuk ke dalam hidung dinamakan …', 279),
(169, 9, 'Berfungsi mendeteksi rangsang zat kimia dalam bentuk gas di udara (kemoreseptor) adalah ...', 281),
(170, 9, 'Mekanisme kerja indra penciuman\r\n(1) Rangsang (bau)\r\n(2) Lubang hidung\r\n(3) Epitelium olfaktori\r\n(4) Mukosa olfaktori\r\n(5) Saraf olfaktori\r\n(6) Talamus\r\n(7) Hipotalamus\r\n(8) Otak\r\nUrutan yang benar mekanisme kerja indra penciuman adalah ...', 286),
(171, 9, 'Hidung merupakan indera pembau yang menerima rangsangan zat kimia yang bertindak sebagai ...', 291),
(172, 9, 'Jika mencium masakan yang sedap, air liur akan ikut terangsang keluar. Hal ini menunjukkan adanya hubungan antara indera ...', 294),
(173, 9, 'Selaput Lendir berfungsi untuk menghasilkan …', 299),
(174, 9, 'Dalam hidung, zat kimia yang terdapat dalam udara akan larut dalam ...', 301),
(175, 10, 'Lidah merupakan indra pengecap yang dapat merasakan ...', 308),
(176, 10, 'Cairan yang menutupi permukaan lidah, dan peka terhadap rasa adalah ...', 309),
(177, 10, 'Sebagai alat berbicara, membantu mengatur letak makanan ketika dikunyah,\r\nmembantu dalam proses menelan makanan, serta sebagai indra pengecap adalah fungsi dari ...', 314),
(178, 10, 'Mekanisme kerja indra pengecap di bawah ini yang benar adalah ...', 319),
(179, 10, 'Indera pengecap menerima rangsang berupa ...', 324),
(180, 10, 'Makanan yang dapat dirasakan bagian-bagian lidah pada ujung, pinggir(tepi) depan, dan pangkal berturut-turut adalah ...', 328),
(181, 10, 'Bagian lidah untuk mengecap rasa asam adalah ...', 331),
(182, 11, 'Yang bukan termasuk gangguan dan kelainan yang disebabkan sistem saraf adalah ...', 334),
(183, 11, 'Beberapa faktor yang memengaruhi sekresi hormon yang benar adalah ...', 340),
(184, 11, 'Penyakit diabetas merupakan penyakit apabila kekurangan hormon ...', 344),
(185, 11, 'Kadar gula darah tinggi, berat badan turun, mudah merasa haus, serta kulit dan mulut terasa kering adalah gejala ...', 346),
(186, 11, 'Suatu penyakit ketika lensa mata menjadi keruh dan berawan adalah ...', 352),
(187, 11, 'Peradangan kronis yang menyerang lapisan kulit sehingga membuat kulit memerah, terasa gatal, kering, dan kasar adalah penyakit ...', 353),
(188, 11, 'Penyakit pada indera pembau (hidung) yang menyebabkan kehilangan sensitivitas terhadap rasa bau adalah ...', 358),
(189, 11, 'Luka atau peradangan di bibir dan dalam mulut yang dapat menimbulkan rasa sakit dan tidak nyaman adalah penyakit ...', 363),
(190, 12, 'Penyalahgunaan narkoba dapat mengakibatkan ketergantungan. Gangguan fisiologi tubuh, bahkan kematian. Tetapi masih banyak orang yang menyalahgunakan narkoba karena berharap mendapatkan sensasi tertentu. Ganja misalnya, dapat memberikan efek …', 365),
(191, 12, 'Obat-obatan golongan stimulan dapat menimbulkan efek menjadi lebih aktif, tidak mengantuk, dan memberikan kondisi prima dengan mengaktifkan susunan saraf pusat dan meningkatkan kerja otak yaitu ...', 370),
(192, 12, 'Obat-obatan berikut sanggup mempengaruhi pikiran manusia, kecuali ….', 373),
(193, 12, 'Golongan psikotropika yang paling berbahaya karena menimbulkan efek yang sama seperti narkotika adalah ...', 379),
(194, 12, 'Seorang pengguna narkoba mempunyai tanda-tanda sebagai berikut.\r\n(1) Sulit mengantuk\r\n(2) Denyut jantung cepat\r\n(3) Selalu berhalusinasi\r\n(4) Percaya diri\r\nCiri fisik yang ditimbulkan pengguna ganja ditunjukkan oleh nomor ....\r\n', 381),
(195, 12, 'Golongan ini dapat menghilangkan rasa nyeri dengan cara menekan bagian otak yang mengatur rasa nyeri adalah ...', 388),
(196, 12, 'Komplikasi medis pada suasana saraf yang diakibatkan dari penyalahgunaan narkoba adalah …', 391);

-- --------------------------------------------------------

--
-- Table structure for table `module_question_choice`
--

DROP TABLE IF EXISTS `module_question_choice`;
CREATE TABLE `module_question_choice` (
  `id` int(10) NOT NULL,
  `answer_desc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_question_choice`
--

INSERT INTO `module_question_choice` (`id`, `answer_desc`, `question_id`) VALUES
(1, 'Menerima dan meneruskan suatu rangsang', 99),
(2, 'Menerima dan mengatur pekerjaan (koordinator) alat...', 99),
(3, 'Pengatur pekerjaan (koordinator) alat tubuh', 99),
(4, 'Alat indra ke otak', 99),
(5, 'Meneruskan impuls dari badan sel saraf ke sel sara...', 100),
(6, 'Pembawa rangsang ke badan neuron', 100),
(7, 'Pengatur pekerjaan (koordinator) alat tubuh', 100),
(8, 'Menerima suatu rangsang', 100),
(9, 'Penghantar rangsang dari tubuh neuron', 101),
(10, 'Meneruskan suatu rangsang', 101),
(11, 'Menerima suatu rangsang', 101),
(12, 'Pembawa rangsang ke badan neuron', 101),
(13, 'Neurilemma', 102),
(14, 'Badan sel', 102),
(15, 'Sinapsis', 102),
(16, 'Mielin', 102),
(17, 'Badan sel, benang akson/ neurit, dan dendrit', 103),
(18, 'Sinapsis, neurelimma, dendrit', 103),
(19, 'Sinapsis, badan sel, neurit', 103),
(20, 'Badan sel, neurilemma, mielin', 103),
(21, 'Motorik', 104),
(22, 'Sensorik', 104),
(23, 'Simpatik', 104),
(24, 'Parasimpatik', 104),
(25, 'Motoris membawa impuls dari saraf pusat ke efektor', 105),
(26, 'Konektor membawa impuls dari reseptor ke efektor', 105),
(27, 'Motoris membawa impuls dari reseptor ke saraf pusa...', 105),
(28, 'Sensoris membawa impuls dari saraf pusat ke efekto...', 105),
(29, 'Pengatur pekerjaan (koordinator) alat tubuh dan pe...', 106),
(30, 'Menerima suatu rangsang', 106),
(31, 'Meneruskan suatu rangsang', 106),
(32, 'Alat indra ke otak', 106),
(33, 'serebrum', 107),
(34, 'serebelum', 107),
(35, 'daerah motorik', 107),
(36, 'medula oblongata', 107),
(37, '1) --> 2) --> 3) --> 4)', 108),
(38, '2) --> 1) --> 3) --> 4)', 108),
(39, '2) --> 3) --> 1) --> 4)', 108),
(40, '3) --> 2) --> 1) --> 4)', 108),
(41, 'Pusat koordinasi', 109),
(42, 'Menerima suatu rangsang', 109),
(43, 'Meneruskan suatu rangsang', 109),
(44, 'Mengolah rangsang', 109),
(45, 'Otak dan sumsum tulang belakang', 110),
(46, 'Saraf simpatik dan saraf parasimpatetik', 110),
(47, 'Otak dan saraf tepi', 110),
(48, '12 pasang saraf kranial dan 31 pasang saraf spinal', 110),
(49, 'Otak besar, otak kecil tulang', 111),
(50, 'Tulang otak besar, sumsum tulang', 111),
(51, 'Otak besar, otak kecil, sumsum lanjutan', 111),
(52, 'Otak besar, sumsum belakang, otak kecil', 111),
(53, 'Pusat ingatan, kesadaran, dan kemampuan', 112),
(54, 'Pusat koordinasi,', 112),
(55, 'Pusat keseimbangan, koordinasi gerak, penghalusan ...', 112),
(56, 'Mengatur pernapasan', 112),
(57, 'Pusat keseimbangan dan koordinasi', 113),
(58, 'Mengatur pernapasan', 113),
(59, 'Pusat ingatan, kesadaran, dan kemampuan', 113),
(60, 'Pusat keseimbangan, dan mengatur pernafasan', 113),
(61, 'Talamus', 114),
(62, 'Hipotalamus', 114),
(63, 'Medula Oblongata', 114),
(64, 'Otak Besar', 114),
(65, 'Saraf Somatik', 115),
(66, 'Saraf Autonom', 115),
(67, 'Lobus Frontalis', 115),
(68, 'Lobus Parietalis', 115),
(69, 'Penerima rangsang', 116),
(70, 'Pusat ingatan', 116),
(71, 'Menghantarkan rangsang', 116),
(72, 'Mengantarkan rangsangan rangsangan ke susunan sara...', 116),
(73, '28 pasang', 117),
(74, '29 pasang', 117),
(75, '30 pasang', 117),
(76, '31 pasang', 117),
(77, 'Otak besar', 118),
(78, 'Otak kecil', 118),
(79, 'Sumsum lanjutan', 118),
(80, 'Sumsum tulang belakang', 118),
(81, 'Malpigi', 119),
(82, 'Kloaka', 119),
(83, 'Jembatan farol', 119),
(84, 'Korteks', 119),
(85, 'terletak di otak dan sumsum tulang belakang', 120),
(86, 'mengandung sel saraf yang merupakan perpanjangan d...', 120),
(87, 'mengandung interneuron dari sistem saraf pusat', 120),
(88, 'merupakan bagian dari sumsum lanjutan', 120),
(89, '2', 121),
(90, '3', 121),
(91, '4', 121),
(92, '5', 121),
(93, 'Rangsang - urat saraf sensorik - neuron perantara - urat saraf motorik - gerakan', 122),
(94, 'Rangsang - urat saraf sensorik - otak - urat saraf motorik - gerakan', 122),
(95, 'Rangsang - urat saraf sensorik - aurat saraf motorik - gerakan', 122),
(96, 'Rangsang - otak - urat saraf motorik - gerakan', 122),
(97, 'Lutut - saraf sensorik - saraf konektor - saraf motorik - kaki', 123),
(98, 'Lutut - saraf motorik - sumsum tulang belakang - saraf sensorik - kaki', 123),
(99, 'Lutut - saraf sensorik - otak - saraf motorik - kaki', 123),
(100, 'Lutut - saraf sensorik - sumsum tulang belakang - saraf motorik - kaki', 123),
(101, 'Alat indra ke otak', 124),
(102, 'Badan sel saraf ke luar', 124),
(103, 'Dari otak ke serabut otot', 124),
(104, 'Sumsum tulang belakang ke otot', 124),
(105, 'Reseptor - saraf motor - otak - saraf sensori - efektor', 125),
(106, 'Reseptor - saraf sensori - sumsum lanjutan - saraf motor - efektor', 125),
(107, 'Reseptor - saraf sensori - sumsum tulang belakang - saraf motor - efektor', 125),
(108, 'Reseptor - saraf sensori - otak - saraf motor - efektor', 125),
(109, 'Gerak sadar', 126),
(110, 'Gerak refleks', 126),
(111, 'Gerak tidak biasa', 126),
(112, 'Gerak setengah sadar', 126),
(113, 'Sadar', 127),
(114, 'Sensorik', 127),
(115, 'Otomatis', 127),
(116, 'Refleks', 127),
(117, 'neuron dan neurit', 128),
(118, 'sinapsis', 128),
(119, 'neuron dan sinapsis', 128),
(120, 'neurit', 128),
(121, 'positif, positif', 129),
(122, 'positif, negatif', 129),
(123, 'negatif, positif', 129),
(124, 'negatif, negatif', 129),
(125, 'negatif dan positif', 130),
(126, 'positif dan negatif', 130),
(127, 'positif dan positif', 130),
(128, 'negatif dan negatif', 130),
(129, 'hipofisis', 131),
(130, 'tiroid', 131),
(131, 'paratiroid', 131),
(132, 'adrenalin', 131),
(133, '4', 132),
(134, '3', 132),
(135, '2', 132),
(136, '1', 132),
(137, 'CO2', 133),
(138, 'O2', 133),
(139, 'Ca2+', 133),
(140, 'Ca', 133),
(141, 'Ganglion', 134),
(142, 'Neurotransmitter', 134),
(143, 'Akson', 134),
(144, 'Neurolema', 134),
(145, 'tiroid', 135),
(146, 'paratiroid', 135),
(147, 'adrenal', 135),
(148, 'benar semua', 135),
(149, 'homeostasis dan pertumbuhan', 136),
(150, 'reproduksi dan metabolisme', 136),
(151, 'tingkah laku', 136),
(152, 'semua benar', 136),
(153, 'Mencegah pengeroposan tulang dan menurunkan kadar ...', 137),
(154, 'Meningkatkan metabolisme energi', 137),
(155, 'Merangsang sintesis protein dan metabolisme lemak', 137),
(156, 'Mengatur hormon tiroksin dalam darah', 137),
(157, 'Kelenjar hipofisis', 138),
(158, 'Kelenjar paratiroid', 138),
(159, 'Kelenjar tiroid', 138),
(160, 'Kelenjar adrenal', 138),
(161, 'Otak tengah', 139),
(162, 'Otak besar', 139),
(163, 'Otak kanan', 139),
(164, 'Otak kiri', 139),
(165, 'Meningkatkan pigmentasi kulit', 140),
(166, 'Merangsang sintesis protein', 140),
(167, 'Mengatur pertumbuhan kelenjar tiroid', 140),
(168, 'Merangsang terjadinya sp3rm4togenesis', 140),
(169, 'Anterior', 141),
(170, 'Intermedia', 141),
(171, 'tiroid', 141),
(172, 'Posterior', 141),
(173, 'GH (Growth Hormone)', 142),
(174, 'ACTH (Adenocorticotropic Hormone)', 142),
(175, 'LH (Luteinizing Hormone)', 142),
(176, 'ADH (Antidiuretic Hormone)/vasopresin', 142),
(177, 'Parathormon : Memengaruhi proses metabolisme', 143),
(178, 'Tiroksin : Mengatur keseimbangan kalsium', 143),
(179, 'Oksitosin : Merangsang kontraksi otot uterus saat ...', 143),
(180, 'Prolaktin : Memengaruhi kerja kelenjar anak ginjal', 143),
(181, 'pendengaran', 144),
(182, 'penglihatan', 144),
(183, 'perasa', 144),
(184, 'penciuman', 144),
(185, 'mata, telinga, kulit', 145),
(186, 'mata, hidung, dan lidah', 145),
(187, 'mata, telinga, dan lidah', 145),
(188, 'semua benar', 145),
(189, 'Lensa', 146),
(190, 'Pupil', 146),
(191, 'Tarsus', 146),
(192, 'Selaput jala', 146),
(193, 'Nyata, terbalik, diperkecil', 147),
(194, 'Nyata, tegak, diperbesar', 147),
(195, 'Maya, tegak, diperkecil', 147),
(196, 'Maya, terbalik, diperbesar', 147),
(197, 'alis mata', 148),
(198, 'kelopak mata', 148),
(199, 'bulu mata', 148),
(200, 'kantung mata', 148),
(201, '1', 149),
(202, '2', 149),
(203, '3', 149),
(204, '4', 149),
(205, 'Otot bola mata', 150),
(206, 'Bola mata', 150),
(207, 'Alat tambahan mata', 150),
(208, 'Saraf optik', 150),
(209, 'Konjungtiva', 151),
(210, 'Kornea', 151),
(211, 'Iris', 151),
(212, 'Pupil', 151),
(213, 'Konjungtiva', 152),
(214, 'Kornea', 152),
(215, 'Iris', 152),
(216, 'Pupil', 152),
(217, 'Cahaya → aqueous humour → pupil → lensa → vitreous...', 153),
(218, 'Cahaya → aqueous humour → lensa → pupil → vitreous...', 153),
(219, 'Cahaya → aqueous humour → pupil → lensa → vitreous...', 153),
(220, 'Cahaya → pupil → aqueous humour → lensa → vitreous...', 153),
(221, '1 dan 2', 154),
(222, '1 dan 3', 154),
(223, '2 dan 3', 154),
(224, 'semua benar', 154),
(225, 'Telinga bagian luar', 155),
(226, 'Telinga bagian tengah', 155),
(227, 'Telinga bagian dalam', 155),
(228, 'Semua benar', 155),
(229, 'Tingkap jorong', 156),
(230, 'Saluran eustachius', 156),
(231, 'Koklea', 156),
(232, 'Rumah siput', 156),
(233, '1 dan 3', 157),
(234, '1 dan 4', 157),
(235, '2 dan 3', 157),
(236, '2 dan 4', 157),
(237, '1', 158),
(238, '2', 158),
(239, '3', 158),
(240, '4', 158),
(241, 'Tingkap jorong', 159),
(242, 'Saluran eustachius', 159),
(243, 'Koklea', 159),
(244, 'Rumah siput', 159),
(245, 'Getaran suara → daun telinga → saluran telinga → g...', 160),
(246, 'Getaran suara → daun telinga → saluran telinga → g...', 160),
(247, 'Getaran suara → daun telinga → saluran telinga → r...', 160),
(248, 'Getaran suara → daun telinga → saluran telinga → g...', 160),
(249, 'Tangoreseptor', 161),
(250, 'Fotoreseptor', 161),
(251, 'Kemoreseptor', 161),
(252, 'Mekanoreseptor', 161),
(253, 'Tangoreseptor', 162),
(254, 'Fotoreseptor', 162),
(255, 'Kemoreseptor', 162),
(256, 'Mekanoreseptor', 162),
(257, 'Memiliki kelenjar keringat', 163),
(258, 'Memproteksi tubuh dari cahaya matahari', 163),
(259, 'Mempunyai ujung saraf reseptor', 163),
(260, 'Mempunyai kelenjar keringat', 163),
(261, 'Krausse', 164),
(262, 'Ruffini', 164),
(263, 'Paccini', 164),
(264, 'Meissner', 164),
(265, 'Krausse', 165),
(266, 'Ruffini', 165),
(267, 'Paccini', 165),
(268, 'Meissner', 165),
(269, 'Krausse', 166),
(270, 'Ruffini', 166),
(271, 'Paccini', 166),
(272, 'Meissner', 166),
(273, 'Krausse', 167),
(274, 'Ruffini', 167),
(275, 'Paccini', 167),
(276, 'Meissner', 167),
(277, 'Sinus', 168),
(278, 'Saraf Olfaktori', 168),
(279, 'Silia', 168),
(280, 'Selaput Lendir', 168),
(281, 'Serabut-serabut olfaktori', 169),
(282, 'Lubang hidung', 169),
(283, 'Talamus', 169),
(284, 'Hipotalamus', 169),
(285, '1 - 3 - 2 - 7 - 5 - 6 - 8 - 4', 170),
(286, '1 - 2 - 3 - 4 - 5 - 6 - 7 - 8', 170),
(287, '1 - 7 - 8 - 4 - 6 - 3 - 2 - 5', 170),
(288, '1 - 6 - 3 - 2 - 8 - 7 - 5 - 4', 170),
(289, 'Tangoreseptor', 171),
(290, 'Fotoreseptor', 171),
(291, 'Kemoreseptor', 171),
(292, 'Mekanoreseptor', 171),
(293, 'Perasa dan peraba', 172),
(294, 'Pembau dan pengecap', 172),
(295, 'Perasa dan pengecap', 172),
(296, 'Pembau dan penglihat', 172),
(297, 'sinus', 173),
(298, 'impuls', 173),
(299, 'mukus', 173),
(300, 'septum', 173),
(301, 'Selaput lendir', 174),
(302, 'Bulu cambuk', 174),
(303, 'Rambut getar', 174),
(304, 'Bulu hidung', 174),
(305, 'pahit dan asam', 175),
(306, 'asam dan asin', 175),
(307, 'asin dan manis', 175),
(308, 'semua benar', 175),
(309, 'Papila', 176),
(310, 'Talamus', 176),
(311, 'Gustastori', 176),
(312, 'Hipotalamus', 176),
(313, 'Tenggorokan', 177),
(314, 'Lidah', 177),
(315, 'Mulut', 177),
(316, 'Gigi', 177),
(317, 'Makanan/larutan berasa → saraf gustatori → papila ...', 178),
(318, 'Makanan/larutan berasa → papila lidah → saraf gust...', 178),
(319, 'Makanan/larutan berasa → papila lidah → saraf gust...', 178),
(320, 'Makanan/larutan berasa → papila lidah → medula obl...', 178),
(321, 'Perubahan suhu lingkungan', 179),
(322, 'Zat kimia dalam bentuk padat', 179),
(323, 'Zat kimia dalam bentuk gas', 179),
(324, 'Zat kimia dalam bentuk larutan', 179),
(325, 'pahit, asam, manis', 180),
(326, 'asam, manis, pahit', 180),
(327, 'manis, asin, asam', 180),
(328, 'manis, asin, pahit', 180),
(329, 'Pangkal lidah', 181),
(330, 'Ujung lidah', 181),
(331, 'Pinggir lidah', 181),
(332, 'Tengah lidah', 181),
(333, 'Meningitis', 182),
(334, 'Hepatitis', 182),
(335, 'Gegar otak', 182),
(336, 'Epilepsi', 182),
(337, 'stres', 183),
(338, 'infeksi', 183),
(339, 'penuaan dan genetik', 183),
(340, 'semua benar', 183),
(341, 'Tiroksin', 184),
(342, 'Kortison', 184),
(343, 'Dioksikortison', 184),
(344, 'Insulin', 184),
(345, 'Asma', 185),
(346, 'Diabetes Melitus', 185),
(347, 'Kanker', 185),
(348, 'Tipes', 185),
(349, 'Miopi', 186),
(350, 'Buta warna', 186),
(351, 'Rabun senja', 186),
(352, 'Katarak', 186),
(353, 'Eksim', 187),
(354, 'Dermatitis', 187),
(355, 'Panu', 187),
(356, 'Kudis', 187),
(357, 'Sinus', 188),
(358, 'Anosmia', 188),
(359, 'Asma', 188),
(360, 'Pilek', 188),
(361, 'Kanker lidah', 189),
(362, 'Glossoptosis', 189),
(363, 'Sariawan', 189),
(364, 'Atrophic glossitis', 189),
(365, 'Menahan rasa sakit', 190),
(366, 'Meningkatkan semangat', 190),
(367, 'Meningkatkan daya khayal', 190),
(368, 'Menekan rasa lapar', 190),
(369, 'Ganja', 191),
(370, 'Kokain', 191),
(371, 'Mariyuana', 191),
(372, 'Heroin', 191),
(373, 'Antibiotik', 192),
(374, 'Stimulan', 192),
(375, 'Halusinogen', 192),
(376, 'Depresan', 192),
(377, 'Antibiotik', 193),
(378, 'Stimulan', 193),
(379, 'Halusinogen', 193),
(380, 'Depresan', 193),
(381, '(1) dan (2)', 194),
(382, '(1) dan (3)', 194),
(383, '(1) dan (4)', 194),
(384, '(2) dan (3)', 194),
(385, 'Stimulan', 195),
(386, 'Halusinogen', 195),
(387, 'Depresan', 195),
(388, 'Painkiller', 195),
(389, 'Gangguan kecerdasaan', 196),
(390, 'Gangguan pengelihatan', 196),
(391, 'Gangguan daya ingat', 196),
(392, 'Peradangan otot jantung', 196);

-- --------------------------------------------------------

--
-- Table structure for table `pre_test_answer`
--

DROP TABLE IF EXISTS `pre_test_answer`;
CREATE TABLE `pre_test_answer` (
  `id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `modul_1` int(1) NOT NULL,
  `modul_2` int(1) NOT NULL,
  `modul_3` int(1) NOT NULL,
  `modul_4` int(1) NOT NULL,
  `modul_5` int(1) NOT NULL,
  `modul_6` int(1) NOT NULL,
  `modul_7` int(1) NOT NULL,
  `modul_8` int(1) NOT NULL,
  `modul_9` int(1) NOT NULL,
  `modul_10` int(1) NOT NULL,
  `modul_11` int(1) NOT NULL,
  `modul_12` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pre_test_answer`
--

INSERT INTO `pre_test_answer` (`id`, `student_id`, `modul_1`, `modul_2`, `modul_3`, `modul_4`, `modul_5`, `modul_6`, `modul_7`, `modul_8`, `modul_9`, `modul_10`, `modul_11`, `modul_12`) VALUES
(1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0),
(2, 2, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0),
(3, 3, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(4, 4, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1),
(5, 5, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0),
(6, 6, 1, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1),
(7, 7, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0),
(8, 8, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1),
(9, 9, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0),
(10, 10, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0),
(11, 11, 1, 1, 1, 1, 0, 1, 1, 0, 0, 1, 0, 1),
(12, 12, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0),
(13, 13, 1, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0),
(14, 14, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0),
(15, 15, 0, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0),
(16, 16, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1),
(17, 17, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1),
(18, 18, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0),
(19, 19, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0),
(20, 20, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0),
(21, 21, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1),
(22, 22, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1),
(23, 23, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(24, 24, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1),
(25, 25, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0),
(26, 26, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
(27, 27, 1, 1, 0, 0, 1, 0, 1, 1, 1, 0, 1, 0),
(28, 28, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1),
(29, 29, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0),
(30, 30, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(31, 31, 1, 1, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1),
(32, 32, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1),
(33, 33, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0),
(34, 34, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0),
(35, 35, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1),
(36, 36, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0),
(37, 37, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1),
(38, 38, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0),
(39, 39, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1),
(40, 40, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1),
(41, 41, 1, 0, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0),
(42, 42, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1),
(43, 43, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1),
(44, 44, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1),
(45, 45, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0),
(46, 46, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1),
(47, 47, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0),
(48, 48, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0),
(49, 49, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1),
(50, 50, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0),
(51, 51, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0),
(52, 52, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0),
(53, 53, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0),
(54, 54, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1),
(55, 55, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0),
(56, 56, 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 1),
(57, 57, 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 0, 1),
(58, 58, 0, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1),
(59, 59, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0),
(60, 60, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0),
(61, 61, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0),
(62, 62, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0),
(63, 63, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1),
(64, 64, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1),
(65, 65, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 1),
(66, 66, 0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1),
(67, 67, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1),
(68, 68, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0),
(69, 69, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0),
(70, 70, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0),
(71, 71, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0),
(72, 72, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0),
(73, 73, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 1, 1),
(74, 74, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1),
(75, 75, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0),
(76, 76, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0),
(77, 77, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0),
(78, 78, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0),
(79, 79, 0, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1),
(80, 80, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 1),
(81, 81, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1),
(82, 82, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0),
(83, 83, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1),
(84, 84, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1),
(85, 85, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1),
(86, 86, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0),
(87, 87, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1),
(88, 88, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1),
(89, 89, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1),
(90, 90, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0),
(91, 91, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0),
(92, 92, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0),
(93, 93, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1),
(94, 94, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1),
(95, 95, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 0, 0),
(96, 96, 0, 0, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1),
(97, 97, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 1, 1),
(98, 98, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0),
(99, 99, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1),
(100, 100, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0),
(101, 101, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1),
(102, 102, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 1, 1),
(103, 103, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1),
(104, 104, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 0),
(105, 105, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0),
(106, 106, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1),
(107, 107, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1),
(108, 108, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0),
(109, 109, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0),
(110, 110, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1),
(111, 111, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0),
(112, 112, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1),
(113, 113, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1),
(114, 114, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 1),
(115, 115, 1, 1, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0),
(116, 116, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1),
(117, 117, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1),
(118, 118, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1),
(119, 119, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1),
(120, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
(121, 121, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0),
(122, 122, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0),
(123, 123, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1),
(124, 124, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0),
(125, 125, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1),
(126, 126, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(127, 127, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1),
(128, 128, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0),
(129, 129, 1, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1),
(130, 130, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1),
(131, 131, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1),
(132, 132, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0),
(133, 133, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1),
(134, 134, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0),
(135, 135, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0),
(136, 136, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1),
(137, 137, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1),
(138, 138, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0),
(139, 139, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1),
(140, 140, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0),
(141, 141, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 1),
(142, 142, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0),
(143, 143, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1),
(144, 144, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 1, 0),
(145, 145, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1),
(146, 146, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 1),
(147, 147, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1),
(148, 148, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1),
(149, 149, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0),
(150, 150, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pre_test_result`
--

DROP TABLE IF EXISTS `pre_test_result`;
CREATE TABLE `pre_test_result` (
  `id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pre_test_result`
--

INSERT INTO `pre_test_result` (`id`, `student_id`, `level`) VALUES
(1, 1, 2),
(2, 3, 2),
(3, 11, 2),
(4, 15, 2),
(5, 18, 2),
(6, 31, 2),
(7, 42, 2),
(8, 44, 2),
(9, 54, 2),
(10, 55, 2),
(11, 70, 2),
(12, 78, 2),
(13, 79, 2),
(14, 84, 2),
(15, 85, 2),
(16, 86, 2),
(17, 91, 2),
(18, 95, 2),
(19, 104, 2),
(20, 105, 2),
(21, 107, 2),
(22, 113, 2),
(23, 121, 2),
(24, 127, 2),
(25, 138, 2),
(26, 140, 2),
(27, 141, 2),
(28, 143, 2),
(29, 145, 2),
(30, 148, 2),
(31, 1, 2),
(32, 3, 2),
(33, 11, 2),
(34, 15, 2),
(35, 18, 2),
(36, 31, 2),
(37, 42, 2),
(38, 44, 2),
(39, 54, 2),
(40, 55, 2),
(41, 70, 2),
(42, 78, 2),
(43, 79, 2),
(44, 84, 2),
(45, 85, 2),
(46, 86, 2),
(47, 91, 2),
(48, 95, 2),
(49, 104, 2),
(50, 105, 2),
(51, 107, 2),
(52, 113, 2),
(53, 121, 2),
(54, 127, 2),
(55, 138, 2),
(56, 140, 2),
(57, 141, 2),
(58, 143, 2),
(59, 145, 2),
(60, 148, 2);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `nis` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `user_id`, `nis`, `student_name`, `student_address`, `phone_number`, `class_id`) VALUES
(1, 94, '2022040001', 'Murid 1', 'Alamat Murid 1', '081234010001', 2),
(2, 95, '2022040002', 'Murid 2', 'Alamat Murid 2', '081234010002', 5),
(3, 96, '2022040003', 'Murid 3', 'Alamat Murid 3', '081234010003', 2),
(4, 97, '2022040004', 'Murid 4', 'Alamat Murid 4', '081234010004', 5),
(5, 98, '2022040005', 'Murid 5', 'Alamat Murid 5', '081234010005', 1),
(6, 99, '2022040006', 'Murid 6', 'Alamat Murid 6', '081234010006', 3),
(7, 100, '2022040007', 'Murid 7', 'Alamat Murid 7', '081234010007', 5),
(8, 101, '2022040008', 'Murid 8', 'Alamat Murid 8', '081234010008', 5),
(9, 102, '2022040009', 'Murid 9', 'Alamat Murid 9', '081234010009', 1),
(10, 103, '2022040010', 'Murid 10', 'Alamat Murid 10', '081234010010', 4),
(11, 104, '2022040011', 'Murid 11', 'Alamat Murid 11', '081234010011', 2),
(12, 105, '2022040012', 'Murid 12', 'Alamat Murid 12', '081234010012', 3),
(13, 106, '2022040013', 'Murid 13', 'Alamat Murid 13', '081234010013', 4),
(14, 107, '2022040014', 'Murid 14', 'Alamat Murid 14', '081234010014', 4),
(15, 108, '2022040015', 'Murid 15', 'Alamat Murid 15', '081234010015', 2),
(16, 109, '2022040016', 'Murid 16', 'Alamat Murid 16', '081234010016', 1),
(17, 110, '2022040017', 'Murid 17', 'Alamat Murid 17', '081234010017', 1),
(18, 111, '2022040018', 'Murid 18', 'Alamat Murid 18', '081234010018', 2),
(19, 112, '2022040019', 'Murid 19', 'Alamat Murid 19', '081234010019', 5),
(20, 113, '2022040020', 'Murid 20', 'Alamat Murid 20', '081234010020', 5),
(21, 114, '2022040021', 'Murid 21', 'Alamat Murid 21', '081234010021', 1),
(22, 115, '2022040022', 'Murid 22', 'Alamat Murid 22', '081234010022', 5),
(23, 116, '2022040023', 'Murid 23', 'Alamat Murid 23', '081234010023', 3),
(24, 117, '2022040024', 'Murid 24', 'Alamat Murid 24', '081234010024', 5),
(25, 118, '2022040025', 'Murid 25', 'Alamat Murid 25', '081234010025', 3),
(26, 119, '2022040026', 'Murid 26', 'Alamat Murid 26', '081234010026', 4),
(27, 120, '2022040027', 'Murid 27', 'Alamat Murid 27', '081234010027', 3),
(28, 121, '2022040028', 'Murid 28', 'Alamat Murid 28', '081234010028', 5),
(29, 122, '2022040029', 'Murid 29', 'Alamat Murid 29', '081234010029', 3),
(30, 123, '2022040030', 'Murid 30', 'Alamat Murid 30', '081234010030', 1),
(31, 124, '2022040031', 'Murid 31', 'Alamat Murid 31', '081234010031', 2),
(32, 125, '2022040032', 'Murid 32', 'Alamat Murid 32', '081234010032', 1),
(33, 126, '2022040033', 'Murid 33', 'Alamat Murid 33', '081234010033', 1),
(34, 127, '2022040034', 'Murid 34', 'Alamat Murid 34', '081234010034', 5),
(35, 128, '2022040035', 'Murid 35', 'Alamat Murid 35', '081234010035', 4),
(36, 129, '2022040036', 'Murid 36', 'Alamat Murid 36', '081234010036', 3),
(37, 130, '2022040037', 'Murid 37', 'Alamat Murid 37', '081234010037', 4),
(38, 131, '2022040038', 'Murid 38', 'Alamat Murid 38', '081234010038', 3),
(39, 132, '2022040039', 'Murid 39', 'Alamat Murid 39', '081234010039', 5),
(40, 133, '2022040040', 'Murid 40', 'Alamat Murid 40', '081234010040', 4),
(41, 134, '2022040041', 'Murid 41', 'Alamat Murid 41', '081234010041', 1),
(42, 135, '2022040042', 'Murid 42', 'Alamat Murid 42', '081234010042', 2),
(43, 136, '2022040043', 'Murid 43', 'Alamat Murid 43', '081234010043', 5),
(44, 137, '2022040044', 'Murid 44', 'Alamat Murid 44', '081234010044', 2),
(45, 138, '2022040045', 'Murid 45', 'Alamat Murid 45', '081234010045', 3),
(46, 139, '2022040046', 'Murid 46', 'Alamat Murid 46', '081234010046', 1),
(47, 140, '2022040047', 'Murid 47', 'Alamat Murid 47', '081234010047', 4),
(48, 141, '2022040048', 'Murid 48', 'Alamat Murid 48', '081234010048', 4),
(49, 142, '2022040049', 'Murid 49', 'Alamat Murid 49', '081234010049', 3),
(50, 143, '2022040050', 'Murid 50', 'Alamat Murid 50', '081234010050', 4),
(51, 144, '2022040051', 'Murid 51', 'Alamat Murid 51', '081234010051', 4),
(52, 145, '2022040052', 'Murid 52', 'Alamat Murid 52', '081234010052', 1),
(53, 146, '2022040053', 'Murid 53', 'Alamat Murid 53', '081234010053', 4),
(54, 147, '2022040054', 'Murid 54', 'Alamat Murid 54', '081234010054', 2),
(55, 148, '2022040055', 'Murid 55', 'Alamat Murid 55', '081234010055', 2),
(56, 149, '2022040056', 'Murid 56', 'Alamat Murid 56', '081234010056', 1),
(57, 150, '2022040057', 'Murid 57', 'Alamat Murid 57', '081234010057', 3),
(58, 151, '2022040058', 'Murid 58', 'Alamat Murid 58', '081234010058', 3),
(59, 152, '2022040059', 'Murid 59', 'Alamat Murid 59', '081234010059', 4),
(60, 153, '2022040060', 'Murid 60', 'Alamat Murid 60', '081234010060', 1),
(61, 154, '2022040061', 'Murid 61', 'Alamat Murid 61', '081234010061', 1),
(62, 155, '2022040062', 'Murid 62', 'Alamat Murid 62', '081234010062', 4),
(63, 156, '2022040063', 'Murid 63', 'Alamat Murid 63', '081234010063', 3),
(64, 157, '2022040064', 'Murid 64', 'Alamat Murid 64', '081234010064', 5),
(65, 158, '2022040065', 'Murid 65', 'Alamat Murid 65', '081234010065', 1),
(66, 159, '2022040066', 'Murid 66', 'Alamat Murid 66', '081234010066', 1),
(67, 160, '2022040067', 'Murid 67', 'Alamat Murid 67', '081234010067', 4),
(68, 161, '2022040068', 'Murid 68', 'Alamat Murid 68', '081234010068', 1),
(69, 162, '2022040069', 'Murid 69', 'Alamat Murid 69', '081234010069', 5),
(70, 163, '2022040070', 'Murid 70', 'Alamat Murid 70', '081234010070', 2),
(71, 164, '2022040071', 'Murid 71', 'Alamat Murid 71', '081234010071', 1),
(72, 165, '2022040072', 'Murid 72', 'Alamat Murid 72', '081234010072', 4),
(73, 166, '2022040073', 'Murid 73', 'Alamat Murid 73', '081234010073', 3),
(74, 167, '2022040074', 'Murid 74', 'Alamat Murid 74', '081234010074', 4),
(75, 168, '2022040075', 'Murid 75', 'Alamat Murid 75', '081234010075', 4),
(76, 169, '2022040076', 'Murid 76', 'Alamat Murid 76', '081234010076', 4),
(77, 170, '2022040077', 'Murid 77', 'Alamat Murid 77', '081234010077', 4),
(78, 171, '2022040078', 'Murid 78', 'Alamat Murid 78', '081234010078', 2),
(79, 172, '2022040079', 'Murid 79', 'Alamat Murid 79', '081234010079', 2),
(80, 173, '2022040080', 'Murid 80', 'Alamat Murid 80', '081234010080', 4),
(81, 174, '2022040081', 'Murid 81', 'Alamat Murid 81', '081234010081', 3),
(82, 175, '2022040082', 'Murid 82', 'Alamat Murid 82', '081234010082', 1),
(83, 176, '2022040083', 'Murid 83', 'Alamat Murid 83', '081234010083', 4),
(84, 177, '2022040084', 'Murid 84', 'Alamat Murid 84', '081234010084', 2),
(85, 178, '2022040085', 'Murid 85', 'Alamat Murid 85', '081234010085', 2),
(86, 179, '2022040086', 'Murid 86', 'Alamat Murid 86', '081234010086', 2),
(87, 180, '2022040087', 'Murid 87', 'Alamat Murid 87', '081234010087', 4),
(88, 181, '2022040088', 'Murid 88', 'Alamat Murid 88', '081234010088', 5),
(89, 182, '2022040089', 'Murid 89', 'Alamat Murid 89', '081234010089', 5),
(90, 183, '2022040090', 'Murid 90', 'Alamat Murid 90', '081234010090', 1),
(91, 184, '2022040091', 'Murid 91', 'Alamat Murid 91', '081234010091', 2),
(92, 185, '2022040092', 'Murid 92', 'Alamat Murid 92', '081234010092', 1),
(93, 186, '2022040093', 'Murid 93', 'Alamat Murid 93', '081234010093', 3),
(94, 187, '2022040094', 'Murid 94', 'Alamat Murid 94', '081234010094', 4),
(95, 188, '2022040095', 'Murid 95', 'Alamat Murid 95', '081234010095', 2),
(96, 189, '2022040096', 'Murid 96', 'Alamat Murid 96', '081234010096', 1),
(97, 190, '2022040097', 'Murid 97', 'Alamat Murid 97', '081234010097', 4),
(98, 191, '2022040098', 'Murid 98', 'Alamat Murid 98', '081234010098', 4),
(99, 192, '2022040099', 'Murid 99', 'Alamat Murid 99', '081234010099', 3),
(100, 193, '2022040100', 'Murid 100', 'Alamat Murid 100', '081234010100', 3),
(101, 194, '2022040101', 'Murid 101', 'Alamat Murid 101', '081234010101', 5),
(102, 195, '2022040102', 'Murid 102', 'Alamat Murid 102', '081234010102', 5),
(103, 196, '2022040103', 'Murid 103', 'Alamat Murid 103', '081234010103', 4),
(104, 197, '2022040104', 'Murid 104', 'Alamat Murid 104', '081234010104', 2),
(105, 198, '2022040105', 'Murid 105', 'Alamat Murid 105', '081234010105', 2),
(106, 199, '2022040106', 'Murid 106', 'Alamat Murid 106', '081234010106', 3),
(107, 200, '2022040107', 'Murid 107', 'Alamat Murid 107', '081234010107', 2),
(108, 201, '2022040108', 'Murid 108', 'Alamat Murid 108', '081234010108', 4),
(109, 202, '2022040109', 'Murid 109', 'Alamat Murid 109', '081234010109', 1),
(110, 203, '2022040110', 'Murid 110', 'Alamat Murid 110', '081234010110', 5),
(111, 204, '2022040111', 'Murid 111', 'Alamat Murid 111', '081234010111', 3),
(112, 205, '2022040112', 'Murid 112', 'Alamat Murid 112', '081234010112', 1),
(113, 206, '2022040113', 'Murid 113', 'Alamat Murid 113', '081234010113', 2),
(114, 207, '2022040114', 'Murid 114', 'Alamat Murid 114', '081234010114', 5),
(115, 208, '2022040115', 'Murid 115', 'Alamat Murid 115', '081234010115', 1),
(116, 209, '2022040116', 'Murid 116', 'Alamat Murid 116', '081234010116', 4),
(117, 210, '2022040117', 'Murid 117', 'Alamat Murid 117', '081234010117', 4),
(118, 211, '2022040118', 'Murid 118', 'Alamat Murid 118', '081234010118', 1),
(119, 212, '2022040119', 'Murid 119', 'Alamat Murid 119', '081234010119', 5),
(120, 213, '2022040120', 'Murid 120', 'Alamat Murid 120', '081234010120', 4),
(121, 214, '2022040121', 'Murid 121', 'Alamat Murid 121', '081234010121', 2),
(122, 215, '2022040122', 'Murid 122', 'Alamat Murid 122', '081234010122', 3),
(123, 216, '2022040123', 'Murid 123', 'Alamat Murid 123', '081234010123', 5),
(124, 217, '2022040124', 'Murid 124', 'Alamat Murid 124', '081234010124', 5),
(125, 218, '2022040125', 'Murid 125', 'Alamat Murid 125', '081234010125', 5),
(126, 219, '2022040126', 'Murid 126', 'Alamat Murid 126', '081234010126', 4),
(127, 220, '2022040127', 'Murid 127', 'Alamat Murid 127', '081234010127', 2),
(128, 221, '2022040128', 'Murid 128', 'Alamat Murid 128', '081234010128', 3),
(129, 222, '2022040129', 'Murid 129', 'Alamat Murid 129', '081234010129', 3),
(130, 223, '2022040130', 'Murid 130', 'Alamat Murid 130', '081234010130', 4),
(131, 224, '2022040131', 'Murid 131', 'Alamat Murid 131', '081234010131', 1),
(132, 225, '2022040132', 'Murid 132', 'Alamat Murid 132', '081234010132', 3),
(133, 226, '2022040133', 'Murid 133', 'Alamat Murid 133', '081234010133', 5),
(134, 227, '2022040134', 'Murid 134', 'Alamat Murid 134', '081234010134', 1),
(135, 228, '2022040135', 'Murid 135', 'Alamat Murid 135', '081234010135', 1),
(136, 229, '2022040136', 'Murid 136', 'Alamat Murid 136', '081234010136', 3),
(137, 230, '2022040137', 'Murid 137', 'Alamat Murid 137', '081234010137', 5),
(138, 231, '2022040138', 'Murid 138', 'Alamat Murid 138', '081234010138', 2),
(139, 232, '2022040139', 'Murid 139', 'Alamat Murid 139', '081234010139', 1),
(140, 233, '2022040140', 'Murid 140', 'Alamat Murid 140', '081234010140', 2),
(141, 234, '2022040141', 'Murid 141', 'Alamat Murid 141', '081234010141', 2),
(142, 235, '2022040142', 'Murid 142', 'Alamat Murid 142', '081234010142', 1),
(143, 236, '2022040143', 'Murid 143', 'Alamat Murid 143', '081234010143', 2),
(144, 237, '2022040144', 'Murid 144', 'Alamat Murid 144', '081234010144', 4),
(145, 238, '2022040145', 'Murid 145', 'Alamat Murid 145', '081234010145', 2),
(146, 239, '2022040146', 'Murid 146', 'Alamat Murid 146', '081234010146', 1),
(147, 240, '2022040147', 'Murid 147', 'Alamat Murid 147', '081234010147', 4),
(148, 241, '2022040148', 'Murid 148', 'Alamat Murid 148', '081234010148', 2),
(149, 242, '2022040149', 'Murid 149', 'Alamat Murid 149', '081234010149', 3),
(150, 243, '2022040150', 'Murid 150', 'Alamat Murid 150', '081234010150', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sub_topic`
--

DROP TABLE IF EXISTS `sub_topic`;
CREATE TABLE `sub_topic` (
  `id` int(10) NOT NULL,
  `sub_topic_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_id` int(10) NOT NULL,
  `number` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_topic`
--

INSERT INTO `sub_topic` (`id`, `sub_topic_desc`, `topic_id`, `number`) VALUES
(1, 'Konsep Sel dan Komponen Kimiawi Penyusun Sel', 1, 1),
(2, 'Struktur dan Fungsi Bagian-Bagian Sel', 1, 2),
(3, 'Bioproses dalam Sel', 1, 3),
(4, 'Struktur dan Fungsi Jaringan Tumbuhan', 2, 1),
(5, 'Jaringan Penyusun Organ Tumbuhan', 2, 2),
(6, 'Kultur Jaringan Tumbuhan', 2, 3),
(7, 'Struktur, Letak, dan Fungsi Jaringan Hewan Vertebrata', 3, 1),
(8, 'Teknologi yang Berkaitan dengan Jaringan Hewan', 3, 2),
(9, 'Alat Gerak Pasif', 4, 1),
(10, 'Kelainan dan Teknologi yang Berhubungan dengan Sistem Gerak', 4, 2),
(11, 'Darah', 5, 1),
(12, 'Alat-Alat Peredaran Darah dan Mekanisme Peredaran Darah', 5, 2),
(13, 'Kelainan-Kelainan dan Teknologi yang Berkaitan dengan Sistem Peredaran Darah', 5, 3),
(14, 'Zat-Zat Makanan yang Diperlukan Tubuh', 6, 1),
(15, 'Struktur dan Fungsi Sistem Pencernaan Manusia dan Ruminansia', 6, 2),
(16, 'Sistem Pernapasan pada Manusia', 7, 1),
(17, 'Sistem Pernapasan pada Hewan', 7, 2),
(18, 'Kelainan-Kelainan pada Sistem Pernapasan Manusia', 7, 3),
(19, 'Proses Ekskresi pada Manusia', 8, 1),
(20, 'Gangguan dan penyakit pada Sistem Ekskresi', 8, 2),
(21, 'Sistem Saraf Manusia', 9, 1),
(22, 'Sistem Endokrin (Hormon) Manusia', 9, 2),
(23, 'Sistem Indra Manusia', 9, 3),
(24, 'Gangguan dan Pengaruh Psikotropika pada Sistem Koordinasi Manusia', 9, 4),
(25, 'Struktur dan Fungsi Alat Reproduksi Manusia', 10, 1),
(26, 'Proses-Proses yang Berlangsung dalam Organ Reproduksi', 10, 2),
(27, 'Keterkaitan Antara Kesehatan Reproduksi dengan Program KB dan Kependudukan', 10, 3),
(28, 'Mekanisme Pertahanan Tubuh', 11, 1),
(29, 'Jenis-Jenis Kekebalan dan Gangguan pada Sistem Kekebalan Tubuh', 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `survey_question`
--

DROP TABLE IF EXISTS `survey_question`;
CREATE TABLE `survey_question` (
  `id` int(10) NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_question`
--

INSERT INTO `survey_question` (`id`, `question`, `category`) VALUES
(1, 'Saya merasa senang mengikuti pelajaran biologi selama pembelajaran daring', '1'),
(2, 'Saya tidak pernah mengeluh jika ada tugas biologi', '1'),
(3, 'Saya sering hadir pada saat pelajaran biologi', '1'),
(4, 'Apabila mengalami kesulitan dalam memahami materi, saya bertanya.', '1'),
(5, 'Tugas yang diberikan guru membuat saya semakin tertatik dengan biologi.', '1'),
(6, 'Ketika di rumah saya memilih belajar daripada bermain biologi.', '2'),
(7, 'Tanpa ada yang menyuruh, saya belajar biologi sendiri di rumah. ', '2'),
(8, 'Saya tidak merasa kesulitan dalam memahami materi-materi biologi', '2'),
(9, 'Saat ulangan saya sering mendapat nilai > 75', '2'),
(10, 'Saya pernah mengikuti olimpiade biologi', '2');

-- --------------------------------------------------------

--
-- Table structure for table `survey_result`
--

DROP TABLE IF EXISTS `survey_result`;
CREATE TABLE `survey_result` (
  `id` int(10) NOT NULL,
  `level_result` int(2) NOT NULL,
  `student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_result`
--

INSERT INTO `survey_result` (`id`, `level_result`, `student_id`) VALUES
(1, 2, 1),
(2, 3, 2),
(3, 1, 3),
(4, 1, 4),
(5, 2, 5),
(6, 3, 6),
(7, 1, 7),
(8, 1, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 11),
(12, 3, 12),
(13, 1, 13),
(14, 1, 14),
(15, 3, 15),
(16, 1, 16),
(17, 3, 17),
(18, 2, 18),
(19, 1, 19),
(20, 3, 20),
(21, 2, 21),
(22, 3, 22),
(23, 1, 23),
(24, 2, 24),
(25, 3, 25),
(26, 1, 26),
(27, 3, 27),
(28, 1, 28),
(29, 1, 29),
(30, 3, 30),
(31, 2, 31),
(32, 2, 32),
(33, 2, 33),
(34, 2, 34),
(35, 2, 35),
(36, 3, 36),
(37, 3, 37),
(38, 1, 38),
(39, 1, 39),
(40, 2, 40),
(41, 3, 41),
(42, 2, 42),
(43, 3, 43),
(44, 2, 44),
(45, 1, 45),
(46, 1, 46),
(47, 2, 47),
(48, 1, 48),
(49, 3, 49),
(50, 1, 50),
(51, 1, 51),
(52, 3, 52),
(53, 3, 53),
(54, 2, 54),
(55, 3, 55),
(56, 3, 56),
(57, 1, 57),
(58, 2, 58),
(59, 2, 59),
(60, 1, 60),
(61, 2, 61),
(62, 3, 62),
(63, 2, 63),
(64, 3, 64),
(65, 2, 65),
(66, 1, 66),
(67, 2, 67),
(68, 2, 68),
(69, 1, 69),
(70, 2, 70),
(71, 2, 71),
(72, 1, 72),
(73, 3, 73),
(74, 2, 74),
(75, 3, 75),
(76, 1, 76),
(77, 1, 77),
(78, 3, 78),
(79, 3, 79),
(80, 1, 80),
(81, 3, 81),
(82, 3, 82),
(83, 2, 83),
(84, 3, 84),
(85, 1, 85),
(86, 2, 86),
(87, 3, 87),
(88, 2, 88),
(89, 2, 89),
(90, 3, 90),
(91, 1, 91),
(92, 1, 92),
(93, 2, 93),
(94, 2, 94),
(95, 3, 95),
(96, 2, 96),
(97, 2, 97),
(98, 2, 98),
(99, 2, 99),
(100, 3, 100),
(101, 2, 101),
(102, 3, 102),
(103, 3, 103),
(104, 3, 104),
(105, 3, 105),
(106, 1, 106),
(107, 3, 107),
(108, 2, 108),
(109, 1, 109),
(110, 2, 110),
(111, 1, 111),
(112, 1, 112),
(113, 1, 113),
(114, 3, 114),
(115, 1, 115),
(116, 1, 116),
(117, 3, 117),
(118, 1, 118),
(119, 3, 119),
(120, 2, 120),
(121, 2, 121),
(122, 3, 122),
(123, 2, 123),
(124, 3, 124),
(125, 2, 125),
(126, 1, 126),
(127, 3, 127),
(128, 1, 128),
(129, 1, 129),
(130, 1, 130),
(131, 3, 131),
(132, 2, 132),
(133, 3, 133),
(134, 3, 134),
(135, 1, 135),
(136, 2, 136),
(137, 1, 137),
(138, 2, 138),
(139, 2, 139),
(140, 3, 140),
(141, 1, 141),
(142, 1, 142),
(143, 1, 143),
(144, 1, 144),
(145, 2, 145),
(146, 1, 146),
(147, 1, 147),
(148, 1, 148),
(149, 1, 149),
(150, 1, 150);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `teacher_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_type` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `user_id`, `teacher_name`, `teacher_address`, `nip`, `phone_number`, `email`, `teacher_type`) VALUES
(1, 2, 'Guru 1', 'Alamat guru 1', '199292921992021020', '012047103', '', '1'),
(2, 18, 'Guru 2', 'Alamat guru 2', '12345678901', '9012091820', '', '1'),
(52, 82, 'Guru honorer 1', 'Alamat guru 3', '', '1501720180', 'guru1@gmail.com', '2'),
(53, 84, 'Guru 3', 'Alamat guru 4', '5623908198', '08120192', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id` int(10) NOT NULL,
  `topic_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id`, `topic_desc`, `number`) VALUES
(1, 'Sel sebagai Unit Terkecil Kehidupan dan Bioproses pada Sel', 1),
(2, 'Struktur dan Fungsi Sel Penyusun Jaringan pada Tumbuhan', 2),
(3, 'Struktur dan Fungsi Sel Penyusun Jaringan Hewan', 3),
(4, 'Struktur dan Fungsi Sel Penyusun Jaringan pada Sistem Gerak', 4),
(5, 'Struktur dan Fungsi Sel Penyusun Jaringan pada Sistem Sirkulasi', 5),
(6, 'Struktur dan Fungsi Sel Penyusun Jaringan pada Sistem Pencernaan', 6),
(7, 'Struktur dan Fungsi Sel Penyusun Jaringan pada Sistem Pernapasan/Respirasi', 7),
(8, 'Struktur dan Fungsi Sel Penyusun Jaringan pada Sistem Ekskresi', 8),
(9, 'Struktur dan Fungsi Sel pada Sistem Koordinasi Manusia', 9),
(10, 'Struktur dan Fungsi Sel Penyusun Jaringan pada Sistem Reproduksi', 10),
(11, 'Struktur dan Fungsi Sel-Sel Penyusun Jaringan dalam Sistem Pertahanan Tubuh', 11);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `login` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_user` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `level_user`) VALUES
(1, 'admin1@gmail.com', '$2a$10$QGFZIfjT05AN6pUJzhhicenl0d/49i6aNiz0tUUhbywdfiJGs1khe', '1'),
(2, '199292921992021020', '$2a$10$Rwx0mbwGA6.PYiqc.S1M/.rnj.AqKnyLAQoIA44u6BrYjXGOKfuOu', '2'),
(18, '12345678901', '$2y$10$SMSG35O5Opb1gkPknsZvdOTbY70PKRLmnMgSA9BNqIJF5Cp1wqCgG', '2'),
(19, '512047310', '$2y$10$R86vsvcnwS/dpUlKSGjeBefMnmXU2dS5s0otVC0XApmMEQQ.eBjQ.', '2'),
(23, '123123123', '$2y$10$V9tfoUEM1uYMFEkGkRWPAO4/JxRGA4WZuueWP1EWpu01JQ4TNGh0O', '2'),
(82, '54321', '$2y$10$gua1P2NmtYwYfvm16jCDGO/sTFx3OxVZiAAvB5NAFBXGJ791mLKtG', '2'),
(84, '5623908198', '$2y$10$i4i2oWwah9DZ6dJxtS0GQ.gZoeuge36titAGFzj1jNsW.bN31mW.G', '2'),
(94, '2022040001', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(95, '2022040002', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(96, '2022040003', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(97, '2022040004', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(98, '2022040005', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(99, '2022040006', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(100, '2022040007', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(101, '2022040008', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(102, '2022040009', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(103, '2022040010', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(104, '2022040011', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(105, '2022040012', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(106, '2022040013', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(107, '2022040014', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(108, '2022040015', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(109, '2022040016', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(110, '2022040017', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(111, '2022040018', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(112, '2022040019', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(113, '2022040020', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(114, '2022040021', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(115, '2022040022', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(116, '2022040023', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(117, '2022040024', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(118, '2022040025', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(119, '2022040026', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(120, '2022040027', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(121, '2022040028', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(122, '2022040029', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(123, '2022040030', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(124, '2022040031', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(125, '2022040032', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(126, '2022040033', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(127, '2022040034', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(128, '2022040035', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(129, '2022040036', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(130, '2022040037', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(131, '2022040038', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(132, '2022040039', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(133, '2022040040', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(134, '2022040041', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(135, '2022040042', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(136, '2022040043', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(137, '2022040044', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(138, '2022040045', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(139, '2022040046', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(140, '2022040047', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(141, '2022040048', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(142, '2022040049', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(143, '2022040050', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(144, '2022040051', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(145, '2022040052', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(146, '2022040053', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(147, '2022040054', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(148, '2022040055', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(149, '2022040056', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(150, '2022040057', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(151, '2022040058', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(152, '2022040059', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(153, '2022040060', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(154, '2022040061', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(155, '2022040062', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(156, '2022040063', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(157, '2022040064', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(158, '2022040065', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(159, '2022040066', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(160, '2022040067', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(161, '2022040068', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(162, '2022040069', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(163, '2022040070', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(164, '2022040071', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(165, '2022040072', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(166, '2022040073', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(167, '2022040074', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(168, '2022040075', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(169, '2022040076', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(170, '2022040077', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(171, '2022040078', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(172, '2022040079', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(173, '2022040080', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(174, '2022040081', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(175, '2022040082', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(176, '2022040083', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(177, '2022040084', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(178, '2022040085', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(179, '2022040086', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(180, '2022040087', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(181, '2022040088', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(182, '2022040089', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(183, '2022040090', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(184, '2022040091', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(185, '2022040092', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(186, '2022040093', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(187, '2022040094', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(188, '2022040095', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(189, '2022040096', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(190, '2022040097', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(191, '2022040098', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(192, '2022040099', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(193, '2022040100', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(194, '2022040101', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(195, '2022040102', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(196, '2022040103', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(197, '2022040104', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(198, '2022040105', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(199, '2022040106', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(200, '2022040107', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(201, '2022040108', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(202, '2022040109', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(203, '2022040110', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(204, '2022040111', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(205, '2022040112', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(206, '2022040113', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(207, '2022040114', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(208, '2022040115', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(209, '2022040116', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(210, '2022040117', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(211, '2022040118', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(212, '2022040119', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(213, '2022040120', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(214, '2022040121', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(215, '2022040122', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(216, '2022040123', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(217, '2022040124', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(218, '2022040125', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(219, '2022040126', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(220, '2022040127', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(221, '2022040128', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(222, '2022040129', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(223, '2022040130', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(224, '2022040131', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(225, '2022040132', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(226, '2022040133', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(227, '2022040134', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(228, '2022040135', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(229, '2022040136', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(230, '2022040137', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(231, '2022040138', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(232, '2022040139', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(233, '2022040140', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(234, '2022040141', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(235, '2022040142', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(236, '2022040143', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(237, '2022040144', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(238, '2022040145', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(239, '2022040146', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(240, '2022040147', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(241, '2022040148', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(242, '2022040149', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(243, '2022040150', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_attendance`
--
ALTER TABLE `class_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level_student`
--
ALTER TABLE `level_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_learned`
--
ALTER TABLE `module_learned`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_question`
--
ALTER TABLE `module_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_question_choice`
--
ALTER TABLE `module_question_choice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pre_test_answer`
--
ALTER TABLE `pre_test_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pre_test_result`
--
ALTER TABLE `pre_test_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_topic`
--
ALTER TABLE `sub_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_question`
--
ALTER TABLE `survey_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_result`
--
ALTER TABLE `survey_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `class_attendance`
--
ALTER TABLE `class_attendance`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `level_student`
--
ALTER TABLE `level_student`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `module_learned`
--
ALTER TABLE `module_learned`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `module_question`
--
ALTER TABLE `module_question`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `module_question_choice`
--
ALTER TABLE `module_question_choice`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;

--
-- AUTO_INCREMENT for table `pre_test_answer`
--
ALTER TABLE `pre_test_answer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `pre_test_result`
--
ALTER TABLE `pre_test_result`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `sub_topic`
--
ALTER TABLE `sub_topic`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `survey_question`
--
ALTER TABLE `survey_question`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `survey_result`
--
ALTER TABLE `survey_result`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
