-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 16, 2023 at 11:08 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `malefashion_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) UNSIGNED NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_phone` varchar(15) DEFAULT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_photo` varchar(255) NOT NULL,
  `admin_photo2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_phone`, `admin_password`, `admin_photo`, `admin_photo2`) VALUES
(1, 'Khaleed', 'admin@gmail.com', '62897765432', '0287040c474dbf44cdeb17eebb99d828', 'admin_profile.jpg', 'admin_profile2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `blog_title` varchar(100) DEFAULT NULL,
  `blog_description` text DEFAULT NULL,
  `blog_quotes` text DEFAULT NULL,
  `blog_quotes_writer` varchar(100) DEFAULT NULL,
  `blog_image` varchar(100) DEFAULT NULL,
  `blog_image2` varchar(100) DEFAULT NULL,
  `blog_tags` varchar(255) DEFAULT NULL,
  `blog_date` date DEFAULT current_timestamp(),
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`blog_id`, `blog_title`, `blog_description`, `blog_quotes`, `blog_quotes_writer`, `blog_image`, `blog_image2`, `blog_tags`, `blog_date`, `admin_id`) VALUES
(1, 'What Curling Irons Are The Best Ones', 'Spesifikasi Technoplast GB-200:\nTerbuat dari bahan plastik berkualitas( Food Grade), serta bebas dari bahan-bahan berbahaya(BPA free)\n\nTersedia dalam warna hitam, biru, merah\n\nTumbler ini sangat cocok untuk kalian yang ingin memberikan souvenir perusahaan, hadiah wisuda, ulang tahun atau bahkan sebagai koleksi pribadi.\n\nKalian bisa menggunakan desain buatan kalian sendiri untuk botol minum kalian nih. Caranya dengan\n1. order via chat Whatsapp\n2. Kirim desain kalian via email mfbinary18@gmail.com.\n3. Desain yang kalian kirim hanya dalam bentuk .eps ya\n', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-1.jpg', 'banner1.jpg', '#Poster #Tumbler #2022\n', '2022-11-04', 1),
(2, 'Eternity Bands Do Last Forever', 'Spesifikasi Technoplast GS-400:\nTerbuat dari bahan plastik berkualitas( Food Grade), serta bebas dari bahan-bahan berbahaya(BPA free)\n\nTersedia dalam warna Hitam\n\nTumbler ini sangat cocok untuk kalian yang ingin memberikan souvenir perusahaan, hadiah wisuda, ulang tahun atau bahkan sebagai koleksi pribadi.\n\nKalian bisa menggunakan desain buatan kalian sendiri untuk botol minum kalian nih. Caranya dengan\n1. order via chat Whatsapp\n2. Kirim desain kalian via email mfbinary18@gmail.com.\n3. Desain yang kalian kirim hanya dalam bentuk .eps ya\n', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-2.jpg', 'banner1.jpg', '#Poster #Tumbler #Edukasi #2022\n', '2022-11-05', 1),
(3, 'The Health Benefits Of Sunglasses', 'Miliki sekarang Tumbler Custom GS-400 2 side.\nDimensi:\nVolume 370 ml\nTinggi 17.1 cm\nLebar 7.5 cm', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-3.jpg', 'banner1.jpg', '#Tumbler', '2022-11-05', 1),
(4, 'Aiming For Higher The Mastopexy', 'Tu kan Lucu banget, ayo meriahkan hari spesial sahabat mu dengan order sekarang juga tumbler cantik ini di @mfbinary ya', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-4.jpg', 'banner1.jpg', '#Tumbler', '2022-11-05', 1),
(5, 'Wedding Rings A Gift For A Lifetime', '<p>Hydroderm is the highly desired anti-aging cream on the block. This serum restricts the\n occurrence of early aging sings on the skin and keeps the skin younger, tighter and\n healthier. It reduces the wrinkles and loosening of skin. This cream nourishes the skin\n and brings back the glow that had lost in the run of hectic years.</p>\n <p>The most essential ingredient that makes hydroderm so effective is Vyo-Serum, which is a\n product of natural selected proteins. This concentrate works actively in bringing about\n the natural youthful glow of the skin. It tightens the skin along with its moisturizing\n effect on the skin. The other important ingredient, making hydroderm so effective is\n “marine collagen” which along with Vyo-Serum helps revitalize the skin.</p>', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-5.jpg', 'banner1.jpg', '#Poster #Tumbler #Edukasi #2022\n', '2022-11-05', 1),
(6, 'The Different Methods Of Hair Removal', 'Kamu bisa beli satuan ya. No min. Order.\r\nJadikan hari spesial keluargamu semakin berkesan, dengan hadiah spesial dari kamu nih.', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-6.jpg', 'banner1.jpg', '#Tumbler #Quotes', '2022-11-05', 1),
(7, 'Hoop Earrings A Style From History', 'Ada juga ni pulpen dengan desain unik dan lucu, bisa custom sesuai keinginan kamu, dan cocok banget ni buat hadiah perpisahan sekolah.', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-7.jpg', 'banner1.jpg', '#Pulpen', '2022-11-05', 1),
(8, 'Lasik Eye Surgery Are You Ready', 'Kalender dan Poster Edukasi bisa kamu dapatkan dengan harga terjangkan, untuk desainnya bisa kamu tentukan sendiri loh.., ayo! tunggu apa lagi untuk berkunjung ke toko kami @mfbinary', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-8.jpg', 'banner1.jpg', '#Poster #Tumbler #Edukasi #2022\n', '2022-11-05', 1),
(9, 'Enjoying Beautiful Scarf', 'Khusus poster edukasi lagi diskon gede-gedean ini sampe 50%, kamu jangan sampai ketinggalan, promonya hanya bulan ini saja, ayo tunggu apa lagi :D.', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-9.jpg', 'banner1.jpg', '#Poster', '2022-11-05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_cost` decimal(10,2) NOT NULL,
  `order_status` varchar(100) NOT NULL DEFAULT 'on_hold',
  `order_rate` tinyint(1) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_city` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_cost`, `order_status`, `order_rate`, `user_id`, `user_phone`, `user_city`, `user_address`, `order_date`) VALUES
