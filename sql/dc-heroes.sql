-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 26, 2018 at 03:16 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dc-heroes`
--

-- --------------------------------------------------------

--
-- Table structure for table `hero`
--

CREATE TABLE `hero` (
  `heroId` int(3) NOT NULL COMMENT 'the unique heroId used as a parameter in the URL and fetched by PHP using the $_GET superblobal variable',
  `heroName` varchar(50) NOT NULL COMMENT 'the name of the hero, just a string',
  `actorName` varchar(50) NOT NULL,
  `heroDescription` text NOT NULL COMMENT 'some information of the hero, just a string',
  `heroPower` text NOT NULL,
  `heroImage` varchar(50) NOT NULL COMMENT 'the image of the hero is strored as a string. The actual image is strored on the server. Use the string as the source of the HTML img-tag.',
  `teamId` int(3) NOT NULL COMMENT 'this is the teamId. Used as a referenc to the team table.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hero`
--

INSERT INTO `hero` (`heroId`, `heroName`, `actorName`, `heroDescription`, `heroPower`, `heroImage`, `teamId`) VALUES
(6, 'Dwight Schrute', 'Rainn Wilson', 'Dwight Kurt Schrute III (born January 20, 1977) is a character on NBC\'s The Office portrayed by Rainn Wilson. He was originally based on Gareth Keenan from the original UK version of The Office. Dwight is the \"Assistant to the Regional Manager\" in selling paper, despite lacking social skills and common sense. Despite his initial personal dislike of Jim Halpert, the two are a very effective sales team.', '\"Before I do anything I ask myself, \'Would an idiot do that?\' And if the answer is yes, I do not do that thing. Changed my life.\"', 'img/dwight.jpg', 6),
(7, 'Jim Halpert', 'John Krasinski', 'Jim Halpert (born October 1, 1978) a fictional character played by John Krasinski in the television series The Office and was originally based on Tim Canterbury in the UK version of The Office. He was a Salesman at what was formerly Dunder Mifflin/Sabre until he was fired and later pursued his company Athlead.', '\"Right now this is just a job. If I advance any higher in this company, then this would be my career. And well, if this were my career I\'d have to throw myself in front of a train.\"', 'img/jim.jpg', 6),
(8, 'Michael Scott', 'Steve Carell', 'Michael Gary Martin Scott (born March 15, 1964, in Scranton, Pennsylvania), played by Steve Carell, is a former branch manager of the Scranton branch of Dunder Mifflin Paper Company, Michael Scott Paper Company Inc., and later Dunder Mifflin Sabre.', '\"Don\'t ever, for any reason, do anything to anyone, for any reason, ever, no matter what, no matter where, or who, or who you are with, or where you are going, or where you\'ve been, ever, for any reason whatsoever.\"', 'img/steve.jpg', 6),
(9, 'Angela Moss', 'Portia Doubleday', 'Angela was born on February 27, 1988, in New Jersey to Phillip Price and Emily Moss, but Emily refused to be with Phillip, instead choosing to marry Donald Moss, who became her adopted father. She is an only child. Her mother died as a result of the Washington Township leak of 1993. In the aftermath, she became friends with Darlene and Elliot Alderson, with whom she shared a love for the book From the Mixed-Up Files of Mrs. Basil E. Frankweiler.', '\"I have an idea that will change the world. I know it sounds really stupid, but I know how to do it. I think it could actually work.\"', 'img/angela.jpg', 7),
(10, 'Elliot Alderson', 'Rami Malek', 'Elliot suffers from social anxiety disorder, clinical depression, delusions and paranoia. His internal life is revealed via voice-overs that provide insight into his mental state, his opinions of the people he encounters and the activity around him. These dialogues with the audience are designed to help us interpret Elliot\'s world, but given his mental illness, he is an unreliable narrator, leaving us unsure whether what he tells us we\'re seeing is actually what is happening. Typical of this is when Elliot hears everyone around him refer to E Corp as Evil Corp, reflecting his own opinion of the conglomerate.', '\"But I\'m only a vigilante hacker by night. By day, just a regular cybersecurity engineer. Employee number ER28-0652\"', 'img/Elliot.jpg', 7),
(11, 'Edward Alderson', 'Christian Slaver', 'Edward Alderson was Elliot Alderson\'s father. He was the owner-operator of Mr. Robot, a computer store in Bergen County, New Jersey. Elliot remembers his father fondly, including memories of trips taken to NYC and the shore. In contrast, his wife is remembered as being abusive toward their children. Before opening his business, he was a software engineer at E Corp, where he contracted leukemia while working on a project there, one of a number of employees to do so.', '\"Even though what you did was wrong, you\'re still a good kid. And that guy was a prick. Sometimes that matters more.\"', 'img/mrrobot1.jpg', 7),
(12, 'Arya Stark', 'Maisie Williams', 'Arya Stark is the third child and second daughter of Lord Eddard Stark and his wife, Lady Catelyn Stark. After narrowly escaping the persecution of House Stark by House Lannister, Arya is trained as a Faceless Man at the House of Black and White in Braavos, and uses her new skills to bring those who have wronged her family to justice.', '\"A girl is Arya Stark of Winterfell, and I\'m going home.\"', 'img/arya.jpg', 8),
(13, 'Daenerys Targaryen', 'Emilia Clarke', 'Queen Daenerys Targaryen, also known as Dany and Daenerys Stormborn, is the younger sister of Rhaegar Targaryen and Viserys Targaryen, the paternal aunt of Jon Snow, and the youngest child of King Aerys II Targaryen and Queen Rhaella Targaryen, who were both ousted from the Iron Throne during Robert Baratheon\'s rebellion.', '\"I promised to protect them. Promised them their enemies would die screaming. How do I make starvation scream?\"', 'img/targaryen.jpg', 8),
(14, 'Jon Snow', 'Kit Harington', 'Jon Snow, born Aegon Targaryen, is the son of Lyanna Stark and Rhaegar Targaryen, the late Prince of Dragonstone. From infancy, Jon is presented as the bastard son of Lord Eddard Stark, Lyanna\'s brother, and raised by Eddard alongside his lawful children at Winterfell but his true parentage is kept secret from everyone, including Jon himself. In order to escape his bastard status, Jon joins the Night\'s Watch and is eventually chosen as Lord Commander. ', '\"I\'m the watcher on The Wall.\"', 'img/jon.jpg', 8),
(15, 'Floki', 'Gustaf Skarsgard', 'Floki is a boat builder and incorrigible trickster, who also happens to be Ragnar Lothbrok\'s eccentric and closest friend. Committed to helping Ragnar sail west, he secretly designs and builds a new generation of Viking longboats for their voyage across the ocean westward. He is also the spouse of the late Helga , the father of the late Angrboda and adoptive father of the late Tanaruz.', '\"Everything I do, Ragnar, is for you.\"', 'img/floki.jpg', 9),
(16, 'Lagertha Lothbrok', 'Katheryn Winnick', 'Lagertha is a respected warrior and Reigning Queen of Denmark.  \r\nSince the loss of her children, Lagertha realizes that Freyja\'s fertility is meant for another, and that it is the goddess\' warrior aspect that speaks to her fellow Valkyrie. Lagertha remains fiercely independent when it comes to protecting her family and the throne.', '\"I knew you would come my love. Enjoy Valhalla you deserve it. But do not forget me. Haunt me. Do not leave me.\"', 'img/lagerta.jpg', 9),
(17, 'Ragnar Lothbrok', 'Travis Fimmel', 'According to the Seer, Ragnar was born and raised in the lands near Kattegat, in southern Norway, and earned a reputation as a clever boy. When Ragnar was 15, King Froh of Svealand invaded Norway and killed the Norweigan King Siward. Ragnar joined with Siward-loyalists to drive out Froh. King Froh was famous for carrying tame serpents around his neck in battle whom would bite his enemies while he fought them.', '\"How the little piggies will grunt when they hear how the Old Boar suffered.\"', 'img/ragnar1.jpg', 9),
(18, 'Thomas Shelby', 'Cillian Murphy', 'Thomas \'Tommy\' Michael Shelby M.P. OBE, is the leader of the Birmingham criminal gang Peaky Blinders and the patriarch of the Shelby Family. His experiences during and after the First World War have left him disillusioned and determined to move his family up in the world.', '\"Everyone\'s a whore, Grace, we just sell different parts of ourselves.\"', 'img/thomas.jpg', 10),
(19, 'Polly Gray', 'Helen McCrory', 'Elizabeth \"Polly\" Gray (nee Shelby) is the matriarch of the Shelby Family and the treasurer of the Birmingham criminal gang, the Peaky Blinders. She managed the Peaky Blinders when the Shelby boys were absent during the Great War. She is the unofficial head of the Shelby Family and often advises Thomas Shelby on the gang\'s business.', '\"Rule one. You don\'t punch above your weight.\"', 'img/pollyshel.jpg', 10),
(20, 'Arthur Shelby', 'Paul Anderson', 'Arthur is more brawn than brains. During the war in France, Arthur was a Sapper with his brother Thomas, digging very treacherous tunnels in order to place enormous amount of explosives under the enemy positions: a tactic used several times in the war to devastating effect at both the Battle of Verdun and the Battle at the Somme. It is suggested he may have served at Gallipoli through his distaste for Turks and the smell of stagnant water.', '\"We\'re kings! Kings of the fucking world!\"', 'img/arthur.jpg ', 10);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `ratingId` int(3) NOT NULL COMMENT 'unique rating is, auto incremented',
  `heroId` int(3) NOT NULL COMMENT 'the heroId used as reference to the hero table, can''t be unique in thie table',
  `rating` decimal(3,1) NOT NULL COMMENT 'rating is defined as an integer from 0 (min) to 10 (max)',
  `ratingDate` varchar(40) NOT NULL COMMENT 'the date of this rating. Dates are presented as an integer (timestamp) and displayed as a human readable date and time string using the PHP strftime() function',
  `ratingReview` text NOT NULL COMMENT 'a textual review added by the user\\nthe form where the user can rate the hero by using stars (radio-buttons)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`ratingId`, `heroId`, `rating`, `ratingDate`, `ratingReview`) VALUES
