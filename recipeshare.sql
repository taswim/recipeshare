-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2022 at 08:31 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recipeshare`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `topic_id`, `title`, `image`, `body`, `published`, `created_at`) VALUES
(22, 28, 9, 'Smoked Salmon Salad Recipes for Quick CooK', '1643472446_unnamed.webp', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;figure class=&quot;image&quot;&gt;&lt;img src=&quot;https://lh3.googleusercontent.com/rkto8rJrhi1SwsMO2sVnPvIWJaE7PNtxr6wVKqDa23jA895Kb0ZggjbaRdijrYlhLEWqEZjFPfDS6I_sqwJs3w=w220-h220-c-rw-v1-e365&quot; alt=&quot;Asian Smoked Salmon Salad Recipe&quot;&gt;&lt;/figure&gt;&lt;blockquote&gt;&lt;p&gt;&lt;strong&gt;Ingredients list : Marinated smoked salmon, mango, cucumber, avocado, strawberries. Sprinkle black&lt;/strong&gt;&lt;/p&gt;&lt;/blockquote&gt;&lt;p&gt;Prep: 15 mins&lt;/p&gt;&lt;p&gt;Additional: 30 mins&lt;/p&gt;&lt;p&gt;Total: 45 mins&lt;/p&gt;&lt;p&gt;Servings: 4&lt;/p&gt;&lt;p&gt;Yield: 4 servings&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;h2&gt;Directions&lt;/h2&gt;&lt;p&gt;&lt;strong&gt;Instructions Checklist&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;strong&gt;Step &lt;/strong&gt;1&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Combine soy sauce, green onions, sesame oil, rice vinegar, ginger, and garlic in a bowl. Mix until thoroughly combined. Add salmon and marinate in the refrigerator for 30 minutes to 1 hour.&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;strong&gt;Step 2&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Divide brown rice among 4 serving bowls. Top with salmon, mango, cucumber, avocado, and strawberries. Sprinkle black sesame seeds on top.&lt;/p&gt;', 1, '2022-01-29 08:07:26'),
(23, 28, 11, 'lunchbox pasta Meal prep: pasta', '1644569545_mealprep.jpg', '&lt;figure class=&quot;image&quot;&gt;&lt;img src=&quot;https://images.immediate.co.uk/production/volatile/sites/30/2020/08/mealprep-pasta-merged_web3_copy-6087bd8.jpg?quality=90&amp;amp;resize=500,454&quot; alt=&quot;Salads in lunchboxes&quot;&gt;&lt;/figure&gt;&lt;h1&gt;Meal prep recipes&lt;/h1&gt;&lt;p&gt;29 Recipes&lt;/p&gt;&lt;p&gt;Cook in advance for the week ahead. We have recipes for&amp;nbsp;freezable soups, big-batch family meals and simple lunch ideas&amp;nbsp;from salads to protein pots.&amp;nbsp;&lt;/p&gt;&lt;blockquote&gt;&lt;p&gt;&lt;strong&gt;Ingredients list : Marinated smoked salmon, mango, cucumber, avocado, strawberries. Sprinkle black&lt;/strong&gt;&lt;/p&gt;&lt;/blockquote&gt;&lt;p&gt;Prep: 15 mins&lt;/p&gt;&lt;p&gt;Additional: 30 mins&lt;/p&gt;&lt;p&gt;Total: 45 mins&lt;/p&gt;&lt;p&gt;Servings: 4&lt;/p&gt;&lt;p&gt;Yield: 4 servings&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;h2&gt;Directions&lt;/h2&gt;&lt;p&gt;&lt;strong&gt;Instructions Checklist&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;strong&gt;Step &lt;/strong&gt;1&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Combine soy sauce, green onions, sesame oil, rice vinegar, ginger, and garlic in a bowl. Mix until thoroughly combined. Add salmon and marinate in the refrigerator for 30 minutes to 1 hour.&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;strong&gt;Step 2&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Divide brown rice among 4 serving bowls. Top with salmon, mango, cucumber, avocado, and strawberries. Sprinkle black sesame seeds on top.&lt;/p&gt;', 1, '2022-02-11 00:52:25'),
(24, 28, 17, ' Healthy porridge bowl', '1644570243_healthy.jpg', '&lt;p&gt;&lt;br&gt;&amp;nbsp;&lt;/p&gt;&lt;figure class=&quot;image&quot;&gt;&lt;img src=&quot;https://images.immediate.co.uk/production/volatile/sites/30/2020/08/healthy_porridge_bowl-d434804.jpg?quality=90&amp;amp;resize=500,454&quot; alt=&quot;Bowl of porridge with raspberries, oranges and banana slices&quot;&gt;&lt;/figure&gt;&lt;h1&gt;Healthy breakfast recipes&lt;/h1&gt;&lt;p&gt;57 Recipes&lt;/p&gt;&lt;p&gt;Wake up to a tasty, nutritious breakfast whether it\'s high-protein eggs, avocado on toast, porridge or a healthy smoothie to fuel you through the morning.&lt;/p&gt;&lt;blockquote&gt;&lt;p&gt;&lt;strong&gt;Ingredients list : Marinated smoked salmon, mango, cucumber, avocado, strawberries. Sprinkle black&lt;/strong&gt;&lt;/p&gt;&lt;/blockquote&gt;&lt;p&gt;Prep: 15 mins&lt;/p&gt;&lt;p&gt;Additional: 30 mins&lt;/p&gt;&lt;p&gt;Total: 45 mins&lt;/p&gt;&lt;p&gt;Servings: 4&lt;/p&gt;&lt;p&gt;Yield: 4 servings&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;h2&gt;Directions&lt;/h2&gt;&lt;p&gt;&lt;strong&gt;Instructions Checklist&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;strong&gt;Step &lt;/strong&gt;1&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Combine soy sauce, green onions, sesame oil, rice vinegar, ginger, and garlic in a bowl. Mix until thoroughly combined. Add salmon and marinate in the refrigerator for 30 minutes to 1 hour.&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;strong&gt;Step 2&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Divide brown rice among 4 serving bowls. Top with salmon, mango, cucumber, avocado, and strawberries. Sprinkle black sesame seeds on top.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&amp;nbsp;&lt;/p&gt;', 1, '2022-02-11 01:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`) VALUES
(9, 'Thai', ''),
(11, 'Italian', ''),
(12, 'Korean', ''),
(13, 'Chinese ', ''),
(14, 'Breakfast', ''),
(15, 'Dinner', ''),
(16, 'Diet', ''),
(17, 'American', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `created_at`) VALUES
(28, 1, 'Tasnim Tabassum', 'tasnimtabassum346@gmail.com', '$2y$10$.YWYkjc3T9JTciciJX1Cn.Cie6ETENWh7N6g9PQ5f5t8K/4vvktEu', '2022-01-16 00:17:56'),
(29, 0, 'demo', 'demo@email.com', '$2y$10$aZJOd.FTnHy9WwIUXlKoTuOtY2WanGpmP7gGmHPgsAtqMb8gZB.7S', '2022-01-16 03:28:40'),
(30, 0, 'user', 'user2345@tm.com', '$2y$10$l2kbHMBVMDz1O0ndxZdWtOl6cHwhV8ukXT2.fUOF07kM3KMfF1YxK', '2022-01-19 17:59:24'),
(31, 0, 'demo', 'demo123@gmail.com', '$2y$10$4ReyhVhVjlc5sskkR4k3hOYeMRk1lQO26vFV2eK7yF2z.EfZOGNE6', '2022-01-27 14:29:54'),
(32, 0, 'demo', 'demo@gmail.com', '$2y$10$bXj8X5H0TAhx1UVlm98UYec8vXYFrFo5Z9.ywrVXc7FS0vn/nClju', '2022-02-11 17:31:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
