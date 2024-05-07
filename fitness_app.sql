-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2024 at 04:54 PM
-- Server version: 8.4.0
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitness_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `Class_ID` varchar(255) NOT NULL,
  `Complexity` varchar(255) DEFAULT NULL,
  `Capacity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`Class_ID`, `Complexity`, `Capacity`) VALUES
('1162', 'Advanced', 10),
('1520', 'Advanced', 14),
('1762', 'Beginner', 21),
('1842', 'Beginner', 6),
('1952', 'Beginner', 14),
('2288', 'Beginner', 26),
('2718', 'Beginner', 25),
('2744', 'Intermediate', 9),
('2837', 'Beginner', 23),
('2852', 'Intermediate', 6),
('2911', 'Beginner', 14),
('2917', 'Beginner', 8),
('2966', 'Intermediate', 5),
('2971', 'Intermediate', 12),
('3021', 'Advanced', 7),
('3048', 'Beginner', 5),
('3385', 'Beginner', 8),
('3547', 'Advanced', 29),
('3706', 'Intermediate', 7),
('3765', 'Beginner', 7),
('3792', 'Intermediate', 15),
('4057', 'Beginner', 11),
('4425', 'Intermediate', 27),
('4473', 'Intermediate', 29),
('4625', 'Advanced', 18),
('4784', 'Beginner', 20),
('4797', 'Beginner', 18),
('4890', 'Advanced', 27),
('5280', 'Beginner', 10),
('5359', 'Advanced', 23),
('6160', 'Beginner', 11),
('6231', 'Beginner', 16),
('6255', 'Advanced', 12),
('6316', 'Intermediate', 8),
('6475', 'Intermediate', 13),
('6524', 'Intermediate', 6),
('7100', 'Intermediate', 8),
('7150', 'Beginner', 6),
('7152', 'Beginner', 10),
('7166', 'Intermediate', 17),
('7454', 'Advanced', 18),
('8435', 'Beginner', 15),
('8542', 'Beginner', 21),
('8742', 'Intermediate', 23),
('8852', 'Advanced', 15),
('9049', 'Advanced', 17),
('9182', 'Advanced', 20),
('9278', 'Intermediate', 21),
('9344', 'Beginner', 12),
('9894', 'Advanced', 9);

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `Model` varchar(255) DEFAULT NULL,
  `Brand` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Equip_ID` varchar(255) NOT NULL,
  `Maintenance_Rec` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`Model`, `Brand`, `Status`, `Equip_ID`, `Maintenance_Rec`, `Type`, `address`) VALUES
