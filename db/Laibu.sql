-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2020 at 07:07 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Laibu`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `name`, `image`, `about`) VALUES
(1, 'Arthur Conan Doyle', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Conan_doyle.jpg/752px-Conan_doyle.jpg', 'A Scottish author of Irish descent most famously known for his stories about the detective Sherlock Holmes.'),
(2, 'William Shakespeare', 'https://upload.wikimedia.org/wikipedia/commons/b/bb/William_shakespeare_dm.jpg', 'English poet and playwright considered to be the greatest writer in the English language.');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `price` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `thumbnail` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pages` int(11) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `subtitle`, `description`, `price`, `rating`, `year`, `thumbnail`, `pages`, `author_id`, `genre_id`) VALUES
(1, 'The Tragedy of Romeo and Juliet', NULL, 'Romeo and Juliet is a tragedy written by William Shakespeare early in his career about two young star-crossed lovers whose deaths ultimately reconcile their feuding families. It was among Shakespeare\'s most popular plays during his lifetime and, along with Hamlet, is one of his most frequently performed plays. Today, the title characters are regarded as archetypal young lovers.', 213, 4, 1860, 'https://m.media-amazon.com/images/I/516IRtDSTCL.jpg', 335, 2, 4),
(2, 'The Adventures of Sherlock Holmes', NULL, 'THE ADVENTURES OF SHERLOCK HOLMES. It is a collection of 12 short stories which originally appeared in The Strand magazine in England from July 1891 to June 1892. They are presented in this book as facsimile reproductions of the originals. Included are: A Scandal in Bohemia, The Red-Headed League A Case of Identity, The Boscombe Valley Mystery, The Five Orange Pips, The Man with the Twisted Lip, The Adventure of the Blue Carbuncle, The Adventure of the Speckled Band, The Adventure of the Engineer\'s Thumb, The Adventure of the Noble Bachelor, The Adventure of the Beryl Coronet, The Adventure of the Copper Beeches.', 0, 5, 2015, 'https://cdn.shopify.com/s/files/1/2727/7942/products/20190906_150124_1024x1024@2x.jpg?v=1569399748', 307, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `name`, `image`, `type`) VALUES
(1, 'Romance', 'https://st.depositphotos.com/3203799/4106/i/450/depositphotos_41066325-stock-photo-couple-in-love-silhouette-during.jpg', 'Fiction'),
(4, 'Action and Adventure', 'https://images.unsplash.com/photo-1508339917912-c0892cfee9d1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80', 'Fiction'),
(5, 'Alternate History', '', 'Fiction'),
(6, 'Anthology', '', 'Fiction'),
(7, 'Children\'s', '', 'Fiction'),
(8, 'Classic', '', 'Fiction'),
(9, 'Comic Book', '', 'Fiction'),
(10, 'Crime', '', 'Fiction'),
(11, 'Drama', '', 'Fiction'),
(12, 'Fairytale', '', 'Fiction'),
(13, 'Fantasy', '', 'Fiction'),
(14, 'Historical Fiction', '', 'Fiction'),
(15, 'Horror', '', 'Fiction'),
(16, 'Mystery', '', 'Fiction'),
(17, 'Poetry', '', 'Fiction'),
(18, 'Science Fiction', '', 'Fiction'),
(19, 'Short Story', '', 'Fiction'),
(20, 'Suspense', '', 'Fiction'),
(21, 'Thriller', '', 'Fiction'),
(22, 'Young Adult', '', 'Fiction'),
(23, 'Art / Architecture', '', 'Nonfiction'),
(24, 'Autobiography', '', 'Nonfiction'),
(25, 'Biography', '', 'Nonfiction'),
(26, 'Business / Economics', '', 'Nonfiction'),
(27, 'Crafts / Hobbies', '', 'Nonfiction'),
(28, 'Cookbook', '', 'Nonfiction'),
(29, 'Encyclopedia', '', 'Nonfiction'),
(30, 'Guide', '', 'Nonfiction'),
(31, 'Health / Fitness', '', 'Nonfiction'),
(32, 'History', '', 'Nonfiction'),
(33, 'Home and Garden', '', 'Nonfiction'),
(34, 'Humor', '', 'Nonfiction'),
(35, 'Journal', '', 'Nonfiction'),
(36, 'Memoir', '', 'Nonfiction'),
(37, 'Philosophy', '', 'Nonfiction'),
(38, 'Religion, Spirituality and New Age', '', 'Nonfiction'),
(39, 'Textbook', '', 'Nonfiction'),
(40, 'True Crime', '', 'Nonfiction'),
(41, 'Self Help', '', 'Nonfiction'),
(42, 'Sports and Leisure', '', 'Nonfiction'),
(43, 'Travel', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trending`
--

CREATE TABLE `trending` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `no_of_downloads` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trending`
--

INSERT INTO `trending` (`id`, `book_id`, `no_of_downloads`) VALUES
(1, 2, 3),
(2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'John', 'Smith', 'johnsmith@mail.com', 'johnsmith'),
(2, 'Ariel', 'Smith', 'arielsmith@mail.com', 'arielsmith');

-- --------------------------------------------------------

--
-- Table structure for table `user_books`
--

CREATE TABLE `user_books` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_books`
--

INSERT INTO `user_books` (`id`, `user_id`, `book_id`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `trending`
--
ALTER TABLE `trending`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_books`
--
ALTER TABLE `user_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trending`
--
ALTER TABLE `trending`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_books`
--
ALTER TABLE `user_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `trending`
--
ALTER TABLE `trending`
  ADD CONSTRAINT `trending_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `user_books`
--
ALTER TABLE `user_books`
  ADD CONSTRAINT `user_books_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `user_books_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
