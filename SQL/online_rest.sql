-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2025 at 08:04 PM
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
-- Database: `online_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'admin@gmail.com', '', '2021-04-07 08:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'Martabak Manis Classic', 'Martabak manis dengan isian gula, kacang tanah, dan wijen yang gurih', 25000.00, '606d72f3cb12f.jpg'),
(2, 1, 'Martabak Manis Keju', 'Martabak manis lembut dengan topping keju parut yang melimpah', 35000.00, '606d73302ece2.jpg'),
(3, 1, 'Martabak Manis Coklat', 'Martabak manis dengan filling coklat lumer yang kaya rasa', 30000.00, '606d73771366a.jpg'),
(4, 1, 'Martabak Manis Kacang', 'Martabak manis dengan taburan kacang tanah sangrai dan gula merah', 28000.00, '606d73d2d37f4.jpg'),
(5, 2, 'Martabak Telur Ayam', 'Martabak telur dengan isian daging ayam cincak, bawang, dan bumbu spesial', 30000.00, '606d7491a9d13.jpg'),
(6, 2, 'Martabak Telur Sapi', 'Martabak telur gurih dengan daging sapi cincang dan bawang bombay', 35000.00, '606d74c416da5.jpg'),
(7, 2, 'Martabak Telur Asin', 'Martabak telur spesial dengan telur asin yang creamy dan scallion', 40000.00, '606d74f6ecbbb.jpg'),
(8, 2, 'Martabak Telur Spesial', 'Martabak telur dengan campuran ayam, sapi, dan sayuran segar', 45000.00, '606d752a209c3.jpg'),
(9, 3, 'Martabak Keju Mozzarella', 'Martabak keju dengan mozzarella cheese yang stretchy dan creamy', 40000.00, '606d7575798fb.jpg'),
(10, 3, 'Martabak Keju Cheddar', 'Martabak keju dengan cheddar cheese asli yang sharp dan gurih', 38000.00, '606d75a7e21ec.jpg'),
(11, 3, 'Martabak Keju Mix', 'Kombinasi keju mozzarella, cheddar, dan parmesan yang sempurna', 45000.00, '606d75ce105d0.jpg'),
(12, 3, 'Martabak Keju Jagung', 'Martabak keju dengan jagung manis dan keju mozzarella', 35000.00, '606d7600dc54c.jpg'),
(13, 4, 'Martabak Modern Nutella', 'Martabak modern dengan Nutella, banana slice, dan almond slice', 50000.00, '606d765f69a19.jpg'),
(14, 4, 'Martabak Modern Green Tea', 'Martabak modern dengan filling green tea matcha dan red bean', 45000.00, '606d768a1b2a1.jpg'),
(15, 4, 'Martabak Modern Tiramisu', 'Martabak modern dengan rasa tiramisu, coffee powder, dan cocoa', 48000.00, '606d76ad0c0cb.jpg'),
(16, 4, 'Martabak Modern Rainbow', 'Martabak modern colorful dengan berbagai topping pilihan', 55000.00, '606d76eedbb99.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1, 'Martabak Ananda', 'martabakmanis@gmail.com', '081234567890', 'www.martabakmanis.com', '11am', '8pm', '24hr-x7', ' Jl. Raya Manonjaya No. 107, Cibeureum, Tasikmalaya ', '69138857648a8.jpg', '2025-11-11 19:02:47'),
(2, 2, 'Martabak Sanjaya', 'martabaktelurasin@gmail.com', '081298765432', 'www.martabaktelurasin.com', '11am', '8pm', '24hr-x7', 'Jl. Bebedahan No.1, Cikalang, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46111, Indonesia', '691388835d37d.jpg', '2025-11-11 19:03:31'),
(3, 3, 'Martabak Legit Group', 'martabakkeju@gmail.com', '081287654321', 'www.martabakkeju.com', '11am', '8pm', '24hr-x7', 'Jl. Kolonel Basyir Surya No.25, RT.01/RW.4, Setiaratu, Kec. Cibeureum, Kab. Tasikmalaya, Jawa Barat 46196, Indonesia', '691387182f18b.jpg', '2025-11-11 18:57:28'),
(4, 4, 'Martabak Modern', 'martabakmodern@gmail.com', '081276543210', 'www.martabakmodern.com', '9am', '9pm', 'Mon-Sat', 'Jl. Rasuna Said No. 90, Jakarta', '606d72a49503a.jpg', '2025-11-10 16:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Martabak Ananda', '2025-11-11 12:44:15'),
(2, 'Martabak Sanjaya', '2025-11-11 12:44:29'),
(3, 'Martabak Legit Group', '2025-11-11 13:36:46'),
(4, 'Martabak Modern', '2025-11-10 16:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(1, 'iqbal', 'Iqbal', 'Mulki', 'iqbal@gmail.com', '080987654321', '5c2fb951458b57e8e049d48a55cdddad', 'Cibeureum', 1, '2025-11-10 15:55:40'),
(2, 'syahran', 'Syahran', 'Mawarid', 'syahran@email.com', '081234567890', '664d40e34ecc141269e5a1f8ec7e7312', 'Manonjaya', 1, '2025-11-11 16:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(3, 2, 'Martabak Manis Classic', 1, 25000.00, NULL, '2025-11-11 16:12:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
