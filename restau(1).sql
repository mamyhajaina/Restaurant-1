-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 29, 2022 at 05:57 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restau`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom_categorie`) VALUES
(1, 'dessert'),
(2, 'snack'),
(3, 'spaghetti'),
(4, 'Mine Sao');

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `plat` int(11) DEFAULT NULL,
  `serveur` int(11) DEFAULT NULL,
  `date_commande` date DEFAULT NULL,
  `num_table` int(11) DEFAULT NULL,
  `validation_commande` varchar(30) DEFAULT NULL,
  `cuisine` varchar(30) DEFAULT NULL,
  `livraison` varchar(30) DEFAULT NULL,
  `heure_commande` time DEFAULT NULL,
  `paiement` int(11) DEFAULT NULL,
  `details_livraison` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commande`
--

INSERT INTO `commande` (`id_commande`, `plat`, `serveur`, `date_commande`, `num_table`, `validation_commande`, `cuisine`, `livraison`, `heure_commande`, `paiement`, `details_livraison`) VALUES
(73, 2, 1, '2022-05-28', 2, 'false', 'false', 'false', '15:46:38', 0, NULL),
(74, 2, 1, '2022-05-28', 2, 'false', 'false', 'false', '15:46:38', 0, NULL),
(75, 2, 1, '2022-05-28', 2, 'false', 'false', 'false', '15:46:38', 0, NULL),
(76, 2, 1, '2022-05-28', 2, 'false', 'false', 'false', '15:46:38', 0, NULL),
(77, 2, 1, '2022-05-28', 2, 'false', 'false', 'false', '15:46:38', 0, NULL),
(78, 3, 3, '2022-05-28', 2, 'true', 'false', 'false', '18:07:25', 0, NULL),
(79, 3, 3, '2022-05-28', 2, 'true', 'false', 'false', '18:07:25', 0, NULL),
(80, 3, 3, '2022-05-28', 2, 'true', 'false', 'false', '18:16:50', 0, NULL),
(81, 3, 3, '2022-05-28', 2, 'true', 'false', 'false', '18:16:50', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE `ingredient` (
  `id_ingredient` int(11) NOT NULL,
  `nom_ingredient` varchar(30) DEFAULT NULL,
  `prix` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`, `prix`) VALUES
(1, 'Spagheti', 3500),
(2, 'Tomate', 1500),
(3, 'Totokena', 2000),
(4, 'tongolo', 1000),
(5, 'lait', 2000),
(6, 'sucre', 1500),
(7, 'pate', 200),
(8, 'mortadelle', 2000),
(9, 'fromage', 3500);

-- --------------------------------------------------------

--
-- Table structure for table `num_table`
--

