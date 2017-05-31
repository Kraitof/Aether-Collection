-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 30, 2017 at 04:17 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CollectorDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `cardID` int(10) UNSIGNED NOT NULL,
  `cardName` varchar(26) DEFAULT NULL,
  `oracleText` varchar(43) DEFAULT NULL,
  `colour` text NOT NULL,
  `manaCost` varchar(4) DEFAULT NULL,
  `rarity` varchar(11) DEFAULT NULL,
  `artist` varchar(21) DEFAULT NULL,
  `edition` varchar(13) DEFAULT NULL,
  `imageSource` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`cardID`, `cardName`, `oracleText`, `colour`, `manaCost`, `rarity`, `artist`, `edition`, `imageSource`) VALUES
(1, 'Honed Khopesh', 'Artifact — Equipment', 'Colourless', '1', 'Common', 'Aaron Miller', 'Amonkhet', 'Honed Khopesh.jpg'),
(2, 'Pyramid of the Pantheon', 'Artifact', 'Colourless', '1', 'Rare', 'Florian de Gesincourt', 'Amonkhet', 'Pyramid of the Pantheon.jpg'),
(3, 'Embalmer\'s Tools', 'Artifact', 'Colourless', '2', 'Uncommon', 'Adrian Majkrzak', 'Amonkhet', 'Embalmer\'s Tools.jpg'),
(4, 'Throne of the God-Pharaoh', 'Legendary Artifact', 'Colourless', '2', 'Rare', 'Titus Lunter', 'Amonkhet', 'Throne of the God-Pharaoh.jpg'),
(5, 'Watchers of the Dead', 'Artifact Creature — Cat 2/2', 'Colourless', '2', 'Uncommon', 'Joseph Meehan', 'Amonkhet', 'Watchers of the Dead.jpg'),
(6, 'Bontu\'s Monument', 'Legendary Artifact', 'Colourless', '3', 'Uncommon', 'Jonas De Ro', 'Amonkhet', 'Bontu\'s Monument.jpg'),
(7, 'Edifice of Authority', 'Artifact', 'Colourless', '3', 'Uncommon', 'Florian de Gesincourt', 'Amonkhet', 'Edifice of Authority.jpg'),
(8, 'Gate to the Afterlife', 'Artifact', 'Colourless', '3', 'Uncommon', 'Christine Choi', 'Amonkhet', 'Gate to the Afterlife.jpg'),
(9, 'Hazoret\'s Monument', 'Legendary Artifact', 'Colourless', '3', 'Uncommon', 'Richard Wright', 'Amonkhet', 'Hazoret\'s Monument.jpg'),
(10, 'Kefnet\'s Monument', 'Legendary Artifact', 'Colourless', '3', 'Uncommon', 'Titus Lunter', 'Amonkhet', 'Kefnet\'s Monument.jpg'),
(11, 'Luxa River Shrine', 'Artifact', 'Colourless', '3', 'Common', 'Sung Choi', 'Amonkhet', 'Luxa River Shrine.jpg'),
(12, 'Oketra\'s Monument', 'Legendary Artifact', 'Colourless', '3', 'Uncommon', 'Christine Choi', 'Amonkhet', 'Oketra\'s Monument.jpg'),
(13, 'Rhonas\'s Monument', 'Legendary Artifact', 'Colourless', '3', 'Uncommon', 'Cliff Childs', 'Amonkhet', 'Rhonas\'s Monument.jpg'),
(14, 'Oracle\'s Vault', 'Artifact', 'Colourless', '4', 'Rare', 'Jonas De Ro', 'Amonkhet', 'Oracle\'s Vault.jpg'),
(15, 'Destined-Lead', 'Instant', 'Black', '1B', 'Uncommon', 'Magali Villeneuve', 'Amonkhet', 'Destined-Lead.jpg'),
(16, 'Doomed Dissenter', 'Creature — Human 1/1', 'Black', '1B', 'Common', 'Tony Foti', 'Amonkhet', 'Doomed Dissenter.jpg'),
(17, 'Dune Beetle', 'Creature — Insect 1/4', 'Black', '1B', 'Common', 'Grzegorz Rutkowski', 'Amonkhet', 'Dune Beetle.jpg'),
(18, 'Lay Bare the Heart', 'Sorcery', 'Black', '1B', 'Uncommon', 'Karl Kopinski', 'Amonkhet', 'Lay Bare the Heart.jpg'),
(19, 'Miasmic Mummy', 'Creature — Zombie Jackal 2/2', 'Black', '1B', 'Common', 'E. M. Gist', 'Amonkhet', 'Miasmic Mummy.jpg'),
(20, 'Shadow of the Grave', 'Instant', 'Black', '1B', 'Rare', 'Darek Zabrocki', 'Amonkhet', 'Shadow of the Grave.jpg'),
(21, 'Tattered Mummy', 'Creature — Zombie Jackal 1/2', 'Black', '1B', 'Common', 'Slawomir Maniak', 'Amonkhet', 'Tattered Mummy.jpg'),
(22, 'Trespasser\'s Curse', 'Enchantment — Aura Curse', 'Black', '1B', 'Common', 'David Palumbo', 'Amonkhet', 'Trespasser\'s Curse.jpg'),
(23, 'Trial of Ambition', 'Enchantment', 'Black', '1B', 'Uncommon', 'Johann Bodin', 'Amonkhet', 'Trial of Ambition.jpg'),
(24, 'Never-Return', 'Sorcery', 'Black', '1BB', 'Rare', 'Daarken', 'Amonkhet', 'Never-Return.jpg'),
(25, 'Unburden', 'Sorcery', 'Black', '1BB', 'Common', 'Svetlin Velinov', 'Amonkhet', 'Unburden.jpg'),
(26, 'Neheb, the Worthy', 'Legendary Creature — Minotaur Warrior 2/2', 'Multicoloured', '1BR', 'Rare', 'Chris Rahn', 'Amonkhet', 'Neheb, the Worthy.jpg'),
(27, 'Bitterblade Warrior', 'Creature — Jackal Warrior 2/2', 'Green', '1G', 'Common', 'Slawomir Maniak', 'Amonkhet', 'Bitterblade Warrior.jpg'),
(28, 'Channeler Initiate', 'Creature — Human Druid 3/4', 'Green', '1G', 'Rare', 'Yongjae Choi', 'Amonkhet', 'Channeler Initiate.jpg'),
(29, 'Dissenter\'s Deliverance', 'Instant', 'Green', '1G', 'Common', 'Bastien L. Deharme', 'Amonkhet', 'Dissenter\'s Deliverance.jpg'),
(30, 'Exemplar of Strength', 'Creature — Human Warrior 4/4', 'Green', '1G', 'Uncommon', 'Sara Winters', 'Amonkhet', 'Exemplar of Strength.jpg'),
(31, 'Haze of Pollen', 'Instant', 'Green', '1G', 'Common', 'Mark Zug', 'Amonkhet', 'Haze of Pollen.jpg'),
(32, 'Initiate\'s Companion', 'Creature — Cat 3/1', 'Green', '1G', 'Common', 'Dan Scott', 'Amonkhet', 'Initiate\'s Companion.jpg'),
(33, 'Naga Vitalist', 'Creature — Naga Druid 1/2', 'Green', '1G', 'Common', 'James Ryman', 'Amonkhet', 'Naga Vitalist.jpg'),
(34, 'Prowling Serpopard', 'Creature — Cat Snake 4/3', 'Green', '1GG', 'Rare', 'Tyler Jacobson', 'Amonkhet', 'Prowling Serpopard.jpg'),
(35, 'Battlefield Scavenger', 'Creature — Jackal Rogue 2/2', 'Red', '1R', 'Uncommon', 'Dan Scott', 'Amonkhet', 'Battlefield Scavenger.jpg'),
(36, 'Bloodrage Brawler', 'Creature — Minotaur Warrior 4/3', 'Red', '1R', 'Uncommon', 'Lars Grant-West', 'Amonkhet', 'Bloodrage Brawler.jpg'),
(37, 'Brute Strength', 'Instant', 'Red', '1R', 'Common', 'Nils Hamm', 'Amonkhet', 'Brute Strength.jpg'),
(38, 'Cut-Ribbons', 'Sorcery', 'Red', '1R', 'Rare', 'Raymond Swanland', 'Amonkhet', 'Cut-Ribbons.jpg'),
(39, 'Fling', 'Instant', 'Red', '1R', 'Common', 'Lucas Graciano', 'Amonkhet', 'Fling.jpg'),
(40, 'Harsh Mentor', 'Creature — Human Cleric 2/2', 'Red', '1R', 'Rare', 'Shreya Shetty', 'Amonkhet', 'Harsh Mentor.jpg'),
(41, 'Nef-Crop Entangler', 'Creature — Human Warrior 2/1', 'Red', '1R', 'Common', 'Dan Scott', 'Amonkhet', 'Nef-Crop Entangler.jpg'),
(42, 'Nimble-Blade Khenra', 'Creature — Jackal Warrior 1/3', 'Red', '1R', 'Common', 'Tomasz Jedruszek', 'Amonkhet', 'Nimble-Blade Khenra.jpg'),
(43, 'Pathmaker Initiate', 'Creature — Human Wizard 2/1', 'Red', '1R', 'Common', 'Josu Hernaiz', 'Amonkhet', 'Pathmaker Initiate.jpg'),
(44, 'Tormenting Voice', 'Sorcery', 'Red', '1R', 'Common', 'Allen Williams', 'Amonkhet', 'Tormenting Voice.jpg'),
(45, 'Khenra Charioteer', 'Creature — Jackal Warrior 3/3', 'Multicoloured', '1RG', 'Uncommon', 'Chris Rallis', 'Amonkhet', 'Khenra Charioteer.jpg'),
(46, 'Sweltering Suns', 'Sorcery', 'Red', '1RR', 'Rare', 'Raymond Swanland', 'Amonkhet', 'Sweltering Suns.jpg'),
(47, 'Cartouche of Knowledge', 'Enchantment — Aura Cartouche', 'Blue', '1U', 'Common', 'Kieran Yanner', 'Amonkhet', 'Cartouche of Knowledge.jpg'),
(48, 'Censor', 'Instant', 'Blue', '1U', 'Uncommon', 'John Stanko', 'Amonkhet', 'Censor.jpg'),
(49, 'Compelling Argument', 'Sorcery', 'Blue', '1U', 'Common', 'Lucas Graciano', 'Amonkhet', 'Compelling Argument.jpg'),
(50, 'Essence Scatter', 'Instant', 'Blue', '1U', 'Common', 'Josh Hass', 'Amonkhet', 'Essence Scatter.jpg'),
(51, 'Failure-Comply', 'Instant', 'Blue', '1U', 'Rare', 'Jason A. Engle', 'Amonkhet', 'Failure-Comply.jpg'),
(52, 'Labyrinth Guardian', 'Creature — Illusion Warrior 2/3', 'Blue', '1U', 'Uncommon', 'Yeong-Hao Han', 'Amonkhet', 'Labyrinth Guardian.jpg'),
(53, 'Seeker of Insight', 'Creature — Human Wizard 1/3', 'Blue', '1U', 'Common', 'Magali Villeneuve', 'Amonkhet', 'Seeker of Insight.jpg'),
(54, 'Tah-Crop Skirmisher', 'Creature — Naga Warrior 2/1', 'Blue', '1U', 'Common', 'Victor Adame Minguez', 'Amonkhet', 'Tah-Crop Skirmisher.jpg'),
(55, 'Winds of Rebuke', 'Instant', 'Blue', '1U', 'Common', 'Mathias Kollros', 'Amonkhet', 'Winds of Rebuke.jpg'),
(56, 'Weaver of Currents', 'Creature — Naga Druid 2/2', 'Multi', '1UG', 'Uncommon', 'Winona Nelson', 'Amonkhet', 'Weaver of Currents.jpg'),
(57, 'Enigma Drake', 'Creature — Drake */4', 'Multicoloured', '1UR', 'Uncommon', 'Steve Argyle', 'Amonkhet', 'Enigma Drake.jpg'),
(58, 'Ancient Crab', 'Creature — Crab 1/5', 'Blue', '1UU', 'Common', 'James Paick', 'Amonkhet', 'Ancient Crab.jpg'),
(59, 'Cancel', 'Instant', 'Blue', '1UU', 'Common', 'Mathias Kollros', 'Amonkhet', 'Cancel.jpg'),
(60, 'Anointer Priest', 'Creature — Human Cleric 1/3', 'White', '1W', 'Common', 'Lake Hurwitz', 'Amonkhet', 'Anointer Priest.jpg'),
(61, 'Binding Mummy', 'Creature — Zombie 2/2', 'White', '1W', 'Common', 'Shreya Shetty', 'Amonkhet', 'Binding Mummy.jpg'),
(62, 'Compulsory Rest', 'Enchantment — Aura', 'White', '1W', 'Common', 'Eric Deschamps', 'Amonkhet', 'Compulsory Rest.jpg'),
(63, 'Glory-Bound Initiate', 'Creature — Human Warrior 3/1', 'White', '1W', 'Rare', 'David Palumbo', 'Amonkhet', 'Glory-Bound Initiate.jpg'),
(64, 'Gust Walker', 'Creature — Human Wizard 2/2', 'White', '1W', 'Common', 'Jason Rainville', 'Amonkhet', 'Gust Walker.jpg'),
(65, 'Impeccable Timing', 'Instant', 'White', '1W', 'Common', 'Kev Walker', 'Amonkhet', 'Impeccable Timing.jpg'),
(66, 'In Oketra\'s Name', 'Instant', 'White', '1W', 'Common', 'Nils Hamm', 'Amonkhet', 'In Oketra\'s Name.jpg'),
(67, 'Mighty Leap', 'Instant', 'White', '1W', 'Common', 'Sidharth Chaturvedi', 'Amonkhet', 'Mighty Leap.jpg'),
(68, 'Prepare-Fight', 'Instant', 'White', '1W', 'Rare', 'Zack Stella', 'Amonkhet', 'Prepare-Fight.jpg'),
(69, 'Trueheart Duelist', 'Creature — Human Warrior 2/2', 'White', '1W', 'Uncommon', 'Izzy', 'Amonkhet', 'Trueheart Duelist.jpg'),
(70, 'Vizier of Remedies', 'Creature — Human Cleric 2/1', 'White', '1W', 'Uncommon', 'Randy Gallegos', 'Amonkhet', 'Vizier of Remedies.jpg'),
(71, 'Gideon of the Trials', 'Planeswalker — Gideon (Loyalty: 3)', 'White', '1WW', 'Mythic Rare', 'Izzy', 'Amonkhet', 'Gideon of the Trials.jpg'),
(72, 'Baleful Ammit', 'Creature — Crocodile Demon 4/3', 'Black', '2B', 'Uncommon', 'Seb McKinnon', 'Amonkhet', 'Baleful Ammit.jpg'),
(73, 'Blighted Bat', 'Creature — Zombie Bat 2/1', 'Black', '2B', 'Common', 'Nils Hamm', 'Amonkhet', 'Blighted Bat.jpg'),
(74, 'Bontu the Glorified', 'Legendary Creature — God 4/6', 'Black', '2B', 'Mythic Rare', 'Chase Stone', 'Amonkhet', 'Bontu the Glorified.jpg'),
(75, 'Cartouche of Ambition', 'Enchantment — Aura Cartouche', 'Black', '2B', 'Common', 'Kieran Yanner', 'Amonkhet', 'Cartouche of Ambition.jpg'),
(76, 'Cursed Minotaur', 'Creature — Zombie Minotaur 3/2', 'Black', '2B', 'Common', 'David Palumbo', 'Amonkhet', 'Cursed Minotaur.jpg'),
(77, 'Desiccated Naga', 'Creature — Zombie Naga 3/2', 'Black', '2B', 'Uncommon', 'Svetlin Velinov', 'Amonkhet', 'Desiccated Naga.jpg'),
(78, 'Dispossess', 'Sorcery', 'Black', '2B', 'Rare', 'Mark Behm', 'Amonkhet', 'Dispossess.jpg'),
(79, 'Faith of the Devoted', 'Enchantment', 'Black', '2B', 'Uncommon', 'Raoul Vitale', 'Amonkhet', 'Faith of the Devoted.jpg'),
(80, 'Lord of the Accursed', 'Creature — Zombie 2/3', 'Black', '2B', 'Uncommon', 'Grzegorz Rutkowski', 'Amonkhet', 'Lord of the Accursed.jpg'),
(81, 'Nest of Scarabs', 'Enchantment', 'Black', '2B', 'Uncommon', 'Jason A. Engle', 'Amonkhet', 'Nest of Scarabs.jpg'),
(82, 'Painful Lesson', 'Sorcery', 'Black', '2B', 'Common', 'Adrian Majkrzak', 'Amonkhet', 'Painful Lesson.jpg'),
(83, 'Plague Belcher', 'Creature — Zombie Beast 5/4', 'Black', '2B', 'Rare', 'Izzy', 'Amonkhet', 'Plague Belcher.jpg'),
(84, 'Splendid Agony', 'Instant', 'Black', '2B', 'Common', 'Clint Cearley', 'Amonkhet', 'Splendid Agony.jpg'),
(85, 'Wander in Death', 'Sorcery', 'Black', '2B', 'Common', 'Seb McKinnon', 'Amonkhet', 'Wander in Death.jpg'),
(86, 'Wasteland Scorpion', 'Creature — Scorpion 2/2', 'Black', '2B', 'Common', 'Yeong-Hao Han', 'Amonkhet', 'Wasteland Scorpion.jpg'),
(87, 'Rags-Riches', 'Sorcery', 'Black', '2BB', 'Rare', 'Greg Opalinski', 'Amonkhet', 'Rags-Riches.jpg'),
(88, 'Merciless Javelineer', 'Creature — Minotaur Warrior 4/2', 'Multicoloured', '2BR', 'Uncommon', 'Nils Hamm', 'Amonkhet', 'Merciless Javelineer.jpg'),
(89, 'Benefaction of Rhonas', 'Sorcery', 'Green', '2G', 'Common', 'Tommy Arnold', 'Amonkhet', 'Benefaction of Rhonas.jpg'),
(90, 'Cartouche of Strength', 'Enchantment — Aura Cartouche', 'Green', '2G', 'Common', 'Kieran Yanner', 'Amonkhet', 'Cartouche of Strength.jpg'),
(91, 'Defiant Greatmaw', 'Creature — Hippo 4/5', 'Green', '2G', 'Uncommon', 'Deruchenko Alexander', 'Amonkhet', 'Defiant Greatmaw.jpg'),
(92, 'Gift of Paradise', 'Enchantment — Aura', 'Green', '2G', 'Common', 'Ryan Pancoast', 'Amonkhet', 'Gift of Paradise.jpg'),
(93, 'Harvest Season', 'Sorcery', 'Green', '2G', 'Rare', 'Shreya Shetty', 'Amonkhet', 'Harvest Season.jpg'),
(94, 'Hooded Brawler', 'Creature — Naga Warrior 3/2', 'Green', '2G', 'Common', 'Daarken', 'Amonkhet', 'Hooded Brawler.jpg'),
(95, 'Manglehorn', 'Creature — Beast 2/2', 'Green', '2G', 'Uncommon', 'Lius Lasahido', 'Amonkhet', 'Manglehorn.jpg'),
(96, 'Mouth-Feed', 'Sorcery', 'Green', '2G', 'Rare', 'Zack Stella', 'Amonkhet', 'Mouth-Feed.jpg'),
(97, 'Ornery Kudu', 'Creature — Antelope 3/4', 'Green', '2G', 'Common', 'Deruchenko Alexander', 'Amonkhet', 'Ornery Kudu.jpg'),
(98, 'Pouncing Cheetah', 'Creature — Cat 3/2', 'Green', '2G', 'Common', 'Matt Stewart', 'Amonkhet', 'Pouncing Cheetah.jpg'),
(99, 'Rhonas the Indomitable', 'Legendary Creature — God 5/5', 'Green', '2G', 'Mythic Rare', 'Chase Stone', 'Amonkhet', 'Rhonas the Indomitable.jpg'),
(100, 'Spidery Grasp', 'Instant', 'Green', '2G', 'Common', 'Dan Scott', 'Amonkhet', 'Spidery Grasp.jpg'),
(101, 'Spring-Mind', 'Sorcery', 'Green', '2G', 'Uncommon', 'Josu Hernaiz', 'Amonkhet', 'Spring-Mind.jpg'),
(102, 'Synchronized Strike', 'Instant', 'Green', '2G', 'Uncommon', 'David Palumbo', 'Amonkhet', 'Synchronized Strike.jpg'),
(103, 'Trial of Strength', 'Enchantment', 'Green', '2G', 'Uncommon', 'Kieran Yanner', 'Amonkhet', 'Trial of Strength.jpg'),
(104, 'Watchful Naga', 'Creature — Naga Wizard 2/2', 'Green', '2G', 'Uncommon', 'Anastasia Ovchinnikov', 'Amonkhet', 'Watchful Naga.jpg'),
(105, 'Ahn-Crop Crasher', 'Creature — Minotaur Warrior 3/2', 'Red', '2R', 'Uncommon', 'Seb McKinnon', 'Amonkhet', 'Ahn-Crop Crasher.jpg'),
(106, 'Combat Celebrant', 'Creature — Human Warrior 4/1', 'Red', '2R', 'Mythic Rare', 'Chris Rallis', 'Amonkhet', 'Combat Celebrant.jpg'),
(107, 'Glorious End', 'Instant', 'Red', '2R', 'Mythic Rare', 'Raymond Swanland', 'Amonkhet', 'Glorious End.jpg'),
(108, 'Hazoret\'s Favor', 'Enchantment', 'Red', '2R', 'Rare', 'Raymond Swanland', 'Amonkhet', 'Hazoret\'s Favor.jpg'),
(109, 'Insult-Injury', 'Sorcery', 'Red', '2R', 'Rare', 'Lucas Graciano', 'Amonkhet', 'Insult-Injury.jpg'),
(110, 'Minotaur Sureshot', 'Creature — Minotaur Archer 2/3', 'Red', '2R', 'Common', 'Joseph Meehan', 'Amonkhet', 'Minotaur Sureshot.jpg'),
(111, 'Onward-Victory', 'Instant', 'Red', '2R', 'Uncommon', 'Grzegorz Rutkowski', 'Amonkhet', 'Onward-Victory.jpg'),
(112, 'Thresher Lizard', 'Creature — Lizard 3/2', 'Red', '2R', 'Common', 'Craig J Spearing', 'Amonkhet', 'Thresher Lizard.jpg'),
(113, 'Trial of Zeal', 'Enchantment', 'Red', '2R', 'Uncommon', 'Svetlin Velinov', 'Amonkhet', 'Trial of Zeal.jpg'),
(114, 'Heart-Piercer Manticore', 'Creature — Manticore 4/3', 'Red', '2RR', 'Rare', 'Scott Murphy', 'Amonkhet', 'Heart-Piercer Manticore.jpg'),
(115, 'Hyena Pack', 'Creature — Hyena 3/4', 'Red', '2RR', 'Common', 'Winona Nelson', 'Amonkhet', 'Hyena Pack.jpg'),
(116, 'As Foretold', 'Enchantment', 'Blue', '2U', 'Mythic Rare', 'Tommy Arnold', 'Amonkhet', 'As Foretold.jpg'),
(117, 'Drake Haven', 'Enchantment', 'Blue', '2U', 'Rare', 'John Severin Brassell', 'Amonkhet', 'Drake Haven.jpg'),
(118, 'Galestrike', 'Instant', 'Blue', '2U', 'Uncommon', 'Mike Bierek', 'Amonkhet', 'Galestrike.jpg'),
(119, 'Hekma Sentinels', 'Creature — Human Cleric 2/3', 'Blue', '2U', 'Common', 'James Ryman', 'Amonkhet', 'Hekma Sentinels.jpg'),
(120, 'Illusory Wrappings', 'Enchantment — Aura', 'Blue', '2U', 'Common', 'Deruchenko Alexander', 'Amonkhet', 'Illusory Wrappings.jpg'),
(121, 'Kefnet the Mindful', 'Legendary Creature — God 5/5', 'Blue', '2U', 'Mythic Rare', 'Chase Stone', 'Amonkhet', 'Kefnet the Mindful.jpg'),
(122, 'Reduce-Rubble', 'Instant', 'Blue', '2U', 'Uncommon', 'Eric Deschamps', 'Amonkhet', 'Reduce-Rubble.jpg'),
(123, 'Scribe of the Mindful', 'Creature — Human Cleric 2/2', 'Blue', '2U', 'Common', 'Bastien L. Deharme', 'Amonkhet', 'Scribe of the Mindful.jpg'),
(124, 'Vizier of Tumbling Sands', 'Creature — Human Cleric 1/3', 'Blue', '2U', 'Uncommon', 'Josu Hernaiz', 'Amonkhet', 'Vizier of Tumbling Sands.jpg'),
(125, 'Bounty of the Luxa', 'Enchantment', 'Multicoloured', '2UG', 'Rare', 'Jonas De Ro', 'Amonkhet', 'Bounty of the Luxa.jpg'),
(126, 'Curator of Mysteries', 'Creature — Sphinx 4/4', 'Blue', '2UU', 'Rare', 'Christine Choi', 'Amonkhet', 'Curator of Mysteries.jpg'),
(127, 'Vizier of Many Faces', 'Creature — Shapeshifter Cleric 0/0', 'Blue', '2UU', 'Rare', 'Ryan Yee', 'Amonkhet', 'Vizier of Many Faces.jpg'),
(128, 'Aven Mindcensor', 'Creature — Bird Wizard 2/1', 'White', '2W', 'Rare', 'Eric Deschamps', 'Amonkhet', 'Aven Mindcensor.jpg'),
(129, 'Companion of the Trials', 'Creature — Bird Soldier 2/2', 'White', '2W', 'Uncommon', 'Aaron Miller', 'Amonkhet', 'Companion of the Trials.jpg'),
(130, 'Devoted Crop-Mate', 'Creature — Human Warrior 3/2', 'White', '2W', 'Uncommon', 'Zoltan Boros', 'Amonkhet', 'Devoted Crop-Mate.jpg'),
(131, 'Forsake the Worldly', 'Instant', 'White', '2W', 'Common', 'Steve Argyle', 'Amonkhet', 'Forsake the Worldly.jpg'),
(132, 'Graceful Cat', 'Creature — Cat 2/2', 'White', '2W', 'Common', 'John Stanko', 'Amonkhet', 'Graceful Cat.jpg'),
(133, 'Renewed Faith', 'Instant', 'White', '2W', 'Uncommon', 'Wesley Burt', 'Amonkhet', 'Renewed Faith.jpg'),
(134, 'Rhet-Crop Spearmaster', 'Creature — Human Warrior 3/1', 'White', '2W', 'Common', 'Dan Scott', 'Amonkhet', 'Rhet-Crop Spearmaster.jpg'),
(135, 'Start-Finish', 'Instant', 'White', '2W', 'Uncommon', 'Magali Villeneuve', 'Amonkhet', 'Start-Finish.jpg'),
(136, 'Those Who Serve', 'Creature — Zombie 2/4', 'White', '2W', 'Common', 'Volkan Baga', 'Amonkhet', 'Those Who Serve.jpg'),
(137, 'Trial of Solidarity', 'Enchantment', 'White', '2W', 'Uncommon', 'Daniel Ljunggren', 'Amonkhet', 'Trial of Solidarity.jpg'),
(138, 'Unwavering Initiate', 'Creature — Human Warrior 3/2', 'White', '2W', 'Common', 'Greg Opalinski', 'Amonkhet', 'Unwavering Initiate.jpg'),
(139, 'Vizier of Deferment', 'Creature — Human Cleric 2/2', 'White', '2W', 'Uncommon', 'Deruchenko Alexander', 'Amonkhet', 'Vizier of Deferment.jpg'),
(140, 'Ahn-Crop Champion', 'Creature — Human Warrior 4/4', 'Multicoloured', '2WG', 'Uncommon', 'Craig J Spearing', 'Amonkhet', 'Ahn-Crop Champion.jpg'),
(141, 'Aven Wind Guide', 'Creature — Bird Warrior 2/3', 'Multicoloured', '2WU', 'Uncommon', 'Sidharth Chaturvedi', 'Amonkhet', 'Aven Wind Guide.jpg'),
(142, 'Dusk-Dawn', 'Sorcery', 'White', '2WW', 'Rare', 'Noah Bradley', 'Amonkhet', 'Dusk-Dawn.jpg'),
(143, 'Gideon\'s Intervention', 'Enchantment', 'White', '2WW', 'Rare', 'Daarken', 'Amonkhet', 'Gideon\'s Intervention.jpg'),
(144, 'Bone Picker', 'Creature — Bird 3/2', 'Black', '3B', 'Uncommon', 'Yeong-Hao Han', 'Amonkhet', 'Bone Picker.jpg'),
(145, 'Gravedigger', 'Creature — Zombie 2/2', 'Black', '3B', 'Uncommon', 'Tony Foti', 'Amonkhet', 'Gravedigger.jpg'),
(146, 'Grim Strider', 'Creature — Horror 6/6', 'Black', '3B', 'Uncommon', 'Christine Choi', 'Amonkhet', 'Grim Strider.jpg'),
(147, 'Pitiless Vizier', 'Creature — Minotaur Cleric 4/2', 'Black', '3B', 'Common', 'Volkan Baga', 'Amonkhet', 'Pitiless Vizier.jpg'),
(148, 'Soulstinger', 'Creature — Scorpion Demon 4/5', 'Black', '3B', 'Common', 'Mike Burns', 'Amonkhet', 'Soulstinger.jpg'),
(149, 'Archfiend of Ifnir', 'Creature — Demon 5/4', 'Black', '3BB', 'Rare', 'Seb McKinnon', 'Amonkhet', 'Archfiend of Ifnir.jpg'),
(150, 'Liliana, Death\'s Majesty', 'Planeswalker — Liliana (Loyalty: 5)', 'Black', '3BB', 'Mythic Rare', 'Chris Rallis', 'Amonkhet', 'Liliana, Death\'s Majesty.jpg'),
(151, 'Liliana\'s Mastery', 'Enchantment', 'Black', '3BB', 'Rare', 'Kieran Yanner', 'Amonkhet', 'Liliana\'s Mastery.jpg'),
(152, 'Decimator Beetle', 'Creature — Insect 4/5', 'Multicoloured', '3BG', 'Uncommon', 'Adrian Majkrzak', 'Amonkhet', 'Decimator Beetle.jpg'),
(153, 'Champion of Rhonas', 'Creature — Jackal Warrior 3/3', 'Green', '3G', 'Rare', 'Winona Nelson', 'Amonkhet', 'Champion of Rhonas.jpg'),
(154, 'Crocodile of the Crossing', 'Creature — Crocodile 5/4', 'Green', '3G', 'Uncommon', 'Kev Walker', 'Amonkhet', 'Crocodile of the Crossing.jpg'),
(155, 'Giant Spider', 'Creature — Spider 2/4', 'Green', '3G', 'Common', 'Aaron Miller', 'Amonkhet', 'Giant Spider.jpg'),
(156, 'Quarry Hauler', 'Creature — Camel 4/3', 'Green', '3G', 'Common', 'David Gaillet', 'Amonkhet', 'Quarry Hauler.jpg'),
(157, 'Vizier of the Menagerie', 'Creature — Naga Cleric 3/4', 'Green', '3G', 'Mythic Rare', 'Victor Adame Minguez', 'Amonkhet', 'Vizier of the Menagerie.jpg'),
(158, 'Electrify', 'Instant', 'Red', '3R', 'Common', 'Craig J Spearing', 'Amonkhet', 'Electrify.jpg'),
(159, 'Emberhorn Minotaur', 'Creature — Minotaur Warrior 4/3', 'Red', '3R', 'Common', 'Viktor Titov', 'Amonkhet', 'Emberhorn Minotaur.jpg'),
(160, 'Hazoret the Fervent', 'Legendary Creature — God 5/4', 'Red', '3R', 'Mythic Rare', 'Chase Stone', 'Amonkhet', 'Hazoret the Fervent.jpg'),
(161, 'Limits of Solidarity', 'Sorcery', 'Red', '3R', 'Uncommon', 'Craig J Spearing', 'Amonkhet', 'Limits of Solidarity.jpg'),
(162, 'Pursue Glory', 'Instant', 'Red', '3R', 'Common', 'Johann Bodin', 'Amonkhet', 'Pursue Glory.jpg'),
(163, 'Violent Impact', 'Sorcery', 'Red', '3R', 'Common', 'Jason Rainville', 'Amonkhet', 'Violent Impact.jpg'),
(164, 'Warfire Javelineer', 'Creature — Minotaur Warrior 2/3', 'Red', '3R', 'Uncommon', 'Yohann Schepacz', 'Amonkhet', 'Warfire Javelineer.jpg'),
(165, 'Samut, Voice of Dissent', 'Legendary Creature — Human Warrior 3/4', 'Multicoloured', '3RG', 'Mythic Rare', 'Aleksi Briclot', 'Amonkhet', 'Samut, Voice of Dissent.jpg'),
(166, 'Glorybringer', 'Creature — Dragon 4/4', 'Multicoloured', '3RR', 'Rare', 'Sam Burley', 'Amonkhet', 'Glorybringer.jpg'),
(167, 'Aven Initiate', 'Creature — Bird Warrior 3/2', 'Blue', '3U', 'Common', 'Jakub Kasper', 'Amonkhet', 'Aven Initiate.jpg'),
(168, 'Commit-Memory', 'Instant', 'Blue', '3U', 'Rare', 'Ryan Alexander Lee', 'Amonkhet', 'Commit-Memory.jpg'),
(169, 'Decision Paralysis', 'Instant', 'Blue', '3U', 'Common', 'Vincent Proce', 'Amonkhet', 'Decision Paralysis.jpg'),
(170, 'Hieroglyphic Illumination', 'Instant', 'Blue', '3U', 'Common', 'Raoul Vitale', 'Amonkhet', 'Hieroglyphic Illumination.jpg'),
(171, 'Naga Oracle', 'Creature — Naga Cleric 2/4', 'Blue', '3U', 'Common', 'Deruchenko Alexander', 'Amonkhet', 'Naga Oracle.jpg'),
(172, 'Sacred Excavation', 'Sorcery', 'Blue', '3U', 'Uncommon', 'Noah Bradley', 'Amonkhet', 'Sacred Excavation.jpg'),
(173, 'Trial of Knowledge', 'Enchantment', 'Blue', '3U', 'Uncommon', 'Viktor Titov', 'Amonkhet', 'Trial of Knowledge.jpg'),
(174, 'Zenith Seeker', 'Creature — Bird Wizard 2/2', 'Blue', '3U', 'Uncommon', 'Jason Kang', 'Amonkhet', 'Zenith Seeker.jpg'),
(175, 'Glyph Keeper', 'Creature — Sphinx 5/3', 'Blue', '3UU', 'Rare', 'Chris Rahn', 'Amonkhet', 'Glyph Keeper.jpg'),
(176, 'Anointed Procession', 'Enchantment', 'White', '3W', 'Rare', 'Victor Adame Minguez', 'Amonkhet', 'Anointed Procession.jpg'),
(177, 'Cast Out', 'Enchantment', 'White', '3W', 'Uncommon', 'Magali Villeneuve', 'Amonkhet', 'Cast Out.jpg'),
(178, 'Oketra the True', 'Legendary Creature — God 3/6', 'White', '3W', 'Mythic Rare', 'Chase Stone', 'Amonkhet', 'Oketra the True.jpg'),
(179, 'Sparring Mummy', 'Creature — Zombie 3/3', 'White', '3W', 'Common', 'Ryan Pancoast', 'Amonkhet', 'Sparring Mummy.jpg'),
(180, 'Tah-Crop Elite', 'Creature — Bird Warrior 2/2', 'White', '3W', 'Common', 'Raoul Vitale', 'Amonkhet', 'Tah-Crop Elite.jpg'),
(181, 'Angel of Sanctions', 'Creature — Angel 3/4', 'White', '3WW', 'Mythic Rare', 'Min Yum', 'Amonkhet', 'Angel of Sanctions.jpg'),
(182, 'Oketra\'s Attendant', 'Creature — Bird Soldier 3/3', 'White', '3WW', 'Uncommon', 'Lake Hurwitz', 'Amonkhet', 'Oketra\'s Attendant.jpg'),
(183, 'Regal Caracal', 'Creature — Cat 3/3', 'White', '3WW', 'Rare', 'Filip Burburan', 'Amonkhet', 'Regal Caracal.jpg'),
(184, 'Final Reward', 'Instant', 'Black', '4B', 'Common', 'Sidharth Chaturvedi', 'Amonkhet', 'Final Reward.jpg'),
(185, 'Horror of the Broken Lands', 'Creature — Horror 4/4', 'Black', '4B', 'Common', 'Daarken', 'Amonkhet', 'Horror of the Broken Lands.jpg'),
(186, 'Liliana\'s Influence', 'Sorcery', 'Black', '4BB', 'Rare', 'Winona Nelson', 'Amonkhet', 'Liliana\'s Influence.jpg'),
(187, 'Stir the Sands', 'Sorcery', 'Black', '4BB', 'Uncommon', 'David Gaillet', 'Amonkhet', 'Stir the Sands.jpg'),
(188, 'Colossapede', 'Creature — Insect 5/5', 'Green', '4G', 'Common', 'Jason Kang', 'Amonkhet', 'Colossapede.jpg'),
(189, 'Scaled Behemoth', 'Creature — Crocodile 6/7', 'Green', '4GG', 'Uncommon', 'Marco Nelor', 'Amonkhet', 'Scaled Behemoth.jpg'),
(190, 'Deem Worthy', 'Instant', 'Red', '4R', 'Uncommon', 'Lius Lasahido', 'Amonkhet', 'Deem Worthy.jpg'),
(191, 'Manticore of the Gauntlet', 'Creature — Manticore 5/4', 'Red', '4R', 'Common', 'James Paick', 'Amonkhet', 'Manticore of the Gauntlet.jpg'),
(192, 'Trueheart Twins', 'Creature — Jackal Warrior 4/4', 'Red', '4R', 'Uncommon', 'Matt Stewart', 'Amonkhet', 'Trueheart Twins.jpg'),
(193, 'Shimmerscale Drake', 'Creature — Drake 3/4', 'Blue', '4U', 'Common', 'Tony Foti', 'Amonkhet', 'Shimmerscale Drake.jpg'),
(194, 'Angler Drake', 'Creature — Drake 4/4', 'Blue', '4UU', 'Uncommon', 'Svetlin Velinov', 'Amonkhet', 'Angler Drake.jpg'),
(195, 'Floodwaters', 'Sorcery', 'Blue', '4UU', 'Common', 'Jung Park', 'Amonkhet', 'Floodwaters.jpg'),
(196, 'Gideon, Martial Paragon', 'Planeswalker — Gideon (Loyalty: 5)', 'White', '4W', 'Mythic Rare', 'Daarken', 'Amonkhet', 'Gideon, Martial Paragon.jpg'),
(197, 'Gideon\'s Resolve', 'Enchantment', 'White', '4W', 'Rare', 'Jakub Kasper', 'Amonkhet', 'Gideon\'s Resolve.jpg'),
(198, 'Protection of the Hekma', 'Enchantment', 'White', '4W', 'Uncommon', 'Ryan Alexander Lee', 'Amonkhet', 'Protection of the Hekma.jpg'),
(199, 'Supply Caravan', 'Creature — Camel 3/5', 'White', '4W', 'Common', 'Nils Hamm', 'Amonkhet', 'Supply Caravan.jpg'),
(200, 'Cruel Reality', 'Enchantment — Aura Curse', 'Black', '5BB', 'Mythic Rare', 'Kieran Yanner', 'Amonkhet', 'Cruel Reality.jpg'),
(201, 'Liliana, Death Wielder', 'Planeswalker — Liliana (Loyalty: 5)', 'Black', '5BB', 'Mythic Rare', 'Clint Cearley', 'Amonkhet', 'Liliana, Death Wielder.jpg'),
(202, 'Honored Hydra', 'Creature — Snake Hydra 6/6', 'Green', '5G', 'Rare', 'Todd Lockwood', 'Amonkhet', 'Honored Hydra.jpg'),
(203, 'Shefet Monitor', 'Creature — Lizard 6/5', 'Green', '5G', 'Uncommon', 'Viktor Titov', 'Amonkhet', 'Shefet Monitor.jpg'),
(204, 'Greater Sandwurm', 'Creature — Wurm 7/7', 'Green', '5GG', 'Common', 'Steven Belledin', 'Amonkhet', 'Greater Sandwurm.jpg'),
(205, 'Desert Cerodon', 'Creature — Beast 6/4', 'Red', '5R', 'Common', 'Igor Kieryluk', 'Amonkhet', 'Desert Cerodon.jpg'),
(206, 'New Perspectives', 'Enchantment', 'Blue', '5U', 'Rare', 'Darek Zabrocki', 'Amonkhet', 'New Perspectives.jpg'),
(207, 'River Serpent', 'Creature — Serpent 5/5', 'Blue', '5U', 'Common', 'Christopher Moeller', 'Amonkhet', 'River Serpent.jpg'),
(208, 'Cryptic Serpent', 'Creature — Serpent 6/5', 'Blue', '5UU', 'Uncommon', 'Lius Lasahido', 'Amonkhet', 'Cryptic Serpent.jpg'),
(209, 'Lay Claim', 'Enchantment — Aura', 'Blue', '5UU', 'Uncommon', 'Chris Rallis', 'Amonkhet', 'Lay Claim.jpg'),
(210, 'Winged Shepherd', 'Creature — Angel 3/3', 'White', '5W', 'Common', 'Chris Rahn', 'Amonkhet', 'Winged Shepherd.jpg'),
(211, 'Seraph of the Suns', 'Creature — Angel 4/4', 'White', '5WW', 'Uncommon', 'Winona Nelson', 'Amonkhet', 'Seraph of the Suns.jpg'),
(212, 'Sandwurm Convergence', 'Enchantment', 'Green', '6GG', 'Rare', 'Slawomir Maniak', 'Amonkhet', 'Sandwurm Convergence.jpg'),
(213, 'Approach of the Second Sun', 'Sorcery', 'White', '6W', 'Rare', 'Noah Bradley', 'Amonkhet', 'Approach of the Second Sun.jpg'),
(214, 'Dread Wanderer', 'Creature — Zombie Jackal 2/1', 'Black', 'B', 'Rare', 'Josh Hass', 'Amonkhet', 'Dread Wanderer.jpg'),
(215, 'Festering Mummy', 'Creature — Zombie 1/1', 'Black', 'B', 'Common', 'Christopher Burdett', 'Amonkhet', 'Festering Mummy.jpg'),
(216, 'Ruthless Sniper', 'Creature — Human Archer 1/2', 'Black', 'B', 'Uncommon', 'Sara Winters', 'Amonkhet', 'Ruthless Sniper.jpg'),
(217, 'Scarab Feast', 'Instant', 'Black', 'B', 'Common', 'Tony Foti', 'Amonkhet', 'Scarab Feast.jpg'),
(218, 'Supernatural Stamina', 'Instant', 'Black', 'B', 'Common', 'Christopher Moeller', 'Amonkhet', 'Supernatural Stamina.jpg'),
(219, 'Hapatra, Vizier of Poisons', 'Legendary Creature — Human Cleric 2/2', 'Multicoloured', 'BG', 'Rare', 'Tyler Jacobson', 'Amonkhet', 'Hapatra, Vizier of Poisons.jpg'),
(220, 'Hapatra\'s Mark', 'Instant', 'Green', 'G', 'Uncommon', 'Lindsey Look', 'Amonkhet', 'Hapatra\'s Mark.jpg'),
(221, 'Oashra Cultivator', 'Creature — Human Druid 0/3', 'Green', 'G', 'Common', 'Sara Winters', 'Amonkhet', 'Oashra Cultivator.jpg'),
(222, 'Shed Weakness', 'Instant', 'Green', 'G', 'Common', 'Christine Choi', 'Amonkhet', 'Shed Weakness.jpg'),
(223, 'Sixth Sense', 'Enchantment — Aura', 'Green', 'G', 'Uncommon', 'Zoltan Boros', 'Amonkhet', 'Sixth Sense.jpg'),
(224, 'Stinging Shot', 'Instant', 'Green', 'G', 'Common', 'Scott Murphy', 'Amonkhet', 'Stinging Shot.jpg'),
(225, 'Blazing Volley', 'Sorcery', 'Red', 'R', 'Common', 'Zezhou Chen', 'Amonkhet', 'Blazing Volley.jpg'),
(226, 'Bloodlust Inciter', 'Creature — Human Warrior 1/1', 'Red', 'R', 'Common', 'Anthony Palumbo', 'Amonkhet', 'Bloodlust Inciter.jpg'),
(227, 'Cartouche of Zeal', 'Enchantment — Aura Cartouche', 'Red', 'R', 'Common', 'Kieran Yanner', 'Amonkhet', 'Cartouche of Zeal.jpg'),
(228, 'Consuming Fervor', 'Enchantment — Aura', 'Red', 'R', 'Uncommon', 'Svetlin Velinov', 'Amonkhet', 'Consuming Fervor.jpg'),
(229, 'Flameblade Adept', 'Creature — Jackal Warrior 1/2', 'Red', 'R', 'Uncommon', 'Tomasz Jedruszek', 'Amonkhet', 'Flameblade Adept.jpg'),
(230, 'Magma Spray', 'Instant', 'Red', 'R', 'Common', 'Svetlin Velinov', 'Amonkhet', 'Magma Spray.jpg'),
(231, 'Soul-Scar Mage', 'Creature — Human Wizard 1/2', 'Red', 'R', 'Rare', 'Steve Argyle', 'Amonkhet', 'Soul-Scar Mage.jpg'),
(232, 'Slither Blade', 'Creature — Naga Rogue 1/2', 'Blue', 'U', 'Common', 'Zezhou Chen', 'Amonkhet', 'Slither Blade.jpg'),
(233, 'Shadowstorm Vizier', 'Creature — Human Cleric 1/3', 'Multicoloured', 'UB', 'Uncommon', 'Yongjae Choi', 'Amonkhet', 'Shadowstorm Vizier.jpg'),
(234, 'Cartouche of Solidarity', 'Enchantment — Aura Cartouche', 'White', 'W', 'Common', 'Kieran Yanner', 'Amonkhet', 'Cartouche of Solidarity.jpg'),
(235, 'Djeru\'s Resolve', 'Instant', 'White', 'W', 'Common', 'Kieran Yanner', 'Amonkhet', 'Djeru\'s Resolve.jpg'),
(236, 'Fan Bearer', 'Creature — Zombie 1/2', 'White', 'W', 'Common', 'Anthony Palumbo', 'Amonkhet', 'Fan Bearer.jpg'),
(237, 'Sacred Cat', 'Creature — Cat 1/1', 'White', 'W', 'Common', 'Zezhou Chen', 'Amonkhet', 'Sacred Cat.jpg'),
(238, 'Time to Reflect', 'Instant', 'White', 'W', 'Uncommon', 'Daarken', 'Amonkhet', 'Time to Reflect.jpg'),
(239, 'Wayward Servant', 'Creature — Zombie 2/2', 'Multicoloured', 'WB', 'Uncommon', 'Anthony Palumbo', 'Amonkhet', 'Wayward Servant.jpg'),
(240, 'Honored Crop-Captain', 'Creature — Human Warrior 3/2', 'Multicoloured', 'WR', 'Uncommon', 'Sara Winters', 'Amonkhet', 'Honored Crop-Captain.jpg'),
(241, 'Temmet, Vizier of Naktamun', 'Legendary Creature — Human Cleric 2/2', 'Multicoloured', 'WU', 'Rare', 'Anna Steinbauer', 'Amonkhet', 'Temmet, Vizier of Naktamun.jpg'),
(242, 'Heaven-Earth', 'Instant', 'Green', 'XG', 'Rare', 'Jonas De Ro', 'Amonkhet', 'Heaven-Earth.jpg'),
(243, 'By Force', 'Sorcery', 'Red', 'XR', 'Uncommon', 'Magali Villeneuve', 'Amonkhet', 'By Force.jpg'),
(244, 'Nissa, Steward of Elements', 'Planeswalker — Nissa', 'Multicoloured', 'XUG', 'Mythic Rare', 'Howard Lyon', 'Amonkhet', 'Nissa, Steward of Elements.jpg'),
(245, 'Open into Wonder', 'Sorcery', 'Blue', 'XUU', 'Uncommon', 'Tyler Jacobson', 'Amonkhet', 'Open into Wonder.jpg'),
(246, 'Pull from Tomorrow', 'Instant', 'Blue', 'XUU', 'Rare', 'Sara Winters', 'Amonkhet', 'Pull from Tomorrow.jpg'),
(247, 'Canyon Slough', 'Land — Swamp Mountain', '', '', 'Rare', 'Titus Lunter', 'Amonkhet', 'Canyon Slough.jpg'),
(248, 'Cascading Cataracts', 'Land', '', '', 'Rare', 'Noah Bradley', 'Amonkhet', 'Cascading Cataracts.jpg'),
(249, 'Cinder Barrens', 'Land', '', '', 'Common', 'Cliff Childs', 'Amonkhet', 'Cinder Barrens.jpg'),
(250, 'Cradle of the Accursed', 'Land — Desert', '', '', 'Common', 'Noah Bradley', 'Amonkhet', 'Cradle of the Accursed.jpg'),
(251, 'Evolving Wilds', 'Land', '', '', 'Common', 'Christine Choi', 'Amonkhet', 'Evolving Wilds.jpg'),
(252, 'Fetid Pools', 'Land — Island Swamp', '', '', 'Rare', 'Jonas De Ro', 'Amonkhet', 'Fetid Pools.jpg'),
(253, 'Forest', 'Basic Land — Forest', '', '', 'Land', 'Yeong-Hao Han', 'Amonkhet', 'Forest \'FA\'.jpg'),
(254, 'Forsaken Sanctuary', 'Land', '', '', 'Common', 'Vincent Proce', 'Amonkhet', 'Forsaken Sanctuary.jpg'),
(255, 'Foul Orchard', 'Land', '', '', 'Common', 'Mark Poole', 'Amonkhet', 'Foul Orchard.jpg'),
(256, 'Grasping Dunes', 'Land — Desert', '', '', 'Uncommon', 'Daarken', 'Amonkhet', 'Grasping Dunes.jpg'),
(257, 'Highland Lake', 'Land', '', '', 'Common', 'Florian de Gesincourt', 'Amonkhet', 'Highland Lake.jpg'),
(258, 'Irrigated Farmland', 'Land — Plains Island', '', '', 'Rare', 'Jonas De Ro', 'Amonkhet', 'Irrigated Farmland.jpg'),
(259, 'Island', 'Basic Land — Island', '', '', 'Land', 'Richard Wright', 'Amonkhet', 'Island \'FA\'.jpg'),
(260, 'Meandering River', 'Land', '', '', 'Common', 'Cliff Childs', 'Amonkhet', 'Meandering River.jpg'),
(261, 'Mountain', 'Basic Land — Mountain', '', '', 'Land', 'Florian de Gesincourt', 'Amonkhet', 'Mountain \'FA\'.jpg'),
(262, 'Painted Bluffs', 'Land — Desert', '', '', 'Common', 'Mark Poole', 'Amonkhet', 'Painted Bluffs.jpg'),
(263, 'Plains', 'Basic Land — Plains', '', '', 'Land', 'Titus Lunter', 'Amonkhet', 'Plains \'FA\'.jpg'),
(264, 'Scattered Groves', 'Land — Forest Plains', '', '', 'Rare', 'Christine Choi', 'Amonkhet', 'Scattered Groves.jpg'),
(265, 'Sheltered Thicket', 'Land — Mountain Forest', '', '', 'Rare', 'Sung Choi', 'Amonkhet', 'Sheltered Thicket.jpg'),
(266, 'Stone Quarry', 'Land', '', '', 'Common', 'Florian de Gesincourt', 'Amonkhet', 'Stone Quarry.jpg'),
(267, 'Submerged Boneyard', 'Land', '', '', 'Common', 'Christine Choi', 'Amonkhet', 'Submerged Boneyard.jpg'),
(268, 'Sunscorched Desert', 'Land — Desert', '', '', 'Common', 'Min Yum', 'Amonkhet', 'Sunscorched Desert.jpg'),
(269, 'Swamp', 'Basic Land — Swamp', '', '', 'Land', 'Clint Cearley', 'Amonkhet', 'Swamp \'FA\'.jpg'),
(270, 'Timber Gorge', 'Land', '', '', 'Common', 'Cliff Childs', 'Amonkhet', 'Timber Gorge.jpg'),
(271, 'Tranquil Expanse', 'Land', '', '', 'Common', 'Sam Burley', 'Amonkhet', 'Tranquil Expanse.jpg'),
(272, 'Woodland Stream', 'Land', '', '', 'Common', 'Efflam Mercier', 'Amonkhet', 'Woodland Stream.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `collectionList`
--

CREATE TABLE `collectionList` (
  `userID` int(10) NOT NULL,
  `cardID` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) NOT NULL,
  `conditionCard` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(10) NOT NULL,
  `firstName` varchar(256) DEFAULT NULL,
  `lastName` varchar(256) DEFAULT NULL,
  `email` varchar(256) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `salt` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`cardID`);

--
-- Indexes for table `collectionList`
--
ALTER TABLE `collectionList`
  ADD PRIMARY KEY (`userID`,`cardID`),
  ADD KEY `cardID` (`cardID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `cardID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `collectionList`
--
ALTER TABLE `collectionList`
  ADD CONSTRAINT `collectionlist_ibfk_1` FOREIGN KEY (`cardID`) REFERENCES `cards` (`cardID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `collectionlist_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
