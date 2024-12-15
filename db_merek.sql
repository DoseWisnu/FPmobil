-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2024 at 08:03 AM
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
-- Database: `db_merek`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin123', 'admin'),
(2, 'user', 'user', 'user'),
(4, 'irul123', 'irul123', 'user'),
(5, 'rofiq123', 'rofiq123', 'user'),
(6, 'or1yon', 'qwerty', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `id_pengirim` int(11) NOT NULL,
  `id_penerima` int(11) NOT NULL,
  `pesan` text NOT NULL,
  `waktu` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_mobil`
--

CREATE TABLE `db_mobil` (
  `id_mobil` int(11) NOT NULL,
  `nama_mobil` varchar(255) NOT NULL,
  `warna` varchar(50) NOT NULL,
  `merek` varchar(100) NOT NULL,
  `tipe` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` bigint(20) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `db_mobil`
--

INSERT INTO `db_mobil` (`id_mobil`, `nama_mobil`, `warna`, `merek`, `tipe`, `deskripsi`, `harga`, `image_url`) VALUES
(9, 'BYD Seal R Long Range', 'Mid Blue Sea', 'BYD', 'Perfomance AWD 670km Range', 'Mobil Listrik dengan jarak tempuh yang jauh dalam sekali pengecasan, dan dibekali meson 4 motor 1000hp', 719300000, 'https://static.motor.es/fotos-jato/byd/uploads/byd-seal-6441b4e361e74.jpg'),
(11, 'New Tesla Roadster', 'RED Majic', 'Tesla', 'Super Perfomance Longrange', 'Mobil listrik dengan desain futuristik yang dibekali mesin motor masing masing 1000hp dengan sensasi jambakan setan', 3349500000, 'https://th.bing.com/th/id/OIP.2uQpWB8EMpgac9RTOqy0eQAAAA?w=474&h=266&rs=1&pid=ImgDetMain'),
(12, 'Toyota Camry', 'Hitam', 'Toyota', '2.8 M/T hybird Keyless', 'Mobil Nyaman Semi Elektrik yang Terkesan Luxury Design ', 657600000, 'https://gambarmobil.com/foto/toyota/317194-camry-2-5-v-a-t-2015-facelift-hitam-record-toyota-photo-26-08-22-14-18-48.jpg'),
(13, 'Ford Ranger 4x4 2020', 'Putih', 'Ford', '2.5 A/T 4x4 Double Cab', 'Mobil Multifungsi yang bisa diandalkan untuk mengangkut barang dan bermain', 865000000, 'https://resource.digitaldealer.com.au/image/71480996865437a47ef360029681485_0_0-c.jpg'),
(14, 'Toyota Land Cruiser 300 VXR', 'Silver', 'Toyota', '3.2 Triptonic Transmision', 'Mobil Mewah dengan Fitur yang sangan lengkap dan dibekali Patwal perjalanan', 2547000000, 'https://i.pinimg.com/originals/62/a2/10/62a2106589c6679b0c733f5bd447ded2.jpg'),
(15, 'Honda CRV Turbo', 'Grey', 'Honda', '2,5 Turbo A/T', 'Mobil keluarga dengan 7Seat dan pengalaman menyetir yang menajubkan', 725000000, 'https://hondaengineinfo.com/wp-content/uploads/2022/11/Honda-CRV-2024-Exterior.png'),
(16, 'Mazda 3 Hatchback 2024', 'Grey', 'Mazda', '1,5 A/T Hatchback', 'Mobil dengan Gaya kekinian Menawarkan Fitur sensasi Balap yang nyata bagi pengendara', 573500000, 'https://images.carexpert.com.au/resize/3000/-/app/uploads/2021/09/2022-Mazda-3-G20-Evolve-SP-HERO.jpg'),
(17, 'Suzuki Grand Vitara', 'Blue', 'Suzuki', '2.0 M/T 7 Seater', 'Mobil Semi SUV yang menawarkan Pengalaman Mengendarai yang menajubkan', 351000000, 'https://th.bing.com/th/id/OIP.zo-hiXPKl8q-xKFcwWd7gwHaEJ?w=750&h=420&rs=1&pid=ImgDetMain'),
(18, 'Chevrolet Trailblazer 4x4', 'Kuning', 'Chevrolet', '2.5 A/T 4x4 Diesel', 'Mobil SUV yang Gemar Offroan dan dapat mudah melewati jalan terjal', 472500000, 'https://www.elcarrocolombiano.com/wp-content/uploads/2023/01/20230124-CHEVROLET-TRAILBLAZER-2024-PORTADA-750x460.jpg'),
(19, 'subaru sambar truck', 'Putih', 'Subaru', 'Truck', 'mobil truck buat ngagkut beras', 34000000, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUSExMVFRUXFxcVFRUXFxcXFxUVFRcWFxcVFxgYHSggGBolHRcVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OFxAQGi0fHx0tLSsrLS0tLS0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tNy0tLS0tKy0tKystLS03LSs3Lf/AABEIAMIBAwMBIgACEQEDEQH/');

-- --------------------------------------------------------

--
-- Table structure for table `forum_messages`
--

CREATE TABLE `forum_messages` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `role_pengirim` enum('user','admin') NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum_messages`
--

INSERT INTO `forum_messages` (`id`, `username`, `pesan`, `role_pengirim`, `tanggal`) VALUES
(1, 'admin', 'Selamat datang di forum diskusi!', 'admin', '2024-12-02 09:58:35'),
(2, 'user', 'Terima kasih, admin! Saya ingin bertanya tentang produk ini.', 'user', '2024-12-02 09:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `message`, `timestamp`) VALUES
(1, 1, 'sdfdsaf', '2024-12-07 04:25:02'),
(2, 1, 'sdf', '2024-12-07 04:25:55'),
(3, 1, 'sss', '2024-12-07 04:26:11'),
(4, 2, 'sdfsadf', '2024-12-07 04:33:25'),
(5, 2, 'sdfafds', '2024-12-07 04:33:31'),
(6, 2, 'dsfsad', '2024-12-07 04:47:27'),
(7, 2, 'sdfsadf', '2024-12-07 04:47:29'),
(8, 2, 'gkjkljklj', '2024-12-07 04:49:42'),
(9, 1, 'adsf', '2024-12-07 04:50:28'),
(10, 2, 'adslkgjads', '2024-12-09 05:38:22'),
(11, 2, ';dsgkldsa', '2024-12-09 06:42:04'),
(12, 2, 'sdf', '2024-12-09 14:25:47'),
(13, 2, 'dsgdsg', '2024-12-11 01:50:33'),
(14, 2, 'hai', '2024-12-11 07:57:28'),
(15, 1, 'ddd', '2024-12-11 09:24:39'),
(16, 2, 'dsfasfds', '2024-12-13 06:15:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'aku123', 'aku123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pengirim` (`id_pengirim`),
  ADD KEY `id_penerima` (`id_penerima`);

--
-- Indexes for table `db_mobil`
--
ALTER TABLE `db_mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `forum_messages`
--
ALTER TABLE `forum_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_mobil`
--
ALTER TABLE `db_mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `forum_messages`
--
ALTER TABLE `forum_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`id_pengirim`) REFERENCES `akun` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`id_penerima`) REFERENCES `akun` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `akun` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
