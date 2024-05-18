-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2024 at 03:42 PM
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
-- Database: `ewmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8989898989, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-01-10 08:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(11) NOT NULL,
  `CategoryName` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(1, 'Camera', '2024-01-17 12:34:01'),
(2, 'Television', '2024-01-17 12:35:10'),
(3, 'Refigerator', '2024-01-17 12:35:59'),
(4, 'Batteries', '2024-01-17 12:36:16'),
(5, 'Smartphones', '2024-01-17 12:36:26'),
(6, 'Other', '2024-01-17 12:43:35'),
(9, 'Laptop', '2024-02-06 14:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblcity`
--

CREATE TABLE `tblcity` (
  `ID` int(10) NOT NULL,
  `StateID` int(10) DEFAULT NULL,
  `City` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcity`
--

INSERT INTO `tblcity` (`ID`, `StateID`, `City`, `CreationDate`) VALUES
(3, 3, 'Allahabad', '2024-01-15 08:41:08'),
(4, 3, 'Aligarh', '2024-01-15 08:41:08'),
(5, 3, 'Lucknow', '2024-01-15 08:41:08'),
(6, 2, 'Jaipur', '2024-01-15 08:41:08'),
(7, 8, 'Gangtok', '2024-01-15 08:41:08'),
(8, 8, 'Peeling', '2024-01-15 08:41:08'),
(9, 8, 'Namchi', '2024-01-15 08:41:08'),
(10, 8, 'Ravangla', '2024-01-15 08:41:08'),
(11, 8, 'Mangan', '2024-01-15 08:41:08'),
(12, 2, 'Bhopal', '2024-01-15 08:41:08'),
(13, 2, 'Indore', '2024-01-15 08:41:08'),
(14, 2, 'Indore', '2024-01-15 08:41:08'),
(15, 11, 'Chennai', '2024-01-15 08:41:08'),
(16, 4, 'Visakhapatnam', '2024-01-15 08:41:08'),
(17, 3, 'Noida', '2024-01-15 08:41:08'),
(18, 12, 'Amritsar', '2024-01-15 08:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `FirstName`, `LastName`, `Email`, `Phone`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(1, 'Manu', 'Sharma', 'manu@gmail.com', 9879879879, 'Tell me fee of play school', '2024-01-20 02:53:55', 1),
(2, 'Anuj', 'Kumar', 'ak@gmail.com', 1234567890, 'test', '2024-01-20 02:53:55', 1),
(3, 'Devyansh', 'Rai', 'dev@gmail.com', 7977897978, 'yuiyuiyuiueyfiurbyv', '2024-01-20 02:53:55', NULL),
(4, 'Test', 'Tes', 'ddshg@gmail.com', 1234567789, 'dsafsd', '2024-01-20 02:53:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee`
--

CREATE TABLE `tblemployee` (
  `ID` int(10) NOT NULL,
  `EmployeeID` varchar(250) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `ContactNumber` bigint(20) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `JoiningDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblemployee`
--

INSERT INTO `tblemployee` (`ID`, `EmployeeID`, `Name`, `Email`, `ContactNumber`, `Address`, `Password`, `Status`, `JoiningDate`) VALUES
(1, 'Emp101', 'Rajat', 'rajat@gmail.com', 7987979798, '', '202cb962ac59075b964b07152d234b70', 'Active', '2024-01-23 12:48:20'),
(2, 'Emp102', 'Shanu Mishra', 'shanu@gmail.com', 8978979879, 'J-890, MHU, Near Laxmi Nagar', '202cb962ac59075b964b07152d234b70', 'Active', '2024-01-23 12:49:14'),
(3, 'Emp103', 'Manav', 'manav@gmail.com', 4654654646, 'K-809, ghggjhghj,koioiyiuy', '202cb962ac59075b964b07152d234b70', 'Active', '2024-01-23 12:50:48'),
(4, '10806121', 'Amit kumar', 'amik12@gmail.com', 1414253621, 'New Delhi India', 'f925916e2754e5e03f75dd58a5733251', 'Active', '2024-02-06 14:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `ID` int(11) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '                                <div style=\"text-align: center;\"><b><font size=\"6\">Welcome to Electronic Waste System</font></b></div><div style=\"text-align: left;\"><br></div><div style=\"text-align: left;\"><p class=\"bodytext\" style=\"margin-bottom: 10px; color: rgb(33, 37, 41); line-height: 1.5; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-weight: 700;\">Electronic waste&nbsp;</span>refers to the decrease in the quantity or quality of food resulting from decisions and actions by retailers, food service providers and consumers. &nbsp;Food is wasted in many ways:</p><ul style=\"margin-bottom: 10px; padding-left: 1.5em; color: rgb(33, 37, 41); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><li style=\"margin-bottom: 6px; position: relative; padding-right: 15px; line-height: 1.5;\">Fresh produce that deviates from what is considered optimal, for example in terms of shape, size and color, is often removed from the supply chain during sorting operations.</li><li style=\"margin-bottom: 6px; position: relative; padding-right: 15px; line-height: 1.5;\">Foods that are close to, at or beyond the â€œbest-beforeâ€ date are often discarded by retailers and consumers.</li><li style=\"margin-bottom: 6px; position: relative; padding-right: 15px; line-height: 1.5;\">Large quantities of wholesome edible food are often unused or left over and discarded from household kitchens and eating establishments.</li></ul><p class=\"bodytext\" style=\"margin-bottom: 10px; color: rgb(33, 37, 41); line-height: 1.5; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Less food loss and waste would lead to more efficient land use and better water resource management with positive impacts on climate change and livelihoods.</p></div>', '2024-01-17 11:48:27'),
(2, 'contactus', 'Contact Us', '<b>Electronic Waste System</b><div><b>Contact Number:</b>+91-96784532145</div><div><b>email: </b>info@gmail.com</div><div><b>Address : </b>XYZ street ABC</div>', '2024-01-17 11:49:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `ProductId` int(10) DEFAULT NULL,
  `CategoryID` int(10) DEFAULT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ModelorType` varchar(255) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `ExpectedPrice` decimal(10,0) DEFAULT NULL,
  `PickupDate` date DEFAULT NULL,
  `PickupAddress` mediumtext DEFAULT NULL,
  `StateName` varchar(255) DEFAULT NULL,
  `CityName` varchar(255) DEFAULT NULL,
  `ContactPerson` varchar(255) DEFAULT NULL,
  `CPMobNumber` bigint(20) DEFAULT NULL,
  `Image1` varchar(255) DEFAULT NULL,
  `Image2` varchar(255) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `AssignTo` varchar(250) DEFAULT NULL,
  `ValuedAmount` decimal(10,0) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`ID`, `UserID`, `ProductId`, `CategoryID`, `ProductName`, `ModelorType`, `Description`, `ExpectedPrice`, `PickupDate`, `PickupAddress`, `StateName`, `CityName`, `ContactPerson`, `CPMobNumber`, `Image1`, `Image2`, `CreationDate`, `Remark`, `Status`, `AssignTo`, `ValuedAmount`, `UpdationDate`) VALUES
(1, 6, 438223955, 1, 'EOS 1500D 24.1 Digital SLR Camera (Black) with EF S18-55 is II Lens', 'EOS 1500D', 'Brand	Canon\r\nModel Name	EOS 1500D\r\nMaximum Webcam Image Resolution	24.1 MP\r\nPhoto Sensor Size	APS-C\r\nImage Stabilisation	Optical\r\nMaximum Shutter Speed	767011 Seconds\r\nMinimum Shutter Speed	30 Seconds\r\nMetering Description	Evaluative::Partial::Center Weighted\r\nExposure Control Type	Automatic\r\nForm Factor	DSLR\r\n\r\nAbout this item\r\nSensor: APS-C CMOS Sensor with 24.1 MP (high resolution for large prints and image cropping). Transmission frequency (central frequency):Frequency: 2 412 to 2 462MHz. Standard diopter :-2.5 - +0.5m-1 (dpt);ISO: 100-12800 sensitivity range (critical for obtaining grain-free pictures, especially in low light)\r\nImage Processor: DIGIC 4+ with 9 autofocus points (important for speed and accuracy of autofocus and burst photography);Video Resolution: Full HD video with fully manual control and selectable frame rates (great for precision and high-quality video work)\r\nConnectivity: WiFi, NFC and Bluetooth built-in (useful for remotely controlling your camera and transferring pictures wirelessly as you shoot)\r\nLens Mount: EF-S mount compatible with all EF and EF-S lenses (crop-sensor mount versatile and compact, especially when used with EF-S lenses); Country of Origin: Taiwan\r\nCompatible Mountings: Universal Tripod Mount; Photo Sensor Technology: CMOS', 25000, '2024-01-27', 'O-908, GHU, Block-7', 'Uttar Pradesh', 'Allahabad', 'Himanshu', 8779879879, 'cadd8775748a3ab96de93c876b6d86e8.jpg', '16393571cd425dd4eca1d1cb4900724c.jpg', '2024-01-19 12:21:16', 'Recycled', 'Recycled', 'Emp101', 20000, '2024-01-30 06:09:22'),
(2, 2, 993492200, 3, 'LG 185 L 5 Star Inverter Direct-Cool Single Door Refrigerator', 'NA', 'About this item\r\n1. Direct Cool Refrigerator: Economical and stylish Single Door Refrigerators for fast cooling that can last longer\r\n2. Capacity 185 liters: Suitable for families with 3 to 4 members and bachelors| Freezer capacity: 16L, Fresh food capacity: 169L\r\n3.Energy Rating: 5 Star - Best in class efficiency', 10000, '2024-01-20', 'J-900, LIG Apartment', '', 'Allahabad', 'Ridhima Singh', 9879798789, '756a9560a532bea7aefd8448dbd55219.jpg', '0fc492693eed1d6b67c26858f3f2dc26.jpg', '2024-01-19 12:40:10', 'Recycled', 'Recycled', 'Emp101', 0, '2024-01-30 05:46:37'),
(3, 5, 980856692, 3, 'Samsung 256 L, 3 Star, Convertible, Digital Inverter, with Display Frost Free Double Door Refrigerator', 'RT30C3733BX', 'About this item\r\nFrost Free Refrigerator: Auto Defrost with powerful cooling and long lasting freshness and performance. Manage your flexible storage needs with different convertible modes\r\nCapacity 256 liters: Suitable for families with 2 to 3 members\r\nEnergy Rating : 3 Star Energy Efficiency\r\nManufacturer Warranty : The product comes with a 1 year comprehensive warranty and a 20 years warranty on the digital inverter compressor\r\nDigital Inverter Compressor provides greater energy efficiency, less noise and long-lasting performance while consuming 50% less power, backed up by 20 year warranty\r\nInterior Description : Fresh Food Capacity : 203 Ltr | Freezer Capacity : 53 Ltr | Total no. of compartments : 2 | Shelves : 3 | Vegetable Drawers : 1 | Shelf Type : Toughened Glass Shelves | Anti Bacterial Gasket |\r\nSpecial Features : Convertible | Digital Display | Power Cool | Coolpack | Easy Slide Shelf | All Round Cooling', 15000, '2024-01-28', 'J-900, MIG Apartment', '', 'Visakhapatnam', 'Rekha', 6465465456, '46b19321b63d89e6c60091995214cc48.jpg', '8e40a1f22cd49ae2295e9ba7c96b4600.jpg', '2024-01-19 12:43:11', 'Recycled', 'Recycled', 'Emp101', 0, '2024-01-30 06:01:12'),
(4, 3, 480856692, 3, 'Samsung 256 L, 3 Star, Convertible, Digital Inverter, with Display Frost Free Double Door Refrigerator', 'RT30C3733BX', 'About this item\r\nFrost Free Refrigerator: Auto Defrost with powerful cooling and long lasting freshness and performance. Manage your flexible storage needs with different convertible modes\r\nCapacity 256 liters: Suitable for families with 2 to 3 members\r\nEnergy Rating : 3 Star Energy Efficiency\r\nManufacturer Warranty : The product comes with a 1 year comprehensive warranty and a 20 years warranty on the digital inverter compressor\r\nDigital Inverter Compressor provides greater energy efficiency, less noise and long-lasting performance while consuming 50% less power, backed up by 20 year warranty\r\nInterior Description : Fresh Food Capacity : 203 Ltr | Freezer Capacity : 53 Ltr | Total no. of compartments : 2 | Shelves : 3 | Vegetable Drawers : 1 | Shelf Type : Toughened Glass Shelves | Anti Bacterial Gasket |\r\nSpecial Features : Convertible | Digital Display | Power Cool | Coolpack | Easy Slide Shelf | All Round Cooling', 15000, '2024-01-28', 'J-900, MIG Apartment', '', 'Visakhapatnam', 'Rekha', 6465465456, '46b19321b63d89e6c60091995214cc48.jpg', '8e40a1f22cd49ae2295e9ba7c96b4600.jpg', '2024-01-19 12:43:11', 'product collected', 'Collected', 'Emp102', 12000, '2024-01-30 06:55:59'),
(5, 4, 883492200, 3, 'LG 185 L 5 Star Inverter Direct-Cool Single Door Refrigerator', 'NA', 'About this item\r\n1. Direct Cool Refrigerator: Economical and stylish Single Door Refrigerators for fast cooling that can last longer\r\n2. Capacity 185 liters: Suitable for families with 3 to 4 members and bachelors| Freezer capacity: 16L, Fresh food capacity: 169L\r\n3.Energy Rating: 5 Star - Best in class efficiency', 10000, '2024-01-20', 'J-900, LIG Apartment', '', 'Allahabad', 'Ridhima Singh', 9879798789, '756a9560a532bea7aefd8448dbd55219.jpg', '0fc492693eed1d6b67c26858f3f2dc26.jpg', '2024-01-19 12:40:10', 'Urgent do the needfull', 'Assigned', 'Emp102', NULL, '2024-01-31 07:29:42'),
(6, 6, 773492200, 6, 'LG 185 L 5 Star Inverter Direct-Cool Single Door Refrigerator', 'NA', 'About this item\r\n1. Direct Cool Refrigerator: Economical and stylish Single Door Refrigerators for fast cooling that can last longer\r\n2. Capacity 185 liters: Suitable for families with 3 to 4 members and bachelors| Freezer capacity: 16L, Fresh food capacity: 169L\r\n3.Energy Rating: 5 Star - Best in class efficiency', 10000, '2024-01-20', 'O-908, GHU, Block-7', 'Uttar Pradesh', 'Allahabad', 'Ridhima Singh', 9879798789, '563b6b2233c73e9fd6b1474df7571ab4.jpg', '1c842ccccc3f0ac2b216f7d8861dac99.jpg', '2024-01-19 12:40:10', NULL, NULL, NULL, NULL, '2024-01-30 05:29:59'),
(7, 2, 138223955, 1, 'EOS 1500D 24.1 Digital SLR Camera (Black) with EF S18-55 is II Lens', 'EOS 1500D', '\r\nBrand	Canon\r\nModel Name	EOS 1500D\r\nMaximum Webcam Image Resolution	24.1 MP\r\nPhoto Sensor Size	APS-C\r\nImage Stabilisation	Optical\r\nMaximum Shutter Speed	767011 Seconds\r\nMinimum Shutter Speed	30 Seconds\r\nMetering Description	Evaluative::Partial::Center Weighted\r\nExposure Control Type	Automatic\r\nForm Factor	DSLR\r\n\r\nAbout this item\r\nSensor: APS-C CMOS Sensor with 24.1 MP (high resolution for large prints and image cropping). Transmission frequency (central frequency):Frequency: 2 412 to 2 462MHz. Standard diopter :-2.5 - +0.5m-1 (dpt);ISO: 100-12800 sensitivity range (critical for obtaining grain-free pictures, especially in low light)\r\nImage Processor: DIGIC 4+ with 9 autofocus points (important for speed and accuracy of autofocus and burst photography);Video Resolution: Full HD video with fully manual control and selectable frame rates (great for precision and high-quality video work)\r\nConnectivity: WiFi, NFC and Bluetooth built-in (useful for remotely controlling your camera and transferring pictures wirelessly as you shoot)\r\nLens Mount: EF-S mount compatible with all EF and EF-S lenses (crop-sensor mount versatile and compact, especially when used with EF-S lenses); Country of Origin: Taiwan\r\nCompatible Mountings: Universal Tripod Mount; Photo Sensor Technology: CMOS', 25000, '2024-01-27', 'O-908, GHU, Block-7', '', 'Allahabad', 'Himanshu', 8779879879, 'c6eab181c8bdd32d8c31a4b44084912b.jpg', 'ab6bad77d0e3cca9c712d310015e17dc.jpg', '2024-01-19 12:21:16', NULL, NULL, NULL, NULL, '2024-01-30 05:30:12'),
(8, 6, 517481491, 5, 'Samsung Galaxy S24 Ultra 5G', 'Samsung Galaxy S24 Ultra 5G', 'About this item\r\n1. Meet Galaxy S24 Ultra, the ultimate form of Galaxy Ultra with a new titanium exterior and a 17.25cm\r\n2. The legacy of Galaxy Note is alive and well. Write, tap and navigate with precision your fingers wish they had on the new, flat display.\r\n3. A new way to search is here with Circle to Search. While scrolling your fav social network, use your S Pen or finger to circle something and get Google Search results.', 90000, '2024-01-20', 'O-908, GHU, Block-7', 'Uttar Pradesh', 'Allahabad', 'Himanshu', 6464646464, '99348334311d88459d33386831b9fccb.jpg', '99348334311d88459d33386831b9fccb.jpg', '2024-01-19 13:18:38', NULL, NULL, NULL, NULL, '2024-01-30 05:03:55'),
(9, 8, 381915871, 9, 'Lenovo T400', 'T400', 'Core2 Duo P8400 2.26GHz CPU\r\n4GB memory\r\n160GB disk\r\nWired Gigabit and wireless AGN networking\r\nBluetooth\r\nDVD RW drive\r\nDocking station: 4 USB ports, DVI & VGA video', 120000, '2024-02-15', 'A 123 XYZ Apartment ', 'Uttar Pradesh', 'Allahabad', 'Anuj', 1231231230, 'c5b668c61111cf8a5ae8ea1efa308c1djpeg', 'c5b668c61111cf8a5ae8ea1efa308c1djpeg', '2024-02-06 14:12:49', 'Product recycled successfully ', 'Recycled', '10806121', 100000, '2024-02-06 14:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblstate`
--

CREATE TABLE `tblstate` (
  `ID` int(10) NOT NULL,
  `StateName` varchar(120) DEFAULT NULL,
  `RegState` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstate`
--

INSERT INTO `tblstate` (`ID`, `StateName`, `RegState`) VALUES
(3, 'Uttar Pradesh', '2024-01-14 07:07:21'),
(4, 'Andra Pradesh', '2024-01-14 07:07:21'),
(5, 'Delhi/NCR', '2024-01-14 07:07:21'),
(6, 'Kerala', '2024-01-14 07:07:21'),
(7, 'Arunachal Pradesh', '2024-01-14 07:07:21'),
(8, 'Sikkim', '2024-01-14 07:07:21'),
(9, 'Maharastra', '2024-01-14 07:07:21'),
(10, 'Gujrat', '2024-01-14 07:07:21'),
(11, 'Tamilnadu', '2024-01-14 07:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbltrackinghistory`
--

CREATE TABLE `tbltrackinghistory` (
  `ID` int(10) NOT NULL,
  `ProductID` int(10) DEFAULT NULL,
  `EmployeeID` varchar(250) DEFAULT NULL,
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltrackinghistory`
--

INSERT INTO `tbltrackinghistory` (`ID`, `ProductID`, `EmployeeID`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 438223955, 'Emp101', 'Product has collected', 'Collected', '2024-01-30 05:31:42'),
(2, 993492200, 'Emp101', 'Assigned', 'Assigned', '2024-01-30 05:32:08'),
(3, 980856692, 'Emp101', 'Assigned', 'Assigned', '2024-01-30 05:32:22'),
(4, 993492200, 'Emp101', 'Product has collected', 'Collected', '2024-01-30 05:42:15'),
(5, 993492200, 'Emp101', 'sent for recycle', 'Sent For Recycle', '2024-01-30 05:45:17'),
(6, 993492200, 'Emp101', 'Sent for recycle', 'Sent For Recycle', '2024-01-30 05:46:07'),
(7, 993492200, 'Emp101', 'Recycled', 'Recycled', '2024-01-30 05:46:37'),
(8, 980856692, 'Emp101', 'Product Collected', 'Collected', '2024-01-30 06:00:21'),
(9, 980856692, 'Emp101', 'Sent For Recycle', 'Sent For Recycle', '2024-01-30 06:00:55'),
(10, 980856692, 'Emp101', 'Recycled', 'Recycled', '2024-01-30 06:01:12'),
(11, 438223955, 'Emp101', 'hkjhkj', 'Sent For Recycle', '2024-01-30 06:08:30'),
(12, 438223955, 'Emp101', 'Recycled', 'Recycled', '2024-01-30 06:09:22'),
(13, 480856692, 'Emp102', 'Do the Needfull', 'Assigned', '2024-01-30 06:43:11'),
(14, 480856692, 'Emp102', 'product collected', 'Collected', '2024-01-30 06:55:59'),
(15, 883492200, 'Emp102', 'Urgent do the needfull', 'Assigned', '2024-01-31 07:29:42'),
(16, 381915871, '10806121', 'collect the product', 'Assigned', '2024-02-06 14:13:18'),
(17, 381915871, '10806121', 'Product Collected', 'Collected', '2024-02-06 14:14:06'),
(18, 381915871, '10806121', 'Sent for recycling', 'Sent For Recycle', '2024-02-06 14:14:26'),
(19, 381915871, '10806121', 'Product recycled successfully ', 'Recycled', '2024-02-06 14:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(1, 'Rahul Singh', 'guru@gmail.com', 9898989898, '202cb962ac59075b964b07152d234b70', '2024-01-10 05:12:21'),
(2, 'Khusbu', 'hj@gmail.com', 8989898988, '202cb962ac59075b964b07152d234b70', '2024-01-10 05:12:21'),
(3, 'John Doe', 'johndoe@gmail.com', 1234567890, 'f925916e2754e5e03f75dd58a5733251', '2024-01-10 05:12:21'),
(4, 'Anuj Kumar', 'anuj@gmail.com', 4877799797, '202cb962ac59075b964b07152d234b70', '2024-01-10 05:12:21'),
(5, 'Rahul kumar Singh', 'rahul@gmail.com', 1236547899, 'f925916e2754e5e03f75dd58a5733251', '2024-01-10 05:12:21'),
(6, 'Meher', 'meher@gmail.com', 7878797979, 'f925916e2754e5e03f75dd58a5733251', '2024-01-10 05:12:21'),
(7, 'Abir Rajwansh', 'abir@gmail.com', 8979878978, '202cb962ac59075b964b07152d234b70', '2024-01-10 05:12:21'),
(8, 'John Doe', 'jhn@gmail.com', 1233321012, 'f925916e2754e5e03f75dd58a5733251', '2024-02-06 14:10:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcity`
--
ALTER TABLE `tblcity`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblemployee`
--
ALTER TABLE `tblemployee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstate`
--
ALTER TABLE `tblstate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbltrackinghistory`
--
ALTER TABLE `tbltrackinghistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcity`
--
ALTER TABLE `tblcity`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblemployee`
--
ALTER TABLE `tblemployee`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblstate`
--
ALTER TABLE `tblstate`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbltrackinghistory`
--
ALTER TABLE `tbltrackinghistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
