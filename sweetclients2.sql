-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2018 at 12:20 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sweetclients2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_province` varchar(500) NOT NULL,
  `c_pro_abbr` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`c_id`, `c_name`, `c_province`, `c_pro_abbr`) VALUES
(1, 'Bagh', 'Azad?Kashmir', 'AJK'),
(2, 'Bhimber', 'Azad?Kashmir', 'AJK'),
(3, 'khuiratta', 'Azad?Kashmir', 'AJK'),
(4, 'Kotli', 'Azad?Kashmir', 'AJK'),
(5, 'Mangla', 'Azad?Kashmir', 'AJK'),
(6, 'Mirpur', 'Azad?Kashmir', 'AJK'),
(7, 'Muzaffarabad', 'Azad?Kashmir', 'AJK'),
(8, 'Plandri', 'Azad?Kashmir', 'AJK'),
(9, 'Rawalakot', 'Azad?Kashmir', 'AJK'),
(10, 'Punch', 'Azad?Kashmir', 'AJK'),
(11, 'Amir?Chah', 'Balochistan', 'Balochistan'),
(12, 'Bazdar', 'Balochistan', 'Balochistan'),
(13, 'Bela', 'Balochistan', 'Balochistan'),
(14, 'Bellpat', 'Balochistan', 'Balochistan'),
(15, 'Bagh', 'Balochistan', 'Balochistan'),
(16, 'Burj', 'Balochistan', 'Balochistan'),
(17, 'Chagai', 'Balochistan', 'Balochistan'),
(18, 'Chah?Sandan', 'Balochistan', 'Balochistan'),
(19, 'Chakku', 'Balochistan', 'Balochistan'),
(20, 'Chaman', 'Balochistan', 'Balochistan'),
(21, 'Chhatr', 'Balochistan', 'Balochistan'),
(22, 'Dalbandin', 'Balochistan', 'Balochistan'),
(23, 'Dera Bugti', 'Balochistan', 'Balochistan'),
(24, 'Dhana Sar', 'Balochistan', 'Balochistan'),
(25, 'Diwana', 'Balochistan', 'Balochistan'),
(26, 'Duki', 'Balochistan', 'Balochistan'),
(27, 'Dushi', 'Balochistan', 'Balochistan'),
(28, 'Duzab', 'Balochistan', 'Balochistan'),
(29, 'Gajar', 'Balochistan', 'Balochistan'),
(30, 'Gandava', 'Balochistan', 'Balochistan'),
(31, 'Garhi Khairo', 'Balochistan', 'Balochistan'),
(32, 'Garruck', 'Balochistan', 'Balochistan'),
(33, 'Ghazluna', 'Balochistan', 'Balochistan'),
(34, 'Girdan', 'Balochistan', 'Balochistan'),
(35, 'Gulistan', 'Balochistan', 'Balochistan'),
(36, 'Gwadar', 'Balochistan', 'Balochistan'),
(37, 'Gwash', 'Balochistan', 'Balochistan'),
(38, 'Hab Chauki', 'Balochistan', 'Balochistan'),
(39, 'Hameedabad', 'Balochistan', 'Balochistan'),
(40, 'Harnai', 'Balochistan', 'Balochistan'),
(41, 'Hinglaj', 'Balochistan', 'Balochistan'),
(42, 'Hoshab', 'Balochistan', 'Balochistan'),
(43, 'Ispikan', 'Balochistan', 'Balochistan'),
(44, 'Jhal', 'Balochistan', 'Balochistan'),
(45, 'Jhal Jhao', 'Balochistan', 'Balochistan'),
(46, 'Jhatpat', 'Balochistan', 'Balochistan'),
(47, 'Jiwani', 'Balochistan', 'Balochistan'),
(48, 'Kalandi', 'Balochistan', 'Balochistan'),
(49, 'Kalat', 'Balochistan', 'Balochistan'),
(50, 'Kamararod', 'Balochistan', 'Balochistan'),
(51, 'Kanak', 'Balochistan', 'Balochistan'),
(52, 'Kandi', 'Balochistan', 'Balochistan'),
(53, 'Kanpur', 'Balochistan', 'Balochistan'),
(54, 'Kapip', 'Balochistan', 'Balochistan'),
(55, 'Kappar', 'Balochistan', 'Balochistan'),
(56, 'Karodi', 'Balochistan', 'Balochistan'),
(57, 'Katuri', 'Balochistan', 'Balochistan'),
(58, 'Kharan', 'Balochistan', 'Balochistan'),
(59, 'Khuzdar', 'Balochistan', 'Balochistan'),
(60, 'Kikki', 'Balochistan', 'Balochistan'),
(61, 'Kohan', 'Balochistan', 'Balochistan'),
(62, 'Kohlu', 'Balochistan', 'Balochistan'),
(63, 'Korak', 'Balochistan', 'Balochistan'),
(64, 'Lahri', 'Balochistan', 'Balochistan'),
(65, 'Lasbela', 'Balochistan', 'Balochistan'),
(66, 'Liari', 'Balochistan', 'Balochistan'),
(67, 'Loralai', 'Balochistan', 'Balochistan'),
(68, 'Mach', 'Balochistan', 'Balochistan'),
(69, 'Mand', 'Balochistan', 'Balochistan'),
(70, 'Manguchar', 'Balochistan', 'Balochistan'),
(71, 'Mashki?Chah', 'Balochistan', 'Balochistan'),
(72, 'Maslti', 'Balochistan', 'Balochistan'),
(73, 'Mastung', 'Balochistan', 'Balochistan'),
(74, 'Mekhtar', 'Balochistan', 'Balochistan'),
(75, 'Merui', 'Balochistan', 'Balochistan'),
(76, 'Mianez', 'Balochistan', 'Balochistan'),
(77, 'Murgha Kibzai', 'Balochistan', 'Balochistan'),
(78, 'Musa Khel Bazar', 'Balochistan', 'Balochistan'),
(79, 'Nagha Kalat', 'Balochistan', 'Balochistan'),
(80, 'Nal', 'Balochistan', 'Balochistan'),
(81, 'Naseerabad', 'Balochistan', 'Balochistan'),
(82, 'Nauroz Kalat', 'Balochistan', 'Balochistan'),
(83, 'Nur Gamma', 'Balochistan', 'Balochistan'),
(84, 'Nushki', 'Balochistan', 'Balochistan'),
(85, 'Nuttal', 'Balochistan', 'Balochistan'),
(86, 'Ormara', 'Balochistan', 'Balochistan'),
(87, 'Palantuk', 'Balochistan', 'Balochistan'),
(88, 'Panjgur', 'Balochistan', 'Balochistan'),
(89, 'Pasni', 'Balochistan', 'Balochistan'),
(90, 'Piharak', 'Balochistan', 'Balochistan'),
(91, 'Pishin', 'Balochistan', 'Balochistan'),
(92, 'Qamruddin Karez', 'Balochistan', 'Balochistan'),
(93, 'Qila Abdullah', 'Balochistan', 'Balochistan'),
(94, 'Qila Ladgasht', 'Balochistan', 'Balochistan'),
(95, 'Qila Safed', 'Balochistan', 'Balochistan'),
(96, 'Qila Saifullah', 'Balochistan', 'Balochistan'),
(97, 'Quetta', 'Balochistan', 'Balochistan'),
(98, 'Rakhni', 'Balochistan', 'Balochistan'),
(99, 'Robat Thana', 'Balochistan', 'Balochistan'),
(100, 'Rodkhan', 'Balochistan', 'Balochistan'),
(101, 'Saindak', 'Balochistan', 'Balochistan'),
(102, 'Sanjawi', 'Balochistan', 'Balochistan'),
(103, 'Saruna', 'Balochistan', 'Balochistan'),
(104, 'Shabaz Kalat', 'Balochistan', 'Balochistan'),
(105, 'Shahpur', 'Balochistan', 'Balochistan'),
(106, 'Sharam Jogizai', 'Balochistan', 'Balochistan'),
(107, 'Shingar', 'Balochistan', 'Balochistan'),
(108, 'Shorap', 'Balochistan', 'Balochistan'),
(109, 'Sibi', 'Balochistan', 'Balochistan'),
(110, 'Sonmiani', 'Balochistan', 'Balochistan'),
(111, 'Spezand', 'Balochistan', 'Balochistan'),
(112, 'Spintangi', 'Balochistan', 'Balochistan'),
(113, 'Sui', 'Balochistan', 'Balochistan'),
(114, 'Suntsar', 'Balochistan', 'Balochistan'),
(115, 'Surab', 'Balochistan', 'Balochistan'),
(116, 'Thalo', 'Balochistan', 'Balochistan'),
(117, 'Tump', 'Balochistan', 'Balochistan'),
(118, 'Turbat', 'Balochistan', 'Balochistan'),
(119, 'Umarao', 'Balochistan', 'Balochistan'),
(120, 'pirMahal', 'Balochistan', 'Balochistan'),
(121, 'Uthal', 'Balochistan', 'Balochistan'),
(122, 'Vitakri', 'Balochistan', 'Balochistan'),
(123, 'Wadh', 'Balochistan', 'Balochistan'),
(124, 'Washap', 'Balochistan', 'Balochistan'),
(125, 'Wasjuk', 'Balochistan', 'Balochistan'),
(126, 'Yakmach', 'Balochistan', 'Balochistan'),
(127, 'Zhob', 'Balochistan', 'Balochistan'),
(128, 'Astor', 'Gilgit Baltistan', 'GB'),
(129, 'Baramula', 'Gilgit Baltistan', 'GB'),
(130, 'Hunza', 'Gilgit Baltistan', 'GB'),
(131, 'Gilgit', 'Gilgit Baltistan', 'GB'),
(132, 'Nagar', 'Gilgit Baltistan', 'GB'),
(133, 'Skardu', 'Gilgit Baltistan', 'GB'),
(134, 'Shangrila', 'Gilgit Baltistan', 'GB'),
(135, 'Shandur', 'Gilgit Baltistan', 'GB'),
(136, 'Bajaur', 'Federally?Administered?Tribal Areas', 'FATA'),
(137, 'Hangu', 'Federally?Administered?Tribal Areas', 'FATA'),
(138, 'Malakand', 'Federally?Administered?Tribal Areas', 'FATA'),
(139, 'Miram Shah', 'Federally?Administered?Tribal Areas', 'FATA'),
(140, 'Mohmand', 'Federally?Administered?Tribal Areas', 'FATA'),
(141, 'Khyber', 'Federally?Administered?Tribal Areas', 'FATA'),
(142, 'Kurram', 'Federally?Administered?Tribal Areas', 'FATA'),
(143, 'North Waziristan', 'Federally?Administered?Tribal Areas', 'FATA'),
(144, 'South Waziristan', 'Federally?Administered?Tribal Areas', 'FATA'),
(145, 'Wana', 'Federally?Administered?Tribal Areas', 'FATA'),
(146, 'Abbottabad', 'Khyber Pakhtunkhwa', 'KPK'),
(147, 'Ayubia', 'Khyber Pakhtunkhwa', 'KPK'),
(148, 'Adezai', 'Khyber Pakhtunkhwa', 'KPK'),
(149, 'Banda Daud Shah', 'Khyber Pakhtunkhwa', 'KPK'),
(150, 'Bannu', 'Khyber Pakhtunkhwa', 'KPK'),
(151, 'Batagram', 'Khyber Pakhtunkhwa', 'KPK'),
(152, 'Birote', 'Khyber Pakhtunkhwa', 'KPK'),
(153, 'Buner', 'Khyber Pakhtunkhwa', 'KPK'),
(154, 'Chakdara', 'Khyber Pakhtunkhwa', 'KPK'),
(155, 'Charsadda', 'Khyber Pakhtunkhwa', 'KPK'),
(156, 'Chitral', 'Khyber Pakhtunkhwa', 'KPK'),
(157, 'Dargai', 'Khyber Pakhtunkhwa', 'KPK'),
(158, 'Darya Khan', 'Khyber Pakhtunkhwa', 'KPK'),
(159, 'Dera Ismail Khan', 'Khyber Pakhtunkhwa', 'KPK'),
(160, 'Drasan', 'Khyber Pakhtunkhwa', 'KPK'),
(161, 'Drosh', 'Khyber Pakhtunkhwa', 'KPK'),
(162, 'Hangu', 'Khyber Pakhtunkhwa', 'KPK'),
(163, 'Haripur', 'Khyber Pakhtunkhwa', 'KPK'),
(164, 'Kalam', 'Khyber Pakhtunkhwa', 'KPK'),
(165, 'Karak', 'Khyber Pakhtunkhwa', 'KPK'),
(166, 'Khanaspur', 'Khyber Pakhtunkhwa', 'KPK'),
(167, 'Kohat', 'Khyber Pakhtunkhwa', 'KPK'),
(168, 'Kohistan', 'Khyber Pakhtunkhwa', 'KPK'),
(169, 'Lakki Marwat', 'Khyber Pakhtunkhwa', 'KPK'),
(170, 'Latamber', 'Khyber Pakhtunkhwa', 'KPK'),
(171, 'Lower Dir', 'Khyber Pakhtunkhwa', 'KPK'),
(172, 'Madyan', 'Khyber Pakhtunkhwa', 'KPK'),
(173, 'Malakand', 'Khyber Pakhtunkhwa', 'KPK'),
(174, 'Mansehra', 'Khyber Pakhtunkhwa', 'KPK'),
(175, 'Mardan', 'Khyber Pakhtunkhwa', 'KPK'),
(176, 'Mastuj', 'Khyber Pakhtunkhwa', 'KPK'),
(177, 'Mongora', 'Khyber Pakhtunkhwa', 'KPK'),
(178, 'Nowshera', 'Khyber Pakhtunkhwa', 'KPK'),
(179, 'Paharpur', 'Khyber Pakhtunkhwa', 'KPK'),
(180, 'Peshawar', 'Khyber Pakhtunkhwa', 'KPK'),
(181, 'Saidu Sharif', 'Khyber Pakhtunkhwa', 'KPK'),
(182, 'Shangla', 'Khyber Pakhtunkhwa', 'KPK'),
(183, 'Sakesar', 'Khyber Pakhtunkhwa', 'KPK'),
(184, 'Swabi', 'Khyber Pakhtunkhwa', 'KPK'),
(185, 'Swat', 'Khyber Pakhtunkhwa', 'KPK'),
(186, 'Tangi', 'Khyber Pakhtunkhwa', 'KPK'),
(187, 'Tank', 'Khyber Pakhtunkhwa', 'KPK'),
(188, 'Thall', 'Khyber Pakhtunkhwa', 'KPK'),
(189, 'Tordher', 'Khyber Pakhtunkhwa', 'KPK'),
(190, 'Upper Dir', 'Khyber Pakhtunkhwa', 'KPK'),
(191, 'Ahmedpur East', 'Punjab', 'PU'),
(192, 'Ahmed Nager Chatha', 'Punjab', 'PU'),
(193, 'Ali Pur', 'Punjab', 'PU'),
(194, 'Arifwala', 'Punjab', 'PU'),
(195, 'Attock', 'Punjab', 'PU'),
(196, 'Basti Malook', 'Punjab', 'PU'),
(197, 'Bhagalchur', 'Punjab', 'PU'),
(198, 'Bhalwal', 'Punjab', 'PU'),
(199, 'Bahawalnagar', 'Punjab', 'PU'),
(200, 'Bahawalpur', 'Punjab', 'PU'),
(201, 'Bhaipheru', 'Punjab', 'PU'),
(202, 'Bhakkar', 'Punjab', 'PU'),
(203, 'Burewala', 'Punjab', 'PU'),
(204, 'Chailianwala', 'Punjab', 'PU'),
(205, 'Chakwal', 'Punjab', 'PU'),
(206, 'Chichawatni', 'Punjab', 'PU'),
(207, 'Chiniot', 'Punjab', 'PU'),
(208, 'Chowk Azam', 'Punjab', 'PU'),
(209, 'Chowk Sarwar Shaheed', 'Punjab', 'PU'),
(210, 'Daska', 'Punjab', 'PU'),
(211, 'Darya Khan', 'Punjab', 'PU'),
(212, 'Dera Ghazi Khan', 'Punjab', 'PU'),
(213, 'Derawar Fort', 'Punjab', 'PU'),
(214, 'Dhaular', 'Punjab', 'PU'),
(215, 'Dina City', 'Punjab', 'PU'),
(216, 'Dinga', 'Punjab', 'PU'),
(217, 'Dipalpur', 'Punjab', 'PU'),
(218, 'Faisalabad', 'Punjab', 'PU'),
(219, 'Fateh Jang', 'Punjab', 'PU'),
(220, 'Gadar', 'Punjab', 'PU'),
(221, 'Ghakhar Mandi', 'Punjab', 'PU'),
(222, 'Gujranwala', 'Punjab', 'PU'),
(223, 'Gujrat', 'Punjab', 'PU'),
(224, 'Gujar Khan', 'Punjab', 'PU'),
(225, 'Hafizabad', 'Punjab', 'PU'),
(226, 'Haroonabad', 'Punjab', 'PU'),
(227, 'Hasilpur', 'Punjab', 'PU'),
(228, 'Haveli Lakha', 'Punjab', 'PU'),
(229, 'Jampur', 'Punjab', 'PU'),
(230, 'Jhang', 'Punjab', 'PU'),
(231, 'Jhelum', 'Punjab', 'PU'),
(232, 'Kalabagh', 'Punjab', 'PU'),
(233, 'Karor Lal Esan', 'Punjab', 'PU'),
(234, 'Kasur', 'Punjab', 'PU'),
(235, 'Kamalia', 'Punjab', 'PU'),
(236, 'Kamokey', 'Punjab', 'PU'),
(237, 'Khanewal', 'Punjab', 'PU'),
(238, 'Khanpur', 'Punjab', 'PU'),
(239, 'Kharian', 'Punjab', 'PU'),
(240, 'Khushab', 'Punjab', 'PU'),
(241, 'Kot Addu', 'Punjab', 'PU'),
(242, 'Jahania', 'Punjab', 'PU'),
(243, 'Jalla Araain', 'Punjab', 'PU'),
(244, 'Jauharabad', 'Punjab', 'PU'),
(245, 'Laar', 'Punjab', 'PU'),
(246, 'Lahore', 'Punjab', 'PU'),
(247, 'Lalamusa', 'Punjab', 'PU'),
(248, 'Layyah', 'Punjab', 'PU'),
(249, 'Lodhran', 'Punjab', 'PU'),
(250, 'Mamoori', 'Punjab', 'PU'),
(251, 'Mandi Bahauddin', 'Punjab', 'PU'),
(252, 'Makhdoom Aali', 'Punjab', 'PU'),
(253, 'Mandi Warburton', 'Punjab', 'PU'),
(254, 'Mailsi', 'Punjab', 'PU'),
(255, 'Mian Channu', 'Punjab', 'PU'),
(256, 'Minawala', 'Punjab', 'PU'),
(257, 'Mianwali', 'Punjab', 'PU'),
(258, 'Multan', 'Punjab', 'PU'),
(259, 'Murree', 'Punjab', 'PU'),
(260, 'Muridke', 'Punjab', 'PU'),
(261, 'Muzaffargarh', 'Punjab', 'PU'),
(262, 'Narowal', 'Punjab', 'PU'),
(263, 'Okara', 'Punjab', 'PU'),
(264, 'Renala Khurd', 'Punjab', 'PU'),
(265, 'Rajan Pur', 'Punjab', 'PU'),
(266, 'Pak Pattan', 'Punjab', 'PU'),
(267, 'Panjgur', 'Punjab', 'PU'),
(268, 'Pattoki', 'Punjab', 'PU'),
(269, 'Pirmahal', 'Punjab', 'PU'),
(270, 'Qila Didar Singh', 'Punjab', 'PU'),
(271, 'Rabwah', 'Punjab', 'PU'),
(272, 'Raiwind', 'Punjab', 'PU'),
(273, 'Rajan Pur', 'Punjab', 'PU'),
(274, 'Rahim Yar Khan', 'Punjab', 'PU'),
(275, 'Rawalpindi', 'Punjab', 'PU'),
(276, 'Rohri', 'Punjab', 'PU'),
(277, 'Sadiqabad', 'Punjab', 'PU'),
(278, 'Safdar Abad ? (Dhaban Singh)', 'Punjab', 'PU'),
(279, 'Sahiwal', 'Punjab', 'PU'),
(280, 'Sangla Hill', 'Punjab', 'PU'),
(281, 'Samberial', 'Punjab', 'PU'),
(282, 'Sarai Alamgir', 'Punjab', 'PU'),
(283, 'Sargodha', 'Punjab', 'PU'),
(284, 'Shakargarh', 'Punjab', 'PU'),
(285, 'Shafqat Shaheed Chowk', 'Punjab', 'PU'),
(286, 'Sheikhupura', 'Punjab', 'PU'),
(287, 'Sialkot', 'Punjab', 'PU'),
(288, 'Sohawa', 'Punjab', 'PU'),
(289, 'Sooianwala', 'Punjab', 'PU'),
(290, 'Sundar (city)', 'Punjab', 'PU'),
(291, 'Talagang', 'Punjab', 'PU'),
(292, 'Tarbela', 'Punjab', 'PU'),
(293, 'Takhtbai', 'Punjab', 'PU'),
(294, 'Taxila', 'Punjab', 'PU'),
(295, 'Toba Tek Singh', 'Punjab', 'PU'),
(296, 'Vehari', 'Punjab', 'PU'),
(297, 'Wah Cantonment', 'Punjab', 'PU'),
(298, 'Wazirabad', 'Punjab', 'PU'),
(299, 'Ali Bandar', 'Sindh', 'Sindh'),
(300, 'Baden', 'Sindh', 'Sindh'),
(301, 'Chachro', 'Sindh', 'Sindh'),
(302, 'Dadu', 'Sindh', 'Sindh'),
(303, 'Digri', 'Sindh', 'Sindh'),
(304, 'Diplo', 'Sindh', 'Sindh'),
(305, 'Dokri', 'Sindh', 'Sindh'),
(306, 'Gadra', 'Sindh', 'Sindh'),
(307, 'Ghanian', 'Sindh', 'Sindh'),
(308, 'Ghauspur', 'Sindh', 'Sindh'),
(309, 'Ghotki', 'Sindh', 'Sindh'),
(310, 'Hala', 'Sindh', 'Sindh'),
(311, 'Hyderabad', 'Sindh', 'Sindh'),
(312, 'Islamkot', 'Sindh', 'Sindh'),
(313, 'Jacobabad', 'Sindh', 'Sindh'),
(314, 'Jamesabad', 'Sindh', 'Sindh'),
(315, 'Jamshoro', 'Sindh', 'Sindh'),
(316, 'Janghar', 'Sindh', 'Sindh'),
(317, 'Jati (Mughalbhin)', 'Sindh', 'Sindh'),
(318, 'Jhudo', 'Sindh', 'Sindh'),
(319, 'Jungshahi', 'Sindh', 'Sindh'),
(320, 'Kandiaro', 'Sindh', 'Sindh'),
(321, 'Karachi', 'Sindh', 'Sindh'),
(322, 'Kashmor', 'Sindh', 'Sindh'),
(323, 'Keti Bandar', 'Sindh', 'Sindh'),
(324, 'Khairpur', 'Sindh', 'Sindh'),
(325, 'Khora', 'Sindh', 'Sindh'),
(326, 'Klupro', 'Sindh', 'Sindh'),
(327, 'Khokhropur', 'Sindh', 'Sindh'),
(328, 'Korangi', 'Sindh', 'Sindh'),
(329, 'Kotri', 'Sindh', 'Sindh'),
(330, 'Kot Sarae', 'Sindh', 'Sindh'),
(331, 'Larkana', 'Sindh', 'Sindh'),
(332, 'Lund', 'Sindh', 'Sindh'),
(333, 'Mathi', 'Sindh', 'Sindh'),
(334, 'Matiari', 'Sindh', 'Sindh'),
(335, 'Mehar', 'Sindh', 'Sindh'),
(336, 'Mirpur Batoro', 'Sindh', 'Sindh'),
(337, 'Mirpur Khas', 'Sindh', 'Sindh'),
(338, 'Mirpur Sakro', 'Sindh', 'Sindh'),
(339, 'Mithi', 'Sindh', 'Sindh'),
(340, 'Mithani', 'Sindh', 'Sindh'),
(341, 'Moro', 'Sindh', 'Sindh'),
(342, 'Nagar Parkar', 'Sindh', 'Sindh'),
(343, 'Naushara', 'Sindh', 'Sindh'),
(344, 'Naudero', 'Sindh', 'Sindh'),
(345, 'Noushero Feroz', 'Sindh', 'Sindh'),
(346, 'Nawabshah', 'Sindh', 'Sindh'),
(347, 'Nazimabad', 'Sindh', 'Sindh'),
(348, 'Naokot', 'Sindh', 'Sindh'),
(349, 'Pendoo', 'Sindh', 'Sindh'),
(350, 'Pokran', 'Sindh', 'Sindh'),
(351, 'Qambar', 'Sindh', 'Sindh'),
(352, 'Qazi Ahmad', 'Sindh', 'Sindh'),
(353, 'Ranipur', 'Sindh', 'Sindh'),
(354, 'Ratodero', 'Sindh', 'Sindh'),
(355, 'Rohri', 'Sindh', 'Sindh'),
(356, 'Saidu Sharif', 'Sindh', 'Sindh'),
(357, 'Sakrand', 'Sindh', 'Sindh'),
(358, 'Sanghar', 'Sindh', 'Sindh'),
(359, 'Shadadkhot', 'Sindh', 'Sindh'),
(360, 'Shahbandar', 'Sindh', 'Sindh'),
(361, 'Shahdadpur', 'Sindh', 'Sindh'),
(362, 'Shahpur Chakar', 'Sindh', 'Sindh'),
(363, 'Shikarpur', 'Sindh', 'Sindh'),
(364, 'Sujawal', 'Sindh', 'Sindh'),
(365, 'Sukkur', 'Sindh', 'Sindh'),
(366, 'Tando Adam', 'Sindh', 'Sindh'),
(367, 'Tando Allahyar', 'Sindh', 'Sindh'),
(368, 'Tando Bago', 'Sindh', 'Sindh'),
(369, 'Tar Ahamd Rind', 'Sindh', 'Sindh'),
(370, 'Thatta', 'Sindh', 'Sindh'),
(371, 'Tujal', 'Sindh', 'Sindh'),
(372, 'Umarkot', 'Sindh', 'Sindh'),
(373, 'Veirwaro', 'Sindh', 'Sindh'),
(374, 'Warah', 'Sindh', 'Sindh'),
(0, 'Islamabad', 'Federal', 'Federal');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(200) NOT NULL,
  `c_business_line` varchar(2000) NOT NULL,
  `c_sector` varchar(200) NOT NULL,
  `c_contact` varchar(500) NOT NULL,
  `c_ec_buyer` varchar(500) NOT NULL,
  `c_user_buyer` varchar(500) NOT NULL,
  `c_tech_buyer` varchar(2000) NOT NULL,
  `c_web` varchar(200) NOT NULL,
  `c_social` varchar(200) NOT NULL,
  `c_address` varchar(200) NOT NULL,
  `c_city` varchar(200) NOT NULL,
  `c_referrals_source` varchar(500) NOT NULL,
  `c_added_by` int(11) NOT NULL,
  `c_added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`c_id`, `c_name`, `c_business_line`, `c_sector`, `c_contact`, `c_ec_buyer`, `c_user_buyer`, `c_tech_buyer`, `c_web`, `c_social`, `c_address`, `c_city`, `c_referrals_source`, `c_added_by`, `c_added_on`) VALUES
