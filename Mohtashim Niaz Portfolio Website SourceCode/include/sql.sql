-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2020 at 06:41 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: iportfolio
--

-- --------------------------------------------------------

--
-- Table structure for table aboutus_setup
--

CREATE TABLE aboutus_setup (
  id int(11) NOT NULL,
  shortdesc text NOT NULL,
  heading text NOT NULL,
  subheading text NOT NULL,
  longdesc text NOT NULL,
  website varchar(250) NOT NULL,
  dob varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table aboutus_setup
--

INSERT INTO aboutus_setup 
(id, shortdesc, heading, subheading, longdesc, website, dob) 
VALUES 
(1, 
'A passionate problem solver and full-stack developer.', 
'Software Engineer', 
'Delivering scalable web solutions with clean code.', 
'I am a results-driven Software Engineer with hands-on experience in PHP, Laravel, and full-stack web development. I bring strong expertise in building robust web applications and RESTful APIs. With a background in Java, C++, JavaFX, and Python, I approach problems from multiple paradigms. I am also well-versed in version control (Git), database design, responsive UI development, and software design patterns. My goal is to develop secure, efficient, and maintainable solutions that provide real-world impact.', 
'https://www.devninja.com', 
'2 July, 2004');

-- --------------------------------------------------------

--
-- Table structure for table admin_users
--

CREATE TABLE admin_users (
  id int(11) NOT NULL,
  username varchar(250) NOT NULL,
  user_id varchar(250) NOT NULL,
  user_pass varchar(250) NOT NULL,
  user_access tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table admin_users
--

INSERT INTO admin_users (id, username, user_id, user_pass, user_access) VALUES
(1, 'Monu Boss', 'monu@admin.com', 'admin123', 1);

-- --------------------------------------------------------

--
-- Table structure for table basic_setup
--

CREATE TABLE basic_setup (
  id int(11) NOT NULL,
  title varchar(250) NOT NULL,
  description text NOT NULL,
  keyword text NOT NULL,
  icon varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table basic_setup
--

INSERT INTO basic_setup (id, title, description, keyword, icon) VALUES
(1, 'Mohtashim Niaz', 'i am a web developer, i make website and php web portals .', 'web development,php development', 'icons8-computer-support-64.png');

-- --------------------------------------------------------

--
-- Table structure for table contact
--

CREATE TABLE contact (
  id int(11) NOT NULL,
  cname varchar(250) NOT NULL,
  cemail varchar(250) NOT NULL,
  csubject text NOT NULL,
  cmessage text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table contact
--

INSERT INTO contact (id, cname, cemail, csubject, cmessage) VALUES
(16, 'Shubham Seth', 'ristar@gmail.com', 'Partnership', 'i want to work with you , please contact me on my personal mobile no\r\nat <strong>7838403916</strong>'),
(17, 'Sukriti Seth', 'sukriti46737@gmail.com', 'Complaint', 'i used your service but i dont like it you are worst servoces provider ever i am gonna sue you on fedral court and you have to pay a very big ammount to me becayuse of you i loss 20000 million dollars and you provide the worst service u have ever.');

-- --------------------------------------------------------

--
-- Table structure for table personal_setup
--

CREATE TABLE personal_setup (
  id int(11) NOT NULL,
  profilepic varchar(250) NOT NULL,
  profilepicture varchar(250) NOT NULL,
  name varchar(250) NOT NULL,
  twitter varchar(200) NOT NULL,
  facebook varchar(200) NOT NULL,
  instagram varchar(200) NOT NULL,
  skype varchar(200) NOT NULL,
  linkedin varchar(200) NOT NULL,
  github varchar(200) NOT NULL,
  homewallpaper varchar(200) NOT NULL,
  professions varchar(200) NOT NULL,
  location text NOT NULL,
  mobile varchar(200) NOT NULL,
  emailid varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table personal_setup
--

INSERT INTO personal_setup (id, profilepic, profilepicture, name, twitter, facebook, instagram, skype, linkedin, github, homewallpaper, professions, location, mobile, emailid) VALUES
(1, 'profile.jpg', 'profile2.jpg', 'Mohtashim Niaz', '', 'https://www.facebook.com/profile.php?id=100014555686644', 'https://www.instagram.com/mohtashim.n1/', '', '', 'https://github.com/Mohtashim2325', 'hero-bg.jpg', 'a Web Developer,a PHP Developer,a Problem Solver,a Video Editor', 'Mohala Sain Kala, Main Bazar Phalia', '03476720018', 'mohtashimniaz2@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table portfolio
--

CREATE TABLE portfolio (
  id int(11) NOT NULL,
  projectname varchar(250) NOT NULL,
  projectpic varchar(250) NOT NULL,
  projectlink text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table portfolio
--

INSERT INTO portfolio (id, projectname, projectpic, projectlink) VALUES
(1, 'Dance Tour Website', 'dancetour.png', '#'),
(2, 'Blog Website', 'Devpro.png', '#'),
(3, 'Ecommerce Website', 'ecommrce.png', '#'),
(4, 'Depth Aware Panaroma Generator', 'panaroma.png', '#'),
(5, 'Laravel Note Generator', 'note.png', '#'),
(6, 'Chatty - real-time chat application', 'chatty.png', '');

-- --------------------------------------------------------

--
-- Table structure for table resume
--

CREATE TABLE resume (
  id int(11) NOT NULL,
  category varchar(250) NOT NULL,
  title varchar(250) NOT NULL,
  year varchar(250) NOT NULL,
  ogname varchar(250) NOT NULL,
  workdesc text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table resume
--

INSERT INTO resume (id, category, title, year, ogname, workdesc) VALUES
(7, 'e', 'Matric', '2018 - 2020', 'The Edcators Phalia Campus', 'Compuster Science Major'),
(8, 'e', 'Fsc Pre Engineering', '2020-2022', 'Punjab Group of Colleges, Phalia Campus', ''),
(9, 'e', 'BS Software Engineering', '2022-2026', 'Uet Taxila', ''),
(10, 'pe', 'Working as a Freelancer', '2022 - Present', 'Open Network', ''),
(11, 'pe', 'Internship at boson Studio', '2024 - 8 week', 'Web Development', '');

-- --------------------------------------------------------

--
-- Table structure for table skills
--

CREATE TABLE skills (
  id int(11) NOT NULL,
  skill varchar(250) NOT NULL,
  score varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table skills
--

INSERT INTO skills (id, skill, score) VALUES
(1, 'HTML', '100'),
(2, 'CSS', '90'),
(3, 'PHP', '75'),
(4, 'MYSQL', '75'),
(5, 'Javascript', '60'),
(6, 'Photoshop', '70'),
(7, 'Bootstrap', '60'),
(8, 'Laravel', '50'),
(9, 'MERN stack', '40'),
(10, 'Python', '70'),
(11, 'Java', '40'),
(12, 'WordPress', '70'),
(13, 'Software Design', '60'),
(14, 'Graphic Designing', '50'),
(15, 'Video Editing', '50'),
(16, 'Tailwind CSS', '90');

-- --------------------------------------------------------

--
-- Table structure for table userinfo
--

CREATE TABLE userinfo (
  id int(11) NOT NULL,
  userq varchar(250) NOT NULL,
  userv varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table userinfo
--

INSERT INTO userinfo (id, userq, userv) VALUES
(1, 'Birthday', '14 July,1999'),
(2, 'Age', '21'),
(3, 'Website', 'www.monugiri.com'),
(4, 'Degree', 'Bachelors Degree'),
(5, 'Mobile', '+917838403916'),
(6, 'Email', 'whomonugiri@gmail.com'),
(7, 'City', 'New Delhi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table aboutus_setup
--
ALTER TABLE aboutus_setup
  ADD PRIMARY KEY (id);

--
-- Indexes for table admin_users
--
ALTER TABLE admin_users
  ADD PRIMARY KEY (id);

--
-- Indexes for table basic_setup
--
ALTER TABLE basic_setup
  ADD PRIMARY KEY (id);

--
-- Indexes for table contact
--
ALTER TABLE contact
  ADD PRIMARY KEY (id);

--
-- Indexes for table personal_setup
--
ALTER TABLE personal_setup
  ADD PRIMARY KEY (id);

--
-- Indexes for table portfolio
--
ALTER TABLE portfolio
  ADD PRIMARY KEY (id);

--
-- Indexes for table resume
--
ALTER TABLE resume
  ADD PRIMARY KEY (id);

--
-- Indexes for table skills
--
ALTER TABLE skills
  ADD PRIMARY KEY (id);

--
-- Indexes for table userinfo
--
ALTER TABLE userinfo
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table aboutus_setup
--
ALTER TABLE aboutus_setup
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table admin_users
--
ALTER TABLE admin_users
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table basic_setup
--
ALTER TABLE basic_setup
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table contact
--
ALTER TABLE contact
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table personal_setup
--
ALTER TABLE personal_setup
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table portfolio
--
ALTER TABLE portfolio
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table resume
--
ALTER TABLE resume
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table skills
--
ALTER TABLE skills
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table userinfo
--
ALTER TABLE userinfo
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;