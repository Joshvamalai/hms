-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jan 20, 2025 at 04:37 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Joshva@123', '10-07-2024 09:01:11 PM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'General Surgery', 0, 1, 0, '2024-07-24', '9:45 PM', '2024-07-18 16:08:11', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dermatology', 'Leo', 'Vellore', '10000', 9856231047, 'leo@gmail.com', 'd397d8c641072ae5f98eb2c444f66c2a', '2024-07-16 15:44:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'leo@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-16 15:56:27', '16-07-2024 09:26:37 PM', 1),
(2, 1, 'leo@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-16 17:07:35', '16-07-2024 10:37:45 PM', 1),
(3, 1, 'leo@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-18 16:52:11', NULL, 1),
(4, 1, 'leo@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-25 16:24:04', '25-07-2024 09:54:07 PM', 1),
(5, 1, 'leo@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-25 16:24:48', '25-07-2024 09:54:50 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(2, 'Internal Medicine', '2024-04-09 18:09:46', '2024-05-23 16:35:37'),
(3, 'Obstetrics and Gynecology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(4, 'Dermatology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(5, 'Pediatrics', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(6, 'Radiology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(7, 'General Surgery', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(8, 'Ophthalmology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(9, 'Anesthesia', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(10, 'Pathology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(11, 'ENT', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(12, 'Dental Care', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(13, 'Dermatologists', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(14, 'Endocrinologists', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(15, 'Neurologists', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(18, 'Orthopedics-02', '2024-05-22 16:57:40', '2024-05-23 16:00:02'),
(23, 'Jose', '2024-05-23 16:36:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `OpenningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpenningTime`) VALUES
(1, 'aboutus', 'About Us', '<ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.313em; margin-left: 1.655em;\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;=\"\" background-color:=\"\" rgb(255,=\"\" 246,=\"\" 246);\"=\"\"><li style=\"text-align: left;\"><p style=\"margin-top: 0.5em; margin-bottom: 0px; padding-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">A&nbsp;<b>hospital</b>&nbsp;is a healthcare institution providing patient treatment with specialized&nbsp;<a href=\"https://en.wikipedia.org/wiki/Medical_Science\" class=\"mw-redirect\" title=\"Medical Science\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">health science</a>&nbsp;and auxiliary healthcare staff and medical equipment.<sup id=\"cite_ref-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; text-wrap: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hospital#cite_note-1\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">[1]</a></sup>&nbsp;The best-known type of hospital is the general hospital, which typically has an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Emergency_department\" title=\"Emergency department\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">emergency department</a>&nbsp;to treat urgent health problems ranging from fire and accident victims to a sudden illness. A district hospital typically is the major health care facility in its region, with many beds for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Intensive_care\" class=\"mw-redirect\" title=\"Intensive care\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">intensive care</a>&nbsp;and additional beds for patients who need long-term care.</p><p style=\"margin-top: 0.5em; margin-bottom: 0px; padding-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Specialized hospitals include&nbsp;<a href=\"https://en.wikipedia.org/wiki/Trauma_center\" title=\"Trauma center\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">trauma centers</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Rehabilitation_hospital\" title=\"Rehabilitation hospital\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">rehabilitation hospitals</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Children%27s_hospital\" title=\"Children\'s hospital\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">children\'s hospitals</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Geriatric\" class=\"mw-redirect\" title=\"Geriatric\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">geriatric</a>&nbsp;hospitals, and hospitals for specific medical needs, such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Psychiatric_hospital\" title=\"Psychiatric hospital\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">psychiatric hospitals</a>&nbsp;for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Psychiatry\" title=\"Psychiatry\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">psychiatric</a>&nbsp;treatment and other disease-specific categories. Specialized hospitals can help reduce&nbsp;<a href=\"https://en.wikipedia.org/wiki/Health_care_costs\" class=\"mw-redirect\" title=\"Health care costs\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">health care costs</a>&nbsp;compared to general hospitals.<sup id=\"cite_ref-bbc1_2-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; text-wrap: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hospital#cite_note-bbc1-2\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">[2]</a></sup>&nbsp;Hospitals are classified as general, specialty, or government depending on the sources of income received.</p><p style=\"margin-top: 0.5em; margin-bottom: 0px; padding-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">A&nbsp;<a href=\"https://en.wikipedia.org/wiki/Teaching_hospital\" title=\"Teaching hospital\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">teaching hospital</a>&nbsp;combines assistance to people with teaching to health science students and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Allied_Healthcare\" title=\"Allied Healthcare\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">auxiliary healthcare</a>&nbsp;students. A health science facility smaller than a hospital is generally called a clinic. Hospitals have a range of departments (e.g. surgery and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Urgent_care\" class=\"mw-redirect\" title=\"Urgent care\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">urgent care</a>) and specialist units such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cardiology\" title=\"Cardiology\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">cardiology</a>. Some hospitals have&nbsp;<a href=\"https://en.wikipedia.org/wiki/Outpatient\" class=\"mw-redirect\" title=\"Outpatient\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">outpatient departments</a>&nbsp;and some have chronic treatment units. Common support units include a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Hospital_pharmacy\" title=\"Hospital pharmacy\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">pharmacy</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pathology\" title=\"Pathology\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">pathology</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Radiology\" title=\"Radiology\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">radiology</a>.</p><p style=\"margin-top: 0.5em; margin-bottom: 0px; padding-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Hospitals are typically funded by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Publicly_funded_healthcare\" class=\"mw-redirect\" title=\"Publicly funded healthcare\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">public funding</a>, health organizations (<a href=\"https://en.wikipedia.org/wiki/For-profit_hospital\" title=\"For-profit hospital\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">for-profit</a>&nbsp;or nonprofit),&nbsp;<a href=\"https://en.wikipedia.org/wiki/Health_insurance\" title=\"Health insurance\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">health insurance</a>&nbsp;companies, or charities, including direct charitable donations. Historically, hospitals were often founded and funded by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Religious_orders\" class=\"mw-redirect\" title=\"Religious orders\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">religious orders</a>, or by charitable individuals and leaders.<sup id=\"cite_ref-3\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; text-wrap: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hospital#cite_note-3\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">[3]</a></sup></p><p style=\"margin-top: 0.5em; margin-bottom: 0px; padding-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Hospitals are currently staffed by professional physicians, surgeons, nurses, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Allied_health_professions\" title=\"Allied health professions\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">allied health practitioners</a>. In the past, however, this work was usually performed by the members of founding religious orders or by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Volunteering\" title=\"Volunteering\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">volunteers</a>. However, there are various Catholic religious orders, such as the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Alexians\" title=\"Alexians\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">Alexians</a>&nbsp;and the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Bon_Secours_Sisters\" title=\"Bon Secours Sisters\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">Bon Secours Sisters</a>&nbsp;that still focus on hospital ministry in the late 1990s, as well as several other Christian denominations, including the Methodists and Lutherans, which run hospitals.<sup id=\"cite_ref-4\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; text-wrap: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hospital#cite_note-4\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">[4]</a></sup>&nbsp;In accordance with the original meaning of the word, hospitals were original \"places of hospitality\", and this meaning is still preserved in the names of some institutions such as the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Royal_Hospital_Chelsea\" title=\"Royal Hospital Chelsea\" style=\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">Royal Hospital Chelsea</a>, established in 1681 as a retirement and nursing home for veteran soldiers.</p></li></ul>', NULL, NULL, '2020-05-20 07:21:52', NULL),
(2, 'contactus', 'Contact Details', 'Bangalore Rd, Opp To Fathima Church, Krishnagiri - , Andhra Pradesh, India', 'st.louis@gmail.com', 1122334455, '2020-05-20 07:24:07', '24Hr');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 2, 'peter4422@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-16 16:14:58', NULL, 1),
(2, 3, 'test@nomail.com', 0x3a3a3100000000000000000000000000, '2024-07-16 17:01:50', '16-07-2024 10:31:57 PM', 1),
(3, 4, 'bala@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-17 16:04:25', NULL, 1),
(4, 4, 'bala@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-18 11:27:50', NULL, 1),
(5, 1, 'joshva4422@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-18 15:42:53', NULL, 1),
(6, 3, 'test@nomail.com', 0x3a3a3100000000000000000000000000, '2024-07-25 16:10:36', NULL, 1),
(7, 3, 'test@nomail.com', 0x3a3a3100000000000000000000000000, '2024-07-25 16:13:13', NULL, 1),
(8, 3, 'test@nomail.com', 0x3a3a3100000000000000000000000000, '2024-07-25 16:13:22', NULL, 1),
(9, 3, 'test@nomail.com', 0x3a3a3100000000000000000000000000, '2024-07-25 16:13:32', NULL, 1),
(10, 3, 'test@nomail.com', 0x3a3a3100000000000000000000000000, '2024-07-25 16:13:33', NULL, 1),
(11, 3, 'test@nomail.com', 0x3a3a3100000000000000000000000000, '2024-07-25 16:13:33', NULL, 1),
(12, 3, 'test@nomail.com', 0x3a3a3100000000000000000000000000, '2024-07-25 16:13:33', NULL, 1),
(13, 3, 'test@nomail.com', 0x3a3a3100000000000000000000000000, '2024-07-25 16:13:33', NULL, 1),
(14, 3, 'test@nomail.com', 0x3a3a3100000000000000000000000000, '2024-07-25 16:13:33', NULL, 1),
(15, 3, 'test@nomail.com', 0x3a3a3100000000000000000000000000, '2024-07-25 16:13:34', NULL, 1),
(16, 3, 'test@nomail.com', 0x3a3a3100000000000000000000000000, '2024-07-25 16:13:34', NULL, 1),
(17, 3, 'test@nomail.com', 0x3a3a3100000000000000000000000000, '2024-07-25 16:14:13', '25-07-2024 09:44:16 PM', 1),
(18, 3, 'test@nomail.com', 0x3a3a3100000000000000000000000000, '2024-07-25 16:16:45', '25-07-2024 09:46:47 PM', 1),
(19, 3, 'test@nomail.com', 0x3a3a3100000000000000000000000000, '2024-07-25 16:17:35', '25-07-2024 09:47:37 PM', 1),
(20, 3, 'test@nomail.com', 0x3a3a3100000000000000000000000000, '2024-07-25 16:17:53', '25-07-2024 09:47:54 PM', 1),
(21, 3, 'test@nomail.com', 0x3a3a3100000000000000000000000000, '2024-07-25 16:19:16', '25-07-2024 09:49:18 PM', 1),
(22, 3, 'test@nomail.com', 0x3a3a3100000000000000000000000000, '2024-07-25 16:20:52', '25-07-2024 09:50:54 PM', 1),
(23, 3, 'test@nomail.com', 0x3a3a3100000000000000000000000000, '2024-07-25 16:21:28', '25-07-2024 09:51:29 PM', 1),
(24, 3, 'test@nomail.com', 0x3a3a3100000000000000000000000000, '2024-07-25 16:23:02', '25-07-2024 09:53:04 PM', 1),
(25, 3, 'test@nomail.com', 0x3a3a3100000000000000000000000000, '2024-07-25 16:23:39', '25-07-2024 09:53:42 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'Joshva K', 'Vellore', 'Vellore', 'male', 'joshva4422@gmail.com', 'c5dba46c0aead307ec7bf65782720360', '2024-07-16 15:33:38', NULL),
(2, 'Petter K', 'Vellore', 'Vellore', 'male', 'peter4422@gmail.com', '81e3c1956f34ed045008348d9277b389', '2024-07-16 16:14:38', NULL),
(3, 'Test', 'Test-01', 'Vellore', 'male', 'test@nomail.com', '1f3e484ca06139016136e81f758e6977', '2024-07-16 17:01:42', NULL),
(4, 'Bala', 'Madurai', 'Madurai', 'male', 'bala@gmail.com', 'bc295833d6f233096775e80e56ab6680', '2024-07-17 16:04:16', NULL),
(5, 'Petter K', 'Vellore', 'Vellore', 'male', 'joshva4422@gmail.com', 'c5dba46c0aead307ec7bf65782720360', '2024-07-25 15:56:40', NULL),
(6, 'Test', 'Vellore', 'Vellore', 'male', 'test@nomail.com', '1f3e484ca06139016136e81f758e6977', '2024-07-25 16:01:16', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
