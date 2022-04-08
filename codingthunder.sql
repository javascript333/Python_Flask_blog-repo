-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2022 at 08:24 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'first post', '123456789', 'first post', '2022-03-20 02:06:15', 'firstpost@gmail.com'),
(2, 'Bhavana.B', '8888888888', '8888888888', '2022-03-20 03:25:12', 'bhavananayak@gmail.com'),
(6, 'Karthik', '7878787878', 'Hi welcome to flask tut', '2022-03-20 03:46:28', 'bb@gmail.com'),
(7, 'Chandana', '6767676767', 'I am beautiful pie', '2022-03-20 17:19:32', 'chandu@gmail.com'),
(8, 'balle balle', '9999988888', 'balle balle', '2022-03-30 20:46:56', 'balle@gmail.com'),
(23, 'Chacha', '7897897899', 'ok ok bye', '2022-03-30 22:08:52', 'chacha@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Lets learn about stock market', 'this is first post', 'first-post', 'Welcome to stocks, This is my first post and I am very exited about this blog and flask micro framework. \r\nStock can be bought and sold privately or on stock exchanges, and such transactions are typically heavily regulated by governments to prevent fraud, protect investors, and benefit the larger economy. The stocks are deposited with the depositories in the electronic format also known as Demat account. As new shares are issued by a company, the ownership and rights of existing shareholders are diluted in return for cash to sustain or grow the business.', 'post-bg.jpg', '2022-04-06 17:26:24'),
(2, 'This is second posts', 'coolest post ever', 'second-post', 'Instagram[a] is an American photo and video sharing social networking service founded by Kevin Systrom and Mike Krieger. In April 2012, Facebook Inc. acquired the service for approximately US$1 billion in cash and stock. The app allows users to upload media that can be edited with filters and organized by hashtags and geographical tagging. Posts can be shared publicly or with pre-approved followers. Users can browse other users\' content by tags and locations and view trending content. Users can like photos and follow other users to add their content to a personal feed.[10]\r\n\r\nInstagram was originally distinguished by only allowing content to be framed in a square (1:1) aspect ratio with 640 pixels to match the display width of the iPhone at the time. In 2015, these restrictions', 'about-bg.jpg', '2022-04-03 17:44:15'),
(3, 'Variables', 'mast vali tagline', 'third-post', 'In computer programming, a variable is an abstract storage location paired with an associated symbolic name, which contains some known or unknown quantity of information referred to as a value; or in simpler terms, a variable is a container for a particular set of bits or type of data (like integer, float, String etc...). A variable can eventually be associated with or identified by a memory address. The variable name is the usual way to reference the stored value, in addition to referring to the variable itself, depending on the context. This separation of name and content allows the name to be used independently of the exact information it represents. The identifier in computer source code can be bound to a value during run time, and the value of the variable may thus change during the course of program execution.[1][2][3][4]\r\n\r\nVariables in programming may not directly correspond to the concept of variables in mathematics. The latter is abstract, having no reference to a physical object such as storage location. The value of a computing variable', '', '2022-04-03 18:06:43'),
(4, 'Typing', 'fourth tagline', 'fourth-post', 'In computer programming, a variable is an abstract storage location paired with an associated symbolic name, which contains some known or unknown quantity of information referred to as a value; or in simpler terms, a variable is a container for a particular set of bits or type of data (like integer, float, String etc...). A variable can eventually be associated with or identified by a memory address. The variable name is the usual way to reference the stored value, in addition to referring to the variable itself, depending on the context. This separation of name and content allows the name to be used independently of the exact information it represents. The identifier in computer source code can be bound to a value during run time, and the value of the variable may thus change during the course of program execution.[1][2][3][4]\r\n\r\nVariables in programming may not directly correspond to the concept of variables in mathematics. The latter is abstract, having no reference to a physical object such as storage location. The value of a computing variable', '', '2022-04-03 18:06:43'),
(5, 'Memory allocation', 'fifth tagline', 'slug-next', 'The specifics of variable allocation and the representation of their values vary widely, both among programming languages and among implementations of a given language. Many language implementations allocate space for local variables, whose extent lasts for a single function call on the call stack, and whose memory is automatically reclaimed when the function returns. More generally, in name binding, the name of a variable is bound to the address of some particular block (contiguous sequence) of bytes in memory, and operations on the variable manipulate that block. Referencing is more common for variables whose values have large or unknown sizes when the code is compiled. Such variables reference the location of the value instead of storing the value itself, which is allocated from a pool of memory called the heap.\r\n\r\nBound variables have values. A value, however, is an abstraction, an idea; in implementation, a value is represented by some data object, which is stored somewhere in computer memory. The program, or the runtime environment, must set aside memory for each data object and, since memory is finite, ensure that this memory is yielded for reuse when the object is no longer needed to represent some variable\'s value.\r\n\r\nObjects allocated from the heap must be reclaimed—especially when the objects are no longer needed. In a garbage-collected language (such as C#, Java, Python, Golang and Lisp), the runtime environment automatically reclaims objects when extant variables can no longer refer to them. In non-garbage-collected languages, such as C, the program (and the programmer) must explicitly allocate memory, and then later free it, to reclaim its memory. Failure to do so leads to memory leaks, in which the heap is depleted as the program runs, risks eventual failure from exhausting available memory.\r\n\r\nWhen a variable refers to a data structure created dynamically, some of its components may be only indirectly accessed through the variable. In such circumstances, garbage collectors (or analogous program features in languages that lack garbage collectors) must deal with a case where only a portion of the memory reachable from the variable needs to be reclaimed.', '', '2022-04-03 18:09:59'),
(6, 'title 5', 'tagline 5', 'slug-next3', 'The specifics of variable allocation and the representation of their values vary widely, both among programming languages and among implementations of a given language. Many language implementations allocate space for local variables, whose extent lasts for a single function call on the call stack, and whose memory is automatically reclaimed when the function returns. More generally, in name binding, the name of a variable is bound to the address of some particular block (contiguous sequence) of bytes in memory, and operations on the variable manipulate that block. Referencing is more common for variables whose values have large or unknown sizes when the code is compiled. Such variables reference the location of the value instead of storing the value itself, which is allocated from a pool of memory called the heap.\r\n\r\nBound variables have values. A value, however, is an abstraction, an idea; in implementation, a value is represented by some data object, which is stored somewhere in computer memory. The program, or the runtime environment, must set aside memory for each data object and, since memory is finite, ensure that this memory is yielded for reuse when the object is no longer needed to represent some variable\'s value.\r\n\r\nObjects allocated from the heap must be reclaimed—especially when the objects are no longer needed. In a garbage-collected language (such as C#, Java, Python, Golang and Lisp), the runtime environment automatically reclaims objects when extant variables can no longer refer to them. In non-garbage-collected languages, such as C, the program (and the programmer) must explicitly allocate memory, and then later free it, to reclaim its memory. Failure to do so leads to memory leaks, in which the heap is depleted as the program runs, risks eventual failure from exhausting available memory.\r\n\r\nWhen a variable refers to a data structure created dynamically, some of its components may be only indirectly accessed through the variable. In such circumstances, garbage collectors (or analogous program features in languages that lack garbage collectors) must deal with a case where only a portion of the memory reachable from the variable needs to be reclaimed.', '', '2022-04-03 18:09:59'),
(8, 'Sun Flower', 'sunsun', 'sun-post', 'Sun flower is is beautiful flower ', 'sun_flower.p', '2022-04-05 20:35:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
