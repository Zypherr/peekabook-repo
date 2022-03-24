-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2022 at 02:55 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peekabookdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_authors`
--

CREATE TABLE `tb_authors` (
  `AuthorID` int(10) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Nationality` varchar(30) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `EmailAddress` varchar(100) NOT NULL,
  `TotalBooksPublished` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_authors`
--

INSERT INTO `tb_authors` (`AuthorID`, `FirstName`, `LastName`, `Nationality`, `DateOfBirth`, `EmailAddress`, `TotalBooksPublished`) VALUES
(1, 'Kyle', 'Slater', 'Atlantic', '1994-04-01', 'slater@gmail.com', 30),
(2, 'Jeremy', 'Clark', 'German', '1990-03-16', 'Clark@gmail.com', 2),
(3, 'Dennis', 'Menace', 'South African', '1992-03-16', 'Menace@gmail.com', 2),
(4, 'Yogi', 'Sip', 'Mongolian', '1992-12-13', 'Sip@gmail.com', 2),
(5, 'Mary', 'LittleLamb', 'Namibian', '1994-01-11', 'LittleLamb@gmail.com', 2),
(6, 'Jimbo', 'Jambo', 'South African', '1999-09-26', 'Jambo@gmail.com', 2),
(7, 'Brett', 'Whitebread', 'South African', '1960-02-12', 'Whitebread@gmail.com', 2),
(8, 'Stephen', 'Pretorius', 'South African', '1930-10-19', 'Pretorius@gmail.com', 2),
(9, 'Connor', 'Cryan', 'North Korean', '1912-03-07', 'Cryan@gmail.com', 2),
(10, 'Micheal', 'Raven', 'Namibian', '1978-04-16', 'Raven@gmail.com', 2),
(11, 'Keath', 'Knowles', 'German', '1966-07-17', 'Knowles@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_books`
--

CREATE TABLE `tb_books` (
  `BookID` int(6) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `PublishedYear` year(4) NOT NULL,
  `Genre` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `CoverImageID` int(11) NOT NULL,
  `Pages` int(10) NOT NULL,
  `AuthorID` int(6) NOT NULL,
  `PublisherID` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_books`
--

INSERT INTO `tb_books` (`BookID`, `Title`, `PublishedYear`, `Genre`, `Description`, `CoverImageID`, `Pages`, `AuthorID`, `PublisherID`) VALUES
(1, 'The Butcher and the Wren', 2007, 'Crime', 'From the host of chart-topping true crime podcast Morbid, a thrilling debut novel told from the dueling perspectives of a notorious serial killer and the medical examiner following where his trail of victims leads', 1, 243, 2, 1),
(2, 'Neon Gods', 2000, 'Horror', 'With no options left, Persephone flees to the forbidden undercity and makes a devils bargain with a man she once believed a myth...a man who awakens her to a world she never knew existed', 2, 290, 2, 1),
(3, 'Where the Crawdads Sing\r\n', 2002, 'Crime', 'A painfully beautiful first novel that is at once a murder mystery, a coming-of-age narrative and a celebration of natur', 3, 654, 2, 2),
(4, 'The Whole Body Reset', 2015, 'Fitness', 'Stop—and even reverse!—age-related weight gain and muscle loss with the first-ever weight-loss plan specifically designed to shrink your belly, extend your life, and create your healthiest self at mid-life and beyond.', 4, 125, 3, 2),
(5, 'The Great Reset', 2020, 'Political', 'An international conspiracy between powerful bankers, business leaders, and government officials; closed-door meetings in the Swiss Alps; and calls for a radical transformation of every society on earth', 5, 542, 4, 3),
(6, 'Chainsaw Man', 2008, 'Horror', 'Denji was a small-time devil hunter just trying to survive a harsh world. After being killed on a job, Denji is revived by his pet devil-dog Pochita and becomes something new and dangerous—Chainsaw Man!', 6, 232, 5, 1),
(7, 'Jujutsu Kaisen', 2012, 'Horror', 'To gain the power he needs to save his friend from a cursed spirit, Yuji Itadori swallows a piece of a demon, only to find himself caught in the midst of a horrific war of the supernatural!', 7, 442, 6, 3),
(8, 'Run, Rose, Run', 2015, 'Thriller', 'a thriller about a young singer-songwriter on the rise and on the run, and determined to do whatever it takes to survive.', 8, 453, 7, 3),
(9, 'It Ends with Us\r\n', 2022, 'Romance', 'Lily hasn’t always had it easy, but that’s never stopped her from working hard for the life she wants. She’s come a long way from the small town where she grew up—she graduated from college, moved to Boston, and started her own busines', 9, 255, 8, 2),
(10, 'Waypoints', 2001, 'Biography', 'Journey deep into the Highlands in the first memoir by #1 New York Times bestselling author and star of Outlander Sam Heughan – exploring his life and reflecting on the waypoints that define him', 10, 543, 9, 3),
(11, 'A Sunlit Weapon', 1992, 'History', 'October 1942. A true story about Jo Hardy, a 22-year-old ferry pilot, is delivering a Supermarine Spitfire—the fastest fighter aircraft in the world—to Biggin Hill Aerodrome, when she realizes someone is shooting at her aircraft from the ground', 11, 764, 10, 2),
(12, 'Verity', 2005, 'Thriller', 'Whose truth is the lie? Stay up all night reading the sensational psychological thriller that has readers obsessed, from the #1 New York Times bestselling author of It Ends With Us.', 12, 532, 11, 1),
(13, 'It Happened One Summer', 2004, 'Romance', 'Blessa Bailey is back with a Schitt’s Creek-inspired rom-com about a Hollywood “It Girl” who’s cut off from her wealthy family and exiled to a small Pacific Northwest beach town... where she butts heads with a surly, sexy local who thinks she doesn’t belong. ', 13, 431, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tb_publishers`
--

CREATE TABLE `tb_publishers` (
  `PublisherID` int(6) NOT NULL,
  `CompanyName` varchar(100) NOT NULL,
  `TotalBooksPublished` int(11) NOT NULL,
  `Website` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_publishers`
--

INSERT INTO `tb_publishers` (`PublisherID`, `CompanyName`, `TotalBooksPublished`, `Website`) VALUES
(1, 'Reuters publishing', 4, 'https://www.reutersagency.com/'),
(2, 'Publishers Association', 4, 'https://publishsa.co.za/'),
(3, 'Penguin House', 4, 'https://www.penguinrandomhouse.co.za/'),
(4, 'NB Publishers', 1, 'https://www.nb.co.za/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_authors`
--
ALTER TABLE `tb_authors`
  ADD PRIMARY KEY (`AuthorID`);

--
-- Indexes for table `tb_books`
--
ALTER TABLE `tb_books`
  ADD PRIMARY KEY (`BookID`);

--
-- Indexes for table `tb_publishers`
--
ALTER TABLE `tb_publishers`
  ADD PRIMARY KEY (`PublisherID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_authors`
--
ALTER TABLE `tb_authors`
  MODIFY `AuthorID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_books`
--
ALTER TABLE `tb_books`
  MODIFY `BookID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_publishers`
--
ALTER TABLE `tb_publishers`
  MODIFY `PublisherID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
