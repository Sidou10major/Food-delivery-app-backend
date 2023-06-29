-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 23 juin 2023 à 16:33
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `deliveryappdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `menuitems`
--

DROP TABLE IF EXISTS `menuitems`;
CREATE TABLE IF NOT EXISTS `menuitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `restaurant_id` (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `menuitems`
--

INSERT INTO `menuitems` (`id`, `restaurant_id`, `name`, `description`, `price`, `image`) VALUES
(6, 3, 'Classic Burger', 'A timeless favorite with a juicy beef patty, melted cheese, crisp lettuce, and tangy pickles. Served with a side of fries.', '350.00', 'classic_burger.jpg'),
(7, 3, 'Spicy Chicken Burger', 'A fiery chicken patty topped with spicy mayo, lettuce, and tomato. Served with a side of onion rings.', '300.00', 'spicy_chicken_burger.jpg'),
(8, 3, 'BBQ Bacon Burger', 'Indulge in the smoky flavors of this burger topped with BBQ sauce, crispy bacon, and melted cheddar cheese. Served with a side of coleslaw.', '400.00', 'bbq_bacon_burger.jpg'),
(9, 3, 'Mushroom Swiss Burger', 'Savor the earthy combination of sautéed mushrooms, melted Swiss cheese, and tangy Dijon mustard in this burger. Served with a side of sweet potato fries.', '350.00', 'mushroom_swiss_burger.jpg'),
(10, 3, 'Double Cheeseburger', 'Double the cheese, double the flavor! This burger features two juicy beef patties, melted cheese, and all the classic fixings. Served with a side of onion rings.', '450.00', 'double_cheeseburger.jpg'),
(11, 3, 'Veggie Burger', 'A delicious plant-based option with a flavorful veggie patty, fresh vegetables, and vegan mayo. Served with a side of mixed greens.', '300.00', 'veggie_burger.jpg'),
(12, 3, 'Hawaiian Burger', 'Escape to the tropics with this burger topped with grilled pineapple, teriyaki sauce, and crispy bacon. Served with a side of sweet potato fries.', '400.00', 'hawaiian_burger.jpg'),
(13, 3, 'Gourmet Truffle Burger', 'Indulge in luxury with this gourmet burger featuring truffle-infused sauce, caramelized onions, and melted Gruyère cheese. Served with a side of truffle fries.', '500.00', 'truffle_burger.jpg'),
(14, 3, 'Jalapeno Pepper Jack Burger', 'For the spice lovers, this burger packs a punch with jalapenos, pepper jack cheese, and chipotle mayo. Served with a side of loaded potato wedges.', '350.00', 'jalapeno_burger.jpg'),
(15, 3, 'Breakfast Burger', 'Start your day off right with this burger topped with a fried egg, crispy bacon, and melted cheese. Served with a side of hash browns.', '400.00', 'breakfast_burger.jpg'),
(16, 4, 'Classic Beef Burger', 'A classic beef patty topped with lettuce, tomato, and onions. Served with a side of fries.', '350.00', 'classic_beef_burger.jpg'),
(17, 4, 'Cheeseburger', 'A mouthwatering cheeseburger with a juicy beef patty, melted cheese, and pickles. Served with a side of onion rings.', '400.00', 'cheeseburger.jpg'),
(18, 4, 'Bacon Ranch Burger', 'Indulge in the flavors of crispy bacon, creamy ranch sauce, and lettuce in this delicious burger. Served with a side of coleslaw.', '450.00', 'bacon_ranch_burger.jpg'),
(19, 4, 'Spicy Jalapeno Burger', 'For the spice lovers, this burger features jalapenos, pepper jack cheese, and spicy mayo. Served with a side of curly fries.', '400.00', 'spicy_jalapeno_burger.jpg'),
(20, 4, 'Mushroom Swiss Burger', 'Savor the combination of sautéed mushrooms, melted Swiss cheese, and tangy Dijon mustard in this burger. Served with a side of sweet potato fries.', '450.00', 'mushroom_swiss_burger.jpg'),
(21, 4, 'BBQ Bacon Cheddar Burger', 'Indulge in the smoky goodness of BBQ sauce, crispy bacon, and melted cheddar cheese in this burger. Served with a side of loaded potato wedges.', '500.00', 'bbq_bacon_cheddar_burger.jpg'),
(22, 4, 'Chicken Avocado Burger', 'A delicious grilled chicken burger topped with fresh avocado, lettuce, and tomato. Served with a side of coleslaw.', '400.00', 'chicken_avocado_burger.jpg'),
(23, 4, 'Teriyaki Pineapple Burger', 'Escape to the tropical flavors with this burger topped with teriyaki sauce and grilled pineapple. Served with a side of sweet potato fries.', '450.00', 'teriyaki_pineapple_burger.jpg'),
(24, 4, 'Mediterranean Lamb Burger', 'Experience the Mediterranean flavors with a juicy lamb patty, tzatziki sauce, and fresh vegetables. Served with a side of Greek salad.', '500.00', 'mediterranean_lamb_burger.jpg'),
(25, 4, 'Veggie Burger', 'A delicious plant-based option with a flavorful veggie patty, fresh vegetables, and vegan mayo. Served with a side of mixed greens.', '350.00', 'veggie_burger.jpg'),
(26, 5, 'Crispy Chicken Burger', 'A crispy chicken patty topped with zesty mayo, lettuce, and tomato. Served with a side of curly fries.', '300.00', 'crispy_chicken_burger.jpg'),
(27, 5, 'Cheesy Bacon Burger', 'A heavenly combination of juicy beef patty, melted cheese, and crispy bacon. Served with a side of onion rings.', '400.00', 'cheesy_bacon_burger.jpg'),
(28, 5, 'Spicy Crispy Fish Burger', 'Savor the flavors of crispy fish fillet, spicy mayo, and fresh lettuce in this delicious burger. Served with a side of coleslaw.', '350.00', 'spicy_crispy_fish_burger.jpg'),
(29, 5, 'Mushroom Swiss Chicken Burger', 'Enjoy the combination of grilled chicken, sautéed mushrooms, and melted Swiss cheese. Served with a side of sweet potato fries.', '400.00', 'mushroom_swiss_chicken_burger.jpg'),
(30, 5, 'Double Cheeseburger', 'Double the cheese, double the flavor! This burger features two juicy beef patties, melted cheese, and all the classic fixings. Served with a side of curly fries.', '450.00', 'double_cheeseburger.jpg'),
(31, 5, 'BBQ Pulled Pork Burger', 'Indulge in the smoky flavors of tender pulled pork, BBQ sauce, and coleslaw in this mouthwatering burger. Served with a side of onion rings.', '450.00', 'bbq_pulled_pork_burger.jpg'),
(32, 5, 'Veggie Delight Burger', 'A delicious plant-based option with a veggie patty, fresh vegetables, and tangy sauce. Served with a side of mixed greens.', '350.00', 'veggie_delight_burger.jpg'),
(33, 5, 'Hawaiian Chicken Burger', 'Escape to the tropics with this chicken burger topped with grilled pineapple, teriyaki sauce, and crispy bacon. Served with a side of sweet potato fries.', '400.00', 'hawaiian_chicken_burger.jpg'),
(34, 5, 'Crispy BBQ Onion Burger', 'Indulge in the flavors of crispy onion rings, smoky BBQ sauce, and melted cheese in this delicious burger. Served with a side of loaded potato wedges.', '450.00', 'crispy_bbq_onion_burger.jpg'),
(35, 5, 'Buffalo Chicken Burger', 'For the spice lovers, this burger features crispy chicken tossed in tangy buffalo sauce with lettuce and ranch dressing. Served with a side of curly fries.', '350.00', 'buffalo_chicken_burger.jpg'),
(36, 6, 'Classic Cheeseburger', 'A classic cheeseburger with a juicy beef patty, melted cheese, lettuce, and tomato. Served with a side of fries.', '350.00', 'classic_cheeseburger.jpg'),
(37, 6, 'Bacon Avocado Burger', 'Indulge in the flavors of crispy bacon, fresh avocado, and tangy mayo in this delicious burger. Served with a side of onion rings.', '400.00', 'bacon_avocado_burger.jpg'),
(38, 6, 'Spicy Jalapeno Burger', 'For the spice lovers, this burger features jalapenos, pepper jack cheese, and chipotle mayo. Served with a side of curly fries.', '400.00', 'spicy_jalapeno_burger.jpg'),
(39, 6, 'Mushroom Swiss Burger', 'Savor the combination of sautéed mushrooms, melted Swiss cheese, and tangy Dijon mustard in this burger. Served with a side of sweet potato fries.', '350.00', 'mushroom_swiss_burger.jpg'),
(40, 6, 'BBQ Bacon Cheddar Burger', 'Indulge in the smoky goodness of BBQ sauce, crispy bacon, and melted cheddar cheese in this burger. Served with a side of loaded potato wedges.', '500.00', 'bbq_bacon_cheddar_burger.jpg'),
(41, 6, 'Chicken Club Burger', 'A delicious grilled chicken burger topped with crispy bacon, lettuce, tomato, and mayo. Served with a side of coleslaw.', '400.00', 'chicken_club_burger.jpg'),
(42, 6, 'Teriyaki Pineapple Burger', 'Escape to the tropical flavors with this burger topped with teriyaki sauce and grilled pineapple. Served with a side of sweet potato fries.', '450.00', 'teriyaki_pineapple_burger.jpg'),
(43, 6, 'Gourmet Truffle Burger', 'Indulge in luxury with this gourmet burger featuring truffle-infused sauce, caramelized onions, and melted Gruyère cheese. Served with a side of truffle fries.', '500.00', 'gourmet_truffle_burger.jpg'),
(44, 6, 'Jalapeno Popper Burger', 'Experience the perfect blend of spicy jalapenos, cream cheese, and crispy onion straws in this delicious burger. Served with a side of curly fries.', '400.00', 'jalapeno_popper_burger.jpg'),
(45, 6, 'Veggie Burger', 'A delicious plant-based option with a flavorful veggie patty, fresh vegetables, and tangy sauce. Served with a side of mixed greens.', '350.00', 'veggie_burger.jpg'),
(46, 7, 'Classic Cheeseburger', 'A classic cheeseburger with a juicy beef patty, melted cheese, lettuce, and tomato. Served with a side of fries.', '350.00', 'classic_cheeseburger.jpg'),
(47, 7, 'Bacon Avocado Burger', 'Indulge in the flavors of crispy bacon, fresh avocado, and tangy mayo in this delicious burger. Served with a side of onion rings.', '400.00', 'bacon_avocado_burger.jpg'),
(48, 7, 'Spicy Jalapeno Burger', 'For the spice lovers, this burger features jalapenos, pepper jack cheese, and chipotle mayo. Served with a side of curly fries.', '400.00', 'spicy_jalapeno_burger.jpg'),
(49, 7, 'Mushroom Swiss Burger', 'Savor the combination of sautéed mushrooms, melted Swiss cheese, and tangy Dijon mustard in this burger. Served with a side of sweet potato fries.', '350.00', 'mushroom_swiss_burger.jpg'),
(50, 7, 'BBQ Bacon Cheddar Burger', 'Indulge in the smoky goodness of BBQ sauce, crispy bacon, and melted cheddar cheese in this burger. Served with a side of loaded potato wedges.', '500.00', 'bbq_bacon_cheddar_burger.jpg'),
(51, 7, 'Chicken Club Burger', 'A delicious grilled chicken burger topped with crispy bacon, lettuce, tomato, and mayo. Served with a side of coleslaw.', '400.00', 'chicken_club_burger.jpg'),
(52, 7, 'Teriyaki Pineapple Burger', 'Escape to the tropical flavors with this burger topped with teriyaki sauce and grilled pineapple. Served with a side of sweet potato fries.', '450.00', 'teriyaki_pineapple_burger.jpg'),
(53, 7, 'Gourmet Truffle Burger', 'Indulge in luxury with this gourmet burger featuring truffle-infused sauce, caramelized onions, and melted Gruyère cheese. Served with a side of truffle fries.', '500.00', 'gourmet_truffle_burger.jpg'),
(54, 7, 'Jalapeno Popper Burger', 'Experience the perfect blend of spicy jalapenos, cream cheese, and crispy onion straws in this delicious burger. Served with a side of curly fries.', '400.00', 'jalapeno_popper_burger.jpg'),
(55, 7, 'Veggie Burger', 'A delicious plant-based option with a flavorful veggie patty, fresh vegetables, and tangy sauce. Served with a side of mixed greens.', '350.00', 'veggie_burger.jpg'),
(56, 8, 'Mediterranean Bowl', 'A nourishing bowl featuring a flavorful combination of grilled chicken, quinoa, fresh vegetables, and a tangy Mediterranean dressing.', '400.00', 'mediterranean_bowl.jpg'),
(57, 8, 'Teriyaki Salmon Bowl', 'Indulge in a bowl filled with succulent teriyaki-glazed salmon, brown rice, steamed broccoli, and a drizzle of sesame sauce.', '450.00', 'teriyaki_salmon_bowl.jpg'),
(58, 8, 'Vegan Buddha Bowl', 'A delightful vegan bowl featuring a variety of roasted vegetables, chickpeas, quinoa, and a creamy tahini dressing.', '350.00', 'vegan_buddha_bowl.jpg'),
(59, 8, 'Asian Beef Bowl', 'Savor the flavors of tender slices of beef, stir-fried vegetables, and steamed rice in this savory Asian-inspired bowl.', '400.00', 'asian_beef_bowl.jpg'),
(60, 8, 'Southwest Chicken Bowl', 'Enjoy a bowl filled with grilled chicken, black beans, corn, avocado, and a zesty southwest dressing.', '350.00', 'southwest_chicken_bowl.jpg'),
(61, 8, 'Greek Gyro Bowl', 'Transport your taste buds to Greece with this bowl featuring gyro meat, cucumber, tomato, feta cheese, and tzatziki sauce.', '400.00', 'greek_gyro_bowl.jpg'),
(62, 8, 'Hawaiian Poke Bowl', 'Experience the flavors of Hawaii with this bowl filled with fresh chunks of tuna or salmon, rice, tropical fruits, and a soy ginger dressing.', '450.00', 'hawaiian_poke_bowl.jpg'),
(63, 8, 'Mexican Fiesta Bowl', 'Enjoy a fiesta in a bowl with seasoned grilled chicken, black beans, corn, salsa, guacamole, and a squeeze of lime.', '400.00', 'mexican_fiesta_bowl.jpg'),
(64, 8, 'Mango Shrimp Bowl', 'Delight in the sweetness of juicy shrimp, mango, mixed greens, and a tangy citrus dressing in this refreshing bowl.', '450.00', 'mango_shrimp_bowl.jpg'),
(65, 8, 'Mediterranean Falafel Bowl', 'A vegetarian delight featuring crispy falafel, couscous, fresh vegetables, and a creamy tahini sauce.', '350.00', 'mediterranean_falafel_bowl.jpg'),
(66, 9, 'Chicken Tikka Masala', 'Tender pieces of chicken cooked in a rich and flavorful tomato-based sauce, served with fragrant basmati rice and naan bread.', '400.00', 'chicken_tikka_masala.jpg'),
(67, 9, 'Butter Chicken', 'A creamy and aromatic chicken curry made with a blend of spices, butter, and tomato sauce. Served with basmati rice and naan bread.', '450.00', 'butter_chicken.jpg'),
(68, 9, 'Lamb Biryani', 'A fragrant and flavorful rice dish cooked with tender pieces of lamb, aromatic spices, and garnished with fried onions and mint leaves.', '450.00', 'lamb_biryani.jpg'),
(69, 9, 'Palak Paneer', 'A classic Indian dish made with spinach and cottage cheese, cooked in a spiced creamy sauce. Served with basmati rice and naan bread.', '350.00', 'palak_paneer.jpg'),
(70, 9, 'Vegetable Biryani', 'A fragrant and flavorful rice dish cooked with an assortment of vegetables, aromatic spices, and garnished with fried onions and mint leaves.', '350.00', 'vegetable_biryani.jpg'),
(71, 9, 'Chicken Korma', 'A mild and creamy chicken curry made with yogurt, cashews, and a blend of aromatic spices. Served with basmati rice and naan bread.', '400.00', 'chicken_korma.jpg'),
(72, 9, 'Tandoori Chicken', 'Marinated chicken pieces cooked in a traditional clay oven (tandoor) to perfection, served with mint chutney and naan bread.', '400.00', 'tandoori_chicken.jpg'),
(73, 9, 'Chole Bhature', 'A popular North Indian dish consisting of spicy chickpea curry (chole) served with deep-fried bread (bhature).', '350.00', 'chole_bhature.jpg'),
(74, 9, 'Malai Kofta', 'Soft and creamy cottage cheese dumplings cooked in a rich and flavorful tomato-based sauce. Served with basmati rice and naan bread.', '400.00', 'malai_kofta.jpg'),
(75, 9, 'Mango Lassi', 'A refreshing and sweet yogurt-based drink blended with fresh mangoes, perfect to cool off and complement your meal.', '150.00', 'mango_lassi.jpg'),
(76, 10, 'Chicken Doner Kebab', 'Delicious grilled chicken marinated in aromatic spices, served in a warm pita bread with fresh vegetables and a drizzle of garlic sauce.', '350.00', 'chicken_doner_kebab.jpg'),
(77, 10, 'Beef Doner Kebab', 'Tender slices of seasoned beef cooked to perfection, wrapped in a fluffy pita bread with crisp vegetables and a tangy yogurt sauce.', '400.00', 'beef_doner_kebab.jpg'),
(78, 10, 'Mixed Doner Kebab', 'Enjoy the best of both worlds with a combination of succulent chicken and tender beef in a delightful pita bread filled with fresh toppings and sauces.', '450.00', 'mixed_doner_kebab.jpg'),
(79, 10, 'Falafel Wrap', 'A vegetarian delight featuring crispy falafel balls, fresh vegetables, and a creamy tahini sauce wrapped in a soft tortilla.', '350.00', 'falafel_wrap.jpg'),
(80, 10, 'Lamb Doner Kebab', 'Savor the flavors of tender and juicy marinated lamb, served in a warm pita bread with a medley of vegetables and a drizzle of tzatziki sauce.', '450.00', 'lamb_doner_kebab.jpg'),
(81, 10, 'Chicken Shawarma Plate', 'Grilled and thinly sliced chicken served with basmati rice, hummus, salad, and a side of warm pita bread.', '400.00', 'chicken_shawarma_plate.jpg'),
(82, 10, 'Doner Salad Bowl', 'A fresh and healthy option featuring a bed of mixed greens, topped with your choice of doner meat, vegetables, and a tangy dressing.', '350.00', 'doner_salad_bowl.jpg'),
(83, 10, 'Vegetable Doner Kebab', 'A delightful vegetarian option with grilled vegetables, fresh herbs, and a drizzle of flavorful sauces, all wrapped in a warm pita bread.', '350.00', 'vegetable_doner_kebab.jpg'),
(84, 10, 'Doner Platter', 'Indulge in a generous portion of your choice of doner meat, served with rice, salad, hummus, and warm pita bread.', '500.00', 'doner_platter.jpg'),
(85, 10, 'Doner Pizza', 'A unique twist on a classic favorite! Enjoy a delicious pizza topped with your choice of doner meat, vegetables, and melted cheese.', '450.00', 'doner_pizza.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `notification_type` enum('Preparing','Picked Up','On the Way') NOT NULL,
  `sent_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
CREATE TABLE IF NOT EXISTS `orderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `menu_item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `special_instructions` text,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `menu_item_id` (`menu_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `delivery_address` varchar(255) NOT NULL,
  `delivery_notes` text,
  `order_status` enum('Pending','Preparing','Picked Up','Delivered') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `restaurant_id` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
CREATE TABLE IF NOT EXISTS `ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` text,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `restaurant_id` (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `restaurant_id`, `rating`, `review`, `created_at`) VALUES
(1, 1, 3, 4, 'blank', '2023-06-02 15:59:32'),
(2, 1, 3, 5, 'blank', '2023-06-02 16:01:19'),
(3, 1, 3, 4, 'Great food and service!', '2023-06-23 00:00:00'),
(4, 1, 3, 3, 'Decent food but slow service.', '2023-06-22 00:00:00'),
(5, 1, 3, 5, 'Amazing experience. Highly recommended!', '2023-06-20 00:00:00'),
(6, 1, 4, 4, 'Delicious food, but the portions could be bigger.', '2023-06-23 00:00:00'),
(7, 1, 4, 3, 'Average food, nothing special.', '2023-06-22 00:00:00'),
(8, 1, 4, 4, 'Great atmosphere and friendly staff.', '2023-06-20 00:00:00'),
(9, 1, 5, 5, 'Excellent food and service!', '2023-06-23 00:00:00'),
(10, 1, 5, 4, 'Good food but limited menu.', '2023-06-22 00:00:00'),
(11, 1, 5, 4, 'Nice ambiance, but prices are a bit high.', '2023-06-20 00:00:00'),
(12, 1, 6, 3, 'Decent food, but slow service.', '2023-06-23 00:00:00'),
(13, 1, 6, 4, 'Friendly staff and cozy atmosphere.', '2023-06-22 00:00:00'),
(14, 1, 6, 3, 'Average experience, nothing remarkable.', '2023-06-20 00:00:00'),
(15, 1, 7, 5, 'Delicious food and attentive service.', '2023-06-23 00:00:00'),
(16, 1, 7, 5, 'Best restaurant in town!', '2023-06-22 00:00:00'),
(17, 1, 7, 5, 'Highly recommended. Must try their desserts!', '2023-06-20 00:00:00'),
(21, 1, 8, 4, 'Tasty dishes and reasonable prices.', '2023-06-23 00:00:00'),
(22, 1, 8, 4, 'Good food, but limited vegetarian options.', '2023-06-22 00:00:00'),
(23, 1, 8, 5, 'Friendly staff and nice ambiance.', '2023-06-20 00:00:00'),
(24, 1, 9, 3, 'Average food and service.', '2023-06-23 00:00:00'),
(25, 1, 9, 3, 'Disappointing experience.', '2023-06-22 00:00:00'),
(26, 1, 9, 2, 'Below average. Needs improvement.', '2023-06-20 00:00:00'),
(27, 1, 10, 5, 'Great food and friendly staff!', '2023-06-23 00:00:00'),
(28, 1, 10, 5, 'Cozy atmosphere and delicious cocktails.', '2023-06-22 00:00:00'),
(29, 1, 10, 5, 'Highly satisfied. Will visit again.', '2023-06-20 00:00:00'),
(30, 1, 11, 4, 'Decent food, but service needs improvement.', '2023-06-23 00:00:00'),
(31, 1, 11, 3, 'Average experience. Nothing remarkable.', '2023-06-22 00:00:00'),
(32, 1, 11, 4, 'Good value for money.', '2023-06-20 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
CREATE TABLE IF NOT EXISTS `restaurants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `cuisine_type` varchar(255) NOT NULL,
  `contact_phone` varchar(20) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `social_media_pages` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `description`, `logo`, `location`, `latitude`, `longitude`, `cuisine_type`, `contact_phone`, `contact_email`, `social_media_pages`) VALUES
(3, 'The Burger Forge', 'Crafted burgers at The Burger Forge: premium ingredients, innovative flavors, and an unmatched culinary experience.', 'burger.jpg', 'Algiers', 36.7371, 3.03128, 'Snack food', '0734456778', 'burgerforge@gmail.com', '{\"facebook_page\": \"https://www.facebook.com/lacasadelburger/?locale=fr_FR\", \"instagram_page\": \"https://www.instagram.com/lacasa_del_burger/?hl=fr\"}'),
(4, 'Grill \'n Chill', 'Grill \'n Chill: Indulge in tantalizing flavors, a laid-back ambiance, and expertly grilled burgers using the finest ingredients, offering the ultimate relaxation and culinary satisfaction.', 'burger2.jpg', 'Algiers', 36.7689, 3.02143, 'Snack food', '0712345678', 'grillnchill@gmail.com', '{\"facebook_page\": \"https://www.facebook.com/Liverpoolpizza.dz/\", \"instagram_page\": \"\"}'),
(5, 'Crispy Factory', 'Crispy Factory: Unleash your taste buds with our masterfully crafted, golden-crunch burgers that will leave you craving for more, experiencing the crispy revolution.', 'crispy.jpg', 'Algiers', 36.7629, 2.99293, 'Snack food', '0765432109', 'crispyfactory@gmail.com', '{\"facebook_page\": \"https://www.facebook.com/profile.php?id=100069297472704&paipv=0&eav=AfZflsDZc5T3L0XkcB2lvEFysKax-jCYvIYtdWK-24YpE-ViBRiW6pY5agIgRleoVbg\", \"instagram_page\": \"https://www.instagram.com/seven_times_la_villa/?hl=fr\"}'),
(6, 'All-American Eats Burgers', 'All-American Eats Burgers: Experience the true taste of America with our mouthwatering burgers that capture the essence of American culinary traditions, delivering juicy patties, fresh ingredients, and classic flavors in every bite.', 'american.jpg', 'Algiers', 36.7155, 3.18884, 'American fast food', '0765432109', 'alleatsburgers@gmail.com', '{\"facebook_page\": \"https://www.facebook.com/sultanbabezzouar/?locale=fr_FR\", \"instagram_page\": \"https://www.instagram.com/sultan_resto_babezzouar/?hl=fr\"}'),
(7, 'Freshly Cooked', 'Freshly Cooked: A celebration of sizzling flavors and homemade goodness, our dedicated chefs create mouthwatering burgers with fresh ingredients, ensuring every bite delights your taste buds.', 'fastfood.jpg', 'Algiers', 36.715, 3.19007, 'American fast food', '0765432109', 'freshlycooked@gmail.com', '{\"facebook_page\": \"\", \"instagram_page\": \"https://www.instagram.com/laquatacos/\"}'),
(8, 'Tasty Bowl', 'Discover the perfect harmony of flavor and health at Tasty Bowl. Our restaurant offers a delightful selection of nourishing bowls that are as delicious as they are nutritious.', 'healthy.jpg', 'Algiers', 36.7371, 3.03297, 'Healthy American', '0765432109', 'tastybowl@gmail.com', '{\"facebook_page\": \"https://www.facebook.com/AmericanBurger16\", \"instagram_page\": \"https://www.instagram.com/american.burger_/?hl=fr\"}'),
(9, 'Real Tasty', 'Embark on an authentic culinary journey to India at Real Tasty. We bring you the true flavors of Indian cuisine, where aromatic spices and traditional recipes take center stage.', 'indian.jpg', 'Algiers', 36.7556, 2.96827, 'Indian', '0765432109', 'realtasty@gmail.com', '{\"facebook_page\": \"https://www.facebook.com/algiers.tajmahal/?locale=fr_FR\", \"instagram_page\": \"https://www.instagram.com/algiers.tajmahal/?hl=fr\"}'),
(10, 'DonerHood', 'Welcome to DonerHood, your gateway to the authentic flavors of Turkey. Immerse yourself in the tantalizing aromas and mouthwatering tastes of our traditional Turkish cuisine.', 'kebab.jpg', 'Algiers', 36.7538, 2.99472, 'Turkish', '0765432109', 'donerhood@gmail.com', '{\"facebook_page\": \"https://www.facebook.com/Bonsairestaurantdz/\", \"instagram_page\": \"https://www.instagram.com/bonsairestaurant_/\"}'),
(11, 'WoodChicken', 'Experience the rich flavors of Syria at WoodChicken. We specialize in delivering mouthwatering shawarma, prepared with love and care.', 'shawerma.jpg', 'Algiers', 36.7662, 3.05293, 'Syrian', '0765432109', 'woodchicken@gmail.com', '{\"facebook_page\": \"https://www.facebook.com/Restaurant.Arabesque2016/?locale=fr_FR\", \"instagram_page\": \"https://www.secure.instagram.com/resturant.arabesque/?hl=fr\"}');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `registration_type` enum('Native','Facebook','Google') NOT NULL,
  `social_media_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `address`, `password`, `latitude`, `longitude`, `profile_picture`, `registration_type`, `social_media_id`) VALUES
(1, 'Ayoub', 'bousnane45@gmail.com', '0793407800', 'alger', '$2b$10$dFIFNLgkMYC1lOrsAAeyFO6MzyEiu97dcJFzuA2mOcGlkVUmDViui', NULL, NULL, NULL, 'Native', NULL);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `menuitems`
--
ALTER TABLE `menuitems`
  ADD CONSTRAINT `menuitems_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`);

--
-- Contraintes pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Contraintes pour la table `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`menu_item_id`) REFERENCES `menuitems` (`id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`);

--
-- Contraintes pour la table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
