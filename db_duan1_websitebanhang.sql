-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 07, 2023 lúc 05:52 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duanmau2023`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anhsp`
--

CREATE TABLE `anhsp` (
  `id_anh` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `img_sp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `anhsp`
--

INSERT INTO `anhsp` (`id_anh`, `idsp`, `img_sp`) VALUES
(4, 25, 'anh-gg1.png'),
(5, 25, 'anh-gg2.png'),
(7, 25, 'anh-google.png'),
(8, 27, 'anh-samsung.png'),
(9, 27, 'anh-iphone.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `ngaybinhluan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `idsp`, `tieude`, `noidung`, `username`, `ngaybinhluan`) VALUES
(1, 27, 'san pham tot', 'ád', 'tung2003', '11:09:15pm 05/12/2023'),
(2, 27, 'san pham tot', 'ád', 'tung2003', '11:10:18pm 05/12/2023'),
(3, 27, 'san pham tot', 'ád', 'tung2003', '11:14:19pm 05/12/2023'),
(4, 25, 'san pham tot', '123', 'tung2003', '12:05:01am 06/12/2023'),
(5, 25, 'san pham tot', '123', 'tung2003', '12:06:34am 06/12/2023'),
(6, 25, 'san pham tot', '123', 'tung2003', '12:06:50am 06/12/2023'),
(7, 25, 'san pham totzzz', '11111', 'tung2003', '12:15:15am 06/12/2023'),
(8, 25, 'san pham totzzz', '11111', 'tung2003', '12:18:55am 06/12/2023'),
(9, 27, 'san pham tot', 'zzz', 'tung2003', '12:40:59pm 06/12/2023'),
(10, 27, 'san pham tot', 'zzz', 'tung2003', '12:42:33pm 06/12/2023'),
(11, 27, 'san pham tot', 'zzz1', 'tung2003', '12:42:45pm 06/12/2023'),
(12, 25, 'Sản phẩm tốt', 'tôi nghĩ sản phẩm khá ổn trong tầm giá', 'tung2003', '01:08:22pm 06/12/2023');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img_danhmuc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`, `img_danhmuc`) VALUES
(10, 'Samsung', 'anh-samsung.png'),
(11, 'Oppo', 'anh-oppo.jpg'),
(12, 'Xiaomi', 'anh-xiaomi.jpg'),
(13, 'Google Pixel', 'anh-google.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `id_lienhe` int(11) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `thongtin` text NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`id_lienhe`, `hoten`, `phone`, `thongtin`, `trangthai`) VALUES
(1, 'mai thanh tung', '0943848769', 'asdasdasa', 1),
(2, 'mai thanh tung', '0943848769', 'asdsadasdsa', 0),
(3, 'anh', '123456', 'asdasdasc', 0),
(4, 'anh', '123456', 'asdasdasc', 0),
(5, 'anh', '123456', 'asdasdasc', 0),
(6, 'anh', '123456', 'asdasdasc', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id_order_detail` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `name_pro` varchar(255) NOT NULL,
  `giamua` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id_order_detail`, `id_order`, `id_pro`, `name_pro`, `giamua`, `soluong`, `thanhtien`) VALUES
(1, 1, 25, 'Google Pixel 8 128GB - Obsidian', 826, 2, 1652),
(2, 1, 27, 'Điện thoại iPhone 13 RED Pro Max 256GB', 0, 1, 0),
(3, 2, 25, 'Google Pixel 8 128GB - Obsidian', 826, 1, 826);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double(10,2) DEFAULT 0.00,
  `img` varchar(255) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `luotxem` int(11) DEFAULT 0,
  `iddanhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `price`, `img`, `mota`, `luotxem`, `iddanhmuc`) VALUES
