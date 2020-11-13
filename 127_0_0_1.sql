-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 13 nov. 2020 à 02:29
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `covid`
--
CREATE DATABASE IF NOT EXISTS `covid` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `covid`;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--
-- Erreur de lecture de structure pour la table covid.admin : #1932 - Table 'covid.admin' doesn't exist in engine
-- Erreur de lecture des données pour la table covid.admin : #1064 - Erreur de syntaxe près de 'FROM `covid`.`admin`' à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--
-- Erreur de lecture de structure pour la table covid.personne : #1932 - Table 'covid.personne' doesn't exist in engine
-- Erreur de lecture des données pour la table covid.personne : #1064 - Erreur de syntaxe près de 'FROM `covid`.`personne`' à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `region`
--
-- Erreur de lecture de structure pour la table covid.region : #1932 - Table 'covid.region' doesn't exist in engine
-- Erreur de lecture des données pour la table covid.region : #1064 - Erreur de syntaxe près de 'FROM `covid`.`region`' à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `resultat`
--
-- Erreur de lecture de structure pour la table covid.resultat : #1932 - Table 'covid.resultat' doesn't exist in engine
-- Erreur de lecture des données pour la table covid.resultat : #1064 - Erreur de syntaxe près de 'FROM `covid`.`resultat`' à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `test`
--
-- Erreur de lecture de structure pour la table covid.test : #1932 - Table 'covid.test' doesn't exist in engine
-- Erreur de lecture des données pour la table covid.test : #1064 - Erreur de syntaxe près de 'FROM `covid`.`test`' à la ligne 1
--
-- Base de données : `hackathon`
--
CREATE DATABASE IF NOT EXISTS `hackathon` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci;
USE `hackathon`;

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id_commentaire` int(10) NOT NULL,
  `commentaire_parc` varchar(500) COLLATE utf8_general_mysql500_ci NOT NULL,
  `id_parc` int(10) NOT NULL,
  `id_utilisateur` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Structure de la table `forum`
--

CREATE TABLE `forum` (
  `id_forum` int(10) NOT NULL,
  `texte_forum` varchar(800) COLLATE utf8_general_mysql500_ci NOT NULL,
  `id_utilisateur` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Déchargement des données de la table `forum`
--

INSERT INTO `forum` (`id_forum`, `texte_forum`, `id_utilisateur`) VALUES
(1, 'Magnifique endroit l\'eau est très clair et l\'on peut admirer les poissons et les coraux rapidement. Très belle vue depuis le phare. Repas sur la plage excellent. Je vous le conseille fortement!!', 1),
(2, 'J\'y suis déjà allé, le snorkeling est top la faune sous-marine est très développée, on peut nager avec les tortues grâce à la protection de l\'environnement, aller-retour en bateau compter à partir de 120000 MGA déjeuner compris. Je conseille aussi!', 3),
(3, 'Le Parc national d\'Andasibe-Mantadia est également superbe!\r\nUn de mes meilleurs souvenirs du séjour à Madagascar, un parc très humain , didactique et soucieux de leur animaux.', 2),
(4, 'Quelqu\'un est déjà allé au Tsingy de Bemaraha? Je voudrais y aller pour mes vacances mais j\'hésite un peu.', 4),
(5, 'J\'y suis déjà allé, c\'est assez sportif mais pas trop dure, la vue est splendide et surprenante en arrivant en haut!', 1);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id_image` int(10) NOT NULL,
  `image_parc` longblob NOT NULL,
  `id_parc` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `id_note` int(11) NOT NULL,
  `note_parc` int(11) NOT NULL,
  `id_parc` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Déchargement des données de la table `note`
--

