-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2024 at 03:35 AM
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
-- Database: `girlyeatz`
--

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `building` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `building`, `street`, `city`) VALUES
(1, 'H255+JWJ San Antonio Residence', 'Makati', 'Metro Manila'),
(2, 'G/F, Cash & Carry Mall', 'Filmore St', 'Makati City, 1235 Metro Manila'),
(3, '81 Sen Gil Puyat', 'Makati', '1235 Metro Manila'),
(4, '7431 Yakal, Village', 'Makati', '1203 Kalakhang Maynila'),
(5, 'Makati Curb', '7433 Yakal', 'Makati, 1203 Metro Manila'),
(6, 'G/F, Cash & Carry Mall', 'Filmore St', 'Makati City, 1235 Metro Manila'),
(7, 'The Linear Tower 1 Mayapis Cor. Yakal', 'Makati', 'Philippines'),
(8, 'G/F, Cash & Carry Mall', 'Filmore St', 'Makati City, 1235 Metro Manila'),
(9, '309 Sen. Gil J. Puyat Ave', 'Pasay', '1110 Metro Manila'),
(10, 'G/F, Cash & Carry Mall', 'Filmore St', 'Makati City, 1235 Metro Manila'),
(11, '2nd Floor, Homer Easy Middle Eastern', 'Glorietta 4, East St, Ayala Center', 'Makati, 1226 Metro Manila'),
(12, 'LKV Building', '2nd floor, Makati Ave', 'Makati, Kalakhang Maynila'),
(13, 'G/F, Cash & Carry Mall', 'Filmore St', 'Makati City, 1235 Metro Manila'),
(14, 'San Antonio Residence', '1203 Sen. Gil J. Puyat Ave', 'Makati, Metro Manila'),
(15, 'The Linear Makati G/F shop19', 'Yakal st, cor., st., Mayapis', 'Makati, Metro Manila'),
(16, '1325, Filmore Avenue & Emilia Streets', 'Brgy Palanan', '1235 Makati National Capital Region'),
(17, 'Unit 118C, People Support Center (AEGIS Ayala Ave, corner Sen. Gil J. Puyat Ave', 'Makati', '1209 Metro Manila'),
(18, 'G/F, Cash & Carry Mall', 'Filmore St', 'Makati City, 1235 Metro Manila'),
(19, 'The Linear Makati Tower 2, Guijo Condo, Tower 2', 'Yakal', 'Makati, 1200 Kalakhang Maynila'),
(20, 'G/F, Yakal cor Lumbayao St and Bakawan St', 'The Grid Co-Living', 'San Antonio, Makati, Metro Manila'),
(21, 'D\' Arcade Food Park', '7433 Yakal', 'Makati, 1203 Metro Manila'),
(22, 'Unit G2 - Ground Floor, Makati Curb Building', '7433 Yakal', 'Makati, 1229 Metro Manila'),
(23, 'Upper Ground Level, Makati Cinema Square Condominium Corporation', 'Pasong Tamo corner Pasay Road', 'Makati City, Metro Manila, Philippines'),
(24, 'G/F, Cash & Carry Mall', 'Filmore St', 'Makati City, 1235 Metro Manila'),
(25, 'corner Chino Roces Ave', 'Makati', '1200 Metro Manila'),
(26, '1065 Chino Roces Ave', 'Makati', '1207 Metro Manila'),
(27, '1229', 'Metro Manila', 'Makati'),
(28, 'D\' Arcade Food Park', '7433 Yakal', 'Makati, 1203 Metro Manila'),
(29, '7427a', '7427 Yakal, Village', 'Makati, 1203 Kalakhang Maynila'),
(30, 'G/F, Cash & Carry Mall', 'Filmore St', 'Makati City, 1235 Metro Manila'),
(31, 'Shangrila Assembly Grounds', '7248 Malugay', 'Makati, 1203 Metro Manila'),
(32, '3rd floor, Cash & Carry Mall', 'Filmore St', 'Makati City, 1235 Metro Manila'),
(33, '3rd floor, Cash & Carry Mall', 'Filmore St', 'Makati City, 1235 Metro Manila'),
(34, '7433 Unit J, Ground Floor', 'Yakal St. Brgy. San Antonio', 'Makati City'),
(35, 'D\' Arcade Food Park', '7433 Yakal', 'Makati, 1203 Metro Manila'),
(36, '3rd floor, Cash & Carry Mall', 'Filmore St', 'Makati City, 1235 Metro Manila'),
(37, 'Ground Floor, The Linear Makati Tower 1', 'Malugay Street, corner Mayapis', 'Makati'),
(38, '63 Sen. Gil J. Puyat Ave', 'Makati', '1235 Metro Manila'),
(39, 'G/F, Tower 1, Avida Towers Asten', 'Malugay', 'Makati, Metro Manila'),
(40, 'The Linear Tower 1 Mayapis Street corner Yakal and', 'Malugay', 'Makati, 1203 Metro Manila'),
(41, 'Malugay st The Linear Tower 1', 'Malugay', 'Makati, 1203 Metro Manila'),
(42, 'G/F, Cash & Carry Mall', 'Filmore St', 'Makati City, 1235 Metro Manila'),
(43, '2/F Cash & Carry Mall', 'South Super Highway', 'Makati, Metro Manila'),
(44, 'Unit 2, Makati Curb Building', '7433 Yakal', 'Makati, 1223 Metro Manila'),
(45, 'D\' Arcade Food Park', '7433 Yakal', 'Makati, 1203 Metro Manila'),
(46, '7894 General Luna', 'Makati', '1210 Metro Manila'),
(47, 'G/F, Cash & Carry Mall', 'Filmore St', 'Makati City, 1235 Metro Manila'),
(48, 'G/F, Cash & Carry Mall', 'Filmore St', 'Makati City, 1235 Metro Manila'),
(49, 'Brgy, Space No. FC1-CU6', '100 Sen. Gil Puyat Ave, Corner Washington', 'Makati, 1230 Metro Manila');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `restaurant` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `restaurant`, `name`, `price`) VALUES
(1, 1, 'Grilled Chicken', 299),
(2, 1, 'Chicken Wings', 229),
(3, 1, 'Chicken Nuggets', 179),
(4, 1, 'Fries', 99),
(5, 1, 'Soft Drink', 49),
(6, 2, 'Korean Fried Chicken', 400),
(7, 2, 'Bonchon Wings', 350),
(8, 2, 'Chicken Katsu', 250),
(9, 2, 'Soy Garlic Chicken', 400),
(10, 2, 'Bibimbap', 280),
(11, 2, 'Garlic Soy Chicken', 400),
(12, 2, 'Spicy Chicken Sandwich', 180),
(13, 2, 'Korean BBQ Beef', 350),
(14, 2, 'Kimchi Fried Rice', 150),
(15, 3, 'Whopper', 250),
(16, 3, 'Chicken Fries', 150),
(17, 3, 'Cheeseburger', 150),
(18, 3, 'Double Cheeseburger', 200),
(19, 3, 'French Fries (Medium)', 80),
(20, 3, 'Onion Rings', 120),
(21, 3, 'Chicken Nuggets (6 pcs)', 120),
(22, 3, 'Soft Drink (Medium)', 70),
(23, 3, 'Sundae', 80),
(24, 3, 'Chicken Royale', 200),
(25, 4, 'Cheese Platter', 650),
(26, 4, 'Charcuterie Board', 750),
(27, 4, 'Wine Tasting Set', 1200),
(28, 4, 'Grilled Sausages', 400),
(29, 4, 'Mixed Greens Salad', 300),
(30, 4, 'Bread Basket', 150),
(31, 4, 'Assorted Cheese', 500),
(32, 4, 'Beef Carpaccio', 600),
(33, 4, 'Chocolate Fondue', 450),
(34, 4, 'Gourmet Sandwich', 350),
(35, 5, 'Peking Duck', 1200),
(36, 5, 'Dim Sum Platter', 650),
(37, 5, 'Hot and Sour Soup', 250),
(38, 5, 'Beef Chow Fun', 400),
(39, 5, 'Kung Pao Chicken', 380),
(40, 5, 'Sweet and Sour Pork', 350),
(41, 5, 'Fried Rice', 300),
(42, 5, 'Spring Rolls', 200),
(43, 5, 'Braised Abalone', 1500),
(44, 5, 'Mango Pudding', 180),
(45, 6, 'Pearl Milk Tea', 120),
(46, 6, 'Brown Sugar Milk Tea', 130),
(47, 6, 'Taro Milk Tea', 125),
(48, 6, 'Matcha Milk Tea', 135),
(49, 6, 'Mango Green Tea', 115),
(50, 6, 'Strawberry Milk Tea', 125),
(51, 6, 'Wintermelon Milk Tea', 120),
(52, 6, 'Oreo Milk Tea', 140),
(53, 6, 'Honey Lemonade', 110),
(54, 6, 'Chocolate Milk Tea', 135),
(55, 7, 'Kung Pao Chicken', 250),
(56, 7, 'Sweet and Sour Pork', 220),
(57, 7, 'Mapo Tofu', 200),
(58, 7, 'Beef with Broccoli', 240),
(59, 7, 'Fried Rice', 180),
(60, 7, 'Spring Rolls', 120),
(61, 7, 'Hot and Sour Soup', 150),
(62, 7, 'Dumplings', 200),
(63, 7, 'Chow Mein', 190),
(64, 7, 'Sesame Chicken', 230),
(65, 8, 'Mozzarella Sticks', 150),
(66, 8, 'Cheesy Pizza', 300),
(67, 8, 'Mozzarella Burger', 250),
(68, 8, 'Cheesy Fries', 180),
(69, 8, 'Garlic Bread with Mozzarella', 120),
(70, 8, 'Mozzarella Pasta', 220),
(71, 8, 'Cheese Dip', 140),
(72, 8, 'Chicken Mozzarella Wrap', 230),
(73, 8, 'Mozzarella Sticks with Marinara', 160),
(74, 8, 'Four Cheese Pizza', 320),
(75, 9, 'Chao Fan', 140),
(76, 9, 'Beef Broccoli', 180),
(77, 9, 'Shabu-Shabu', 220),
(78, 9, 'Hong Kong Style Porkchop', 200),
(79, 9, 'Chicken Lauriat', 250),
(80, 9, 'Spring Rolls (Shanghai)', 120),
(81, 9, 'Hototay Soup', 150),
(82, 9, 'Soy Chicken', 190),
(83, 9, 'Pancit Canton', 170),
(84, 9, 'Halo-Halo', 130),
(85, 10, 'Coffee Blend (Medium)', 150),
(86, 10, 'Iced Coffee (Medium)', 180),
(87, 10, 'Tea Latte', 190),
(88, 10, 'Cappuccino', 200),
(89, 10, 'Espresso', 120),
(90, 10, 'Bagel with Cream Cheese', 160),
(91, 10, 'Chocolate Chip Muffin', 140),
(92, 10, 'Turkey Ham & Cheese Sandwich', 220),
(93, 10, 'Berry & Yogurt Parfait', 180),
(94, 10, 'Caramel Crunch Ice Blended', 250),
(95, 11, 'Baguette', 60),
(96, 11, 'Croissant', 85),
(97, 11, 'Chocolate Eclair', 95),
(98, 11, 'Quiche Lorraine', 150),
(99, 11, 'Chicken and Mushroom Pie', 180),
(100, 11, 'French Toast', 140),
(101, 11, 'Grilled Cheese Sandwich', 120),
(102, 11, 'Pasta Carbonara', 220),
(103, 11, 'Caesar Salad', 170),
(104, 11, 'Cappuccino', 150),
(105, 12, 'Hummus', 150),
(106, 12, 'Falafel Wrap', 180),
(107, 12, 'Shawarma Wrap', 200),
(108, 12, 'Chicken Kebabs', 220),
(109, 12, 'Beef Kebabs', 240),
(110, 12, 'Tabbouleh Salad', 160),
(111, 12, 'Stuffed Grape Leaves', 190),
(112, 12, 'Baklava', 120),
(113, 12, 'Pita Bread', 60),
(114, 12, 'Mixed Platter', 280),
(115, 13, 'Kebab Barg', 300),
(116, 13, 'Kebab Koobideh', 250),
(117, 13, 'Shirin Polow', 220),
(118, 13, 'Fesenjan', 280),
(119, 13, 'Ghormeh Sabzi', 270),
(120, 13, 'Dolmeh', 180),
(121, 13, 'Hummus', 150),
(122, 13, 'Baba Ganoush', 160),
(123, 13, 'Persian Salad', 140),
(124, 13, 'Baklava', 120),
(125, 14, 'Chickenjoy (Regular)', 150),
(126, 14, 'Chickenjoy (Spicy)', 155),
(127, 14, 'Burger Steak', 100),
(128, 14, 'Jolly Hotdog', 120),
(129, 14, 'Jolly Spaghetti', 120),
(130, 14, 'Burger Steak with Rice', 130),
(131, 14, 'Palabok Fiesta', 140),
(132, 14, 'Halo-Halo Sundae', 80),
(133, 14, 'French Fries (Regular)', 75),
(134, 14, 'French Fries (Large)', 90),
(135, 15, 'Kape Sur Signature Coffee', 150),
(136, 15, 'Iced Coffee', 160),
(137, 15, 'Spanish Churros', 120),
(138, 15, 'Pasta Carbonara', 180),
(139, 15, 'Beef Tapa', 220),
(140, 15, 'Chicken Adobo', 200),
(141, 15, 'Club Sandwich', 150),
(142, 15, 'Caesar Salad', 140),
(143, 15, 'Chocolate Cake', 130),
(144, 15, 'Lemonade', 110),
(145, 16, 'Ramen', 250),
(146, 16, 'Sushi Roll (California Roll)', 180),
(147, 16, 'Tempura (Shrimp)', 220),
(148, 16, 'Teriyaki Chicken', 240),
(149, 16, 'Gyoza', 160),
(150, 16, 'Sashimi (Salmon)', 280),
(151, 16, 'Udon Noodles', 230),
(152, 16, 'Japanese Curry Rice', 200),
(153, 16, 'Edamame', 120),
(154, 16, 'Matcha Ice Cream', 150),
(155, 17, 'Original Recipe Chicken (2 pieces)', 150),
(156, 17, 'Hot Wings (6 pieces)', 200),
(157, 17, 'Zinger Burger', 130),
(158, 17, 'Chicken Sandwich', 140),
(159, 17, 'Cheesy Bacon Fries', 120),
(160, 17, 'Mashed Potatoes', 70),
(161, 17, 'Gravy', 30),
(162, 17, 'Corn on the Cob', 80),
(163, 17, 'Soft Drink (Regular)', 50),
(164, 17, 'Chocolate Sundae', 90),
(165, 19, 'Koomi Milk Tea', 120),
(166, 19, 'Brown Sugar Milk Tea', 130),
(167, 19, 'Matcha Milk Tea', 140),
(168, 19, 'Taro Milk Tea', 130),
(169, 19, 'Classic Milk Tea', 110),
(170, 19, 'Cheese Tea', 150),
(171, 19, 'Fruit Tea', 140),
(172, 19, 'Yakult Drink', 125),
(173, 19, 'Cheese Cake', 160),
(174, 19, 'Brown Sugar Pearl Milk Tea', 135),
(175, 20, 'Yang Chow Fried Rice', 200),
(176, 20, 'Sweet and Sour Pork', 250),
(177, 20, 'Beef Broccoli', 300),
(178, 20, 'Chicken Adobo', 220),
(179, 20, 'Spring Rolls', 150),
(180, 20, 'Hot and Sour Soup', 180),
(181, 20, 'Dim Sum', 250),
(182, 20, 'Kung Pao Chicken', 270),
(183, 20, 'Pancit Canton', 220),
(184, 20, 'Fried Dumplings', 180),
(185, 21, 'Wonton Noodle Soup', 220),
(186, 21, 'Pork Siomai', 160),
(187, 21, 'Beef Brisket Noodle Soup', 250),
(188, 21, 'Sweet and Sour Pork', 240),
(189, 21, 'Fried Rice', 200),
(190, 21, 'Spring Rolls', 150),
(191, 21, 'Hainanese Chicken Rice', 270),
(192, 21, 'Garlic Fried Rice', 180),
(193, 21, 'Noodles with Oyster Sauce', 210),
(194, 21, 'Hot and Sour Soup', 190),
(195, 22, 'Dim Sum Platter', 280),
(196, 22, 'Peking Duck', 750),
(197, 22, 'Fried Noodles', 220),
(198, 22, 'Hot and Sour Soup', 190),
(199, 22, 'Beef with Broccoli', 250),
(200, 22, 'Sweet and Sour Pork', 240),
(201, 22, 'Chicken Fried Rice', 200),
(202, 22, 'Spring Rolls', 150),
(203, 22, 'Egg Drop Soup', 180),
(204, 22, 'Crispy Pork Belly', 300),
(205, 23, 'Spicy Hot Pot', 350),
(206, 23, 'Beef Hot Pot', 400),
(207, 23, 'Chicken Hot Pot', 320),
(208, 23, 'Seafood Hot Pot', 450),
(209, 23, 'Vegetable Hot Pot', 270),
(210, 23, 'Pork Belly Hot Pot', 380),
(211, 23, 'Noodles', 150),
(212, 23, 'Dumplings', 180),
(213, 23, 'Rice', 100),
(214, 23, 'Fried Tofu', 160),
(215, 24, 'Chicken Inasal', 180),
(216, 24, 'Pork BBQ', 150),
(217, 24, 'Halo-Halo', 90),
(218, 24, 'Garlic Rice', 30),
(219, 24, 'Sizzling Chicken', 220),
(220, 24, 'Chicken Leg', 200),
(221, 24, 'Pancit Bihon', 120),
(222, 24, 'Corn Soup', 60),
(223, 24, 'Puto', 40),
(224, 24, 'Banana Chips', 50),
(225, 25, 'Classic Pan De Sal', 65),
(226, 25, 'Lemon Square', 150),
(227, 25, 'Signature Baked Macaroni', 180),
(228, 25, 'Cheesy Baked Macaroni', 200),
(229, 25, 'Pancit Canton', 150),
(230, 25, 'Crispy Pork Belly', 250),
(231, 25, 'Signature Hot Chocolate', 85),
(232, 25, 'Banana Bread', 75),
(233, 25, 'Baked Macaroni with Meat Sauce', 210),
(234, 25, 'Egg Pie', 100),
(235, 26, 'Big Mac', 180),
(236, 26, 'Quarter Pounder with Cheese', 200),
(237, 26, 'McChicken', 150),
(238, 26, 'French Fries', 75),
(239, 26, 'McFlurry', 90),
(240, 26, 'Coke', 50),
(241, 26, 'Happy Meal', 140),
(242, 27, 'Mixue Ice Cream', 60),
(243, 27, 'Mixue Milk Tea', 80),
(244, 27, 'Taro Ice Cream', 65),
(245, 27, 'Chocolate Ice Cream', 70),
(246, 27, 'Strawberry Ice Cream', 65),
(247, 27, 'Matcha Milk Tea', 85),
(248, 28, 'Beef Hot Pot', 350),
(249, 28, 'Chicken Hot Pot', 300),
(250, 28, 'Pork Hot Pot', 320),
(251, 28, 'Seafood Hot Pot', 380),
(252, 28, 'Vegetable Hot Pot', 250),
(253, 28, 'Hot Pot Noodles', 150),
(254, 29, 'Mango Shake', 120),
(255, 29, 'Mango Smoothie', 130),
(256, 29, 'Mango Ice Cream', 100),
(257, 29, 'Mango Crepe', 140),
(258, 29, 'Mango Cake', 180),
(259, 29, 'Mango Float', 150),
(260, 30, 'Beef Hot Pot', 320),
(261, 30, 'Pork Hot Pot', 300),
(262, 30, 'Chicken Hot Pot', 280),
(263, 30, 'Seafood Hot Pot', 350),
(264, 30, 'Vegetable Hot Pot', 250),
(265, 30, 'Hot Pot Noodles', 150),
(266, 31, 'Classic Pancakes', 160),
(267, 31, 'Banana Pancakes', 180),
(268, 31, 'Pancake Breakfast', 220),
(269, 31, 'Pasta', 200),
(270, 31, 'Chicken Chop', 230),
(271, 31, 'Waffles', 180),
(272, 32, 'Cappuccino', 130),
(273, 32, 'Latte', 140),
(274, 32, 'Americano', 120),
(275, 32, 'Espresso', 110),
(276, 32, 'Mocha', 150),
(277, 32, 'Pastries', 80),
(278, 33, 'Classic Hot Dog', 90),
(279, 33, 'Cheese Dog', 110),
(280, 33, 'Chili Dog', 120),
(281, 33, 'Potdog Special', 130),
(282, 33, 'Fries', 70),
(283, 33, 'Onion Rings', 80),
(284, 34, 'Pork Barbecue', 150),
(285, 34, 'Chicken Barbecue', 140),
(286, 34, 'Beef Short Ribs', 180),
(287, 34, 'Sizzling Sisig', 160),
(288, 34, 'Garlic Rice', 50),
(289, 34, 'Pancit Canton', 120),
(290, 35, 'Beef Tapa', 200),
(291, 35, 'Longganisa', 180),
(292, 35, 'Bangus', 190),
(293, 35, 'Adobo', 220),
(294, 35, 'Fried Chicken', 210),
(295, 35, 'Rice', 30),
(296, 36, 'Grilled Chicken', 150),
(297, 36, 'Chicken Wings', 120),
(298, 36, 'Chicken Thigh', 140),
(299, 36, 'Pork BBQ', 180),
(300, 36, 'Pancit', 160),
(301, 36, 'Garlic Rice', 50),
(302, 37, 'New York Style Pizza', 200),
(303, 37, 'Cheesy Lasagna', 250),
(304, 37, 'Baked Ziti', 220),
(305, 37, 'Pizza by the Slice', 90),
(306, 37, 'Garlic Bread', 80),
(307, 37, 'Caesar Salad', 120),
(308, 38, 'Instant Noodles', 50),
(309, 38, 'Hotdog', 60),
(310, 38, 'Chips', 45),
(311, 38, 'Soda', 35),
(312, 38, 'Sandwich', 80),
(313, 38, 'Coffee', 70),
(314, 39, 'Large Pizza', 550),
(315, 39, 'Medium Pizza', 450),
(316, 39, 'Chicken & Mojos', 300),
(317, 39, 'Pasta', 250),
(318, 39, 'Garlic Bread', 100),
(319, 39, 'Salad', 150),
(320, 40, 'Caramel Macchiato', 160),
(321, 40, 'Caffè Latte', 140),
(322, 40, 'Java Chip Frappuccino', 180),
(323, 40, 'Strawberry Açaí Refresher', 150),
(324, 40, 'Chocolate Croissant', 120),
(325, 40, 'Ham & Cheese Panini', 200),
(326, 41, 'Beef Broccoli', 250),
(327, 41, 'Sweet and Sour Pork', 270),
(328, 41, 'Kung Pao Chicken', 240),
(329, 41, 'Hot and Sour Soup', 180),
(330, 41, 'Chow Mein', 220),
(331, 41, 'Spring Rolls', 150),
(332, 42, 'Classic Milk Tea', 120),
(333, 42, 'Matcha Milk Tea', 130),
(334, 42, 'Brown Sugar Milk Tea', 140),
(335, 42, 'Oreo Milk Tea', 150),
(336, 42, 'Taro Milk Tea', 130),
(337, 42, 'Cheese Tea', 140),
(338, 43, 'Teriyaki Chicken', 290),
(339, 43, 'Beef Teriyaki', 310),
(340, 43, 'Salmon Teriyaki', 350),
(341, 43, 'Chicken Katsu', 280),
(342, 43, 'Ebi Tempura', 320),
(343, 43, 'Yakimeshi', 200),
(344, 44, 'Turkey Club Sandwich', 180),
(345, 44, 'Ham and Cheese Sandwich', 160),
(346, 44, 'Chicken Caesar Wrap', 190),
(347, 44, 'Vegetable Sandwich', 150),
(348, 44, 'Tuna Melt', 170),
(349, 44, 'BLT Sandwich', 180),
(350, 45, 'Roast Beef', 250),
(351, 45, 'Pork Chops', 270),
(352, 45, 'Grilled Chicken', 240),
(353, 45, 'Mashed Potatoes', 100),
(354, 45, 'Corn on the Cob', 80),
(355, 45, 'House Salad', 90),
(356, 46, 'Beef Shawarma', 150),
(357, 46, 'Chicken Shawarma', 140),
(358, 46, 'Shawarma Wrap', 160),
(359, 46, 'Shawarma Rice Plate', 180),
(360, 46, 'Falafel Wrap', 140),
(361, 46, 'Hummus', 120),
(362, 47, 'Baconator', 300),
(363, 47, 'Spicy Chicken Sandwich', 250),
(364, 47, 'Frosty', 130),
(365, 47, 'Chicken Nuggets', 120),
(366, 47, 'Cheeseburger', 190),
(367, 47, 'French Fries', 80),
(368, 48, 'New York’s Finest Pizza', 550),
(369, 48, 'Four Cheese Pizza', 600),
(370, 48, 'Chicken Alfredo', 300),
(371, 48, 'Garlic Parmesan Wings', 220),
(372, 48, 'Caesar Salad', 150),
(373, 48, 'Brownies', 120),
(374, 49, 'Classic Pearl Milk Tea', 100),
(375, 49, 'Taro Pearl Milk Tea', 120),
(376, 49, 'Matcha Pearl Milk Tea', 120),
(377, 49, 'Chocolate Pearl Milk Tea', 130),
(378, 49, 'Mango Pearl Milk Tea', 120),
(379, 49, 'Yogurt Pearl Milk Tea', 110),
(380, 50, 'Espresso', 110),
(381, 50, 'Cappuccino', 130),
(382, 50, 'Latte', 140),
(383, 50, 'Mocha', 150),
(384, 50, 'Iced Coffee', 120),
(385, 50, 'Croissant', 90);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` int(11) NOT NULL,
  `distance` double NOT NULL,
  `rating` double NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id`, `name`, `location`, `distance`, `rating`, `link`) VALUES
