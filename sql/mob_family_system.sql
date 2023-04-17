/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mob_family_system`
--

DROP TABLE IF EXISTS `mob_family_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mob_family_system` (
  `familyID` smallint(4) unsigned NOT NULL,
  `family` tinytext,
  `superFamilyID` smallint(4) unsigned NOT NULL DEFAULT 0,
  `superFamily` tinytext,
  `ecosystemID` tinyint(2) unsigned NOT NULL DEFAULT 0,
  `ecosystem` tinytext,
  `mobradius` float(5,2) unsigned NOT NULL DEFAULT 0.01,
  `speed` tinyint(3) unsigned NOT NULL DEFAULT 40,
  `HP` tinyint(3) unsigned NOT NULL DEFAULT 100,
  `MP` tinyint(3) unsigned NOT NULL DEFAULT 100,
  `STR` smallint(4) unsigned NOT NULL DEFAULT 3,
  `DEX` smallint(4) unsigned NOT NULL DEFAULT 3,
  `VIT` smallint(4) unsigned NOT NULL DEFAULT 3,
  `AGI` smallint(4) unsigned NOT NULL DEFAULT 3,
  `INT` smallint(4) unsigned NOT NULL DEFAULT 3,
  `MND` smallint(4) unsigned NOT NULL DEFAULT 3,
  `CHR` smallint(4) unsigned NOT NULL DEFAULT 3,
  `ATT` smallint(4) unsigned NOT NULL DEFAULT 3,
  `DEF` smallint(4) unsigned NOT NULL DEFAULT 3,
  `ACC` smallint(4) unsigned NOT NULL DEFAULT 3,
  `EVA` smallint(4) unsigned NOT NULL DEFAULT 3,
  `Element` float NOT NULL DEFAULT 0,
  `detects` smallint(5) NOT NULL DEFAULT 0,
  `charmable` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`familyID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 AVG_ROW_LENGTH=128;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mob_family_system`
--

-- "family, superFamily, ecosystem" relationship: Korrigan, Mandragora, Plantoid
-- Nothing is enforced so it is possible to use completely unrelated values
LOCK TABLES `mob_family_system` WRITE;
/*!40000 ALTER TABLE `mob_family_system` DISABLE KEYS */;
INSERT INTO `mob_family_system` VALUES (1,'Acrolith',1,'Acrolith',3,'Arcana',1.00,40,90,90,1,3,4,3,6,6,5,1,3,1,3,0,34,0);
INSERT INTO `mob_family_system` VALUES (2,'Adamantoise',2,'Adamantoise',14,'Lizard',3.00,30,120,90,2,4,1,4,1,1,1,1,2,1,3,4,2,0);
INSERT INTO `mob_family_system` VALUES (3,'Aern',3,'Aern',15,'Luminian',0.00,40,120,140,2,2,3,3,1,1,1,1,3,1,3,0,3,0);
INSERT INTO `mob_family_system` VALUES (4,'Ahriman',4,'Ahriman',9,'Demon',0.00,40,87,140,2,3,4,4,1,2,2,1,3,1,3,8,3,0);
INSERT INTO `mob_family_system` VALUES (5,'Amoeban',5,'Amoeban',21,'Voragean',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,32,0);
INSERT INTO `mob_family_system` VALUES (6,'Amphiptere',5,'Amphiptere',8,'Bird',4.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (7,'AnimatedWeapon-Archery',6,'Evil_Weapon',0,'Unclassified',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (8,'AnimatedWeapon-Axe',6,'Evil_Weapon',0,'Unclassified',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (9,'AnimatedWeapon-Club',6,'Evil_Weapon',0,'Unclassified',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (11,'AnimatedWeapon-Dagger',6,'Evil_Weapon',0,'Unclassified',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (12,'AnimatedWeapon-Greataxe',6,'Evil_Weapon',0,'Unclassified',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (13,'AnimatedWeapon-Greatkatana',6,'Evil_Weapon',0,'Unclassified',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (14,'AnimatedWeapon-Greatsword',6,'Evil_Weapon',0,'Unclassified',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (15,'AnimatedWeapon-Handtohand',6,'Evil_Weapon',0,'Unclassified',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (16,'AnimatedWeapon-Instrument',6,'Evil_Weapon',0,'Unclassified',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (17,'AnimatedWeapon-Katana',6,'Evil_Weapon',0,'Unclassified',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (18,'AnimatedWeapon-Marksmanship',6,'Evil_Weapon',0,'Unclassified',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (19,'AnimatedWeapon-Polearm',6,'Evil_Weapon',0,'Unclassified',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (20,'AnimatedWeapon-Scythe',6,'Evil_Weapon',0,'Unclassified',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (21,'AnimatedWeapon-Shield',6,'Evil_Weapon',0,'Unclassified',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (23,'AnimatedWeapon-Staff',6,'Evil_Weapon',0,'Unclassified',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (24,'AnimatedWeapon-Sword',6,'Evil_Weapon',0,'Unclassified',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (25,'Antica',7,'Antica',7,'Beastmen',0.00,40,116,140,1,3,5,4,6,2,1,1,3,1,3,8,258,0);
INSERT INTO `mob_family_system` VALUES (26,'Antlion',8,'Antlion',20,'Vermin',1.00,40,120,125,4,4,4,4,4,4,4,1,3,1,3,8,2,1);
INSERT INTO `mob_family_system` VALUES (27,'Apkallu',9,'Apkallu',8,'Bird',0.00,40,105,90,4,3,5,4,4,4,4,1,3,1,2,6,3,0);
INSERT INTO `mob_family_system` VALUES (28,'Automaton-Harlequin',10,'Automaton',0,'Unclassified',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (29,'Automaton-Sharpshot',10,'Automaton',0,'Unclassified',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (30,'Automaton-Stormwaker',10,'Automaton',0,'Unclassified',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (31,'Automaton-Valoredge',10,'Automaton',0,'Unclassified',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (32,'Avatar-Atomos',11,'Atomos',5,'Avatar',1.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (33,'Avatar-Alexander',12,'Alexander',5,'Avatar',4.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (34,'Avatar-Carbuncle',13,'Carbuncle',5,'Avatar',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (35,'Avatar-Diabolos',14,'Diabolos',5,'Avatar',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (36,'Avatar-Fenrir',15,'Fenrir',5,'Avatar',1.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (37,'Avatar-Garuda',16,'Garuda',5,'Avatar',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (38,'Avatar-Ifrit',17,'Ifrit',5,'Avatar',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (39,'Monoceros',18,'Monoceros',11,'Elemental',2.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (40,'Avatar-Leviathan',19,'Leviathan',5,'Avatar',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (41,'Avatar-Odin',20,'Odin',5,'Avatar',2.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (42,'Avatar-Odin',20,'Odin',5,'Avatar',2.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (43,'Avatar-Ramuh',21,'Ramuh',5,'Avatar',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (44,'Avatar-Shiva',22,'Shiva',5,'Avatar',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (45,'Avatar-Titan',23,'Titan',5,'Avatar',1.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (46,'Bat',24,'Bat',8,'Bird',0.00,40,95,120,4,4,5,3,4,4,4,1,3,1,3,3,2,1);
INSERT INTO `mob_family_system` VALUES (47,'Bat_Trio',24,'Bat_Trio',8,'Bird',0.00,40,87,120,4,4,5,3,4,4,4,1,3,1,3,3,2,1);
INSERT INTO `mob_family_system` VALUES (48,'Bee',25,'Bee',20,'Vermin',0.00,40,87,120,5,4,4,3,4,4,4,1,3,1,3,3,257,1);
INSERT INTO `mob_family_system` VALUES (49,'Beetle',26,'Beetle',20,'Vermin',1.00,40,117,110,3,3,2,5,5,5,5,1,2,1,3,4,257,1);
INSERT INTO `mob_family_system` VALUES (51,'Behemoth',27,'Behemoth',6,'Beast',4.00,40,110,90,3,3,3,3,3,3,3,1,3,1,3,6,1,0);
INSERT INTO `mob_family_system` VALUES (52,'Bhoot',28,'Ghost',19,'Undead',1.00,40,70,140,6,3,6,3,3,5,3,1,3,1,3,2,6,0);
INSERT INTO `mob_family_system` VALUES (53,'Grimoire',29,'Grimoire',3,'Arcana',1.00,40,90,90,1,3,4,3,6,6,5,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (54,'Biotechnological',30,'Biotech',0,'Unclassified',2.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,3,0);
INSERT INTO `mob_family_system` VALUES (55,'Bird',31,'Bird',8,'Bird',0.00,40,106,120,4,4,5,3,4,4,4,1,4,1,3,1,2,1);
INSERT INTO `mob_family_system` VALUES (56,'Bomb',32,'Bomb',3,'Arcana',0.00,40,97,140,6,3,4,3,5,4,3,1,3,1,3,1,33,0);
INSERT INTO `mob_family_system` VALUES (57,'Buffalo',33,'Buffalo',6,'Beast',2.00,40,130,120,4,4,4,4,4,4,4,1,3,1,3,2,1,0);
INSERT INTO `mob_family_system` VALUES (58,'Bugard',34,'Bugard',14,'Lizard',1.00,40,115,110,4,4,4,4,4,4,4,1,3,1,3,1,2,0);
INSERT INTO `mob_family_system` VALUES (59,'Bugbear',35,'Bugbear',7,'Beastmen',1.00,40,125,90,3,2,5,2,6,4,5,1,2,1,3,5,1,0);
INSERT INTO `mob_family_system` VALUES (60,'CaitSith',36,'CaitSith',5,'Avatar',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (61,'Cardian',37,'Cardian',3,'Arcana',0.00,40,109,140,1,3,4,5,4,4,3,1,3,1,3,7,34,0);
INSERT INTO `mob_family_system` VALUES (62,'Cerberus',38,'Cerberus',6,'Beast',3.00,80,100,90,1,1,3,1,1,1,2,1,3,1,3,1,2,0);
INSERT INTO `mob_family_system` VALUES (63,'Chariot',39,'Chariot',4,'ArchaicMachine',3.00,40,90,90,1,3,4,3,6,6,5,1,3,1,3,0,34,0);
INSERT INTO `mob_family_system` VALUES (64,'Chigoe',40,'Chigoe',20,'Vermin',0.00,40,120,90,3,2,1,6,6,4,5,1,3,1,3,4,3,0);
INSERT INTO `mob_family_system` VALUES (65,'Clionid',41,'Clionid',21,'Voragean',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,4,0);
INSERT INTO `mob_family_system` VALUES (66,'Slime-Clot',42,'Slime',1,'Amorph',1.00,40,100,120,4,4,4,5,4,3,4,1,3,1,3,6,258,1);
INSERT INTO `mob_family_system` VALUES (67,'Slime-GlutinousClot',42,'Slime',1,'Amorph',1.00,40,100,120,4,4,4,5,4,3,4,1,3,1,3,6,290,0);
INSERT INTO `mob_family_system` VALUES (68,'Cluster',32,'Bomb',3,'Arcana',0.00,40,95,140,6,3,4,4,1,5,4,1,3,1,3,1,33,0);
INSERT INTO `mob_family_system` VALUES (69,'Cluster',32,'Bomb',3,'Arcana',0.00,40,95,140,6,3,4,4,1,5,4,1,3,1,3,1,33,0);
INSERT INTO `mob_family_system` VALUES (70,'Cockatrice',43,'Cockatrice',8,'Bird',1.00,40,118,140,4,5,3,4,4,4,4,1,3,1,3,4,1,0);
INSERT INTO `mob_family_system` VALUES (71,'Coeurl',44,'Coeurl',6,'Beast',1.00,60,94,90,4,3,5,4,3,5,4,1,3,1,3,5,257,1);
INSERT INTO `mob_family_system` VALUES (72,'Colibri',45,'Colibri',8,'Bird',0.00,50,90,140,5,5,5,5,1,1,1,1,3,1,4,3,1,1);
INSERT INTO `mob_family_system` VALUES (73,'Corpselights',46,'Corpselights',19,'Undead',0.00,40,100,120,3,3,4,2,3,3,3,1,4,1,5,8,6,0);
INSERT INTO `mob_family_system` VALUES (74,'Corse',47,'Corse',19,'Undead',1.00,40,111,140,1,3,3,5,1,5,1,1,3,1,3,8,6,0);
INSERT INTO `mob_family_system` VALUES (75,'Crab',48,'Crab',2,'Aquan',0.00,40,108,120,4,4,3,5,4,4,4,1,3,1,3,6,2,1);
INSERT INTO `mob_family_system` VALUES (76,'Crab',48,'Crab',2,'Aquan',0.00,40,108,120,4,4,3,5,4,4,4,1,3,1,3,6,2,1);
INSERT INTO `mob_family_system` VALUES (77,'Crab',48,'Crab',2,'Aquan',0.00,40,108,120,4,4,3,5,4,4,4,1,3,1,3,6,2,1);
INSERT INTO `mob_family_system` VALUES (78,'Craver',49,'Craver',12,'Empty',0.00,40,120,90,4,3,1,3,3,4,7,1,3,1,3,0,257,0);
INSERT INTO `mob_family_system` VALUES (79,'Crawler',63,'Crawler',20,'Vermin',1.00,40,105,120,4,4,3,5,4,4,4,1,5,1,3,4,2,1);
INSERT INTO `mob_family_system` VALUES (80,'Dhalmel',51,'Dhalmel',6,'Beast',1.00,40,110,120,3,4,4,5,4,4,5,1,3,1,3,4,257,1);
INSERT INTO `mob_family_system` VALUES (81,'Diremite',52,'Diremite',20,'Vermin',1.00,40,86,90,4,4,4,4,4,4,4,1,3,1,3,3,2,1);
INSERT INTO `mob_family_system` VALUES (82,'Djinn',32,'Bomb',3,'Arcana',0.00,40,70,140,6,3,6,3,1,5,4,1,3,1,3,1,33,0);
INSERT INTO `mob_family_system` VALUES (83,'Doll',53,'Doll',3,'Arcana',1.00,40,108,90,1,3,3,5,6,6,5,1,3,1,3,2,33,0);
INSERT INTO `mob_family_system` VALUES (84,'Doll',53,'Doll',3,'Arcana',1.00,40,108,90,1,3,3,5,6,6,5,1,3,1,3,2,33,0);
INSERT INTO `mob_family_system` VALUES (85,'Doll',53,'Doll',3,'Arcana',1.00,40,108,90,1,3,3,5,6,6,5,1,3,1,3,2,32,0);
INSERT INTO `mob_family_system` VALUES (86,'Doomed',54,'Doomed',19,'Undead',2.00,40,110,120,1,3,3,4,3,6,5,1,3,1,3,8,6,0);
INSERT INTO `mob_family_system` VALUES (87,'Dragon',55,'Dragon',10,'Dragon',2.00,30,125,90,1,3,3,3,3,3,1,1,3,1,3,8,2,0);
INSERT INTO `mob_family_system` VALUES (88,'Draugar',56,'Skeleton',19,'Undead',0.00,40,90,140,1,3,4,4,4,5,3,1,3,1,3,8,6,0);
INSERT INTO `mob_family_system` VALUES (89,'Draugar',56,'Skeleton',19,'Undead',0.00,40,90,140,1,3,4,4,4,5,3,1,3,1,3,8,6,0);
INSERT INTO `mob_family_system` VALUES (90,'Dvergr',57,'Dvergr',9,'Demon',1.00,40,90,140,6,3,3,3,1,5,4,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (91,'Dvergr_Skull',58,'Dvergr_Skull',9,'Demon',0.00,40,92,140,6,3,3,3,1,5,4,1,3,1,3,0,7,0);
INSERT INTO `mob_family_system` VALUES (92,'DynamisStatue-Goblin',59,'Statue',0,'Unclassified',3.00,20,30,120,1,1,4,1,3,3,1,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (93,'DynamisStatue-Orc',59,'Statue',0,'Unclassified',3.00,20,30,100,1,2,1,1,5,3,3,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (94,'DynamisStatue-Quadav',59,'Statue',0,'Unclassified',3.00,20,30,110,1,1,3,2,4,3,3,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (95,'DynamisStatue-Yagudo',59,'Statue',0,'Unclassified',3.00,20,30,120,1,2,5,1,3,4,2,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (97,'Lizard-Ice',60,'Lizard',14,'Lizard',1.00,40,92,120,4,3,5,4,4,4,4,1,3,1,3,5,2,0);
INSERT INTO `mob_family_system` VALUES (98,'Eft',61,'Eft',14,'Lizard',0.00,40,115,90,4,4,4,4,4,4,4,1,3,1,3,1,2,1);
INSERT INTO `mob_family_system` VALUES (99,'Elemental-Air',62,'Elemental',11,'Elemental',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,3,32,0);
INSERT INTO `mob_family_system` VALUES (100,'Elemental-Dark',62,'Elemental',11,'Elemental',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,8,32,0);
INSERT INTO `mob_family_system` VALUES (101,'Elemental-Earth',62,'Elemental',11,'Elemental',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,4,32,0);
INSERT INTO `mob_family_system` VALUES (102,'Elemental-Fire',62,'Elemental',11,'Elemental',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,1,32,0);
INSERT INTO `mob_family_system` VALUES (103,'Elemental-Ice',62,'Elemental',11,'Elemental',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,2,32,0);
INSERT INTO `mob_family_system` VALUES (104,'Elemental-Light',62,'Elemental',11,'Elemental',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,7,32,0);
INSERT INTO `mob_family_system` VALUES (105,'Elemental-Lightning',62,'Elemental',11,'Elemental',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,5,32,0);
INSERT INTO `mob_family_system` VALUES (106,'Elemental-Water',62,'Elemental',11,'Elemental',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,6,32,0);
INSERT INTO `mob_family_system` VALUES (107,'Eruca',63,'Crawler',20,'Vermin',1.00,40,92,120,1,3,4,3,3,6,5,1,5,1,3,1,258,1);
INSERT INTO `mob_family_system` VALUES (108,'Eruca',63,'Crawler',20,'Vermin',1.00,40,92,120,1,3,4,3,3,6,5,1,5,1,3,1,258,1);
INSERT INTO `mob_family_system` VALUES (109,'Euvhi',64,'Euvhi',15,'Luminian',0.00,40,100,140,1,3,4,4,1,5,4,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (110,'Evil_Weapon',6,'Evil_Weapon',3,'Arcana',0.00,40,105,120,1,3,4,3,1,4,2,1,5,1,3,3,34,0);

INSERT INTO `mob_family_system` VALUES (112,'Flan',65,'Flan',1,'Amorph',1.00,40,70,140,5,4,4,4,3,5,3,1,3,1,3,6,129,0);
INSERT INTO `mob_family_system` VALUES (113,'Fly',66,'Fly',20,'Vermin',0.00,40,92,90,5,4,4,3,4,4,4,1,3,1,3,3,2,1);
INSERT INTO `mob_family_system` VALUES (114,'Flytrap',67,'Flytrap',17,'Plantoid',0.00,40,90,90,4,4,4,4,4,4,4,1,3,1,3,3,2,1);
INSERT INTO `mob_family_system` VALUES (115,'Fomor',68,'Shadow',19,'Undead',0.00,40,105,90,2,5,4,4,2,3,4,1,3,1,3,8,6,0);
INSERT INTO `mob_family_system` VALUES (116,'Funguar',69,'Funguar',17,'Plantoid',0.00,40,102,110,3,4,4,4,5,4,4,1,3,1,3,8,2,1);
INSERT INTO `mob_family_system` VALUES (117,'Gargouille',70,'Gargouille',9,'Demon',0.00,40,110,120,3,3,3,3,3,3,3,1,3,1,3,8,3,0);
INSERT INTO `mob_family_system` VALUES (118,'Gargouille',70,'Gargouille',9,'Demon',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,2,259,0);
INSERT INTO `mob_family_system` VALUES (119,'Gear',71,'Gear',4,'ArchaicMachine',0.00,40,90,90,1,3,4,5,6,6,5,1,3,1,5,0,312,0);
INSERT INTO `mob_family_system` VALUES (120,'Gear',71,'Gear',4,'ArchaicMachine',1.00,40,90,90,1,3,4,5,6,6,5,1,3,1,5,0,56,0);
INSERT INTO `mob_family_system` VALUES (121,'Ghost',28,'Ghost',19,'Undead',1.00,40,104,140,6,3,4,4,3,5,3,1,3,1,3,2,6,0);
INSERT INTO `mob_family_system` VALUES (122,'Ghrah',72,'Ghrah',16,'Luminion',0.00,40,120,140,1,1,3,3,1,3,3,1,3,1,3,7,2,0);
INSERT INTO `mob_family_system` VALUES (123,'Ghrah',72,'Ghrah',16,'Luminion',0.00,40,120,140,1,1,3,3,1,3,3,1,3,1,3,7,2,0);
INSERT INTO `mob_family_system` VALUES (124,'Ghrah',72,'Ghrah',16,'Luminion',0.00,40,120,140,1,1,3,3,1,3,3,1,3,1,3,7,2,0);
INSERT INTO `mob_family_system` VALUES (125,'Greater_Bird',73,'Greater_Bird',8,'Bird',1.00,40,130,120,3,3,3,3,3,3,3,1,2,1,3,7,1,0);
INSERT INTO `mob_family_system` VALUES (126,'Gigas',74,'Gigas',7,'Beastmen',1.00,40,125,100,1,2,1,5,6,4,3,1,3,1,3,2,1,0);
INSERT INTO `mob_family_system` VALUES (127,'Gigas',74,'Gigas',7,'Beastmen',1.00,40,125,100,1,2,1,5,6,4,3,1,3,1,3,2,1,0);
INSERT INTO `mob_family_system` VALUES (128,'Gigas',74,'Gigas',7,'Beastmen',1.00,40,125,100,1,2,1,5,6,4,3,1,3,1,3,2,1,0);
INSERT INTO `mob_family_system` VALUES (129,'Gigas',74,'Gigas',7,'Beastmen',1.00,40,125,100,1,2,1,5,6,4,3,1,3,1,3,2,1,0);
INSERT INTO `mob_family_system` VALUES (130,'Gigas',74,'Gigas',7,'Beastmen',1.00,40,125,100,1,2,1,5,6,4,3,1,3,1,3,2,1,0);
INSERT INTO `mob_family_system` VALUES (131,'Gnat',75,'Gnat',20,'Vermin',0.00,40,90,120,4,1,4,2,3,6,6,1,3,1,3,8,1,0);
INSERT INTO `mob_family_system` VALUES (132,'Gnole',76,'Gnole',7,'Beastmen',1.00,40,120,90,3,2,1,6,6,4,5,1,3,1,3,8,257,0);
INSERT INTO `mob_family_system` VALUES (133,'Goblin',77,'Goblin',7,'Beastmen',0.00,40,91,120,1,3,5,3,4,4,4,1,3,1,3,1,1,0);
INSERT INTO `mob_family_system` VALUES (134,'God',78,'Supreme_Being',0,'Unclassified',3.00,40,120,140,1,1,1,1,1,1,1,1,1,1,1,0,3,0);
INSERT INTO `mob_family_system` VALUES (135,'Golem',79,'Golem',3,'Arcana',1.00,40,130,130,2,3,3,5,3,6,5,1,2,1,3,7,33,0);
INSERT INTO `mob_family_system` VALUES (136,'Goobbue',80,'Goobbue',17,'Plantoid',1.00,40,112,90,3,4,2,4,4,4,4,1,3,1,3,6,2,0);
INSERT INTO `mob_family_system` VALUES (137,'Gorger',81,'Gorger',12,'Empty',0.00,40,112,90,4,3,2,3,2,4,4,1,3,1,3,0,280,0);
INSERT INTO `mob_family_system` VALUES (138,'Gorger',81,'Gorger',12,'Empty',1.00,40,112,90,4,3,2,3,2,4,4,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (139,'Hecteyes',82,'Hecteyes',1,'Amorph',1.00,40,87,140,5,4,4,4,3,4,4,1,3,1,3,8,2,1);
INSERT INTO `mob_family_system` VALUES (140,'Hippogryph',83,'Hippogryph',8,'Bird',1.00,60,90,140,4,4,4,4,4,4,4,1,3,1,1,7,1,0);
INSERT INTO `mob_family_system` VALUES (141,'Hippogryph-High_Res',83,'Hippogryph',8,'Bird',1.00,60,90,140,4,4,4,4,4,4,4,1,3,1,1,7,1,0);
INSERT INTO `mob_family_system` VALUES (142,'Hound',84,'Hound',19,'Undead',1.00,40,102,120,1,3,4,4,4,5,3,1,5,1,3,8,6,0);
INSERT INTO `mob_family_system` VALUES (143,'Hound',84,'Hound',19,'Undead',1.00,40,102,120,1,3,4,4,4,5,3,1,5,1,3,8,6,0);
INSERT INTO `mob_family_system` VALUES (144,'Hpemde',85,'Hpemde',15,'Luminian',1.00,40,90,120,7,1,4,4,4,4,5,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (145,'Humanoid-Elvaan',86,'Humanoid',13,'Humanoid',0.00,40,100,90,2,5,3,6,6,2,4,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (146,'Humanoid-Galka',86,'Humanoid',13,'Humanoid',0.00,40,120,100,3,4,1,5,5,4,6,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (147,'Humanoid-Galka',86,'Humanoid',13,'Humanoid',0.00,40,120,100,3,4,1,5,5,4,6,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (148,'Humanoid-Galka',86,'Humanoid',13,'Humanoid',0.00,40,120,100,3,4,1,5,5,4,6,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (149,'Humanoid-Hume',86,'Humanoid',13,'Humanoid',0.00,40,90,110,4,4,4,4,4,4,3,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (150,'Humanoid-Hume',86,'Humanoid',13,'Humanoid',0.00,64,90,110,4,4,4,4,4,4,4,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (151,'Humanoid-Mithra',86,'Humanoid',13,'Humanoid',0.00,40,80,110,5,1,5,2,4,5,6,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (152,'Humanoid-Mithra',86,'Humanoid',13,'Humanoid',0.00,40,80,110,5,1,5,2,4,5,6,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (153,'Humanoid-Tarutaru',86,'Humanoid',13,'Humanoid',0.00,40,70,140,6,4,5,3,1,5,4,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (154,'Humanoid-Tarutaru',86,'Humanoid',13,'Humanoid',0.00,40,70,140,6,4,5,3,1,5,4,1,3,1,3,0,1,0);

-- Hybrid Elemental are supposed to be 2 element each so 4 family.. this having 8 makes no sense
INSERT INTO `mob_family_system` VALUES (155,'HybridElemental-Air',87,'Hybrid_Elemental',11,'Elemental',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,32,0);
INSERT INTO `mob_family_system` VALUES (156,'HybridElemental-Dark',87,'Hybrid_Elemental',11,'Elemental',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,32,0);
INSERT INTO `mob_family_system` VALUES (157,'HybridElemental-Earth',87,'Hybrid_Elemental',11,'Elemental',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,32,0);
INSERT INTO `mob_family_system` VALUES (158,'HybridElemental-Fire',87,'Hybrid_Elemental',11,'Elemental',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,32,0);
INSERT INTO `mob_family_system` VALUES (159,'HybridElemental-Ice',87,'Hybrid_Elemental',11,'Elemental',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,32,0);
INSERT INTO `mob_family_system` VALUES (160,'HybridElemental-Light',87,'Hybrid_Elemental',11,'Elemental',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,32,0);
INSERT INTO `mob_family_system` VALUES (161,'HybridElemental-Lightning',87,'Hybrid_Elemental',11,'Elemental',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,32,0);
INSERT INTO `mob_family_system` VALUES (162,'HybridElemental-Water',87,'Hybrid_Elemental',11,'Elemental',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,32,0);

INSERT INTO `mob_family_system` VALUES (163,'Hydra',88,'Hydra',10,'Dragon',4.00,40,90,90,2,3,1,2,1,5,3,1,2,1,3,6,2,0);
INSERT INTO `mob_family_system` VALUES (164,'Hydra',88,'Hydra',10,'Dragon',4.00,40,90,90,2,3,1,2,1,5,3,1,2,1,3,6,2,0);
INSERT INTO `mob_family_system` VALUES (165,'Imp',89,'Imp',9,'Demon',0.00,50,70,140,6,3,4,3,3,7,3,1,3,1,5,8,1,0);
INSERT INTO `mob_family_system` VALUES (166,'Imp',89,'Imp',9,'Demon',0.00,50,70,140,6,3,4,3,3,7,3,1,3,1,5,8,1,0);
INSERT INTO `mob_family_system` VALUES (167,'Karakul',90,'Sheep',6,'Beast',1.00,40,90,110,3,4,4,4,5,4,4,1,3,1,3,4,1,1);
INSERT INTO `mob_family_system` VALUES (168,'Khimaira',91,'Khimaira',3,'Arcana',3.00,40,90,90,4,3,3,3,4,6,5,1,3,1,3,5,3,0);
INSERT INTO `mob_family_system` VALUES (169,'Kindred',92,'Kindred',9,'Demon',0.00,50,110,140,1,2,4,4,1,2,4,1,3,1,3,8,257,0);
INSERT INTO `mob_family_system` VALUES (170,'Ladybug',93,'Ladybug',20,'Vermin',0.00,40,87,120,4,1,4,2,3,6,6,1,3,1,3,3,257,1);
INSERT INTO `mob_family_system` VALUES (171,'Lamiae',94,'Lamiae-Merrow',7,'Beastmen',0.00,40,100,140,3,3,2,4,1,2,2,1,3,1,3,8,1,0);
INSERT INTO `mob_family_system` VALUES (172,'Leech',95,'Leech',1,'Amorph',0.00,40,90,90,4,4,5,4,3,4,4,1,3,1,3,6,2,1);
INSERT INTO `mob_family_system` VALUES (173,'Limule',96,'Limule',21,'Voragean',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (174,'Lizard',60,'Lizard',14,'Lizard',1.00,40,92,120,4,3,5,4,4,4,4,1,3,1,3,1,2,1);
INSERT INTO `mob_family_system` VALUES (175,'Magic_Pot',97,'Magic_Pot',3,'Arcana',2.00,40,80,140,3,3,4,5,1,1,3,1,3,1,3,7,32,0);
INSERT INTO `mob_family_system` VALUES (176,'Mamool_Ja',98,'Mamool_Ja',7,'Beastmen',2.00,40,100,120,2,4,3,3,3,3,3,1,3,1,2,3,1,0);
INSERT INTO `mob_family_system` VALUES (177,'Mamool_Ja-Knight',98,'Mamool_Ja',7,'Beastmen',3.00,40,120,120,2,4,3,3,3,3,3,1,3,1,3,3,1,0);
INSERT INTO `mob_family_system` VALUES (178,'Mandragora',99,'Mandragora',17,'Plantoid',0.00,40,107,120,5,3,4,4,4,4,4,1,3,1,2,4,2,1);
INSERT INTO `mob_family_system` VALUES (179,'Manticore',100,'Manticore',6,'Beast',1.00,50,140,130,2,5,2,5,4,4,5,1,3,1,3,3,257,0);
INSERT INTO `mob_family_system` VALUES (180,'Marid',101,'Marid',6,'Beast',2.00,40,150,90,3,5,1,6,3,3,4,1,3,1,3,4,257,0);
INSERT INTO `mob_family_system` VALUES (181,'MemoryReceptacle',0,'undefined',12,'Empty',2.00,0,200,0,1,3,5,4,2,2,5,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (182,'Merrow',94,'Lamiae-Merrow',7,'Beastmen',0.00,40,100,120,3,3,2,4,3,3,2,1,3,1,3,6,1,0);
INSERT INTO `mob_family_system` VALUES (183,'Mimic',102,'Mimic',3,'Arcana',0.00,0,90,90,1,3,2,2,6,6,5,1,3,1,3,7,34,0);
INSERT INTO `mob_family_system` VALUES (184,'Moblin',77,'Goblin',7,'Beastmen',0.00,40,92,140,1,1,4,3,1,1,3,1,3,1,3,5,1,0);
INSERT INTO `mob_family_system` VALUES (185,'Moogle',103,'Moogle',0,'Unclassified',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (186,'Morbol',103,'Morbol',17,'Plantoid',1.00,40,140,100,4,2,4,4,4,5,4,1,3,1,3,4,2,0);
INSERT INTO `mob_family_system` VALUES (187,'Murex',104,'Murex',21,'Voragean',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,160,0);
INSERT INTO `mob_family_system` VALUES (188,'Opo-opo',105,'Opo-opo',6,'Beast',0.00,40,110,90,5,2,5,2,6,6,2,1,3,1,3,5,257,1);
INSERT INTO `mob_family_system` VALUES (189,'Orc',106,'Orc',7,'Beastmen',1.00,40,108,100,2,3,4,4,7,4,3,1,3,1,3,1,257,0);
INSERT INTO `mob_family_system` VALUES (190,'Orc-Warmachine',106,'Orc',7,'Beastmen',1.00,40,123,100,4,6,4,3,5,1,3,1,2,1,3,1,257,0);
INSERT INTO `mob_family_system` VALUES (191,'Orobon',107,'Orobon',2,'Aquan',1.00,40,90,90,1,4,2,4,4,4,4,1,3,1,3,6,2,0);
INSERT INTO `mob_family_system` VALUES (192,'Peiste',108,'Peiste',14,'Lizard',1.00,40,90,90,1,3,4,3,6,6,5,1,3,1,3,6,1,0);
INSERT INTO `mob_family_system` VALUES (193,'Wyvern-Pet',109,'Wyvern',10,'Dragon',0.00,40,70,90,2,4,3,4,6,4,3,1,2,1,2,0,1,0);
INSERT INTO `mob_family_system` VALUES (194,'Phuabo',110,'Phuabo',15,'Luminian',2.00,70,90,140,1,3,4,1,1,5,4,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (195,'Pixie',111,'Pixie',18,'Fairy',0.00,40,90,100,4,6,4,5,5,1,3,1,3,1,3,3,1,0);
INSERT INTO `mob_family_system` VALUES (196,'Poroggo',112,'frog-toad',7,'Beastmen',0.00,40,70,140,5,5,5,1,1,6,3,1,3,1,3,6,2,0);
-- if needed for frogs: INSERT INTO `mob_family_system` VALUES (???,'Toad',112,'frog-toad',2,'Aquan',0.00,40,70,140,5,5,5,1,1,6,3,1,3,1,3,6,2,0);
INSERT INTO `mob_family_system` VALUES (197,'Pugil',113,'Pugil',2,'Aquan',1.00,40,90,90,4,4,4,3,4,4,5,1,3,1,4,6,2,1);
INSERT INTO `mob_family_system` VALUES (198,'Puk',114,'Puk',10,'Dragon',0.00,40,93,90,1,3,5,2,6,6,2,1,3,1,4,3,3,1);
INSERT INTO `mob_family_system` VALUES (199,'Qiqirn',115,'Qiqirn',7,'Beastmen',0.00,40,88,140,4,5,3,1,1,4,4,1,3,1,3,4,257,0);
INSERT INTO `mob_family_system` VALUES (200,'Quadav',116,'Quadav',7,'Beastmen',0.00,40,120,110,2,3,4,4,4,5,3,1,3,1,3,6,258,0);
INSERT INTO `mob_family_system` VALUES (201,'Quadav',116,'Quadav',7,'Beastmen',1.00,40,120,110,2,3,4,4,4,5,3,1,3,1,3,6,258,0);
INSERT INTO `mob_family_system` VALUES (202,'Quadav',116,'Quadav',7,'Beastmen',1.00,40,112,110,2,3,4,4,4,5,3,1,3,1,3,6,258,0);
INSERT INTO `mob_family_system` VALUES (203,'Qutrub',117,'Qutrub',19,'Undead',0.00,40,100,140,1,3,3,5,1,5,4,1,3,1,3,8,6,0);
INSERT INTO `mob_family_system` VALUES (204,'Qutrub',117,'Qutrub',19,'Undead',0.00,40,100,140,1,3,3,5,1,5,4,1,3,1,3,8,6,0);
INSERT INTO `mob_family_system` VALUES (205,'Qutrub',117,'Qutrub',19,'Undead',0.00,40,100,140,1,3,3,5,1,5,4,1,3,1,3,8,6,0);
INSERT INTO `mob_family_system` VALUES (206,'Rabbit',118,'Rabbit',6,'Beast',0.00,40,96,120,4,3,4,4,4,4,4,1,3,1,3,4,257,1);
INSERT INTO `mob_family_system` VALUES (207,'Rafflesia',119,'Rafflesia',17,'Plantoid',0.00,40,90,90,1,3,4,3,6,6,5,1,3,1,3,4,2,0);
INSERT INTO `mob_family_system` VALUES (208,'Ram',120,'Ram',6,'Beast',3.00,40,120,100,3,4,3,4,4,4,4,1,3,1,3,4,257,0);
INSERT INTO `mob_family_system` VALUES (209,'Rampart',121,'Rampart',4,'ArchaicMachine',2.00,40,90,90,1,3,4,3,6,6,5,1,3,1,3,5,34,0);
INSERT INTO `mob_family_system` VALUES (210,'Raptor',122,'Raptor',14,'Lizard',1.00,50,95,120,4,4,5,3,4,4,4,1,3,1,3,1,258,1);
INSERT INTO `mob_family_system` VALUES (211,'Ruszor',123,'Ruszor',2,'Aquan',1.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,2,1,0);
INSERT INTO `mob_family_system` VALUES (212,'Sabotender',124,'Sabotender',17,'Plantoid',0.00,40,100,90,3,5,5,3,5,5,3,1,3,1,3,6,2,1);
INSERT INTO `mob_family_system` VALUES (213,'Sahagin',125,'Sahagin',7,'Beastmen',0.00,40,107,110,2,2,5,2,2,5,4,1,3,1,3,6,2,0);
INSERT INTO `mob_family_system` VALUES (214,'Sandworm',126,'Sandworm',1,'Amorph',0.00,40,130,180,1,3,4,3,6,6,5,1,3,1,3,4,2,0);
INSERT INTO `mob_family_system` VALUES (215,'Sandworm',126,'Sandworm',1,'Amorph',5.00,40,130,180,1,3,4,3,6,6,5,1,3,1,3,4,2,0);
INSERT INTO `mob_family_system` VALUES (216,'Sapling',127,'Sapling',17,'Plantoid',0.00,40,85,120,4,4,3,4,4,4,5,1,3,1,3,4,2,1);
INSERT INTO `mob_family_system` VALUES (217,'Scorpion',128,'Scorpion',20,'Vermin',1.00,40,105,120,3,5,4,4,4,4,4,1,3,1,3,4,258,1);
INSERT INTO `mob_family_system` VALUES (218,'Sea_Monk',129,'Sea_Monk',2,'Aquan',1.00,40,110,140,3,5,4,4,4,4,4,1,3,1,3,6,2,1);
INSERT INTO `mob_family_system` VALUES (219,'Sea_Monk',129,'Sea_Monk',2,'Aquan',1.00,40,110,140,3,5,4,4,4,4,4,1,3,1,3,6,2,1);
INSERT INTO `mob_family_system` VALUES (220,'Seether',130,'Seether',12,'Empty',1.00,50,117,90,2,3,2,4,2,4,4,1,3,1,3,0,272,0);
INSERT INTO `mob_family_system` VALUES (221,'Shadow',68,'Shadow',19,'Undead',0.00,40,100,90,2,5,3,3,6,2,4,1,3,1,3,8,6,0);
INSERT INTO `mob_family_system` VALUES (222,'Shadow',68,'Shadow',19,'Undead',0.00,40,100,90,2,5,3,3,6,2,4,1,3,1,3,8,6,0);
INSERT INTO `mob_family_system` VALUES (223,'Shadow',68,'Shadow',19,'Undead',0.00,40,100,90,2,5,3,3,6,2,4,1,3,1,3,8,6,0);
INSERT INTO `mob_family_system` VALUES (224,'ShadowLord',0,'Demon',0,'Unclassified',1.00,40,120,140,1,1,1,1,1,1,1,1,1,1,1,8,1,0);
INSERT INTO `mob_family_system` VALUES (225,'ShadowLord',0,'Demon',0,'Unclassified',1.00,40,120,140,1,1,1,1,1,1,1,1,1,1,1,8,1,0);
INSERT INTO `mob_family_system` VALUES (226,'Sheep',90,'Sheep',6,'Beast',1.00,40,120,110,3,4,4,4,5,4,4,1,3,1,3,4,257,1);
INSERT INTO `mob_family_system` VALUES (227,'Skeleton',56,'Skeleton',19,'Undead',0.00,40,95,140,1,3,4,4,4,5,3,1,3,1,3,4,6,0);
INSERT INTO `mob_family_system` VALUES (228,'Slime',42,'Slime',1,'Amorph',1.00,40,100,120,4,4,4,5,4,3,4,1,3,1,3,6,258,1);
INSERT INTO `mob_family_system` VALUES (229,'Slime',42,'Slime',1,'Amorph',1.00,40,100,120,4,4,4,5,4,3,4,1,3,1,3,6,258,1);
INSERT INTO `mob_family_system` VALUES (230,'Slime',42,'Slime',1,'Amorph',1.00,40,100,120,4,4,4,5,4,3,4,1,3,1,3,6,258,1);
INSERT INTO `mob_family_system` VALUES (231,'Slug',131,'Slug',1,'Amorph',1.00,40,90,90,1,3,4,3,6,6,5,1,3,1,3,6,2,1);
INSERT INTO `mob_family_system` VALUES (232,'Snoll',32,'bomb',3,'Arcana',0.00,40,89,140,6,3,6,3,1,5,4,1,3,1,3,2,33,0);
INSERT INTO `mob_family_system` VALUES (233,'Soulflayer',132,'Psychodemon',9,'Demon',0.00,40,100,140,6,3,5,6,1,5,4,1,3,1,3,6,418,0);
INSERT INTO `mob_family_system` VALUES (234,'Spheroid',133,'Spheroid',3,'Arcana',0.00,40,90,90,1,3,7,1,6,6,5,1,3,1,3,5,34,0);
INSERT INTO `mob_family_system` VALUES (235,'Spider',134,'Spider',20,'Vermin',0.00,40,87,130,5,2,5,4,3,3,6,1,3,1,3,4,2,1);
INSERT INTO `mob_family_system` VALUES (236,'Structure',0,'undefined',0,'Unclassified',0.00,64,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (237,'Structure',0,'undefined',0,'Unclassified',3.00,255,100,120,3,3,3,3,3,3,3,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (238,'Structure',0,'undefined',0,'Unclassified',1.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (239,'Structure',0,'undefined',0,'Unclassified',2.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (240,'Tauri',135,'Tauri',9,'Demon',1.00,40,123,130,1,3,5,5,3,6,5,1,3,1,2,8,1,0);
INSERT INTO `mob_family_system` VALUES (241,'Thinker',136,'Thinker',12,'Empty',1.00,50,132,90,4,3,2,4,2,4,7,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (242,'Tiger',137,'Tiger',6,'Beast',1.00,60,111,120,4,3,4,4,6,4,4,1,3,1,3,5,257,1);
INSERT INTO `mob_family_system` VALUES (243,'Tonberry',138,'Tonberry',7,'Beastmen',0.00,40,87,140,3,1,3,2,1,5,2,1,3,1,3,7,1,0);
INSERT INTO `mob_family_system` VALUES (244,'Tonberry',138,'Tonberry',7,'Beastmen',0.00,40,87,140,3,1,3,2,1,5,2,1,3,1,3,7,1,0);
INSERT INTO `mob_family_system` VALUES (245,'Treant',139,'Treant',17,'Plantoid',2.00,40,120,120,4,4,3,4,4,4,5,1,3,1,3,4,2,0);
INSERT INTO `mob_family_system` VALUES (246,'Troll',140,'Troll',7,'Beastmen',1.00,40,120,120,1,2,2,5,3,3,3,1,2,1,3,1,1,0);
INSERT INTO `mob_family_system` VALUES (247,'Tubes',0,'undefined',0,'Unclassified',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (248,'Turret-Orc',141,'Siege_Engine',0,'Unclassified',4.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (249,'Turret-Quadav',141,'Siege_Engine',0,'Unclassified',4.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (250,'Turret-Yagudo',141,'Siege_Engine',0,'Unclassified',4.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (251,'Uragnite',142,'Uragnite',2,'Aquan',1.00,40,120,90,4,4,4,4,4,4,4,1,3,1,3,6,2,1);
INSERT INTO `mob_family_system` VALUES (252,'Vampyr',143,'Vampyr',19,'Undead',1.00,40,100,120,1,3,2,4,3,6,6,1,1,1,3,8,6,0);
INSERT INTO `mob_family_system` VALUES (253,'Wamoura',144,'Wamoura',20,'Vermin',1.00,40,90,90,5,5,1,5,5,5,5,1,3,1,3,1,34,0);
INSERT INTO `mob_family_system` VALUES (254,'Wamouracampa',144,'Wamoura',20,'Vermin',1.00,45,90,90,5,5,1,5,5,5,5,1,3,1,3,1,2,0);
INSERT INTO `mob_family_system` VALUES (255,'Wanderer',145,'Wanderer',12,'Empty',0.00,40,110,90,4,3,5,5,4,2,4,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (256,'Weeper',146,'Weeper',12,'Empty',0.00,50,110,90,4,2,5,5,4,2,3,1,3,1,3,0,257,0);
INSERT INTO `mob_family_system` VALUES (257,'Wivre',147,'Wivre',14,'Lizard',3.00,40,140,90,1,5,1,6,5,5,4,1,3,1,3,4,259,0);
INSERT INTO `mob_family_system` VALUES (258,'Worm',148,'Worm',1,'Amorph',0.00,0,120,200,4,3,5,4,3,4,4,1,3,1,5,4,2,1);
INSERT INTO `mob_family_system` VALUES (259,'Wyrm-Ouryu',149,'Wyrm',10,'Dragon',4.00,40,120,90,4,1,3,2,2,3,1,1,3,1,3,3,1,0);
INSERT INTO `mob_family_system` VALUES (260,'Wyrm-Fafnir',149,'Wyrm',10,'Dragon',4.00,40,120,90,2,1,3,2,2,2,1,1,3,1,3,1,1,0);
INSERT INTO `mob_family_system` VALUES (261,'Wyrm-Cynoprosopi',149,'Wyrm',10,'Dragon',4.00,40,120,90,4,1,3,2,2,3,1,1,3,1,3,2,1,0);
INSERT INTO `mob_family_system` VALUES (262,'Wyrm',149,'Wyrm',10,'Dragon',4.00,40,120,90,4,1,3,2,2,3,1,1,3,1,3,1,1,0);
INSERT INTO `mob_family_system` VALUES (263,'Wyrm-Nidhogg',149,'Wyrm',10,'Dragon',4.00,40,120,90,4,1,3,2,2,3,1,1,3,1,3,1,1,0);
INSERT INTO `mob_family_system` VALUES (264,'Wyrm',149,'Wyrm',10,'Dragon',4.00,40,120,90,4,1,3,2,2,3,1,1,3,1,3,1,1,0);
INSERT INTO `mob_family_system` VALUES (265,'Wyvern-Simorg',109,'Wyvern',10,'Dragon',1.00,50,115,90,4,2,3,4,6,3,3,1,3,1,3,2,1,0);
INSERT INTO `mob_family_system` VALUES (266,'Wyvern',109,'Wyvern',10,'Dragon',1.00,75,115,90,4,2,3,4,2,5,5,1,3,1,3,3,1,0);
INSERT INTO `mob_family_system` VALUES (267,'Wyvern-Guivre',109,'Wyvern',10,'Dragon',1.00,50,115,90,4,2,3,4,6,3,3,1,3,1,3,7,3,0);
INSERT INTO `mob_family_system` VALUES (268,'Wyvern-Undead',109,'Wyvern',10,'Dragon',1.00,40,109,90,4,2,3,4,6,3,3,1,3,1,3,8,1,0);
INSERT INTO `mob_family_system` VALUES (269,'Xzomit',150,'Xzomit',15,'Luminian',0.00,50,100,110,3,2,4,6,4,5,1,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (270,'Yagudo',151,'Yagudo',7,'Beastmen',0.00,40,85,120,2,2,3,3,4,5,3,1,3,1,3,3,1,0);
INSERT INTO `mob_family_system` VALUES (271,'Yovra',152,'Yovra',15,'Luminian',3.00,40,80,140,2,3,4,6,1,2,2,1,3,1,5,0,2,0);
INSERT INTO `mob_family_system` VALUES (272,'Zdei',97,'Magic_Pot',16,'Luminion',0.00,40,100,140,6,3,4,4,1,3,4,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (273,'Scorpion-Serket',128,'Scorpion',20,'Vermin',3.00,40,90,120,3,5,4,4,4,4,4,1,3,1,3,4,258,0);
INSERT INTO `mob_family_system` VALUES (274,'Scorpion-KingV',128,'Scorpion',20,'Vermin',3.00,40,90,120,3,5,4,4,4,4,4,1,3,1,3,4,2,0);
INSERT INTO `mob_family_system` VALUES (275,'Adamantoise-Mini',2,'Adamantoise',14,'Lizard',5.00,40,120,90,2,4,1,4,1,1,1,1,2,1,3,4,2,0);
INSERT INTO `mob_family_system` VALUES (276,'Worm-BigWorm',148,'Worm',1,'Amorph',3.00,0,120,180,6,3,5,4,1,2,4,1,3,1,5,4,2,0);
INSERT INTO `mob_family_system` VALUES (277,'Adamantoise-Genbu',2,'Adamantoise',14,'Lizard',5.00,30,120,90,2,4,1,4,1,1,1,1,2,1,3,6,1,0);
INSERT INTO `mob_family_system` VALUES (278,'Wyvern-Seiryu',109,'Wyvern',10,'Dragon',3.00,60,109,90,1,2,1,3,6,3,3,1,3,1,3,7,1,0);
INSERT INTO `mob_family_system` VALUES (279,'Tiger-Byakko',137,'Tiger',6,'Beast',3.00,60,111,120,4,3,4,4,6,4,4,1,3,1,3,5,1,0);
INSERT INTO `mob_family_system` VALUES (280,'Greater_Bird-Suzaku',73,'Greater_Bird',8,'Bird',3.00,60,130,120,3,3,3,3,3,3,3,1,2,1,3,7,1,0);
INSERT INTO `mob_family_system` VALUES (281,'Manticore-Kirin',100,'Manticore',6,'Beast',3.00,60,140,130,2,5,2,5,4,4,5,1,3,1,3,3,272,0);
INSERT INTO `mob_family_system` VALUES (282,'Kuluu-Grav_iton',138,'Tonberry',7,'Beastmen',1.00,40,91,140,3,1,3,2,1,5,4,1,3,1,2,7,1,0);
INSERT INTO `mob_family_system` VALUES (284,'Vampyr',143,'Vampyr',19,'Undead',3.00,40,100,120,1,3,2,4,3,6,6,1,3,1,3,8,6,0);
INSERT INTO `mob_family_system` VALUES (285,'Mamool_Ja',98,'Mamool_Ja',7,'Beastmen',4.00,40,112,120,2,4,3,3,4,4,3,1,3,1,3,3,1,0);
INSERT INTO `mob_family_system` VALUES (286,'Puk-Vulpangue',114,'Puk',10,'Dragon',1.00,40,100,90,6,4,5,3,6,6,5,1,2,1,4,3,3,0);
INSERT INTO `mob_family_system` VALUES (287,'Colibri-Chamrosh',45,'Colibri',8,'Bird',3.00,60,80,140,5,5,5,5,1,1,1,1,3,1,4,3,2,0);
INSERT INTO `mob_family_system` VALUES (288,'Qiqirn-Cheese_Hoarder',115,'Qiqirn',7,'Beastmen',2.00,40,90,140,4,5,3,1,1,4,4,1,3,1,3,4,272,0);
INSERT INTO `mob_family_system` VALUES (289,'Wamouracampa-BrassBorer',144,'Wamoura',20,'Vermin',2.00,40,90,90,5,5,1,5,5,5,5,1,3,1,3,1,2,0);
INSERT INTO `mob_family_system` VALUES (290,'Slime-Claret',42,'Slime',1,'Amorph',2.00,40,100,120,4,4,4,5,4,3,4,1,3,1,3,6,2,0);
INSERT INTO `mob_family_system` VALUES (291,'Ob',10,'Automaton',0,'Unclassified',1.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (292,'Velionis',56,'Skeleton',19,'Undead',1.00,40,90,140,1,3,4,3,1,5,4,1,3,1,3,8,6,0);
INSERT INTO `mob_family_system` VALUES (293,'Chigoe-Chigre',40,'Chigoe',20,'Vermin',2.00,40,120,90,6,6,1,6,6,4,5,1,3,1,3,4,3,0);
INSERT INTO `mob_family_system` VALUES (294,'Apkallu-Small',9,'Apkallu',8,'Bird',1.00,40,120,90,4,3,5,4,4,4,4,1,3,1,2,6,3,0);
INSERT INTO `mob_family_system` VALUES (295,'IrizIma',101,'Marid',6,'Beast',3.00,24,90,90,1,3,4,3,6,6,5,1,3,1,3,4,257,0);
INSERT INTO `mob_family_system` VALUES (296,'Morbol-LividrootAmoo',103,'Morbol',17,'Plantoid',1.00,40,120,100,4,2,4,4,4,5,4,1,3,1,3,4,2,0);
INSERT INTO `mob_family_system` VALUES (297,'Poroggo-IririSamariri',112,'frog-toad',7,'Beastmen',1.00,40,70,140,5,5,5,1,1,6,3,1,3,1,3,6,2,0);
INSERT INTO `mob_family_system` VALUES (298,'Dragon-Anantaboga',55,'Dragon',10,'Dragon',3.00,40,120,90,1,3,3,3,3,3,1,1,3,1,3,8,2,0);
INSERT INTO `mob_family_system` VALUES (299,'Botuli',153,'Botuli',1,'Amorph',1.00,40,70,140,6,3,6,3,1,5,4,1,3,1,3,6,129,0);
INSERT INTO `mob_family_system` VALUES (300,'Bomb-Reacton',32,'Bomb',3,'Arcana',2.00,40,70,140,6,3,4,3,1,5,4,1,3,1,3,1,33,0);
INSERT INTO `mob_family_system` VALUES (301,'Imp-Verdelet',89,'Imp',9,'Demon',1.00,70,65,140,6,3,3,3,1,5,4,1,3,1,3,8,1,0);
INSERT INTO `mob_family_system` VALUES (302,'Acrolith-Wulgaru',1,'Acrolith',3,'Arcana',2.00,40,90,90,1,3,4,3,6,6,5,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (303,'ZareehklTheJu',117,'Qutrub',19,'Undead',1.00,40,100,140,1,3,3,3,1,5,4,1,3,1,3,8,7,0);
INSERT INTO `mob_family_system` VALUES (304,'Gear-ArmedGears',71,'Gear',4,'ArchaicMachine',1.00,40,90,90,1,3,4,5,6,6,5,1,3,1,5,0,35,0);
INSERT INTO `mob_family_system` VALUES (305,'Mamool_Ja-GotohZhaTheRe',98,'Mamool_Ja',7,'Beastmen',2.00,40,100,120,2,4,3,3,3,3,3,1,3,1,3,3,272,0);
INSERT INTO `mob_family_system` VALUES (306,'Wivre-Dea',147,'Wivre',14,'Lizard',4.00,43,120,90,2,5,1,6,6,3,3,1,3,1,3,4,4,0);
INSERT INTO `mob_family_system` VALUES (307,'Wamoura-Achamoth',144,'Wamoura',20,'Vermin',2.00,40,90,90,1,3,4,3,6,6,5,1,3,1,3,1,34,0);
INSERT INTO `mob_family_system` VALUES (308,'Troll-Khromasoul',140,'Troll',7,'Beastmen',2.00,40,120,120,1,2,2,5,3,3,3,1,3,1,3,1,48,0);
INSERT INTO `mob_family_system` VALUES (309,'Nosferatu',143,'Vampyr',19,'Undead',2.00,40,100,120,1,3,3,4,3,6,6,1,3,1,3,8,2,0);
INSERT INTO `mob_family_system` VALUES (310,'ExperimentalLa',94,'Lamiae',7,'Beastmen',1.00,40,100,140,3,3,3,1,1,2,2,1,3,1,3,8,1,0);
INSERT INTO `mob_family_system` VALUES (311,'Soulflayer-MahjlaefThePai',132,'Psychodemon',9,'Demon',1.00,40,100,140,6,3,5,6,1,5,4,1,3,1,3,6,168,0);
INSERT INTO `mob_family_system` VALUES (312,'Orobon-Nuhn',107,'Orobon',2,'Aquan',4.00,40,90,90,1,4,2,4,4,4,4,1,3,1,3,6,2,0);
INSERT INTO `mob_family_system` VALUES (313,'Hydra-Tinnin',88,'Hydra',10,'Dragon',5.00,40,90,90,2,3,1,2,1,5,3,1,3,1,3,6,2,0);
INSERT INTO `mob_family_system` VALUES (314,'Cerberus-Sarameya',38,'Cerberus',6,'Beast',4.00,40,90,90,1,1,3,1,1,1,2,1,3,1,3,1,3,0);
INSERT INTO `mob_family_system` VALUES (315,'Khimaira-Tyger',91,'Khimaira',3,'Arcana',5.00,40,90,90,4,3,3,3,4,6,5,1,3,1,3,5,3,0);
INSERT INTO `mob_family_system` VALUES (316,'Dvergr-Pandemonium',57,'Dvergr',9,'Demon',3.00,40,100,140,6,3,3,3,1,5,4,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (319,'Avatar-Shiva',22,'Shiva',5,'Avatar',1.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (320,'Avatar-Ramuh',21,'Ramuh',5,'Avatar',1.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (321,'Avatar-Titan',23,'Titan',5,'Avatar',1.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (322,'Avatar-Ifrit',17,'Ifrit',5,'Avatar',1.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (323,'Avatar-Leviathan',19,'Leviathan',5,'Avatar',1.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (324,'Avatar-Garuda',16,'Garuda',5,'Avatar',1.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (325,'Avatar-Fenrir',15,'Fenrir',5,'Avatar',1.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (326,'Troll-Gurfurlur',140,'Troll',7,'Beastmen',2.00,40,120,120,1,2,2,5,3,3,3,1,2,1,3,1,272,0);
INSERT INTO `mob_family_system` VALUES (327,'Goblin',77,'Goblin',7,'Beastmen',0.00,40,91,120,2,3,5,3,3,3,1,1,3,1,3,1,1,0);
INSERT INTO `mob_family_system` VALUES (328,'Gigas',74,'Gigas',7,'Beastmen',1.00,40,125,100,1,2,1,5,6,4,3,1,3,1,3,2,1,0);
INSERT INTO `mob_family_system` VALUES (329,'AbsoluteVirtue',3,'Aern',15,'Luminian',0.00,40,120,140,4,2,3,2,4,1,1,1,3,1,3,0,3,0);
INSERT INTO `mob_family_system` VALUES (330,'Adamantoise-PetGenbu',2,'Adamantoise',14,'Lizard',5.00,30,120,90,2,4,1,4,1,1,1,1,2,1,3,6,2,0);
INSERT INTO `mob_family_system` VALUES (331,'Wyvern-PetSeiryu',109,'Wyvern',10,'Dragon',3.00,60,109,90,1,2,1,3,6,3,3,1,3,1,3,7,1,0);
INSERT INTO `mob_family_system` VALUES (332,'Tiger-PetByakko',137,'Tiger',6,'Beast',3.00,60,111,120,4,3,4,4,6,4,4,1,3,1,3,5,2,0);
INSERT INTO `mob_family_system` VALUES (333,'Greater_Bird-PetSuzaku',73,'Greater_Bird',8,'Bird',3.00,60,130,120,3,3,3,3,3,3,3,1,2,1,3,7,1,0);
INSERT INTO `mob_family_system` VALUES (334,'Orc-NM',0,'Orc',7,'Beastmen',1.00,40,108,100,2,3,4,4,7,4,3,1,3,1,3,1,257,0);
INSERT INTO `mob_family_system` VALUES (335,'Maat',0,'Maat',13,'Humanoid',0.00,40,90,110,3,3,3,3,3,3,3,1,3,1,3,0,3,0);
INSERT INTO `mob_family_system` VALUES (336,'Tonberry-ZM4',138,'Tonberry',7,'Beastmen',1.00,40,91,140,3,1,3,2,1,5,4,1,3,1,2,7,1,0);
INSERT INTO `mob_family_system` VALUES (337,'Quadav-NM',116,'Quadav',7,'Beastmen',0.00,40,120,110,2,3,4,4,4,5,3,1,3,1,3,6,258,0);
INSERT INTO `mob_family_system` VALUES (338,'Twitherym',154,'Moth',20,'Vermin',0.00,40,92,90,1,3,4,3,6,6,5,1,3,1,3,3,1,1);
INSERT INTO `mob_family_system` VALUES (339,'Chapuli',155,'Chapuli',20,'Vermin',1.00,40,105,120,3,3,4,3,3,6,5,1,5,1,3,4,1,1);
INSERT INTO `mob_family_system` VALUES (340,'Mantid',156,'Mantid',20,'Vermin',1.00,40,105,120,3,3,4,3,3,6,5,1,5,1,3,4,1,0);
INSERT INTO `mob_family_system` VALUES (341,'Blossom',0,'undefined',0,'Unclassified',0.00,0,130,180,1,3,4,3,6,6,5,1,3,1,3,4,2,0);
INSERT INTO `mob_family_system` VALUES (342,'Velkk',157,'Velkk',7,'Beastmen',0.00,40,116,140,1,3,1,2,2,3,3,1,3,1,3,8,257,0);
INSERT INTO `mob_family_system` VALUES (343,'Heartwing',158,'Heartwing',11,'Elemental',0.00,40,90,90,1,3,4,3,6,6,5,1,3,1,3,5,288,0);
INSERT INTO `mob_family_system` VALUES (344,'Cracklaw',159,'Cracklaw',2,'Aquan',0.00,40,108,120,4,3,1,5,3,3,4,1,3,1,3,6,2,0);
INSERT INTO `mob_family_system` VALUES (345,'Acuex',160,'Acuex',1,'Amorph',1.00,40,100,120,1,3,3,4,3,6,1,1,3,1,3,6,2,0);
INSERT INTO `mob_family_system` VALUES (346,'Obstacle-Knotted_Root',0,'undefned',1,'Obstacle',0.00,0,70,200,4,3,6,4,3,4,4,1,3,1,3,4,2,0);
INSERT INTO `mob_family_system` VALUES (347,'Marolith',161,'Marolith',3,'Arcana',1.00,40,130,130,2,3,3,3,3,6,5,1,3,1,3,7,33,0);
INSERT INTO `mob_family_system` VALUES (348,'Matamata',162,'Matamata',14,'Lizard',3.00,30,120,90,2,5,1,6,6,4,3,1,3,1,4,4,3,0);
INSERT INTO `mob_family_system` VALUES (349,'Geyser',0,'undefned',0,'Unclassified',0.00,0,130,180,1,3,4,3,6,6,5,1,3,1,3,4,2,0);
INSERT INTO `mob_family_system` VALUES (350,'Iron_Giant',163,'Iron_Giant',3,'Arcana',1.00,40,130,130,2,3,3,3,3,6,5,1,3,1,3,7,3,0);
INSERT INTO `mob_family_system` VALUES (351,'Zilart',164,'Zilart',13,'Humanoid',0.00,40,90,110,3,3,2,3,2,2,3,1,3,1,3,0,3,0);
INSERT INTO `mob_family_system` VALUES (352,'ArkAngel-EV',165,'Crystal_Warrior',13,'Humanoid',0.00,40,100,90,2,5,3,6,6,2,4,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (353,'ArkAngel-GK',165,'Crystal_Warrior',13,'Humanoid',0.00,60,120,100,3,4,1,5,5,4,6,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (354,'ArkAngel-HM',165,'Crystal_Warrior',13,'Humanoid',0.00,60,90,110,3,3,2,3,2,2,3,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (355,'ArkAngel-MR',165,'Crystal_Warrior',13,'Humanoid',0.00,40,80,110,5,1,5,2,4,5,6,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (356,'ArkAngel-TT',165,'Crystal_Warrior',13,'Humanoid',0.00,40,70,140,6,4,5,3,1,5,4,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (357,'Antlion-Ambush',8,'Antlion',20,'Vermin',1.00,40,125,125,4,4,4,4,4,4,4,1,3,1,3,8,2,0);
INSERT INTO `mob_family_system` VALUES (358,'Kindred',92,'Kindred',9,'Demon',0.00,70,110,140,1,2,4,4,1,2,4,1,3,1,3,8,257,0);
INSERT INTO `mob_family_system` VALUES (359,'Fomor',68,'Shadow',19,'Undead',0.00,40,105,90,2,5,4,4,2,3,4,1,3,1,3,8,6,0);
INSERT INTO `mob_family_system` VALUES (360,'Yagudo-NM',151,'Yagudo',7,'Beastmen',0.00,40,85,120,2,2,3,3,4,5,3,1,3,1,3,3,1,0);
INSERT INTO `mob_family_system` VALUES (361,'DynamisLord',0,'undefined',0,'Unclassified',1.00,40,120,140,1,1,1,1,1,1,1,1,1,1,1,8,1,0);
INSERT INTO `mob_family_system` VALUES (362,'Sabotender-Florido',124,'Sabotender',17,'Plantoid',0.00,50,100,90,3,5,5,3,5,5,3,1,3,1,3,6,2,0);
INSERT INTO `mob_family_system` VALUES (363,'Automaton_Harlequin',10,'Automaton',0,'Unclassified',0.00,40,115,100,6,6,4,6,4,4,3,1,1,1,1,0,2,0);
INSERT INTO `mob_family_system` VALUES (364,'Automaton_Valoredge',10,'Automaton',0,'Unclassified',0.00,40,155,0,6,5,6,4,4,5,5,1,1,1,1,0,2,0);
INSERT INTO `mob_family_system` VALUES (365,'Automaton_Sharpshot',10,'Automaton',0,'Unclassified',0.00,40,115,0,4,5,4,6,5,5,6,1,1,1,1,0,2,0);
INSERT INTO `mob_family_system` VALUES (366,'Automaton_Stormwaker',10,'Automaton',0,'Unclassified',0.00,40,90,110,5,5,5,4,5,6,5,1,1,1,1,0,2,0);
INSERT INTO `mob_family_system` VALUES (367,'Doll-Faust',53,'Doll',3,'Arcana',1.00,80,108,90,1,3,3,5,6,6,5,1,3,1,3,2,289,0);
INSERT INTO `mob_family_system` VALUES (368,'Doll-Despot',53,'Doll',3,'Arcana',1.00,45,108,90,1,3,3,5,6,6,5,1,3,1,3,2,33,0);
INSERT INTO `mob_family_system` VALUES (369,'Leech',95,'Leech',1,'Amorph',1.00,40,90,90,4,4,5,4,3,4,4,1,3,1,3,6,258,1);
INSERT INTO `mob_family_system` VALUES (371,'Marid',101,'Marid',6,'Beast',2.00,40,150,90,3,5,1,6,3,3,4,1,3,1,3,4,257,0);
INSERT INTO `mob_family_system` VALUES (372,'Crab',48,'Crab',2,'Aquan',0.00,40,108,120,4,4,3,5,4,4,4,1,3,1,3,6,2,1);
INSERT INTO `mob_family_system` VALUES (373,'Goblin-Armored',77,'Goblin',7,'Beastmen',0.00,40,91,120,1,3,5,3,4,4,4,1,3,1,3,5,1,0);
INSERT INTO `mob_family_system` VALUES (374,'Fly-DUP',66,'Fly',20,'Vermin',0.00,40,92,90,5,4,4,3,4,4,4,1,3,1,3,3,2,1);
INSERT INTO `mob_family_system` VALUES (375,'Fly-Uncharmable',66,'Fly',20,'Vermin',0.00,40,92,90,5,4,4,3,4,4,4,1,3,1,3,3,2,0);
INSERT INTO `mob_family_system` VALUES (376,'Raptor',122,'Raptor',14,'Lizard',1.00,50,95,120,4,4,5,3,4,4,4,1,3,1,3,1,258,1);
INSERT INTO `mob_family_system` VALUES (377,'Raptor',122,'Raptor',14,'Lizard',1.00,50,95,120,4,4,5,3,4,4,4,1,3,1,3,1,258,1);
INSERT INTO `mob_family_system` VALUES (378,'Avatar-Diabolos',14,'Diabolos',5,'Avatar',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (379,'Pet-Carbuncle',13,'Carbuncle',5,'Avatar',0.00,40,100,120,4,4,4,4,4,4,4,2,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (380,'Pet-Diabolos',14,'Diabolos',5,'Avatar',0.00,40,100,120,4,4,4,4,4,4,4,2,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (381,'Pet-Fenrir',15,'Fenrir',5,'Avatar',1.00,40,100,120,4,4,4,4,4,4,4,2,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (382,'Pet-Garuda',16,'Garuda',5,'Avatar',0.00,40,100,120,4,4,4,4,4,4,4,2,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (383,'Pet-Ifrit',17,'Ifrit',5,'Avatar',0.00,40,100,120,4,4,4,4,4,4,4,2,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (384,'Pet-Leviathan',19,'Leviathan',5,'Avatar',0.00,40,100,120,4,4,4,4,4,4,4,2,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (385,'Pet-Odin',20,'Odin',5,'Avatar',2.00,40,100,120,4,4,4,4,4,4,4,2,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (386,'Pet-Ramuh',21,'Ramuh',5,'Avatar',0.00,40,100,120,4,4,4,4,4,4,4,2,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (387,'Pet-Shiva',22,'Shiva',5,'Avatar',0.00,40,100,120,4,4,4,4,4,4,4,2,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (388,'Pet-Titan',23,'Titan',5,'Avatar',1.00,40,100,120,4,4,4,4,4,4,4,2,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (389,'Pet-Alexander',12,'Alexander',5,'Avatar',4.00,40,100,120,4,4,4,4,4,4,4,2,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (390,'Ladybug-DUP',93,'Ladybug',20,'Vermin',0.00,40,87,120,4,1,4,2,3,6,6,1,3,1,3,3,257,1);
INSERT INTO `mob_family_system` VALUES (391,'Wyrm-Vrtra',149,'Wyrm',10,'Dragon',4.00,40,120,90,4,1,3,2,2,3,1,1,3,1,3,8,3,0);
INSERT INTO `mob_family_system` VALUES (392,'Wyrm-Jormungand',149,'Wyrm',10,'Dragon',4.00,40,120,90,4,1,3,2,2,3,1,1,3,1,3,5,3,0);
INSERT INTO `mob_family_system` VALUES (393,'Wyrm-Tiamat',149,'Wyrm',10,'Dragon',4.00,40,120,90,4,1,3,2,2,3,1,1,3,1,3,1,1,0);
INSERT INTO `mob_family_system` VALUES (394,'Humanoid-Hume',86,'Humanoid',13,'Humanoid',0.00,64,90,110,4,4,4,4,4,4,4,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (395,'Doll-Calcabrina',53,'Doll',3,'Arcana',1.00,40,108,90,1,3,3,5,6,6,5,1,3,1,3,2,288,0);
INSERT INTO `mob_family_system` VALUES (396,'Worm-Bedrock_Barry',148,'Worm',1,'Amorph',0.00,0,70,200,4,3,5,4,3,4,4,1,3,1,5,4,2,0);
INSERT INTO `mob_family_system` VALUES (397,'Quadav-Qu_Vho_Deathhurler',116,'Quadav',7,'Beastmen',1.00,40,112,110,2,3,4,4,4,5,3,1,3,1,3,6,258,0);
INSERT INTO `mob_family_system` VALUES (398,'Sheep-Slumbering_Samwell',90,'Sheep',6,'Beast',1.00,40,120,110,3,4,4,4,5,4,4,1,3,1,3,4,1,0);
INSERT INTO `mob_family_system` VALUES (399,'Demon-Duke_Focalor',9,'Demon',9,'Demon',0.00,50,110,140,1,2,4,4,1,2,4,1,3,1,3,8,257,0);
INSERT INTO `mob_family_system` VALUES (400,'Crab-Tegmine',48,'Crab',2,'Aquan',0.00,40,108,120,4,4,3,5,4,4,4,1,3,1,3,6,2,0);
INSERT INTO `mob_family_system` VALUES (401,'Doll-Martinet',53,'Doll',3,'Arcana',1.00,40,108,90,1,3,3,5,6,6,5,1,3,1,3,2,288,0);
INSERT INTO `mob_family_system` VALUES (402,'Scorpion-Aqrabuamelu',128,'Scorpion',20,'Vermin',3.00,40,90,120,3,5,4,4,4,4,4,1,3,1,3,4,258,0);
INSERT INTO `mob_family_system` VALUES (403,'Doll-Autarch',53,'Doll',3,'Arcana',1.00,40,108,90,1,3,3,5,6,6,5,1,3,1,3,2,288,0);
INSERT INTO `mob_family_system` VALUES (404,'Rabbit-Cure',118,'Rabbit',6,'Beast',0.00,40,96,120,4,3,4,4,4,4,4,1,3,1,3,4,257,1);
INSERT INTO `mob_family_system` VALUES (406,'Mandragora-Seed_Mandra',99,'Mandragora',17,'Plantoid',0.00,40,107,120,5,3,4,4,4,4,4,1,3,1,2,4,257,0);
INSERT INTO `mob_family_system` VALUES (407,'Orc-Seed',106,'Orc',7,'Beastmen',1.00,40,108,100,2,3,4,4,7,4,3,1,3,1,3,1,257,0);
INSERT INTO `mob_family_system` VALUES (408,'Quadav-Seed',116,'Quadav',7,'Beastmen',0.00,40,120,110,2,3,4,4,4,5,3,1,3,1,3,6,257,0);
INSERT INTO `mob_family_system` VALUES (409,'Yagudo-Seed',151,'Yagudo',7,'Beastmen',0.00,40,85,120,2,2,3,3,4,5,3,1,3,1,3,3,257,0);
INSERT INTO `mob_family_system` VALUES (410,'Goblin-Seed',77,'Goblin',7,'Beastmen',0.00,40,91,120,1,3,5,3,4,4,4,1,3,1,3,1,257,0);
INSERT INTO `mob_family_system` VALUES (411,'Pet-Siren',16,'Siren',5,'Avatar',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,41,0);
INSERT INTO `mob_family_system` VALUES (435,'Giant_Gnat',75,'Gnat',20,'Vermin',0.00,40,90,120,4,1,4,2,3,6,6,1,3,1,3,8,1,0);
INSERT INTO `mob_family_system` VALUES (436,'Gnat-Bloodlapper',75,'Gnat',20,'Vermin',0.00,40,90,120,4,1,4,2,3,6,6,1,3,1,3,8,1,0);
INSERT INTO `mob_family_system` VALUES (437,'Sapling-Ghillie_Dhu',127,'Sapling',17,'Plantoid',0.00,40,90,120,4,4,3,4,4,4,5,1,3,1,3,4,1,0);
INSERT INTO `mob_family_system` VALUES (438,'Lizard-Highlander',60,'Lizard',14,'Lizard',1.00,40,108,120,4,3,5,4,4,4,4,1,3,1,3,1,2,0);
INSERT INTO `mob_family_system` VALUES (444,'Larzos',68,'Shadow',13,'Humanoid',0.00,40,90,110,4,3,4,4,3,3,3,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (445,'Portia',68,'Shadow',13,'Humanoid',0.00,40,90,110,4,3,4,4,3,3,3,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (446,'Ragelise',68,'Shadow',13,'Humanoid',0.00,40,90,110,4,3,4,4,3,3,3,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (447,'Dullahan',166,'Dullahan',19,'Undead',0.00,40,70,140,6,3,6,3,1,5,4,1,3,1,3,2,6,0);

-- Per multiple sources, Flutterini are Twitherym that have grown exceptionally large and left their swarm
INSERT INTO `mob_family_system` VALUES (448,'Fluturini',154,'Moth',20,'Vermin',0.00,40,92,90,1,3,4,3,6,6,5,1,3,1,3,3,1,0);

INSERT INTO `mob_family_system` VALUES (449,'Bahamut',149,'Wyrm',5,'Avatar',4.00,40,120,90,1,3,1,3,6,3,1,1,3,1,3,3,1,0);
INSERT INTO `mob_family_system` VALUES (450,'Caturae',167,'Caturae',3,'Arcana',1.00,40,90,90,1,3,4,3,6,6,5,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (451,'Pteraketos',168,'Pteraketos',2,'Aquan',4.00,40,120,140,6,5,4,5,3,3,4,1,4,1,2,6,2,0);
INSERT INTO `mob_family_system` VALUES (452,'Rockfin',169,'Rockfin',2,'Aquan',2.00,40,120,140,6,5,4,5,3,3,4,1,4,1,2,6,2,0);
INSERT INTO `mob_family_system` VALUES (453,'Rafflesia-Belladona',119,'Rafflesia',17,'Plantoid',1.00,40,90,90,1,3,4,3,6,6,5,1,3,1,3,4,2,0);
INSERT INTO `mob_family_system` VALUES (454,'Tulfaire',170,'Tulfaire',8,'Bird',1.00,40,106,120,1,3,5,3,3,3,5,1,3,1,3,1,3,0);
INSERT INTO `mob_family_system` VALUES (455,'Leafkin',171,'Leafkin',17,'Plantoid',0.00,40,90,90,1,3,4,3,6,6,2,1,3,1,3,3,1,0);
INSERT INTO `mob_family_system` VALUES (456,'Bztavian-Colkhab',172,'Bztavian',20,'Vermin',2.00,40,87,120,1,3,3,2,3,3,5,1,3,1,3,3,2,0);
INSERT INTO `mob_family_system` VALUES (457,'Cehuetzi-Kumhau',173,'Cehuetzi',6,'Beast',3.00,60,111,120,1,1,4,2,3,6,5,1,3,1,3,5,2,0);
INSERT INTO `mob_family_system` VALUES (458,'Raaz',174,'Raaz',6,'Beast',1.00,60,111,120,1,1,4,2,3,6,5,1,3,1,3,5,2,0);
INSERT INTO `mob_family_system` VALUES (459,'Yztarg',175,'Yztarg',6,'Beast',2.00,40,110,90,1,3,4,3,6,6,1,1,3,1,3,5,269,0);
INSERT INTO `mob_family_system` VALUES (460,'Waktza',176,'Waktza',8,'Bird',2.00,40,106,120,1,3,5,3,3,3,5,1,3,1,3,1,256,0);
INSERT INTO `mob_family_system` VALUES (461,'Gabbrath',177,'Gabbrath',14,'Lizard',2.00,30,120,90,2,5,1,6,6,4,3,1,3,1,4,4,256,0);
INSERT INTO `mob_family_system` VALUES (462,'Wrong-Provenance_watcher',78,'Supreme_Being',10,'Dragon',6.00,40,120,90,1,3,1,3,6,3,1,1,3,1,3,1,2,0);
INSERT INTO `mob_family_system` VALUES (463,'Panopt',178,'Panopt',17,'Plantoid',0.00,40,90,90,1,3,4,3,6,6,2,1,3,1,3,3,3,0);
INSERT INTO `mob_family_system` VALUES (464,'Snapweed',179,'Snapweed',17,'Plantoid',0.00,40,90,90,1,3,4,3,6,6,5,1,3,1,3,4,258,0);
INSERT INTO `mob_family_system` VALUES (465,'Yumcax',180,'Yggdreant',17,'Plantoid',3.00,40,120,120,1,2,1,2,3,1,3,1,3,1,3,4,2,0);
INSERT INTO `mob_family_system` VALUES (467,'Gallu',181,'Gallu',9,'Demon',2.00,70,110,140,1,2,4,4,1,2,4,1,3,1,3,8,2,0);
INSERT INTO `mob_family_system` VALUES (468,'Umbril',182,'Umbril',11,'Elemental',1.00,40,90,90,1,3,4,3,6,6,5,1,3,1,3,0,33,0);
INSERT INTO `mob_family_system` VALUES (469,'Lamiae-Medusa',94,'Lamiae',7,'Beastmen',1.00,40,100,140,3,3,2,4,1,2,2,1,3,1,3,8,1,0);
INSERT INTO `mob_family_system` VALUES (470,'Zilant-Yilbegan',183,'Zilant',10,'Dragon',4.00,40,120,90,1,3,1,3,6,3,1,1,3,1,3,3,2,0);
INSERT INTO `mob_family_system` VALUES (471,'Harpeia',184,'Harpeia',8,'Bird',3.00,60,130,120,1,3,4,3,4,4,5,1,3,1,2,7,2,0);
INSERT INTO `mob_family_system` VALUES (472,'Naraka',185,'Naraka',19,'Undead',2.00,40,70,140,6,3,6,3,1,5,4,1,3,1,3,2,6,0);
INSERT INTO `mob_family_system` VALUES (473,'Lady_Lilith',86,'Humanoid',13,'Humanoid',0.00,40,90,110,3,3,2,3,2,2,3,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (474,'Lilith_Ascendant',78,'Supreme_Being',0,'Unclassified',1.00,40,120,140,1,1,1,1,1,1,1,1,1,1,1,8,1,0);

-- Believe it or not demon killer can proc on Shinryu in retail, and dragon killer won't. CONFIRMED. Crazy!
INSERT INTO `mob_family_system` VALUES (475,'Shinryu',78,'Supreme_Being',10,'Demon',4.00,50,115,90,1,2,1,3,6,3,3,1,3,1,3,7,1,0);

INSERT INTO `mob_family_system` VALUES (476,'Prishe',86,'Humanoid',13,'Humanoid',0.00,40,100,90,2,5,3,6,6,2,4,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (477,'Selh\'teus',186,'Kuluu',13,'Humanoid',0.00,40,90,110,3,3,2,3,2,2,3,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (478,'God',78,'Supreme_Being',0,'Unclassified',3.00,40,120,140,1,1,1,1,1,1,1,1,1,1,1,0,3,0);
INSERT INTO `mob_family_system` VALUES (479,'Behemoth-KB',27,'Behemoth',6,'Beast',6.0,60,110,90,3,3,3,3,3,3,3,1,3,1,3,6,1,0);
INSERT INTO `mob_family_system` VALUES (480,'Zeid',86,'Humanoid',13,'Humanoid',0.00,40,120,100,3,4,1,5,5,4,6,1,3,1,3,0,6,0);
INSERT INTO `mob_family_system` VALUES (481,'Ajido-Marujido',86,'Humanoid',13,'Humanoid',0.00,40,70,140,6,4,5,3,1,5,4,1,3,1,3,0,3,0);
INSERT INTO `mob_family_system` VALUES (482,'Volker',86,'Humanoid',13,'Humanoid',0.00,40,90,110,4,4,4,4,4,4,4,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (483,'Trion',86,'Humanoid',13,'Humanoid',0.00,40,100,90,2,5,3,6,6,2,4,1,3,1,3,0,3,0);
INSERT INTO `mob_family_system` VALUES (484,'Lilisette',86,'Humanoid',13,'Humanoid',0.00,40,90,110,3,3,2,3,2,2,3,1,3,1,3,0,1,0);
INSERT INTO `mob_family_system` VALUES (485,'Hadesv1',86,'Humanoid',13,'Humanoid',0.00,40,100,90,2,5,3,6,6,2,4,1,3,1,3,0,3,0);
INSERT INTO `mob_family_system` VALUES (486,'Arciela',86,'Humanoid',13,'Humanoid',0.00,40,90,110,3,3,2,3,2,2,3,1,3,1,3,0,3,0);
INSERT INTO `mob_family_system` VALUES (487,'Hadesv2',78,'Supreme_Being',9,'Demon',1.00,40,90,140,6,3,3,3,1,5,4,1,3,1,3,0,3,0);
INSERT INTO `mob_family_system` VALUES (488,'Theodor',86,'Humanoid',13,'Humanoid',0.00,40,90,110,3,3,2,3,2,2,3,1,3,1,3,0,3,0);
INSERT INTO `mob_family_system` VALUES (489,'Darrcuiln',0,'undefined',6,'Beast',1.00,60,111,120,1,1,4,2,3,6,5,1,3,1,3,5,256,0);
INSERT INTO `mob_family_system` VALUES (490,'Plovid',187,'Plovid',1,'Amorph',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,3,0);
INSERT INTO `mob_family_system` VALUES (491,'Morimar',86,'Humanoid',13,'Humanoid',0.00,40,90,110,3,3,2,3,2,2,3,1,3,1,3,0,3,0);
INSERT INTO `mob_family_system` VALUES (492,'Defiant-Balamor',188,'Defiant',9,'Demon',1.00,40,90,140,6,3,3,3,1,5,4,1,3,1,3,0,6,0);
INSERT INTO `mob_family_system` VALUES (493,'Macuil-Ashrakk',189,'Macuil',9,'Demon',1.00,40,90,140,6,3,3,3,1,5,4,1,3,1,3,0,3,0);
INSERT INTO `mob_family_system` VALUES (494,'Coeurl-Sekhmet',44,'Coeurl',6,'Beast',1.00,60,94,90,4,3,5,4,3,5,4,1,3,1,3,5,259,0);
INSERT INTO `mob_family_system` VALUES (495,'Astral_Flow_Pet',0,'Astral_Flow_Pet',5,'Avatar',0.00,40,100,120,3,3,3,3,3,3,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (496,'Mandragora-Chaneque',99,'Mandragora',17,'Plantoid',0.00,40,107,120,5,3,4,4,4,4,4,1,3,1,2,4,6,0);
INSERT INTO `mob_family_system` VALUES (497,'Cloud_of_Darkness',78,'Supreme_Being',0,'Unclassified',3.00,40,120,140,1,1,1,1,1,1,1,1,1,1,1,0,3,0);
INSERT INTO `mob_family_system` VALUES (498,'Doll',53,'Doll',3,'Arcana',1.00,40,108,90,1,3,3,5,6,6,5,1,3,1,3,2,33,0);
INSERT INTO `mob_family_system` VALUES (499,'Wanderer-Stray',145,'Wanderer',12,'Empty',0.00,40,20,90,1,3,5,5,6,6,5,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (500,'Golem-Mokkurkalfi',79,'Golem',3,'Arcana',1.00,40,130,130,2,3,3,5,3,6,5,1,2,1,3,7,34,0);
INSERT INTO `mob_family_system` VALUES (501,'Doll-Nio_A-Nio_Hum',53,'Doll',3,'Arcana',1.00,40,108,90,1,3,3,5,6,6,5,1,3,1,3,2,34,0);
INSERT INTO `mob_family_system` VALUES (502,'Evil_Weapon-Shikigami',6,'Evil_Weapon',3,'Arcana',0.00,40,105,120,1,3,4,3,3,3,4,1,5,1,3,3,32,0);
INSERT INTO `mob_family_system` VALUES (503,'Mammet',86,'Humanoid',3,'Arcana',0.00,40,90,110,3,3,2,3,2,2,3,1,3,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (504,'Luopan',0,'undefined',0,'Unclassified',0.00,40,150,120,1,3,4,3,3,3,4,1,5,1,3,0,2,0);
INSERT INTO `mob_family_system` VALUES (505,'Fungi',0,'undefined',0,'Unclassified',0.00,0,130,180,1,3,4,3,6,6,5,1,3,1,3,4,2,0);
INSERT INTO `mob_family_system` VALUES (506,'Meeble',189,'Meeble',7,'Beastmen',0.00,40,125,90,3,2,5,2,6,4,5,1,2,1,3,5,1,0);
INSERT INTO `mob_family_system` VALUES (507,'Quasilumin',15,'Luminian',0,'Unclassified',1.00,25,100,100,5,5,5,5,5,5,5,5,5,5,5,0,2,0);



-- ASB SECTION

INSERT INTO `mob_family_system` VALUES (800,'MemoryReceptacleENM',0,'undefined',12,'Empty',2,40,200,0,1,3,5,4,2,2,5,1,3,1,3,0,256,0);
INSERT INTO `mob_family_system` VALUES (801,'Annihilated_Anthony',28,'Ghost',19,'Undead',1,40,104,140,6,3,4,4,1,5,4,1,3,1,3,2,6,0);
INSERT INTO `mob_family_system` VALUES (802,'Shredded_Samson',28,'Ghost',19,'Undead',1,40,104,140,6,3,4,4,1,5,4,1,3,1,3,2,6,0);
INSERT INTO `mob_family_system` VALUES (803,'Punctured_Percy',28,'Ghost',19,'Undead',1,40,104,140,6,3,4,4,1,5,4,1,3,1,3,2,6,0);
INSERT INTO `mob_family_system` VALUES (804,'Mauled_Murdock',28,'Ghost',19,'Undead',1,40,104,140,6,3,4,4,1,5,4,1,3,1,3,2,6,0);
INSERT INTO `mob_family_system` VALUES (805,'Cockatrice_Ziz',43,'Cockatrice',8,'Bird',1,40,118,140,4,5,3,4,4,4,4,1,3,1,5,4,1,0);

-- Family IDs 10,22,50,96,111,317-318,405,412-434,439-443 available for use

/*!40000 ALTER TABLE `mob_family_system` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