INSERT INTO `note` (`id_note`, `note_parc`, `id_parc`, `id_utilisateur`) VALUES
(1, 1, 4, 3),
(2, 4, 6, 3),
(3, 5, 14, 4),
(4, 1, 27, 1),
(5, 2, 26, 1),
(6, 5, 7, 2),
(7, 1, 1, 1),
(8, 1, 4, 4),
(9, 1, 26, 3),
(10, 2, 35, 3),
(11, 1, 5, 4),
(12, 2, 12, 1),
(13, 3, 15, 2),
(14, 1, 19, 4),
(15, 3, 17, 1),
(16, 5, 20, 1),
(17, 2, 5, 2),
(18, 4, 18, 4),
(19, 5, 29, 4),
(20, 1, 24, 1),
(21, 3, 14, 3),
(22, 4, 14, 3),
(23, 4, 9, 4),
(24, 1, 32, 1),
(25, 1, 2, 3),
(26, 1, 33, 1),
(27, 1, 27, 4),
(28, 3, 4, 1),
(29, 1, 22, 2),
(30, 1, 26, 4),
(31, 5, 18, 3),
(32, 5, 15, 3),
(33, 3, 30, 4),
(34, 4, 4, 4),
(35, 3, 22, 2),
(36, 4, 27, 2),
(37, 2, 1, 4),
(38, 3, 18, 4),
(39, 2, 15, 4),
(40, 4, 12, 2),
(41, 4, 11, 2),
(42, 3, 35, 2),
(43, 3, 18, 4),
(44, 2, 11, 1),
(45, 3, 5, 1),
(46, 2, 18, 3),
(47, 2, 30, 4),
(48, 1, 20, 2),
(49, 2, 13, 2),
(50, 5, 16, 2),
(51, 3, 25, 2),
(52, 5, 6, 1),
(53, 2, 34, 4),
(54, 4, 19, 1),
(55, 1, 10, 1),
(56, 4, 7, 2),
(57, 5, 16, 2),
(58, 4, 29, 4),
(59, 3, 16, 3),
(60, 4, 24, 4),
(61, 2, 3, 3),
(62, 1, 15, 1),
(63, 1, 16, 4),
(64, 5, 21, 1),
(65, 3, 26, 2),
(66, 2, 27, 1),
(67, 4, 23, 4),
(68, 3, 21, 3),
(69, 4, 3, 1),
(70, 3, 17, 1),
(71, 5, 4, 3),
(72, 3, 35, 4),
(73, 2, 29, 1),
(74, 2, 26, 3),
(75, 4, 5, 4),
(76, 2, 35, 4),
(77, 5, 18, 3),
(78, 2, 7, 3),
(79, 4, 17, 4),
(80, 3, 34, 1),
(81, 5, 25, 1),
(82, 2, 15, 4),
(83, 2, 19, 3),
(84, 4, 23, 2),
(85, 1, 25, 1),
(86, 3, 17, 4),
(87, 5, 8, 2),
(88, 3, 5, 2),
(89, 5, 1, 3),
(90, 3, 27, 1),
(91, 5, 23, 4),
(92, 1, 31, 2),
(93, 2, 29, 1),
(94, 1, 22, 1),
(95, 2, 8, 2),
(96, 3, 14, 4),
(97, 5, 8, 2),
(98, 4, 24, 2),
(99, 4, 27, 1),
(100, 3, 6, 2);

-- --------------------------------------------------------

--
-- Structure de la table `parc`
--