(25, 'Google Pixel 8 128GB - Obsidian', 826.00, 'anh-google.png', '6.2\" Actua display, 60 to 120Hz - 10.5 MP front camera - 12 MP ultrawide - 50 MP wide - Super Res Zoom up to 8x - Best Take - Macro Focus - 8 GB RAM', 68, 13),
(27, 'Điện thoại iPhone 13 RED Pro Max 256GB', 0.00, 'iphone-13-red.png', 'abcssacs', 50, 1),
(28, 'Điện thoại iPhone 15 Pro Max 256GB', 2090.00, 'iphone-15.png', 'Đặc điểm nổi bật của iPhone 15 Pro Max\r\n• Tăng độ cứng cáp và tối ưu khối lượng với chất liệu Titan\r\n• Bứt phá mọi giới hạn về hiệu năng nhờ chip A17 Pro\r\n• Phiên bản duy nhất cải tiến camera tele 5x\r\n• Tích hợp camera 48 MP\r\n• Nút tác vụ (Action Button) thay thế cần gạt rung\r\n• Chuyển đổi cổng sạc USB-C, truyền tải dữ liệu tốc độ cao', 6, 1),
(29, 'Samsung Galaxy S22 128GB - Phantom White', 225.00, 'anh-samsung.png', 'abcxzy', 5, 10),
(32, 'SAMSUNG Z FLIP', 1011.00, 'samsung-z-flip.png', '', 15, 10),
(33, 'OPPO FIND X', 1029.00, 'oppo-find-x.jpg', 'OPPO FIND X', 7, 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `hoten_user` varchar(255) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `hoten_user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(1, 'tung2003', 'Thanh Tùng', '12345678', 'thanhtp@gmail.com', '92 tran bichs san1', '0943848769', 1),
(10, 'tung20031', 'Nhi beos', '12345678', 'tungmtph36873@fpt.edu.vn', '13 nguyen van troi', '9999999999', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `ngaydathang` datetime NOT NULL,
  `trangthai` tinyint(4) NOT NULL,
  `pttt` tinyint(4) NOT NULL,
  `ptvc` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id_order`, `id_user`, `hoten`, `sdt`, `email`, `diachi`, `tongtien`, `ngaydathang`, `trangthai`, `pttt`, `ptvc`) VALUES
(1, 1, 'Thanh Tùng', '0943848769', 'thanhtp@gmail.com', '92 tran bichs san1', 1652, '2023-12-05 23:54:40', 0, 0, 0),
(2, 1, 'Thanh Tùng tùng', '0943848769', 'thanhtp@gmail.com', '92 tran bichs san1', 826, '2023-12-06 13:07:54', 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trangthai`
--

CREATE TABLE `trangthai` (
  `id` int(11) NOT NULL,
  `trangthai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `trangthai`
--

INSERT INTO `trangthai` (`id`, `trangthai`) VALUES
(0, 'Chưa giao hàng'),
(1, 'Đang giao hàng'),
(2, 'Đã giao hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trangth_lh`
--

CREATE TABLE `trangth_lh` (
  `id` int(11) NOT NULL,
  `trangthai_lh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `trangth_lh`
--

INSERT INTO `trangth_lh` (`id`, `trangthai_lh`) VALUES
(0, 'Chưa phản hồi'),
(1, 'Đã phản hồi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vaitro`
--

CREATE TABLE `vaitro` (
  `id_vaitro` int(11) NOT NULL,
  `ten_vai_tro` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `vaitro`
--

INSERT INTO `vaitro` (`id_vaitro`, `ten_vai_tro`) VALUES
(0, 'Khách hàng'),
(1, 'Admin'),
(2, 'Nhân Viên');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anhsp`
--
ALTER TABLE `anhsp`
  ADD PRIMARY KEY (`id_anh`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id_lienhe`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id_order_detail`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`);

--
-- Chỉ mục cho bảng `vaitro`
--
ALTER TABLE `vaitro`
  ADD PRIMARY KEY (`id_vaitro`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anhsp`
--
ALTER TABLE `anhsp`
  MODIFY `id_anh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id_lienhe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id_order_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
