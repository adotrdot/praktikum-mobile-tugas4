-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 06, 2023 at 11:11 PM
-- Server version: 11.1.2-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `nama`, `email`, `password`) VALUES
(1, 'Administrator', 'admin@admin.com', '$2y$10$F.F8AwYR.5jvIk.S1WM9zOsNS6zdsqtomfN.hyX8MX69m9085Cfke'),
(4, 'alvin', 'alvin@user.com', '$2y$10$QskUzUGp3BZQpn81h5t53ueiPV3h0CTgH3bXtEdXKZV6mq2qlFYwW');

-- --------------------------------------------------------

--
-- Table structure for table `member_token`
--

CREATE TABLE `member_token` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `auth_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_token`
--

INSERT INTO `member_token` (`id`, `member_id`, `auth_key`) VALUES
(1, 1, 'Rp8H7sGsz7eM4koQa536K1qodogeANZ46MmayeLUSYl8kfkqg8YlNfqpGDbHNKsRWvCSMTDsvKbirEzsxVIRjQBSq2dsZX4s3T7o'),
(2, 1, 'iHbw3Ww4nDUCjf0dRz4XJ6ZssT17tuzEd01NfRdJxAdk5J7Y0NOVI7KTDkzoKIR50jEX6HoHW07kYvJoeztXN6ZJCGwd2jZMIdRW'),
(3, 1, 'ar7ab3snFSMP93qgnOiZtBqzL2nyB78rqWAdKdF87ssGY2s4ss8lVwErYdHGNIYwwCt6oFSjZqMGxC8dfnsxLbVsjVeFImkI8fsZ'),
(4, 1, '8Snu9T52dWrFRjddcasjoW5Fx2jmAZf80nHqas9YMOswz6bg6b3ycLaiC50kG7uQFvo282uQmu5sdAPuRbQt702utrdwBdF5f0uw'),
(5, 1, 'qndZj7d4NNTisVkwQubIYZuXpsSUR7N73BAjlm1nzcHJbOlvwddXao96Z8euW69n7JP3nIDTI4td3jduKuzlnUcxG9N6ionVRiiC'),
(6, 1, 'ngqrCAV4BvA4s4EJuy5lKsH1TmJhkEyzJBdYJCFadDxAqKjBk4PD8FlHKsRwFhjJMNodYc0aIpDXJ9rEjy0Hdb6Ngpdb4WRXJtw1'),
(7, 4, 'Jn8Xs1osSUzG2XSaZ794WdMit6X4shCnU1QltOWxUv1N7U30saTBz1ODcRFhni79Wv8BoQXrWJSUeVdvMlvrEbueIupyGxiY1t0x'),
(8, 4, 'SPk7KvSqdD480wSE0XTdI3j9PpTd9IQMVUaC9GlznheBy7RdoCzACqnG5rg55bBTidlfL3H3q7z1PNEm7E1j2amoorlAZ1mO7v41'),
(9, 4, '8LvdJR2DTr633LHCfRlOhhxQKpF3vsc17VlFHHSz6p2XmHQ9IXZnrpXpfDiDYnEgKGj6tEBmQHaJvMzTAtYpQI9YjvUGq3qqNFLe'),
(10, 4, 'frU3CRjhoBGdO92Ox6OzCkdLYPKdLdZa9twpFPq42rvhxXdbuv5gd9xDZsvmhJb5eGtdgJccVKVIk5JYj6NVFD1dkK2Yf13dK2dJ'),
(11, 4, 'pIESeuXkvsKM9DcSKGxR3DGQLUDwwdNdslii45sHt8EDPhd2XGXsOD4BgMyyF0Ap2rcDkfsiKBiAr4c922iSsGmdAOaMDUpbhOhd'),
(12, 4, 'LOkiJhyhPdDVe1Zh8lsfHRxlgUdywv9r9sA4DF0sUr4yBb4K4hdNkf4usQnoctkG4oRz8fSVKobkNWYPO4dmveZdMkB8GucbVTvV'),
(13, 4, 'guMdHMdvEkSs32Gd79QjINzaISsslDmOF4dalsDwohZeYhDd5HgM7sbgZoAtFYEPsZddn3Yw3FwQEi1fMCslemeKJxADvJhdP5hn'),
(14, 4, 'nsdyzVBjFoDp9lwxv1RtNsaZJmdbKoJ5F6wqYFBgQ2eJdpkHE7kOXR08oLaNdndatcxH7UQnqc2S6ZYsdsVf4dzu5768qtrDtOtx'),
(15, 4, 'HTnEsssWMytejsViJ1PndieQrX4i5dgJdytMxTVTgdmT6H4OVA2QGc8cwUDcXnMxYPKvX63rJEbj5RS2dbl4Uq1dw7ydb7QkRUeC'),
(16, 4, 'EFfDJMtWoqsMiXMbpBe84bpjbvzxELSPSsdZzPsWUyPrlxsk4dqqB3tMR6pTFEmR3QDqpnjlGgIRDfj7hHMWddjJT57vF1BYuAan'),
(17, 4, 'yd9dsdssIHMxn3YzmZSXoXeh7o8wvVjR2k2dhddMsNKhAMP4QfDLT6DXEsaEsK0sac7VPYvnyAmu51twuRwrenqYQbA73tU0V9d2'),
(18, 4, 'H57imswwkoUTjN8XSIOXoKYBFyy7U7oL75vdV0wTQHvsedZ59jdgN6rbSVGPHdCpJI44roX05l95shSOeZHQt0IAdGLPJWGBuBvs'),
(19, 4, 'o4aY75XYQ9GdBSuiiF6277dCvSqTdAmZdaAzspDk9aYe1ZsdBkrj8NQJzwi6tGHkpqYTdBZVkcI06sIdN7LRqbklsiVX21wv9sPq'),
(20, 4, 'UUBsXzAQixAJa4Ds5BRDMEsJ5hFdqpYsJzhcZasgfr2ByYxcOJ9Xt1U1ho3jWDOTLjLvjsIy88dsGcg5FVixTj9YuBEq6SBcdiwy');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kode_produk` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kode_produk`, `nama_produk`, `harga`) VALUES
(1, 'A001', 'TV', 6000000),
(3, 'A002', 'Lenovo Ideapad 330', 4200000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_token`
--
ALTER TABLE `member_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `member_token`
--
ALTER TABLE `member_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `member_token`
--
ALTER TABLE `member_token`
  ADD CONSTRAINT `member_token_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
