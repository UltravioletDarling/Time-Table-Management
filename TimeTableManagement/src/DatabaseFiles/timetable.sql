-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2021 at 06:58 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timetable`
--

-- --------------------------------------------------------

--
-- Table structure for table `consecutivesessions`
--

CREATE TABLE `consecutivesessions` (
  `id` int(10) NOT NULL,
  `lecturer1` varchar(45) NOT NULL,
  `lecturer2` varchar(45) NOT NULL,
  `subjectcode` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `groupid` varchar(45) NOT NULL,
  `tag` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `consecutivesessions`
--

INSERT INTO `consecutivesessions` (`id`, `lecturer1`, `lecturer2`, `subjectcode`, `subject`, `groupid`, `tag`) VALUES
(1, 'Kushnara Suriyawansa', 'Kushnara Suriyawansa', 'Database Systems', 'Database Systems', 'Y1S1.1', 'Lecture'),
(4, 'Kushnara Suriyawansa', 'Dewmini Mendis', 'Database Systems', 'Database Systems', 'Y1S1.1', 'Lecture'),
(7, 'Dewmini Mendis', 'Kushnara Suriyawansa', 'Database Systems', 'Database Systems', 'Y1S1.1', 'Lecture');

-- --------------------------------------------------------

--
-- Table structure for table `lectureractivesession`
--

CREATE TABLE `lectureractivesession` (
  `id` int(10) NOT NULL,
  `lecturer` varchar(45) NOT NULL,
  `timeslot` varchar(45) NOT NULL,
  `monday` varchar(45) NOT NULL,
  `tuesday` varchar(45) NOT NULL,
  `wednesday` varchar(45) NOT NULL,
  `thursday` varchar(45) NOT NULL,
  `friday` varchar(45) NOT NULL,
  `saturday` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lectureractivesession`
--

INSERT INTO `lectureractivesession` (`id`, `lecturer`, `timeslot`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`) VALUES
(6, 'Kushnara Suriyawansa', '9.30', 'EAP , Y1S1.1 , A501', 'EAP , Y1S1.1 , A501', 'EAP , Y1S1.1 , A501', 'EAP , Y1S1.1 , A501', 'EAP , Y1S1.1 , A501', 'EAP , Y1S1.1 , A501'),
(7, 'Dewmini Mendis', '8.30', 'EAP , Y1S1.1 , A501', 'EAP , Y1S1.1 , A501', 'EAP , Y1S1.1 , A501', 'EAP , Y1S1.1 , A501', 'EAP , Y1S1.1 , A501', 'EAP , Y1S1.1 , A501'),
(8, 'Kushnara Suriyawansa', '9.30', 'EAP , Y1S1.1 , A501', 'EAP , Y1S1.1 , A501', 'EAP , Y1S1.1 , A501', 'EAP , Y1S1.1 , A501', 'EAP , Y1S1.1 , A501', 'EAP , Y1S1.1 , A501');

-- --------------------------------------------------------

--
-- Table structure for table `lectureractivesessions`
--

CREATE TABLE `lectureractivesessions` (
  `id` int(10) NOT NULL,
  `lecturer` varchar(45) NOT NULL,
  `timeslot` varchar(45) NOT NULL,
  `monday` varchar(45) NOT NULL,
  `mondaystudents` varchar(45) NOT NULL,
  `mondaylocation` varchar(45) NOT NULL,
  `tuesday` varchar(45) NOT NULL,
  `tuesdaystudents` varchar(45) NOT NULL,
  `tuesdaylocation` varchar(45) NOT NULL,
  `wednesday` varchar(45) NOT NULL,
  `wednesdaystudents` varchar(45) NOT NULL,
  `wednesdaylocation` varchar(45) NOT NULL,
  `thursday` varchar(45) NOT NULL,
  `thursdaystudents` varchar(45) NOT NULL,
  `thursdaylocation` varchar(45) NOT NULL,
  `friday` varchar(45) NOT NULL,
  `fridaystudents` varchar(45) NOT NULL,
  `fridaylocation` varchar(45) NOT NULL,
  `saturday` varchar(45) NOT NULL,
  `saturdaystudents` varchar(45) NOT NULL,
  `saturdaylocation` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lectureractivesessions`
--

INSERT INTO `lectureractivesessions` (`id`, `lecturer`, `timeslot`, `monday`, `mondaystudents`, `mondaylocation`, `tuesday`, `tuesdaystudents`, `tuesdaylocation`, `wednesday`, `wednesdaystudents`, `wednesdaylocation`, `thursday`, `thursdaystudents`, `thursdaylocation`, `friday`, `fridaystudents`, `fridaylocation`, `saturday`, `saturdaystudents`, `saturdaylocation`) VALUES
(1, 'Kushnara Suriyawansa', '8.30', 'Database Systems', 'Y1S1.1', 'Select a Room', 'Database Systems', 'Y1S1.1', 'Select a Room', 'Database Systems', 'Y1S1.1', 'Select a Room', 'Database Systems', 'Y1S1.1', 'Select a Room', 'Database Systems', 'Y1S1.1', 'Select a Room', 'Database Systems', 'Y1S1.1', 'Select a Room'),
(2, 'Kushnara Suriyawansa', '8.30', 'Database Systems', 'Y1S1.1', 'Select a Room', 'Database Systems', 'Y1S1.1', 'Select a Room', 'Database Systems', 'Y1S1.1', 'Select a Room', 'Database Systems', 'Y1S1.1', 'Select a Room', 'Database Systems', 'Y1S1.1', 'Select a Room', 'Database Systems', 'Y1S1.1', 'Select a Room');

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `lecturerid` int(11) NOT NULL,
  `lecturername` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`lecturerid`, `lecturername`) VALUES