('Model 74', 'Brand K', 'Maintenance Required', '1346', 'Cardio', NULL, '163 Gym Street'),
('Model 86', 'Brand O', 'Operational', '1360', 'Flexibility', NULL, '108 Health Rd'),
('Model 92', 'Brand T', 'Operational', '2112', 'Cardio', NULL, '123 Athletic Way'),
('Model 93', 'Brand G', 'Operational', '2220', 'Flexibility', NULL, '190 Athletic Way'),
('Model 56', 'Brand F', 'Operational', '2446', 'Strength', NULL, '163 Gym Street'),
('Model 31', 'Brand G', 'Out of Service', '2655', 'Strength', NULL, '136 Wellness Ave'),
('Model 53', 'Brand W', 'Out of Service', '2737', 'Strength', NULL, '14 Health Rd'),
('Model 95', 'Brand Y', 'Maintenance Required', '2954', 'Strength', NULL, '103 Health Rd'),
('Model 65', 'Brand V', 'Operational', '3360', 'Flexibility', NULL, '73 Fitness Blvd'),
('Model 7', 'Brand I', 'Out of Service', '3447', 'Cardio', NULL, '103 Health Rd'),
('Model 52', 'Brand A', 'Out of Service', '3848', 'Cardio', NULL, '108 Health Rd'),
('Model 76', 'Brand M', 'Out of Service', '4044', 'Balance', NULL, '131 Athletic Way'),
('Model 54', 'Brand Y', 'Operational', '4708', 'Cardio', NULL, '81 Wellness Ave'),
('Model 79', 'Brand C', 'Operational', '4944', 'Flexibility', NULL, '41 Athletic Way'),
('Model 44', 'Brand B', 'Operational', '4984', 'Balance', NULL, '190 Health Rd'),
('Model 76', 'Brand G', 'Operational', '4989', 'Flexibility', NULL, '4 Athletic Way'),
('Model 20', 'Brand M', 'Operational', '5002', 'Flexibility', NULL, '150 Athletic Way'),
('Model 58', 'Brand K', 'Maintenance Required', '5115', 'Strength', NULL, '51 Athletic Way'),
('Model 10', 'Brand Z', 'Out of Service', '5147', 'Strength', NULL, '75 Wellness Ave'),
('Model 73', 'Brand Z', 'Maintenance Required', '5238', 'Cardio', NULL, '123 Athletic Way'),
('Model 63', 'Brand R', 'Maintenance Required', '5635', 'Strength', NULL, '4 Athletic Way'),
('Model 44', 'Brand R', 'Maintenance Required', '5687', 'Strength', NULL, '103 Health Rd'),
('Model 43', 'Brand Y', 'Maintenance Required', '5712', 'Flexibility', NULL, '2 Fitness Blvd'),
('Model 9', 'Brand A', 'Maintenance Required', '5836', 'Strength', NULL, '8 Wellness Ave'),
('Model 10', 'Brand K', 'Maintenance Required', '5950', 'Flexibility', NULL, '136 Wellness Ave'),
('Model 44', 'Brand J', 'Maintenance Required', '6138', 'Cardio', NULL, '81 Health Rd'),
('Model 67', 'Brand B', 'Maintenance Required', '6216', 'Cardio', NULL, '103 Health Rd'),
('Model 61', 'Brand U', 'Out of Service', '6296', 'Balance', NULL, '108 Health Rd'),
('Model 38', 'Brand H', 'Operational', '6323', 'Balance', NULL, '58 Athletic Way'),
('Model 85', 'Brand O', 'Operational', '6381', 'Strength', NULL, '41 Athletic Way'),
('Model 79', 'Brand I', 'Out of Service', '6474', 'Flexibility', NULL, '163 Gym Street'),
('Model 68', 'Brand U', 'Operational', '7025', 'Flexibility', NULL, '15 Athletic Way'),
('Model 24', 'Brand N', 'Operational', '7157', 'Strength', NULL, '163 Gym Street'),
('Model 78', 'Brand V', 'Maintenance Required', '7364', 'Balance', NULL, '188 Health Rd'),
('Model 30', 'Brand U', 'Operational', '7503', 'Flexibility', NULL, '103 Health Rd'),
('Model 51', 'Brand S', 'Maintenance Required', '7582', 'Balance', NULL, '21 Gym Street'),
('Model 70', 'Brand F', 'Out of Service', '7797', 'Balance', NULL, '199 Health Rd'),
('Model 58', 'Brand M', 'Operational', '7968', 'Strength', NULL, '21 Gym Street'),
('Model 37', 'Brand T', 'Maintenance Required', '8082', 'Strength', NULL, '53 Fitness Blvd'),
('Model 40', 'Brand V', 'Maintenance Required', '8144', 'Strength', NULL, '88 Gym Street'),
('Model 23', 'Brand S', 'Out of Service', '8245', 'Strength', NULL, '93 Wellness Ave'),
('Model 39', 'Brand C', 'Out of Service', '8263', 'Strength', NULL, '88 Athletic Way'),
('Model 47', 'Brand Z', 'Out of Service', '8516', 'Cardio', NULL, '84 Health Rd'),
('Model 82', 'Brand R', 'Out of Service', '8676', 'Strength', NULL, '53 Fitness Blvd'),
('Model 63', 'Brand A', 'Out of Service', '8922', 'Balance', NULL, '2 Health Rd'),
('Model 52', 'Brand X', 'Operational', '8928', 'Balance', NULL, '72 Athletic Way'),
('Model 28', 'Brand P', 'Maintenance Required', '9054', 'Cardio', NULL, '81 Health Rd'),
('Model 17', 'Brand Q', 'Operational', '9840', 'Strength', NULL, '58 Athletic Way'),
('Model 28', 'Brand A', 'Maintenance Required', '9992', 'Balance', NULL, '53 Fitness Blvd'),
('Model 10', 'Brand C', 'Maintenance Required', '9997', 'Cardio', NULL, '9 Fitness Blvd'),
('Model 73', 'Brand Z', 'Operational', 'Maintenance Required', 'No records', 'Cardio', '123 Athletic Way'),
('Model 65', 'Brand V', 'Operational', 'Operational', 'No records', 'Flexibility', '73 Fitness Blvd'),
('Model 52', 'Brand A', 'Operational', 'Out of Service', 'No records', 'Cardio', '108 Health Rd');

-- --------------------------------------------------------

--
-- Table structure for table `food_bar`
--

