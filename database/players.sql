-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Mag 23, 2024 alle 13:24
-- Versione del server: 8.0.34
-- Versione PHP: 8.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `players`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `players`
--

CREATE TABLE `players` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `team` varchar(255) NOT NULL,
  `former` varchar(255) NOT NULL,
  `nat` varchar(255) NOT NULL,
  `debut` int NOT NULL,
  `age` int NOT NULL,
  `league` varchar(255) NOT NULL,
  `pos` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `continent` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `players`
--

INSERT INTO `players` (`id`, `name`, `team`, `former`, `nat`, `debut`, `age`, `league`, `pos`, `img`, `continent`) VALUES
(1, 'Oscarinin', 'Fnatic', 'GIANTX!G2', 'Spain', 2018, 2003, 'LEC', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/3/3f/FNC_Oscarinin_2024_Split_1.png/revision/latest?cb=20240112175921', 'Europe'),
(2, 'Razork', 'Fnatic', 'Heretics!GIANTX', 'Spain', 2016, 2000, 'LEC', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/8/81/FNC_Razork_2024_Split_1.png/revision/latest?cb=20240112180052', 'Europe'),
(3, 'Humanoid', 'Fnatic', 'MAD Lions KOI', 'Czech', 2015, 2000, 'LEC', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/5/55/FNC_Humanoid_2024_Split_1.png/revision/latest?cb=20240112180230', 'Europe'),
(4, 'Noah', 'Fnatic', 'KT Rolster', 'South Korea', 2018, 2001, 'LEC', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/9/98/FNC_Noah_2024_Split_1.png/revision/latest?cb=20240112180327', 'Asia'),
(5, 'Jun', 'Fnatic', 'DRX!Kwangdong Freecs', 'South Korea', 2020, 2000, 'LEC', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/e/e0/FNC_Jun_2024_Split_1.png/revision/latest?cb=20240112175629', 'Asia'),
(6, 'BrokenBlade', 'G2', '', 'Turkey/German', 2016, 2000, 'LEC', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/5/50/G2_BrokenBlade_2024_Split_1.png/revision/latest?cb=20240112204721', 'Europe'),
(7, 'Yike', 'G2', '', 'Sweden/Peru', 2019, 2000, 'LEC', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/9/98/G2_Yike_2024_Split_1.png/revision/latest?cb=20240112204820', 'Europe'),
(8, 'Caps', 'G2', 'Fnatic', 'Denmark', 2015, 1999, 'LEC', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/8/84/G2_Caps_2024_Split_1.png/revision/latest?cb=20240112204734', 'Europe'),
(9, 'Hans Sama', 'G2', 'Team Liquid/Rogue', 'France', 2014, 1999, 'LEC', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/1/1c/G2_Hans_Sama_2024_Split_1.png/revision/latest?cb=20240112204748', 'Europe'),
(10, 'Mikyx', 'G2', 'Fnatic!Excel', 'Slovenia', 2014, 1998, 'LEC', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/7/7c/G2_Mikyx_2024_Split_1.png/revision/latest?cb=20240112204801', 'Europe'),
(11, 'Odoamne', 'GIANTX', 'Rogue', 'Romania', 2013, 1995, 'LEC', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/6/66/GX_Odoamne_2024_Split_1.png/revision/latest?cb=20240112204932', 'Europe'),
(12, 'Peach', 'GIANTX', 'DRX', 'South Korea', 2020, 2000, 'LEC', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/f/f8/GX_Peach_2024_Split_1.png/revision/latest/scale-to-width-down/220?cb=20240112205022', 'Asia'),
(13, 'Jackies', 'GIANTX', '', 'Czech', 2020, 2004, 'LEC', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/1/17/GX_Jackies_2024_Split_1.png/revision/latest?cb=20240112204913', 'Europe'),
(14, 'Patrik', 'GIANTX', '', 'Czech', 2015, 2000, 'LEC', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/d/dd/GX_Patrik_2024_Split_1.png/revision/latest?cb=20240112204948', 'Europe'),
(15, 'IgNar', 'GIANTX', 'FlyQuest!KT Rolster!Immortals!Dignitas!NRG', 'South Korea', 2015, 1996, 'LEC', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/9/9c/GX_IgNar_2024_Split_1.png/revision/latest?cb=20240112204902', 'Asia'),
(16, 'Cabochard', 'Karmine Corp', 'Vitality', 'France', 2013, 1997, 'LEC', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/8/85/KC_Cabochard_2024_Split_1.png/revision/latest?cb=20240112205130', 'Europe'),
(17, 'Bo', 'Karmine Corp', 'Vitality!FPX', 'China', 2020, 2002, 'LEC', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/b/bb/KC_Bo_2024_Split_1.png/revision/latest?cb=20240112205115', 'Asia'),
(18, 'Saken', 'Karmine Corp', 'Vitality', 'France', 2016, 1998, 'LEC', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/7/79/KC_SAKEN_2024_Split_1.png/revision/latest?cb=20240112205145', 'Europe'),
(19, 'Upset', 'Karmine Corp', 'Vitality!Fnatic!G2!GIANTX', 'Germany', 2016, 1999, 'LEC', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/6/6f/KC_Upset_2024_Split_1.png/revision/latest?cb=20240112205216', 'Europe'),
(20, 'Targamas', 'Karmine Corp', 'GIANTX!G2!Vitality!Fnatic', 'Belgium', 2016, 2000, 'LEC', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/c/cb/KC_Targamas_2024_Split_1.png/revision/latest?cb=20240112205158', 'Europe'),
(21, 'Myrwn', 'MAD Lions KOI', 'Heretics', 'Spain', 2019, 2003, 'LEC', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/0/0c/MDK_Myrwn_2024_Split_1.png/revision/latest?cb=20240112205431', 'Europe'),
(22, 'Elyoya', 'MAD Lions KOI', '', 'Spain', 2018, 2000, 'LEC', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/7/75/MDK_Elyoya_2024_Split_1.png/revision/latest?cb=20240112205351', 'Europe'),
(23, 'Fresskowy', 'MAD Lions KOI', 'G2', 'Poland', 2017, 1999, 'LEC', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/9/95/MDK_Fresskowy_2024_Split_1.png/revision/latest?cb=20240112205417', 'Europe'),
(24, 'Supa', 'MAD Lions KOI', 'G2', 'Spain', 2019, 2000, 'LEC', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/b/be/MDK_Supa_2024_Split_1.png/revision/latest?cb=20240112205446', 'Europe'),
(25, 'Alvaro', 'MAD Lions KOI', 'G2', 'Spain', 2018, 2003, 'LEC', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/d/d6/MDK_Alvaro_2024_Split_1.png/revision/latest?cb=20240112205311', 'Europe'),
(26, 'Finn', 'Rogue', 'GIANTX', 'Sweden', 2017, 1999, 'LEC', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/a/ab/AST_Finn_2023_Split_3.png/revision/latest/scale-to-width-down/1024?cb=20231123135812', 'Europe'),
(27, 'Markoon', 'Rogue', 'SK Gaming!GIANTX!G2', 'Netherlands', 2018, 2002, 'LEC', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/a/aa/RGE_Markoon_2024_Split_1.png/revision/latest?cb=20240112205539', 'Europe'),
(28, 'Larssen', 'Rogue', 'MAD Lions', 'Sweden', 2015, 2000, 'LEC', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/4/45/RGE_Larssen_2024_Split_1.png/revision/latest?cb=20240112205525', 'Europe'),
(29, 'Comp', 'Rogue', 'Vitality!MAD Lions KOI', 'Greece', 2015, 2001, 'LEC', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/2/21/RGE_Comp_2024_Split_1.png/revision/latest?cb=20240112205510', 'Europe'),
(30, 'Zoelys', 'Rogue', '', 'France', 2020, 2003, 'LEC', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/8/81/RGE_Zoelys_2024_Split_1.png/revision/latest?cb=20240112205645', 'Europe'),
(31, 'Irrelevant', 'SK Gaming', '', 'Germany', 2020, 2001, 'LEC', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/5/51/SK_Irrelevant_2024_Split_1.png/revision/latest?cb=20240112205738', 'Europe'),
(32, 'Isma', 'SK Gaming', '', 'France/Belgium', 2020, 0, 'LEC', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/d/d3/SK_ISMA_2024_Split_1.png/revision/latest?cb=20240112205754', 'Europe'),
(33, 'Nisqy', 'SK Gaming', 'Fnatic!MAD Lions KOI!Cloud9', 'Belgium/Turkey', 2015, 1998, 'LEC', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/c/cd/SK_Nisqy_2024_Split_1.png/revision/latest?cb=20240112205807', 'Europe'),
(34, 'Exakick', 'SK Gaming', '', 'France', 2018, 2003, 'LEC', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/d/d9/SK_Exakick_2024_Split_1.png/revision/latest?cb=20240112205722', 'Europe'),
(35, 'Doss', 'SK Gaming', '', 'Denmark', 2018, 1999, 'LEC', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/9/91/SK_Doss_2024_Split_1.png/revision/latest?cb=20240112205704', 'Europe'),
(36, 'Adam', 'Team BDS', 'Fnatic!Karmine Corp', 'France', 2019, 2001, 'LEC', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/d/da/BDS_Adam_2024_Split_1.png/revision/latest?cb=20240112204110', 'Europe'),
(37, 'Sheo', 'Team BDS', 'SK Gaming', 'France', 2020, 2001, 'LEC', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/b/bf/BDS_Sheo_2024_Split_1.png/revision/latest?cb=20240112204240', 'Europe'),
(38, 'nuc', 'Team BDS', 'Karmine Corp', 'France', 2019, 2002, 'LEC', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/1/17/BDS_nuc_2024_Split_1.png/revision/latest?cb=20240112204210', 'Europe'),
(39, 'Ice', 'Team BDS', '', 'South Korea', 2019, 2001, 'LEC', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/4/4f/BDS_Ice_2024_Split_1.png/revision/latest?cb=20240112204133', 'Asia'),
(40, 'Labrov', 'Team BDS', 'Vitality', 'Greece', 2016, 2002, 'LEC', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/0/08/BDS_Labrov_2024_Split_1.png/revision/latest?cb=20240112204157', 'Europe'),
(41, 'Wunder', 'Heretics', 'Fnatic!G2', 'Denmark', 2014, 1998, 'LEC', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/e/e4/TH_Wunder_2024_Split_1.png/revision/latest?cb=20240112205948', 'Europe'),
(42, 'Jankos', 'Heretics', 'G2', 'Poland', 2013, 1995, 'LEC', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/5/5c/TH_Jankos_2024_Split_1.png/revision/latest?cb=20240112205856', 'Europe'),
(43, 'Zwyroo', 'Heretics', '', 'Poland', 2017, 1998, 'LEC', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/5/59/HRTS_Zwyroo_2024_Split_1.png/revision/latest?cb=20240202153452', 'Europe'),
(44, 'Flakked', 'Heretics', 'G2!MAD Lions KOI', 'Spain', 2018, 2001, 'LEC', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/f/fc/TH_Flakked_2024_Split_1.png/revision/latest?cb=20240112205834', 'Europe'),
(45, 'Trymbi', 'Heretics', 'Fnatic!MAD Lions KOI!Rogue!SK Gaming!G2!Heretics', 'Poland', 2017, 2000, 'LEC', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/5/54/FNC_Trymbi_2023_Split_3.png/revision/latest/scale-to-width-down/1024?cb=20231123135925', 'Europe'),
(46, 'Photon', 'Vitality', 'T1;GENG', 'South Korea', 2019, 2001, 'LEC', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/e/e2/VIT_Photon_2024_Split_1.png/revision/latest?cb=20240112210100', 'Asia'),
(47, 'Daglas', 'Vitality', '', 'Poland', 2021, 2005, 'LEC', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/f/fd/VIT_Daglas_2024_Split_1.png/revision/latest?cb=20240112210031', 'Europe'),
(48, 'Vetheo', 'Vitality', 'Heretics!GIANTX', 'France', 2019, 2002, 'LEC', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/b/ba/VIT_Vetheo_2024_Split_1.png/revision/latest?cb=20240112210118', 'Europe'),
(49, 'Carzzy', 'Vitality', 'MAD Lions KOI', 'Czech', 2016, 2002, 'LEC', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/f/f0/VIT_Carzzy_2024_Split_1.png/revision/latest?cb=20240112210012', 'Europe'),
(50, 'Hylissang', 'Vitality', 'MAD Lions KOI!Fnatic', 'Bulgaria', 2014, 1995, 'LEC', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/0/0d/VIT_Hylissang_2024_Split_1.png/revision/latest?cb=20240112210046', 'Europe'),
(51, 'Kingen', 'Dplus KIA', 'DRX!Hanwha Life!KT Rolster', 'South Korea', 2017, 2000, 'LCK', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/f/f7/DK_Kingen_2024_Split_1.png/revision/latest?cb=20240212100205', 'Asia'),
(52, 'Lucid', 'Dplus KIA', '', 'South Korea', 2020, 2005, 'LCK', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/4/48/DK_Lucid_2024_Split_1.png/revision/latest?cb=20240212100149', 'Asia'),
(53, 'Showmaker', 'Dplus KIA', '', 'South Korea', 2017, 2000, 'LCK', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/f/f5/DK_ShowMaker_2024_Split_1.png/revision/latest?cb=20240212100147', 'Asia'),
(54, 'Aiming', 'Dplus Kia', 'KT Rolster', 'South Korea', 2016, 2000, 'LCK', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/a/a3/DK_Aiming_2024_Split_1.png/revision/latest?cb=20240212100146', 'Asia'),
(55, 'Kellin', 'Dplus KIA', 'NS RedForce!GENG', 'South Korea', 2018, 2001, 'LCK', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/0/02/DK_Kellin_2024_Split_1.png/revision/latest?cb=20240212100145', 'Asia'),
(56, 'Rascal', 'DRX', 'KT Rolster!GENG', 'South Korea', 2017, 1997, 'LCK', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/1/15/DRX_Rascal_2024_Split_1_2.png/revision/latest/scale-to-width-down/220?cb=20240306153602', 'Asia'),
(57, 'Sponge', 'DRX', '', 'South Korea', 2021, 2004, 'LCK', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/3/31/DRX_Sponge_2024_Split_1_2.png/revision/latest?cb=20240306153558', 'Asia'),
(58, 'kyeahoo', 'DRX', 'Kwangdong Freecs', 'South Korea', 2021, 2005, 'LCK', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/f/f0/DRX_kyeahoo_2024_Split_1_2.png/revision/latest?cb=20240306153557', 'Asia'),
(59, 'Teddy', 'DRX', 'Kwangdong Freecs!T1', 'South Korea', 2016, 1998, 'LCK', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/a/a0/DRX_Teddy_2024_Split_1_2.png/revision/latest?cb=20240306153601', 'Asia'),
(60, 'Pleata', 'DRX', '', 'South Korea', 2019, 2003, 'LCK', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/7/7f/DRX_Pleata_2024_Split_1_2.png/revision/latest?cb=20240306153600', 'Asia'),
(61, 'Clear', 'FearX', 'DRX', 'South Korea', 2020, 2002, 'LCK', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/7/76/FOX_Clear_2024_Split_1.png/revision/latest?cb=20240304180203', 'Asia'),
(62, 'Willer', 'FearX', 'Hanwha Life!GENG!T1', 'South Korea', 2020, 2003, 'LCK', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/a/a1/FOX_Willer_2024_Split_1.png/revision/latest?cb=20240304175444', 'Asia'),
(66, 'Kiin', 'GENG', 'KT Rolster!Kwangdong Freecs', 'South Korea', 2017, 1999, 'LCK', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/a/a5/GEN_Kiin_2024_Split_1.png/revision/latest/scale-to-width-down/220?cb=20240305181918', 'Asia'),
(63, 'Clozer', 'FearX', 'T1', 'South Korea', 2019, 2003, 'LCK', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/9/9a/FOX_Clozer_2024_Split_1.png/revision/latest?cb=20240304180645', 'Asia'),
(64, 'Hena', 'FearX', 'OK BRION', 'South Korea', 2019, 1999, 'LCK', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/a/a8/FOX_Hena_2024_Split_1.png/revision/latest?cb=20240304181141', 'Asia'),
(65, 'Execute', 'FearX', '', 'South Korea', 2019, 2000, 'LCK', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/9/98/FOX_Execute_2024_Split_1.png/revision/latest?cb=20240304182913', 'Asia'),
(67, 'Canyon', 'GENG', 'Dplus KIA', 'South Korea', 2018, 2001, 'LCK', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/3/38/GEN_Canyon_2024_Split_1.png/revision/latest?cb=20240305182159', 'Asia'),
(68, 'Chovy', 'GENG', 'Hanwha Life!DRX', 'South Korea', 2017, 2001, 'LCK', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/2/20/GEN_Chovy_2024_Split_1.png/revision/latest?cb=20240305182349', 'Asia'),
(69, 'Peyz', 'GENG', '', 'South Korea', 2020, 2005, 'LCK', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/5/5f/GEN_Peyz_2024_Split_1.png/revision/latest?cb=20240305182515', 'Asia'),
(70, 'Lehends', 'GENG', 'KT Rolster!Hanwha Life', 'South Korea', 2016, 1998, 'LCK', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/2/29/GEN_Lehends_2024_Split_1.png/revision/latest/scale-to-width-down/220?cb=20240305182640', 'Asia'),
(71, 'Doran', 'Hanwha Life', 'GENG!KT Rolster!DRX', 'South Korea', 2018, 2000, 'LCK', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/c/c9/HLE_Doran_2024_Split_1.png/revision/latest?cb=20240212094628', 'Asia'),
(72, 'Peanut', 'Hanwha Life', 'GENG!T1', 'South Korea', 2014, 1998, 'LCK', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/5/57/HLE_Peanut_2024_Split_1.png/revision/latest?cb=20240212094734', 'Asia'),
(73, 'Zeka', 'Hanwha Life', 'DRX!KT Rolster', 'South Korea', 2019, 2002, 'LCK', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/4/4a/HLE_Zeka_2024_Split_1.png/revision/latest?cb=20240212094853', 'Asia'),
(74, 'Viper', 'Hanwha Life', 'EDG', 'South Korea', 2017, 2000, 'LCK', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/6/6d/HLE_Viper_2024_Split_1.png/revision/latest?cb=20240212094852', 'Asia'),
(75, 'Delight', 'Hanwha Life', 'GENG!OK BRION!T1', 'South Korea', 2019, 2002, 'LCK', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/c/c5/HLE_Delight_2024_Split_1.png/revision/latest?cb=20240212094851', 'Asia'),
(76, 'PerfecT', 'KT Rolster', '', 'South Korea', 2020, 2004, 'LCK', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/5/57/KT_PerfecT_2024_Split_1.png/revision/latest?cb=20240305184037', 'Asia'),
(77, 'Pyosik', 'KT Rolster', 'Team Liquid!DRX', 'South Korea', 2019, 2000, 'LCK', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/3/32/KT_Pyosik_2024_Split_1.png/revision/latest?cb=20240305184319', 'Asia'),
(78, 'Bdd', 'KT Rolster', 'GENG!NS RedForce', 'South Korea', 2015, 1999, 'LCK', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/5/58/KT_Bdd_2024_Split_1.png/revision/latest?cb=20240305184509', 'Asia'),
(79, 'Deft', 'KT Rolster', 'Dplus KIA!DRX!Hanwha Life!EDG', 'South Korea', 2013, 1996, 'LCK', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/1/1b/KT_Deft_2024_Split_1.png/revision/latest/scale-to-width-down/220?cb=20240305184641', 'Asia'),
(80, 'BeryL', 'KT Rolster', 'DRX!Dplus KIA', 'South Korea', 2017, 1997, 'LCK', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/7/70/KT_BeryL_2024_Split_1.png/revision/latest/scale-to-width-down/220?cb=20240305184759', 'Asia'),
(81, 'DuDu', 'Kwangdong Freecs', 'Hanwha Life', 'South Korea', 2020, 2001, 'LCK', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/d/d9/KDF_DuDu_2024_Split_1.png/revision/latest/scale-to-width-down/220?cb=20240306145241', 'Asia'),
(82, 'Cuzz', 'Kwangdong Freecs', 'DRX!KT Rolster!T1', 'South Korea', 2016, 1999, 'LCK', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/4/45/KDF_Cuzz_2024_Split_1.png/revision/latest?cb=20240306145243', 'Asia'),
(83, 'BuLLDoG', 'Kwangdong Freecs', '', 'South Korea', 2020, 2005, 'LCK', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/f/fc/KDF_BuLLDoG_2024_Split_1.png/revision/latest?cb=20240306145247', 'Asia'),
(84, 'Bull', 'Kwangdong Freecs', 'Hanwha Life!NS RedForce', 'South Korea', 2020, 2003, 'LCK', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/2/25/KDF_Bull_2024_Split_1.png/revision/latest?cb=20240306145246', 'Asia'),
(85, 'Quantum', 'Kwangdong Freecs', '', 'South Korea', 2023, 2004, 'LCK', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/7/7d/KDF.C_Quantum_2024_Split_1.png/revision/latest?cb=20240306145820', 'Asia'),
(86, 'DnDn', 'NS RedForce', '', 'South Korea', 2020, 2003, 'LCK', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/7/7a/NS_DnDn_2024_Split_1.png/revision/latest?cb=20240306152314', 'Asia'),
(87, 'Sylvie', 'NS RedForce', '', 'South Korea', 2020, 2002, 'LCK', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/f/ff/NS_Sylvie_2024_Split_1.png/revision/latest/scale-to-width-down/220?cb=20240306152311', 'Asia'),
(88, 'Callme', 'NS RedForce', 'KT Rolster!Kwangdong Freecs', 'South Korea', 2021, 2003, 'LCK', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/8/83/NS_Callme_2024_Split_1.png/revision/latest?cb=20240306152313', 'Asia'),
(89, 'Jiwoo', 'NS RedForce', '', 'South Korea', 2022, 2004, 'LCK', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/1/1c/NS_Jiwoo_2024_Split_1.png/revision/latest?cb=20240306152317', 'Asia'),
(90, 'Peter', 'NS RedForce', '', 'South Korea', 2020, 2003, 'LCK', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/8/8e/NS_Peter_2024_Split_1.png/revision/latest?cb=20240306152312', 'Asia'),
(91, 'Morgan', 'OK BRION', 'Hanwha Life!JDG', 'South Korea', 2019, 2001, 'LCK', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/4/4b/BRO_Morgan_2024_Split_1.png/revision/latest?cb=20240306151213', 'Asia'),
(92, 'GIDEON', 'OK BRION', 'iG!KT Rolster', 'South Korea', 2019, 2003, 'LCK', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/1/1f/BRO_GIDEON_2024_Split_1.png/revision/latest/scale-to-width-down/220?cb=20240306151211', 'Asia'),
(93, 'Karis', 'OK BRION', 'Hanwha Life!GENG', 'South Korea', 2019, 2003, 'LCK', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/2/22/BRO_Karis_2024_Split_1.png/revision/latest?cb=20240306151212', 'Asia'),
(94, 'Envyy', 'OK BRION', 'GENG', 'South Korea', 2020, 2000, 'LCK', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/5/5a/BRO_Envyy_2024_Split_1.png/revision/latest?cb=20240306151209', 'Asia'),
(95, 'Pollu', 'OK BRION', '', 'South Korea', 2022, 2006, 'LCK', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/2/29/BRO_Pollu_2024_Split_1.png/revision/latest?cb=20240306151214', 'Asia'),
(96, 'Zeus', 'T1', '', 'South Korea', 2019, 2004, 'LCK', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/3/39/T1_Zeus_2024_Split_1.png/revision/latest?cb=20240209182021', 'Asia'),
(97, 'Oner', 'T1', '', 'South Korea', 2020, 2002, 'LCK', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/f/f0/T1_Oner_2024_Split_1.png/revision/latest?cb=20240209182105', 'Asia'),
(98, 'Faker', 'T1', '', 'South Korea', 2013, 1996, 'LCK', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/3/3d/T1_Faker_2024_Split_1.png/revision/latest?cb=20240209182111', 'Asia'),
(99, 'Gumayusi', 'T1', '', 'South Korea', 2018, 2002, 'LCK', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/0/0b/T1_Gumayusi_2024_Split_1.png/revision/latest?cb=20240209182116', 'Asia'),
(100, 'Keria', 'T1', 'DRX', 'South Korea', 2017, 2002, 'LCK', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/0/06/T1_Keria_2024_Split_1.png/revision/latest?cb=20240209182121', 'Asia'),
(101, 'Sniper', '100T', '', 'Canada', 2021, 2006, 'LCS', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/8/82/100C_Sniper_2023_Split_1.png/revision/latest?cb=20230124044456', 'NA'),
(102, 'River', '100T', 'Dignitas!Golden Guardians', 'South Korea', 2018, 1999, 'LCS', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/c/c4/GG_River_2023_Split_1.png/revision/latest?cb=20230127172630', 'Asia'),
(103, 'Quid', '100T', 'GENG', 'South Korea', 2020, 2004, 'LCS', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/1/1a/GEN.GA_Quid_2023_Split_1.png/revision/latest?cb=20230717033634', 'Asia'),
(104, 'Meech', '100T', 'Dignitas!NRG', 'Canada', 2018, 2001, 'LCS', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/0/03/CLGC_Meech_2023_Split_1.png/revision/latest?cb=20230127164158', 'NA'),
(105, 'Eyla', '100T', 'FlyQuest!Team Liquid', 'Australia', 2017, 1999, 'LCS', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/1/16/EG_Eyla_2023_Split_2.png/revision/latest?cb=20230624095505', 'Oceania'),
(106, 'Fudge', 'Cloud9', '', 'Australia', 2018, 2002, 'LCS', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/1/18/C9_Fudge_2024_Split_1.png/revision/latest?cb=20240414145839', 'Oceania'),
(107, 'Blaber', 'Cloud9', '', 'US', 2017, 2000, 'LCS', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/7/7b/C9_Blaber_2024_Split_1.png/revision/latest?cb=20240414145912', 'NA'),
(108, 'Jojopyun', 'Cloud9', '', 'Canada', 2020, 2004, 'LCS', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/e/eb/C9_Jojopyun_2024_Split_1_%282%29.png/revision/latest/scale-to-width-down/1280?cb=20240424095248', 'NA'),
(109, 'Berserker', 'Cloud9', 'T1', 'South Korea', 2020, 2003, 'LCS', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/1/1d/C9_Berserker_2024_Split_1.png/revision/latest?cb=20240414150030', 'Asia'),
(110, 'Vulcan', 'Cloud9', 'FlyQuest!Dignitas', 'Canada', 2015, 1999, 'LCS', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/b/bc/C9_VULCAN_2024_Split_1.png/revision/latest?cb=20240414150106', 'NA'),
(111, 'Rich', 'Dignitas', 'NS RedForce!GENG', 'South Korea', 2019, 1998, 'LCS', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/4/4b/DIG_Rich_2023_Split_2.png/revision/latest?cb=20230624094554', 'Asia'),
(112, 'eXyu', 'Dignitas', 'Cloud9', 'US', 2019, 2001, 'LCS', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/3/32/DIG.A_eXyu_2022_Split_2.png/revision/latest?cb=20220618234932', 'NA'),
(113, 'Dove', 'Dignitas', 'iG!KT Rolster', 'South Korea', 2017, 1998, 'LCS', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/a/a9/IG_Dove_2023_Split_2.png/revision/latest?cb=20230530055021', 'Asia'),
(114, 'Tomo', 'Dignitas', 'FlyQuest!Cloud9', 'US', 2019, 2001, 'LCS', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/2/22/DIGC_Tomo_2023_Split_1.png/revision/latest?cb=20230127170452', 'NA'),
(115, 'Isles', 'Dignitas', 'Cloud9', 'Australia', 2019, 2001, 'LCS', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/0/0f/C9_Isles_2022_Split_1.png/revision/latest?cb=20220206220720', 'Oceania'),
(116, 'Bwipo', 'FlyQuest', 'Fnatic!Team Liquid', 'Belgium', 2015, 1998, 'LCS', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/9/9a/TL_Bwipo_2022_Split_2.png/revision/latest?cb=20220619000015', 'Europe'),
(117, 'Inspired', 'FlyQuest', 'Rogue', 'Poland', 2017, 2002, 'LCS', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/d/d4/EG_Inspired_2023_Split_1.png/revision/latest?cb=20230124043751', 'Europe'),
(118, 'Jensen', 'FlyQuest', 'SK Gaming!Cloud9!Dignitas!Team Liquid', 'Denmark', 2012, 1995, 'LCS', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/3/3a/DIG_Jensen_2023_Split_1.png/revision/latest?cb=20230127170248', 'Europe'),
(119, 'Massu', 'FlyQuest', '', 'Canada', 2022, 2004, 'LCS', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/7/7d/FLYC_Massu_2023_Split_1.png/revision/latest?cb=20230312235604', 'NA'),
(120, 'Busio', 'FlyQuest', '100T', 'US/Poland', 2020, 2003, 'LCS', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/0/08/100_Busio_2023_Split_1.png/revision/latest?cb=20230124043732', 'Europe'),
(121, 'Castle', 'Immortals', 'KT Rolster', 'South Korea', 2020, 2002, 'LCS', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/5/50/KT.C_Castle_2023_Split_2.png/revision/latest?cb=20230614023441', 'Asia'),
(122, 'Armao', 'Immortals', 'Cloud9!Dignitas!Team Liquid', 'US', 2014, 1998, 'LCS', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/c/c9/EG_Armao_2023_Split_2.png/revision/latest?cb=20230624095509', 'NA'),
(123, 'Mask', 'Immortals', 'KT Rolster!Hanwha Life', 'South Korea', 2018, 2000, 'LCS', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/f/fd/USE_Mask_2023_Split_1.png/revision/latest/scale-to-width-down/800?cb=20230121145813', 'Asia'),
(124, 'Tactical', 'Immortals', 'Team Liquid', 'US', 2016, 2000, 'LCS', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/c/c7/IMT_Tactical_2023_Split_1.png/revision/latest?cb=20230127165439', 'NA'),
(125, 'Olleh', 'Immortals', 'Golden Guardians!Dignitas!Team Liquid!KT Rolster', 'South Korea', 2013, 1994, 'LCS', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/e/e3/GG_Olleh_2022_Split_2.png/revision/latest?cb=20220715135024', 'Asia'),
(126, 'Dhokla', 'NRG', 'Team Liquid!Immortals', 'US', 2016, 1997, 'LCS', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/8/8e/NRG_Dhokla_2023_Split_2.png/revision/latest?cb=20230624094735', 'NA'),
(127, 'Contractz', 'NRG', 'Cloud9!100T!Golden Guardians', 'US', 2014, 1999, 'LCS', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/d/d2/CLG_Contractz_2023_Split_1.png/revision/latest?cb=20230127163843', 'NA'),
(128, 'Palafox', 'NRG', 'FlyQuest!Cloud9!Golden Guardians', 'US', 2018, 1999, 'LCS', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/d/d0/NRG_Palafox_2023_Split_2.png/revision/latest?cb=20230624094757', 'NA'),
(129, 'FBI', 'NRG', '100T!Golden Guardians', 'Australia', 2017, 1999, 'LCS', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/9/9e/NRG_FBI_2023_Split_2.png/revision/latest?cb=20230624094632', 'Oceania'),
(130, 'huhi', 'NRG', '100T!Golden Guardians', 'South Korea/US', 2014, 1995, 'LCS', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/c/c9/GG_huhi_2023_Split_1.png/revision/latest?cb=20230127172626', 'Asia/NA'),
(131, 'FakeGod', 'Shopify Rebellion', 'Cloud9!Dignitas!100T', 'US', 2018, 2000, 'LCS', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/a/ac/SR_FakeGod_2024_Split_1.png/revision/latest?cb=20240204150837', 'NA'),
(132, 'Bugi', 'Shopify Rebellion', '', 'South Korea', 2017, 1998, 'LCS', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/2/2b/TSM_Bugi_2023_Split_1.png/revision/latest?cb=20230228002410', 'Asia'),
(133, 'Insanity', 'Shopify Rebellion', 'Immortals!Dignitas!Team Liquid!100T', 'US', 2016, 1999, 'LCS', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/1/18/TSM_Insanity_2023_Split_2.png/revision/latest?cb=20230624094052', 'NA'),
(134, 'Bvoy', 'Shopify Rebellion', 'JDG', 'South Korea', 2016, 1997, 'LCS', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/3/3d/SR_Bvoy_2024_Split_1.png/revision/latest?cb=20240204150645', 'Asia'),
(135, 'Zeyzal', 'Shopify Rebellion', 'Cloud9', 'US', 2014, 1999, 'LCS', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/3/30/SR_Zeyzal_2024_Split_1.png/revision/latest?cb=20240204150935', 'NA'),
(136, 'Impact', 'Team Liquid', 'Cloud9!T1!FlyQuest', 'South Korea', 2021, 1995, 'LCS', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/6/61/FLY_Impact_2023_Split_1.png/revision/latest?cb=20230127164701', 'Asia'),
(137, 'UmTi', 'Team Liquid', 'OK BRION!KT Rolster', 'South Korea', 2016, 1999, 'LCS', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/c/c5/BRO_UmTi_2023_Split_2.png/revision/latest?cb=20230614005923', 'Asia'),
(138, 'APA', 'Team Liquid', '', 'US', 2019, 2002, 'LCS', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/5/5a/TLC_APA_2023_Split_1.png/revision/latest?cb=20230127172109', 'NA'),
(139, 'Yeon', 'Team Liquid', '100T', 'US', 2020, 2001, 'LCS', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/8/8c/TL_Yeon_2023_Split_1.png/revision/latest?cb=20230127171816', 'NA'),
(140, 'CoreJJ', 'Team Liquid', 'Dignitas!GENG', 'South Korea', 2013, 1994, 'LCS', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/5/5f/TL_CoreJJ_2023_Split_1.png/revision/latest?cb=20230127171809', 'Asia'),
(141, 'Hery', 'Anyone\'s Legend', 'EDG', 'China', 2019, 2001, 'LPL', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/5/5b/AL_Hery_2024_Split_1.png/revision/latest?cb=20240121154010', 'Asia'),
(142, 'Croco', 'Anyone\'s Legend', 'DRX', 'South Korea', 2019, 2000, 'LPL', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/6/69/AL_Croco_2024_Split_1.png/revision/latest?cb=20240121154009', 'Asia'),
(143, 'Shanks', 'Anyone\'s Legend', 'Team WE', 'China', 2020, 2001, 'LPL', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/2/2a/AL_Shanks_2024_Split_1.png/revision/latest?cb=20240121154008', 'Asia'),
(144, 'Hope', 'Anyone\'s Legend', 'EDG!JGD!Team WE', 'China', 2017, 2000, 'LPL', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/7/79/AL_Hope_2024_Split_1.png/revision/latest?cb=20240121154007', 'Asia'),
(145, 'Kael', 'Anyone\'s Legend', 'GENG', 'South Korea', 2020, 2004, 'LPL', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/4/4c/AL_Kael_2024_Split_1.png/revision/latest?cb=20240121154006', 'Asia'),
(146, 'Bin', 'Bilibili Gaming', 'RNG!Weibo Gaming', 'China', 2019, 2003, 'LPL', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/7/74/BLG_Bin_2024_Split_1.png/revision/latest?cb=20240121154757', 'Asia'),
(147, 'Xun', 'Bilibili Gaming', 'iG', 'China', 2020, 2002, 'LPL', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/4/4b/BLG_Xun_2024_Split_1.png/revision/latest?cb=20240121154756', 'Asia'),
(148, 'knight', 'Bilibili Gaming', 'JDG!Top Esports!', 'China', 2017, 2000, 'LPL', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/0/08/BLG_knight_2024_Split_1.png/revision/latest?cb=20240121154755', 'Asia'),
(149, 'Elk', 'Bilibili Gaming', 'Team WE', 'China', 2018, 2001, 'LPL', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/5/5b/BLG_Elk_2024_Split_1.png/revision/latest?cb=20240121154754', 'Asia'),
(150, 'ON', 'Bilibili Gaming', 'Weibo Gaming', 'China', 2019, 2003, 'LPL', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/2/2c/BLG_ON_2024_Split_1.png/revision/latest?cb=20240121154752', 'Asia'),
(151, 'Ale', 'EDG', 'LNG!Oh My God', 'China', 2018, 2001, 'LPL', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/5/5d/EDG_Ale_2024_Split_1.png/revision/latest?cb=20240121154750', 'Asia'),
(152, 'Solokill', 'EDG', '', 'Hong Kong', 2018, 2001, 'LPL', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/c/c2/EDG_Solokill_2024_Split_1.png/revision/latest?cb=20240121154751', 'Asia'),
(153, 'JieJie', 'EDG', '', 'China', 2019, 2001, 'LPL', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/1/1e/EDG_Jiejie_2024_Split_1.png/revision/latest?cb=20240121154749', 'Asia'),
(154, 'Monki', 'EDG', '', 'China', 2021, 2004, 'LPL', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/e/ee/EDG_Monki_2024_Split_1.png/revision/latest?cb=20240121154748', 'Asia'),
(155, 'Fisher', 'EDG', 'T1', 'South Korea', 2020, 2004, 'LPL', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/0/04/EDG_Fisher_2024_Split_1.png/revision/latest?cb=20240121154747', 'Asia'),
(156, '0909', 'EDG', 'Oh My God', 'China', 2020, 2003, 'LPL', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/2/20/OMG_0909_2022_Split_2_New.png/revision/latest?cb=20220728185907', 'Asia'),
(157, 'Leave', 'EDG', '', 'China', 2021, 2002, 'LPL', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/0/04/EDG_Fisher_2024_Split_1.png/revision/latest?cb=20240121154747', 'Asia'),
(158, 'Thesnake', 'EDG', '', 'China', 2019, 0, 'LPL', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/a/ae/EDG_Thesnake_2024_Split_1.png/revision/latest?cb=20240307144148', 'Asia'),
(159, 'Vampire', 'EDG', '', 'China', 2023, 2005, 'LPL', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/0/03/EDG_Vampire_2024_Split_1.png/revision/latest?cb=20240121154745', 'Asia'),
(160, 'Xiamu', 'EDG', '', 'China', 2019, 0, 'LPL', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/3/3f/EDG_Xiamu_2024_Split_1.png/revision/latest?cb=20240307144147', 'Asia'),
(161, 'Kanavi', 'JDG', '', 'South Korea', 2019, 2000, 'LPL', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/5/59/JDG_Kanavi_2024_Split_1.png/revision/latest?cb=20240121155816', 'Asia'),
(162, 'Ruler', 'JDG', 'GENG', 'South Korea', 2016, 1998, 'LPL', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/7/7a/JDG_Ruler_2024_Split_1.png/revision/latest?cb=20240121155814', 'Asia'),
(163, 'MISSING', 'JDG', 'Team WE', 'China', 2018, 2001, 'LPL', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/7/7c/JDG_MISSING_2024_Split_1.png/revision/latest?cb=20240121155813', 'Asia'),
(164, 'Tianzhen', 'iG', '', 'China', 2020, 2004, 'LPL', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/3/30/IG_Tianzhen_2024_Split_1.png/revision/latest?cb=20240121155824', 'Asia'),
(165, 'Cryin', 'iG', 'RNG!Ultra Prime', 'China', 2018, 2000, 'LPL', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/8/82/IG_Cryin_2024_Split_1.png/revision/latest?cb=20240121155823', 'Asia'),
(166, 'Flandre', 'JDG', 'EDG!LNG', 'China', 2014, 1998, 'LPL', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/1/1a/JDG_Flandre_2024_Split_1.png/revision/latest?cb=20240121155818', 'Asia'),
(167, 'Burdol', 'LGD', 'Dplus KIA!GENG!T1', 'South Korea', 2019, 2003, 'LPL', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/0/06/LGD_Burdol_2024_Split_1.png/revision/latest?cb=20240121155812', 'Asia'),
(168, 'Kepler', 'LGD', 'JDG!TT Gaming', 'China', 2020, 2002, 'LPL', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/c/cb/LGD_Kepler_2024_Split_1.png/revision/latest?cb=20240121155809', 'Asia'),
(169, 'Weiwei', 'LNG', 'Bilibili Gaming!Weibo Gaming', 'China', 2018, 2000, 'LPL', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/0/05/LNG_Weiwei_2024_Split_1.png/revision/latest?cb=20240121155805', 'Asia'),
(170, 'Scout', 'LNG', 'EDG!T1', 'South Korea', 2015, 1998, 'LPL', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/b/b8/LNG_Scout_2024_Split_1.png/revision/latest?cb=20240121155804', 'Asia'),
(171, 'GALA', 'LNG', 'RNG', 'China', 2018, 2001, 'LPL', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/e/e5/LNG_GALA_2024_Split_1.png/revision/latest?cb=20240121155803', 'Asia'),
(172, 'Rookie', 'Ninjas in Pyjamas', 'TOP Esports!iG!KT Rolster', 'South Korea', 2013, 1997, 'LPL', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/e/e7/NIP_Rookie_2024_Split_1.png/revision/latest?cb=20240121161339', 'Asia'),
(173, 'Angel', 'Oh My God', 'Ninjas in Pyjamas!RNG!Weibo Gaming', 'China', 2017, 2000, 'LPL', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/6/6b/OMG_Angel_2024_Split_1.png/revision/latest?cb=20240121161332', 'Asia'),
(174, 'ppgod', 'Oh My God', 'Bilibili Gaming!FPX', 'China', 2018, 2000, 'LPL', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/8/83/OMG_ppgod_2024_Split_1.png/revision/latest?cb=20240121161329', 'Asia'),
(175, 'Vicla', 'Rare Atom', 'FlyQuest!KT Rolster', 'South Korea', 2020, 2003, 'LPL', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/8/8e/RA_VicLa_2024_Split_1.png/revision/latest?cb=20240121161326', 'Asia'),
(176, 'Wei', 'RNG', '', 'China', 2018, 2002, 'LPL', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/6/6c/RNG_Wei_2024_Split_1.png/revision/latest?cb=20240121161320', 'Asia'),
(177, 'Lwx', 'RNG', 'FPX', 'China', 2016, 1998, 'LPL', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/b/bd/RNG_Lwx_2024_Split_1.png/revision/latest?cb=20240121161318', 'Asia'),
(178, 'Ming', 'RNG', '', 'China', 2015, 1998, 'LPL', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/f/fc/RNG_Ming_2024_Split_1.png/revision/latest?cb=20240121161316', 'Asia'),
(179, 'Prince', 'Team WE', 'FlyQuest!FPX!Dplus KIA', 'South Korea', 2016, 2000, 'LPL', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/f/fc/WE_Prince_2024_Split_1.png/revision/latest?cb=20240121162335', 'Asia'),
(180, 'Tian', 'TOP Esports', 'FPX', 'China', 2017, 2000, 'LPL', 'Jng', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/2/2d/TES_Tian_2024_Split_1.png/revision/latest?cb=20240121161314', 'Asia'),
(181, '369', 'TOP Esports', 'JDG', 'China', 2018, 2001, 'LPL', 'Top', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/2/2d/TES_369_2024_Split_1.png/revision/latest?cb=20240121161315', 'Asia'),
(182, 'JackeyLove', 'TOP Esports', 'iG', 'China', 2016, 2000, 'LPL', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/0/08/TES_JackeyLove_2024_Split_1.png/revision/latest?cb=20240121161311', 'Asia'),
(183, 'Meiko', 'TOP Esports', 'EDG', 'China', 2014, 1998, 'LPL', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/c/c0/TES_Meiko_2024_Split_1.png/revision/latest?cb=20240121161309', 'Asia'),
(184, 'Xiaohu', 'Weibo Gaming', 'RNG', 'China', 2014, 1998, 'LPL', 'Mid', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/0/05/WBG_Xiaohu_2024_Split_1.png/revision/latest?cb=20240121162343', 'Asia'),
(185, 'Light', 'Weibo Gaming', 'LNG', 'China', 2017, 2001, 'LPL', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/8/89/WBG_Light_2024_Split_1.png/revision/latest?cb=20240121162342', 'Asia'),
(186, 'Crisp', 'Weibo Gaming', 'Bilibili Gaming!FPX!Oh My God', 'China', 2016, 1998, 'LPL', 'Supp', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/2/20/WBG_Crisp_2024_Split_1.png/revision/latest?cb=20240121162340', 'Asia'),
(187, 'Rekkles', 'T1', 'Fnatic!Karmine Corp!G2', 'Sweden', 2012, 1996, 'LCK CL', 'Bot', 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/5/53/T1.EA_Rekkles_2024_Split_1.png/revision/latest?cb=20240209182704', 'Europe');

-- --------------------------------------------------------

--
-- Struttura della tabella `today`
--

CREATE TABLE `today` (
  `player` int DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `today`
--

INSERT INTO `today` (`player`, `date`) VALUES
(18, '2024-05-05');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `token` varchar(255) DEFAULT NULL,
  `player` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`token`, `player`) VALUES
('sit9psh1igfn9211skkbq4c6ib', 'Upset'),
('sit9psh1igfn9211skkbq4c6ib', 'Adam'),
('sit9psh1igfn9211skkbq4c6ib', 'Saken'),
('sit9psh1igfn9211skkbq4c6ib', 'Elyoya');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