CREATE TABLE `num_table` (
  `id_table` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `num_table`
--

INSERT INTO `num_table` (`id_table`) VALUES
(2),
(3),
(4),
(5),
(6);

-- --------------------------------------------------------

--
-- Table structure for table `plat`
--

CREATE TABLE `plat` (
  `id_plat` int(11) NOT NULL,
  `nom_plat` varchar(40) DEFAULT NULL,
  `categorie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plat`
--

INSERT INTO `plat` (`id_plat`, `nom_plat`, `categorie`) VALUES
(1, 'Spagheti bolognaise', 3),
(2, 'Nem', 2),
(3, 'Brioche', 1),
(4, 'Mine Sao Simple', 4),
(6, 'test', 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qtelivre`
--
CREATE TABLE `qtelivre` (
`qte` bigint(21)
,`id_plat` int(11)
,`nom_plat` varchar(40)
,`date_commande` date
);

-- --------------------------------------------------------

--
-- Table structure for table `recette`
--

CREATE TABLE `recette` (
  `id_recette` int(11) NOT NULL,
  `plat` int(11) DEFAULT NULL,
  `ingredient` int(11) DEFAULT NULL,
  `qte_ingredient` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recette`
--

INSERT INTO `recette` (`id_recette`, `plat`, `ingredient`, `qte_ingredient`) VALUES
(1, 1, 1, 250),
(2, 1, 2, 2),
(3, 1, 3, 150),
(4, 2, 4, 10),
(5, 2, 3, 10),
(6, 2, 5, 2),
(7, 3, 6, 1),
(8, 3, 7, 1),
(9, 4, 7, 500),
(10, 4, 8, 150),
(11, 4, 9, 150);

-- --------------------------------------------------------

--
-- Table structure for table `serveur`
--

CREATE TABLE `serveur` (
  `id_serveur` int(11) NOT NULL,
  `nom_serveur` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `serveur`
--

INSERT INTO `serveur` (`id_serveur`, `nom_serveur`) VALUES
(1, 'koto'),
(2, 'bema'),
(3, 'rajao');

-- --------------------------------------------------------

--
-- Stand-in structure for view `sommeprixingredient`
--
CREATE TABLE `sommeprixingredient` (
`qteLivre.qte*viewPrix_de_revient.maso` decimal(63,0)
,`date_commande` date
,`id_plat` int(11)
,`nom_plat` varchar(40)
);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id_stock` int(11) NOT NULL,
  `qte_stock` int(11) DEFAULT NULL,
  `ingredient` int(11) DEFAULT NULL,
  `date_entree` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id_stock`, `qte_stock`, `ingredient`, `date_entree`) VALUES
(13, 2000, 1, '2022-05-27'),
(14, 2000, 2, '2022-05-27'),
(15, 2000, 3, '2022-05-27'),
(16, 2000, 4, '2022-05-27'),
(17, 2000, 5, '2022-05-27'),
(18, 2000, 6, '2022-05-27'),
(19, 2000, 7, '2022-05-27'),
(20, 2000, 8, '2022-05-27'),
(21, 2000, 9, '2022-05-27'),
(22, 500, 7, '2022-05-27'),
(23, 500, 5, '2022-05-27'),
(24, 500, 7, '2022-05-27'),
(25, 500, 7, '2022-05-27');

-- --------------------------------------------------------

--
-- Stand-in structure for view `stockfinal`
--
CREATE TABLE `stockfinal` (
`nom_ingredient` varchar(30)
,`ingredient` int(11)
,`quantite` decimal(33,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `type_user`
--

CREATE TABLE `type_user` (
  `id_type_user` int(11) NOT NULL,
  `nom_type_user` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_user`
--

INSERT INTO `type_user` (`id_type_user`, `nom_type_user`) VALUES
(1, 'Administration'),
(2, 'Cuisine'),
(3, 'Caisse'),
(4, 'Service');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int(11) NOT NULL,
  `type_user` int(11) DEFAULT NULL,
  `login_user` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `type_user`, `login_user`, `password`) VALUES
(1, 1, 'Jean', 'jean'),
(3, 2, 'Koto', 'koto');

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewaddition`
--
CREATE TABLE `viewaddition` (
`nom_serveur` varchar(30)
,`nom_plat` varchar(40)
,`id_plat` int(11)
,`num_table` int(11)
,`vente` decimal(44,0)
,`qte` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewavantstocksortie`
--
CREATE TABLE `viewavantstocksortie` (
`id_plat` int(11)
,`nom_plat` varchar(40)
,`ingredient` int(11)
,`nom_ingredient` varchar(30)
,`qte_commande` bigint(21)
,`qte_ingredient` int(11)
,`qte` bigint(31)
,`date_commande` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewcommande`
--
CREATE TABLE `viewcommande` (
`id_commande` int(11)
,`date_commande` date
,`num_table` int(11)
,`validation_commande` varchar(30)
,`cuisine` varchar(30)
,`livraison` varchar(30)
,`heure_commande` time
,`paiement` int(11)
,`id_plat` int(11)
,`nom_plat` varchar(40)
,`nom_categorie` varchar(30)
,`prix_de_revient` decimal(43,0)
,`id_categorie` int(11)
,`id_serveur` int(11)
,`nom_serveur` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewcommandefinal`
--
CREATE TABLE `viewcommandefinal` (
`id_commande` int(11)
,`plat` int(11)
,`serveur` int(11)
,`date_commande` date
,`num_table` int(11)
,`validation_commande` varchar(30)
,`cuisine` varchar(30)
,`livraison` varchar(30)
,`heure_commande` time
,`paiement` int(11)
,`quantite` bigint(21)
,`nom_plat` varchar(40)
,`nom_categorie` varchar(30)
,`nom_serveur` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewmanisacommandeparplat`
--
CREATE TABLE `viewmanisacommandeparplat` (
`qte_commande` bigint(21)
,`plat` int(11)
,`date_commande` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewplat`
--
CREATE TABLE `viewplat` (
`id_plat` int(11)
,`nom_plat` varchar(40)
,`categorie` int(11)
,`nom_categorie` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewplatfinal`
--
CREATE TABLE `viewplatfinal` (
`id_recette` int(11)
,`ingredient` int(11)
,`qte_ingredient` int(11)
,`nom_plat` varchar(40)
,`id_plat` int(11)
,`nom_categorie` varchar(30)
,`id_categorie` int(11)
,`nom_ingredient` varchar(30)
,`prix_par_kg` int(11)
,`masokarena` decimal(21,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewprix_de_revient`
--
CREATE TABLE `viewprix_de_revient` (
`maso` decimal(43,0)
,`id_plat` int(11)
,`nom_plat` varchar(40)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewstock`
--
CREATE TABLE `viewstock` (
`date_entree` date
,`ingredient` int(11)
,`id_stock` int(11)
,`qte_stock` decimal(32,0)
,`nom_ingredient` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewstocksortie`
--
CREATE TABLE `viewstocksortie` (
`quant` bigint(31)
,`date_commande` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewstockvffinal`
--
CREATE TABLE `viewstockvffinal` (
`nom_ingredient` varchar(30)
,`ingredient` int(11)
,`quantite` decimal(33,0)
,`entree` decimal(32,0)
,`sortie` decimal(34,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vue`
--
CREATE TABLE `vue` (
`prix_de_revient` decimal(43,0)
,`id_plat` int(11)
,`nom_plat` varchar(40)
,`nom_categorie` varchar(30)
,`id_categorie` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `qtelivre`
--
DROP TABLE IF EXISTS `qtelivre`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qtelivre`  AS  (select count(0) AS `qte`,`viewcommande`.`id_plat` AS `id_plat`,`viewcommande`.`nom_plat` AS `nom_plat`,`viewcommande`.`date_commande` AS `date_commande` from `viewcommande` where (`viewcommande`.`livraison` = 'true') group by `viewcommande`.`id_plat`,`viewcommande`.`date_commande`) ;

-- --------------------------------------------------------

--
-- Structure for view `sommeprixingredient`
--
DROP TABLE IF EXISTS `sommeprixingredient`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sommeprixingredient`  AS  (select (`qtelivre`.`qte` * `viewprix_de_revient`.`maso`) AS `qteLivre.qte*viewPrix_de_revient.maso`,`qtelivre`.`date_commande` AS `date_commande`,`qtelivre`.`id_plat` AS `id_plat`,`qtelivre`.`nom_plat` AS `nom_plat` from (`qtelivre` join `viewprix_de_revient`) where (`qtelivre`.`id_plat` = `viewprix_de_revient`.`id_plat`)) ;

-- --------------------------------------------------------

--
-- Structure for view `stockfinal`
--
DROP TABLE IF EXISTS `stockfinal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `stockfinal`  AS  (select `s`.`nom_ingredient` AS `nom_ingredient`,`s`.`ingredient` AS `ingredient`,ifnull((`s`.`qte_stock` - `va`.`qte`),`s`.`qte_stock`) AS `quantite` from (`viewstock` `s` left join `viewavantstocksortie` `va` on((`s`.`ingredient` = `va`.`ingredient`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `viewaddition`
--
DROP TABLE IF EXISTS `viewaddition`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewaddition`  AS  (select `viewcommande`.`nom_serveur` AS `nom_serveur`,`viewcommande`.`nom_plat` AS `nom_plat`,`viewcommande`.`id_plat` AS `id_plat`,`viewcommande`.`num_table` AS `num_table`,(`viewcommande`.`prix_de_revient` + 2000) AS `vente`,count(0) AS `qte` from `viewcommande` group by `viewcommande`.`num_table`,`viewcommande`.`id_plat`,`viewcommande`.`id_serveur`) ;

-- --------------------------------------------------------

--
-- Structure for view `viewavantstocksortie`
--
DROP TABLE IF EXISTS `viewavantstocksortie`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewavantstocksortie`  AS  (select `vf`.`id_plat` AS `id_plat`,`vf`.`nom_plat` AS `nom_plat`,`vf`.`ingredient` AS `ingredient`,`vf`.`nom_ingredient` AS `nom_ingredient`,`c`.`qte_commande` AS `qte_commande`,`vf`.`qte_ingredient` AS `qte_ingredient`,(`vf`.`qte_ingredient` * `c`.`qte_commande`) AS `qte`,`c`.`date_commande` AS `date_commande` from (`viewplatfinal` `vf` join `viewmanisacommandeparplat` `c`) where (`vf`.`id_plat` = `c`.`plat`)) ;

-- --------------------------------------------------------

--
-- Structure for view `viewcommande`
--
DROP TABLE IF EXISTS `viewcommande`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewcommande`  AS  (select `commande`.`id_commande` AS `id_commande`,`commande`.`date_commande` AS `date_commande`,`commande`.`num_table` AS `num_table`,`commande`.`validation_commande` AS `validation_commande`,`commande`.`cuisine` AS `cuisine`,`commande`.`livraison` AS `livraison`,`commande`.`heure_commande` AS `heure_commande`,`commande`.`paiement` AS `paiement`,`vue`.`id_plat` AS `id_plat`,`vue`.`nom_plat` AS `nom_plat`,`vue`.`nom_categorie` AS `nom_categorie`,`vue`.`prix_de_revient` AS `prix_de_revient`,`vue`.`id_categorie` AS `id_categorie`,`serveur`.`id_serveur` AS `id_serveur`,`serveur`.`nom_serveur` AS `nom_serveur` from ((`vue` join `commande`) join `serveur`) where ((`commande`.`plat` = `vue`.`id_plat`) and (`serveur`.`id_serveur` = `commande`.`serveur`))) ;

-- --------------------------------------------------------

--
-- Structure for view `viewcommandefinal`
--
DROP TABLE IF EXISTS `viewcommandefinal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewcommandefinal`  AS  (select `c`.`id_commande` AS `id_commande`,`c`.`plat` AS `plat`,`c`.`serveur` AS `serveur`,`c`.`date_commande` AS `date_commande`,`c`.`num_table` AS `num_table`,`c`.`validation_commande` AS `validation_commande`,`c`.`cuisine` AS `cuisine`,`c`.`livraison` AS `livraison`,`c`.`heure_commande` AS `heure_commande`,`c`.`paiement` AS `paiement`,count(`c`.`id_commande`) AS `quantite`,`vue`.`nom_plat` AS `nom_plat`,`vue`.`nom_categorie` AS `nom_categorie`,`serveur`.`nom_serveur` AS `nom_serveur` from ((`vue` join `commande` `c`) join `serveur`) where ((`c`.`plat` = `vue`.`id_plat`) and (`serveur`.`id_serveur` = `c`.`serveur`)) group by `c`.`plat`,`c`.`serveur`,`c`.`num_table`,`c`.`date_commande`,`c`.`heure_commande`) ;

-- --------------------------------------------------------

--
-- Structure for view `viewmanisacommandeparplat`
--
DROP TABLE IF EXISTS `viewmanisacommandeparplat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewmanisacommandeparplat`  AS  (select count(0) AS `qte_commande`,`commande`.`plat` AS `plat`,`commande`.`date_commande` AS `date_commande` from `commande` group by `commande`.`plat`) ;

-- --------------------------------------------------------

--
-- Structure for view `viewplat`
--
DROP TABLE IF EXISTS `viewplat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewplat`  AS  (select `plat`.`id_plat` AS `id_plat`,`plat`.`nom_plat` AS `nom_plat`,`plat`.`categorie` AS `categorie`,`categorie`.`nom_categorie` AS `nom_categorie` from (`plat` join `categorie`) where (`plat`.`categorie` = `categorie`.`id_categorie`)) ;

-- --------------------------------------------------------

--
-- Structure for view `viewplatfinal`
--
DROP TABLE IF EXISTS `viewplatfinal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewplatfinal`  AS  (select `recette`.`id_recette` AS `id_recette`,`recette`.`ingredient` AS `ingredient`,`recette`.`qte_ingredient` AS `qte_ingredient`,`viewplat`.`nom_plat` AS `nom_plat`,`viewplat`.`id_plat` AS `id_plat`,`viewplat`.`nom_categorie` AS `nom_categorie`,`viewplat`.`categorie` AS `id_categorie`,`ingredient`.`nom_ingredient` AS `nom_ingredient`,`ingredient`.`prix` AS `prix_par_kg`,round(((`ingredient`.`prix` * `recette`.`qte_ingredient`) / 1000),0) AS `masokarena` from ((`viewplat` join `ingredient`) join `recette`) where ((`viewplat`.`id_plat` = `recette`.`plat`) and (`recette`.`ingredient` = `ingredient`.`id_ingredient`))) ;

-- --------------------------------------------------------

--
-- Structure for view `viewprix_de_revient`
--
DROP TABLE IF EXISTS `viewprix_de_revient`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewprix_de_revient`  AS  (select sum(`viewplatfinal`.`masokarena`) AS `maso`,`viewplatfinal`.`id_plat` AS `id_plat`,`viewplatfinal`.`nom_plat` AS `nom_plat` from `viewplatfinal` group by `viewplatfinal`.`id_plat`) ;

-- --------------------------------------------------------

--
-- Structure for view `viewstock`
--
DROP TABLE IF EXISTS `viewstock`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewstock`  AS  (select `s`.`date_entree` AS `date_entree`,`s`.`ingredient` AS `ingredient`,`s`.`id_stock` AS `id_stock`,sum(`s`.`qte_stock`) AS `qte_stock`,`i`.`nom_ingredient` AS `nom_ingredient` from (`stock` `s` join `ingredient` `i` on((`s`.`ingredient` = `i`.`id_ingredient`))) group by `s`.`ingredient`) ;

-- --------------------------------------------------------

--
-- Structure for view `viewstocksortie`
--
DROP TABLE IF EXISTS `viewstocksortie`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewstocksortie`  AS  (select (`viewplatfinal`.`qte_ingredient` * `qtelivre`.`qte`) AS `quant`,`qtelivre`.`date_commande` AS `date_commande` from (`viewplatfinal` join `qtelivre`) where (`viewplatfinal`.`id_plat` = `qtelivre`.`id_plat`)) ;

-- --------------------------------------------------------

--
-- Structure for view `viewstockvffinal`
--
DROP TABLE IF EXISTS `viewstockvffinal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewstockvffinal`  AS  (select `sf`.`nom_ingredient` AS `nom_ingredient`,`sf`.`ingredient` AS `ingredient`,`sf`.`quantite` AS `quantite`,`vs`.`qte_stock` AS `entree`,(`vs`.`qte_stock` - `sf`.`quantite`) AS `sortie` from (`stockfinal` `sf` join `viewstock` `vs` on((`sf`.`ingredient` = `vs`.`ingredient`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `vue`
--
DROP TABLE IF EXISTS `vue`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vue`  AS  (select sum(`viewplatfinal`.`masokarena`) AS `prix_de_revient`,`viewplatfinal`.`id_plat` AS `id_plat`,`viewplatfinal`.`nom_plat` AS `nom_plat`,`viewplatfinal`.`nom_categorie` AS `nom_categorie`,`viewplatfinal`.`id_categorie` AS `id_categorie` from `viewplatfinal` group by `viewplatfinal`.`nom_plat`,`viewplatfinal`.`id_categorie`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Indexes for table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`),
  ADD KEY `plat` (`plat`),
  ADD KEY `serveur` (`serveur`);

--
-- Indexes for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`id_ingredient`);

--
-- Indexes for table `num_table`
--
ALTER TABLE `num_table`
  ADD PRIMARY KEY (`id_table`);

--
-- Indexes for table `plat`
--
ALTER TABLE `plat`
  ADD PRIMARY KEY (`id_plat`),
  ADD KEY `categorie` (`categorie`);

--
-- Indexes for table `recette`
--
ALTER TABLE `recette`
  ADD PRIMARY KEY (`id_recette`),
  ADD KEY `plat` (`plat`),
  ADD KEY `ingredient` (`ingredient`);

--
-- Indexes for table `serveur`
--
ALTER TABLE `serveur`
  ADD PRIMARY KEY (`id_serveur`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id_stock`),
  ADD KEY `ingredient` (`ingredient`);

--
-- Indexes for table `type_user`
--
ALTER TABLE `type_user`
  ADD PRIMARY KEY (`id_type_user`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`),
  ADD KEY `type_user` (`type_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `id_ingredient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `num_table`
--
ALTER TABLE `num_table`
  MODIFY `id_table` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `plat`
--
ALTER TABLE `plat`
  MODIFY `id_plat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `recette`
--
ALTER TABLE `recette`
  MODIFY `id_recette` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `serveur`
--
ALTER TABLE `serveur`
  MODIFY `id_serveur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id_stock` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `type_user`
--
ALTER TABLE `type_user`
  MODIFY `id_type_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`plat`) REFERENCES `plat` (`id_plat`),
  ADD CONSTRAINT `commande_ibfk_2` FOREIGN KEY (`serveur`) REFERENCES `serveur` (`id_serveur`);

--
-- Constraints for table `plat`
--
ALTER TABLE `plat`
  ADD CONSTRAINT `plat_ibfk_1` FOREIGN KEY (`categorie`) REFERENCES `categorie` (`id_categorie`);

--
-- Constraints for table `recette`
--
ALTER TABLE `recette`
  ADD CONSTRAINT `recette_ibfk_1` FOREIGN KEY (`plat`) REFERENCES `plat` (`id_plat`),
  ADD CONSTRAINT `recette_ibfk_2` FOREIGN KEY (`ingredient`) REFERENCES `ingredient` (`id_ingredient`);

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`ingredient`) REFERENCES `ingredient` (`id_ingredient`);

--
-- Constraints for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_ibfk_1` FOREIGN KEY (`type_user`) REFERENCES `type_user` (`id_type_user`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
