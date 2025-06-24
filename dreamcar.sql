-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2024 at 06:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dreamcar`
--

-- --------------------------------------------------------

--
-- Table structure for table `carbooking`
--

CREATE TABLE `carbooking` (
  `booking_id` int(255) NOT NULL,
  `customer_id` int(255) NOT NULL,
  `car_id` int(255) NOT NULL,
  `car_color` varchar(700) NOT NULL,
  `car_delivery_address` varchar(1000) NOT NULL,
  `cust_id_proof_img` varchar(1000) NOT NULL,
  `created_on` date NOT NULL,
  `modify_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carbooking`
--

INSERT INTO `carbooking` (`booking_id`, `customer_id`, `car_id`, `car_color`, `car_delivery_address`, `cust_id_proof_img`, `created_on`, `modify_on`) VALUES
(4, 12, 9, 'White', 'Kachhiyawad, Devni-Sher, Godhra 389001', 'IMG_1435.jpg', '2024-03-14', '2024-03-14'),
(5, 15, 8, 'Black', 'Anand,', 'Snapchat-1907907996.jpg', '2024-03-20', '2024-03-20'),
(11, 11, 11, 'White', 'Jamnagar ', 'mayur.jpg', '2024-03-21', '2024-03-26');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_id` int(255) NOT NULL,
  `com_id` int(255) NOT NULL,
  `car_name` varchar(800) NOT NULL,
  `car_img` varchar(1000) NOT NULL,
  `car_price` varchar(255) NOT NULL,
  `car_desc` varchar(10000) NOT NULL,
  `car_model` varchar(500) NOT NULL,
  `car_fuel_type` varchar(500) NOT NULL,
  `car_engine_size` varchar(1000) NOT NULL,
  `car_power` varchar(500) NOT NULL,
  `car_total_seats` int(255) NOT NULL,
  `car_mileage` varchar(1000) NOT NULL,
  `car_color` varchar(700) NOT NULL,
  `car_isAutomatic` tinyint(1) NOT NULL,
  `car_total_doors` int(255) NOT NULL,
  `created_on` date NOT NULL,
  `modify_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `com_id`, `car_name`, `car_img`, `car_price`, `car_desc`, `car_model`, `car_fuel_type`, `car_engine_size`, `car_power`, `car_total_seats`, `car_mileage`, `car_color`, `car_isAutomatic`, `car_total_doors`, `created_on`, `modify_on`) VALUES
(7, 5, 'BMW m5', 'bmw-m5.jpg', '1700000', 'Massive V-10 engine under the hood, the E60 M5 produced some mind-boggling power figures', 'm5', 'Petrol', 'v10', '600hp', 4, '9km', 'White', 0, 4, '2024-03-14', '2024-03-14'),
(8, 9, 'Mercedes G-wagon Class', 'g-wagon.jpg', '25000000', '400 kW of power, six driven wheels, off-road reduction in the transfer case, portal axles', 'G-class', 'Petrol', 'v12', '576hp', 5, '9km', 'Black', 0, 5, '2024-03-14', '2024-03-14'),
(9, 7, 'Porsche 911', '2019-Porsche-911-Carrera-.jpg', '42600000', 'The make takes its name from world-famous designer Ferdinand Porsche.', 'GT', 'Petrol', '6v', '572hp', 2, '7km', 'White', 0, 2, '2024-03-14', '2024-03-14'),
(10, 10, 'Toyota Supra', 'supraa.jpeg', '8500000', 'A turbocharged B48 2.0-litre inline-four or a turbocharged B58 3.0-litre inline-six', 'Mk4', 'Petrol', 'v12', '1000hp', 2, '13km', 'Black', 0, 2, '2024-03-14', '2024-03-14'),
(11, 8, 'Land Rover Range Rover ', '2020-land-rover-range-rover-evoque-exterior.jpg', '9300000', '4x4 luxury SUV produced by Land Rover, High-end features, such as leather seats, advanced infotainment systems, and a smooth ride.', 'Range Rover Sport', 'Diesel', 'v6', '394hp', 4, '10km', 'Black', 1, 4, '2024-03-14', '2024-03-19'),
(12, 11, 'Mahindra Scorpio N', 'scorpion.jpg', '3500000', 'Be a rugged, reliable, and affordable off-road vehicle that could handle the rough terrain found in many parts of India.', '4x4 2022', 'Diesel', '2184cc', '150hp', 4, '10km', 'Black', 0, 4, '2024-03-15', '2024-03-15');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `com_id` int(255) NOT NULL,
  `com_name` varchar(1000) NOT NULL,
  `com_logo` varchar(500) NOT NULL,
  `com_phone` varchar(15) NOT NULL,
  `com_address` varchar(1000) NOT NULL,
  `com_email` varchar(500) NOT NULL,
  `created_on` date NOT NULL,
  `modify_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`com_id`, `com_name`, `com_logo`, `com_phone`, `com_address`, `com_email`, `created_on`, `modify_on`) VALUES