CREATE TABLE `parc` (
  `id_parc` int(10) NOT NULL,
  `nom_parc` varchar(50) COLLATE utf8_general_mysql500_ci NOT NULL,
  `description_parc` varchar(800) COLLATE utf8_general_mysql500_ci NOT NULL,
  `longitude_parc` double NOT NULL,
  `latitude_parc` double NOT NULL,
  `contact_parc` varchar(50) COLLATE utf8_general_mysql500_ci NOT NULL,
  `id_province` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Déchargement des données de la table `parc`
--

INSERT INTO `parc` (`id_parc`, `nom_parc`, `description_parc`, `longitude_parc`, `latitude_parc`, `contact_parc`, `id_province`) VALUES
(1, 'Parc national Tsingy de Bemaraha', 'Vaste site idéal pour randonner, connu pour ses formations géologiques calcaires en forme d\'aiguille, et vue.\r\n', 44.794327, -18.919803, ' +261320940131', 6),
(2, 'Parc national d\'Andasibe-Mantadia', 'Forêt tropicale pittoresque, nombreux lémuriens et sentiers de randonnée entourés de flore et de faune variées.', 48.458685, -18.835021, '+261331444031', 5),
(3, 'Parc National du Marojejy ', 'Parc National Terrestre classé Patrimoine Mondial, massif impressionnant, forêt dense humide de basse altitude habitat du Propithecus candidus ou Simpona fotsy, des palmiers et des Ptéridophytes, forêt secondaire de basse altitude, forêt dense humide de montagne, brousse éricoïde.', 49.739961, -14.443074, '+261208807027', 2),
(4, 'Parc de Ranomafana', 'Les visites se font avec guide dans cette réserve tropicale dont la faune compte lémuriens et caméléons.', 47.419345, -21.264221, '+261207552302', 3),
(5, 'Parc national de Masoala', 'Parc National Terrestre classé Site Patrimoine Mondial , forêt dense humide de moyenne altitude 0-800 m, forêt littorale orientale; habitats des Maki vari roux endémique locale, des palmiers très rares et endémique de la région, des Nepenthes masoalensis, plantes carnivores endémiques de Masoala. Mais aussi de récif corallien, habitat des tortues marines. Le Parc recèle 50% des faunes et flores de Madagascar.', 50.101715, -15.637402, '+261320940352', 2),
(6, 'Parc national Zahamena', 'Parc National Terrestre classé Site Patrimoine Mondial, forêt dense humide sempervirente de basse altitude (400-800 m) et Forêt dense humide sempervirente de moyenne altitude (800-1200 m), habitat des lémuriens Propithecus diadema diadema,(Simpona), Eulemur fulvus fulvus, et le gecko Paroedura masobe. Mais aussi des Dypsis fibrosa et Pygeum africanum.', 48.779387, -17.612241, '+261205730024', 5),
(7, 'Parc national Mananara Nord', 'Parc National Terrestre et Réserve du Biosphère de l’UNESCO, centre d’endémisme des invertébrés, plusieurs espèces de poissons dans la Parc Marin, forêt dense humide de basse altitude, îlot granitique, plages, récifs coralliens.', 49.711958, -16.492251, '+261320940156', 4),
(8, 'Makira National Park', ' L\'une des plus grandes aires protégées de Madagascar, les forêts de Makira représentent l\'une des plus grandes étendues de forêt humide laissées dans le biome de la forêt pluviale orientale biologiquement riche de Madagascar contient environ 50% de la biodiversité florale de Madagascar et abrite la plus grande diversité de lémuriens du pays avec 17 espèces ainsi qu\'un total de un total de 125 espèces d\'oiseaux dont 75 endémiques de Madagascar.', 49.556139, -15.407918, '+261345917304', 5),
(9, 'Parc forestier d\'Angavokely et Angavobe', 'Angavokely est une montagne, à proximité de Nandihizana, à l’est d’Antananarivo. Angavokely est composé de deux principaux massifs granitiques: celui d’Angavokely, 1752m d’altitude et celui d’Angavobe, vers la gauche, 1755m. Les circuits proposés par les guides vous permettront de découvrir les cinq cavernes, le rocher d’Ambatomisondrotra ainsi que les deux grottes d’Andavabatomaizina et d’Andavatsongomby, à l’est puis celle du « bain de la reine » à l’ouest.', 47.741851, -18.918517, '+261343315443', 1),
(10, 'Zoo de Tsimbazaza', 'Zoo et jardin botanique ouvert en 1990 comportant un musée avec des squelettes et des sculptures tribales.\r\n', 47.526111, -18.929736, '+261202231149', 1),
(11, 'Arboretum d\'Antsokay', 'L’Arboretum d\'Antsokay est un parc botanique situé à 12 km au sud-est de la ville de Toliara. Plus de 900 espèces y sont conservées dont 90 % sont endémiques à la région du sud-ouest de Madagascar et 80 % ont des vertus médicinales.', 43.756617, -23.413794, '+261340760015', 6),
(13, 'Lemurs Park', 'Lemurs\' Park est un parc zoologique privé situé à 25 km d\'Antananarivo à Madagascar. Créé en 2001 dans le but de vulgariser la découverte des différentes espèces de lémuriens qui existent à Madagascar, l\'objectif à long terme est de les réintroduire dans leur milieu naturel.\r\n', 47.358701, -18.954119, '+261331125259', 1),
(14, 'Ponton du Jardin des Baobabs', 'Espace à surveiller et reboiser.\r\nOn peut y trouver le Baobab Adansonia Suarezensis endémique de la région nord de Madagascar.', 49.254909, -12.281334, '+261326354990', 2),
(15, 'Croc Farm Conservatoire Botanique de Madagascar', 'Croc Farm est un parc animalier et botanique où les visiteurs peuvent découvrir les crocodiles, lémuriens, caméléons, baobabs, et autres espèces endémiques de Madagascar à seulement 3 km de de l’aéroport international d’Antananarivo.\r\n', 47.469129, -18.782098, '+261321130143 ', 1),
(16, 'Jungle Park', 'Le Jungle Park s’inscrit dans une optique de développement durable lié à l’éco-tourisme sportif responsable et réfléchi.\r\nLe Lodge est un centre d’accueil touristique sportif, scientifique et solidaire au porte d’un monde d’aventure dans un parc naturel au coeur de la vallée des Perroquets.', 49.294055, -12.252351, '+261208221854', 2),
(17, 'Le Jardin Tropical ', 'Hectare de forêt tropicale hébergeant plus de 150 espèces végétales, des lémuriens, des crocodiles, des caméléons, des écrevisses, en plein cœur de la ville de Diego Suarez.\r\n ', 49.294834, -12.271998, '+261324724966', 2),
(18, 'Montagne D\'Ambre nationalpark', 'Parc National Terrestre et Réserve Spéciale, forêt dense humide avec un taux d’endémisme très élevé dont des milliers d’espèces de bois précieux (Dalbergia chlorocarpa et le Canarium madagascariensis) qui font de la Montagne d’Ambre un vrai creuset de diversités biologiques regroupées dans une petite aire d’accès relativement facile.', 49.149979, -12.616667, '+261325633724', 2),
(19, 'Parc national de l\'Isalo', 'Le Parc National Terrestre Isalo est une représentation écologique unique au sein du réseau Parcs Nationaux Madagascar : un massif ruiniforme de grès continental datant du jurassique avec sa géomorphologie typique et sa végétation rupicole endémique (Aloès, Euphorbes, Pachypodes, Kalanchoe …) et la faune spécifique de cet habitat exceptionnel (reptiles de rochers dont la grande majorité sont endémiques).', 45.261803, -22.465723, '+261320940236', 6),
(20, 'Réserve Naturelle Intégrale de Lokobe', 'Parc National Terrestre, Lokobe est l’une des rares localités à Madagascar où la forêt originelle du Sambirano existe encore. La forêt de Lokobe est l’unique forêt originelle restant de l’île de Nosy-Be. L’Eulemur macaco est l’espèce phare du Parc. De même pour le récif corallien, dans le Parc Marin de Lokobe.', 48.322752, -13.398845, '+261320940213', 2),
(21, 'Tsingy Rouge', 'A travers les montagnes, au Sud Est de Diego, les Tsingy Rouges se distinguent par ses paysages de terre rouge et ses tsingy aux formes moins acérées que ces cousins. Ils sont constitués de grés, de marne et de calcaire, juste aux pieds des canyons érodés, au sein de l’unique bassin sédimentaire de Madagascar et d’une végétation hétéroclite.', 49.494341, -12.635499, '+261327468332', 2),
(22, 'Reserve Reniala', 'RENIALA est une réserve privée située près de la mer, dans la forêt de Baobabs du Sud-Ouest de MADAGASCAR à la sortie du village de Mangily Ifaty à 27 km de Tuléar. La réserve s\'étend sur une superficie de 60 hectares.Cette zone présente une richesse floristique et faunistique exceptionnelles avec plus de 1000 espèces végétales endémiques aux adaptations xérophytiques (au climat sec) remarquables, de nombreux oiseaux endémiques dont Uratelornis et Monias, des reptiles, lézards,et serpents.', 43.621245, -23.122526, ' +261340379040', 6),
(24, 'Réserve naturelle de Tsimanampetsotse', 'Parc National Terrestre abritant le 1er site RAMSAR de Madagascar. Biodiversité affichant une endémicité remarquable avoisinant les 75%. Lieu d\'hivernage important pour l\'avifaune aquatique tels les flamants roses. Changement de couleur du lac dans la matinée du à la présence de sulfate de chaux et de l\'argile blanc. Habitat du Geochelone radiata (Tortue radiée), endémique du Sud et Sud-Ouest malagasy et 5 des 9 espèces de Coua existantes.', 43.841802, -24.140264, '+261320940294', 6),
(25, 'Parc National Analamazaotra', 'Parc National Analamazaotra, corridor forestier habitat des sifaka et des indri indri, zones humides et habitat des orchidées, existence d’une station forestière. 120 espèces d’orchidées avec un taux d’endémicité de 100%. La plupart sont des épiphytes ; plus de 1200 espèces de plantes avec un taux d’endémicité de 77%.', 48.433804, -18.938791, '+261320940264', 5),
(27, 'Baie de Baly ', 'Parc National Terrestre, habitat de l’Angonoka-espèce de tortue (Geochelone yniphora) classée « rare », lac Sariaka-site de nidification des grands oiseaux d’eaux migrateurs menacés et de la tortue d’eau douce à haute valeur de protection: l’Erymnochelys madagascariensis. Forêt et Savane-habitat de l’Erythrophleum couminga (Koumanga), un bois de première catégorie, présence d’espèce de mammifère marin menacée tel que Dugong Dugong.', 45.248552, -16.026797, '+261320940133', 4),
(26, 'Parc National Andohahela', 'Parc National Terrestre classé Site Patrimonial Mondial, Andohahela représente la diversité biologique de l\'extrême Sud-Est de Madagascar. C’est aussi la seule aire protégée de Madagascar présentant une forêt dense humide au sud du Tropique du Capricorne. ', 46.767937, -24.758122, '+261320940302', 6),
(12, 'Parc National Andringitra', 'Parc National Terrestre classé Site Patrimoine Mondial, refuge des plantes et animaux du massif forestier du Moyen Est de Madagascar, forêt à basse altitude, forêt de montagne, prairie altimontante, population de lémuriens, population de palmier Ravenea glauca.', 46.922181, -22.213675, '+261320940305', 3),
(23, 'Parc National Ankarafantsika', 'Ankarafantsika comprend une formation floristique unique sur massif sableux dans laquelle se trouvent des espèces faunistiques à un taux d’endémicité très élevé et non représentés dans d’autres aires protégées. Le Parc présente également des paysages variés et contrastés, comme les différents types de forêts, la savane, les lacs ou les « lavaka » d’Ankarokaroka.', 46.942013, -16.223321, '+261320940124', 4),
(28, 'Parc National Kirindy Mite', '\r\nParc National Terrestre et Site RAMSAR et RESERVE DE BIOSPHERE. C’est la transition entre la biodiversité de l’Ouest et du Sud: forêt dense sèche qui occupe 70% du parc, fourré épineux à Didiereaceae et à Euphorbiaceae, lac littoral saumâtre, habitat de nombreuses espèces, oiseaux, reptiles, lémuriens. Endémicité de la biodiversité : 97%.', 44.171866, -20.739806, '+261320940182', 2),
(29, 'Parc National Marolambo', 'Parc National Terrestre,on y trouve une Forêt Dense Humide primaire, des Forêts dégradées, Forêts secondaires (savoka jachères), des Lémuriens : Varecia variegata, Propithecus edwardsii, Eulemur rubriventer, Hapalemur griseus, Eulemur fulvus,et des Palmier(s) : Dypsis sp. Ann II, Famille(s) endémique(s): Rhodolaena bakeriana, palissandres Dalbergia sp.', 47.723888, -19.580869, '+261347437291', 5),
(30, 'Parc National Midongy', 'Parc National Terrestre, fait partie de l’écorégion de l’Est et de l’écorégion du Centre de Madagascar, on y trouve une forêt dense humide sempervirente de moyenne altitude et une forêt dense humide sempervirente de basse altitude, ainsi que des abris des lémuriens diurnes et des canards sauvages.', 47.117906, -23.704637, '+261345257726', 3),
(31, 'Parc National Mikea', 'Parc National Terrestre, forêt dense sèche, fourré sur sable et sur calcaire, lacs, marais et faunes aquatiques, lémuriens nocturnes et diurnes, faune endémique locale.', 43.351731, -22.337342, '+261337408014', 6),
(32, 'Parc National Marin Nosy Hara', 'Parc National Marin, Mangroves, Récifs coralliens, Herbiers marins, Tortues marines, Oiseaux d’eau.', 49.013266, -12.237446, '+261324556072', 2),
(33, 'Parc National Zombitse Vohibasia', 'Le complexe Zombitse Vohibasia est réputé par sa richesse en espèce d’oiseaux rares, endémiques de Madagascar et / ou de la zone. Le Parc fait partie de la zone d’oiseaux endémiques N° 093 d’après World Bank 1992. Il compte également 08 espèces de lémuriens dont certaines sont quasi menacées comme le cas du Phaner furcifer pallescens.', 44.682535, -22.841585, '+261320940192', 6),
(34, 'Parc National Nosy Ve ', 'Parc National Marin, coraux, poissons, Cœlacanthes, tortues marines, les Dugongs, des Dauphins et des Baleines, zones d’herbiers, fonds sablo vaseux.', 43.605577, -23.624581, '+261320940294', 6),
(35, 'Parc National Marin Nosy Tanikely', 'Parc National Marin, abri de plusieurs espèces de poissons, formations végétales de forêts secondaires sur l’ilot', 48.237331, -13.482555, '+261320940061', 2);

-- --------------------------------------------------------

--
-- Structure de la table `province`
--

CREATE TABLE `province` (
  `id_province` int(10) NOT NULL,
  `nom_province` varchar(50) COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Déchargement des données de la table `province`
--

INSERT INTO `province` (`id_province`, `nom_province`) VALUES
(1, 'Antananarivo'),
(2, 'Antsiranana'),
(3, 'Fianarantsoa'),
(4, 'Mahajanga'),
(5, 'Toamasina'),
(6, 'Toliara');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int(10) NOT NULL,
  `pseudo_utilisateur` varchar(50) COLLATE utf8_general_mysql500_ci NOT NULL,
  `profil_utilisateur` longblob NOT NULL,
  `email_utilisateur` varchar(320) COLLATE utf8_general_mysql500_ci NOT NULL,
  `mdp_utilisateur` varchar(32) COLLATE utf8_general_mysql500_ci NOT NULL,
  `longitude_utilisateur` float NOT NULL,
  `latitude_utilisateur` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `pseudo_utilisateur`, `profil_utilisateur`, `email_utilisateur`, `mdp_utilisateur`, `longitude_utilisateur`, `latitude_utilisateur`) VALUES
(1, 'Abdoul', 0x453a4554554445536d69726169617072657320636f6e66696e656d656e746861636b6174686f6e696d6167652075736572494d475f32303230313131305f3135343731362e6a7067, 'ismaelabdoul@gmail.com', 'abdoulismael159', 0, 0),
(2, 'Rivo', 0x453a4554554445536d69726169617072657320636f6e66696e656d656e746861636b6174686f6e696d6167652075736572494d475f32303230313131305f3135343733372e6a7067, 'rivolalaina@gmail.com', 'rivolalaina159', 0, 0),
(3, 'Arleme', 0x453a4554554445536d69726169617072657320636f6e66696e656d656e746861636b6174686f6e696d6167652075736572494d475f32303230313131305f3135343734392e6a7067, 'arlemejohn@gmail.com', 'arlemejohn159', 0, 0),
(4, 'Ella', 0x453a4554554445536d69726169617072657320636f6e66696e656d656e746861636b6174686f6e696d6167652075736572656c6c612e6a7067, 'arilantoella@gmail.com', 'arilantoella159', 0, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id_commentaire`);

--
-- Index pour la table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id_forum`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_image`),
  ADD KEY `id_parc` (`id_parc`);

--
-- Index pour la table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id_note`),
  ADD KEY `id_parc` (`id_parc`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `parc`
--
ALTER TABLE `parc`
  ADD PRIMARY KEY (`id_parc`),
  ADD KEY `id_province` (`id_province`);

--
-- Index pour la table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id_province`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id_commentaire` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `forum`
--
ALTER TABLE `forum`
  MODIFY `id_forum` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id_image` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `note`
--
ALTER TABLE `note`
  MODIFY `id_note` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `parc`
--
ALTER TABLE `parc`
  MODIFY `id_parc` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `province`
--
ALTER TABLE `province`
  MODIFY `id_province` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utilisateur` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Base de données : `multi_project`
--
CREATE DATABASE IF NOT EXISTS `multi_project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `multi_project`;
--
-- Base de données : `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Structure de la table `pma__bookmark`
--
-- Erreur de lecture de structure pour la table phpmyadmin.pma__bookmark : #1932 - Table 'phpmyadmin.pma__bookmark' doesn't exist in engine
-- Erreur de lecture des données pour la table phpmyadmin.pma__bookmark : #1064 - Erreur de syntaxe près de 'FROM `phpmyadmin`.`pma__bookmark`' à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `pma__central_columns`
--
-- Erreur de lecture de structure pour la table phpmyadmin.pma__central_columns : #1932 - Table 'phpmyadmin.pma__central_columns' doesn't exist in engine
-- Erreur de lecture des données pour la table phpmyadmin.pma__central_columns : #1064 - Erreur de syntaxe près de 'FROM `phpmyadmin`.`pma__central_columns`' à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `pma__column_info`
--
-- Erreur de lecture de structure pour la table phpmyadmin.pma__column_info : #1932 - Table 'phpmyadmin.pma__column_info' doesn't exist in engine
-- Erreur de lecture des données pour la table phpmyadmin.pma__column_info : #1064 - Erreur de syntaxe près de 'FROM `phpmyadmin`.`pma__column_info`' à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `pma__designer_settings`
--
-- Erreur de lecture de structure pour la table phpmyadmin.pma__designer_settings : #1932 - Table 'phpmyadmin.pma__designer_settings' doesn't exist in engine
-- Erreur de lecture des données pour la table phpmyadmin.pma__designer_settings : #1064 - Erreur de syntaxe près de 'FROM `phpmyadmin`.`pma__designer_settings`' à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `pma__export_templates`
--
-- Erreur de lecture de structure pour la table phpmyadmin.pma__export_templates : #1932 - Table 'phpmyadmin.pma__export_templates' doesn't exist in engine
-- Erreur de lecture des données pour la table phpmyadmin.pma__export_templates : #1064 - Erreur de syntaxe près de 'FROM `phpmyadmin`.`pma__export_templates`' à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `pma__favorite`
--
-- Erreur de lecture de structure pour la table phpmyadmin.pma__favorite : #1932 - Table 'phpmyadmin.pma__favorite' doesn't exist in engine
-- Erreur de lecture des données pour la table phpmyadmin.pma__favorite : #1064 - Erreur de syntaxe près de 'FROM `phpmyadmin`.`pma__favorite`' à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `pma__history`
--
-- Erreur de lecture de structure pour la table phpmyadmin.pma__history : #1932 - Table 'phpmyadmin.pma__history' doesn't exist in engine
-- Erreur de lecture des données pour la table phpmyadmin.pma__history : #1064 - Erreur de syntaxe près de 'FROM `phpmyadmin`.`pma__history`' à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `pma__navigationhiding`
--
-- Erreur de lecture de structure pour la table phpmyadmin.pma__navigationhiding : #1932 - Table 'phpmyadmin.pma__navigationhiding' doesn't exist in engine
-- Erreur de lecture des données pour la table phpmyadmin.pma__navigationhiding : #1064 - Erreur de syntaxe près de 'FROM `phpmyadmin`.`pma__navigationhiding`' à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `pma__pdf_pages`
--
-- Erreur de lecture de structure pour la table phpmyadmin.pma__pdf_pages : #1932 - Table 'phpmyadmin.pma__pdf_pages' doesn't exist in engine
-- Erreur de lecture des données pour la table phpmyadmin.pma__pdf_pages : #1064 - Erreur de syntaxe près de 'FROM `phpmyadmin`.`pma__pdf_pages`' à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `pma__recent`
--
-- Erreur de lecture de structure pour la table phpmyadmin.pma__recent : #1932 - Table 'phpmyadmin.pma__recent' doesn't exist in engine
-- Erreur de lecture des données pour la table phpmyadmin.pma__recent : #1064 - Erreur de syntaxe près de 'FROM `phpmyadmin`.`pma__recent`' à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `pma__relation`
--
-- Erreur de lecture de structure pour la table phpmyadmin.pma__relation : #1932 - Table 'phpmyadmin.pma__relation' doesn't exist in engine
-- Erreur de lecture des données pour la table phpmyadmin.pma__relation : #1064 - Erreur de syntaxe près de 'FROM `phpmyadmin`.`pma__relation`' à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `pma__savedsearches`
--
-- Erreur de lecture de structure pour la table phpmyadmin.pma__savedsearches : #1932 - Table 'phpmyadmin.pma__savedsearches' doesn't exist in engine
-- Erreur de lecture des données pour la table phpmyadmin.pma__savedsearches : #1064 - Erreur de syntaxe près de 'FROM `phpmyadmin`.`pma__savedsearches`' à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_coords`
--
-- Erreur de lecture de structure pour la table phpmyadmin.pma__table_coords : #1932 - Table 'phpmyadmin.pma__table_coords' doesn't exist in engine
-- Erreur de lecture des données pour la table phpmyadmin.pma__table_coords : #1064 - Erreur de syntaxe près de 'FROM `phpmyadmin`.`pma__table_coords`' à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_info`
--
-- Erreur de lecture de structure pour la table phpmyadmin.pma__table_info : #1932 - Table 'phpmyadmin.pma__table_info' doesn't exist in engine
-- Erreur de lecture des données pour la table phpmyadmin.pma__table_info : #1064 - Erreur de syntaxe près de 'FROM `phpmyadmin`.`pma__table_info`' à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_uiprefs`
--
-- Erreur de lecture de structure pour la table phpmyadmin.pma__table_uiprefs : #1932 - Table 'phpmyadmin.pma__table_uiprefs' doesn't exist in engine
-- Erreur de lecture des données pour la table phpmyadmin.pma__table_uiprefs : #1064 - Erreur de syntaxe près de 'FROM `phpmyadmin`.`pma__table_uiprefs`' à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `pma__tracking`
--
-- Erreur de lecture de structure pour la table phpmyadmin.pma__tracking : #1932 - Table 'phpmyadmin.pma__tracking' doesn't exist in engine
-- Erreur de lecture des données pour la table phpmyadmin.pma__tracking : #1064 - Erreur de syntaxe près de 'FROM `phpmyadmin`.`pma__tracking`' à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `pma__userconfig`
--
-- Erreur de lecture de structure pour la table phpmyadmin.pma__userconfig : #1932 - Table 'phpmyadmin.pma__userconfig' doesn't exist in engine
-- Erreur de lecture des données pour la table phpmyadmin.pma__userconfig : #1064 - Erreur de syntaxe près de 'FROM `phpmyadmin`.`pma__userconfig`' à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `pma__usergroups`
--
-- Erreur de lecture de structure pour la table phpmyadmin.pma__usergroups : #1932 - Table 'phpmyadmin.pma__usergroups' doesn't exist in engine
-- Erreur de lecture des données pour la table phpmyadmin.pma__usergroups : #1064 - Erreur de syntaxe près de 'FROM `phpmyadmin`.`pma__usergroups`' à la ligne 1

-- --------------------------------------------------------

--
-- Structure de la table `pma__users`
--
-- Erreur de lecture de structure pour la table phpmyadmin.pma__users : #1932 - Table 'phpmyadmin.pma__users' doesn't exist in engine
-- Erreur de lecture des données pour la table phpmyadmin.pma__users : #1064 - Erreur de syntaxe près de 'FROM `phpmyadmin`.`pma__users`' à la ligne 1
--
-- Base de données : `projet_multi`
--
CREATE DATABASE IF NOT EXISTS `projet_multi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `projet_multi`;
--
-- Base de données : `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de données : `user_react`
--
CREATE DATABASE IF NOT EXISTS `user_react` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `user_react`;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--
-- Erreur de lecture de structure pour la table user_react.user : #1932 - Table 'user_react.user' doesn't exist in engine
-- Erreur de lecture des données pour la table user_react.user : #1064 - Erreur de syntaxe près de 'FROM `user_react`.`user`' à la ligne 1
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
