-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2020 at 02:07 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wonderful_vietnam`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `comment_email` varchar(150) DEFAULT NULL,
  `comment_time` timestamp NULL DEFAULT current_timestamp(),
  `comment_description` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_email`, `comment_time`, `comment_description`, `status`, `user_id`, `post_id`) VALUES
(0, 'xitosniper@gmail.com', '2019-11-09 07:00:00', 'Mình có tìm mà không thấy Hội Chợ Việt Nhật thành ra review ở đây luôn, vì HCVN được diễn ra ở đây mà mình đi lần này lần thứ 2 rồi, năm nào hầu như cũng tổ chức ở Công Viên Lưu Hữu Phước hết đó, mà mình thấy năm nay có 1 điều làm mình rất mong chờ!!\r\nTrước hết thì hội chợ diễn ra tới tận 3 ngày, không gian của công viên tuy rộng nhưng cũng vẫn đông nghẹt người chen lấn để đến xem, mình chấm nhất về phần đồ ăn của hội chợ này, đa phần những hội chợ kia đều không có vẻ ngon bằng, có món cá viên cà ri hay còn gọi là cá viên hongkong khá ngon, tuy nước sốt chưa được đậm đà mùi vị cà ri lắm nhưng có vẫn nóng hổi vừa ăn, ngoài ra bánh gạo cay hay là mực nguyên con chiên giòn cũng xuất sắc.\r\nNăm nay lại có binh đoàn pikachu đến nên mình đã đợi mãi mới tới xem được, pikachu mập ú lại lắc lư theo điệu nhạc nữa, mong là năm sau có thể sẽ được thử hết các món của hội chợ, có mấy quầy bán đồ cũng khá đẹp mắt ^^', 1, 1, 0),
(1, 'tuantu@gmail.com', '2019-11-13 19:54:35', 'Có thể nói, Khai Long là một bãi biển độc lập ở đó chỉ có rừng, có biển, có trời xanh và cũng là biển duy nhất của Cà Mau có bãi cát mịn. Vì lẽ đó, vẻ đẹp của Khai Long là sự tổng hòa của thiên nhiên gần gũi, bình dị.', 1, 1, 2),
(2, 'haumq@gmail.com', '2019-11-14 04:47:28', 'Good post', 1, 1, 3),
(3, 'adasd@sdasdas', '2019-11-14 04:52:45', 'thanks so much', 1, 1, 3),
(4, 'xitosniper@gmail.com', '2019-11-14 06:58:15', 'thank u', 2, 1, 3),
(5, 'anhtudeptrai@gmai.com', '2019-11-14 07:18:06', 'thanks for your information', 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `editor`
--

CREATE TABLE `editor` (
  `editor_id` int(11) NOT NULL,
  `editor_time` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `editor`
--

INSERT INTO `editor` (`editor_id`, `editor_time`, `status`, `user_id`) VALUES
(0, '2019-11-09 05:00:00', 1, 1),
(1, '2019-11-10 04:00:00', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_id` int(11) NOT NULL,
  `image_name` varchar(150) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `place_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `image_name`, `status`, `place_id`) VALUES
(1, 'cantho_luuhuuphuoc_2.jpg', 1, 0),
(2, 'cantho_luuhuuphuoc_1.jpg', 1, 0),
(3, 'soctrang_phathoc_1.jpg', 1, 1),
(4, 'soctrang_phathoc_2.jpg', 1, 1),
(5, 'soctrang_chuadatsec_1.jpg', 1, 2),
(6, 'soctrang_chuadatsec_2.jpg', 1, 2),
(7, 'cantho_chonoicairang_1.jpg', 1, 3),
(8, 'cantho_chonoicairang_2.jpg', 1, 3),
(9, 'haugiang_choinoingabay_1.jpg', 1, 4),
(10, 'haugiang_choinoingabay_2.jpg', 1, 4),
(11, 'haugiang_votruongtoan_1.jpg', 1, 5),
(12, 'haugiang_votruongtoan_2.jpg', 1, 5),
(13, 'caumau_khailong_1.jpg', 1, 6),
(14, 'caumau_khailong_2.jpg', 1, 6),
(15, 'caumau_honkhoai_1.jpg', 1, 7),
(16, 'caumau_honkhoai_2.jpg', 1, 7),
(17, 'angiang_thachdong_1.jpg', 1, 8),
(18, 'angiang_thachdong_2.jpg', 1, 8),
(19, 'angiang_thiencamson_1.jpg', 1, 9),
(20, 'angiang_thiencamson_2.jpg', 1, 9),
(21, 'baclieu_canhdonggio_1.jpg', 1, 10),
(22, 'baclieu_canhdonggio_2.jpg', 1, 10),
(23, 'baclieu_congtubaclieu_1.jpg', 1, 11),
(24, 'baclieu_congtubaclieu_2.jpg', 1, 11),
(25, 'travinh_biendadong_1.jpg', 1, 12),
(26, 'travinh_biendadong_2.jpg', 1, 12),
(27, 'travinh_culaotanquy_1.jpg', 1, 13),
(28, 'travinh_culaotanquy_2.jpg', 1, 13),
(29, 'vinhlong_khudulichtruonghuy_1.jpg', 1, 14),
(30, 'vinhlong_khudulichtruonghuy_2.jpg', 1, 14),
(31, 'vinhlong_caumythuan_1.jpg', 1, 15),
(32, 'vinhlong_caumythuan_2.jpg', 1, 15),
(33, 'DaLat.jpg', 1, 16),
(34, 'DaLat02.jpg', 1, 16),
(35, 'PhanThiet01.jpg', 1, 17),
(36, 'PhanThiet02.jpg', 1, 17),
(37, 'Hue.jpg', 1, 18),
(38, 'Hue02.jpg', 1, 18),
(39, 'DaNang_HoiAn.jpg', 1, 19),
(40, 'DaNang_BaNaHill.jpg', 1, 19),
(41, 'laocai_sapa_1.jpg', 1, 20),
(42, 'laocai_sapa_2.jpg', 1, 20),
(43, 'hanoi_chuatranquoc_1.jpg', 1, 21),
(44, 'hanoi_chuatranquoc_2.jpg', 1, 21),
(45, 'haiphong_doson_1.jpg', 1, 22),
(46, 'haiphong_doson_2.jpg', 1, 22),
(47, 'hanoi_hohoankiem_1.jpg', 1, 23),
(48, 'hanoi_hohoankiem_2.jpg', 1, 23);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(150) DEFAULT NULL,
  `location_description` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `location_name`, `location_description`, `status`) VALUES
(0, 'Miền Nam', 'Miền Nam Việt Nam là một khái niệm để chỉ vùng địa lý ở phía nam nước Việt Nam. Tuy nhiên, tùy theo thời điểm lịch sử và thói quen sử dụng mà khái niệm này đôi khi được dùng để chỉ các vùng lãnh thổ khác nhau theo nghĩa chính trị một cách không chính thức.', 1),
(1, 'Miền Trung', 'Miền Trung Việt Nam còn gọi là Trung Bộ, nằm ở phần giữa lãnh thổ và là một trong ba vùng chính (gồm Bắc Bộ, Trung Bộ và Nam Bộ) của Việt Nam. Lịch sử Trung Bộ được gọi bằng các tên khác nhau như Trung Kỳ (thời thuộc Pháp), An Nam (theo cách người Pháp gọi), và Trung phần (thời Việt Nam Cộng hòa). Trải qua những tiến trình lịch sử, vùng Trung Bộ được xem như trạm trung chuyển, đất dừng chân khi người Việt cổ di cư về phía Nam.', 1),
(2, 'Miền Bắc', 'Miền Bắc Việt Nam là một khái niệm để chỉ vùng địa lý ở phía bắc nước Việt Nam. Tuy nhiên, tùy theo từng thời điểm lịch sử và thói quen sử dụng mà khái niệm này đôi lúc còn được dùng để chỉ các vùng lãnh thổ chính trị khác nhau một cách không chính thức.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(150) DEFAULT NULL,
  `place_description` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`place_id`, `place_name`, `place_description`, `status`, `location_id`) VALUES
(0, 'Công Viên Lưu Hữu Phước', 'Công viên được lấy theo tên của vị nhạc sĩ nổi tiếng quê Cần Thơ là Lưu Hữu Phước, được xây theo hình cây đàn ghi-ta. Khuôn viên rất đẹp và sạch sẽ, thường diễn ra các hoạt động văn hóa lớn như Tết Nguyên Đán, hội sách, các ngày lễ lớn của đất nước,… Vào buổi tối, công viên rộn ràng hơn cả với hoạt động vui chơi, giải trí của người dân như tập thể dục, chơi pa-tin, dân vũ, đàn hát,…', 1, 0),
(1, 'Chùa Phật Học 2', 'Chùa Phật Học 2 (phường 8, TP Sóc Trăng, tỉnh Sóc Trăng) không chỉ nổi tiếng bởi quanh năm không đốt vàng mã, có diện tích rộng nhất tỉnh Sóc Trăng với nghệ thuật kiến trúc thanh nhã, mà còn vì những việc làm tốt đời, đẹp đạo đáng trân quý.\r\nVãn cảnh chùa Phật học 2, du khách sẽ được ngắm những bức tượng Phật Thích Ca, Phật Như Lai, Phật Di Lặc, Phật Bà Quan Âm... được thiết kế khổ lớn với những tiểu tiết hoa văn độc đáo. Trên chiếc ao to rộng được bố trí tại trung tâm chùa, du khách có thể nhìn ngắm chiếc thuyền bát Nhã được thiết kế khá uy thiêng như một điểm nhấn tiêu biểu của công trình. Phía sau Chính điện là một khoảng không gian khiến bất cứ ai cũng cảm thấy thư thái với những tiểu cảnh mô phỏng các câu chuyện kể dân gian đầy ý nghĩa về sự hy sinh của các đức Phật, về tình thương yêu con người, biểu hiện cái thiện thắng cái ác như: “Sự tích trầu cau”, “Thạch Sanh chém chằn”, “Cây tre trăm đốt”… Cùng với đó là sự có mặt của rất nhiều loài chim, hươu, nai, khỉ, mãng xà, cọp, rồng. Bên cạnh những ngọn núi cao sừng sững, những dòng thác nước chày ào ạt đêm ngày, những đóa sen đỏ thắm góc trời làm phong phú thêm nét đẹp của không gian yên ả của ngôi chùa. Cạnh đó, du khách còn được nghỉ ngơi trên hàng trăm chiếc võng dưới những tàng cây mát dịu; được mượn nón lá để tham quan; được giữ xe miễn phí và nhiều tiện ích khác mà không phải trả tiền. Không chỉ có vậy, chùa còn là cơ sở điều trị bệnh miễn phí cho người nghèo mang tên Tuệ Tĩnh Đường với cơ sở vật chất khang trang, sạch đẹp. Mỗi ngày, nơi đây tiếp nhận hàng trăm ca bệnh. Những bệnh nhân ở xa còn được bố trí ăn, nghỉ miễn phí tại chỗ. Có người khi khỏi bệnh đã tình nguyện ở lại chùa để làm phúc, tích đức cho con cháu. Chùa cũng nhận nuôi các em nhỏ lang thnag, cơ nhỡ, mồ côi cha mẹ. Đặc biệt, nhiều năm nay, các phật tử khi vào chùa cúng vong linh sẽ không đốt giấy tiền, vàng mã, mà lấy số tiền chuẩn bị mua vàng mã đóng góp cho quỹ nhân ái của chùa. Hằng năm, nhân ngày Phật Đản, Vu Lan, Tết Nguyên đán... nhà chùa sẽ lấy số tiền đó mua hàng trăm tấn gạo phát cho người nghèo hoặc xây dựng nhà tình thương cho phật tử nghèo trong tỉnh Sóc Trăng. Chính sự linh thiêng, khung cảnh thanh tao, và những công việc tốt đời đẹp đạo đã giúp tiếng thơm của chùa Phật học 2 vang xa, khiến nhiều du khách có dịp đến Sóc Trăng đều muốn đến thăm nơi này.', 1, 0),
(2, 'Chùa Đất Sét', 'Chùa Đất Sét có tên là Bửu Sơn Tự, tọa lạc tại số 286, đường Tôn Đức Thắng, khóm 1, phường 5, cách trung tâm Thành phố Sóc Trăng khoảng 1km về hướng Bắc, Nếu nhìn dáng vẻ bề ngoài thì chánh điện chùa chỉ là căn nhà rất đổi bình thường với diện tích khiêm tốn khoảng 370 m2, mái lợp tôn, vách tường xây gạch, khung bằng gỗ dầu, gỗ đước. Bố trí nội thất bên trong thì thể hiện dấu ấn của tôn giáo và tín ngưởng dân gian bởi ở đây vừa thờ phật Thích Ca Mâu Ni, Như Lai, Quán Thế Âm, bên cạnh lại có các vị thần Thiện, Ác và cũng có các “Mẫu” đặc trưng tín ngưởng của người Việt.', 1, 0),
(3, 'Chợ Nổi Cái Răng', 'Chợ nổi Cái Răng là chợ nổi chuyên trao đổi, mua bán nông sản, các loại trái cây, hàng hóa, thực phẩm, ăn uống ở trên sông và là điểm tham quan đặc sắc của quận Cái Răng, thành phố Cần Thơ.\r\nĐịa chỉ: 46 Đường Hai Bà Trưng, Tân An, Ninh Kiều, Cần Thơ', 1, 0),
(4, 'Chợ nổi ngã bảy – Phụng Hiệp', 'Chợ nổi ngã Bảy được xem là chợi nối lớn nhất vùng Tây, thể hiện đậm nét tập quán, thói quen sinh hoạt của người dân nơi đây.Chợ ngã bảy nơi gặp nhau của bảy tuyến sông: cái côn, Búng tàu mang cá sóc trăng lái hiệu xẻo môn và xẻo dong. Hàng ngày vào khoảng 2-3 giờ sáng, ghe thuyền khắp nơi về tụ họp cảnh buôn bán bắt đầu diễn ra vào lúc đó. Các cửa tiệm nằm trên thuyền người đi chợ cũng bằng thuyền và khách tham quan cũng bằng thuyền để ngoại cảnh.', 1, 0),
(5, 'Trường đại học Võ Trường Toản', 'Trong những ngày gần đây, cư dân mạng đang xôn xao về một trường đại học có phong cách đậm chất châu Âu ở Việt Nam. Nhiều người còn ví ngôi trường này là “Học viện Pháp thuật Hogwarts” trong bộ phim Harry Potter nổi tiếng thế giới. Ngôi trường gây ấn tượng mạnh bởi lối kiến trúc đậm chất cổ tích, với những tòa nhà chóp nhọn cao vút vươn thẳng lên bầu trời, vừa nguy nga tráng lệ, vừa huyền bí cổ kính. Ngôi trường này được hướng đến xây dựng theo mô hình hiện đại “Thành phố đại học” mang tầm vóc quốc tế về quy mô và cả chất lượng.Toàn bộ trường được ví như là một thành phố thu nhỏ lại đáp ứng mọi nhu cầu ăn uống sinh hoạt khu vui chơi đối với tất cả mọi người.', 1, 0),
(6, 'Cà Mau-Khai Long', 'Khu du lịch Khai Long có địa chỉ tại ấp Khai Long, xã Đất Mũi, huyện Ngọc Hiển, Cà Mau. Nơi đây cách thành phố Cà Mau khoảng 97 km, cách Đất Mũi chỉ khoảng 15 km, cách sài Gòn khoảng 400 km.\r\nNơi đây có một tượng Bồ tát Quan Thế Âm ( thỉnh Mẹ Nam Hải) với chiều cao lên tới 20 m hướng nhìn ra biển Đông được xây dựng từ năm 2008. Những ngư dân khi đi đánh bắt xa bờ trở về có thể nhìn thấy bức tượng này là họ đã biết trở về đến nhà và họ cũng thường xuyên tới đây để cầu bình yên, ấm no cho gia đình.\r\nBãi biển Khai Long trải dài khoảng 4km, ít sóng nên rất thích hợp cho việc du lịch nghỉ dưỡng ở đây. Nước biển trong xanh, bãi cát trắng mịn cùng nắng vàng trải dài sẽ đem lại một kì nghỉ thật thoải mái cho du khách. Hơn nữa bãi biển ở đây vẫn còn giữ được vẻ nguyên sơ.\r\nNgoài ra, nơi đây được đầu tư với nhiều trò chơi hấp dẫn, mới lạ thu hút du khách đến với nơi đây, ở đây còn có hai bể bơi riêng biệt dành cho người lớn và trẻ em riêng nên bạn có thể tha hồ vui chơi, check-in tại nơi đây vào những ngày hè nắng nóng.', 1, 0),
(7, 'Cà Mau-Hòn Khoai', 'Hòn Khoai là cả một quần đảo bao gồm năm đảo nổi đã có tên là: Hòn Khoai, Hòn Đồi Mồi, Hòn Sao, Hòn Go, Hòn Khô và bốn đảo chìm khắc còn chư­a kịp đặt tên.\r\nTàu chở khách du lịch Hòn Khoai sẽ ghé Bãi Nhỏ, khách xuống thuyền con để vào bờ chừng 50m.\r\nHành trình đầu tiên là lên đỉnh đảo, du khách sẽ vượt chặng đường khoảng 3km theo hình trôn ốc, với những đoạn dốc cao, lổn ngổn đá tảng lớn nhỏ, lác đác những thân cây cổ thụ to lớn đến vài người ôm không xuể... thi thoảng ngang qua những con suối nước trong veo... bắt gặp những chú sóc đen chuyền cành thoăn thoắt, hay đàn khỉ nháo nhác tò mò\r\nTới đỉnh, du khách sẽ thấy ngọn hải đăng vươn cao trên nền trời thăm thẳm, kề bên có bia ghi sơ lược cuộc khởi nghĩa năm xưa, cùng mấy dãy nhà xây từ thời Pháp thuộc.\r\nTheo cầu thang xoắn ốc lên ngọn hải đăng, không gian mở ra xanh biếc, mây trời lộng gió khơi xa... Trên đây còn có kính viễn vọng, cho bạn ngắm nhìn các hòn đảo vây quanh, hay hướng về mũi Cà Mau để một lần được chiêm ngưỡng từ xa mũi đất thiêng liêng của tận cùng Tổ quốc, mà không dễ gì thấy được nếu không ra đến đảo.', 1, 0),
(8, 'An Giang-Thạch Động', 'Từ thị trấn Hà Tiên (Kiên Giang) ngược theo hướng Tây - Bắc khoảng 3 km, nằm sát quốc lộ 17, du khách sẽ thấy một tảng đá xanh khồng lồ trông tựa hình ảnh của một chiếc mũ lông - Đó chính là Thạch Động.\r\nCách đây trên 260 năm, nhà chính trị, nhà thơ Mạc Thiên Tích có bài thơ Thạch động thôn vân nghĩa là Động đá nuốt mây trong chùm thơ nổi tiếng ca ngợi mư­ời cảnh đẹp của Hà Tiên - Hà Tiên Thập Cảnh. Thật vậy, vì cửa động ở độ cao đến 50 mét nên vào những buổi sáng tinh sương, có những chùm mây trắng bay là đà ngang đỉnh động, chúng dừng lại rồi từ từ lan rộng tỏa quanh cửa động, lúc đó ta có cảm tưởng nh­ư động đá đang nuốt mây. Cảnh thật ngộ và đẹp tuyệt vời.\r\nBên trong cửa động là chiếc hang khá rộng, không khí mát rư­ợi, thoáng đãng vô cùng. Những giọt nước mưa theo năm tháng xâm thực đá, len lách rỉ chảy xuống hang, rồi hòa tan với chất vôi tạo thành những thạch nhũ có hình thù kỳ lạ. Từ trong hang có một ngách hang ăn thông lên trời, du khách mổi khi ngước nhìn lên sẽ trông thấy một khoảng trời xanh trong vắt. Ngoài ra, còn có một ngách hang khác ăn sâu thẳm xuống lòng đất, tương truyền thông ra tận bãi biển Mũi Nai. Có người đã thử thả xuống đó một trái dừa khắc dấu sau đó đón vớt được ở bãi biển này. Hai con đường được gọi là đường lên trời và đường xuống âm phủ.', 1, 0),
(9, 'An Giang-Thiên Cấm Sơn', 'Dãy núi nằm gần biên giới Việt Nam – Campuchia này chất chứa nhiều huyền thoại, từng là nơi tạo cảm hứng cho nhà văn Nguyễn Quang Sáng viết nên thiên tiểu thuyết nổi tiếng Đất lửa. Tại đây còn có tượng Phật Di Lặc lớn nhất châu Á ngồi tươi cười trên đỉnh núi để ban phước lành cho trần thế. Thiên Cấm Sơn có tên gọi dân dã núi Cấm, là ngọn núi cao nhất trong dãy Thất Sơn của tỉnh An Giang.\r\nVẻ đẹp thiên nhiên ban tặng đã tạo cho Thiên Cấm Sơn trở thành một địa điểm lý tưởng cho du lịch sinh thái lẫn tâm linh. Ở phía Đông chân núi Cấm, có Khu du lịch Lâm Viên với đầy đủ các dịch vụ vui chơi giải trí, ẩm thực, mua sắm, nghỉ dưỡng. Từ đây theo lối mòn lên núi du khách sẽ gặp ngọn suối Thanh Long thơ mộng có thể tắm mát, lên cao chút nữa đến cửa Sơn Thần đưa lối vào khu bình nguyên chùa Phật Lớn, với động và hồ Thủy Liêm trầm mặc. Khu vực lòng chảo này cũng đã có một số nhà nghỉ, khách sạn để phục vụ du khách nghỉ qua đêm thưởng thức không gian huyền ảo, lãng mạn về đêm trên đỉnh núi Cấm. Những ngày cuối năm cũ chuyển mình sang năm mới, không khí ở đây từ nắng hanh bỗng sang mát lạnh không khác Đà Lạt hay Tam Đảo, nên thu hút nhiều du khách, nhất là các đôi trai gái đưa nhau lên núi tình tự, thưởng xuân.\r\nĐứng ở bất kỳ vị trí nào trên Thiên Cấm Sơn, chúng ta cũng đều thấy được tượng Phật Di Lặc màu trắng sáng, ngồi uy nghiêm và thanh thản giữa không gian xanh ngát, bao quanh núi rừng, soi bóng xuống mặt hồ nước mênh mông. Hồ Thủy Liêm rộng tới 60.000m², chứa 300.000m³ nước, được xây dựng từ năm 2005, với một chiếc cầu dài sơn đỏ bắc ngang qua, có đủ các loài cá do khách thập phương phóng sinh. Tượng Phật Di Lặc khổng lồ cùng chùa Vạn Linh và chùa Phật Lớn hợp thành 3 quần thể kiến trúc soi bóng xuống mặt hồ Thủy Liêm tạo thành bức tranh độc đáo.', 1, 0),
(10, 'Cánh đồng quạt gió Bạc Liêu', 'Từ thành phố Bạc Liêu theo đường Cao Văn Lầu đi ra phía biển, ở địa phận ấp Biển Đông A, xã Vĩnh Trạch Đông là Nhà máy điện gió mới được hoàn thành đầu năm nay. Khoảng cách từ trung tâm thành phố đến nhà máy khoảng gần 20km, nhưng từ cách xa cả chục cây số, bạn đã có thể nhìn thấy những trụ turbine lắp cánh quạt quay đều như những chong chóng khổng lồ in trên nền trời. Đây là điểm chụp ảnh yêu thích của nhiều bạn trẻ khi đến với Bạc Liêu.', 1, 0),
(11, 'Nhà công tử Bạc Liêu', 'Tọa lạc tại số 13 Điện Biên Phủ, phường 3, thành phố Bạc Liêu. Với thiết kế theo phong cách Pháp và vật liệu chuyển từ Pháp sang, đây được xem là ngôi nhà bề thế nhất Nam Kỳ lục tỉnh đầu thế kỷ 20. Du khách đến đây ngoài việc tham quan, tìm hiểu kiến trúc, hiện vật lịch sử, du khách còn có dịp nghe kể về cuộc đời “dân chơi” của công tử giàu nhất miền nam thời bấy giờ. Đây thực sự là một điểm đến mà bất cứ du khách nào đến Bạc Liêu đều muốn đặt chân tham quan.', 1, 0),
(12, 'Trà Vinh-Biển Ba Động', 'Biển Ba Động là danh thắng và là khu du lịch nổi tiếng thuộc xã Trường Long Hòa (thị xã Duyên Hải, tỉnh Trà Vinh), cách trung tâm thành phố Trà Vinh 50 km về hướng đông nam và cách thị xã Duyên Hải 10 km về hướng đông. Khu du lịch này có vị trí nằm giữa hai cửa biển Cung Hầu (sông Tiền), Định An (sông Hậu), nhìn chính diện ra biển Đông. Vùng biển Đông ven bờ các tỉnh Đồng bằng sông Cửu Long là vùng biển phù sa do nhiều cửa sông lớn nhỏ đổ ra nên phần lớn là bãi bùn, nước không trong. Trong đó, biển Ba Động là khu vực hiếm hoi ở miền Tây Nam bộ được thiên nhiên hào phóng ban tặng cho một bãi cát dài hơn 10 km từ ấp Nhà Mát tới ấp Cồn Trứng. Do độ dốc thoai thoải, khi nước thủy triều xuống, bãi cát phơi ra hàng trăm mét, từ bờ xuống tới mép nước. Cũng do nằm trong khu vực biển phù sa nên bãi cát Ba Động không trắng muốt hay vàng óng ả, nước biển Ba Động cũng không thể trong xanh như với các bãi biển Nha Trang hay Vũng Tàu. Tuy nhiên, dọc bờ biển Đông, từ Gò Công tới Cà Mau, Ba Động có bãi cát đẹp, nước biển khá trong, nhất là vào những tháng sau Tết Nguyên đán, sóng yên biển lặng, hình thành khu du lịch biển được nhiều người ưa chuộng.', 1, 0),
(13, 'Trà Vinh-Cù lao Tân Quy', 'Cù lao Tân Quy (thuộc xã An Phú Tân, huyện Cầu Kè), cách thành phố Trà Vinh khoảng 45km về phía Tây Bắc. Ngày nay, muốn du lịch đến cù lao Tân Quy cũng rất thuận tiện, du khách chỉ mất khoảng 10 phút đi đò ngang từ vàm Bến Đình. Tuy nhiên, nếu du khách muốn được nhìn ngắm toàn cảnh cù lao Tây Quy, trải mình với thiên nhiên và chiêm ngưỡng cảnh đẹp sông nước cù lao hai bên bờ có thể chọn xuất phát từ vàm Bến Cát. Nhìn từ xa, cù lao Tân Quy nổi bật lên giữa vùng sông nước mênh mông nặng mùi phù sa với những vườn cây xanh tươi dịu mát. Đắm mình trong không gian bao la của sông nước hiền hòa, nhiều du khách không khỏi tò mò về dải cù lao sắp đặt chân đến. Cù lao Tân Quy được phù sa từ dòng sông Hậu bồi đắp nên có khí hậu mát mẻ quanh năm, không khí đặc biệt trong lành, cây trái trĩu cành tươi tốt, tạo ra nét đẹp đặc trưng của miệt vườn sông nước Cửu Long. Những vườn cây ăn trái đặc sản nổi tiếng khắp gần xa như chôm chôm, nhãn xuồng cơm vàng, sầu riêng, măng cụt… sẽ là điểm tham quan hấp dẫn nhiều du khách. Hầu như trong lịch trình Tour Miền Tây của các công ty lữ hành đều có hành trình đến cù lao Tân Quy. Du khách ghé thăm cù lao Tân Quy có thể đi thăm thú những vườn trái cây xanh tươi, trái chín trĩu quả. Đặc biệt trong thời gian tham quan, du khách còn có thể tự tay hái và thưởng thức trái cây ngay tại vườn. Sau khi tham quan vườn cây ăn trái, du khách có thể tham gia các hoạt động vui chơi ở cù lao như tắm sông, câu cá, chèo thuyền ngắm cảnh…', 1, 0),
(14, 'Vĩnh Long-Khu du lịch Trường Huy', 'Một nhân tố mới của Vĩnh Long khiến Cù lao An Bình và các khu du lịch khác phải dè chừng – đó là những điều người ta vẫn nói khi nhắc đến khu du lịch Trường Huy. Địa điểm này này chỉ cách cầu Mỹ Thuận 5km, một vị trí đắc địa thu hút khách thập phương ghé thăm.Khu du lịch Trường Huy được đầu tư kinh phí rất lớn để xứng với sứ mệnh trở thành “khu du lịch sinh thái bậc nhất Tây Nam Bộ”. Trong diện tích lớn lên đến 350,000m2, khách du lịch có thể trải nghiệm vô số dịch vụ chất lượng: nghỉ dưỡng, ẩm thực, vui chơi – giải trí, tổ chức sự kiện,…Giá vé khu du lịch Trường Huy dành cho người lớn là 40.000đ/ người (học sinh sinh viên mang thẻ học sinh chỉ còn 30.000đ/ người), trẻ em 20.000đ/người.', 1, 0),
(15, 'Vĩnh Long-Cầu Mỹ thuận', 'Cầu Mỹ Thuận là cây cầu dây văng bắc qua sông Tiền, nối liền hai tỉnh Tiền Giang và Vĩnh Long, Việt Nam. Cầu nằm cách Thành phố Hồ Chí Minh 125 km về hướng Tây Nam, trên Quốc lộ 1A, là trục giao thông chính của vùng đồng bằng sông Cửu Long.\r\nơ đồ bố trí dây văng cầu Mỹ Thuận được thiết kế theo hình rẻ quạt với hai mặt phẳng dây cách nhau 18,6m. Toàn cầu có 128 dây văng chia thành 8 nhóm, mỗi nhóm có 16 dây. Tổng chiều dài của cây cầu là 1535m với hai cầu dẫn mỗi bên 11 nhịp, mỗi bên gồm 9 nhịp 40m, 1 nhịp 38,8m và 1 nhịp 43,8m đều dạng dầm bê tông dự ứng lực, được lắp ghép đơn giản theo kiểu “Super Tee” (có hình hộp hở). Chiều dài phần cầu chính là 660m, chia thành 3 nhịp: hai nhịp bên mỗi nhịp dài 150 mét, nhịp giữa dài 350m Độ cao thông thuyền là 37,5m. Mặt cầu Mỹ Thuận rộng 23,6m chia thành bốn làn xe cơ giới ở giữa và hai làn cho người đi bộ và xe thô sơ hai bên.Có thể nói, cầu Mỹ Thuận là một công trình giao thông có kiểu dáng kiến trúc theo phong cách Châu Âu hiện đại, mang lại vẻ đẹp cho miền Tây Nam Bộ', 1, 0),
(16, 'Đà Lạt', 'Festival hoa Đà Lạt đang khởi động với những hoạt động du lịch vô cùng phong phú và hấp dẫn. Nếu bạn muốn tìm địa điểm đón xuân 2016 thì Đà Lạt là một lựa chọn lý tưởng mà bạn không thể bỏ qua. Ngay trung tâm thành phố hiện đang trồng 60.000 cây hoa cánh bướm, dự kiến sẽ nở đúng vào mùa festival hoa, khỏi phải nói khi những cánh hoa nở bung thì thảm hoa cánh bướm sẽ đẹp tới mức nào.', 1, 1),
(17, 'Phan Thiết-Mũi Né', 'Mũi Né, Phan Thiết nổi tiếng với những bãi cát trắng trải dài trên mặt biển xanh biếc và những hàng dừa cao vút, đặc biệt tới đây bạn sẽ được thưởng thức những món ăn ngon và nổi tiếng của người vùng đất ven biển vô cùng xinh đẹp. Với phong cảnh hữu tình, nhiều tảng đá có hình thù kì lạ nằm đối diện với biển nên rất hấp dẫn khách du lịch. Đặc biệt vào mùa mưa cả ngọn núi được bao bọc với màu xanh của thiên nhiên và màu cỏ vàng ủa vào mùa nắng.', 1, 1),
(18, 'Huế', 'Tới Huế bạn sẽ được chiêm ngưỡng rất nhiều đền, chùa, lăng tẩm cùng nhiều danh lam thắng cảnh khác. Đại Nội Huế là một trong những khu di tích lịch sử ở Huế được UNESSCO công nhận là di sản văn hóa Thế giới, hàng năm tại đây thường diễn ra các lễ hội văn hóa đặc trưng. Không thể dùng từ ngữ để diễn tả phong cảnh Huế đẹp như thế nào, một xứ Huế trầm mặc, cổ kính và thơ mộng.', 1, 1),
(19, 'Đà Nẵng', 'Với khu du lịch Bà Nà Hills - đường lên tiên cảnh cực kỳ nổi tiếng có những kỷ lục xứng tầm thế giới, Đà Nẵng nên là địa điểm thứ 2 ở Việt Nam để đi du lịch trong năm 2016. Đặc biệt là vào mùa hè, khi học sinh vào kỳ nghỉ hè và gia đình muốn có một chuyến du lịch trọn vẹn thì Đà Nẵng là lựa chọn số 1. Các resort, khách sạn ở đây được đánh giá rất cao theo chuẩn quốc tếm đảm bảo bạn sẽ có một chuyến du lịch ấn tượng. Khu vui chơi giải trí trên Bà Nà sẽ là điểm vui chơi lý tưởng cho thanh thiếu niên. Bên cạnh những địa điểm du lịch hiện đại như cầu rồng, cầu tình yêu, Bà Nà, vòng quay Sunwheel,... Ngoài ra, gần Đà Nẵng còn có phố cổ Hội An - phố cổ đẹp bậc nhất thế giới với vẻ đẹp truyền thống văn hóa rất đặc sắc. Trong mắt du khách nước ngoài thì Hội An là một địa điểm cực kỳ cuốn hút và khó quên.', 1, 1),
(20, 'Lào Cai- Sa Pa', 'Việt Nam là một đất nước có khí hậu nhiệt đới cận xích đạo nên dù mùa đông không khí cũng khá nóng, đặc biệt là khu vực phía nam. Ngoài Đà Lạt của Lâm Đồng thuộc khu vực Tây nguyên thì còn có Sa Pa là thành phố sương mù.Đến Sa Pa vào mùa đông, khi sương phủ kín lối đi hay mùa băng giá, những khi có đợt tuyết rơi trắng xóa một vùng, bạn sẽ cảm nhận được một mùa đông rất khác trên đất Việt.', 1, 2),
(21, 'Hà Nội- Chùa Trấn Quốc', 'Chùa Trấn Quốc nằm trên một bán đảo nhỏ phía đông của Hồ Tây. Ngôi chùa 1.500 năm tuổi được coi là cổ nhất Hà Nội mới đây đã lọt vào danh sách 16 ngôi chùa đẹp nhất thế giới do báo Daily Mail (Anh) bình chọn. Chùa là nơi lưu giữ những giá trị tôn giáo và lịch sử thu hút nhiều Phật tử và khách du lịch tới tham quan.', 1, 2),
(22, 'Hải phòng- Đồ Sơn', 'Đồ Sơn là một quận thuộc TP Hải Phòng cách trung tâm thành phố khoảng 20km. Không những là khu nghỉ mát và tắm biển với nhiều biển nhỏ, khung cảnh đẹp tuyệt vời thu hút được đông đảo khách du lịch vào mùa hè mỗi năm mà còn nổi tiếng nhất ở Miền Bắc nước ta. Đồ sơn là một bán đảo nhỏ với bờ biển xanh kéo dài hòa quyện với những cánh rừng nguyên sinh tạo nên một vẻ đẹp gây chấn động lòng người. Mọi du khách thập phương đến đây đều được leo núi, ngắm nhìn ba thế biển đẹp, tắm biển…', 1, 2),
(23, 'Hà Nội – Hồ Hoàn Kiếm', 'Giữa lòng hồ là Tháp Rùa cổ kính, xung quanh là những di sản có ý nghĩa văn hóa- lịch sử lâu đời như Tháp Bút, đền Ngọc Sơn, cầu Thê Húc dẫn vào lầu Đắc Nguyệt, Đài Nghiên…  Đó là những biểu tượng làm nên nét đẹp của thủ đô ngàn năm văn hiến. Với không gian tháng đãng, trong lành, nơi đây là điểm được đông đáo giới trẻ ưa thích, được các cặp đôi chọn làm nơi chụp ảnh cưới. Không chỉ thế hồ Hoàn Kiếm là một trong những điểm hấp dẫn khách du lịch trong và ngoài nước.', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `place_id` int(11) DEFAULT NULL,
  `post_text` text DEFAULT NULL,
  `post_time` timestamp NULL DEFAULT current_timestamp() COMMENT 'Thời điểm tạo # Thời điểm tạo post',
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `editor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `place_id`, `post_text`, `post_time`, `status`, `user_id`, `editor_id`) VALUES
(0, 0, 'Công viên được lấy theo tên của vị nhạc sĩ nổi tiếng quê Cần Thơ là Lưu Hữu Phước, được xây theo hình cây đàn ghi-ta. Khuôn viên rất đẹp và sạch sẽ, thường diễn ra các hoạt động văn hóa lớn như Tết Nguyên Đán, hội sách, các ngày lễ lớn của đất nước,… Vào buổi tối, công viên rộn ràng hơn cả với hoạt động vui chơi, giải trí của người dân như tập thể dục, chơi pa-tin, dân vũ, đàn hát,…', '2019-11-09 05:00:00', 1, 2, 0),
(1, 1, 'Đây là ngôi chùa có khuôn viên lớn nhất tỉnh Sóc Trăng hiện nay, mặc dù trong giai đoạn còn đang thi công thêm một số hạng mục nữa mới hoàn chỉnh như: chánh điện, ấn Quan Âm, ấn Di Đà… nhưng mỗi ngày, đặc biệt trong các ngày cuối tuần, rằm, mùng một, các ngày lễ lớn Trung tâm đón tiếp hàng chục ngàn lượt du khách trong và ngoài tỉnh đến tham quan. Cũng như các nơi khác, kiến trúc mới của chùa Phật học 2 biến đổi để cho phù hợp với thời đại hiện nay như phật điện ngoài trời thoáng đãng, hạn chế việc đốt nhang bảo vệ sức khỏe.', '2019-11-10 03:00:00', 1, 1, 0),
(2, 6, 'Bãi biển Khai Long là một bãi cát giồng uốn lượn dọc bờ biển thuộc ấp Khai Long, xã Đất Mũi, huyện Ngọc Hiển, với diện tích khoảng 230 ha, chiều dài theo bờ biển 3.800 m và cách khu du lịch Mũi Cà Mau 18 km. Đây là bãi biển vẫn còn đậm nét hoang sơ hòa với vẻ đẹp dân dã mộc mạc nơi đất mũi dải đất chữ S này. Cà Mau là vùng đất quanh năm ngặp mặn, nhiễm phèn, đây là điều kiện hình thành hệ thống rừng ngập mặn đặc trưng. Trong danh sách này điển hình có rừng U Minh Hạ, rừng ngập mặn Cà Mau. Diện tích của hai ứng cử này rất lớn, với độ phủ trải rộng vùng vành đai đất liền Cà Mau.\r\n\r\nChính điều này đã tạo nên điểm khác biệt của bãi biển Khai Long. Không đơn thuần là một bãi biển mà còn là hệ sinh thái rừng ngập mặn trù phú Bãi biển Khai Long nằm phía biển Đông trong khu vực hệ sinh thái rừng ngập mặn. Muốn đặt chân lên đây du khách buộc phải đi ca nô hoặc thuyền khoảng một giờ đồng hồ với điểm xuất phát từ Thành phố Cà Mau.\r\n\r\nĐứng ở bãi Khai Long, du khách có thể phóng tầm mắt ngắm nhìn trọn vẹn hình dáng, vẻ đẹp hoang sơ của cụm đảo Hòn Khoai hùng vĩ.', '2019-11-13 19:00:25', 1, 0, 1),
(3, 23, 'Hồ Hoàn Kiếm (Hồ Gươm) nằm ngay trung tâm quận Hoàn Kiếm nên rất thuận tiện cho du khách tìm đến ngắm cảnh và khám phá nhiều trải nghiệm thú vị vào bất cứ thời điểm nào trong ngày.\r\n\r\nHồ Hoàn Kiếm hay còn gọi là Hồ Gươm tọa lạc ngay trung tâm thủ đô Hà Nội và được bao quanh bởi 3 con phố Hàng Khay – Lê Thái Tổ – Đinh Tiên Hoàng.\r\n\r\nDo nằm ở vị trí đắc địa, là nơi kết nối giữa khu phố cổ như Hàng Ngang, Hàng Đào, Cầu Gỗ, Lương Văn Can... với khu phố Tây là Nhà Thờ, Tràng Thi, Hàng Bài, Tràng Tiền, Hàng Khay... nên Hồ Hoàn Kiếm thu hút nhiều du khách trong và ngoài nước đến tham quan, khám phá trong chuyến du lịch Hà Nội.', '2019-11-14 04:40:16', 1, 0, 0),
(4, 17, 'About 200 km north of Ho Chi Minh City are Mui Ne and Phan Thiet. Together, these traditional fishing villages are fast becoming a popular leisure destination. Resort-style developments have been rising along the coastline, though so far the lives of the fishing communities remain unchanged and Mui Neâ??s long beach is quiet and serene, great for walks, jogging and spectacular sunsets.\r\n\r\nPhan Tiet, which is rather larger, is famous for its fish sauce, an ingredient in most Vietnamese dishes. It, too, has a beautiful beach. There is a wide range of accommodation, and restaurants offer a huge selection of seafood at very affordable prices. There are golf courses, beautiful pagodas, spectacular red and white sand dunes, and a variety of water sports\r\n', '2019-11-14 07:24:57', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(150) DEFAULT NULL,
  `role_description` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`, `role_description`, `status`) VALUES
(0, 'Admin', 'Admin là viết tắt của từ Administartor có nghĩa là: người quản lý, người quản trị, quản trị viên....', 1),
(1, 'Editor', 'Editor trong tiếng Anh có nghĩa là Biên tập viên. Biên tập viên chỉ những người sản xuất, biên soạn và góp ý với các bản thảo, bản dựng… để khắc phục các sai sót hoặc xuất bản chúng.', 1),
(2, 'Writer', 'Writer là một người sử dụng các từ viết theo nhiều phong cách và kỹ thuật khác nhau để truyền đạt ý tưởng của họ. Các nhà văn sản xuất các hình thức nghệ thuật văn học và văn bản sáng tạo khác nhau như tiểu thuyết, truyện ngắn, thơ, kịch, kịch bản, và các bài tiểu luận cũng như các báo cáo và tin tức khác nhau có thể được công chúng quan tâm.', 1),
(3, 'Guest', 'Guest là khách trong mạng cục bộ, đây là một loại đặc quyền thâm nhập, cho phép bạn thâm nhập vào máy tính khác của mạng mà không cần đưa ra mật hiệu.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(150) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`, `status`) VALUES
(0, 'Đồng bằng', 1),
(1, 'Đồi núi', 1),
(2, 'Biển', 1),
(3, 'Đảo', 1),
(4, 'Bán đảo', 1),
(5, 'Vịnh', 1),
(6, 'Hang động', 1),
(7, 'Cầu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `type_of_place`
--

CREATE TABLE `type_of_place` (
  `type_of_place_id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `place_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_of_place`
--

INSERT INTO `type_of_place` (`type_of_place_id`, `type_id`, `place_id`) VALUES
(0, 0, 0),
(1, 0, 1),
(2, 0, 2),
(3, 0, 3),
(4, 0, 4),
(5, 2, 5),
(6, 3, 6),
(7, 6, 7),
(8, 1, 8),
(9, 2, 9),
(10, 0, 10),
(11, 2, 11),
(12, 0, 12),
(13, 0, 13),
(14, 0, 14),
(15, 7, 15),
(16, 1, 16),
(17, 2, 17),
(18, 0, 18),
(19, 4, 19),
(20, 1, 20),
(21, 0, 21),
(22, 1, 22),
(23, 0, 23);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(150) DEFAULT NULL,
  `user_gender` int(11) DEFAULT NULL,
  `user_img` varchar(150) DEFAULT NULL,
  `user_phone` varchar(15) DEFAULT NULL,
  `user_address` varchar(200) DEFAULT NULL,
  `user_username` varchar(150) DEFAULT NULL,
  `user_password` varchar(32) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_gender`, `user_img`, `user_phone`, `user_address`, `user_username`, `user_password`, `status`, `role_id`) VALUES
(0, 'Mai Quốc Hậu', 0, 'hau.jpg', '0378316480', 'An Khánh, Ninh Kiều, Cần Thơ', 'haumqce130436', '0ab30a221f12ddb6c5c202a073e58d61', 1, 0),
(1, 'Trần Quốc An', 0, 'an.jpg', '0944354432', 'Ngô Thì Nhậm, An Khách, Ninh Kiều, Cần Thơ', 'antqce130201', 'beee4a1b3c0dd99fc43aa25d72a07e4a', 1, 1),
(2, 'Phạm Trương Anh Tú', 0, 'tu.jpg', '0343114777', 'Can Tho', 'tuptace130136', 'a40e2254ff515af8255250f5e0e6ed79', 1, 2),
(3, 'Hong Dinh', 0, 'dinh.jpg', '09123123123', 'ninh kieu can tho', 'hongdinh123', '8ba8ea6527ebc7bab4a6433974840b71', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `editor`
--
ALTER TABLE `editor`
  ADD PRIMARY KEY (`editor_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `place_id` (`place_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`place_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `editor_id` (`editor_id`),
  ADD KEY `place_id` (`place_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `type_of_place`
--
ALTER TABLE `type_of_place`
  ADD PRIMARY KEY (`type_of_place_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `place_id` (`place_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `type_of_place`
--
ALTER TABLE `type_of_place`
  MODIFY `type_of_place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

--
-- Constraints for table `editor`
--
ALTER TABLE `editor`
  ADD CONSTRAINT `editor_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`);

--
-- Constraints for table `place`
--
ALTER TABLE `place`
  ADD CONSTRAINT `place_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`editor_id`) REFERENCES `editor` (`editor_id`),
  ADD CONSTRAINT `post_ibfk_3` FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`);

--
-- Constraints for table `type_of_place`
--
ALTER TABLE `type_of_place`
  ADD CONSTRAINT `type_of_place_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`),
  ADD CONSTRAINT `type_of_place_ibfk_2` FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