(1, '24 Chicken', 1, 230, 4.8, 'https://24chicken.com/our-menu'),
(2, 'Bonchon', 2, 450, 3.4, 'https://www.bonchon.com.ph/menu/'),
(3, 'Burger King', 3, 400, 4.6, 'https://www.burgerking.com.ph/'),
(4, 'Cave Werdenberg', 4, 100, 5, 'https://www.facebook.com/CaveWerdenbergWineBar/'),
(5, 'Chan Ren Fang', 5, 6, 4.8, 'https://www.facebook.com/photo/?fbid=5467227343293164&set=p.5467227343293164'),
(6, 'Chatime', 6, 450, 3.6, 'https://chatime.com.ph/menu2021/'),
(7, 'Chen ji Cuisine', 7, 200, 0, 'https://www.facebook.com/p/Chen-ji-Cuisine-100087728487290/'),
(8, 'ChizMozza', 8, 450, 1, 'https://chizmozzaph.com/pages/store-menu'),
(9, 'Chowking', 9, 1400, 3.8, 'https://www.chowking.ph/menu'),
(10, 'Coffee Bean and Tea Leaf', 10, 0, 0, 'https://www.coffeebean.com.ph'),
(11, 'French Baker', 11, 450, 3.1, 'https://thefrenchbakeronline.com/collections'),
(12, 'Homer', 12, 2900, 3, 'https://booky.ph/biz/homer-glorietta-4/menu/'),
(13, 'Hossein\'s', 13, 2900, 4.1, 'https://booky.ph/biz/hossein-s-persian-kebab-makati-ave/menu/'),
(14, 'Jollibee', 14, 450, 4, 'https://www.jollibeedelivery.com/fullmenu'),
(15, 'Kape Sur', 15, 500, 5, 'https://booky.ph/biz/kape-sur-san-antonio-residences/menu/'),
(16, 'Kenshin', 16, 72, 4.2, 'https://booky.ph/biz/kenshin-san-antonio/menu/'),
(17, 'KFC', 17, 500, 4, 'https://www.kfc.com.ph/menu/overview'),
(18, 'KFC', 18, 500, 3.9, 'https://www.kfc.com.ph/menu/overview?gad_source=1&gclid=CjwKCAjw74e1BhBnEiwAbqOAjK4UwMVU_9wrpmN4-QfbHMwNTD5o0J8KmV8f3rIrsHdSMRkz2HVy2hoC_ncQAvD_BwE'),
(19, 'Koomi', 19, 1100, 4.4, 'https://booky.ph/biz/koomi-cash-carry-mall/menu/'),
(20, 'Kopalmsing', 20, 600, 4.2, 'https://primer.com.ph/food/cuisines/chinese/ko-palm-sing/'),
(21, 'Ling Nam', 21, 72, 4.5, 'https://www.facebook.com/photo/?fbid=921112493051621&set=a.601114645051409'),
(22, 'Lotus', 22, 400, 4.2, 'https://www.facebook.com/profile.php?id=61558308053525&mibextid=ZbWKwL'),
(23, 'LuoGuo Restaurant', 23, 84, 4.1, 'https://primer.com.ph/food/wp-content/uploads/sites/4/2024/01/LuoGuo-menu.jpg'),
(24, 'Mang Inasal', 24, 6, 4, 'https://www.manginasal.ph/menu'),
(25, 'Mary Grace', 25, 1400, 3, 'https://www.marygracecafe.com'),
(26, 'McDonald\'s', 26, 450, 5, 'https://mcdelivery.com.ph/menu/'),
(27, 'Mixue', 27, 600, 4.2, 'https://www.foodpanda.ph/restaurant/ax9l/mixue-ice-cream-and-tea-dela-rosa-street'),
(28, 'Mr. Hot Pot 鍋先生', 28, 2200, 4.3, 'https://menu.restaurantguru.com/m8/Restaurant-Mr-Hot-Pot-menu-1.jpg'),
(29, 'Oh Mango', 29, 1500, 3.3, 'https://www.facebook.com/OhMangoShakeBar/'),
(30, 'One-Pot Hot Pot', 30, 600, 4.4, 'https://booky.ph/biz/one-pot-manila-shore-residences/menu/'),
(31, 'Pancake House', 31, 1500, 5, 'https://www.pancakehouse.com.ph/'),
(32, 'Pickup Coffee', 32, 450, 4.2, 'https://www.pickup-coffee.com'),
(33, 'Potdog', 33, 800, 4.3, 'https://booky.ph/biz/potdog-yummyyes-delights-lkg-tower/menu/'),
(34, 'Reyes Barbecue', 34, 450, 4.4, 'https://reyesbarbecue.net/'),
(35, 'Rodic\'s Diner', 35, 450, 4.1, 'https://booky.ph/biz/rodic-s-diner-makati-curb-bldg/menu/'),
(36, 'Samuk Manuk', 36, 600, 3.5, 'https://www.facebook.com/SamukManuk?mibextid=ZbWKwL'),
(37, 'Sbarro', 37, 200, 4.3, 'https://www.sbarro.ph/menu'),
(38, 'Seven Eleven', 38, 200, 2.8, 'https://www.7-eleven.com.ph/'),
(39, 'Shakeys', 39, 120, 3.5, 'https://www.shakeyspizza.ph/catalog/categories/all'),
(40, 'Starbucks', 40, 600, 4.5, 'https://starbucks.ph/menu'),
(41, 'Supermyen Chinese', 41, 200, 3.8, 'https://www.facebook.com/koukouxiang999/'),
(42, 'Taiho Milktea', 42, 200, 3.7, 'https://booky.ph/biz/taiho-milktea-the-linear-tower-1/menu/'),
(43, 'Teriyaki Boy', 43, 450, 4.4, 'https://delivery.teriyakiboy.com.ph/'),
(44, 'The Sandwich Guy', 44, 600, 4.1, 'https://booky.ph/biz/the-sandwich-guy-cash-carry-mall/menu/'),
(45, 'Uncle John\'s', 45, 500, 4.3, 'https://mart.grab.com/ph/en/merchant/2-C36BLXDAJAJJBE'),
(46, 'Uncle Moe\'s Shawarma', 46, 450, 3.9, 'https://booky.ph/biz/uncle-moe-s-shawarma-hub-makati-curb-bldg/menu/'),
(47, 'Wendy\'s', 47, 600, 4.4, 'https://wendys.com.ph/'),
(48, 'Yellow Cab', 48, 850, 4.3, 'https://delivery.yellowcabpizza.com/'),
(49, 'Zagu', 48, 1200, 3.5, 'https://www.zagushakes.com/menu-board.php'),
(50, 'Zus Coffee', 49, 0, 3, 'https://zuscoffee.ph/menu/');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `restaurant` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `restaurant`, `type`) VALUES
(1, 1, 'Fast Food'),
(2, 2, 'Fast Food'),
(3, 3, 'Fast Food'),
(4, 4, 'Bar'),
(5, 5, 'Chinese'),
(6, 6, 'Beverages'),
(7, 7, 'Chinese'),
(8, 8, 'Fast food'),
(9, 9, 'Chinese'),
(10, 10, 'Cafe'),
(11, 11, 'Cafe'),
(12, 12, 'Middle Eastern'),
(13, 13, 'Middle Eastern'),
(14, 14, 'Fast Food'),
(15, 15, 'Beverages'),
(16, 16, 'Japanese'),
(17, 17, 'Fast Food'),
(18, 18, 'Fast Food'),
(19, 19, 'Milk Tea'),
(20, 20, 'Chinese'),
(21, 21, 'Chinese'),
(22, 22, 'Beverages'),
(23, 23, 'Chinese'),
(24, 24, 'Filipino'),
(25, 25, 'Cafe'),
(26, 26, 'Fast Food'),
(27, 27, 'Dessert'),
(28, 28, 'Hot Pot'),
(29, 29, 'Beverages'),
(30, 30, 'Hot Pot'),
(31, 31, 'Filipino'),
(32, 32, 'Cafe'),
(33, 33, 'Dimsum'),
(34, 34, 'Filipino'),
(35, 35, 'Filipino'),
(36, 36, 'Singaporean'),
(37, 37, 'Pizza'),
(38, 38, 'Convenience Store'),
(39, 39, 'Pizza'),
(40, 40, 'Cafe'),
(41, 41, 'Chinese'),
(42, 42, 'Milk Tea'),
(43, 43, 'Japanese'),
(44, 44, 'Cafe'),
(45, 45, 'Convenience Store'),
(46, 46, 'Middle Eastern'),
(47, 47, 'Fast Food'),
(48, 48, 'Pizza'),
(49, 49, 'Milk Tea'),
(50, 50, 'Beverages');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant` (`restaurant`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location` (`location`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant` (`restaurant`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`restaurant`) REFERENCES `restaurant` (`id`);

--
-- Constraints for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD CONSTRAINT `restaurant_ibfk_1` FOREIGN KEY (`location`) REFERENCES `location` (`id`);

--
-- Constraints for table `type`
--
ALTER TABLE `type`
  ADD CONSTRAINT `type_ibfk_1` FOREIGN KEY (`restaurant`) REFERENCES `restaurant` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