(1, 'Kushnara Suriyawansa'),
(2, 'Dewmini Mendis'),
(3, 'Rasitha Senevirathne'),
(4, 'Ayodya Rathnayake'),
(5, 'Amanda Perera'),
(6, 'Savindu Ranasinghe');

-- --------------------------------------------------------

--
-- Table structure for table `locationactivesessions`
--

CREATE TABLE `locationactivesessions` (
  `id` int(10) NOT NULL,
  `location` varchar(45) NOT NULL,
  `timeslot` varchar(45) NOT NULL,
  `monday` varchar(45) NOT NULL,
  `tuesday` varchar(45) NOT NULL,
  `wednesday` varchar(45) NOT NULL,
  `thursday` varchar(45) NOT NULL,
  `friday` varchar(45) NOT NULL,
  `saturday` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locationactivesessions`
--

INSERT INTO `locationactivesessions` (`id`, `location`, `timeslot`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`) VALUES
(6, 'A501', '8.30', 'EAP , Y1S1.1 , Kushnara Suriyawansa', 'EAP , Y1S1.1 , Kushnara Suriyawansa', 'EAP , Y1S1.1 , Kushnara Suriyawansa', 'EAP , Y1S1.1 , Kushnara Suriyawansa', 'EAP , Y1S1.1 , Kushnara Suriyawansa', 'EAP , Y1S1.1 , Kushnara Suriyawansa'),
(7, 'A501', '8.30', 'EAP , Y1S1.1 , Kushnara Suriyawansa', 'EAP , Y1S1.1 , Kushnara Suriyawansa', 'EAP , Y1S1.1 , Kushnara Suriyawansa', 'EAP , Y1S1.1 , Kushnara Suriyawansa', 'EAP , Y1S1.1 , Kushnara Suriyawansa', 'EAP , Y1S1.1 , Kushnara Suriyawansa'),
(8, 'A501', '8.30', 'EAP , Y1S1.1 , Kushnara Suriyawansa', 'EAP , Y1S1.1 , Kushnara Suriyawansa', 'EAP , Y1S1.1 , Kushnara Suriyawansa', 'EAP , Y1S1.1 , Kushnara Suriyawansa', 'EAP , Y1S1.1 , Kushnara Suriyawansa', 'EAP , Y1S1.1 , Kushnara Suriyawansa');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `Module_id` varchar(10) NOT NULL,
  `Module_code` varchar(100) NOT NULL,
  `Module_name` varchar(100) NOT NULL,
  `Year` varchar(10) NOT NULL,
  `Semester` varchar(10) NOT NULL,
  `No_of_lecture_hours` varchar(10) NOT NULL,
  `No_of_tute_hours` varchar(10) NOT NULL,
  `No_of_lab_hours` varchar(10) NOT NULL,
  `No_of_evaluation_hours` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`Module_id`, `Module_code`, `Module_name`, `Year`, `Semester`, `No_of_lecture_hours`, `No_of_tute_hours`, `No_of_lab_hours`, `No_of_evaluation_hours`) VALUES
