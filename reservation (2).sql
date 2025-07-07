-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 07 juil. 2025 à 08:25
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `reservation`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id_etudiant` int(11) NOT NULL,
  `num_etudiant` varchar(20) NOT NULL,
  `nom_etudiant` varchar(30) NOT NULL,
  `prenom_etudiant` varchar(40) NOT NULL,
  `email_etudiant` varchar(50) NOT NULL,
  `id_filiere` int(11) DEFAULT NULL,
  `id_niveau` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id_etudiant`, `num_etudiant`, `nom_etudiant`, `prenom_etudiant`, `email_etudiant`, `id_filiere`, `id_niveau`) VALUES
(1, 'SE20240001', 'RAKOTOMALALA', 'Tahina', 'tahinarakoto@gmail.com', 1, 1),
(2, 'SE20240002', 'RANDRIANARISOA', 'Feno', 'fenorandria@gmail.com', 2, 1),
(3, 'SE20240003', 'RAZAFINDRAKOTO', 'Soa', 'soarazafin@gmail.com', 1, 1),
(4, 'SE20240004', 'ANDRIAMAHAVITA', 'Voahirana', 'voahiranaandria@gmail.com', 2, 1),
(5, 'SE20240005', 'RAKOTONDRABE', 'Nirina', 'nirinarakoton@gmail.com', 1, 1),
(6, 'SE20240006', 'RAVONINAHITRA', 'Malala', 'malalaravo@gmail.com', 2, 1),
(7, 'SE20240007', 'RASOLOFO', 'Herilala', 'herilalarasolo@gmail.com', 1, 1),
(8, 'SE20240008', 'RAKOTOMANGA', 'Tiana', 'tianarako@gmail.com', 2, 1),
(9, 'SE20240009', 'RAZANADRAKOTO', 'Miora', 'mioraraza@gmail.com', 1, 1),
(10, 'SE20240010', 'RANDRIAMIFIDY', 'Hasina', 'hasinarandriam@gmail.com', 2, 1),
(11, 'SE20240011', 'RAKOTOBE', 'Fara', 'fara.rakotobe@gmail.com', 1, 1),
(12, 'SE20240012', 'RAKOTONIAINA', 'Santatra', 'santatrarako@gmail.com', 2, 1),
(13, 'SE20240013', 'RANDRIANAMBININA', 'Zo', 'zorandrianam@gmail.com', 1, 1),
(14, 'SE20240014', 'RAKOTOMALALA', 'Mampionona', 'mampiononarako@gmail.com', 2, 1),
(15, 'SE20240015', 'RAZAFIMANDIMBY', 'Lova', 'lovarazafi@gmail.com', 1, 1),
(16, 'SE20240016', 'RAKOTOBE', 'Ketaka', 'ketakarakotobe@gmail.com', 2, 1),
(17, 'SE20240017', 'RANDRIANTSALAMA', 'Onja', 'onjarandriant@gmail.com', 1, 1),
(18, 'SE20240018', 'RAZAFINDRAMBAO', 'Ny Aina', 'nyainaraza@gmail.com', 2, 1),
(19, 'SE20240019', 'RAKOTONIRINA', 'Fanilo', 'fanilorakoto@gmail.com', 1, 1),
(20, 'SE20240020', 'RANDRIAMAHERY', 'Fanja', 'fanjarandria@gmail.com', 2, 1),
(21, 'SE20240021', 'RAZAFIMAHATRATRA', 'Mialy', 'mialyrazafi@gmail.com', 1, 1),
(22, 'SE20240022', 'RAKOTOHARILALA', 'Tsiory', 'tsioryrakoto@gmail.com', 2, 1),
(23, 'SE20240023', 'RANDRIAMAMPIANINA', 'Antsa', 'antsarandria@gmail.com', 1, 1),
(24, 'SE20240024', 'RASOLOARISOA', 'Miangaly', 'miangalyrasolo@gmail.com', 2, 1),
(25, 'SE20240025', 'RAKOTONIRINA', 'Fetra', 'fetrarakoto@gmail.com', 1, 1),
(26, 'SE20240026', 'RAZAFINDRAKOTO', 'Hanitra', 'hanitrarazafin@gmail.com', 2, 1),
(27, 'SE20240027', 'RANDRIANTSIMBAZAFY', 'Iarivo', 'iarivorandriant@gmail.com', 1, 1),
(28, 'SE20240028', 'RAKOTONDRABE', 'Toky', 'tokyrako@gmail.com', 2, 1),
(29, 'SE20240029', 'RAKOTOMALALA', 'Diavolantsoa Mullane', 'mullanerakotomalala@gmail.com', 1, 1),
(30, 'SE20240030', 'RANDRIANARIMANANA', 'Fenosoa', 'fenosoarandria@gmail.com', 2, 1),
(31, 'SE20240031', 'RAZAFIMANANTSOA', 'Miora', 'miorarazafi@gmail.com', 1, 1),
(32, 'SE20240032', 'RANDRIANANDRIANINA', 'Tojo', 'tojorandria@gmail.com', 2, 1),
(33, 'SE20240033', 'RAKOTONDRABE', 'Aina', 'ainarakoto@gmail.com', 1, 1),
(34, 'SE20240034', 'RAVALOSON', 'Tiana', 'tianaravaloson@gmail.com', 2, 1),
(35, 'SE20240035', 'RAZAFINDRAKOTO', 'Malala', 'malarazafi@gmail.com', 1, 1),
(36, 'SE20240036', 'RANDRIAMAHERY', 'Feno', 'fenorandria@gmail.com', 2, 1),
(37, 'SE20240037', 'RAKOTONIRINA', 'Tahina', 'tahinarakoto@gmail.com', 1, 1),
(38, 'SE20240038', 'RAKOTOARIMANANA', 'Voahirana', 'voahirana.rakoto@gmail.com', 2, 1),
(39, 'SE20240039', 'RAZAFIMAHATRATRA', 'Nirina', 'nirinarazafi@gmail.com', 1, 1),
(40, 'SE20240040', 'RANDRIANANDRIANINA', 'Malala', 'malalarandria@gmail.com', 2, 1),
(41, 'SE20240041', 'RAKOTONDRABE', 'Herilala', 'herilarakoto@gmail.com', 1, 1),
(42, 'SE20240042', 'RAVOLOMANANA', 'Tiana', 'tianaravolo@gmail.com', 2, 1),
(43, 'SE20240043', 'RAZAFINDRAVAHINY', 'Miora', 'miorarazafi@gmail.com', 1, 1),
(44, 'SE20240044', 'RANDRIAMAMPIANINA', 'Hasina', 'hasinarandria@gmail.com', 2, 1),
(45, 'SE20240045', 'RAKOTOMANGA', 'Fara', 'fararakoto@gmail.com', 1, 1),
(46, 'SE20240046', 'RAKOTOMALALA', 'Santatra', 'santrarakoto@gmail.com', 2, 1),
(47, 'SE20240047', 'RAZAFINDRAMBAO', 'Zo', 'zorazafi@gmail.com', 1, 1),
(48, 'SE20240048', 'RANDRIAMIFIDY', 'Mampionona', 'mampiononarandria@gmail.com', 2, 1),
(49, 'SE20240049', 'RAKOTOBE', 'Lova', 'lovarakoto@gmail.com', 1, 1),
(50, 'SE20240050', 'RAZAFINDRANAHARIJAONA', 'Ketaka', 'ketakarazafi@gmail.com', 2, 1),
(51, 'SE20240051', 'RANDRIANARISOA', 'Onja', 'onjarandria@gmail.com', 1, 1),
(52, 'SE20240052', 'RAKOTOMALALA', 'Ny Aina', 'nyainarakoto@gmail.com', 2, 1),
(53, 'SE20240053', 'RAZAFIMANDIMBY', 'Fanilo', 'fanilorazafi@gmail.com', 1, 1),
(54, 'SE20240054', 'RANDRIANTSALAMA', 'Fanja', 'fanjarandri@gmail.com', 2, 1),
(55, 'SE20240055', 'RAKOTONIAINA', 'Mialy', 'mialyrakoto@gmail.com', 1, 1),
(56, 'SE20240056', 'RAZAFIMAHATRATRA', 'Tsiory', 'tsioryrazafi@gmail.com', 2, 1),
(57, 'SE20240057', 'RANDRIANAMBININA', 'Antsa', 'antsarandria@gmail.com', 1, 1),
(58, 'SE20240058', 'RAKOTONDRABE', 'Miangaly', 'miangalyrakoto@gmail.com', 2, 1),
(59, 'SE20240059', 'RAZAFINDRAKOTO', 'Fetra', 'fetrarazafi@gmail.com', 1, 1),
(60, 'SE20240060', 'RANDRIAMAHERY', 'Hanitra', 'hanitrarandria@gmail.com', 2, 1),
(61, 'SE20240061', 'RAKOTOBE', 'Iarivo', 'iarivorakoto@gmail.com', 1, 1),
(62, 'SE20240062', 'RAZAFINDRAVAHINY', 'Toky', 'tokyrazafi@gmail.com', 2, 1),
(63, 'SE20240063', 'RANDRIANTSIMBAZAFY', 'Diavolantsoa', 'diavorandria@gmail.com', 1, 1),
(64, 'SE20240064', 'RAKOTOMALALA', 'Fenosoa', 'fenosoarakoto@gmail.com', 2, 1),
(65, 'SE20240065', 'RAZAFIMANANTSOA', 'Miora', 'miorarazafi@gmail.com', 1, 1),
(66, 'SE20240066', 'RANDRIANANDRIANINA', 'Tojo', 'tojorandria@gmail.com', 2, 1),
(67, 'SE20240067', 'RAKOTONDRABE', 'Aina', 'ainarakoto@gmail.com', 1, 1),
(68, 'SE20240068', 'RAVALOSON', 'Tiana', 'tianaravaloson@gmail.com', 2, 1),
(69, 'SE20240069', 'RAZAFINDRAKOTO', 'Malala', 'malarazafi@gmail.com', 1, 1),
(70, 'SE20240070', 'RANDRIAMAHERY', 'Feno', 'fenorandria@gmail.com', 2, 1),
(71, 'SE20240071', 'RAKOTONIRINA', 'Tahina', 'tahinarakoto@gmail.com', 1, 1),
(72, 'SE20240072', 'RAKOTOARIMANANA', 'Voahirana', 'voahirana.rakoto@gmail.com', 2, 1),
(73, 'SE20240073', 'RAZAFIMAHATRATRA', 'Nirina', 'nirinarazafi@gmail.com', 1, 1),
(74, 'SE20240074', 'RANDRIANANDRIANINA', 'Malala', 'malalarandria@gmail.com', 2, 1),
(75, 'SE20240075', 'RAKOTONDRABE', 'Herilala', 'herilarakoto@gmail.com', 1, 1),
(76, 'SE20240076', 'RAVOLOMANANA', 'Tiana', 'tianaravolo@gmail.com', 2, 1),
(77, 'SE20240077', 'RAZAFINDRAVAHINY', 'Miora', 'miorarazafi@gmail.com', 1, 1),
(78, 'SE20240078', 'RANDRIAMAMPIANINA', 'Hasina', 'hasinarandria@gmail.com', 2, 1),
(79, 'SE20240079', 'RAKOTOMANGA', 'Fara', 'fararakoto@gmail.com', 1, 1),
(80, 'SE20240080', 'RAKOTOMALALA', 'Santatra', 'santrarakoto@gmail.com', 2, 1),
(81, 'SE20240081', 'RAZAFINDRAMBAO', 'Zo', 'zorazafi@gmail.com', 1, 1),
(82, 'SE20240082', 'RANDRIAMIFIDY', 'Mampionona', 'mampiononarandria@gmail.com', 2, 1),
(83, 'SE20240083', 'RAKOTOBE', 'Lova', 'lovarakoto@gmail.com', 1, 1),
(84, 'SE20240084', 'RAZAFINDRANAHARIJAONA', 'Ketaka', 'ketakarazafi@gmail.com', 2, 1),
(85, 'SE20240085', 'RANDRIANARISOA', 'Onja', 'onjarandria@gmail.com', 1, 1),
(86, 'SE20240086', 'RAKOTOMALALA', 'Ny Aina', 'nyainarakoto@gmail.com', 2, 1),
(87, 'SE20240087', 'RAZAFIMANDIMBY', 'Fanilo', 'fanilorazafi@gmail.com', 1, 1),
(88, 'SE20240088', 'RANDRIANTSALAMA', 'Fanja', 'fanjarandri@gmail.com', 2, 1),
(89, 'SE20240089', 'RAKOTONIAINA', 'Mialy', 'mialyrakoto@gmail.com', 1, 1),
(90, 'SE20240090', 'RAZAFIMAHATRATRA', 'Tsiory', 'tsioryrazafi@gmail.com', 2, 1),
(91, 'SE20240091', 'RANDRIANAMBININA', 'Antsa', 'antsarandria@gmail.com', 1, 1),
(92, 'SE20240092', 'RAKOTONDRABE', 'Miangaly', 'miangalyrakoto@gmail.com', 2, 1),
(93, 'SE20240093', 'RAZAFINDRAKOTO', 'Fetra', 'fetrarazafi@gmail.com', 1, 1),
(94, 'SE20240094', 'RANDRIAMAHERY', 'Hanitra', 'hanitrarandria@gmail.com', 2, 1),
(95, 'SE20240095', 'RAKOTOBE', 'Iarivo', 'iarivorakoto@gmail.com', 1, 1),
(96, 'SE20240096', 'RAZAFINDRAVAHINY', 'Toky', 'tokyrazafi@gmail.com', 2, 1),
(97, 'SE20240097', 'RANDRIANTSIMBAZAFY', 'Diavolantsoa', 'diavorandria@gmail.com', 1, 1),
(98, 'SE20240098', 'RAKOTOMALALA', 'Fenosoa', 'fenosoarakoto@gmail.com', 2, 1),
(99, 'SE20240099', 'RAZAFIMANANTSOA', 'Miora', 'miorarazafi@gmail.com', 1, 1),
(100, 'SE20240100', 'RANDRIANANDRIANINA', 'Tojo', 'tojorandria@gmail.com', 2, 1),
(101, 'SE20240101', 'RAKOTONDRABE', 'Mamy', 'mamyrakoto@gmail.com', 1, 1),
(102, 'SE20240102', 'RANDRIANANDRIANINA', 'Lala', 'lalarandria@gmail.com', 2, 1),
(103, 'SE20240103', 'RAZAFINDRAKOTO', 'Hasina', 'hasinarazafi@gmail.com', 1, 1),
(104, 'SE20240104', 'RAVALOSON', 'Soa', 'soaravaloson@gmail.com', 2, 1),
(105, 'SE20240105', 'RAKOTOMALALA', 'Tiana', 'tianarakoto@gmail.com', 1, 1),
(106, 'SE20240106', 'RANDRIAMAHERY', 'Fetra', 'fetrarandria@gmail.com', 2, 1),
(107, 'SE20240107', 'RAKOTONIRINA', 'Faly', 'falyrakoto@gmail.com', 1, 1),
(108, 'SE20240108', 'RAKOTOARIMANANA', 'Zo', 'zorakoto@gmail.com', 2, 1),
(109, 'SE20240109', 'RAKOTOARIZAO', 'Tiana Fifaliana', 'fifalianatiana4@gmail.com', 1, 1),
(110, 'SE20240110', 'RANDRIANANDRIANINA', 'Noro', 'nororandria@gmail.com', 2, 1),
(111, 'SE20240111', 'RAKOTONDRABE', 'Fanja', 'fanjarakoto@gmail.com', 1, 1),
(112, 'SE20240112', 'RAVOLOMANANA', 'Rija', 'rijaravolo@gmail.com', 2, 1),
(113, 'SE20240113', 'RAZAFINDRAVAHINY', 'Mamy', 'mamirazafi@gmail.com', 1, 1),
(114, 'SE20240114', 'RANDRIAMAMPIANINA', 'Hasina', 'hasinarandria@gmail.com', 2, 1),
(115, 'SE20240115', 'RAKOTOMANGA', 'Tiana', 'tianarakoto@gmail.com', 1, 1),
(116, 'SE20240116', 'RAKOTOMALALA', 'Santatra', 'santrarakoto@gmail.com', 2, 1),
(117, 'SE20240117', 'RAZAFINDRAMBAO', 'Zo', 'zorazafi@gmail.com', 1, 1),
(118, 'SE20240118', 'RANDRIAMIFIDY', 'Mampionona', 'mampiononarandria@gmail.com', 2, 1),
(119, 'SE20240119', 'RAKOTOBE', 'Lova', 'lovarakoto@gmail.com', 1, 1),
(120, 'SE20240120', 'RAZAFINDRANAHARIJAONA', 'Ketaka', 'ketakarazafi@gmail.com', 2, 1),
(121, 'SE20240121', 'RANDRIANARISOA', 'Onja', 'onjarandria@gmail.com', 1, 1),
(122, 'SE20240122', 'RAKOTOMALALA', 'Ny Aina', 'nyainarakoto@gmail.com', 2, 1),
(123, 'SE20240123', 'RAZAFIMANDIMBY', 'Fanilo', 'fanilorazafi@gmail.com', 1, 1),
(124, 'SE20240124', 'RANDRIANTSALAMA', 'Fanja', 'fanjarandri@gmail.com', 2, 1),
(125, 'SE20240125', 'RAKOTONIAINA', 'Mialy', 'mialyrakoto@gmail.com', 1, 1),
(126, 'SE20240126', 'RAZAFIMAHATRATRA', 'Tsiory', 'tsioryrazafi@gmail.com', 2, 1),
(127, 'SE20240127', 'RANDRIANAMBININA', 'Antsa', 'antsarandria@gmail.com', 1, 1),
(128, 'SE20240128', 'RAKOTONDRABE', 'Miangaly', 'miangalyrakoto@gmail.com', 2, 1),
(129, 'SE20240129', 'RAZAFINDRAKOTO', 'Fetra', 'fetrarazafi@gmail.com', 1, 1),
(130, 'SE20240130', 'RANDRIATSOTSY', 'Jade Keyla Irinasoa', 'randjade700@gmail.com', 1, 1),
(131, 'SE20240131', 'RAKOTOMALALA', 'Hery', 'heryrakoto@gmail.com', 1, 1),
(132, 'SE20240132', 'RANDRIANANDRIANINA', 'Noro', 'nororandria@gmail.com', 2, 1),
(133, 'SE20240133', 'RAZAFINDRAVAHINY', 'Tiana', 'tianarazafi@gmail.com', 1, 1),
(134, 'SE20240134', 'RAKOTONIRINA', 'Faly', 'falyrakoto@gmail.com', 2, 1),
(135, 'SE20240135', 'RASOANIAINA', 'Tahinjanahary Marie Zinah', 'marieginah8@gmail.com', 1, 1),
(136, 'SE20240136', 'RANDRIAMAHERY', 'Mamy', 'mamyrandria@gmail.com', 2, 1),
(137, 'SE20240137', 'RAKOTONDRABE', 'Zo', 'zorakoto@gmail.com', 1, 1),
(138, 'SE20240138', 'RAZAFINDRAMBAO', 'Mbola', 'mbolarazafi@gmail.com', 2, 1),
(139, 'SE20240139', 'RANDRIANARISOA', 'Fetra', 'fetrarandria@gmail.com', 1, 1),
(140, 'SE20240140', 'RAKOTOMALALA', 'Santatra', 'santrarakoto@gmail.com', 2, 1),
(141, 'SE20240141', 'RAZAFIMANDIMBY', 'Rija', 'rijarazafi@gmail.com', 1, 1),
(142, 'SE20240142', 'RANDRIANTSALAMA', 'Noro', 'nororandri@gmail.com', 2, 1),
(143, 'SE20240143', 'RAKOTOBE', 'Hasina', 'hasinarakoto@gmail.com', 1, 1),
(144, 'SE20240144', 'RAZAFINDRANAHARIJAONA', 'Mampionona', 'mampiononarazafi@gmail.com', 2, 1),
(145, 'SE20240145', 'RANDRIANAMBININA', 'Ketaka', 'ketakarandria@gmail.com', 1, 1),
(146, 'SE20240146', 'RAKOTONIAINA', 'Zo', 'zorakoto@gmail.com', 2, 1),
(147, 'SE20240147', 'RAZAFIMAHATRATRA', 'Faly', 'falyrazafi@gmail.com', 1, 1),
(148, 'SE20240148', 'RANDRIAMIFIDY', 'Mialy', 'mialyrandria@gmail.com', 2, 1),
(149, 'SE20240149', 'RAKOTONDRABE', 'Fanilo', 'fanilorakoto@gmail.com', 1, 1),
(150, 'SE20240150', 'RAZAFINDRAKOTO', 'Onja', 'onjarazafi@gmail.com', 2, 1),
(151, 'SE20240151', 'RANDRIAMAMPIANINA', 'Ny Aina', 'nyainarandria@gmail.com', 1, 1),
(152, 'SE20240152', 'RAKOTOMANGA', 'Antsa', 'antsarakoto@gmail.com', 2, 1),
(153, 'SE20240153', 'RAZAFINDRAMBAO', 'Miangaly', 'miangalyrazafi@gmail.com', 1, 1),
(154, 'SE20240154', 'RANDRIANANDRIANINA', 'Fetra', 'fetrarandria@gmail.com', 2, 1),
(155, 'SE20240155', 'RAKOTOMALALA', 'Hanitra', 'hanitrarakoto@gmail.com', 1, 1),
(156, 'SE20240156', 'RAZAFIMANDIMBY', 'Tsiory', 'tsioryrazafi@gmail.com', 2, 1),
(157, 'SE20240157', 'RANDRIANTSALAMA', 'Antsa', 'antsarandria@gmail.com', 1, 1),
(158, 'SE20240158', 'RAKOTONDRABE', 'Mampionona', 'mampiononarakoto@gmail.com', 2, 1),
(159, 'SE20240159', 'RAZAFINDRAKOTO', 'Ketaka', 'ketakarazafi@gmail.com', 1, 1),
(160, 'SE20240160', 'RANDRIAMAHERY', 'Onja', 'onjarandria@gmail.com', 2, 1),
(161, 'SE20240161', 'RAKOTOMALALA', 'Mampionona', 'mampiononarakoto@gmail.com', 1, 1),
(162, 'SE20240162', 'RANDRIANANDRIANINA', 'Ny Aina', 'nyainarandria@gmail.com', 2, 1),
(163, 'SE20240163', 'RAZAFIMAHATRATRA', 'Tsiory', 'tsioryrazafi@gmail.com', 1, 1),
(164, 'SE20240164', 'RAKOTONDRABE', 'Hanitra', 'hanitrarakoto@gmail.com', 2, 1),
(165, 'SE20240165', 'RAZAFINDRAVAHINY', 'Antsa', 'antsarazafi@gmail.com', 1, 1),
(166, 'SE20240166', 'RANDRIAMIFIDY', 'Ketaka', 'ketakarandria@gmail.com', 2, 1),
(167, 'SE20240167', 'RAKOTONIAINA', 'Faly', 'falyrakoto@gmail.com', 1, 1),
(168, 'SE20240168', 'RAZAFINDRAMBAO', 'Zo', 'zorazafi@gmail.com', 2, 1),
(169, 'SE20240169', 'RANDRIANARISOA', 'Onja', 'onjarandria@gmail.com', 1, 1),
(170, 'SE20240170', 'RAKOTOMALALA', 'Noro', 'nororakoto@gmail.com', 2, 1),
(171, 'SE20240171', 'RAZAFIMANDIMBY', 'Mialy', 'mialyrazafi@gmail.com', 1, 1),
(172, 'SE20240172', 'RANDRIANTSALAMA', 'Hasina', 'hasinarandria@gmail.com', 2, 1),
(173, 'SE20240173', 'RAKOTOBE', 'Fetra', 'fetrarakoto@gmail.com', 1, 1),
(174, 'SE20240174', 'RAZAFINDRANAHARIJAONA', 'Santatra', 'santrarazafi@gmail.com', 2, 1),
(175, 'SE20240175', 'RANDRIANAMBININA', 'Rija', 'rijarandria@gmail.com', 1, 1),
(176, 'SE20240176', 'RAKOTONDRABE', 'Mbola', 'mbolarakoto@gmail.com', 2, 1),
(177, 'SE20240177', 'RAZAFIMAHATRATRA', 'Faly', 'falyrazafi@gmail.com', 1, 1),
(178, 'SE20240178', 'RANDRIAMIFIDY', 'Fanilo', 'fanilorandria@gmail.com', 2, 1),
(179, 'SE20240179', 'RAKOTONDRABE', 'Zo', 'zorakoto@gmail.com', 1, 1),
(180, 'SE20240180', 'RAZAFINDRAKOTO', 'Mampionona', 'mampiononarazafi@gmail.com', 2, 1),
(181, 'SE20240181', 'RANDRIAMAMPIANINA', 'Ketaka', 'ketakarandria@gmail.com', 1, 1),
(182, 'SE20240182', 'RAKOTOMANGA', 'Onja', 'onjarakoto@gmail.com', 2, 1),
(183, 'SE20240183', 'RAZAFINDRAMBAO', 'Ny Aina', 'nyainarazafi@gmail.com', 1, 1),
(184, 'SE20240184', 'RANDRIANANDRIANINA', 'Antsa', 'antsarandria@gmail.com', 2, 1),
(185, 'SE20240185', 'RAKOTOMALALA', 'Hanitra', 'hanitrarakoto@gmail.com', 1, 1),
(186, 'SE20240186', 'RAZAFIMANDIMBY', 'Tsiory', 'tsioryrazafi@gmail.com', 2, 1),
(187, 'SE20240187', 'RANDRIANTSALAMA', 'Mampionona', 'mampiononarandria@gmail.com', 1, 1),
(188, 'SE20240188', 'RAKOTONDRABE', 'Ketaka', 'ketakarakoto@gmail.com', 2, 1),
(189, 'SE20240189', 'RAZAFINDRAKOTO', 'Onja', 'onjarazafi@gmail.com', 1, 1),
(190, 'SE20240190', 'RANDRIAMAHERY', 'Antsa', 'antsarandria@gmail.com', 2, 1),
(191, 'SE20240191', 'RAVELOSON', 'Andrianavalona Andoniaina', 'amyhjyeh@gmail.com', 1, 1),
(192, 'SE20240192', 'RANDRIANANDRIANINA', 'Zo', 'zorandria@gmail.com', 2, 1),
(193, 'SE20240193', 'RAZAFIMAHATRATRA', 'Mialy', 'mialyrazafi@gmail.com', 1, 1),
(194, 'SE20240194', 'RAKOTONDRABE', 'Noro', 'nororakoto@gmail.com', 2, 1),
(195, 'SE20240195', 'RAZAFINDRAVAHINY', 'Hasina', 'hasinarazafi@gmail.com', 1, 1),
(196, 'SE20240196', 'RANDRIAMIFIDY', 'Rija', 'rijarandria@gmail.com', 2, 1),
(197, 'SE20240197', 'RAKOTONIAINA', 'Santatra', 'santrarakoto@gmail.com', 1, 1),
(198, 'SE20240198', 'RAZAFINDRAMBAO', 'Fetra', 'fetrarazafi@gmail.com', 2, 1),
(199, 'SE20240199', 'RANDRIANARISOA', 'Mbola', 'mbolarandria@gmail.com', 1, 1),
(200, 'SE20240200', 'RAKOTOMALALA', 'Ketaka', 'ketakarakoto@gmail.com', 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

CREATE TABLE `filiere` (
  `id_filiere` int(11) NOT NULL,
  `nom_filiere` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `filiere`
--

INSERT INTO `filiere` (`id_filiere`, `nom_filiere`) VALUES
(1, 'SIO'),
(2, 'TC'),
(3, 'IRD'),
(4, 'MEGP'),
(5, 'BANCASS');

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

CREATE TABLE `niveau` (
  `id_niveau` int(11) NOT NULL,
  `nom_niveau` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `niveau`
--

INSERT INTO `niveau` (`id_niveau`, `nom_niveau`) VALUES
(1, 'L1'),
(2, 'L2'),
(3, 'L3');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id_reservation` int(11) NOT NULL,
  `date_reservation` date NOT NULL,
  `heure_debut_reservation` time NOT NULL,
  `heure_fin_reservation` time NOT NULL,
  `nombre_participant` int(3) DEFAULT NULL,
  `id_salle` int(11) DEFAULT NULL,
  `motif` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `id_salle` int(11) NOT NULL,
  `nom_salle` varchar(20) DEFAULT NULL,
  `etat_salle` varchar(20) DEFAULT NULL,
  `capacite_salle` int(3) NOT NULL,
  `id_type_salle` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `type_salle`
--

CREATE TABLE `type_salle` (
  `id_type_salle` int(11) NOT NULL,
  `nom_type_salle` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id_etudiant`),
  ADD KEY `fk_etudiant_filiere` (`id_filiere`),
  ADD KEY `fk_etudiant_niveau` (`id_niveau`);

--
-- Index pour la table `filiere`
--
ALTER TABLE `filiere`
  ADD PRIMARY KEY (`id_filiere`);

--
-- Index pour la table `niveau`
--
ALTER TABLE `niveau`
  ADD PRIMARY KEY (`id_niveau`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id_reservation`),
  ADD KEY `fk_reservation_salle` (`id_salle`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`id_salle`),
  ADD KEY `fk_salle_type` (`id_type_salle`);

--
-- Index pour la table `type_salle`
--
ALTER TABLE `type_salle`
  ADD PRIMARY KEY (`id_type_salle`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id_etudiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT pour la table `filiere`
--
ALTER TABLE `filiere`
  MODIFY `id_filiere` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `niveau`
--
ALTER TABLE `niveau`
  MODIFY `id_niveau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id_reservation` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `salle`
--
ALTER TABLE `salle`
  MODIFY `id_salle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `type_salle`
--
ALTER TABLE `type_salle`
  MODIFY `id_type_salle` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `fk_etudiant_filiere` FOREIGN KEY (`id_filiere`) REFERENCES `filiere` (`id_filiere`),
  ADD CONSTRAINT `fk_etudiant_niveau` FOREIGN KEY (`id_niveau`) REFERENCES `niveau` (`id_niveau`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `fk_reservation_salle` FOREIGN KEY (`id_salle`) REFERENCES `salle` (`id_salle`);

--
-- Contraintes pour la table `salle`
--
ALTER TABLE `salle`
  ADD CONSTRAINT `fk_salle_type` FOREIGN KEY (`id_type_salle`) REFERENCES `type_salle` (`id_type_salle`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
