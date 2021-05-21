-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2021 at 05:45 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mynewdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `buil`
--

CREATE TABLE `buil` (
  `BID` int(5) NOT NULL,
  `BuildingName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buil`
--

INSERT INTO `buil` (`BID`, `BuildingName`) VALUES
(1, 'Select a Building'),
(2, 'New Building'),
(3, 'Main Building'),
(4, 'Engineering Building'),
(5, 'Auditorium'),
(6, 'Hospitality Management Building'),
(7, 'Mini Auditorium'),
(8, 'Second New Building');

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `BID` int(11) NOT NULL,
  `BuildingName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`BID`, `BuildingName`) VALUES
(1, 'Auditorium'),
(3, 'New Building');

-- --------------------------------------------------------

--
-- Table structure for table `csession`
--

CREATE TABLE `csession` (
  `CSID` int(11) NOT NULL,
  `Room` varchar(100) NOT NULL,
  `Session01` varchar(100) NOT NULL,
  `Session02` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `csession`
--

INSERT INTO `csession` (`CSID`, `Room`, `Session01`, `Session02`) VALUES
(1, 'A502', 'NDM(Lecture)', 'NDM(Tute)'),
(3, 'A506', 'NDM(Lecture)', 'NDM(Tute)'),
(5, 'A502', 'PAF(Lecture)', 'PAF(Tute)'),
(12, 'A501', 'ITPM(Lecture)', 'ITPM(TUte)');

-- --------------------------------------------------------

--
-- Table structure for table `gro`
--

CREATE TABLE `gro` (
  `GID` int(5) NOT NULL,
  `Group` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gro`
--

INSERT INTO `gro` (`GID`, `Group`) VALUES
(1, 'Select a Group'),
(2, '1'),
(3, '2'),
(4, '3'),
(5, '4'),
(6, '5'),
(7, '6'),
(8, '7'),
(9, '8'),
(10, '9'),
(11, '10'),
(12, '11'),
(13, '12'),
(14, '1(WE)'),
(15, '2(WE)'),
(16, '3(WE)'),
(17, '4(WE)'),
(18, '5(WE)');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `LID` int(5) NOT NULL,
  `Lecturer` varchar(100) NOT NULL,
  `Room` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`LID`, `Lecturer`, `Room`) VALUES
(1, 'Shanika Jayatilaka', 'A502'),
(2, 'Nuwan Kodhagoda', 'A502'),
(4, 'Janaka Siriwardhna', 'A502'),
(7, 'Kushnara Suriyawansha', 'B301'),
(9, 'Disni Siriwardhna', 'A502');

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
(1, 'Select Lecturer'),
(2, 'Ms.Kushnara Siriwardana'),
(3, 'Prof.Nimal Rajapakse'),
(4, 'Prof.Rahula Attalage'),
(5, 'DR.Anuradha Karunasena'),
(6, 'Ms.Disni Siriwardhana');

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
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `MID` int(11) NOT NULL,
  `Module` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`MID`, `Module`) VALUES