(290, 12, '4.5', '2018-01-23 14:25:49', 'Goed'),
(291, 12, '1.0', '2018-01-23 14:27:17', 'AAAAAH'),
(292, 12, '0.0', '2018-01-23 14:28:46', 'wewew'),
(293, 12, '2.0', '2018-01-23 14 - 1:29:28', 'asdfaaa'),
(294, 12, '1.0', '2018-01-23 14:31:40', 'tttt'),
(295, 6, '1.5', '2018-01-23 14:31:47', 'Dwight'),
(296, 6, '1.5', 'Thu-01-2018 10:03:12', 'asdfasdf'),
(297, 6, '1.0', '25-01-2018 10:03:31', 'fasdf'),
(298, 6, '4.5', '25-01-2018 10:10:27', 'Hoi Jordi'),
(299, 6, '2.0', '2018-01-25 11:15:55', 'hoelaat'),
(300, 7, '2.0', '2018-01-25 11:16:46', 'asdf'),
(301, 16, '5.0', '2018-01-26 14:00:17', 'Jordi vindt dit een geil wijf');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `teamId` int(3) NOT NULL COMMENT 'unique teamId can be used as a parameter in the URL and fetched using the $_GET variable',
  `teamName` varchar(50) NOT NULL COMMENT 'team name, just an ordinary string',
  `teamDescription` text NOT NULL COMMENT 'team description, just a string',
  `teamImage` varchar(100) NOT NULL COMMENT 'team image, stored as a string and used with the source of the HTML-tag',
  `totalCharacters` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`teamId`, `teamName`, `teamDescription`, `teamImage`, `totalCharacters`) VALUES
(6, 'The office', 'fasdfasdf', 'img/theoffice3.jpg', 3),
(7, 'Mrrobot', 'asdfasdf', 'img/mrrobot.jpg', 3),
(8, 'Game of Thrones', 'asdf', 'img/gameofthrones.jpg', 3),
(9, 'Vikings', 'asdfasdf', 'img/vikings.jpg', 3),
(10, 'Peaky Blinders', 'asddfasdf', 'img/peakyblind.jpg', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`heroId`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`ratingId`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`teamId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hero`
--
ALTER TABLE `hero`
  MODIFY `heroId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'the unique heroId used as a parameter in the URL and fetched by PHP using the $_GET superblobal variable', AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `ratingId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'unique rating is, auto incremented', AUTO_INCREMENT=302;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `teamId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'unique teamId can be used as a parameter in the URL and fetched using the $_GET variable', AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