(100, 'Unilever', 'Food and Personal Care', 'FMCG', 'NA', 'Shazia Syed', 'NA', 'NA', 'https://www.unilever.com/', 'https://www.facebook.com/unilever/  https://twitter.com/Unilever', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:03'),
(101, 'P&G', 'Personal and Health Care', 'FMCG', 'NA', '', 'NA', 'NA', 'http://us.pg.com/', 'https://www.facebook.com/proctergamble    https://twitter.com/ProcterGamble https://www.youtube.com/user/pgdeutschland', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(102, 'Reckitt Benckiser', 'Health Hygiene and Home Products', 'FMCG', 'NA', 'Sabir Sami', 'NA', 'NA', 'http://www.rb.com/', ' https://twitter.com/discoverRB    https://www.facebook.com/RB.pk', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(103, 'PepsiCo', 'Food', 'FMCG', 'NA', '', 'NA', 'NA', 'http://www.pepsico.com/', 'https://www.facebook.com/pepsipk       https://twitter.com/pepsipakistan      https://www.youtube.com/user/PepsiPakistan         https://www.linkedin.com/company/1288363', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(104, 'Coca Cola', 'Food', '', 'NA', '', 'NA', 'NA', 'http://www.coca-cola.com/global/glp.html', 'https://www.facebook.com/Coca-Cola-1527753387475028/?brand_redir=40796308305   https://twitter.com/CocaCola', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(105, 'British American Tobacco (Pakistan Tobacco Company)', 'cigarette and tobacco', 'FMCG', 'NA', 'Syed Javed Iqbal', 'NA', 'NA', 'http://www.ptc.com.pk/', 'https://www.facebook.com/pages/Pakistan-Tobacco-Company/128831577183391?fref=ts https://www.linkedin.com/company/insidepmi', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(106, 'Philip Morris Pakistan', 'cigarette and tobacco', 'FMCG', 'NA', 'Alexandar Reisch', 'NA', 'NA', 'http://www.philipmorrispakistan.com.pk/', 'https://www.facebook.com/pages/Philip-Morris-Pakistan/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(107, 'Engro Foods', 'Food', 'FMCG', 'NA', '', 'NA', 'NA', 'http://www.engrofoods.com/', 'https://www.facebook.com/Engro-Foods-Ltd-231651929664/?fref=ts\nhttps://twitter.com/EngroFood', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(108, 'Dalda Foods', 'Food', 'FMCG', 'NA', 'Perwaiz khan', 'NA', 'NA', 'http://daldafoods.com/', 'https://www.facebook.com/DaldaFoods/?fref=ts\nhttps://twitter.com/DaldaFoodsPk', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(109, 'Rafhan Maze', 'Food', 'FMCG', 'NA', 'Rashid Ali', 'NA', 'NA', 'http://www.rafhanmaize.com/', 'https://www.facebook.com/RafhanDesserts/?fref=ts', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(110, 'Gourmet Foods', 'Food', 'FMCG', 'NA', 'Muhammad Nawaz Chatha', 'NA', 'NA', 'http://www.gfifoods.com/', 'https://www.facebook.com/GourmetLhr/?fref=ts', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(111, 'Mitchellâ€™s Fruit Farms', 'Food', 'FMCG', 'NA', 'Mujeeb Rashid', 'NA', 'NA', 'http://www.mitchells.com.pk/', 'https://www.facebook.com/Mitchells-Fruit-Farms-Limited-295127280499599/\r\n', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(112, 'Continental Biscuits Pakistan', 'Confectionery', 'FMCG', 'NA', 'Hasan Ali Khan', 'NA', 'NA', 'http://www.continentalbiscuits.com.pk/', 'https://www.facebook.com/continentalbiscuitsltd/                  https://www.linkedin.com/company/continental-biscuit-limited', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(113, 'English Biscuit Manufacturers', 'Confectionery', 'FMCG', 'NA', 'Dr. Zeelaf Munir', 'NA', 'NA', 'http://www.ebm.com.pk/', 'https://www.facebook.com/pages/English-Biscuit-Manufacturers-Pvt-Ltd/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(114, 'Shan Foods Pakistan', 'Food', 'FMCG', 'NA', 'Faisal Mubeen Ganatra', 'NA', 'NA', 'http://shanfoods.com/', 'https://twitter.com/shanfoodsglobal\nhttps://www.facebook.com/ShanFoods/\n', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(115, 'National Foods', 'Food', 'FMCG', 'NA', 'Abrar Hasan', 'NA', 'NA', 'http://nfoods.com/', 'https://twitter.com/nationalfoodspk\nhttps://www.facebook.com/nationalfoodslimited/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(116, 'Colgate-Palmolive', 'Health and Personal Care', 'FMCG', 'NA', 'Zulfiqar Ali Lakhani', 'NA', 'NA', 'http://www.colgate.com/en/us/oc/', 'https://twitter.com/colgate\nhttps://www.facebook.com/Colgate/\r\n', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(117, 'Shezan', 'Food', 'FMCG', 'NA', 'Muneer Shahnawaz', 'NA', 'NA', 'http://www.shezan.biz/', 'https://www.facebook.com/Shezan-International-Ltd-118441978187705/\nhttps://twitter.com/shezanintl\r\n', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(118, 'United Foods Pakistan', 'Food', 'FMCG', 'NA', 'Saeed Najam', 'NA', 'NA', 'http://united-snacks.com/', 'https://twitter.com/unitedfoodco\r\nhttps://www.facebook.com/PakUnitedFoods1', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(119, 'Candy Land Pakistan', 'Confectionery', 'FMCG', 'NA', 'Maqsood Ismail', 'NA', 'NA', 'http://www.ismailindustries.com.pk/', 'https://www.facebook.com/CandylandPk/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(120, 'Mayfair Sweets', 'Confectionery', 'FMCG', 'NA', 'Javed Iqbal', 'NA', 'NA', 'http://www.mayfair.com.pk/', 'https://www.facebook.com/Mayfair-Pakistan-197283227034270/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(121, 'At-Tahur Foods', 'Food', 'FMCG', 'NA', 'Rasikh Elahi', 'NA', 'NA', 'http://www.at-tahur.com/', 'https://www.facebook.com/pages/At-tahur-Dairy-Farm/142699745785946', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(122, 'Hilal Confectionary', 'Confectionery', 'FMCG', 'NA', 'Muhammad Ali Munshi', 'NA', 'NA', 'http://hilalfoods.com.pk/', 'https://twitter.com/hilalcandy\r\nhttps://www.facebook.com/hilal.confectionery/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(123, 'Iffco Pakistan', 'Food and Agriculture', 'FMCG', 'NA', 'Liaqat Ali Chohan', 'NA', 'NA', 'http://www.iffco.com/iffco_international_pakistan.aspx', 'https://twitter.com/iffco https://www.facebook.com/pages/IFFCO-Pakistan/186054808238469', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(124, 'Heinz', 'Food', 'FMCG', 'NA', 'Shahab Rizvi', 'NA', 'NA', '', 'https://twitter.com/heinzketchup_us?lang=en https://www.facebook.com/HeinzKetchup', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(125, 'Adamâ€™s', 'Food', 'FMCG', 'NA', 'Adil Anwar', 'NA', 'NA', 'http://www.adam.com.pk/adamsugar.html', '', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(126, 'Treet', '', 'FMCG', 'NA', 'Syed Shahid Ali', 'NA', 'NA', 'http://treetonline.com/', '', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:04'),
(127, 'Peridot Products', '', 'FMCG', 'NA', 'Gul Nawaz', 'NA', 'NA', 'http://peridotproducts.com/', 'https://twitter.com/peridotproducts\nhttps://www.facebook.com/Peridotproducts/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(128, 'Big Bird Food', 'Food', 'FMCG', 'NA', '', 'NA', 'NA', 'http://www.bigbirdgroup.com.pk/big_bird_foods.php', 'https://twitter.com/bigbird?lang=en\r\nhttps://www.facebook.com/BigBird/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(129, 'Aftab Food Industries', 'Food', 'FMCG', 'NA', 'NA', 'NA', 'NA', 'http://www.aftabfood.com/', 'https://www.facebook.com/pages/AFTAB-FOOD-INDUSTRIES/671980842908183', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(130, 'Mon Salwa', 'Food', 'FMCG', 'NA', 'NA', 'NA', 'NA', 'http://www.monsalwa.com/', 'https://twitter.com/monsalwafoods\r\nhttps://www.facebook.com/monsalwa/\r\n', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(131, 'Qarshi', 'Food', 'FMCG', 'NA', 'Iqbal Ahmed Qarshi      ', 'NA', 'NA', 'http://www.qarshi.com/', 'https://twitter.com/OnlineHCare\nhttps://www.facebook.com/QarshiPakistan/?fref=ts', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(132, 'K&Ns', 'Food', 'FMCG', 'NA', '', 'NA', 'NA', 'http://www.kandns.com/', '', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(133, 'Lotte Kolson (Pvt.) Ltd. [ Formerly K. S. Sulemanji Esmailji & Sons (Pvt.) Ltd. ]', 'Food', 'FMCG', 'NA', 'Abdul Latif', 'NA', 'NA', 'http://www.kolson.biz/', 'https://www.facebook.com/KolsonKsSulemanjiEsmailjiSonsPvtLtd/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(134, 'Menu Foods', 'Food', 'FMCG', 'NA', 'Imran Ejaz', 'NA', 'NA', 'http://menu.com.pk/', 'https://www.facebook.com/seasonsfoods/\nhttps://twitter.com/menufoodtruck?lang=en', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(135, 'Salva Foods', 'Food', 'FMCG', 'NA', 'NA', 'NA', 'NA', 'http://www.salvafoods.com/', 'https://www.facebook.com/salva.foods.1', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(136, 'Sana Foods', 'Food', 'FMCG', 'NA', 'Shamim Ahmed Siddiqui', 'NA', 'NA', 'http://sanafoodproducts.com/', 'https://www.facebook.com/sanafoodsindustries/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(137, 'Shangrila (Pvt) Limited', 'Food', 'FMCG', 'NA', 'Mansoor Ahmed', 'NA', 'NA', 'http://www.shangrila.com.pk/', 'https://www.facebook.com/shangrila.com.pk/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(138, 'Tetley', 'Food', 'FMCG', 'NA', 'NA', 'NA', 'NA', 'http://www.tetley.pk/', 'https://www.facebook.com/TetleyPakistan/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(139, 'Johnson & Johnson', 'Health and Personal Care', 'FMCG', 'NA', 'NA', 'NA', 'NA', 'http://www.jnj.com/', 'https://twitter.com/JNJCares\r\nhttps://www.facebook.com/jnj/\r\n', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(140, 'Volka Food International', 'Food', 'FMCG', 'NA', 'Ch. Zulfiqar Ali Anjum', 'NA', 'NA', 'http://www.volkafood.com/', 'https://www.facebook.com/volkafood/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(141, 'Salman Corp. Pvt. Ltd', 'Food', 'FMCG', 'NA', 'Aqeel Suleiman', 'NA', 'NA', 'http://www.salmancorp.com/', 'https://www.facebook.com/public/Salman-Corporation-(pvt.)-Ltd.', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(142, 'Bisconni ', 'Confectionery', 'FMCG', 'NA', 'Hamid M.Ismail ', 'NA', 'NA', 'http://www.bisconni.com/', 'https://www.facebook.com/BisconniPk/\r\nhttps://twitter.com/bisconnipk', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(143, 'SnackCity ', 'Confectionery', 'FMCG', 'NA', 'Hamid M.Ismail ', 'NA', 'NA', 'http://www.snackcity.com.pk/', 'https://www.facebook.com/snackcity.kurleez', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(144, 'Astro Films', '', 'FMCG', 'NA', 'Javaid Mughal', 'NA', 'NA', 'http://astrofilms.com.pk/web/index.php', 'https://www.facebook.com/pages/Astro-Films/142320002488322\nhttps://twitter.com/astro_films', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(145, 'PK Meat & Food Company', 'Food', 'FMCG', 'NA', 'NA', 'NA', 'NA', 'http://www.pkmeat.com/', 'https://twitter.com/pkmeatpk\nhttps://www.facebook.com/pkmeat/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(146, 'Danpak Food Industries (Pvt.) Ltd', 'Food', 'FMCG', 'NA', 'Mumtaz Anil', 'NA', 'NA', 'http://www.danpakfoods.com/', 'https://www.facebook.com/.../DANPAK-FOOD-INDUSTRIES-PVTLTD/1810442354...', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(147, 'ZA Food Industry Pakistan.', 'Food', 'FMCG', 'NA', 'NA', 'NA', 'NA', 'http://www.zafood.net/', '', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(148, 'Fauji Foods', 'Food', 'FMCG', 'NA', 'Lt Gen Muhammad Haroon Aslam HI(M), S.Bt, (Retd)', 'NA', 'NA', 'http://www.nurpurfoods.com/', 'https://www.facebook.com/FaujiFoods/?fref=ts', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(149, 'Shakarganj Food Products Limited', 'Food', 'FMCG', 'NA', 'Altaf M. Saleem', 'NA', 'NA', 'http://www.shakarganj.com.pk/', 'https://www.facebook.com/Shakarganj-Food-ProductsLtd-214830988616700/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(150, 'Hassad Food', 'Food', 'FMCG', 'NA', '', 'NA', 'NA', 'http://www.hassad.com/English/Pages/default.aspx', 'https://twitter.com/hassadfoods\nhttps://www.facebook.com/pages/Hassad-Food/125912410763371', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(151, 'Silver Lake Food Ltd', 'Food', 'FMCG', 'NA', '', 'NA', 'NA', 'http://www.kims.com.pk/', '', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(152, 'REAL FOODS (PVT.) LTD', 'Food', 'FMCG', 'NA', '', 'NA', 'NA', 'http://realfoodltd.com/', 'https://www.facebook.com/pages/Real-foods-pvt-Ltd/1450243098527662', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(153, 'Ajwa Foods Enterprise', 'Food', 'FMCG', 'NA', '', 'NA', 'NA', 'http://www.ajwafoods.com/', 'https://www.facebook.com/public/Ajwa-Foods', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:05'),
(154, 'Millac Food Pvt Ltd', 'Food', 'FMCG', 'NA', 'Mr. Faisal Farooqi', 'NA', 'NA', 'http://www.millacfoods.com/', '', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(155, 'Dawn Foods', 'Food', 'FMCG', 'NA', '', 'NA', 'NA', 'http://www.dawnfoods.com/', 'https://twitter.com/dawnfoodsuk\nhttps://www.facebook.com/DawnFoods/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(156, 'Taara Foods (Pvt) Ltd.', 'Food', 'FMCG', 'NA', '', 'NA', 'NA', '', 'https://www.facebook.com/pages/TAARA-FOODS-PVT-LTD/288948157912416', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(157, 'Tripple-em Pvt. Ltd', '', 'FMCG', 'NA', 'M. S. Malik', 'NA', 'NA', 'http://tripple-em.com.pk/', 'https://www.facebook.com/TrippleEmPvtLimited/info', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(158, 'The Vision Foods', 'Food', 'FMCG', 'NA', '', 'NA', 'NA', 'http://www.vision-foods.com/', '', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(159, 'United Guar', '', 'FMCG', 'NA', '', 'NA', 'NA', 'http://www.unitedguar.com/', 'https://www.facebook.com/united.guar', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(160, 'United King Foods (Pvt) Ltd', 'Food', 'FMCG', 'NA', 'Hassan Raza', 'NA', 'NA', 'http://www.unitedkingfoods.com/', 'https://www.facebook.com/pages/United-King-Food-PvtLtd/110973465587239', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(161, 'Young\'s (Pvt) Ltd.', 'Food', 'FMCG', 'NA', 'Sohail Younus', 'NA', 'NA', 'http://www.youngsfood.com/', 'https://www.facebook.com/public/Young\'s-Private-Limited', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(162, 'Mothercare', 'Health', 'FMCG', 'NA', '', 'NA', 'NA', 'http://www.mothercare.com/', 'https://twitter.com/mothercarepak\nhttps://www.facebook.com/mothercare.pakistan/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(163, 'L\'oreal', 'Cosmetics and Personal Care', 'FMCG', 'NA', '', 'NA', 'NA', 'http://www.loreal.com/', 'https://www.facebook.com/LorealPakistan\nhttps://twitter.com/lorealpak', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(164, 'Oriflame Cosmetics Pakistan (Pvt) Limited', 'Cosmetics and Personal Care', 'FMCG', 'NA', '', 'NA', 'NA', 'http://pk.oriflame.com/', 'https://twitter.com/weareoriflame\nhttps://www.facebook.com/oriflamepakistanofficialpage/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(165, 'Skin Care Pakistan', 'Cosmetics and Personal Care', 'FMCG', 'NA', 'Yasin Paracha', 'NA', 'NA', 'http://skincarepakistan.com/', '', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(166, 'Vaseline Pakistan', 'Cosmetics and Personal Care', 'FMCG', 'NA', '', 'NA', 'NA', 'http://www.vaseline.com.pk/', 'https://www.facebook.com/VaselinePK\r\nhttps://twitter.com/vaselinepk', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(167, 'Clover Pakistan (PVT) Ltd', '', 'FMCG', 'NA', 'Zulfiqar Ali Lakhani', 'NA', 'NA', 'http://clover.com.pk/', '', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(168, 'Forvil Cosmetics', 'Cosmetics and Personal Care', 'FMCG', 'NA', '', 'NA', 'NA', 'http://www.forvilcosmetics.com/fcws3/', '', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(169, 'W.Woodward Pakistan (Private) Ltd', 'Health', 'FMCG', 'NA', '', 'NA', 'NA', 'http://www.medicamgroup.com/woodward/index.asp', 'https://www.facebook.com/pages/Wwoodward-Pakistan-pvt-ltd/109895962457219', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(170, 'Marriana International', '', 'FMCG', 'NA', 'Tariq Sidiqqui', 'NA', 'NA', 'http://www.medicamgroup.com/marriana/index.asp', 'https://www.facebook.com/Marriana-International-250647764960647/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(171, 'Shield Corporation Ltd.', 'Personal Care', 'FMCG', 'NA', '', 'NA', 'NA', 'http://www.shield.com.pk/', '', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(172, 'Sufi Soap & Chemical Ind. (Pvt) Ltd.', 'Hygiene and Personal Care', 'FMCG', 'NA', 'Tanvir Ahmed Sufi', 'NA', 'NA', 'http://www.sufigroup.biz/', '', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(173, 'Tapal Tea (Pvt) Ltd', 'Food', 'FMCG', 'NA', '', 'NA', 'NA', 'http://tapaltea.com/', 'https://twitter.com/tapalofficial\r\nhttps://www.facebook.com/tapalofficial/\r\n', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(174, 'Engro Fertilizers Limited', 'Food and Agriculture', 'FMCG', 'NA', '', 'NA', 'NA', 'http://engrofertilizers.com/', 'https://twitter.com/engrocorp\nhttps://www.facebook.com/engrofertilizersltd', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(175, 'Fatima Group', '', 'FMCG', 'NA', '', 'NA', 'NA', 'http://www.fatima-group.com/', 'https://www.facebook.com/Fatimafertilizercompany/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(176, 'Habib Oil Mills (Pvt) Ltd.', 'Food', 'FMCG', 'NA', 'Moidul Hassan    ', 'NA', 'NA', 'http://www.hom.com.pk/', 'https://twitter.com/habiboil\r\nhttps://www.facebook.com/HabibOilMills/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(177, 'Haleeb Foods ', 'Food', 'FMCG', 'NA', 'Faisal Malik  ', 'NA', 'NA', 'http://www.haleebfoods.com/', 'https://mbasic.facebook.com/haleebfoods/\r\nhttps://twitter.com/haleebfoodsltd\r\n', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(178, 'ICI Pakistan Limited', 'Chemical', 'FMCG', 'NA', 'Mr. Asif Jooma ', 'NA', 'NA', 'http://www.ici.com.pk/', 'https://www.facebook.com/public/Ici-Pakistan\r\n', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(179, 'Jari Foods (Pvt) Ltd', 'Food', 'FMCG', 'NA', '', 'NA', 'NA', '', 'https://www.facebook.com/JariFoodsPvtLtd/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(180, 'GlaxoSmithKline', 'Health', 'FMCG', 'NA', '', 'NA', 'NA', 'http://www.gsk.com/', 'https://www.facebook.com/GSK\nhttps://twitter.com/GSK\r\n', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(181, 'Zenith Foods - Fresh & Hygienic Meat', 'Food', 'FMCG', 'NA', '', 'NA', 'NA', '', 'https://www.facebook.com/ZenithMeat/', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(182, 'B.P Industries (Pvt) Ltd.', 'Confectionery', 'FMCG', 'NA', '', 'NA', 'NA', 'http://bpsweets.com.pk/', 'https://www.facebook.com/BpIndustries/\r\n', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(183, 'Brother Enterprises (Pvt.) Ltd', '', 'FMCG', 'NA', '', 'NA', 'NA', 'http://www.belgroup.com.pk/', '', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:06'),
(184, 'Leiner Pak Gelatine (Pvt) Ltd.', '', 'FMCG', 'NA', '', 'NA', 'NA', 'http://www.leinerpakgelatine.com/', '', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:07'),
(185, 'Paradise Food Industries (Pvt) Ltd', 'Food', 'FMCG', 'NA', 'Mohammad Zafar Khan', 'NA', 'NA', '', '', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:07'),
(186, 'Tops Food & Beverages', 'Food', 'FMCG', 'NA', '', 'NA', 'NA', '', 'https://www.facebook.com/pages/Tops-foods-and-beverges/296544084014488?fref=ts', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:07'),
(187, 'Golden Harvest Foods (Pvt) Ltd.', 'Food', 'FMCG', 'NA', '', 'NA', 'NA', 'http://www.goldenharvest.com.pk/', 'https://www.facebook.com/pages/Golden-Harvest-Foods-Private-Limited-DAWN-Bread/418078701626585', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:07'),
(188, 'Alokozay International (Pvt) Ltd.', 'Food', 'FMCG', 'NA', 'Abdul Waris', 'NA', 'NA', 'http://www.alokozay.com/agc-network/PK', 'https://www.facebook.com/pages/Alokozay-international-pvt-ltd/108424265877870', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:07'),
(189, 'Shezan Bakers & Confectioners (Pvt) Ltd.', 'Food and Confectionery', 'FMCG', 'NA', 'Humayun A. Shahnawaz', 'NA', 'NA', '', 'https://www.facebook.com/pages/Shezan-Bakers-Confectioners-Pvt-Ltd-Lahore/241325455921059', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:07'),
(190, 'Kidco Manufacturers', 'Confectionery', 'FMCG', 'NA', 'Saqib Rafay  ', 'NA', 'NA', 'http://www.kidco.com.pk/', 'https://www.facebook.com/pages/Kidco-Manufacturers/561732257202555', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:07'),
(191, 'Pearl Confectionery (Pvt.) Ltd.', 'Confectionery', 'FMCG', 'NA', 'Amir Ali Morani', 'NA', 'NA', 'http://www.pearlfoodind.com/', 'https://www.facebook.com/PearlConfectioneryPvtLimited', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:07'),
(192, 'Shahi Enterprises (Pvt) Ltd.', '', 'FMCG', 'NA', 'NA', 'NA', 'NA', '', 'https://www.facebook.com/pages/Shahi-Enterprises-Pvt-Ltd', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:07'),
(193, 'Hamdard Laboratories', '', 'FMCG', 'NA', '', 'NA', 'NA', 'http://www.hamdard.com.pk', 'https://www.facebook.com/public/Hamdard-Laboratories', 'NA', 'NA', 'NA', 0, '2016-10-03 07:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `deal`
--

CREATE TABLE `deal` (
  `d_id` int(11) NOT NULL,
  `kc_id` int(11) NOT NULL,
  `d_primary_staff` int(11) NOT NULL,
  `d_secondary_staff` int(11) NOT NULL,
  `d_stage` varchar(200) NOT NULL,
  `d_est_size` float NOT NULL,
  `d_probability` float NOT NULL,
  `d_weighted_forcast` float NOT NULL,
  `d_expected_close_date` date NOT NULL,
  `d_name` varchar(300) NOT NULL,
  `d_added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `d_added_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deal`
--

INSERT INTO `deal` (`d_id`, `kc_id`, `d_primary_staff`, `d_secondary_staff`, `d_stage`, `d_est_size`, `d_probability`, `d_weighted_forcast`, `d_expected_close_date`, `d_name`, `d_added_on`, `d_added_by`) VALUES
(3, 5, 1, 1, 'Prospect', 444444, 55, 244444, '2016-10-30', 'The Deal', '2016-09-29 07:13:36', 1),
(4, 6, 1, 1, 'Lead', 1000, 10, 100, '2016-10-20', 't', '2016-10-03 08:42:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `deal_history`
--

CREATE TABLE `deal_history` (
  `dh_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `dh_stage` int(11) NOT NULL,
  `dh_estimated_size` int(11) NOT NULL,
  `dh_probability` int(11) NOT NULL,
  `dh_weighted_forcast` int(11) NOT NULL,
  `dh_expected_close_date` int(11) NOT NULL,
  `dh_added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dh_added_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deal_history`
--

INSERT INTO `deal_history` (`dh_id`, `d_id`, `dh_stage`, `dh_estimated_size`, `dh_probability`, `dh_weighted_forcast`, `dh_expected_close_date`, `dh_added_on`, `dh_added_by`) VALUES
(4, 3, 0, 444444, 55, 244444, 2016, '2016-09-29 07:13:36', 1),
(5, 4, 0, 1000, 10, 100, 2016, '2016-10-03 08:42:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `deal_product`
--

CREATE TABLE `deal_product` (
  `d_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `dp_price` float NOT NULL,
  `dp_probability` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deal_product`
--

INSERT INTO `deal_product` (`d_id`, `p_id`, `dp_price`, `dp_probability`) VALUES
(3, 1, 123123, 50),
(3, 3, 321321, 60),
(4, 1, 1000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `deal_staff`
--

CREATE TABLE `deal_staff` (
  `d_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deal_staff`
--

INSERT INTO `deal_staff` (`d_id`, `s_id`) VALUES
(3, 2),
(3, 18),
(4, 1),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `key_contact`
--

CREATE TABLE `key_contact` (
  `kc_id` int(11) NOT NULL,
  `kc_name` varchar(300) NOT NULL,
  `kc_position` varchar(300) NOT NULL,
  `kc_email` varchar(300) NOT NULL,
  `kc_mobile` varchar(300) NOT NULL,
  `kc_status` varchar(300) NOT NULL,
  `kc_added_by` int(11) NOT NULL,
  `kc_added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `key_contact`
--

INSERT INTO `key_contact` (`kc_id`, `kc_name`, `kc_position`, `kc_email`, `kc_mobile`, `kc_status`, `kc_added_by`, `kc_added_on`, `c_id`) VALUES
(5, 'Imran Khan', 'CEO', 'im@khan.com', '090076192', 'Open', 1, '2016-09-29 07:12:35', 5),
(6, 't', 't', 't', 't', 'Open', 1, '2016-10-03 08:41:59', 100);

-- --------------------------------------------------------

--
-- Table structure for table `key_contact_history`
--

CREATE TABLE `key_contact_history` (
  `kch_id` int(11) NOT NULL,
  `kc_id` int(11) NOT NULL,
  `kch_status` varchar(300) NOT NULL,
  `kch_added_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `kch_added_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `key_contact_history`
--

INSERT INTO `key_contact_history` (`kch_id`, `kc_id`, `kch_status`, `kch_added_on`, `kch_added_by`) VALUES
(5, 5, 'Open', '2016-09-29 07:12:35', 1),
(6, 6, 'Open', '2016-10-03 08:42:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
  `me_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `kc_id` int(11) NOT NULL,
  `me_channel` varchar(300) NOT NULL,
  `me_outcome` varchar(3000) NOT NULL,
  `me_added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `me_added_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meeting`
--

INSERT INTO `meeting` (`me_id`, `d_id`, `kc_id`, `me_channel`, `me_outcome`, `me_added_on`, `me_added_by`) VALUES
(1, 3, 5, 'F2F', 'Not Good ', '2016-09-29 09:12:33', 1),
(2, 4, 6, 'F2F', 'out', '2016-10-25 19:00:00', 1),
(3, 4, 6, 'F2F', 'come', '2016-10-02 19:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `m_id` int(11) NOT NULL,
  `m_sent_by` int(11) NOT NULL,
  `m_sent_to` int(11) NOT NULL,
  `m_sent_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `p_name`) VALUES
(1, 'Product 1'),
(2, 'Product 2'),
(3, 'Product 3'),
(4, 'Product 4'),
(5, 'Product 5'),
(6, 'Product 6');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `s_id` int(11) NOT NULL,
  `s_email` varchar(200) NOT NULL,
  `s_password` varchar(200) NOT NULL,
  `s_name` varchar(200) NOT NULL,
  `s_picture` varchar(200) NOT NULL,
  `s_post` varchar(200) NOT NULL,
  `s_address` varchar(200) NOT NULL,
  `s_city` varchar(200) NOT NULL,
  `s_added_by` int(11) NOT NULL DEFAULT '0',
  `s_added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`s_id`, `s_email`, `s_password`, `s_name`, `s_picture`, `s_post`, `s_address`, `s_city`, `s_added_by`, `s_added_on`) VALUES
(2, 'ahsan.tahir@sweetreferrals.com', '8df26605171d862b823430a4501f4c18', 'Ahsan Tahir', 'profilepics/ahsan.jpg', 'CEO', 'F11', 'Islamabad', 1, '2016-09-22 08:32:40'),
(18, 'subayyal@gmail.com', '8df26605171d862b823430a4501f4c18', 'Subayyal', 'profilepics/13522006_1210409598983826_1025752778841530447_n.jpg', 'Application Engineer', 'Office No 15, 2nd floor,trade center F-11 Markaz,Islamabad', 'Islamabad', 0, '2016-09-22 10:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `t_id` int(11) NOT NULL,
  `t_text` varchar(1000) NOT NULL,
  `t_date` date NOT NULL,
  `t_for` int(11) NOT NULL,
  `t_added_on` timestamp NOT NULL,
  `t_added_by` int(11) NOT NULL,
  `t_meeting` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`t_id`, `t_text`, `t_date`, `t_for`, `t_added_on`, `t_added_by`, `t_meeting`) VALUES
(1, 'Die', '2016-10-08', 18, '0000-00-00 00:00:00', 1, 1),
(2, 'NA', '2016-10-03', 1, '0000-00-00 00:00:00', 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `deal`
--
ALTER TABLE `deal`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `deal_history`
--
ALTER TABLE `deal_history`
  ADD PRIMARY KEY (`dh_id`);

--
-- Indexes for table `key_contact`
--
ALTER TABLE `key_contact`
  ADD PRIMARY KEY (`kc_id`);

--
-- Indexes for table `key_contact_history`
--
ALTER TABLE `key_contact_history`
  ADD PRIMARY KEY (`kch_id`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`me_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;
--
-- AUTO_INCREMENT for table `deal`
--
ALTER TABLE `deal`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `deal_history`
--
ALTER TABLE `deal_history`
  MODIFY `dh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `key_contact`
--
ALTER TABLE `key_contact`
  MODIFY `kc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `key_contact_history`
--
ALTER TABLE `key_contact_history`
  MODIFY `kch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `meeting`
--
ALTER TABLE `meeting`
  MODIFY `me_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