(2, '320.50', 'delivered', NULL, 3, '0213981326', 'Bandung Timur', 'Cibiru', '2023-03-13 03:29:01'),
(3, '13.50', 'paid', NULL, 3, '12308127', 'bdg', 'cbr', '2023-03-13 03:46:58'),
(4, '82.50', 'delivered', NULL, 3, '123123', 'uadh', 'awdho', '2023-03-13 03:48:24'),
(5, '34.50', 'delivered', NULL, 3, '', '', '', '2023-03-20 02:27:36'),
(6, '16.50', 'shipped', 1, 3, 'dw', 'awd', 'adw', '2023-03-20 03:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`item_id`, `order_id`, `product_id`, `product_name`, `product_image`, `product_price`, `product_quantity`, `user_id`, `order_date`) VALUES
(3, 2, '1', 'Sepatu Sneakers Pria Import Original Khamzo D05Terbaru', 'product-1.jpg', '20.00', 14, 3, '2023-03-13 03:29:01'),
(4, 2, '3', 'Jaket pria kantor formal casual TRENDY', 'product-2.jpg', '13.50', 3, 3, '2023-03-13 03:29:01'),
(5, 3, '3', 'Jaket pria kantor formal casual TRENDY', 'product-2.jpg', '13.50', 1, 3, '2023-03-13 03:46:58'),
(6, 4, '4', 'SPOTEC Sepatu Student Helios Hitam', 'product-3.jpg', '16.50', 5, 3, '2023-03-13 03:48:24'),
(7, 5, '7', 'AD012 Pashmina Cashmere Syal Scarf Shawl Kasmir Bahan Viscose', 'product-6.jpg', '14.50', 1, 3, '2023-03-20 02:27:36'),
(8, 5, '1', 'Sepatu Sneakers Pria Import Original Khamzo D05Terbaru', 'product-1.jpg', '20.00', 1, 3, '2023-03-20 02:27:36'),
(9, 6, '4', 'SPOTEC Sepatu Student Helios Hitam', 'product-3.jpg', '16.50', 1, 3, '2023-03-20 03:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_id` varchar(250) NOT NULL,
  `payment_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `order_id`, `user_id`, `transaction_id`, `payment_date`) VALUES
(0, 2, 3, '1T430421F8953051S', '2023-03-13 03:46:36'),
(0, 3, 3, '9PV33441VJ322691M', '2023-03-13 03:47:27'),
(0, 4, 3, '7W28632268248814G', '2023-03-13 03:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_brand` varchar(100) DEFAULT NULL,
  `product_category` varchar(100) DEFAULT NULL,
  `product_description` varchar(255) DEFAULT NULL,
  `product_criteria` varchar(50) DEFAULT NULL,
  `product_image1` varchar(100) DEFAULT NULL,
  `product_image2` varchar(100) DEFAULT NULL,
  `product_image3` varchar(100) DEFAULT NULL,
  `product_image4` varchar(100) DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `special_offer` decimal(10,2) DEFAULT NULL,
  `product_color` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_brand`, `product_category`, `product_description`, `product_criteria`, `product_image1`, `product_image2`, `product_image3`, `product_image4`, `product_price`, `special_offer`, `product_color`) VALUES
(1, 'Sepatu Sneakers Pria Import Original Khamzo D05Terbarua', 'Khamzoa', 'sepatua', 'Sepatu Slip On Khamzo D05 yaitu salah satu model baru dan trendy untuk anda miliki, sangat nyaman dan dapat menunjang penampilan serta kepercayaan adiri Anda.', 'favouritea', 'product-1.jpga', 'product-1.jpga', 'product-1.jpga', 'product-1.jpga', '21.00', '1.00', 'Biru2'),
(3, 'Jaket pria kantor formal casual TRENDY', 'Private', 'jaket', 'Barang terjamin kualitasnya, bahan bagus, dan tebal. Ayo buruan order kak sebelum terlambat.', 'favourite', 'product-2.jpg', 'product-2.jpg', 'product-2.jpg', 'product-2.jpg', '13.50', '0.00', 'Coklat'),
(4, 'SPOTEC Sepatu Student Helios Hitam', 'Spotec', 'sepatu', 'Sepatu ini termasuk kategori sepatu sekolah mempunyai desain klasik, dengan kombinasi material kulit imitasi dan kulit suede imitasi, sepatu ini menggunakan outsole full memberikan kekuatan ekstra.', 'favourite', 'product-3.jpg', 'product-3.jpg', 'product-3.jpg', 'product-3.jpg', '16.50', '0.00', 'Hitam'),
(5, 'M231 Hoodie Panjang Light Brown 2197A', 'Fleece', 'jaket', 'Produk ini too much perfect, ga perlu pake foto lah ya, itu foto produk udah menggambarkan semuanya', 'favourite', 'product-4.jpg', 'product-4.jpg', 'product-4.jpg', 'product-4.jpg', '19.25', '0.00', 'coklat'),
(6, 'Kaos hitam tshirt polos houseofcuff motif Tokyo Black', 'Houseofcut', 'kaos', 'Bahan Kain 100% Premium Cotton-Combed 30s Ultrasoft. Bahan sejuk dan nyaman dipakai, gak gampang kusut, gak gampang berbulu dan mudah dicuci.', 'favourite', 'product-5.jpg', 'product-5.jpg', 'product-5.jpg', 'product-5.jpg', '20.25', '0.00', 'hitam'),
(7, 'AD012 Pashmina Cashmere Syal Scarf Shawl Kasmir Bahan Viscose', 'Unixcomart', 'syal', 'Syal atau Scarf Cashmere, material Viscose (sutera sintetis), ukuran 65cm x 180cm, style casual, unisex, kondisi 100% baru, dan made in China.', 'favourite', 'product-6.jpg', 'product-6.jpg', 'product-6.jpg', 'product-6.jpg', '14.50', '0.00', 'abu-abu'),
(8, 'Tas Selempang Orion Synthetic Leather', 'Firefly', 'tas', 'High quality synthetic leather, waterproof material inside, laptop Sleeve up to 14\", fully padded main compartment, ballpoint & handphone sleeve inside, and roomy main compartment', 'favourite', 'product-7.jpg', 'product-7.jpg', 'product-7.jpg', 'product-7.jpg', '19.75', '0.00', 'coklat'),
(9, 'Matsuda Kaos Polo Shirt Pria Kerah Aioi', 'Matsuda', 'kaos', 'Style Aioi, Polo Shirt Original Premium Jersey Cotton Mix, Matsuda - Your Everyday Premium Clothing dan Bahan premium comfort.\r\n', 'favourite', 'product-8.jpg', 'product-8.jpg', 'product-8.jpg', 'product-8.jpg', '30.00', '0.00', 'hitam'),
(10, 'Sepatu Sneakers Pria Import Original Khamzo D05Terbarua', 'Khamzoa', 'sepatua', 'Sepatu Slip On Khamzo D05 yaitu salah satu model baru dan trendy untuk anda miliki, sangat nyaman dan dapat menunjang penampilan serta kepercayaan adiri Anda.', 'Common', 'Sepatu_Sneakers_Pria_Import_Original_Khamzo_D05Terbarua1.jpg', 'Sepatu_Sneakers_Pria_Import_Original_Khamzo_D05Terbarua2.jpg', 'Sepatu_Sneakers_Pria_Import_Original_Khamzo_D05Terbarua3.jpg', 'Sepatu_Sneakers_Pria_Import_Original_Khamzo_D05Terbarua4.jpg', '21.00', '1.00', 'Biru2'),
(11, 'Sepatu Sneakers Pria Import Original Khamzo D05Terbaruass', 'Khamzoasss', 'sepatuass', 'Sepatu Slip On Khamzo D05 yaitu salah satu model baru dan trendy untuk anda miliki, sangat nyaman dan dapat menunjang penampilan serta kepercayaan adiri Anda.', NULL, 'Sepatu_Sneakers_Pria_Import_Original_Khamzo_D05Terbaruass1.jpg', 'Sepatu_Sneakers_Pria_Import_Original_Khamzo_D05Terbaruass2.jpg', 'Sepatu_Sneakers_Pria_Import_Original_Khamzo_D05Terbaruass3.jpg', 'Sepatu_Sneakers_Pria_Import_Original_Khamzo_D05Terbaruass4.jpg', '21.00', '1.00', 'Biru2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_phone` varchar(20) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_city` varchar(100) DEFAULT NULL,
  `user_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_phone`, `user_address`, `user_city`, `user_photo`) VALUES
(1, 'Raihan Hanafi', 'user1@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '628763655111', 'Arcamanik Residence Regency', 'Bandung', 'user_profile1.jpg'),
(2, 'Ridwan Hanif', 'user2@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '628763655222', 'Green Garden Regency', 'Bandung', 'user_profile2.jpg'),
(3, 'Dete Rachman', 'dt@gmail.com', '4297f44b13955235245b2497399d7a93', '628763655333', 'Bandung City View', 'Bandung', 'user_profile3.jpg'),
(4, 'Test', 'test@gmail.com', '4297f44b13955235245b2497399d7a93', '0912312', 'ADWPIN', 'Bandugn', 'Test.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
