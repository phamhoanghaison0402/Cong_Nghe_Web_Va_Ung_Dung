-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2016 at 02:06 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE IF NOT EXISTS `hoadon` (
  `id_HoaDon` int(11) unsigned NOT NULL,
  `id_KhachHang` int(11) unsigned NOT NULL,
  `id_Sach` text COLLATE utf8_unicode_ci NOT NULL,
  `TongTien` text COLLATE utf8_unicode_ci NOT NULL,
  `NgayMua` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`id_HoaDon`, `id_KhachHang`, `id_Sach`, `TongTien`, `NgayMua`) VALUES
(11, 2, '83,32', '150', '2016-01-02 11:24:25'),
(13, 5, '7,54', '201', '2016-01-02 11:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `sach`
--

CREATE TABLE IF NOT EXISTS `sach` (
  `id` int(11) unsigned NOT NULL,
  `TuaDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TacGia` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Gia` int(30) NOT NULL,
  `TomTat` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `NhaXuatBan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NamXuatBan` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `MaTheLoai` int(11) NOT NULL,
  `ImgSrc` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sach`
--

INSERT INTO `sach` (`id`, `TuaDe`, `TacGia`, `Gia`, `TomTat`, `NhaXuatBan`, `NamXuatBan`, `MaTheLoai`, `ImgSrc`) VALUES
(2, 'Mẹo vặt & thủ thuật sử dụng Internet', 'KS. Đỗ Mạnh Hùng', 69, 'Cuốn sách hướng dẫn này đề cập và thảo luận những vấn đề mà bạn cần hiểu rõ nhằm đảm bảo an toàn cho bản thân trong thế giới kỹ thuật số. Những nguy cơ bạn có thể đối mặt sẽ được nhận dạng và bàn luận nhằm giúp bạn nhận thức đầy đủ và hạn chế tối đa những rủi ro. Toàn bộ cuốn sách sẽ trả lời tám câu hỏi cơ bản liên quan tới kiến thức chung về an ninh, an toàn dữ liệu và bảo mật truyền thông.', 'Văn Hóa - Thông Tin', '2010', 1, 'th02.jpg'),
(3, 'Ngành công nghệ thông tin', 'Nhất Nghệ Tinh', 55, 'Công nghệ thông tin (CNTT) sử dụng hệ thống các thiết bị và máy tính (bao gồm phần cứng, phần mềm) để cung cấp một giải pháp xử lý thông tin trên nền công nghệ cho các cá nhân, tổ chức có yêu cầu. Các giải pháp CNTT rất đa dạng: phần mềm quản lý nhân viên trong cơ quan, tổ chức, website dạy học qua mạng, hệ thống máy tính phục vụ cho nhu cầu tính cước, phần mềm trên các thiết bị di động hoặc những chương trình giải trí trên Internet v.v…', 'Kim Đồng', '2014', 1, 'th03.jpg'),
(4, 'Lập trình web với ASP.NET', 'ThS. Nguyễn Minh Đạo', 74, 'ASP.NET là một nền tảng ứng dụng web (web application framework) được phát triển và cung cấp bởi Microsoft, cho phép những người lập trình tạo ra những trang web động, những ứng dụng web và những dịch vụ web. Lần đầu tiên được đưa ra thị trường vào tháng 2 năm 2002 cùng với phiên bản 1.0 của.NET framework, là công nghệ nối tiếp của Microsoft''s Active Server Pages(ASP)', 'Đại Học Quốc Gia TPHCM', '2013', 1, 'th04.jpg'),
(5, 'Lập trình hướng đối tượng với C++', 'Lê Đăng Hưng - Tạ Tuấn Anh', 56, 'Lập trình hướng đối tượng (gọi tắt là OOP, từ chữ Anh ngữ object-oriented programming), hay còn gọi là lập trình định hướng đối tượng, là kĩ thuật lập trình hỗ trợ công nghệ đối tượng. OOP được xem là giúp tăng năng suất, đơn giản hóa độ phức tạp khi bảo trì cũng như mở rộng phần mềm bằng cách cho phép lập trình viên tập trung vào các đối tượng phần mềm ở bậc cao hơn.', 'Khoa Học và Kỹ Thuật', '2009', 1, 'th05.jpg'),
(6, 'Các giải pháp lập trình C#', 'Nguyễn Ngọc Bình Phương - Thái Thanh Phong', 36, 'Các giải pháp lập trình C# khảo sát chiều rộng của thư viện lớp .NET Framework và cung cấp giải pháp cụ thể cho các vấn đề thường gặp. Mỗi giải pháp được trình bày theo dạng “vấn đề/giải pháp” một cách ngắn gọn và kèm theo là các ví dụ mẫu. Các giải pháp lập trình C# không nhằm mục đích hướng dẫn bạn cách lập trình C#. Tuy vậy, ngay cả khi mới làm quen với lập trình ứng dụng được xây dựng trên .NET Framework với C#, bạn cũng sẽ nhận thấy quyển sách này là một tài nguyên vô giá.', 'Giao Thông Vận Tải', '2013', 1, 'th06.jpg'),
(7, 'Lập trình cơ bản PHP & MySQL', 'Joel Murach', 85, 'Cuốn sách Lập trình cơ bản PHP và MySQL dành cho những ai muốn học cách xây dựng và bảo trì các website sử dụng PHP và MySQL – “cặp bài trùng” ngôn ngữ lập trình và cơ sở dữ liệu được sử dụng nhiều nhất cho các ứng dụng Web hiện nay. Mục tiêu là giúp bạn trong một thời gian ngắn nhất sẽ trở thành một lập trình viên Web biết PHP và MySQL ở mức chuyên sâu.', 'Khoa Học và Kỹ Thuật', '2015', 1, 'th07.jpg'),
(8, 'Lập trình web bằng php 5.3 và Mysql 5.1', 'Phạm Hữu Khang - Phương Lan', 39, 'Tiếp theo tập 1, tập 2 của cuốn sách "Lập trình Web bằng PHP 5.3 và cơ sở dữ liệu MySQL 5.1" bao gồm 10 chương và ứng dụng đính kèm lần lượt giới thiệu cùng bạn đọc các kiến thức liên quan đến Session, Cookie, giỏ hàng trực tuyến, tìm kiếm và phân trang dữ liệu, lập trình hướng đối tượng và sử dụng Zend Framework.', 'Phương Đông', '2010', 1, 'th08.jpg'),
(9, 'HTML5 & CSS3', 'Hải Sơn', 67, 'Khóa học thiết kế web với HTML, CSS và JavaScript giúp Học viên sẽ được học từng bước (step by step) từ kiến thức cơ bản đến nâng cao như HTML, CSS, HTML5, CSS3. Hướng dẫn học viên cách thiết kế và xây dựng giao diện một website, tạo các hiệu ứng cho trang web sử dụng HTML và CSS.', 'Bách Khoa - Hà Nội', '2014', 1, 'th09.jpg'),
(11, 'Mùa lá rụng trong vườn', 'Ma Văn Kháng', 14, 'Mùa lá rụng trong vườn là một tiểu thuyết của nhà văn Ma Văn Kháng, hoàn thành vào tháng 12 năm 1982 và được xuất bản lần đầu vào năm 1985.\r\nLấy bối cảnh một gia đình truyền thống vào những năm 80 của thế kỉ XX, khi đất nước bắt đầu có những bước chuyển mình mạnh mẽ sau chiến tranh, gây ra nhiều thay đổi tốt có, xấu có; truyện đã phản ánh chân thực những biến động trong xã hội thời bấy giờ và những ảnh hưởng to lớn của nó tới gia đình - tế bào của xã hội.', 'Trẻ', '2009', 2, 'vh01.jpg'),
(12, 'VĂN HỌC VIỆT NAM 1975 – 1991', 'Nguyễn Văn Long', 22, 'Cái được gọi là “văn học đổi mới” ở Việt Nam đến nay đã cũ chưa? Nếu cũ rồi thì điểm dừng, chỗ kết thúc của nó là ở đâu? Là năm nay, năm ngoái, năm kia, hay mươi năm về trước? Bức tranh văn học Việt Nam sau 1975 phong phú, đa dạng với nhiều bè bối tương đối phức tạp. Nó là sản phẩm của nhiều thế hệ cầm bút có quan điểm nghệ thuật rất khác, thậm chí đối lập, trái ngược nhau', 'Giáo Dục Việt Nam', '2008', 2, 'vh02.jpg'),
(13, 'Văn học miền nam lục tỉnh', 'Nguyễn Văn Hầu', 25, 'Là công trình khảo cứu văn học của tác giả Nguyễn Văn Hầu giới thiệu văn học miền Nam Nam lục tỉnh gồm 3 tập: Miền Nam và văn học dân gian địa phương; Văn học Hán Nôm thời khai mở và xây dựng đất mới; Văn học Hán Nôm thời kháng Pháp và thuộc Pháp', 'Giáo Dục', '2006', 2, 'vh03.jpg'),
(14, 'Văn học Việt Nam dân gian', 'Bùi Mạnh Nhị', 45, 'Văn Học Dân Gian - Cái Hay, Vẻ ĐẹpVới những ai yêu thích văn học dân gian, nhiều khi ta không sao hiểu và giải thích được cái hay vẻ đẹp của nó, nhất là khi nghe các nhà lý luận văn chương hiện đại đánh giá nó và xếp hạng loại bạn đọc chỉ hiểu nổi nó!', 'Giáo Dục Việt Nam', '1998', 2, 'vh04.jpg'),
(15, 'Văn học dân gian, cái hay, cái đẹp', 'Lê Dân', 54, 'Tác giả đã có những phát hiện lý thú về nó.Với việc dùng kiến thức ngữ dụng học soi chiếu vào những lời hát nhiều khi “chả có gì để tiếp nhận” như cái câu Con mèo con chó có lông / Cây tre có đốt nồi đồng có quai một ý vị mỉa mai, chê trách của loại người “có ăn có chọi”.', 'Giáo Dục Việt Nam', '2006', 2, 'vh05.jpg'),
(16, 'Thành Phố Không Cầu Vồng', 'Nguyễn Hữu Phùng Nguyên', 54, 'Đôi bạn thân thiết Alex và Rosie từ khi bảy tuổi đã bắt đầu trao nhau những bức thư chia sẻ  mọi điều buồn vui trong cuộc sống, từ chuyện con chó cưng của Alex cho tới cô Casey có cái mũi to xấu xí. Tuổi thơ láu lỉnh và nghịch ngợm trôi qua, cho tới thuở mười lăm, mười sáu ẩm ương với những xúc cảm hồi hộp và lãng mạn chớm nở… tất cả được gói gọn trong những lá thư dấu kín dưới hộc bàn lớp học. ', 'Công An Nhân Dân', '2013', 2, 'vh06.jpg'),
(17, 'Tác phẩm văn học trong nhà trường', 'Nguyễn Văn Tùng', 25, 'ậy là mười năm đã trôi qua từ khi chương trình và sách giáo khoa mới Ngữ văn được chính thức thực hiện. Với chủ trương tích hợp cũng như phát huy vai trò chủ động của học sinh trong việc đọc hiểu văn bản văn học, các nhà biên soạn chương trình và sách giáo khoa đã tuyển một hệ thống các tác phẩm trên cơ sở tiếp tục sử dụng một phần tác phẩm đã có trong sách giáo khoa cũ và cập nhật một số tác phẩm mới', 'Giáo dục Việt Nam', '2009', 2, 'vh07.jpg'),
(18, 'Truyện Kiều', 'Nguyễn Du', 19, 'Truyện Kiều - tác phẩm được viết bởi đại thi hào Nguyễn Du (1765-1820) là một tác phẩm văn chương kinh điển nhất trong lịch sử văn học Việt Nam. Gồm 3254 câu thơ được viết theo thể lục bát mang đậm âm hưởng của ca dao truyền thống. Nội dung dựa theo tác phẩm văn xuôi lãng mạn Trung Quốc song vẫn phản ánh sâu sắc tinh thần dân tộc với những giá trị truyền thống của người Việt Nam như trách nhiệm cá nhân đối với bản thân, với xã hội đối lập với những giá trị tinh thần.', 'Hải Sơn', '2009', 2, 'vh08.jpg'),
(19, 'Tắt đèn', 'Ngô Tất Tố', 39, 'Trong thời kì trước cách mạng tháng 8, đời sống của nhân dân vô cùng cực khổ dưới ách thống trị của bọn thực dân phong kiến. Bằng ngòi bút tài hoa, các nhà văn hiện thực xuất sắc đã phác họa lại một cách rõ nét về bối cảnh xã hội đương thời. Một trong số đó là Ngô Tất Tố với tác phẩm ''''Tắt Đèn''''. ''''Tắt Đèn'''' là một tác phẩm chân thực mà cảm động về gia đình chị Dậu - một gia đình nông dân nghèo đang sống dưới tầng đáy của xã hội lúc bấy giờ. Họ bị thực dân phong kiến đày đọa, chèn ép đến bần cùng hóa, tưởng chừng như không còn lối thoát.', 'Giáo Dục việt Nam', '2006', 2, 'vh09.jpg'),
(20, 'Người đi dọc biển', 'Văn Cao', 25, 'Mỗi cuốn sách đều chứa đựng một phần thông tin. Sách là bản văn hữu ích theo nhiều cách khác nhau. Không chỉ gần gũi, thân quen với con người, sách còn là phẩm vật thông dụng nhất trong những đồ vật ở nhà và cũng là tài sản quý giá nhất được lưu giữ trong ngôi nhà của chúng ta. Tuy nhiên, sống với sách phải là cả một nghệ thuật. Do vậy, điều cần nhất là làm sao phối hợp nhịp nhàng giữa sách với chức năng của ngôi nhà chúng ta', 'Giáo Dục Việt Nam', '1996', 2, 'vh10.jpg'),
(21, 'Cuộc sống không giới hạn', 'Nick ViJicvic', 108, 'Cuộc sống có rất nhiều điều kỳ diệu, mà đôi khi nằm ngay trong những điều giản dị, bình thường. Ví dụ việc cầm nắm đồ vật quanh ta hàng ngày, hay như dùng chân đi lại chẳng hạn, đều là những điều quá đỗi bình thường, nhưng nếu bạn sinh ra với một cơ thể không có tay chân thì liệu điều đó có còn là bình thường nữa hay không?', 'Tổng Hợp TPHCM', '2014', 3, 'kn1.jpg'),
(22, 'Bí quyết khơi dậy đam mê', 'Hải Sơn', 95, '“Tất cả chúng ta được sinh ra với những khả năng tự nhiên vĩ đại, nhưng lại dần đánh mất sự kết nối với chúng khi lớn lên…” Bí quyết khơi dậy đam mê làm thay đổi cuộc sống Bí quyết khơi dậy đam mê làm thay đổi cuộc sống là tập hợp nhiều câu chuyện về hành trình sáng tạo của rất nhiều người.  ', 'Hải Sơn', '2013', 3, 'kn2.jpg'),
(23, 'Kỹ năng giao tiếp', 'Lại Thế Luyện', 35, 'Giao tiếp ứng xử là một hoạt động thường ngày của mỗi chúng ta, thế nhưng không phải cứ thực hiện nhiều là bạn đã "thành thạo". Trên thực tế, có nhiều nguyên tắc giao tiếp ứng xử bạn không hề biết, và chính sự không biết này vô tình làm cho bạn mắc lỗi trong quá trình giao tiếp thường nhật.', 'Tổng Hợp TPHCM', '2014', 3, 'kn3.jpg'),
(24, '7 thói quen của bạn trẻ thành đạt', 'Hải Sơn', 108, 'Những thói quen này luôn có quan hệ chặt chẽ và hỗ trợ với nhau. Thói quen 1,2,3 là để mỗi người tự rèn luyện mình nên gọi là những thói quen chiến thắng bản thân. Thói quen 4,5,6 là để tạo các mối quan hệ và tính đòan kết tập thể nên gọi là chiến thắng với cộng đồng. Bạn phải có ” kỹ thuật cá nhân ” trước đã rồi mới có thể tham gia chơi chung trong 1 đội mạnh', 'Trẻ', '2015', 3, 'kn4.jpg'),
(25, 'Lắng nghe yêu thương', 'Hải Sơn', 39, 'Yêu cháu và muốn bảo bọc cháu yêu khỏi những tổn thương từ những cá tính quá góc cạnh lẫn cực đoan của cha mẹ, người bà đã dựng nên những câu chuyện đẹp để cho cháu yên lòng về xuất xứ của mình. Nhưng truyện cổ tích chỉ có tác dụng lúc cô cháu yêu còn nhỏ, và khi đã lớn hơn, đã hiểu ra phần nào sự thật mà người bà đã - vì yêu thương mà - che giấu, mọi yêu thương trong cô cháu gái đã chuyển sang thái cực tình cảm khác hẳn - lòng căm ghét.', 'Trẻ', '2013', 3, 'kn5.jpg'),
(26, 'Học tập cũng cần chiến lược', 'Hải Sơn', 36, 'Vài năm trước, tôi tình cờ đọc được Học tập cũng cần chiến lược (Study Guides and Strategies-SGS) trên trang web www. studygs .net, tác giả là Joe Landsberger ‒ lúc đó là chuyên viên thiết kế chương trình giảng dạy và tư vấn giáo dục thuộc trường Đại học St. Thomas, Mỹ. Tôi thật sự ấn tượng trước sự đơn giản, phạm vi ứng dụng, tính hiệu quả và khả năng tiếp cận đa ngữ của chương trình này và thường giới thiệu Học tập cũng cần chiến lược cho các sinh viên của mình.', 'Hải Sơn', '2012', 3, 'kn6.jpg'),
(27, 'Kỹ năng sống dành cho học sinh', 'Hải Sơn', 38, 'Cách đây gần 200 năm đại thi hào Nguyễn Du, danh nhân văn hóa thế giới khẳng định “Chữ tâm kia mới bằng ba chữ tài”. Năm 1995, Daniel Goleman đã dịch chuyển triết lý giáo dục trên toàn thế giới khi khẳng định hiệu quả cuộc sống được quyết định 15% bằng thông minh logic – IQ và 85% bằng thông minh cảm xúc – EI (Emotional Intelligence). UNESCO khẳng định bốn trụ cột của giáo dục là: Học để biết, Học để làm, Học để làm người và Học để cùng chung sống. ', 'Trẻ', '2013', 3, 'kn7.jpg'),
(28, 'Tôi tài giỏi bạn cũng thế!', 'Adam Kho', 118, 'Cho dù bạn là ai, đang ở đâu, đang học trường nào, đang hướng tới bất kỳ mục tiêu gì trong học tập và cuộc sống, tôi xin chắc chắn với bạn một điều rằng, bạn sẽ tìm được câu trả lời trong quyển sách Tôi Tài Giỏi, Bạn Cũng Thế! – quyển sách chứa đựng những bí quyết đã giúp tác giả Adam Khoo lập nên kỳ tích.\r\n\r\n\r\n\r\n\r\n', 'Hải Sơn', '2014', 3, 'kn8.jpg'),
(29, 'Sống và hãy khát vọng', 'Trần Đăng Khoa', 78, '“Anh ấy sẽ kể cho bạn những câu chuyện đầy cảm hứng – những câu chuyện sẽ thay đổi cách bạn suy nghĩ, giúp bạn vượt qua những thách thức trong cuộc sống và đạt được mơ ước của mình. Anh ấy sẽ khiến bạn dừng lại để suy nghĩ thật nhiều về cuộc đời mình và tương lai. Anh ấy cũng sẽ khiến bạn đứng dậy và bắt đầu làm một điều gì đó cho cuộc đời mình. Nếu bạn là một người bình thường nhưng mong muốn đạt được những kết quả phi thường, quyển sách này chắc chắn là quyển sách dành cho bạn."', 'Trẻ', '2014', 3, 'kn9.jpg'),
(30, 'Tư duy tích cực thay đổi cuộc sống', 'Trần Đình Hoàng', 109, 'Tư duy tích cực là gì? Tư duy tích cực khác tư duy tiêu cực chỗ nào? Tại sao ta lại cần tư duy tích cực?\r\nTư duy tích cực giúp chúng ta luôn nhìn cuộc sống một cách lạc quan, biết cách biến chuyển những tình huống khó khăn thành thuận lợi không những cho bản thân mình mà còn cho người khác.\r\nTư duy tích cực là biết nắm bắt những khoảnh khắc tốt đẹp của cuộc sống một cách trọn vẹn và sáng tạo, phù hợp với từng thử thách, biết tạo ra cơ hội từ thử thách.', 'Phụ Nữ', '2015', 3, 'kn10.jpg'),
(31, 'Các lý thuyết kinh tế', 'Hải Sơn', 25, 'Nhu cầu nhận thức xu hướng phát triển kinh tế trong thời đại hiện nay, ngoài các nguồn thông tin cần thiết ra còn cần phải nhìn lại lịch sử phát triển kinh tế. Nhu cầu này không chỉ đối với các chuyên gia kinh tế, mà rất cần đối với nghiên cứu sinh, học viên cao học và sinh viên thuộc lĩnh vực kinh tế. ', 'Hải Sơn', '2009', 4, 'kt1.jpg'),
(32, 'Kinh tế học hài hước', 'Hải Sơn', 95, 'Kinh Tế Học Hài Hước đã hình thành nên tiền đề bất tuân thủ quy ước thông thường. Nếu chuẩn mực thể hiện cách chúng ta muốn thế giới vận động thì kinh tế học thể hiện sự vận động thực chất của thế giới. Độc giả của cuốn sách này sẽ biết tới hàng loạt những thực tế đáng kinh ngạc và nhiều câu chuyện gấp dẫn và vui vẻ, một số có thể là tiền đề cho những nghiên cứu sâu hơn về xã hội, một số đơn giản chỉ là những chủ đề tán gẫu trong hàng vạn cuộc trà dư tửu hậu.', 'Hải Sơn', '2012', 4, 'kt2.jpg'),
(33, 'Bí quyết tay trắng thành triệu phú', 'Adam Kho', 120, 'Bí quyết tay trắng thành triệu phú chứa đựng những bí quyết đã giúp tác giả Adam Khoo trở thành một trong những triệu phú trẻ tuổi nhất ở Singapore khi anh mới ở tuổi 26, điều đặc biệt là … anh khởi nghiệp hoàn toàn từ bàn tay trắng, không hề được thừa kế tài sản và chưa bao giờ vay ngân hàng hay nhận tiền đầu tư từ bên ngoài.', 'Phụ Nữ', '2012', 4, 'kt3.jpg'),
(34, 'Giáo trình thị trường chứng khoán', 'Nguyễn Thị Mỹ Dung', 34, 'Mục tiêu lớn nhất và cuối cùng của việc hình thành và phát triển thị trường chứng khoán tại các quốc gia là phục vụ cho chiến lược phát triển kinh tế một cách hữu hiệu nhất. Thông qua thị trường chứng khoán, các nguồn vốn trong và ngoài nước được tập trung sử dụng cho các dự án đầu tư phát triển kinh tế xã hội. Việc hình thành và phát triển thị trường chứng khoán là bước phát triển tất yếu của nền kinh tế thị trường.', 'Hồng Đức', '2009', 4, 'kt4.jpg'),
(35, 'Hiểu kinh tế qua 1 bài học', 'Hải Sơn', 33, 'Trong một thời gian dài, không chỉ ở Việt Nam mà còn trên khắp thế giới, cơ chế thị trường luôn hứng chịu búa rìu công luận về những nan giải mà xã hội phải đối mặt như lạm phát, thất nghiệp, chênh lệch giàu nghèo, và thậm chí cả chiến tranh cũng như suy đồi đạo đức. Chỉ đến khi những thử nghiệm thay thế cơ chế thị trường bằng cơ chế hoạch định tập trung bị thất bại trên hầu khắp các quốc gia, người ta mới bắt đầu nhìn nhận lại vai trò của thị trường đối với xã hội loài người.', 'Hải Sơn', '2014', 4, 'kt5.jpg'),
(36, 'Quản trị chiến lược kinh doanh', 'Nguyễn Tấn Phước', 18, 'Quản trị chiến lược (tiếng Anh: strategic management) là khoa học và nghệ thuật về chiến lược nhằm xây dựng phương hướng và mục tiêu kinh doanh, triển khai, thực hiện kế hoạch ngắn hạn và dài hạn trên cơ sở nguồn lực hiện có nhằm giúp cho mỗi tổ chức có thể đạt được các mục tiêu dài hạn của nó.', 'Hải Sơn', '2013', 4, 'kt6.jpg'),
(37, 'Kinh tế học, ồ quá dễ', 'Ngọc Trân', 39, 'Kinh tế học không thể vẽ nên một bức tranh kinh tế rõ nét nhưng lại có thể giúp chúng ta hiểu biết các lực vô hình chi phối sự vận động của nền kinh tế, biết được đất nước hiện nằm ở đâu trên bản đồ kinh tế thế giới. Khi tìm hiểu kinh tế học, chúng ta còn có thêm kiến thức, nhờ đó sẽ biết cách chi tiêu khôn khéo và kiếm ra tiền, làm cho cuộc sống trở nên dễ chịu hơn.', 'Trẻ', '2010', 4, 'kt7.jpg'),
(38, 'Giáo trình Thống kê kinh tế', 'Bùi Đức Triệu', 47, 'Giáo trình có nội dung nghiên cứu các vấn đề của thống kê kinh tế hiện đại, một trong những bộ phận quan trọng nhất cấu thành nên khoa học thống kê, đồng thời cũng là một trong các hoạt động chính của cơ quan thống kê quốc gia với chức năng đảm bảo thông tin cho các cơ quan nhà nước, các tổ chức và các doanh nghiệp cũng như toàn xã hội các thông tin bằng số về sự phát triển kinh tế và quá trình xã hội.', 'Đại Học Kinh Tế Quốc Dân', '2009', 4, 'kt8.jpg'),
(39, 'Quản trị tài chính doanh nghiệp', 'Nguyễn Hải Sản', 18, 'Đất nước ta đang trong quá trình xây dựng nền kinh tế thị trường định hướng XHCN., nhu cầu vốn cho nền kinh tế và cho từng doanh nghiệp đang là một vấn đề bức xúc. Hơn thế nữa trong nền kinh tế thị trường, sức cạnh tranh của nền kinh tế, cũng như của từng doanh nghiệp phụ thuộc phần lớn vào hiệu quả hoạt động kinh doanh.', 'Lao Động', '2013', 4, 'kt9.jpg'),
(40, 'Siêu kinh tế hài hước', 'Hải Sơn', 119, 'Tóm tắt cuốn sách "Siêu Kinh Tế Học Hài Hước":  - cuốn sách bán chạy nhất theo bình chọn của New York Times - với hơn 4 triệu bản được dịch ra 35 thứ tiếng, thực sự là cuộc cách mạng trong tư duy khiến bất cứ ai từng đọc qua cũng phải thay đổi cách nhìn nhận về thế giới xung quanh.', 'Hải Sơn', '2015', 4, 'kt10.jpg'),
(41, 'Tuyển chọn những câu chuyện hay nhất', 'Nhiều Tác Giả', 55, 'Cuộc sống của chúng ta ra sao, luôn ngập tràn sợ hãi và oán hờn hay chấp nhận và vui sống để vươn lên, tùy thuộc vào cách ta đối mặt với những khó khăn thử thách ta gặp phải trên con đường mình đi. Hạt giống tâm hồn - Tuyển chọn những câu chuyện hay nhất sẽ là người bạn đồng hành cùng độc giả vượt qua những khó khăn thử thách trong cuộc sống thường ngày như nỗi mất mát, nỗi đau tổn thương tinh thần, tình cảm, niềm tin, bệnh tật, những thăng trầm trên bước đường theo đuổi ước mơ của cuộc đời hay vươn lên cho cuộc sống tốt đẹp hơn.', 'Trẻ', '2009', 5, 'hgth1.jpg'),
(42, 'Điểm tựa niềm tin', 'Nhiều Tác Giả', 34, 'Trong cuộc sống có những lúc chúng ta phải đối đầu với những khó khăn, thử thách và vất vả tinh thần. Dù mỗi người có một cách ứng phó khác nhau nhưng chắc chắn có sự khác biệt lớn giữa một người có niềm tin và một người phó mặc đời mình cho số phận. Trong khó khăn nếu bạn không có niềm tin, đổ lỗi cho người khác, đổ lỗi cho hoàn cảnh hay tự cho mình là một người kém may mắn, thì chỉ càng làm cho mình đuối sức, bế tắc, vất vả hơn. Ngược lại, niềm tin vào bản thân và cuộc sống sẽ là sức mạnh to lớn giúp bạn vượt qua được những khó khăn một cách nhẹ nhàng hơn. ', 'Tổng Hợp TPHCM', '2014', 5, 'hgth2.jpg'),
(43, 'Sống cho điều ý nghĩa hơn', 'Nick Vijicvic', 159, '“Cuộc sống không giới hạn” – Từ lúc sinh ra cho đến trưởng thành, Nick đã vượt qua những khó khăn, thử thách để đến gần hơn với cuộc sống bình thường. Những bi quan chán chường như bóp nghẹt hơi thở đã dần mất đi khi Nick lấy lại niềm tin, lạc quan, hoài bão sống. Nick đã làm được và làm được nhiều hơn anh tưởng. Cuốn “Đừng bao giờ từ bỏ khát vọng” là những câu chuyện về nỗi tuyệt vọng mà Nick đã gặp thông qua những chuyến đi.', 'Tổng Hợp TPHCM\r\n', '2013', 5, 'hgth3.jpg'),
(44, 'Dành cho học sinh, sinh viên', 'Hải Sơn', 36, 'Hạt Giống Tâm Hồn Dành Cho Sinh Viên Học Sinh là tập sách đặc biệt dành cho các bạn lứa tuổi bắt đầu bước vào cuộc sống. Đó là lứa tuổi với bao hoài bão thật đẹp, đầy nhiệt huyết của tuổi trẻ với trước những điều mới mẻ của cuộc sống. Và đây cũng là giai đoạn rộng mở với rất nhiều ngã rẽ và khó khăn cẩn vượt qua để có tểh thực hiện được những ước mơ của mình.', 'Tổng Hợp TPHCM', '2010', 5, 'hgth4.jpg'),
(45, 'Cho một khởi đầu mới', 'Nhiều Tác Giả', 68, 'Sống – là một cuộc diễu hành. Đôi khi,chúng ta đi ngang qua cuộc đời và nhận ra rằng, mình vừa bỏ qua điều vẫn hằng tìm kiếm. Nhưng, một điều chắc chắn là còn rất nhiều điều kỳ diệu vẫn hiện diện ngay bên cạnh chúng ta, hằng ngày, hằng giờ. Đó chính là những niềm vui giản dị mà chúng ta mang đến cho nhau. Những ngạc nhiên lý thú, những sự kiện bất ngờ, những nhiệm mầu cuộc sống…', 'Tổng Hợp TPHCM', '2015', 5, 'hgth5.jpg'),
(46, 'Luôn là chính mình', 'Nhiều Tác Giả', 29, '"Luôn là chính mình" bao gồm những mẩu chuyện ý nghĩa, là niềm tin trong mỗi con người, đó như dòng nước mát tưới tắm cho nỗ lực nuôi giữ mầm hy vọng trong mỗi chúng ta. Hãy cùng gặp gỡ những con người đã sống cùng và khuất phục những tai chứng quái ác bằng ý chí và lòng yêu đời tha thiết! ', 'Tổng Hợp TPHCM', '2012', 5, 'hgth6.jpg'),
(47, 'Không gục ngã', 'Nhiều Tác Giả', 47, 'Tự truyện "Không gục ngã" của Nguyễn Bích Lan được ra đời với niềm hy vọng như chính cô chia sẻ: "Không gục ngã" là câu chuyện của tôi và tôi thật lòng mong khi bạn khép lại cuốn sách này, bạn cũng sẽ bắt đầu viết lên những câu chuyện không gục ngã trong hành trình sống có một không hai của mỗi người."', 'Tổng Hợp TPHCM', '2013', 5, 'hgth7.jpg'),
(48, 'Những câu chuyện cuộc sống', 'Nhiều Tác Giả', 39, 'Cuộc sống luôn công bằng, chẳng cho ai tất cả cũng chẳng lấy hết của ai thứ gì… Cuộc sống là vô vàn những điều biến động, đôi lúc gặp những trở ngại khiến ta buồn chán, tuyệt vọng, rơi vào trạng thái bế tắc, có lúc tưởng không còn tìm ra được cách giải quyết, muốn buông xuôi tất cả…', 'Tổng Hợp TPHCM', '2013', 5, 'hgth8.jpg'),
(51, '8 phút tự học tiếng Anh', 'Hải Sơn', 48, '8 phút mỗi ngày, nghĩa là trong một tháng bạn sẽ có tổng cộng 4 tiếng đồng hồ tập trung để học những mẫu câu đàm thoại. Sau 3 tháng bạn có đến 12 giờ thực hành cũng như tích góp cho mình lượng kiến thức vô cùng vững vàng, giúp bạn tự tin hơn trong việc đối thoại với người nước ngoài. ', 'Hải Sơn', '2010', 6, 'nn1.jpg'),
(52, 'Luyện thi Toeic cấp tốc', 'Mai Phương', 69, 'Phần thi Part 5 của bài thi TOEIC gồm có 40 câu hỏi. Mỗi câu trong phần này có 1 từ/cụm từ còn thiếu và cần được thêm vào. Thí sinh đọc 4 phương án trả lời cho mỗi câu và chọn phương án trả lời đúng nhất bằng cách bôi đen vào ô tròn tương ứng với câu trả lời A, B, C hoặc D trong tờ bài làm (answer sheet). ', 'Trẻ', '2014', 6, 'nn2.jpg'),
(53, 'IELTS PRACTICE EXAMS', 'Hải Sơn', 68, 'IELTS là viết tắt của International English Language Testing System. Nó là một bài kiểm tra trình độ tiếng Anh được thiết kế cho những sinh viên muốn du học tại môi trường Tiếng Anh hoặc tại các trường đại học, cao đẳng hoặc trung học. IELTS Practice Tests Plus 1 cung cấp các bài thực hành toàn diện cho từng kỹ năng giúp các bạn luyện tập.', 'Trẻ', '2010', 6, 'nn3.jpg'),
(54, 'Developing Skills for the Toeic Test', 'Hải Sơn', 58, 'Bài thực hành ngắn trong mỗi 14 đơn vị bài học theo chủ đề của cuốn sách được biên soạn theo cùng thể thức và cấu trúc của bài thi thật. Mỗi bài học tập trung vào những điểm ngữ pháp khác nhau với nhiều dạng bài tập khác nhau. \r\n', 'Trẻ', '2010', 6, 'nn4.jpg'),
(55, '600 Essential Words For The Toeic', 'Hải Sơn', 36, 'Cuốn sách giúp bạn nắm vững những nền tảng cơ bản để hiểu những ngữ cảnh đặc biệt thường gặp trong một bài thi TOEIC. Mỗi chương giới thiệu một ngữ cảnh chuyên môn cụ thể và những từ mới kèm theo. Những từ này không phải là từ chuyên môn, mà là những từ vựng thông dụng có thể dùng được trong rất nhiều ngữ cảnh khác nhau.', 'Trẻ', '2011', 6, 'nn5.jpg'),
(61, 'Giải chi tiết 99 đề thi thử đại học', 'Đặng Thành Nam', 69, 'Bắt đầu từ năm học 2013 – 2014 Bộ giáo dục và đào tạo đã thay đổi cấu trúc đề thi Tuyển sinh đại học Môn Toán bỏ đi phần chung và phần riêng. Đề thi gồm 9 câu sắp xếp theo trình tự từ dễ đến khó. Điều này gây bối rối cho không ít học sinh. Vì vậy để giúp các em làm quen với cấu trúc đề thi mới và rèn luyện kiến thức, phát triển kỹ năng làm bài chuẩn bị tốt nhất cho kỳ thi tuyển sinh Đại học năm học 2014 – 2015 . Tác giả mạnh dạn biên soạn và giới  thiệu đến bạn đọc Cuốn “Giải chi tiết 99 đề thi thử đại học - cao đẳng Môn Toán”', 'Trẻ', '2015', 7, 't1.jpg'),
(62, 'Tuyệt đỉnh luyện thi đại học', 'Nguyễn Hữu Bắc', 29, 'Đến thời điểm này chỉ còn hơn 1 tháng nữa, các bạn sĩ tử sẽ bước vào kì thi THPT Quốc gia quan trọng nhất của cuộc đời mình. Sau 1 thời gian dài ôn luyện, chắc hẳn các bạn đã tích lũy được cho mình một lượng kiến thức khá lớn rồi, bây giờ là lúc các bạn nên tổng hợp lại những kiến thức mình đã học được. ', 'Trẻ', '2014', 7, 't2.jpg'),
(63, 'Giới thiệu đề thi chuẩn', 'Hà Văn Chương - Phạm Hồng Danh', 55, 'Bộ sách không đảm bảo được các bạn khi thi đều đạt được điểm tuyệt đối vì thành công không chỉ dựa vào những cuốn sách hay mà còn dựa vào sự nỗ lực của bản thân người học nữa. Tuy nhiên 6 ưu điểm chỉ có ở bộ sách này rất đáng để bạn chọn là “chiến hữu” hỗ trợ đắc lực tăng tốc bứt phá trên con đường vượt vũ môn thành công.', 'Trẻ', '2013', 7, 't3.jpg'),
(64, 'Giới thiệu 132 đề thi', 'TS. Huỳnh Công Thái', 69, 'Bắt đầu từ năm học 2013 – 2014 Bộ giáo dục và đào tạo đã thay đổi cấu trúc đề thi Tuyển sinh đại học Môn Toán bỏ đi phần chung và phần riêng. Đề thi gồm 9 câu sắp xếp theo trình tự từ dễ đến khó. Điều này gây bối rối cho không ít học sinh. Vì vậy để giúp các em làm quen với cấu trúc đề thi mới và rèn luyện kiến thức, phát triển kỹ năng làm bài chuẩn bị tốt nhất cho kỳ thi tuyển sinh Đại học', 'Trẻ', '2014', 7, 't4.jpg'),
(65, 'Giới thiệu đề thi từ 2005 - 2013', 'Hà Văn Chương', 36, 'Sau mỗi bài tập luyện đề trong cuốn sách đều có những bình luận và nhận xét của nhiều giáo viên. Trên cơ sở phân tích chủ quan và khách quan của nhiều cô giáo đầu ngành sẽ giúp học sinh ghi nhớ và mở rộng được phương pháp tư duy.', 'Trẻ', '2013', 7, 't5.jpg'),
(71, 'Tìm lời giải nhanh môn Lý', 'ThS. Duơng Đức Tuấn', 36, 'Sách hướng dẫn ôn tập và phương pháp giải nhanh bài tập trắc nghiệm vật lý hướng đãn các phương pháp giải nhanh bài tập vật lý phục vụ ôn thi đại học (THPT quốc gia) sách còn có ví dụ minh họa có lời giải ngắn gọn dễ hiểu và có bài tập tự luyện có đáp án để các bạn luyện tập', 'Trẻ', '2011', 8, 'l1.jpg'),
(72, 'Những điều cần biết trong thi ĐH', 'Chu Văn Biên', 103, 'Nhằm giúp học sinh và phụ huynh "Những điều cần biết về tuyển sinh đại học, cao đẳng năm 2015 của Nhà xuất bản giáo dục Việt Nam chính thức phát hành ngày 6/4/2015. Tài liệu này được chia làm 2 cuốn trong đó tập hợp Những điều cần biết về tuyển sinh đại học cao đẳng 2015\r\n', 'Trẻ', '2014', 8, 'l2.jpg'),
(73, 'Bộ đề luyện thi thử ĐH', 'Hải sơn', 109, 'Nhằm đưa ra nguồn tài liệu cho các em học sinh cũng như các thầy cô giáo chúng tôi biên soạn ra cuốn sách Tài Liệu Ôn Thi THPT Quốc Gia Môn Vật Lí với những phương pháp chinh phục mới và dể hiểu. Cuốn sách hứa hẹn mang đến cho bạn đọc một trãi nghiệm thú vị và giúp các em học sinh đạt được thành tích cao trong kỳ thi sắp tới. ', 'Trẻ', '2013', 8, 'l3.jpg'),
(74, 'Luyện đề trước kỳ thi ĐH', 'Nguyễn Anh Vinh', 55, 'uốn sách Luyện giải đề trước kỳ thi Đại học tuyển chọn và giới thiệu Đề thi Vật lý được tác giả Chu Văn Biên và Nguyễn Anh Vinh biên soạn theo nội dung và cấu trúc đề thi Đại học - Cao đẳng của BGD & ĐT. Đây là tài liệu được rất nhiều em học sinh lớp 12 quan tâm và tìm đọc.', 'Trẻ', '2013', 8, 'l4.jpg'),
(81, 'Bài tập rèn luyện hóa hữ cơ', 'Nguyễn Minh Tuấn', 56, 'Kỳ thi tốt nghiệp Trung học phố thông và tuyển sinh Đại Học hiện nay đòi hỏi các em học sinh có khá năng tống hợp kiến thức và biết vận dụng kiến thức theo nhiều hướng khác nhau, và đặc biệt là trong phương pháp giải toán Hóa học, phải biết vận dụng linh hoạt các phương pháp giái toán để tìm ra kết quả nhanh nhất.\r\nĐể chia sẻ với các em học sinh trong quá trình luyện thi, chuấn bị tốt cho các kỳ thi quốc gia do bộ GD&ĐT tố chức sắp tới, Chúng tôi trân trọng giới thiệu tới bạn đọc bộ sách.', 'Trẻ', '2015', 9, 'h1.jpg'),
(82, 'Kiến thức chuển & PP giải bài tập Hóa', 'Hoàng Nguyên Ngân', 65, 'Với tất cả tâm huyết tác giả  biên soạn cuốn sách này với mong muốn giúp các em học sinh nắm chắc kiến thức về lý thuyết Hóa Học THPT để từ đó các em có thể yên tâm và tự tin khi tham dự kỳ thi THPT nói riêng và các kỳ thi về Hóa học nói chung. Với ba bộ sách “Luyện giải đề thi và Khám phá tư duy giải nhanh thần tốc Hóa học” tác giả đã xuất bả', 'Trẻ', '2014', 9, 'h2.jpg'),
(83, 'Bộ đề thi Hóa Học', 'Hải Sơn', 11, 'Với tất cả tâm huyết tác giả  biên soạn cuốn sách này với mong muốn giúp các em học sinh nắm chắc kiến thức về lý thuyết Hóa Học THPT để từ đó các em có thể yên tâm và tự tin khi tham dự kỳ thi THPT nói riêng và các kỳ thi về Hóa học nói chung. Với ba bộ sách “Luyện giải đề thi và Khám phá tư duy giải nhanh thần tốc Hóa học” tác giả đã xuất bản và bây giờ là cuốn “Vết dầu loang chinh phục lý thuyết Hóa học THPT ” này, nếu các bạn chịu khó luyện tập thì việc đạt điểm cao cho môn Hóa Học sẽ trong tầm tay.', 'Trẻ', '2015', 9, 'h3.jpg'),
(84, 'Tài liệu ôn thi ĐH', 'Phạm Sỹ Lưu', 58, 'Từ khi Bộ Giáo dục thay đổi hình thức thi môn Hóa học từ tự luận sang trắc nghiệm và đặc biệt là những năm gần đây, những câu hỏi về lý thuyết nhiều khi trở thành lỗi kinh hoàng với nhiều bạn học sinh. Có rất nhiều lý do, mà một trong số đó là kiến thức lý thuyết về Hóa học THPT áp dụng cho kỳ thi THPT Quốc gia ngày càng rộng và sâu.', 'Trẻ', '2015', 9, 'h4.jpg'),
(85, 'Kỹ thuật vết dầu loang', 'Nguyễn Anh Phong', 69, 'Cuốn sách được biên soạn theo cấu trúc mới của Bộ GD và ĐT, dành cho học sinh lớp 10,11,12.\r\nKỹ thuật vết dầu loang nói một cách đơn giản là kĩ thuật lan toả. Lý thuyết hoá học THPT là rất nhiều và rất rộng, phần này có liên quan rất chặt chẽ tới phần khác nên áp dụng kĩ thuật này sẽ rất hiệu quả.', 'Trẻ', '2013', 9, 'h5.jpg'),
(88, 'Người bạn thân bí mật', 'First News', 12, 'Truyện Người bạn thân bí mật kể về trò chơi tặng quà của các em. Mỗi người tự thiết kế ra một món quà và bí mật tặng cho bạn của mình, nhằm thắt chặt thêm tình bè bạn và tạo sự bất ngờ thú vị cho nhau. Ai cũng nhận được món quà thật dễ thương và ngộ nghĩnh, riêng cô bé Chreyl thì nhận được một cục xà phòng gói trong một tờ báo cũ. Cô bé rất thất vọng và tỏ vẻ bực mình. Sau đó, biết được người bạn tặng quà cho mình có gia cảnh rất nghèo, Cheryl vô cùng ân hận, ôm bạn vào lòng với lời xin lỗi. Thế là hai cô bé trở thành bạn thân của nhau, giúp nhau học tập.', 'Phụ Nữ', '2013', 5, 'hgth9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE IF NOT EXISTS `thanhvien` (
  `id` int(11) unsigned NOT NULL,
  `UserName` text COLLATE utf8_unicode_ci NOT NULL,
  `PassWord` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `SoDT` int(15) NOT NULL,
  `Name` text COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `Admin` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`id`, `UserName`, `PassWord`, `Email`, `DiaChi`, `SoDT`, `Name`, `NgaySinh`, `Admin`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', '13520708@gm.uit.edu.vn', '271B/1 khu phố 1, p.Tân Biên, Biên Hòa, Đồng Nai', 949512609, 'Phạm Hoàng Hải Sơn', '2015-12-16', 1),
(2, 'han', '202cb962ac59075b964b07152d234b70', '13520238@gm.uit.edu.vn', 'không biết', 123456789, 'Đoàn Thạch Hãn', '2015-12-24', 0),
(5, 'son', '202cb962ac59075b964b07152d234b70', 'son0949512609@gmail.com', '271B/1 Khu phố 1, Biên Hòa, Đồng Nai', 949512609, 'Phạm Hoàng Hải Sơn', '1995-02-04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE IF NOT EXISTS `theloai` (
  `MaTheLoai` int(11) NOT NULL,
  `TenTheLoai` varchar(100) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`MaTheLoai`, `TenTheLoai`) VALUES
(1, 'Công Nghệ Thông Tin'),
(2, 'Văn Học'),
(3, 'Kỹ năng sống'),
(4, 'Kinh tế'),
(5, 'Hạt Giống Tâm Hồn'),
(6, 'Ngoại Ngữ'),
(7, 'Toán LTDH'),
(8, 'Lý LTDH'),
(9, 'Hóa Luyện Thi Đại Học'),
(10, 'Văn Học Nước Ngoài');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id_HoaDon`), ADD KEY `FK1` (`id_KhachHang`);

--
-- Indexes for table `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`id`), ADD KEY `FK` (`MaTheLoai`);

--
-- Indexes for table `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`MaTheLoai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id_HoaDon` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `sach`
--
ALTER TABLE `sach`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `theloai`
--
ALTER TABLE `theloai`
  MODIFY `MaTheLoai` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
ADD CONSTRAINT `FK1` FOREIGN KEY (`id_KhachHang`) REFERENCES `thanhvien` (`id`);

--
-- Constraints for table `sach`
--
ALTER TABLE `sach`
ADD CONSTRAINT `FK` FOREIGN KEY (`MaTheLoai`) REFERENCES `theloai` (`MaTheLoai`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