(1, 'IP'),
(2, 'SPM'),
(3, 'OOC'),
(4, 'OOP'),
(5, 'ITPM'),
(6, 'DBS');

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
(1, 'Select a Room'),
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
  `RID` int(5) NOT NULL,
  `BuildingName` varchar(100) NOT NULL,
  `Room` varchar(100) NOT NULL,
  `RoomType` varchar(100) NOT NULL,
  `Capacity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`RID`, `BuildingName`, `Room`, `RoomType`, `Capacity`) VALUES
(1, 'New Building', 'N3D', 'Lecture Hall', '125'),
(2, 'Main Building', 'A302', 'Laboratory', '60'),
(5, 'Engineering Building', 'E502', 'Lecture Hall', '250'),
(7, 'Main Building', 'A502', 'Laboratory', '120');

-- --------------------------------------------------------

--
-- Table structure for table `rtag`
--

CREATE TABLE `rtag` (
  `TID` int(5) NOT NULL,
  `Room` varchar(100) NOT NULL,
  `Tag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rtag`
--

INSERT INTO `rtag` (`TID`, `Room`, `Tag`) VALUES
(1, 'A502', 'Tutorial'),
(2, 'A502', 'Lecture '),
(3, 'A502', 'Lecture '),
(8, 'A503', 'Lecture'),
(10, 'A501', 'Tutorial'),
(12, 'B301', 'Tutorial'),
(13, 'A503', 'Lecture');

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `SID` int(5) NOT NULL,
  `Session` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`SID`, `Session`) VALUES
(1, 'Select a Session'),
(2, 'DBS(Lecture)'),
(3, 'NDM(Lecture)'),
(4, 'ITPM(Lecture)'),
(5, 'PAF(Lecture)'),
(6, 'IP(Lecture)'),
(7, 'ISC(Lecture)'),
(8, 'OOC(Lecture)'),
(9, 'OOP(Lecture)'),
(10, 'SE(Lecture)'),
(11, 'SPM(Lecture)'),
(12, 'EAP(Lecture)'),
(13, 'DMS(Lecture)'),
(14, 'OSSA(Lecture)');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `SID` int(11) NOT NULL,
  `Room` varchar(100) NOT NULL,
  `Session` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`SID`, `Room`, `Session`) VALUES
(1, 'Select a Room', 'ISDM(Tute)'),
(2, 'B302', 'OOP(Lecture)'),
(4, 'A502', 'SE(Tute)'),
(5, 'B302', 'ITPM(Lecture)'),
(10, 'B301', 'OOC(Tute)');

-- --------------------------------------------------------

--
-- Table structure for table `sestwo`
--

CREATE TABLE `sestwo` (
  `SID` int(5) NOT NULL,
  `Sessiontwo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sestwo`
--

INSERT INTO `sestwo` (`SID`, `Sessiontwo`) VALUES
(1, 'Select a Session'),
(2, 'DBS(Tute)'),
(3, 'NDM(Tute)'),
(4, 'ITPM(TUte)'),
(5, 'PAF(Tute)'),
(6, 'IP(Tute)'),
(7, 'ISC(Tute)'),
(8, 'OOC(Tute)'),
(9, 'OOP(Tute)'),
(10, 'SE(Tute)'),
(11, 'SPM(Tute)'),
(12, 'EAP(Tute)'),
(13, 'DMS(Tute)'),
(14, 'OSSA(Tute)');

-- --------------------------------------------------------

--
-- Table structure for table `set`
--

CREATE TABLE `set` (
  `SID` int(5) NOT NULL,
  `Session` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `set`
--

INSERT INTO `set` (`SID`, `Session`) VALUES
(1, 'Select a Session'),
(2, 'DBS(Tute)'),
(3, 'NDM(Tute)'),
(4, 'ITPM(Tute)'),
(5, 'PAF(Tute)'),
(6, 'IP(Tute)'),
(7, 'ISC(Tute)'),
(8, 'OOC(Tute)'),
(9, 'OOP(Tute)'),
(10, 'SE(Tute)'),
(11, 'SPM(Tute)'),
(12, 'EAP(Tute)'),
(13, 'DMS(Tute)'),
(14, 'OSSA(Tute)');

-- --------------------------------------------------------

--
-- Table structure for table `sgro`
--

CREATE TABLE `sgro` (
  `GID` int(5) NOT NULL,
  `Subgroup` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sgro`
--

INSERT INTO `sgro` (`GID`, `Subgroup`) VALUES
(1, 'Select a Sub Group'),
(2, '1'),
(3, '2'),
(4, '3');

-- --------------------------------------------------------

--
-- Table structure for table `stchart`
--

