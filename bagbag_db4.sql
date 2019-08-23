-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2019 at 01:12 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bagbag_db4`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` varchar(50) NOT NULL COMMENT 'sử dụng cho đăng nhập',
  `pass` varchar(255) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `sdt` varchar(11) NOT NULL COMMENT 'sử dụng cho đăng nhập',
  `email` varchar(100) NOT NULL COMMENT 'sử dụng cho đăng nhập',
  `trangthai` int(1) DEFAULT '0' COMMENT '0 là chưa kích hoạt, 1 là đã kích hoạt 2 tạm khóa',
  `capdo` int(1) NOT NULL DEFAULT '3' COMMENT '0. IT system, 1.Quản lý cấp cao, 2. NV kho, 3. NV tư vấn chăm sóc khách hàng',
  `thoigiantao` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `pass`, `hoten`, `sdt`, `email`, `trangthai`, `capdo`, `thoigiantao`) VALUES
('000001', 'e10adc3949ba59abbe56e057f20f883e', 'Bùi Lê Nhựt Tài', '0971165597', 'tai.builenhut@bagbag.tk', 1, 0, '2019-06-25 10:39:47'),
('000002', 'e10adc3949ba59abbe56e057f20f883e', 'ISA2', '0971165599', 'isa2@bagbag.tk', 0, 0, '2019-06-25 10:39:47'),
('000003', 'e10adc3949ba59abbe56e057f20f883e', 'ISA3', '0971165598', 'isa3@bagbag.tk', 2, 0, '2019-06-25 10:39:47'),
('100001', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Quốc Nguyên Thông', '0343444333', 'thong.nguyenquocnguyen@bagbag.tk', 1, 1, '2019-06-25 10:39:47'),
('100002', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Văn A', '0973436789', 'a.nguyenvan@bagbag.tk', 2, 1, '2019-06-25 10:39:47'),
('100003', 'e10adc3949ba59abbe56e057f20f883e', 'QLCC3', '0343444339', 'qlcc3@bagbag.tk', 0, 1, '2019-06-25 10:39:47'),
('100004', 'e10adc3949ba59abbe56e057f20f883e', 'QLCC4', '0971165588', 'qlcc4@bagbag.tk', 0, 1, '2019-07-27 00:18:10'),
('200001', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Văn M', '0973346789', 'm.nguyenvan@bagabg.tk', 1, 2, '2019-07-05 08:47:09'),
('200015', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Tiến Đạt', '01642976105', 'tiendatthpt2012z2015@gmail.com', 1, 2, '2019-08-02 03:07:30'),
('300001', 'e10adc3949ba59abbe56e057f20f883e', 'Lý Kiều C', '0973458789', 'c.lykieu@bagabg.tk', 1, 3, '2019-07-05 08:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `admin_log`
--

CREATE TABLE `admin_log` (
  `idlog` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idadmin` varchar(50) NOT NULL,
  `idsanpham` varchar(10) NOT NULL,
  `giacu` float NOT NULL,
  `giamoi` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id` int(11) NOT NULL,
  `mahoadon` varchar(15) NOT NULL,
  `idsanpham` varchar(10) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongiaban` float NOT NULL,
  `ghichu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id`, `mahoadon`, `idsanpham`, `soluong`, `dongiaban`, `ghichu`) VALUES
(1, '05072019ASDUIO', 'BLCLT00002', 1, 750000, NULL),
(2, '05072019ASDUIO', 'BLMCT00001', 1, 689000, NULL),
(3, '06072019UYHTRDA', 'BLCLT00002', 1, 750000, NULL),
(4, '03082019153039', 'BLMCT00001', 1, 689000, NULL),
(5, '03082019153039', 'BCNSP00002', 1, 2189000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `id` int(11) NOT NULL,
  `maphieunhap` varchar(10) NOT NULL,
  `idsanpham` varchar(10) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongianhap` float NOT NULL,
  `ghichu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`id`, `maphieunhap`, `idsanpham`, `soluong`, `dongianhap`, `ghichu`) VALUES
(1, 'NK01010119', 'BLCLT00002', 2, 500000, ''),
(2, 'NK01050719', 'BLCLT00002', 2, 400000, ''),
(3, 'NK01060719', 'BLMCT00001', 2, 500000, '');

--
-- Triggers `chitietphieunhap`
--
DELIMITER $$
CREATE TRIGGER `trg_chitietphieunhap_insertb3` BEFORE INSERT ON `chitietphieunhap` FOR EACH ROW begin 
 declare mpn varchar(10);
 declare td date;
 declare id varchar(10);
 declare sl int(11);
 declare gia float;
 set td = (select ngaynhap from `bagbag_db3`.phieunhapkho where maphieunhap=new.maphieunhap);
 set mpn = new.maphieunhap;
 set id = new.idsanpham;
 set sl = new.soluong;
 set gia = new.dongianhap;

 INSERT INTO `bagbag_db3`.`thoidiemgia`(`maphieunhap`, `thoidiem`, `idsanpham`, `soluong`, `dongianhap`) 
    VALUES (mpn, td, id, sl, gia);
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieuxuat`
--

CREATE TABLE `chitietphieuxuat` (
  `id` int(11) NOT NULL,
  `maphieuxuat` varchar(10) NOT NULL,
  `idsanpham` varchar(10) NOT NULL,
  `idthoidiemgia` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `giaxuat` float NOT NULL,
  `ghichu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietphieuxuat`
--

INSERT INTO `chitietphieuxuat` (`id`, `maphieuxuat`, `idsanpham`, `idthoidiemgia`, `soluong`, `giaxuat`, `ghichu`) VALUES
(1, '001050719C', 'BLCLT00002', 8, 1, 500000, ''),
(2, '001050719C', 'BLCLT00002', 9, 1, 500000, ''),
(3, '001060719C', 'BLCLT00002', 8, 1, 500000, '');

--
-- Triggers `chitietphieuxuat`
--
DELIMITER $$
CREATE TRIGGER `trg_chitietphieuxuat_insertb3` BEFORE INSERT ON `chitietphieuxuat` FOR EACH ROW begin 
 declare idtdg int(11);
 declare idsp varchar(10);
 declare sl int(11);
 set idtdg = new.idthoidiemgia;
 set idsp = new.idsanpham;
 set sl = new.soluong;
 update `bagbag_db3`.`thoidiemgia` set soluong=soluong-sl where idthoidiemgia=idtdg;
 end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `chitiettrangthaihoadon`
--

CREATE TABLE `chitiettrangthaihoadon` (
  `idtrangthaihd` int(11) NOT NULL,
  `mahoadon` varchar(15) NOT NULL,
  `thoigiantrangthai` datetime NOT NULL,
  `trangthai` tinyint(1) NOT NULL,
  `ghichuhethong` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitiettrangthaihoadon`
--

INSERT INTO `chitiettrangthaihoadon` (`idtrangthaihd`, `mahoadon`, `thoigiantrangthai`, `trangthai`, `ghichuhethong`) VALUES
(1, '05072019ASDUIO', '2019-07-05 17:27:51', 1, ''),
(2, '05072019ASDUIO', '2019-07-05 17:40:16', 2, ''),
(3, '05072019ASDUIO', '2019-07-05 17:51:51', 3, ''),
(4, '05072019ASDUIO', '2019-07-05 17:54:29', 4, 'LEXVN - NLVNMP0004794468'),
(5, '05072019ASDUIO', '2019-07-05 18:06:54', 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `danhmuccha` varchar(5) DEFAULT NULL,
  `iddanhmuc` varchar(5) NOT NULL COMMENT 'Danh mục cha 3 ký tự, Danh mục con 5 ký tự gồm 3 ký tự danh mục cha',
  `tendanhmuc` varchar(50) NOT NULL,
  `vitrixep` int(1) DEFAULT '1' COMMENT '0 Danh mục cha, 1 Danh mục con',
  `trangthai` int(1) DEFAULT '0' COMMENT '0 là chưa kích hoạt, 1 là đã kích hoạt 2 tạm khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`danhmuccha`, `iddanhmuc`, `tendanhmuc`, `vitrixep`, `trangthai`) VALUES
(NULL, 'BCN', 'Chanel', 1, 1),
('BCN', 'BCNSP', 'Balo Chanel thể thao', 1, 1),
('BCN', 'BCNWR', 'Balo Chanel chống nước', 1, 1),
(NULL, 'BHP', 'Hermes Paris', 1, 1),
('BHP', 'BHPSC', 'Balo Hermes Paris chống sốc', 1, 1),
('BHP', 'BHPSP', 'Balo Hermes Paris thể thao', 1, 1),
(NULL, 'BLC', 'Coolbell', 0, 1),
('BLC', 'BLCCT', 'Balo Coolbell Chống Trộm', 1, 1),
('BLC', 'BLCLT', 'Balo Laptop Coolbell', 1, 0),
(NULL, 'BLP', 'Puma', 0, 1),
('BLP', 'BLPDL', 'Balo Puma Du lịch', 1, 1),
('BLP', 'BLPFH', 'Balo Philip thời trang', 1, 1),
('BLP', 'BLPSP', 'Balo Philip thể thao', 1, 1),
(NULL, 'BNM', 'Ninomax', 1, 1),
('BNM', 'BNMDL', 'Balo Ninomax du lịch', 1, 1),
('BNM', 'BNMSP', 'Balo Ninomax thể thao', 1, 1),
(NULL, 'BPL', '3.1 Philip lim', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `mahoadon` varchar(15) NOT NULL,
  `iduser` varchar(50) DEFAULT NULL,
  `ngaytaohoadon` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Lấy thời gian tạo',
  `hotenkhach` varchar(50) NOT NULL,
  `sdtkhach` char(11) NOT NULL,
  `emailkhach` varchar(255) DEFAULT NULL,
  `hotennguoinhan` varchar(50) NOT NULL,
  `diachinhan` varchar(255) NOT NULL,
  `sdtnguoinhan` char(11) NOT NULL,
  `trigiahoadon` float NOT NULL,
  `thanhtoan` int(1) DEFAULT '0' COMMENT '0 là thanh toán khi nhận hàng, 1 thanh toán trực tuyến',
  `ghichu` varchar(255) DEFAULT NULL,
  `trangthai` int(1) DEFAULT '1' COMMENT '0 Bị hủy,1 Chờ xử lý, 2 Đã tiếp nhận, 3 Đang đóng gói, 4 Đang vận chuyển, 5 Giao hàng thành công',
  `thoigiancapnhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`mahoadon`, `iduser`, `ngaytaohoadon`, `hotenkhach`, `sdtkhach`, `emailkhach`, `hotennguoinhan`, `diachinhan`, `sdtnguoinhan`, `trigiahoadon`, `thanhtoan`, `ghichu`, `trangthai`, `thoigiancapnhat`) VALUES
('03082019153039', NULL, '2019-08-03 08:30:39', 'hotenkhachhang', 'sdt', 'email', 'nguyenthong', 'nguyenthong@gmail.com', '094858874', 6787860, 1, 'ghi chu', 1, '2019-08-03 08:30:39'),
('05072019ASDUIO', 'nguyenvana', '2019-07-05 10:27:51', 'Nguyễn Văn A', '0333886547', 'a.nguyenvan@gmail.com', 'Nguyễn Văn Đinh', '170 Cao Lỗ, Phường 4 Quận 8, TPHCM', '0383838462', 750000, 0, NULL, 5, '2019-07-08 02:53:05'),
('06072019UYHTRDA', NULL, '2019-07-06 10:56:11', 'Lê Quan L', '0334445989', NULL, 'Lê Quan L', '89 Bùi Điền - Phường 4 - Quận 8 - TPHCM', '0334445989', 1439000, 0, NULL, 2, '2019-07-08 02:53:41');

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `idncc` varchar(5) NOT NULL,
  `tennhacungcap` varchar(50) NOT NULL,
  `sdt` char(11) NOT NULL,
  `daidien` varchar(50) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `trangthai` int(1) NOT NULL DEFAULT '1' COMMENT '0 là ngừng cung cấp, 1 là đang cung cấp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`idncc`, `tennhacungcap`, `sdt`, `daidien`, `diachi`, `trangthai`) VALUES
('CC001', 'Miti', '333886547', 'Lê Mỹ Duyên', '155 Dạ Nam, Phường 3, Quận 8, TP. Hồ Chí Minh', 1),
('CC002', 'Coobell', '785245988', 'Vũ Minh Trí', '293 Đường 3/2, Quận 10, TP HCM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phieunhapkho`
--

CREATE TABLE `phieunhapkho` (
  `maphieunhap` varchar(10) NOT NULL,
  `ngaynhap` date NOT NULL,
  `giatriphieunhap` float NOT NULL,
  `thoigiantao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `idkhovan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phieunhapkho`
--

INSERT INTO `phieunhapkho` (`maphieunhap`, `ngaynhap`, `giatriphieunhap`, `thoigiantao`, `idkhovan`) VALUES
('NK01010119', '2019-01-01', 1000000, '2019-06-22 18:39:58', '200001'),
('NK01050719', '2019-07-05', 2000000, '2019-07-05 06:33:31', '200001'),
('NK01060719', '2019-07-06', 1000000, '2019-07-06 07:48:24', '200001');

-- --------------------------------------------------------

--
-- Table structure for table `phieuxuatkho`
--

CREATE TABLE `phieuxuatkho` (
  `maphieuxuat` varchar(10) NOT NULL,
  `mahoadon` varchar(15) NOT NULL,
  `ngayxuat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `giatriphieuxuat` float NOT NULL,
  `trangthai` int(1) DEFAULT '1' COMMENT '0 Bị hủy, 1 Đóng gói hoàn tất, 2 Giao vận chuyển, 3 Giao hàng thành công',
  `thoigiancapnhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idkhovan` varchar(50) NOT NULL,
  `mavanchuyen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phieuxuatkho`
--

INSERT INTO `phieuxuatkho` (`maphieuxuat`, `mahoadon`, `ngayxuat`, `giatriphieuxuat`, `trangthai`, `thoigiancapnhat`, `idkhovan`, `mavanchuyen`) VALUES
('001050719C', '05072019ASDUIO', '2019-07-05 10:51:26', 750000, 3, '2019-07-05 11:06:54', '200001', 'LEXVN - NLVNMP0004794468'),
('001060719C', '06072019UYHTRDA', '2019-07-06 11:01:55', 1439000, 1, '2019-07-06 11:01:55', '200001', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `idsanpham` varchar(10) NOT NULL,
  `iddanhmuc` varchar(5) NOT NULL,
  `idncc` varchar(5) NOT NULL,
  `tensanpham` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'non-img.png',
  `img-list` text,
  `soluong` int(11) DEFAULT '0',
  `dongiaban` float NOT NULL,
  `thoigiancapnhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `trangthai` int(1) NOT NULL DEFAULT '0' COMMENT '0 là chưa mở bán, 1 là đã mở bán, 2 tạm hết hàng, 3 ngừng kinh doanh, ',
  `chatlieu` varchar(100) DEFAULT NULL,
  `kichthuoc` varchar(30) DEFAULT NULL,
  `chongnuoc` varchar(50) DEFAULT NULL,
  `mau` text,
  `thoigianbaohanh` varchar(255) NOT NULL DEFAULT 'Sản phẩm không được bảo hành' COMMENT 'Mặc định sản phẩm không được bảo hành',
  `mota` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`idsanpham`, `iddanhmuc`, `idncc`, `tensanpham`, `img`, `img-list`, `soluong`, `dongiaban`, `thoigiancapnhat`, `trangthai`, `chatlieu`, `kichthuoc`, `chongnuoc`, `mau`, `thoigianbaohanh`, `mota`) VALUES
('BCNSP00001', 'BCNSP', 'CC001', 'Balo Chanel thể thao AOX1', 'bab001.jpg', NULL, 40, 1200000, '2019-07-24 08:11:24', 0, 'Da bò', '50 x 30 x 15cm', NULL, NULL, 'Sản phẩm không được bảo hành', 'Một chiếc túi xách hoàn hảo phải thể hiện được sự cá tính, phong cách đẳng cấp cũng như gu thời trang tinh tế của người dùng. Không những thế, chúng còn phải tôn lên được nét đẹp của trang phục mà vẫn đảm bảo tính thẩm mỹ cũng như thời thượng. Túi xách nữ cao cấp da thật ELLY – ET86 kiểu dáng túi cầm tay sang trọng với phần họa tiết vân da cá sấu đẹp sắc sảo đem tới cho nàng phong cách thời trang ấn tượng, vừa duyên dáng, nữ tính nhưng lại rất hiện đại và đầy quyền lực. '),
('BCNSP00002', 'BCNSP', 'CC001', 'Balo Chanel thể thao AOX2', 'bab002.jpg', NULL, 100, 1500000, '2019-07-24 08:12:03', 0, NULL, '40 x 30 x 15cm', NULL, NULL, 'Sản phẩm không được bảo hành', 'Mang khát vọng đem đến cơ hội sử dụng những sản phẩm phụ kiện thời trang cao cấp cho phụ nữ Việt Nam, từ nhiều năm nay, thương hiệu thời trang ELLY đã được biết đến thông qua hàng trăm sản phẩm chất lượng tốt, mẫu mã thời thượng, giá thành hợp lý và dịch vụ hậu mãi, tư vấn bán hàng chuyên nghiệp.'),
('BLCLT00001', 'BLCLT', 'CC002', 'BALO COOLBELL DD', 'BALO-COOLBELL-DD-BLCLT00001.jpg', NULL, 2, 800000, '2019-07-21 00:54:08', 0, NULL, '50 x 30 x 15cm', NULL, NULL, 'Sản phẩm không được bảo hành', 'Các sản phẩm balo, túi xách, phụ kiện của Shop nhập về đều được làm từ chất liệu cao cấp được kiểm định nghiêm ngặt cùng với thiết kế được khơi nguồn từ một thị trấn tại Mỹ đã tạo ra những dòng balo, túi xách Seliux vượt trội về chất lượng lẫn kiểu dáng, mẫu mã.'),
('BLCLT00002', 'BLCLT', 'CC002', 'BALO COOLBELL XX', 'BALO-COOLBELL-XX-BLCLT00002.jpg', NULL, 0, 750000, '2019-07-21 00:16:46', 1, NULL, '45 x 20 x 17cm', NULL, NULL, 'Sản phẩm không được bảo hành', 'Seliux F15 Eagle Backpack được làm từ chất liệu 1000D Chicken Tex bền, hạn chế thấm nước tốt. Nước sẽ nhanh chóng trượt khỏi bề mặt vải khi tiếp xúc trực tiếp. Ngoài bề mặt vải Chicken Tex bên ngoài, đồ đạc bên trong balo còn được bảo vệ bởi lớp vải lót 420D Nylon, giúp ngăn chứa đồ không bị ẩm mốc.'),
('BLMCT00001', 'BLMCT', 'CC001', 'Balo Chống Trộm Đa Năng BL3733_BRO_BRO', 'balo-chong-trom-da-nang-01-BLMCT00001.jpg', NULL, 0, 689000, '2019-07-21 00:16:06', 2, NULL, '40 x 30 x 11cm', NULL, NULL, 'Sản phẩm không được bảo hành', 'Ngăn thứ nhất là ngăn chính, ngăn chính rộng rãi với 1 ngăn lớn mà 5 ngăn nhỏ tiện lợi gồm 1 ngăn chứa tài liệu hoặc tập sách, 1 ngăn lưới có dây kéo tiên lợi, 1 ngăn kín có dây kéo chắc chắn và 2 ngăn nhỏ mở giúp bạn lấy đồ đạc nhanh gọn.\r\n\r\nPhía bên ngoài có 1 ngăn laptop riêng biệt đựng được laptop 15”, ngăn laptop này có đệm mút êm ái bảo vệ laptop và đặc biệt còn tách ra thêm 1 ngăn nhỏ giúp bạn đựng ipad hoặc tài liệu cá nhân.'),
('BLMCT00002', 'BLMCT', 'CC001', 'Balo Chống Trộm Đa Năng BL3733_BRO_BRO No2', 'balo-chong-trom-da-nang-01-BLMCT00001.jpg', NULL, 0, 689000, '2019-07-21 00:16:23', 2, NULL, '55 x 30 x 20cm', NULL, NULL, 'Sản phẩm không được bảo hành', 'Phía bên hông balo, mỗi bên được thiết kế 2 ngăn, 1 ngăn sẽ dạng giống ngăn thường xuyên để đựng bình nước hoặc ô dù có khóa khéo và lưới dai thun co dãn giúp bạn đựng đồ phù hợp. 1 ngăn sẽ thiết kế dây kéo vòng và bên trong có các chỗ dùng để đựng viết, bút hoặc giấy note, đặc biệt còn được thiết kế dây móc giúp bạn móc chùm chìa khóa chắc chắn và tiện lợi.'),
('BLPDL00001', 'BLPDL', 'CC002', 'Balo Puma Logo Backpack màu xám', 'bk003.jpg', NULL, 50, 2000000, '2019-07-24 08:19:02', 1, NULL, '31 cm x 47cm x 14 cm', '', NULL, 'Sản phẩm không được bảo hành', 'Sản phẩm đến từ thương hiệu Đức với sự uy tính gần như tuyệt đối, những sản phẩm từ hãng này đều gần như hoàn hảo'),
('BLPDL00002', 'BLPDL', 'CC002', 'Balô Puma Originals Backpack màu đen', 'mes002.jpg', NULL, 100, 1900000, '2019-07-24 08:19:02', 1, NULL, NULL, NULL, NULL, 'Sản phẩm không được bảo hành', 'Xu hướng ba lô Originals là balô hoàn hảo để phục vụ trang thiết thiết bị, lối sống và môi trường luôn thay đổi của bạn. Phần này được thiết kế để cung cấp cho bạn khả năng tiếp cận, mở rộng và tổ chức tối ưu, với một ngăn chính rộng rãi và nhiều túi bên trong. Có thể điều chỉnh đệm và dây đai cong với công nghệ lưới không khí giữ cho gói này thoải mái để mang theo, trong tất cả cuộc phiêu lưu hàng ngày của bạn.');

-- --------------------------------------------------------

--
-- Table structure for table `thoidiemgia`
--

CREATE TABLE `thoidiemgia` (
  `idthoidiemgia` int(11) NOT NULL,
  `maphieunhap` varchar(10) NOT NULL,
  `thoidiem` date NOT NULL,
  `idsanpham` varchar(10) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongianhap` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thoidiemgia`
--

INSERT INTO `thoidiemgia` (`idthoidiemgia`, `maphieunhap`, `thoidiem`, `idsanpham`, `soluong`, `dongianhap`) VALUES
(8, 'NK01010119', '2019-01-01', 'BLCLT00002', -2, 500000),
(9, 'NK01050719', '2019-07-05', 'BLCLT00002', 0, 400000),
(10, 'NK01050719', '2019-07-05', 'BLMCT00001', 2, 600000),
(11, 'NK01060719', '2019-07-06', 'BLMCT00001', 2, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `iduser` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `sdt` char(11) NOT NULL,
  `trangthai` int(1) NOT NULL DEFAULT '0' COMMENT '0 Chưa kích hoạt, 1 là đã kích hoạt 2 là Khóa',
  `capdo` int(1) NOT NULL DEFAULT '0',
  `diachi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `pass`, `hoten`, `sdt`, `trangthai`, `capdo`, `diachi`, `email`) VALUES
('lythile', '32f09ede0ea23ee2a232106ea17dd1ff', 'Lê Thị Ly', '0334568769', 0, 2, '135 Bùi Minh Trung', 'lyly3412@gmail.com'),
('nguyenvana', '20ca70c7c8f494c7bd1d54ad23d40cde', 'Nguyễn Văn A', '0333886547', 0, 1, '135 Lý Chính Thắng', 'a.nguyenvan@gmail.com'),
('nguyenvanb', '23280a0ad9238d00c62b0272af265c57', 'Nguyễn Văn b', '0334568769', 0, 0, '135 Bùi Điền', 'b.nguyenvan@gmail.com'),
('nguyenvanteo', 'c24d2f4dd5af8bf15e988347c2621f50', 'nguyen van teo', '0232145692', 0, 1, NULL, NULL),
('tai', 'a412ba79e6bcd018c48faf00f057c0bb', 'Bui Nhut Tai', '0986532', 1, 0, NULL, NULL),
('teo', 'e827aa1ed78e96a113182dce12143f9f', 'nguyen van teo', '09983648', 2, 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`),
  ADD UNIQUE KEY `iduser` (`idadmin`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `sdt` (`sdt`);

--
-- Indexes for table `admin_log`
--
ALTER TABLE `admin_log`
  ADD PRIMARY KEY (`idlog`),
  ADD KEY `idadmin` (`idadmin`) USING BTREE,
  ADD KEY `idsanpham` (`idsanpham`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idsanpham` (`idsanpham`),
  ADD KEY `mahoadon` (`mahoadon`);

--
-- Indexes for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maphieunhap` (`maphieunhap`) USING BTREE,
  ADD KEY `idsanpham` (`idsanpham`) USING BTREE;

--
-- Indexes for table `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idsanpham` (`idsanpham`) USING BTREE,
  ADD KEY `thoidiemgia` (`idthoidiemgia`) USING BTREE,
  ADD KEY `maphieuxuat` (`maphieuxuat`) USING BTREE;

--
-- Indexes for table `chitiettrangthaihoadon`
--
ALTER TABLE `chitiettrangthaihoadon`
  ADD PRIMARY KEY (`idtrangthaihd`),
  ADD KEY `mahoadon` (`mahoadon`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`iddanhmuc`),
  ADD KEY `danhmuccha` (`danhmuccha`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahoadon`),
  ADD KEY `iduser` (`iduser`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`idncc`);

--
-- Indexes for table `phieunhapkho`
--
ALTER TABLE `phieunhapkho`
  ADD PRIMARY KEY (`maphieunhap`),
  ADD UNIQUE KEY `thoigiantao` (`thoigiantao`);

--
-- Indexes for table `phieuxuatkho`
--
ALTER TABLE `phieuxuatkho`
  ADD PRIMARY KEY (`maphieuxuat`),
  ADD KEY `mahoadon` (`mahoadon`) USING BTREE;

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsanpham`),
  ADD KEY `iddanhmuc` (`iddanhmuc`),
  ADD KEY `idncc` (`idncc`);

--
-- Indexes for table `thoidiemgia`
--
ALTER TABLE `thoidiemgia`
  ADD PRIMARY KEY (`idthoidiemgia`),
  ADD KEY `maphieunhap` (`maphieunhap`),
  ADD KEY `idsanpham` (`idsanpham`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`),
  ADD UNIQUE KEY `iduser` (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chitiettrangthaihoadon`
--
ALTER TABLE `chitiettrangthaihoadon`
  MODIFY `idtrangthaihd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `thoidiemgia`
--
ALTER TABLE `thoidiemgia`
  MODIFY `idthoidiemgia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_log`
--
ALTER TABLE `admin_log`
  ADD CONSTRAINT `admin_log_ibfk_1` FOREIGN KEY (`idadmin`) REFERENCES `admin` (`idadmin`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `admin_log_ibfk_2` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`idsanpham`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`mahoadon`) REFERENCES `hoadon` (`mahoadon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`idsanpham`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `chitietphieunhap_ibfk_1` FOREIGN KEY (`maphieunhap`) REFERENCES `phieunhapkho` (`maphieunhap`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietphieunhap_ibfk_2` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`idsanpham`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  ADD CONSTRAINT `chitietphieuxuat_ibfk_1` FOREIGN KEY (`maphieuxuat`) REFERENCES `phieuxuatkho` (`maphieuxuat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietphieuxuat_ibfk_2` FOREIGN KEY (`idthoidiemgia`) REFERENCES `thoidiemgia` (`idthoidiemgia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietphieuxuat_ibfk_3` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`idsanpham`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chitiettrangthaihoadon`
--
ALTER TABLE `chitiettrangthaihoadon`
  ADD CONSTRAINT `chitiettrangthaihoadon_ibfk_1` FOREIGN KEY (`mahoadon`) REFERENCES `hoadon` (`mahoadon`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD CONSTRAINT `danhmuc_ibfk_1` FOREIGN KEY (`danhmuccha`) REFERENCES `danhmuc` (`iddanhmuc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phieuxuatkho`
--
ALTER TABLE `phieuxuatkho`
  ADD CONSTRAINT `phieuxuatkho_ibfk_1` FOREIGN KEY (`mahoadon`) REFERENCES `hoadon` (`mahoadon`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `thoidiemgia`
--
ALTER TABLE `thoidiemgia`
  ADD CONSTRAINT `thoidiemgia_ibfk_1` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`idsanpham`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `thoidiemgia_ibfk_2` FOREIGN KEY (`maphieunhap`) REFERENCES `phieunhapkho` (`maphieunhap`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
