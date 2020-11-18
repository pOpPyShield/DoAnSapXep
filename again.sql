-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2020 at 05:28 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `again`
--

-- --------------------------------------------------------

--
-- Table structure for table `activebyannoy`
--

CREATE TABLE `activebyannoy` (
  `idAnoyCheckout` int(10) NOT NULL,
  `idActive` int(10) NOT NULL,
  `idActiveByAnnoy` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `activebyuser`
--

CREATE TABLE `activebyuser` (
  `idActive` int(10) NOT NULL,
  `UserID` int(10) NOT NULL,
  `idActiveByUser` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `activecheckout`
--

CREATE TABLE `activecheckout` (
  `idActive` int(10) NOT NULL,
  `Active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(11) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `idSuperAdmin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `UserName`, `Password`, `email`, `idSuperAdmin`) VALUES
(5, 'asdafas', '$2y$10$M5DaXXhW5R.LFZrZmZejMO.6U8XvlLNFkjy6NIvbtFBF4zMThOJDW', 'huy288@gmail.com', 1),
(6, 'asdasda', '$2y$10$56oIM6NAy/.yK.0jI.rI7O7XIh4TZOV1k//HJMhV4.ROMNB098VWO', 'bqhuy.19it4@vku.udn.vn', 1),
(7, 'asdsadas1123', '$2y$10$z0m6xYcnxkzyE4JjHBrWyOrjqHHNITihin2cKoubXimj/Cfw9JCrK', 'bqhuy.19it4@vku.udn.vn', 1);

-- --------------------------------------------------------

--
-- Table structure for table `annoycheckoutwithout`
--

CREATE TABLE `annoycheckoutwithout` (
  `idAnonyCheckoutWithout` int(10) NOT NULL,
  `idActiveByAnnoy` int(10) NOT NULL,
  `idProductChild` int(10) NOT NULL,
  `Date` date NOT NULL,
  `Status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `anonycheckoutwithcard`
--

CREATE TABLE `anonycheckoutwithcard` (
  `idAnonyCheckOutCard` int(10) NOT NULL,
  `idActiveByAnnoy` int(10) NOT NULL,
  `idProductChild` int(10) NOT NULL,
  `Date` date NOT NULL,
  `Status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `anonymous`
--

CREATE TABLE `anonymous` (
  `AnonymousID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `anonymousecheckout`
--

CREATE TABLE `anonymousecheckout` (
  `idAnoyCheckout` int(10) NOT NULL,
  `idProduct` int(10) NOT NULL,
  `AnonymousID` int(10) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `PhoneNum` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `applydiscount`
--

CREATE TABLE `applydiscount` (
  `idDiscount` int(10) NOT NULL,
  `idProductChild` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `cardNumber` int(100) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `idCheckOut` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `idCat` int(10) NOT NULL,
  `nameCat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categoriesdetail`
--

CREATE TABLE `categoriesdetail` (
  `idCatDes` int(10) NOT NULL,
  `idCat` int(10) NOT NULL,
  `namCatDes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `idCheckOut` int(10) NOT NULL,
  `idProduct` int(10) NOT NULL,
  `idActiveByUser` int(10) NOT NULL,
  `Date` date NOT NULL,
  `Status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `checkoutwithout`
--

CREATE TABLE `checkoutwithout` (
  `idCheckoutWithout` int(10) NOT NULL,
  `idActiveByUser` int(10) NOT NULL,
  `idProductChild` int(10) NOT NULL,
  `Date` date NOT NULL,
  `Status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `idComment` int(10) NOT NULL,
  `idProductChildMoney` int(10) NOT NULL,
  `UserID` int(10) NOT NULL,
  `Star` int(10) NOT NULL,
  `Comment` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `idDelivery` int(10) NOT NULL,
  `idCheckOut` int(10) NOT NULL,
  `idCheckoutWithout` int(10) NOT NULL,
  `idAnonyCheckOutCard` int(10) NOT NULL,
  `idAnonyCheckoutWithout` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `idDiscount` int(10) NOT NULL,
  `Date` int(11) NOT NULL,
  `EndDate` int(11) NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inforsupplier`
--

CREATE TABLE `inforsupplier` (
  `idSup` int(10) NOT NULL,
  `NameSup` varchar(255) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `PhoneNum` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `productchilddetail`
--

CREATE TABLE `productchilddetail` (
  `idProduct` int(10) NOT NULL,
  `idProductChild` int(10) NOT NULL,
  `nameProductChild` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `productchildmoney`
--

CREATE TABLE `productchildmoney` (
  `idProductChildMoney` int(10) NOT NULL,
  `idProductChild` int(10) NOT NULL,
  `idSup` int(10) NOT NULL,
  `img` varchar(255) NOT NULL,
  `money` float NOT NULL,
  `amount` int(10) NOT NULL,
  `Date` date NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `productdetail`
--

CREATE TABLE `productdetail` (
  `idProduct` int(10) NOT NULL,
  `idCatDes` int(10) NOT NULL,
  `nameProduct` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `profileimg`
--

CREATE TABLE `profileimg` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `Type` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profileimg`
--

INSERT INTO `profileimg` (`id`, `userId`, `Name`, `status`, `Type`) VALUES
(1, 6, 'test', 0, 'png'),
(2, 7, 'defaultimg', 1, 'jpg'),
(3, 9, 'defaultimg', 1, 'jpg'),
(4, 10, 'OIP', 0, 'jpg'),
(5, 11, 'defaultimg', 1, 'jpg'),
(6, 12, 'defaultimg', 1, 'jpg'),
(7, 13, 'OIP', 0, 'jpg'),
(8, 14, 'OIP', 0, 'jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pwdreset`
--

CREATE TABLE `pwdreset` (
  `pwdResetID` int(11) NOT NULL,
  `pwdResetEmail` text NOT NULL,
  `pwdResetSelector` text NOT NULL,
  `pwdResetToken` longtext NOT NULL,
  `pwdResetExpire` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `superadmin`
--

CREATE TABLE `superadmin` (
  `UserName` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `idSuperAdmin` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `superadmin`
--

INSERT INTO `superadmin` (`UserName`, `Password`, `idSuperAdmin`) VALUES
('dak', 'dale', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(10) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Address` varchar(1000) NOT NULL,
  `PhoneNum` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `UserName`, `Email`, `Password`, `Address`, `PhoneNum`) VALUES
(6, 'bentntn261120', 'bqhuy.19it4@vku.udn.vn', '$2y$10$FzYTgjlwms0QBOpUT/VU8utloXZED2kANORTU9VVvh6hhcxwqI2HK', '', ''),
(7, 'benkaokao26', 'kendarknight26112001@gmail.com', '$2y$10$KzL46mr/9fbJSOzyJhO/muL8PKC6dm3L/SVXPEZRSZiJe27daVoWy', '', ''),
(9, 'benkaokao2611', 'kendarknight26112001@gmail.com', '$2y$10$SVi5xU.fyUfY/Qnbf6wdsutPENlOCdCATCmtgWTJkCCqOCpveSpmS', '', ''),
(10, 'benkaokao261120', 'kendarknight26112001@gmail.com', '$2y$10$w4kM8Kivt0XgppHwFcaGOuW38goYDXoV5n1SSE3FIP5FTf02UpR/m', '', ''),
(11, 'babagaya99', 'kendarknight26112001@gmail.com', '$2y$10$vJvpT4X.KGwmJUZUNi0Y..rG68SmgUwcyUh.Mrrt1BX/wOMD4NJ4y', '', ''),
(12, 'kankan22112', 'bqhuy.19it4@vku.udn.vn', '$2y$10$yYdsaettaHp0jDlnVEPOD.PUC1XcV6.pe42VxJRt9UNjj6sDwdGdi', '', ''),
(13, 'zxasq1213', 'kendarknight26112001@gmail.com', '$2y$10$DZl6PQKu0YjNBTWotkAWWeMPJvsNzq/UZq9PehJ3SqQGjqbM3pKt6', '', ''),
(14, 'asdasdqq12', 'bqhuy.19it4@vku.udn.vn', '$2y$10$.iii6baZeuOAfBX.0hxpe.vqbc48iKBX8V7tmknSXi3n/5YPCr7ky', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activebyannoy`
--
ALTER TABLE `activebyannoy`
  ADD PRIMARY KEY (`idActiveByAnnoy`),
  ADD KEY `idAnoyCheckout` (`idAnoyCheckout`),
  ADD KEY `idActive` (`idActive`);

--
-- Indexes for table `activebyuser`
--
ALTER TABLE `activebyuser`
  ADD PRIMARY KEY (`idActiveByUser`),
  ADD KEY `idActive` (`idActive`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `activecheckout`
--
ALTER TABLE `activecheckout`
  ADD PRIMARY KEY (`idActive`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`),
  ADD UNIQUE KEY `unique_admin_user` (`UserName`),
  ADD KEY `idSuperAdmin` (`idSuperAdmin`);

--
-- Indexes for table `annoycheckoutwithout`
--
ALTER TABLE `annoycheckoutwithout`
  ADD PRIMARY KEY (`idAnonyCheckoutWithout`),
  ADD KEY `idActiveByAnnoy` (`idActiveByAnnoy`),
  ADD KEY `annoycheckoutwithout_ibfk_2` (`idProductChild`);

--
-- Indexes for table `anonycheckoutwithcard`
--
ALTER TABLE `anonycheckoutwithcard`
  ADD PRIMARY KEY (`idAnonyCheckOutCard`),
  ADD KEY `idActiveByAnnoy` (`idActiveByAnnoy`),
  ADD KEY `anonycheckoutwithcard_ibfk_2` (`idProductChild`);

--
-- Indexes for table `anonymous`
--
ALTER TABLE `anonymous`
  ADD PRIMARY KEY (`AnonymousID`);

--
-- Indexes for table `anonymousecheckout`
--
ALTER TABLE `anonymousecheckout`
  ADD PRIMARY KEY (`idAnoyCheckout`),
  ADD KEY `idProduct` (`idProduct`),
  ADD KEY `AnonymousID` (`AnonymousID`);

--
-- Indexes for table `applydiscount`
--
ALTER TABLE `applydiscount`
  ADD KEY `idDiscount` (`idDiscount`),
  ADD KEY `idProductChild` (`idProductChild`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD KEY `idCheckOut` (`idCheckOut`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`idCat`);

--
-- Indexes for table `categoriesdetail`
--
ALTER TABLE `categoriesdetail`
  ADD PRIMARY KEY (`idCatDes`),
  ADD KEY `idCat` (`idCat`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`idCheckOut`),
  ADD KEY `idProduct` (`idProduct`),
  ADD KEY `idActiveByUser` (`idActiveByUser`);

--
-- Indexes for table `checkoutwithout`
--
ALTER TABLE `checkoutwithout`
  ADD PRIMARY KEY (`idCheckoutWithout`),
  ADD KEY `idActiveByUser` (`idActiveByUser`),
  ADD KEY `idProductChild` (`idProductChild`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`idComment`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `idProductChildMoney` (`idProductChildMoney`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`idDelivery`),
  ADD KEY `idAnonyCheckOutCard` (`idAnonyCheckOutCard`),
  ADD KEY `idAnonyCheckoutWithout` (`idAnonyCheckoutWithout`),
  ADD KEY `idCheckOut` (`idCheckOut`),
  ADD KEY `idCheckoutWithout` (`idCheckoutWithout`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`idDiscount`);

--
-- Indexes for table `inforsupplier`
--
ALTER TABLE `inforsupplier`
  ADD PRIMARY KEY (`idSup`);

--
-- Indexes for table `productchilddetail`
--
ALTER TABLE `productchilddetail`
  ADD PRIMARY KEY (`idProductChild`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Indexes for table `productchildmoney`
--
ALTER TABLE `productchildmoney`
  ADD PRIMARY KEY (`idProductChildMoney`),
  ADD KEY `idProductChild` (`idProductChild`),
  ADD KEY `idSup` (`idSup`);

--
-- Indexes for table `productdetail`
--
ALTER TABLE `productdetail`
  ADD PRIMARY KEY (`idProduct`),
  ADD KEY `idCatDes` (`idCatDes`);

--
-- Indexes for table `profileimg`
--
ALTER TABLE `profileimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pwdreset`
--
ALTER TABLE `pwdreset`
  ADD PRIMARY KEY (`pwdResetID`);

--
-- Indexes for table `superadmin`
--
ALTER TABLE `superadmin`
  ADD PRIMARY KEY (`idSuperAdmin`),
  ADD UNIQUE KEY `UserName` (`UserName`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `unique_user` (`UserName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activebyannoy`
--
ALTER TABLE `activebyannoy`
  MODIFY `idActiveByAnnoy` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activebyuser`
--
ALTER TABLE `activebyuser`
  MODIFY `idActiveByUser` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activecheckout`
--
ALTER TABLE `activecheckout`
  MODIFY `idActive` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `annoycheckoutwithout`
--
ALTER TABLE `annoycheckoutwithout`
  MODIFY `idAnonyCheckoutWithout` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anonycheckoutwithcard`
--
ALTER TABLE `anonycheckoutwithcard`
  MODIFY `idAnonyCheckOutCard` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anonymous`
--
ALTER TABLE `anonymous`
  MODIFY `AnonymousID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anonymousecheckout`
--
ALTER TABLE `anonymousecheckout`
  MODIFY `idAnoyCheckout` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `idCat` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categoriesdetail`
--
ALTER TABLE `categoriesdetail`
  MODIFY `idCatDes` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `idCheckOut` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `checkoutwithout`
--
ALTER TABLE `checkoutwithout`
  MODIFY `idCheckoutWithout` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `idComment` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `idDelivery` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `idDiscount` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inforsupplier`
--
ALTER TABLE `inforsupplier`
  MODIFY `idSup` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productchilddetail`
--
ALTER TABLE `productchilddetail`
  MODIFY `idProductChild` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productchildmoney`
--
ALTER TABLE `productchildmoney`
  MODIFY `idProductChildMoney` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productdetail`
--
ALTER TABLE `productdetail`
  MODIFY `idProduct` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profileimg`
--
ALTER TABLE `profileimg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pwdreset`
--
ALTER TABLE `pwdreset`
  MODIFY `pwdResetID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `superadmin`
--
ALTER TABLE `superadmin`
  MODIFY `idSuperAdmin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activebyannoy`
--
ALTER TABLE `activebyannoy`
  ADD CONSTRAINT `activebyannoy_ibfk_1` FOREIGN KEY (`idAnoyCheckout`) REFERENCES `anonymousecheckout` (`idAnoyCheckout`),
  ADD CONSTRAINT `activebyannoy_ibfk_2` FOREIGN KEY (`idActive`) REFERENCES `activecheckout` (`idActive`);

--
-- Constraints for table `activebyuser`
--
ALTER TABLE `activebyuser`
  ADD CONSTRAINT `activebyuser_ibfk_1` FOREIGN KEY (`idActive`) REFERENCES `activecheckout` (`idActive`),
  ADD CONSTRAINT `activebyuser_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`idSuperAdmin`) REFERENCES `superadmin` (`idSuperAdmin`);

--
-- Constraints for table `annoycheckoutwithout`
--
ALTER TABLE `annoycheckoutwithout`
  ADD CONSTRAINT `annoycheckoutwithout_ibfk_1` FOREIGN KEY (`idActiveByAnnoy`) REFERENCES `activebyannoy` (`idActiveByAnnoy`),
  ADD CONSTRAINT `annoycheckoutwithout_ibfk_2` FOREIGN KEY (`idProductChild`) REFERENCES `productchildmoney` (`idProductChildMoney`);

--
-- Constraints for table `anonycheckoutwithcard`
--
ALTER TABLE `anonycheckoutwithcard`
  ADD CONSTRAINT `anonycheckoutwithcard_ibfk_1` FOREIGN KEY (`idActiveByAnnoy`) REFERENCES `activebyannoy` (`idActiveByAnnoy`),
  ADD CONSTRAINT `anonycheckoutwithcard_ibfk_2` FOREIGN KEY (`idProductChild`) REFERENCES `productchildmoney` (`idProductChildMoney`);

--
-- Constraints for table `anonymousecheckout`
--
ALTER TABLE `anonymousecheckout`
  ADD CONSTRAINT `anonymousecheckout_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `productdetail` (`idProduct`),
  ADD CONSTRAINT `anonymousecheckout_ibfk_2` FOREIGN KEY (`AnonymousID`) REFERENCES `anonymous` (`AnonymousID`);

--
-- Constraints for table `applydiscount`
--
ALTER TABLE `applydiscount`
  ADD CONSTRAINT `applydiscount_ibfk_1` FOREIGN KEY (`idDiscount`) REFERENCES `discount` (`idDiscount`),
  ADD CONSTRAINT `applydiscount_ibfk_2` FOREIGN KEY (`idProductChild`) REFERENCES `productchilddetail` (`idProductChild`);

--
-- Constraints for table `card`
--
ALTER TABLE `card`
  ADD CONSTRAINT `card_ibfk_1` FOREIGN KEY (`idCheckOut`) REFERENCES `checkout` (`idCheckOut`);

--
-- Constraints for table `categoriesdetail`
--
ALTER TABLE `categoriesdetail`
  ADD CONSTRAINT `categoriesdetail_ibfk_1` FOREIGN KEY (`idCat`) REFERENCES `categories` (`idCat`);

--
-- Constraints for table `checkout`
--
ALTER TABLE `checkout`
  ADD CONSTRAINT `checkout_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `productchildmoney` (`idProductChildMoney`),
  ADD CONSTRAINT `checkout_ibfk_2` FOREIGN KEY (`idActiveByUser`) REFERENCES `activebyuser` (`idActiveByUser`);

--
-- Constraints for table `checkoutwithout`
--
ALTER TABLE `checkoutwithout`
  ADD CONSTRAINT `checkoutwithout_ibfk_1` FOREIGN KEY (`idActiveByUser`) REFERENCES `activebyuser` (`idActiveByUser`),
  ADD CONSTRAINT `checkoutwithout_ibfk_2` FOREIGN KEY (`idProductChild`) REFERENCES `productchilddetail` (`idProductChild`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`idProductChildMoney`) REFERENCES `productchildmoney` (`idProductChildMoney`);

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`idAnonyCheckOutCard`) REFERENCES `anonycheckoutwithcard` (`idAnonyCheckOutCard`),
  ADD CONSTRAINT `delivery_ibfk_2` FOREIGN KEY (`idAnonyCheckoutWithout`) REFERENCES `annoycheckoutwithout` (`idAnonyCheckoutWithout`),
  ADD CONSTRAINT `delivery_ibfk_3` FOREIGN KEY (`idCheckOut`) REFERENCES `checkout` (`idCheckOut`),
  ADD CONSTRAINT `delivery_ibfk_4` FOREIGN KEY (`idCheckoutWithout`) REFERENCES `checkoutwithout` (`idCheckoutWithout`);

--
-- Constraints for table `productchilddetail`
--
ALTER TABLE `productchilddetail`
  ADD CONSTRAINT `productchilddetail_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `productdetail` (`idProduct`);

--
-- Constraints for table `productchildmoney`
--
ALTER TABLE `productchildmoney`
  ADD CONSTRAINT `productchildmoney_ibfk_1` FOREIGN KEY (`idProductChild`) REFERENCES `productchilddetail` (`idProductChild`),
  ADD CONSTRAINT `productchildmoney_ibfk_2` FOREIGN KEY (`idSup`) REFERENCES `inforsupplier` (`idSup`);

--
-- Constraints for table `productdetail`
--
ALTER TABLE `productdetail`
  ADD CONSTRAINT `productdetail_ibfk_1` FOREIGN KEY (`idCatDes`) REFERENCES `categoriesdetail` (`idCatDes`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