CREATE TABLE `stchart` (
  `SID` int(5) NOT NULL,
  `Batch` varchar(50) NOT NULL,
  `Module` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stchart`
--

INSERT INTO `stchart` (`SID`, `Batch`, `Module`) VALUES
(1, 'Y1.S1.01.1', 'IP'),
(2, 'Y1.S1.01.2', 'SPM'),
(3, 'Y2.S1.01.1', 'OOC'),
(4, 'Y2.S1.01.2', 'OOP'),
(5, 'Y3.S1.01.1', 'ITPM'),
(6, 'Y3.S1.01.2', 'DBS'),
(7, 'Y4.S1.01.1', 'PAF'),
(8, 'Y4.S1.01.2', 'NDM');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `GID` int(5) NOT NULL,
  `Room` varchar(100) NOT NULL,
  `Studentgroup` varchar(100) NOT NULL,
  `Studentsubgroup` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`GID`, `Room`, `Studentgroup`, `Studentsubgroup`) VALUES
(1, 'B302', '3', '3'),
(2, 'N3E', '4', '2');

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
-- Table structure for table `sub`
--

CREATE TABLE `sub` (
  `SID` int(5) NOT NULL,
  `subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub`
--

INSERT INTO `sub` (`SID`, `subject`) VALUES
(0, 'Select a Subject');

-- --------------------------------------------------------

--
-- Table structure for table `subj`
--

CREATE TABLE `subj` (
  `SID` int(5) NOT NULL,
  `subjectname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subj`
--

INSERT INTO `subj` (`SID`, `subjectname`) VALUES
(1, 'Select a Subject'),
(2, 'NDM'),
(3, 'ITPM'),
(4, 'PAF'),
(5, 'DBS'),
(6, 'DBS'),
(7, 'DMS'),
(8, 'OSSA'),
(9, 'OOP'),
(10, 'OOC'),
(11, 'ITP'),
(12, 'EAP'),
(13, 'IP'),
(14, 'SE'),
(15, 'SPM');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `SID` int(5) NOT NULL,
  `Room` varchar(100) NOT NULL,
  `Subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SID`, `Room`, `Subject`) VALUES
(1, 'A501', 'Interactive Media'),
(2, 'B302', 'SPM'),
(4, 'A502', 'OOP'),
(6, 'B301', 'OOC'),
(7, 'A503', 'ITPM'),
(9, 'A501', 'Game Development');

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
(1, 'Select Subject'),
(2, 'EAP'),
(3, 'OOP'),
(4, 'PAF'),
(5, 'ITPM');

-- --------------------------------------------------------

--
-- Table structure for table `ta`
--

CREATE TABLE `ta` (
  `TID` int(5) NOT NULL,
  `tag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ta`
--

INSERT INTO `ta` (`TID`, `tag`) VALUES
(1, 'Select a Tag'),
(2, 'Lecture'),
(3, 'Tute'),
(4, 'Lab');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `TID` int(5) NOT NULL,
  `Room` varchar(100) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Tag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`TID`, `Room`, `Subject`, `Tag`) VALUES
(1, 'A502', 'ITPM', 'Tute '),
(2, 'B302', 'PAF', 'Lecture'),
(4, 'A502', 'NDM', 'Lecture'),
(5, 'A502', 'NDM', 'Lab'),
(6, 'A502', 'PAF', 'Tute '),
(7, 'A502', 'PAF', 'Lecture'),
(9, 'A503', 'DMS', 'Tute'),
(10, 'A501', 'NDM', 'Lecture');

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
(1, 'Select a time'),
(2, '8.30'),
(3, '9.30'),
(4, '10.30'),
(5, '11.30'),
(6, '12.30'),
(7, '13.30'),
(8, '14.30'),
(9, '15.30'),
(10, '16.30'),
(11, '17.30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buil`
--
ALTER TABLE `buil`
  ADD PRIMARY KEY (`BID`);

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`BID`);

--
-- Indexes for table `csession`
--
ALTER TABLE `csession`
  ADD PRIMARY KEY (`CSID`);

--
-- Indexes for table `gro`
--
ALTER TABLE `gro`
  ADD PRIMARY KEY (`GID`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`LID`);

--
-- Indexes for table `lectureractivesession`
--
ALTER TABLE `lectureractivesession`
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
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`MID`);

--
-- Indexes for table `ro`
--
ALTER TABLE `ro`
  ADD PRIMARY KEY (`RID`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`RID`);

--
-- Indexes for table `rtag`
--
ALTER TABLE `rtag`
  ADD PRIMARY KEY (`TID`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `sestwo`
--
ALTER TABLE `sestwo`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `set`
--
ALTER TABLE `set`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `sgro`
--
ALTER TABLE `sgro`
  ADD PRIMARY KEY (`GID`);

--
-- Indexes for table `stchart`
--
ALTER TABLE `stchart`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`GID`);

--
-- Indexes for table `studentgroupsre`
--
ALTER TABLE `studentgroupsre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subj`
--
ALTER TABLE `subj`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ta`
--
ALTER TABLE `ta`
  ADD PRIMARY KEY (`TID`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`TID`);

--
-- Indexes for table `timeslots`
--
ALTER TABLE `timeslots`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buil`
--
ALTER TABLE `buil`
  MODIFY `BID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `building`
--
ALTER TABLE `building`
  MODIFY `BID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `csession`
--
ALTER TABLE `csession`
  MODIFY `CSID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `gro`
--
ALTER TABLE `gro`
  MODIFY `GID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `LID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lectureractivesession`
--
ALTER TABLE `lectureractivesession`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `MID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ro`
--
ALTER TABLE `ro`
  MODIFY `RID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `RID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rtag`
--
ALTER TABLE `rtag`
  MODIFY `TID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `SID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sestwo`
--
ALTER TABLE `sestwo`
  MODIFY `SID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `set`
--
ALTER TABLE `set`
  MODIFY `SID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sgro`
--
ALTER TABLE `sgro`
  MODIFY `GID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stchart`
--
ALTER TABLE `stchart`
  MODIFY `SID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `GID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `studentgroupsre`
--
ALTER TABLE `studentgroupsre`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subj`
--
ALTER TABLE `subj`
  MODIFY `SID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `SID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ta`
--
ALTER TABLE `ta`
  MODIFY `TID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `TID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `timeslots`
--
ALTER TABLE `timeslots`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
