-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2024 at 12:36 PM
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
-- Database: `inventory`
--
CREATE DATABASE IF NOT EXISTS `inventory` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inventory`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kodeBarang` char(5) NOT NULL,
  `namaBarang` varchar(35) DEFAULT NULL,
  `hargaBeli` int(11) DEFAULT NULL,
  `hargaJual` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kodeBarang`, `namaBarang`, `hargaBeli`, `hargaJual`, `stok`, `satuan`) VALUES
('08888', 'kacang', 10000, 15000, 0, 'pcs'),
('666hh', 'lllllllllllllllllllllllll', 0, 0, 0, 'pcs'),
('6767', 'BAARRRR', 0, 0, 0, 'pcs'),
('AT001', 'Buku Tulis 40 Lembar', 3000, 5000, 500, 'Pcs'),
('AT002', 'Pulpen Gel', 2000, 3500, 400, 'Pcs'),
('AT003', 'Penggaris 30cm', 1500, 3000, 300, 'Pcs'),
('AT004', 'Penghapus Karet', 1000, 2000, 600, 'Pcs'),
('AT005', 'Spidol Permanen', 4000, 6000, 200, 'Pcs'),
('EL001', 'Lampu LED 10W', 15000, 20000, 100, 'Pcs'),
('EL002', 'Kipas Angin', 120000, 150000, 50, 'Pcs'),
('EL003', 'TV LED 32 inch', 1800000, 2200000, 20, 'Pcs'),
('EL004', 'Kabel HDMI 2 Meter', 25000, 40000, 150, 'Pcs'),
('EL005', 'Speaker Bluetooth', 350000, 450000, 30, 'Pcs'),
('EL006', 'Kabel Listrik 10 Meter', 35000, 50000, 90, 'Meter'),
('EL007', 'Pipa PVC 3 inch', 25000, 40000, 50, 'Meter'),
('FT001', 'Kaos Polos', 25000, 50000, 200, 'Pcs'),
('FT002', 'Celana Jeans', 100000, 150000, 75, 'Pcs'),
('FT003', 'Jaket Kulit', 300000, 400000, 40, 'Pcs'),
('FT004', 'Topi Baseball', 20000, 35000, 120, 'Pcs'),
('FT005', 'Sepatu Sneaker', 250000, 350000, 60, 'Pcs'),
('FT006', 'Bahan Kain 10 Meter', 80000, 120000, 70, 'Meter'),
('MS001', 'Beras 5kg', 60000, 80000, 100, 'Karung'),
('MS002', 'Minyak Goreng 1 Liter', 12000, 15000, 200, 'Botol'),
('MS003', 'Gula Pasir 1kg', 12000, 16000, 150, 'Pcs'),
('MS004', 'Garam Dapur 500gr', 2000, 4000, 500, 'Pcs'),
('MS005', 'Teh Celup 50 Sachet', 15000, 25000, 300, 'Kotak'),
('MS006', 'Susu UHT 1 Liter', 12000, 18000, 100, 'Liter'),
('MS007', 'Tepung Terigu 1kg', 7000, 10000, 200, 'Kilogram'),
('MS008', 'Kopi Bubuk 500gr', 25000, 40000, 150, 'Gram'),
('MS009', 'Mie Instan Per Dus', 60000, 85000, 80, 'Dus'),
('MS010', 'Air Mineral Galon', 15000, 20000, 120, 'Galon'),
('MS011', 'Beras 10kg', 120000, 150000, 60, 'Kilogram'),
('MS012', 'Minyak Goreng 5 Liter', 60000, 85000, 100, 'Liter');

-- --------------------------------------------------------

--
-- Table structure for table `itemnotabeli`
--

CREATE TABLE `itemnotabeli` (
  `idItemNotaBeli` int(11) NOT NULL,
  `noNotaBeli` int(11) DEFAULT NULL,
  `kodeBarang` char(5) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `itemnotabeli`
--

INSERT INTO `itemnotabeli` (`idItemNotaBeli`, `noNotaBeli`, `kodeBarang`, `qty`, `harga`) VALUES
(1, 1001, 'AT001', 10, 3000),
(2, 1001, 'AT002', 20, 2000),
(3, 1001, 'AT003', 15, 1500),
(4, 1002, 'AT004', 30, 1000),
(5, 1002, 'AT005', 10, 4000),
(6, 1003, 'EL001', 5, 15000),
(7, 1003, 'EL002', 2, 120000),
(8, 1004, 'EL003', 1, 1800000),
(9, 1004, 'EL004', 10, 25000),
(10, 1005, 'EL005', 3, 350000),
(11, 1006, 'EL006', 8, 35000),
(12, 1007, 'EL007', 6, 25000),
(13, 1008, 'FT001', 20, 25000),
(14, 1008, 'FT002', 5, 100000),
(15, 7, 'EL001', 12, 15000),
(17, 7, 'AT003', 12, 1500),
(18, 7, 'EL001', 12, 25000);

-- --------------------------------------------------------

--
-- Table structure for table `itemnotajual`
--

CREATE TABLE `itemnotajual` (
  `idItemNotaJual` int(11) NOT NULL,
  `noNotaJual` int(11) DEFAULT NULL,
  `kodeBarang` char(5) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `itemnotajual`
--

INSERT INTO `itemnotajual` (`idItemNotaJual`, `noNotaJual`, `kodeBarang`, `qty`, `harga`) VALUES
(1, 1, 'EL002', 15, 3500),
(2, 2, 'EL006', 10, 25000),
(3, 5, 'EL001', 1, 20000),
(4, 6, 'AT002', 38, 3500),
(5, 1, 'EL001', 21, 20000),
(6, 7, 'EL002', 1, 150000),
(7, 1, 'EL003', 1, 2200000);

-- --------------------------------------------------------

--
-- Table structure for table `notabeli`
--

CREATE TABLE `notabeli` (
  `noNotaBeli` int(11) NOT NULL,
  `kodeSupplier` char(3) DEFAULT NULL,
  `tgl` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notabeli`