CREATE TABLE `food_bar` (
  `Special_Diet` varchar(255) DEFAULT NULL,
  `Macros` varchar(255) DEFAULT NULL,
  `Food_Bar_ID` varchar(255) NOT NULL,
  `Item_ID` varchar(255) DEFAULT NULL,
  `Food_Name` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `food_bar`
--

INSERT INTO `food_bar` (`Special_Diet`, `Macros`, `Food_Bar_ID`, `Item_ID`, `Food_Name`, `Description`, `Price`) VALUES
('Low-Carb', NULL, '1431', '493', 'Smoothie Bowl', 'A bowl of mixed fruits and granola, drizzled with honey and Greek yogurt.', 8.8),
('Low-Carb', NULL, '1656', '168', 'Vegetable Soup', 'Homemade vegetable soup, simmered to perfection for a comforting meal.', 17.38),
('Vegetarian', NULL, '1870', '413', 'Chicken Wrap', 'Wrapped in a whole grain tortilla, this chicken wrap is both tasty and filling.', 8.04),
('Vegetarian', NULL, '1971', '351', 'Quinoa Bowl', 'A hearty and healthy bowl of quinoa, mixed vegetables, and your choice of protein.', 10.5),
('High-Protein', NULL, '2097', '152', 'Vegetable Soup', 'Homemade vegetable soup, simmered to perfection for a comforting meal.', 19.24),
('Keto', NULL, '2126', '490', 'Chicken Wrap', 'Wrapped in a whole grain tortilla, this chicken wrap is both tasty and filling.', 5.42),
('Gluten-Free', NULL, '2157', '356', 'Beef Sandwich', 'Slow-cooked beef, served in a freshly baked bun with a side of coleslaw.', 19.72),
('Gluten-Free', NULL, '2437', '101', 'Vegetable Soup', 'Homemade vegetable soup, simmered to perfection for a comforting meal.', 19.7),
('Low-Carb', NULL, '2478', '182', 'Beef Sandwich', 'Slow-cooked beef, served in a freshly baked bun with a side of coleslaw.', 14.49),
('High-Protein', NULL, '2669', '197', 'Fruit Cup', 'A cup of mixed seasonal fruits, perfect for a quick and healthy snack.', 5.07),
('Vegetarian', NULL, '2857', '128', 'Beef Sandwich', 'Slow-cooked beef, served in a freshly baked bun with a side of coleslaw.', 6.9),
('Keto', NULL, '2866', '281', 'Vegetable Soup', 'Homemade vegetable soup, simmered to perfection for a comforting meal.', 11.15),
('High-Protein', NULL, '2891', '227', 'Smoothie Bowl', 'A bowl of mixed fruits and granola, drizzled with honey and Greek yogurt.', 7.82),
('Gluten-Free', NULL, '2932', '433', 'Vegetable Soup', 'Homemade vegetable soup, simmered to perfection for a comforting meal.', 7.67),
('Vegetarian', NULL, '3008', '497', 'Vegan Salad', 'A refreshing blend of greens and nuts, topped with a light vinaigrette.', 8.5),
('Vegan', NULL, '3041', '447', 'Tofu Stir-fry', 'Stir-fried tofu with a variety of vegetables, served over brown rice or quinoa.', 5.68),
('Vegan', NULL, '3203', '430', 'Smoothie Bowl', 'A bowl of mixed fruits and granola, drizzled with honey and Greek yogurt.', 7.24),
('Vegan', NULL, '3287', '140', 'Chicken Wrap', 'Wrapped in a whole grain tortilla, this chicken wrap is both tasty and filling.', 8.76),
('Vegan', NULL, '3369', '464', 'Beef Sandwich', 'Slow-cooked beef, served in a freshly baked bun with a side of coleslaw.', 5.16),
('Keto', NULL, '3712', '228', 'Fruit Cup', 'A cup of mixed seasonal fruits, perfect for a quick and healthy snack.', 8.3),
('High-Protein', NULL, '3753', '385', 'Beef Sandwich', 'Slow-cooked beef, served in a freshly baked bun with a side of coleslaw.', 18.45),
('Vegan', NULL, '3787', '162', 'Vegan Salad', 'A refreshing blend of greens and nuts, topped with a light vinaigrette.', 14.63),
('Low-Carb', NULL, '3949', '298', 'Beef Sandwich', 'Slow-cooked beef, served in a freshly baked bun with a side of coleslaw.', 13.09),
('Low-Carb', NULL, '4141', '484', 'Chicken Wrap', 'Wrapped in a whole grain tortilla, this chicken wrap is both tasty and filling.', 13.16),
('Vegetarian', NULL, '4512', '415', 'Fruit Cup', 'A cup of mixed seasonal fruits, perfect for a quick and healthy snack.', 6.62),
('Vegetarian', NULL, '4514', '175', 'Vegetable Soup', 'Homemade vegetable soup, simmered to perfection for a comforting meal.', 12.53),
('Vegan', NULL, '4638', '214', 'Energy Bar', 'Perfect for an energy boost, this bar contains nuts, seeds, and dried fruits.', 17.37),
('Gluten-Free', NULL, '4768', '408', 'Energy Bar', 'Perfect for an energy boost, this bar contains nuts, seeds, and dried fruits.', 6.99),
('Vegetarian', NULL, '5087', '382', 'Smoothie Bowl', 'A bowl of mixed fruits and granola, drizzled with honey and Greek yogurt.', 19.11),
('Vegetarian', NULL, '5733', '427', 'Smoothie Bowl', 'A bowl of mixed fruits and granola, drizzled with honey and Greek yogurt.', 17.7),
('Vegetarian', NULL, '5969', '453', 'Fruit Cup', 'A cup of mixed seasonal fruits, perfect for a quick and healthy snack.', 15.02),
('Low-Carb', NULL, '5983', '335', 'Tofu Stir-fry', 'Stir-fried tofu with a variety of vegetables, served over brown rice or quinoa.', 9.56),
('High-Protein', NULL, '6166', '203', 'Fruit Cup', 'A cup of mixed seasonal fruits, perfect for a quick and healthy snack.', 7.85),
('High-Protein', NULL, '6428', '174', 'Chicken Wrap', 'Wrapped in a whole grain tortilla, this chicken wrap is both tasty and filling.', 5.18),
('Gluten-Free', NULL, '6524', '196', 'Quinoa Bowl', 'A hearty and healthy bowl of quinoa, mixed vegetables, and your choice of protein.', 7.47),
('Vegetarian', NULL, '6770', '120', 'Vegetable Soup', 'Homemade vegetable soup, simmered to perfection for a comforting meal.', 9.44),
('Gluten-Free', NULL, '6786', '264', 'Smoothie Bowl', 'A bowl of mixed fruits and granola, drizzled with honey and Greek yogurt.', 16.27),
('Vegetarian', NULL, '7306', '179', 'Tofu Stir-fry', 'Stir-fried tofu with a variety of vegetables, served over brown rice or quinoa.', 16.38),
('Gluten-Free', NULL, '7327', '115', 'Tofu Stir-fry', 'Stir-fried tofu with a variety of vegetables, served over brown rice or quinoa.', 5.86),
('Vegetarian', NULL, '7488', '257', 'Smoothie Bowl', 'A bowl of mixed fruits and granola, drizzled with honey and Greek yogurt.', 5.58),
('Low-Carb', NULL, '8036', '308', 'Beef Sandwich', 'Slow-cooked beef, served in a freshly baked bun with a side of coleslaw.', 6.44),
('Gluten-Free', NULL, '8484', '305', 'Fruit Cup', 'A cup of mixed seasonal fruits, perfect for a quick and healthy snack.', 7.24),
('Gluten-Free', NULL, '8595', '368', 'Vegan Salad', 'A refreshing blend of greens and nuts, topped with a light vinaigrette.', 5.65),
('Vegan', NULL, '8618', '223', 'Vegan Salad', 'A refreshing blend of greens and nuts, topped with a light vinaigrette.', 6.53),
('Low-Carb', NULL, '9117', '109', 'Tofu Stir-fry', 'Stir-fried tofu with a variety of vegetables, served over brown rice or quinoa.', 19.36),
('Keto', NULL, '9245', '292', 'Quinoa Bowl', 'A hearty and healthy bowl of quinoa, mixed vegetables, and your choice of protein.', 14.99),
('Vegetarian', NULL, '9291', '398', 'Tofu Stir-fry', 'Stir-fried tofu with a variety of vegetables, served over brown rice or quinoa.', 17.5),
('Low-Carb', NULL, '9615', '377', 'Tofu Stir-fry', 'Stir-fried tofu with a variety of vegetables, served over brown rice or quinoa.', 7.79),
('Keto', NULL, '9794', '262', 'Smoothie Bowl', 'A bowl of mixed fruits and granola, drizzled with honey and Greek yogurt.', 10.37),
('Low-Carb', NULL, '9953', '103', 'Tofu Stir-fry', 'Stir-fried tofu with a variety of vegetables, served over brown rice or quinoa.', 11.16);

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `Name_` varchar(255) NOT NULL,
  `Date_of_Visit` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`Name_`, `Date_of_Visit`) VALUES