('m001', 'IT1010', 'IP', '1', '1', '2', '1', '2', '2'),
('m002', 'IT1020', 'ICS', '1', '1', '2', '1', '2', '1'),
('m003', 'IT1030', 'MC', '1', '1', '2', '1', '2', '3'),
('m004', 'IT1050', 'OOC', '1', '2', '1', '1', '1', '2'),
('m005', 'IT1060', 'SPM', '1', '2', '2', '1', '2', '4'),
('m006', 'IT2030', 'OOP', '2', '1', '1', '2', '2', '4'),
('m007', 'IT2050', 'CN', '2', '1', '2', '2', '2', '4'),
('m008', 'IT2070', 'DSA', '2', '2', '2', '1', '2', '4'),
('m009', 'IT2110', 'PS', '2', '2', '2', '1', '2', '2'),
('m010', 'IT3010', 'NDM', '3', '1', '2', '1', '2', '3');

-- --------------------------------------------------------

--
-- Table structure for table `nosessions`
--

CREATE TABLE `nosessions` (
  `id` int(10) NOT NULL,
  `subject1` varchar(45) NOT NULL,
  `group1` varchar(45) NOT NULL,
  `tag1` varchar(45) NOT NULL,
  `subject2` varchar(45) NOT NULL,
  `group2` varchar(45) NOT NULL,
  `tag2` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nosessions`
--

INSERT INTO `nosessions` (`id`, `subject1`, `group1`, `tag1`, `subject2`, `group2`, `tag2`) VALUES
(1, 'OOP', 'Y1S1.1', 'none', 'Database Systems', 'Y1S1.1', 'none'),
(6, 'Database Systems', 'Y1S1.1', 'none', 'Database Systems', 'Y1S1.1', 'none'),
(7, 'Database Systems', 'Y1S1.1', 'Tutorial', 'Database Systems', 'Y1S1.1', 'none'),
(8, 'Database Systems', 'Y1S1.1', 'none', 'Database Systems', 'Y1S1.1', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `notavailablelecturer`
--

CREATE TABLE `notavailablelecturer` (
  `id` int(10) NOT NULL,
  `lecturer` varchar(45) NOT NULL,
  `group1` varchar(45) NOT NULL,
  `session` varchar(45) NOT NULL,
  `day` varchar(45) NOT NULL,
  `sttime` varchar(45) NOT NULL,
  `duration` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notavailablelecturer`
--

INSERT INTO `notavailablelecturer` (`id`, `lecturer`, `group1`, `session`, `day`, `sttime`, `duration`) VALUES
(1, 'Kushnara Suriyawansa', 'Y1S1.1', 'Lecture', 'Monday', '02:05 PM', '1'),
(4, 'Kushnara Suriyawansa', 'Y1S1.1', 'Lecture', 'Monday', '00:00 AM', '0'),
(5, 'Dewmini Mendis', 'Y1S1.1', 'Lecture', 'Monday', '00:00 AM', '0'),
(6, 'Dewmini Mendis', 'Y1S1.1', 'Lab', 'Monday', '00:00 AM', '0'),
(9, 'Ayodya Rathnayake', 'Y1S1.1', 'Lab', 'Monday', '00:00 AM', '0');

-- --------------------------------------------------------

--
-- Table structure for table `notavailablelocation`
--

CREATE TABLE `notavailablelocation` (
  `id` int(10) NOT NULL,
  `roomno` varchar(45) NOT NULL,
  `day` varchar(45) NOT NULL,
  `sttime` varchar(45) NOT NULL,
  `duration` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `parallelsessions`
--

CREATE TABLE `parallelsessions` (
  `id` int(10) NOT NULL,
  `subject1` varchar(45) NOT NULL,
  `subject2` varchar(45) NOT NULL,
  `group1` varchar(45) NOT NULL,
  `day` varchar(45) NOT NULL,
  `startingtime` varchar(45) NOT NULL,
  `duration` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parallelsessions`
--

INSERT INTO `parallelsessions` (`id`, `subject1`, `subject2`, `group1`, `day`, `startingtime`, `duration`) VALUES
(1, 'Database Systems', 'Database Systems', 'Y1S1.1', 'Monday', '01:10 AM', '2'),
(6, 'PAF', 'Database Systems', 'Y1S1.1', 'Monday', '00:00 AM', '0'),
(10, 'Database Systems', 'Database Systems', 'Y1S1.1', 'Wednesday', '00:00 AM', '0');

-- --------------------------------------------------------

--
-- Table structure for table `ro`
--

CREATE TABLE `ro` (
  `RID` int(5) NOT NULL,
  `Room` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ro`
--

INSERT INTO `ro` (`RID`, `Room`) VALUES
(2, 'A501'),
(3, 'A502'),
(4, 'A503'),
(5, 'B301'),
(6, 'B302'),
(7, 'B305'),
(8, 'N3D'),
(9, 'N3E'),
(10, 'E301'),
(11, 'E401'),
(12, 'E501');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) NOT NULL,
  `roomno` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `roomno`) VALUES
(1, 'A401'),
(2, 'A402'),
(3, 'A403'),
(4, 'A404'),
(5, 'A405'),
(6, 'A406'),
(7, 'B501'),
(8, 'B505');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` int(10) NOT NULL,
  `Lecturer_1` varchar(100) NOT NULL,
  `Module_Code` varchar(100) NOT NULL,
  `Module_Name` varchar(100) NOT NULL,
  `Tag` varchar(20) NOT NULL,
  `Group_Id` varchar(100) NOT NULL,
  `Location` varchar(10) NOT NULL,
  `Day` varchar(10) NOT NULL,
  `Time_slot` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `Lecturer_1`, `Module_Code`, `Module_Name`, `Tag`, `Group_Id`, `Location`, `Day`, `Time_slot`) VALUES
(14, 'Rasitha Senevirathne', 'IT1010', 'IP', 'Lab', 'Y1S1.1.1', 'A401', 'Monday', '8.30'),
(15, 'Kushnara Suriyawansa', 'IT1020', 'OOC', 'Lecture ', 'Y1S1.1.1', 'A401', 'Monday', '8.30'),
(16, 'Ayodya Rathnayake', 'IT1020', 'SPM', 'Lecture ', 'Y3S1.1.1', 'A401', 'Monday', '8.30'),
(17, 'Amanda Perera', 'IT1020', 'CN', 'Lecture ', 'Y3S1.1.1', 'A401', 'Monday', '8.30'),
(18, 'Savindu Ranasinghe', 'IT1020', 'PS', 'Lecture ', 'Y3S1.1.1', 'A401', 'Monday', '8.30');

-- --------------------------------------------------------

--
-- Table structure for table `studentactivesession`
--

CREATE TABLE `studentactivesession` (
  `id` int(10) NOT NULL,
  `studentgroup` varchar(45) NOT NULL,
  `timeslot` varchar(45) NOT NULL,
  `monday` varchar(45) NOT NULL,
  `tuesday` varchar(45) NOT NULL,
  `wednesday` varchar(45) NOT NULL,
  `thursday` varchar(45) NOT NULL,
  `friday` varchar(45) NOT NULL,
  `saturday` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentactivesession`
--

INSERT INTO `studentactivesession` (`id`, `studentgroup`, `timeslot`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`) VALUES
(5, 'Y1S1.1', '8.30', 'EAP , Kushnara Suriyawansa , A501', 'EAP , Kushnara Suriyawansa , A501', 'EAP , Kushnara Suriyawansa , A501', 'EAP , Kushnara Suriyawansa , A501', 'EAP , Kushnara Suriyawansa , A501', 'EAP , Kushnara Suriyawansa , A501'),
(6, 'Y1S1.1', '8.30', 'EAP , Dewmini Mendis , A501', 'EAP , Dewmini Mendis , A501', 'EAP , Dewmini Mendis , A501', 'EAP , Dewmini Mendis , A501', 'EAP , Dewmini Mendis , A501', 'EAP , Dewmini Mendis , A501'),
(7, 'Y1S1.1', '8.30', 'EAP , Kushnara Suriyawansa , A501', 'EAP , Kushnara Suriyawansa , A501', 'EAP , Kushnara Suriyawansa , A501', 'EAP , Kushnara Suriyawansa , A501', 'EAP , Kushnara Suriyawansa , A501', 'EAP , Kushnara Suriyawansa , A501');

-- --------------------------------------------------------

--
-- Table structure for table `studentgroupsre`
--

CREATE TABLE `studentgroupsre` (
  `id` int(10) NOT NULL,
  `year` varchar(45) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `program` varchar(45) NOT NULL,
  `groupnumber` varchar(45) NOT NULL,
  `subgroupnumber` varchar(45) NOT NULL,
  `groupid` varchar(45) NOT NULL,
  `subgroupid` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentgroupsre`
--

INSERT INTO `studentgroupsre` (`id`, `year`, `semester`, `program`, `groupnumber`, `subgroupnumber`, `groupid`, `subgroupid`) VALUES
(1, 'Y1', 'S1', 'IT', '1', '1', 'Y1S1.1', 'Y1S1.1.1'),
(2, 'Y3', 'S1', 'ISE', '2', '1', 'Y3S1.1', 'Y3S1.1.1');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) NOT NULL,
  `subject` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject`) VALUES
(2, 'EAP'),
(3, 'OOP'),
(4, 'PAF'),
(5, 'ITPM');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) NOT NULL,
  `subjectname` varchar(45) NOT NULL,
  `subjectcode` varchar(45) NOT NULL,
  `tag` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `subjectname`, `subjectcode`, `tag`) VALUES
(1, 'CS', 'IT3020', 'Lecture'),
(2, 'OOP', 'IT2020', 'Tutorial');

-- --------------------------------------------------------

--
-- Table structure for table `timeslots`
--

CREATE TABLE `timeslots` (
  `id` int(10) NOT NULL,
  `timeslots` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timeslots`
--

INSERT INTO `timeslots` (`id`, `timeslots`) VALUES
(1, '8.30'),
(2, '9.30'),
(3, '10.30'),
(4, '11.30'),
(5, '12.30'),
(6, '13.30'),
(7, '14.30'),
(8, '15.30'),
(9, '16.30'),
(10, '17.30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consecutivesessions`
--
ALTER TABLE `consecutivesessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lectureractivesession`
--
ALTER TABLE `lectureractivesession`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lectureractivesessions`
--
ALTER TABLE `lectureractivesessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`lecturerid`);

--
-- Indexes for table `locationactivesessions`
--
ALTER TABLE `locationactivesessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`Module_id`);

--
-- Indexes for table `nosessions`
--
ALTER TABLE `nosessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notavailablelecturer`
--
ALTER TABLE `notavailablelecturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notavailablelocation`
--
ALTER TABLE `notavailablelocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parallelsessions`
--
ALTER TABLE `parallelsessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ro`
--
ALTER TABLE `ro`
  ADD PRIMARY KEY (`RID`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `studentactivesession`
--
ALTER TABLE `studentactivesession`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentgroupsre`
--
ALTER TABLE `studentgroupsre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timeslots`
--
ALTER TABLE `timeslots`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consecutivesessions`
--
ALTER TABLE `consecutivesessions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lectureractivesession`
--
ALTER TABLE `lectureractivesession`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lectureractivesessions`
--
ALTER TABLE `lectureractivesessions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lecturers`
--
ALTER TABLE `lecturers`
  MODIFY `lecturerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `locationactivesessions`
--
ALTER TABLE `locationactivesessions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nosessions`
--
ALTER TABLE `nosessions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notavailablelecturer`
--
ALTER TABLE `notavailablelecturer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notavailablelocation`
--
ALTER TABLE `notavailablelocation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parallelsessions`
--
ALTER TABLE `parallelsessions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ro`
--
ALTER TABLE `ro`
  MODIFY `RID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `studentactivesession`
--
ALTER TABLE `studentactivesession`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `studentgroupsre`
--
ALTER TABLE `studentgroupsre`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `timeslots`
--
ALTER TABLE `timeslots`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