--

INSERT INTO `notabeli` (`noNotaBeli`, `kodeSupplier`, `tgl`) VALUES
(7, '001', '2024-11-05'),
(1001, 'SUP', '2024-11-01'),
(1002, 'SP1', '2024-11-02'),
(1003, 'SP2', '2024-11-03'),
(1004, 'SP3', '2024-11-04'),
(1005, 'SP4', '2024-11-05'),
(1006, 'SUP', '2024-11-06'),
(1007, 'SP1', '2024-11-07'),
(1008, 'SP2', '2024-11-08'),
(1009, NULL, '2024-12-09'),
(1010, NULL, '2024-12-17'),
(1011, NULL, '2024-12-17'),
(1012, NULL, '2024-12-17'),
(1013, NULL, '2024-12-17');

-- --------------------------------------------------------

--
-- Table structure for table `notajual`
--

CREATE TABLE `notajual` (
  `noNotaJual` int(11) NOT NULL,
  `tgl` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notajual`
--

INSERT INTO `notajual` (`noNotaJual`, `tgl`) VALUES
(1, '2024-11-02'),
(2, '2024-11-03'),
(3, '2024-12-17'),
(4, '2024-12-17'),
(5, '2024-12-17'),
(6, '2024-12-17'),
(7, '2024-12-17');

-- --------------------------------------------------------

--
-- Table structure for table `pamakai`
--

CREATE TABLE `pamakai` (
  `user_name` varchar(30) NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemakai`
--

CREATE TABLE `pemakai` (
  `user_name` varchar(30) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `setup_barang` tinyint(1) NOT NULL DEFAULT 0,
  `setup_supplier` tinyint(1) NOT NULL DEFAULT 0,
  `jual` tinyint(1) NOT NULL DEFAULT 0,
  `beli` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemakai`
--

INSERT INTO `pemakai` (`user_name`, `password`, `setup_barang`, `setup_supplier`, `jual`, `beli`) VALUES
('Admin', '*01A6717B58FF5C7EAFFF6CB7C96F7428EA65FE4C', 1, 1, 1, 1),
('Kasir', '*3E5287812B7D1F947439AC45E73935377A3ADEF7', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `kodeSupplier` char(3) NOT NULL,
  `namaSupplier` varchar(30) DEFAULT NULL,
  `alamat` varchar(40) DEFAULT NULL,
  `telpon` varchar(15) DEFAULT NULL,
  `kota` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`kodeSupplier`, `namaSupplier`, `alamat`, `telpon`, `kota`) VALUES
('001', 'Armin', 'Jogja', '083821634696', 'Jogja'),
('SP1', 'CV Sinar Jaya', 'Jl. Raya Selatan No. 20', '082345678901', 'Bandung'),
('SP2', 'UD Toko Bersama', 'Jl. Pasar No. 15', '083456789012', 'Surabaya'),
('SP3', 'PT Cahaya Abadi', 'Jl. Pahlawan No. 8', '084567890123', 'Medan'),
('SP4', 'CV Jaya Sentosa', 'Jl. Kebun Jeruk No. 25', '085678901234', 'Semarang'),
('SUP', 'PT Sumber Makmur', 'Jl. Merdeka No. 10', '081234567890', 'Jakarta');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_detailbeli`
-- (See below for the actual view)
--
CREATE TABLE `view_detailbeli` (
`idItemNotaBeli` int(11)
,`noNotaBeli` int(11)
,`kodeBarang` char(5)
,`namaBarang` varchar(35)
,`qty` int(11)
,`harga` int(11)
,`jumlah` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_itemjual`
-- (See below for the actual view)
--
CREATE TABLE `view_itemjual` (
`idItemNotaJual` int(11)
,`noNotaJual` int(11)
,`kodeBarang` char(5)
,`namaBarang` varchar(35)
,`qty` int(11)
,`harga` int(11)
,`jumlah` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_notabeli`
-- (See below for the actual view)
--
CREATE TABLE `view_notabeli` (
`noNotaBeli` int(11)
,`tgl` date
,`kodeSupplier` char(3)
,`namaSupplier` varchar(30)
,`alamat` varchar(40)
,`telpon` varchar(15)
,`kota` varchar(25)
);

-- --------------------------------------------------------

--
-- Structure for view `view_detailbeli`
--
DROP TABLE IF EXISTS `view_detailbeli`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_detailbeli`  AS SELECT `i`.`idItemNotaBeli` AS `idItemNotaBeli`, `i`.`noNotaBeli` AS `noNotaBeli`, `i`.`kodeBarang` AS `kodeBarang`, `b`.`namaBarang` AS `namaBarang`, `i`.`qty` AS `qty`, `i`.`harga` AS `harga`, `i`.`qty`* `i`.`harga` AS `jumlah` FROM (`itemnotabeli` `i` join `barang` `b`) WHERE `i`.`kodeBarang` = `b`.`kodeBarang` ;

-- --------------------------------------------------------

--
-- Structure for view `view_itemjual`
--
DROP TABLE IF EXISTS `view_itemjual`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_itemjual`  AS SELECT `i`.`idItemNotaJual` AS `idItemNotaJual`, `i`.`noNotaJual` AS `noNotaJual`, `i`.`kodeBarang` AS `kodeBarang`, `b`.`namaBarang` AS `namaBarang`, `i`.`qty` AS `qty`, `i`.`harga` AS `harga`, `i`.`qty`* `i`.`harga` AS `jumlah` FROM (`itemnotajual` `i` join `barang` `b`) WHERE `i`.`kodeBarang` = `b`.`kodeBarang` ;

-- --------------------------------------------------------

--
-- Structure for view `view_notabeli`
--
DROP TABLE IF EXISTS `view_notabeli`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_notabeli`  AS SELECT `b`.`noNotaBeli` AS `noNotaBeli`, `b`.`tgl` AS `tgl`, `b`.`kodeSupplier` AS `kodeSupplier`, `s`.`namaSupplier` AS `namaSupplier`, `s`.`alamat` AS `alamat`, `s`.`telpon` AS `telpon`, `s`.`kota` AS `kota` FROM (`notabeli` `b` join `supplier` `s`) WHERE `b`.`kodeSupplier` = `s`.`kodeSupplier` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kodeBarang`);

--
-- Indexes for table `itemnotabeli`
--
ALTER TABLE `itemnotabeli`
  ADD PRIMARY KEY (`idItemNotaBeli`),
  ADD KEY `fk_itemNotaBeli_noNotaBeli` (`noNotaBeli`),
  ADD KEY `fk_itemNotaBeli_kodeBarang` (`kodeBarang`);

--
-- Indexes for table `itemnotajual`
--
ALTER TABLE `itemnotajual`
  ADD PRIMARY KEY (`idItemNotaJual`),
  ADD KEY `fk_itemNotaJual_noNotaJual` (`noNotaJual`),
  ADD KEY `fk_itemNotaJual_kodeBarang` (`kodeBarang`);

--
-- Indexes for table `notabeli`
--
ALTER TABLE `notabeli`
  ADD PRIMARY KEY (`noNotaBeli`),
  ADD KEY `fk_notaBeli_kodeSupplier` (`kodeSupplier`);

--
-- Indexes for table `notajual`
--
ALTER TABLE `notajual`
  ADD PRIMARY KEY (`noNotaJual`);

--
-- Indexes for table `pamakai`
--
ALTER TABLE `pamakai`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `pemakai`
--
ALTER TABLE `pemakai`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`kodeSupplier`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `itemnotabeli`
--
ALTER TABLE `itemnotabeli`
  MODIFY `idItemNotaBeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `itemnotajual`
--
ALTER TABLE `itemnotajual`
  MODIFY `idItemNotaJual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notabeli`
--
ALTER TABLE `notabeli`
  MODIFY `noNotaBeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1014;

--
-- AUTO_INCREMENT for table `notajual`
--
ALTER TABLE `notajual`
  MODIFY `noNotaJual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `itemnotabeli`
--
ALTER TABLE `itemnotabeli`
  ADD CONSTRAINT `fk_itemNotaBeli_kodeBarang` FOREIGN KEY (`kodeBarang`) REFERENCES `barang` (`kodeBarang`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_itemNotaBeli_noNotaBeli` FOREIGN KEY (`noNotaBeli`) REFERENCES `notabeli` (`noNotaBeli`) ON DELETE CASCADE;

--
-- Constraints for table `itemnotajual`
--
ALTER TABLE `itemnotajual`
  ADD CONSTRAINT `fk_itemNotaJual_kodeBarang` FOREIGN KEY (`kodeBarang`) REFERENCES `barang` (`kodeBarang`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_itemNotaJual_noNotaJual` FOREIGN KEY (`noNotaJual`) REFERENCES `notajual` (`noNotaJual`) ON DELETE CASCADE;

--
-- Constraints for table `notabeli`
--
ALTER TABLE `notabeli`
  ADD CONSTRAINT `fk_notaBeli_kodeSupplier` FOREIGN KEY (`kodeSupplier`) REFERENCES `supplier` (`kodeSupplier`) ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-12-17 11:35:39', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"en_GB\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `uts_abd_grup_a`
--
CREATE DATABASE IF NOT EXISTS `uts_abd_grup_a` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `uts_abd_grup_a`;

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `noPasien` int(11) NOT NULL,
  `namaPasien` varchar(35) DEFAULT NULL,
  `genderPasien` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `agamaPasien` enum('Kristen','Katolik','Islam','Hindhu','Budha','Kong Hu Cu') DEFAULT NULL,
  `tglLahirPasien` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`noPasien`, `namaPasien`, `genderPasien`, `agamaPasien`, `tglLahirPasien`) VALUES
(18, 'Jane Smith', 'Perempuan', 'Katolik', '1992-02-02'),
(19, 'Mike Johnson', 'Laki-Laki', 'Islam', '1985-03-03'),
(20, 'Anna Brown', 'Perempuan', 'Hindhu', '1995-04-04'),
(21, 'Tom Wilson', 'Laki-Laki', 'Budha', '1980-05-05'),
(22, 'Lisa White', 'Perempuan', 'Kong Hu Cu', '1988-06-06'),
(23, 'James Taylor', 'Laki-Laki', 'Kristen', '1993-07-07'),
(24, 'Emily Davis', 'Perempuan', 'Katolik', '1991-08-08'),
(25, 'Chris Martin', 'Laki-Laki', 'Islam', '1987-09-09'),
(26, 'Patricia Miller', 'Perempuan', 'Hindhu', '1996-10-10'),
(27, 'David Wilson', 'Laki-Laki', 'Budha', '1983-11-11'),
(28, 'Laura Thompson', 'Perempuan', 'Kong Hu Cu', '1994-12-12'),
(29, 'Kevin Anderson', 'Laki-Laki', 'Kristen', '1992-01-15'),
(30, 'Sarah Harris', 'Perempuan', 'Katolik', '1990-02-20'),
(31, 'Charles Lewis', 'Laki-Laki', 'Islam', '1988-03-25'),
(32, 'Jessica Clark', 'Perempuan', 'Hindhu', '1991-04-30'),
(33, 'Daniel Hall', 'Laki-Laki', 'Budha', '1986-05-05'),
(34, 'Megan Allen', 'Perempuan', 'Kong Hu Cu', '1993-06-15'),
(35, 'Brian Young', 'Laki-Laki', 'Kristen', '1989-07-25'),
(36, 'Nancy King', 'Perempuan', 'Katolik', '1992-08-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`noPasien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `noPasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