('Alex Davis', '2024-09-18'),
('Alex Smith', '2024-05-13'),
('Alex Taylor', '2024-08-13'),
('Alex Wilson', '2024-01-16'),
('Cameron Davis', '2024-03-02'),
('Cameron Jones', '2024-10-25'),
('Cameron Miller', '2024-11-19'),
('Cameron Moore', '2024-01-21'),
('Casey Johnson', '2024-08-06'),
('Casey Jones', '2024-07-20'),
('Casey Williams', '2024-01-08'),
('Casey Wilson', '2024-06-06'),
('Dana Brown', '2024-04-19'),
('Dana Davis', '2024-03-26'),
('Dana Johnson', '2024-02-06'),
('Dana Jones', '2024-01-23'),
('Dana Moore', '2024-02-17'),
('Jamie Johnson', '2024-07-20'),
('Jamie Jones', '2024-12-19'),
('Jamie Miller', '2024-01-16'),
('Jamie Moore', '2024-06-25'),
('Jamie Smith', '2024-11-18'),
('Jamie Williams', '2024-09-19'),
('Jamie Wilson', '2024-02-02'),
('Jordan Brown', '2024-01-01'),
('Jordan Jones', '2024-08-11'),
('Jordan Smith', '2024-08-13'),
('Jordan Williams', '2024-09-07'),
('Jordan Wilson', '2024-03-20'),
('Morgan Davis', '2024-09-23'),
('Morgan Johnson', '2024-01-13'),
('Morgan Moore', '2024-02-06'),
('Morgan Smith', '2024-08-16'),
('Morgan Taylor', '2024-10-21'),
('Morgan Wilson', '2024-04-02'),
('Robin Johnson', '2024-03-22'),
('Robin Jones', '2024-06-23'),
('Robin Miller', '2024-05-06'),
('Robin Moore', '2024-11-26'),
('Robin Wilson', '2024-04-15'),
('Skyler Brown', '2024-05-17'),
('Skyler Johnson', '2024-07-23'),
('Skyler Smith', '2024-01-05'),
('Skyler Taylor', '2024-07-01'),
('Taylor Davis', '2024-07-10'),
('Taylor Johnson', '2024-12-16'),
('Taylor Moore', '2024-03-23'),
('Taylor Smith', '2024-02-07'),
('Taylor Taylor', '2024-08-08'),
('Taylor Williams', '2024-04-04');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `Amenities` varchar(255) DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  `Operating_Hours` varchar(255) DEFAULT NULL,
  `Contact_Number` varchar(255) DEFAULT NULL,
  `Parking_Fac` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`Amenities`, `Address`, `Operating_Hours`, `Contact_Number`, `Parking_Fac`) VALUES