(4, 'Ford', 'br15.jpg', '9764546482', 'Anand', 'dreamcar@gmail.com', '2024-03-13', '2024-03-15'),
(5, 'bmw', 'br1.png', '123456789', 'Nadiad', 'dreamcar@gmail.com', '2024-03-13', '2024-03-13'),
(6, 'lamborghini', 'br8.png', '123123123', 'anand', 'dreamcar@gmail.com', '2024-03-13', '2024-03-13'),
(7, 'Porsche', 'porche.jpeg', '9012615372', 'Anand', 'porsche@gmail.com', '2024-03-14', '2024-03-14'),
(8, 'Land Rover', 'br6.png', '9624237645', 'Anand', 'landrover@gmail.com', '2024-03-14', '2024-03-14'),
(9, 'Mercedes ', 'br4.png', '9637357245', 'Ahmedabad', 'dreamcar@gmail.com', '2024-03-14', '2024-03-14'),
(10, 'Toyota', 'br7.png', '9367454774', 'Nadiad', 'dreamcar@gmail.com', '2024-03-14', '2024-03-14'),
(11, 'Mahindra   ', 'br9.png', '2374662752', 'Anand', 'dreamcar@gmail.com', '2024-03-15', '2024-03-15'),
(12, 'Nisaan', 'br16.png', '9937457427', 'Ahmedabad ', 'dreamcar@gmail.com', '2024-03-20', '2024-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(255) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `city` varchar(200) NOT NULL,
  `usernm` varchar(250) DEFAULT NULL,
  `passwd` varchar(500) DEFAULT NULL,
  `created_on` date NOT NULL,
  `modify_on` date NOT NULL,
  `address` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `email`, `phone`, `city`, `usernm`, `passwd`, `created_on`, `modify_on`, `address`) VALUES
(11, 'yash', 'yash@gmail.com', '1232355536', 'nadiad', 'yash', 'yash', '2024-03-13', '2024-03-13', 'nadiad'),
(12, 'Ved Patel', 'ved@gmail.com', '937465764', 'Godhra', 'Ved', 'vedpatel', '2024-03-14', '2024-03-14', 'Godhra, Gujarat '),
(14, 'mayur', 'mayur@gmail.com', '9267357235', 'Jamnagar', 'mayur', 'mayurrr', '2024-03-15', '2024-03-15', 'Jamnagar '),
(15, 'Joywin', 'joywin@gmail.com', '9363468782', 'Anand', 'Joywin', 'joywinnn', '2024-03-15', '2024-03-15', 'Anand');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(255) NOT NULL,
  `com_email` varchar(1000) NOT NULL,
  `com_address` varchar(1000) NOT NULL,
  `com_phone` varchar(20) NOT NULL,
  `usernm` varchar(500) NOT NULL,
  `pwd` varchar(500) NOT NULL,
  `created_on` date NOT NULL,
  `modify_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `com_email`, `com_address`, `com_phone`, `usernm`, `pwd`, `created_on`, `modify_on`) VALUES
(1, 'dreamcars@gmail.com', 'Anand, Gujarat- 388001                                                                                      ', '9601661523', 'admin', 'admin', '2024-02-16', '2024-03-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carbooking`
--
ALTER TABLE `carbooking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carbooking`
--
ALTER TABLE `carbooking`
  MODIFY `booking_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `com_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