('Pool, Spa', '100 Wellness Ave', '24 Hours', '555-2291', 'Available'),
('Gym, Sauna', '103 Health Rd', '6 AM - 9 PM', '555-2495', 'Available'),
('Pool, Spa', '108 Health Rd', '6 AM - 9 PM', '555-6855', 'Available'),
('Pool, Sauna, Spa', '111 Health Rd', '6 AM - 9 PM', '555-1202', 'Street Parking'),
('Gym, Spa', '123 Athletic Way', '5 AM - 11 PM', '555-2843', 'Available'),
('Gym, Spa', '131 Athletic Way', '6 AM - 9 PM', '555-7528', 'Available'),
('Pool, Sauna, Spa', '132 Gym Street', '5 AM - 11 PM', '555-2707', 'None'),
('Gym, Spa', '136 Wellness Ave', '5 AM - 11 PM', '555-9338', 'Valet'),
('Pool, Sauna, Spa', '14 Health Rd', '6 AM - 9 PM', '555-2930', 'Available'),
('Gym, Spa', '15 Athletic Way', '5 AM - 11 PM', '555-3811', 'Limited'),
('Gym, Spa', '150 Athletic Way', '24 Hours', '555-4581', 'Available'),
('Gym, Sauna', '158 Fitness Blvd', '6 AM - 9 PM', '555-8280', 'Limited'),
('Pool, Spa', '163 Gym Street', '24 Hours', '555-2734', 'Valet'),
('Gym, Sauna', '188 Health Rd', '24 Hours', '555-3511', 'Limited'),
('Gym, Spa', '188 Wellness Ave', '5 AM - 11 PM', '555-9164', 'Valet'),
('Pool, Spa', '190 Athletic Way', '24 Hours', '555-7287', 'Street Parking'),
('Pool, Sauna, Spa', '190 Health Rd', '6 AM - 9 PM', '555-8125', 'Street Parking'),
('Pool, Sauna, Spa', '191 Fitness Blvd', '5 AM - 11 PM', '555-8777', 'Valet'),
('Pool, Spa', '192 Health Rd', '24 Hours', '555-2636', 'Street Parking'),
('Gym, Sauna', '199 Health Rd', '24 Hours', '555-5218', 'Street Parking'),
('Gym, Sauna', '2 Fitness Blvd', '6 AM - 9 PM', '555-9004', 'Street Parking'),
('Gym, Spa', '2 Health Rd', '6 AM - 9 PM', '555-8554', 'Limited'),
('Pool, Spa', '21 Fitness Blvd', '24 Hours', '555-6232', 'Available'),
('Gym, Spa', '21 Gym Street', '24 Hours', '555-4696', 'Valet'),
('Pool, Sauna, Spa', '24 Fitness Blvd', '5 AM - 11 PM', '555-5282', 'None'),
('Pool, Sauna, Spa', '4 Athletic Way', '24 Hours', '555-3931', 'Available'),
('Gym, Sauna', '41 Athletic Way', '6 AM - 9 PM', '555-1659', 'Limited'),
('Gym, Sauna', '44 Fitness Blvd', '6 AM - 9 PM', '555-1197', 'Valet'),
('Pool, Spa', '50 Health Rd', '6 AM - 9 PM', '555-3327', 'Valet'),
('Gym, Spa', '51 Athletic Way', '6 AM - 9 PM', '555-6249', 'Valet'),
('Pool, Sauna, Spa', '53 Fitness Blvd', '5 AM - 11 PM', '555-5931', 'Available'),
('Pool, Sauna, Spa', '58 Athletic Way', '24 Hours', '555-1698', 'Limited'),
('Gym, Sauna', '59 Fitness Blvd', '5 AM - 11 PM', '555-1854', 'Valet'),
('Pool, Sauna, Spa', '60 Fitness Blvd', '5 AM - 11 PM', '555-6791', 'Street Parking'),
('Pool, Sauna, Spa', '64 Gym Street', '5 AM - 11 PM', '555-8392', 'Limited'),
('Pool, Spa', '65 Gym Street', '6 AM - 9 PM', '555-8098', 'Street Parking'),
('Pool, Sauna, Spa', '71 Gym Street', '6 AM - 9 PM', '555-7546', 'None'),
('Gym, Sauna', '72 Athletic Way', '6 AM - 9 PM', '555-4763', 'Limited'),
('Gym, Sauna', '73 Fitness Blvd', '5 AM - 11 PM', '555-6172', 'None'),
('Gym, Spa', '75 Wellness Ave', '24 Hours', '555-2853', 'Street Parking'),
('Pool, Sauna, Spa', '8 Wellness Ave', '5 AM - 11 PM', '555-9958', 'Valet'),
('Pool, Spa', '81 Health Rd', '6 AM - 9 PM', '555-5389', 'Available'),
('Pool, Sauna, Spa', '81 Wellness Ave', '24 Hours', '555-3911', 'Available'),
('Pool, Sauna, Spa', '82 Athletic Way', '24 Hours', '555-9800', 'Available'),
('Pool, Spa', '84 Health Rd', '24 Hours', '555-4510', 'Street Parking'),
('Pool, Sauna, Spa', '88 Athletic Way', '6 AM - 9 PM', '555-7585', 'Valet'),
('Pool, Sauna, Spa', '88 Gym Street', '24 Hours', '555-2986', 'Available'),
('Pool, Sauna, Spa', '89 Gym Street', '5 AM - 11 PM', '555-5737', 'Available'),
('Pool, Spa', '9 Fitness Blvd', '24 Hours', '555-6535', 'Available'),
('Pool, Sauna, Spa', '93 Wellness Ave', '5 AM - 11 PM', '555-4304', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `location_class`
--

CREATE TABLE `location_class` (
  `Address_FK` varchar(255) NOT NULL,
  `Class_ID_FK` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `location_equipment`
--

CREATE TABLE `location_equipment` (
  `Address_FK` varchar(255) NOT NULL,
  `Equipment_ID_FK` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `Name` varchar(255) DEFAULT NULL,
  `Mem_ID` varchar(255) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Mem_Type` varchar(255) DEFAULT NULL,
  `Guest_Name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`Name`, `Mem_ID`, `Address`, `Mem_Type`, `Guest_Name`) VALUES
('Yuki Lopez', '1070', '38 Cherry Ct', 'Monthly', NULL),
('Liam Kim', '1273', '24 Elm Dr', 'Weekly', NULL),
('Olivia Singh', '1441', '119 Oak Blvd', 'Monthly', NULL),
('Noah Kim', '1569', '186 Cherry Ct', 'Monthly', NULL),
('Chen Ali', '1853', '78 Walnut St', 'Weekly', NULL),
('Sofia Gomez', '2021', '99 Oak Blvd', 'Weekly', NULL),
('Chen Khan', '2159', '97 Maple Ave', 'Monthly', NULL),
('Aria Kim', '2297', '136 Pine Ln', 'Weekly', NULL),
('Olivia Nguyen', '2472', '31 Walnut St', 'Monthly', NULL),
('Yuki Zhang', '2558', '141 Magnolia Dr', 'Annual', NULL),
('Noah Kumar', '3010', '15 Oak Blvd', 'Monthly', NULL),
('Anya Smith', '3151', '154 Willow Way', 'Weekly', NULL),
('Olivia Ali', '3163', '90 Oak Blvd', 'Annual', NULL),
('Ethan Zhang', '3323', '151 Maple Ave', 'Weekly', NULL),
('Zoe Ali', '3997', '7 Birch Rd', 'Annual', NULL),
('Aria Singh', '4029', '45 Pine Ln', 'Weekly', NULL),
('Miguel Ali', '4129', '160 Maple Ave', 'Weekly', NULL),
('Liam Johnson', '4218', '46 Maple Ave', 'Annual', NULL),
('Sofia Patel', '4231', '105 Maple Ave', 'Monthly', NULL),
('Anya Patel', '4598', '180 Walnut St', 'Annual', NULL),
('Aria Johnson', '4604', '77 Willow Way', 'Annual', NULL),
('Olivia Ali', '4691', '77 Walnut St', 'Monthly', NULL),
('Zoe Ali', '4741', '43 Cedar St', 'Annual', NULL),
('Anya Kim', '5075', '85 Elm Dr', 'Annual', NULL),
('Zoe Kumar', '5229', '53 Elm Dr', 'Monthly', NULL),
('Miguel Kumar', '5348', '91 Willow Way', 'Annual', NULL),
('Anya Nguyen', '5374', '73 Walnut St', 'Monthly', NULL),
('Olivia Kumar', '5556', '12 Cedar St', 'Annual', NULL),
('Noah Johnson', '5773', '86 Birch Rd', 'Monthly', NULL),
('Ethan Zhang', '5877', '2 Oak Blvd', 'Weekly', NULL),
('Sofia Lopez', '5889', '135 Birch Rd', 'Monthly', NULL),
('Liam Nguyen', '6579', '166 Birch Rd', 'Monthly', NULL),
('Liam Zhang', '6768', '87 Elm Dr', 'Annual', NULL),
('Noah Kumar', '6806', '75 Walnut St', 'Annual', NULL),
('Sofia Singh', '7209', '74 Cedar St', 'Monthly', NULL),
('Liam Nguyen', '7272', '111 Cherry Ct', 'Monthly', NULL),
('Miguel Smith', '7327', '144 Willow Way', 'Annual', NULL),
('Yuki Patel', '7610', '199 Walnut St', 'Weekly', NULL),
('Ethan Johnson', '7645', '186 Walnut St', 'Monthly', NULL),
('Zoe Zhang', '7749', '137 Oak Blvd', 'Monthly', NULL),
('Anya Zhang', '8459', '170 Magnolia Dr', 'Annual', NULL),
('Anya Gomez', '8643', '156 Willow Way', 'Annual', NULL),
('Mohamed Kumar', '8656', '34 Magnolia Dr', 'Weekly', NULL),
('Ethan Johnson', '9182', '70 Elm Dr', 'Weekly', NULL),
('Zoe Khan', '9233', '73 Birch Rd', 'Monthly', NULL),
('Miguel Kumar', '9239', '62 Pine Ln', 'Weekly', NULL),
('Mohamed Khan', '9424', '160 Pine Ln', 'Annual', NULL),
('Zoe Zhang', '9674', '55 Cedar St', 'Weekly', NULL),
('Zoe Lopez', '9954', '61 Magnolia Dr', 'Annual', NULL),
('Noah Gomez', '9982', '97 Walnut St', 'Annual', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `Fee` float DEFAULT NULL,
  `Type` varchar(255) NOT NULL,
  `Length` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_class_attendance`
--

CREATE TABLE `member_class_attendance` (
  `Member_ID_FK` varchar(255) NOT NULL,
  `Class_ID_FK` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_class_rating`
--

CREATE TABLE `member_class_rating` (
  `Member_ID_FK` varchar(255) NOT NULL,
  `Class_ID_FK` varchar(255) NOT NULL,
  `Rating` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_equipment_rating`
--

CREATE TABLE `member_equipment_rating` (
  `Member_ID_FK` varchar(255) NOT NULL,
  `Equipment_ID_FK` varchar(255) NOT NULL,
  `Rating` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_location`
--

CREATE TABLE `member_location` (
  `Member_ID_FK` varchar(255) NOT NULL,
  `Address_FK` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_trainer_rating`
--

CREATE TABLE `member_trainer_rating` (
  `Member_ID_FK` varchar(255) NOT NULL,
  `Trainer_ID_FK` varchar(255) NOT NULL,
  `Rating` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `Name` varchar(255) DEFAULT NULL,
  `T_ID` varchar(255) NOT NULL,
  `Availability` varchar(255) DEFAULT NULL,
  `Qualifications` varchar(255) DEFAULT NULL,
  `AOE` varchar(255) DEFAULT NULL,
  `Languages_Spoken` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`Name`, `T_ID`, `Availability`, `Qualifications`, `AOE`, `Languages_Spoken`) VALUES
('Alex Davis', '1042', 'Mon-Fri', 'Yoga Instructor', 'Yoga, Meditation', 'French'),
('Alex Johnson', '1093', 'Weekends', 'Personal Trainer', 'Yoga, Meditation', 'French'),
('Morgan Miller', '1103', 'Mon-Fri', 'Nutritionist', 'Nutrition, Diet Planning', 'Spanish'),
('Drew Garcia', '1115', 'All Week', 'Certified Fitness Instructor', 'Nutrition, Diet Planning', 'Spanish'),
('Jordan Rodriguez', '1262', 'Mon-Fri', 'Yoga Instructor', 'Yoga, Meditation', 'Spanish'),
('Quinn Miller', '1283', 'Mon-Fri', 'Nutritionist', 'Nutrition, Diet Planning', 'French'),
('Jamie Garcia', '1344', 'All Week', 'Nutritionist', 'Nutrition, Diet Planning', 'English'),
('Taylor Martinez', '1384', 'Mon-Fri', 'Yoga Instructor', 'Cardio, Strength Training', 'English'),
('Morgan Williams', '1787', 'Weekends', 'Nutritionist', 'Nutrition, Diet Planning', 'English'),
('Casey Smith', '1835', 'Mon-Fri', 'Nutritionist', 'Cardio, Strength Training', 'French'),
('Taylor Brown', '2258', 'Weekends', 'Certified Fitness Instructor', 'Cardio, Strength Training', 'French'),
('Jordan Williams', '2341', 'All Week', 'Yoga Instructor', 'Nutrition, Diet Planning', 'English'),
('Avery Rodriguez', '2680', 'All Week', 'Certified Fitness Instructor', 'Cardio, Strength Training', 'Spanish'),
('Casey Johnson', '2862', 'All Week', 'Certified Fitness Instructor', 'Yoga, Meditation', 'Spanish'),
('Jamie Brown', '2933', 'Weekends', 'Yoga Instructor', 'Bodybuilding', 'French'),
('Drew Brown', '3145', 'Weekends', 'Certified Fitness Instructor', 'Cardio, Strength Training', 'English'),
('Drew Williams', '3226', 'Mon-Fri', 'Certified Fitness Instructor', 'Yoga, Meditation', 'English'),
('Jordan Miller', '3298', 'All Week', 'Yoga Instructor', 'Cardio, Strength Training', 'English'),
('Riley Brown', '3444', 'Weekends', 'Yoga Instructor', 'Bodybuilding', 'English'),
('Riley Johnson', '3997', 'Weekends', 'Yoga Instructor', 'Yoga, Meditation', 'French'),
('Quinn Smith', '4353', 'Mon-Fri', 'Yoga Instructor', 'Cardio, Strength Training', 'French'),
('Jordan Johnson', '4390', 'Mon-Fri', 'Personal Trainer', 'Bodybuilding', 'French'),
('Taylor Brown', '4687', 'Weekends', 'Certified Fitness Instructor', 'Cardio, Strength Training', 'French'),
('Avery Davis', '5049', 'Weekends', 'Certified Fitness Instructor', 'Cardio, Strength Training', 'French'),
('Riley Davis', '5143', 'Weekends', 'Nutritionist', 'Yoga, Meditation', 'English'),
('Avery Martinez', '5166', 'Mon-Fri', 'Personal Trainer', 'Bodybuilding', 'French'),
('Riley Martinez', '5367', 'All Week', 'Certified Fitness Instructor', 'Cardio, Strength Training', 'French'),
('Quinn Jones', '5373', 'Weekends', 'Personal Trainer', 'Bodybuilding', 'French'),
('Quinn Martinez', '5499', 'All Week', 'Personal Trainer', 'Cardio, Strength Training', 'French'),
('Morgan Davis', '5848', 'Weekends', 'Yoga Instructor', 'Nutrition, Diet Planning', 'Spanish'),
('Jamie Jones', '5873', 'Mon-Fri', 'Nutritionist', 'Bodybuilding', 'French'),
('Jamie Williams', '6478', 'All Week', 'Personal Trainer', 'Bodybuilding', 'French'),
('Jamie Miller', '6494', 'All Week', 'Personal Trainer', 'Yoga, Meditation', 'English'),
('Quinn Brown', '6654', 'Weekends', 'Yoga Instructor', 'Yoga, Meditation', 'English'),
('Quinn Martinez', '6848', 'Weekends', 'Certified Fitness Instructor', 'Cardio, Strength Training', 'French'),
('Avery Johnson', '6937', 'Weekends', 'Yoga Instructor', 'Yoga, Meditation', 'French'),
('Avery Smith', '7237', 'Weekends', 'Personal Trainer', 'Nutrition, Diet Planning', 'English'),
('Avery Rodriguez', '7370', 'Mon-Fri', 'Personal Trainer', 'Cardio, Strength Training', 'French'),
('Casey Smith', '7547', 'Weekends', 'Yoga Instructor', 'Yoga, Meditation', 'English'),
('Casey Rodriguez', '7757', 'Mon-Fri', 'Certified Fitness Instructor', 'Bodybuilding', 'Spanish'),
('Jamie Jones', '8198', 'All Week', 'Certified Fitness Instructor', 'Nutrition, Diet Planning', 'English'),
('Jamie Johnson', '8250', 'All Week', 'Nutritionist', 'Bodybuilding', 'Spanish'),
('Alex Smith', '8754', 'Weekends', 'Personal Trainer', 'Nutrition, Diet Planning', 'French'),
('Quinn Johnson', '8756', 'Weekends', 'Personal Trainer', 'Nutrition, Diet Planning', 'French'),
('Taylor Davis', '8793', 'All Week', 'Personal Trainer', 'Cardio, Strength Training', 'Spanish'),
('Quinn Garcia', '9044', 'Mon-Fri', 'Nutritionist', 'Cardio, Strength Training', 'French'),
('Alex Martinez', '9646', 'All Week', 'Personal Trainer', 'Yoga, Meditation', 'English'),
('Avery Davis', '9863', 'Mon-Fri', 'Yoga Instructor', 'Cardio, Strength Training', 'English'),
('Quinn Williams', '9895', 'Weekends', 'Nutritionist', 'Nutrition, Diet Planning', 'English'),
('Quinn Garcia', '9946', 'All Week', 'Nutritionist', 'Bodybuilding', 'French');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`Class_ID`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`Equip_ID`);

--
-- Indexes for table `food_bar`
--
ALTER TABLE `food_bar`
  ADD PRIMARY KEY (`Food_Bar_ID`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`Name_`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`Address`);

--
-- Indexes for table `location_class`
--
ALTER TABLE `location_class`
  ADD PRIMARY KEY (`Address_FK`,`Class_ID_FK`),
  ADD KEY `Class_ID_FK` (`Class_ID_FK`);

--
-- Indexes for table `location_equipment`
--
ALTER TABLE `location_equipment`
  ADD PRIMARY KEY (`Address_FK`,`Equipment_ID_FK`),
  ADD KEY `Equipment_ID_FK` (`Equipment_ID_FK`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`Mem_ID`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`Type`);

--
-- Indexes for table `member_class_attendance`
--
ALTER TABLE `member_class_attendance`
  ADD PRIMARY KEY (`Member_ID_FK`,`Class_ID_FK`),
  ADD KEY `Class_ID_FK` (`Class_ID_FK`);

--
-- Indexes for table `member_class_rating`
--
ALTER TABLE `member_class_rating`
  ADD PRIMARY KEY (`Member_ID_FK`,`Class_ID_FK`),
  ADD KEY `Class_ID_FK` (`Class_ID_FK`);

--
-- Indexes for table `member_equipment_rating`
--
ALTER TABLE `member_equipment_rating`
  ADD PRIMARY KEY (`Member_ID_FK`,`Equipment_ID_FK`),
  ADD KEY `Equipment_ID_FK` (`Equipment_ID_FK`);

--
-- Indexes for table `member_location`
--
ALTER TABLE `member_location`
  ADD PRIMARY KEY (`Member_ID_FK`,`Address_FK`),
  ADD KEY `Address_FK` (`Address_FK`);

--
-- Indexes for table `member_trainer_rating`
--
ALTER TABLE `member_trainer_rating`
  ADD PRIMARY KEY (`Member_ID_FK`,`Trainer_ID_FK`),
  ADD KEY `Trainer_ID_FK` (`Trainer_ID_FK`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`T_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `location_class`
--
ALTER TABLE `location_class`
  ADD CONSTRAINT `location_class_ibfk_1` FOREIGN KEY (`Address_FK`) REFERENCES `location` (`Address`),
  ADD CONSTRAINT `location_class_ibfk_2` FOREIGN KEY (`Class_ID_FK`) REFERENCES `class` (`Class_ID`);

--
-- Constraints for table `location_equipment`
--
ALTER TABLE `location_equipment`
  ADD CONSTRAINT `location_equipment_ibfk_1` FOREIGN KEY (`Address_FK`) REFERENCES `location` (`Address`),
  ADD CONSTRAINT `location_equipment_ibfk_2` FOREIGN KEY (`Equipment_ID_FK`) REFERENCES `equipment` (`Equip_ID`);

--
-- Constraints for table `member_class_attendance`
--
ALTER TABLE `member_class_attendance`
  ADD CONSTRAINT `member_class_attendance_ibfk_1` FOREIGN KEY (`Member_ID_FK`) REFERENCES `member` (`Mem_ID`),
  ADD CONSTRAINT `member_class_attendance_ibfk_2` FOREIGN KEY (`Class_ID_FK`) REFERENCES `class` (`Class_ID`);

--
-- Constraints for table `member_class_rating`
--
ALTER TABLE `member_class_rating`
  ADD CONSTRAINT `member_class_rating_ibfk_1` FOREIGN KEY (`Member_ID_FK`) REFERENCES `member` (`Mem_ID`),
  ADD CONSTRAINT `member_class_rating_ibfk_2` FOREIGN KEY (`Class_ID_FK`) REFERENCES `class` (`Class_ID`);

--
-- Constraints for table `member_equipment_rating`
--
ALTER TABLE `member_equipment_rating`
  ADD CONSTRAINT `member_equipment_rating_ibfk_1` FOREIGN KEY (`Member_ID_FK`) REFERENCES `member` (`Mem_ID`),
  ADD CONSTRAINT `member_equipment_rating_ibfk_2` FOREIGN KEY (`Equipment_ID_FK`) REFERENCES `equipment` (`Equip_ID`);

--
-- Constraints for table `member_location`
--
ALTER TABLE `member_location`
  ADD CONSTRAINT `member_location_ibfk_1` FOREIGN KEY (`Member_ID_FK`) REFERENCES `member` (`Mem_ID`),
  ADD CONSTRAINT `member_location_ibfk_2` FOREIGN KEY (`Address_FK`) REFERENCES `location` (`Address`);

--
-- Constraints for table `member_trainer_rating`
--
ALTER TABLE `member_trainer_rating`
  ADD CONSTRAINT `member_trainer_rating_ibfk_1` FOREIGN KEY (`Member_ID_FK`) REFERENCES `member` (`Mem_ID`),
  ADD CONSTRAINT `member_trainer_rating_ibfk_2` FOREIGN KEY (`Trainer_ID_FK`) REFERENCES `trainer` (`T_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
