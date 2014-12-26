
Use WebVoucher
Go

/*==============================================================*/
/* Data Table: PHANQUYEN                                        */
/*==============================================================*/
select * from PHANQUYEN
insert into PHANQUYEN values('Q001',N'Admin')
insert into PHANQUYEN values('Q002',N'Nhân Viên Bán Hàng')
insert into PHANQUYEN values('Q003',N'Member')

/*==============================================================*/
/* Data Table: TAIKHOAN                                         */
/*==============================================================*/
select * from TAIKHOAN
insert into TAIKHOAN values('Admin01','Q001','A1',N'Đang hoạt động','20:10:01 2014/12/20')
insert into TAIKHOAN values('Admin02','Q001','A2',N'Đang hoạt động','13:43:07 2014/12/28')
insert into TAIKHOAN values('NVBH01','Q002','N1',N'Đang hoạt động','11:11:35 2014/12/24')
insert into TAIKHOAN values('NVBH02','Q002','N2',N'Đang hoạt động','17:34:22 2014/12/20')
insert into TAIKHOAN values('NVBH03','Q002','N3',N'Đang hoạt động','22:45:23 2014/12/05')
insert into TAIKHOAN values('NVBH04','Q002','N4',N'Đang hoạt động','16:15:37 2014/12/10')
insert into TAIKHOAN values('MyThinh','Q003','thinh123',N'Đang hoạt động','20:10:01 2014/12/20')
insert into TAIKHOAN values('BichNgoc','Q003','ngoc123',N'Đang hoạt động','10:11:05 2014/12/30')
insert into TAIKHOAN values('DucHuy','Q003','huy123',N'Đang hoạt động', '13:43:07 2014/12/28')
insert into TAIKHOAN values('PhuThuan','Q003','thuan123',N'Đang hoạt động','08:19:45 2014/12/05')
insert into TAIKHOAN values('DuongHai','Q003','hai123',N'Đang hoạt động','11:11:35 2014/12/24')
insert into TAIKHOAN values('TrangNhung','Q003','hai123',N'Đang hoạt động','11:11:35 2013/09/24')
insert into TAIKHOAN values('CongDanh','Q003','danh123',N'Đang hoạt động','19:30:01 2013/12/04')
insert into TAIKHOAN values('MyThanh','Q003','thanh123',N'Đang hoạt động','15:50:27 2014/12/14')
insert into TAIKHOAN values('HuongSen','Q003','sen123',N'Đang hoạt động','17:34:22 2014/12/20')
insert into TAIKHOAN values('QuocHoan','Q003','hoan123',N'Đang hoạt động','22:45:23 2014/12/05')
insert into TAIKHOAN values('MinhNhan','Q003','nhan123',N'Đang hoạt động','14:15:37 2014/12/08')
insert into TAIKHOAN values('NgocHoang','Q003','hoang123',N'Đang hoạt động','15:15:37 2014/12/09')
insert into TAIKHOAN values('HongNhung','Q003','nhung123',N'Đang hoạt động','16:15:37 2014/12/10')
insert into TAIKHOAN values('QuynhNga','Q003','nga123',N'Đang hoạt động','17:15:37 2014/12/11')
insert into TAIKHOAN values('VietHung','Q003','hung123',N'Đang hoạt động','18:15:37 2014/12/12')

/*==============================================================*/
/* Data Table: NHANVIEN                                         */
/*==============================================================*/
select * from NHANVIEN
insert into NHANVIEN values('NV001','Admin01',N'Lê Huỳnh Trung Hậu',N'111 Quang Trung, Q.Gò Vấp, TP.HCM','0914507732','trunghaulh@gmail.com','1991/06/30','098462198','2014/07/19',N'Nam')
insert into NHANVIEN values('NV002','Admin02',N'Trần Anh Tuấn',N'45 Kha Vạn Cân, Q.Thủ Đức, TP.HCM','0914489677','tuanta@gmail.com','1989/10/14','084521073','2014/06/10',N'Nam')
insert into NHANVIEN values('NV003','NVBH01',N'Nguyễn Thu Hương',N'213 Điện Biên Phủ, Q.Bình Thạnh, TP.HCM','01693312118','thuhuong90@gmail.com','1990/10/28','191832548','2014/06/24',N'Nữ')
insert into NHANVIEN values('NV004','NVBH02',N'Lê Hữu Phát',N'89 Lê Quang Định, Q.Gò Vấp, TP.HCM','01653669033','huuphat89@gmail.com','1989/12/11','191841508','2014/07/20',N'Nam')
insert into NHANVIEN values('NV005','NVBH03',N'Nguyễn Ngọc Hoàng',N'14 Nơ Trang Long, Q.Bình Thạnh, TP.HCM','0163692340','ngochoangnguyen@gmail.com','1988/04/14','191790441','2014/07/10',N'Nam')
insert into NHANVIEN values('NV006','NVBH04',N'Phạm Huyền Trang',N'178 Hoàng Văn Thụ, Q.Tân Bình, TP.HCM','0969543721','trangpham@gmail.com','1990/07/02','191809816','2014/07/05',N'Nữ')

/*==============================================================*/
/* Data Table: MEMBER                                           */
/*==============================================================*/
select * from MEMBER
insert into MEMBER values('MB001','MyThinh',N'Lê Thị Mỹ Thịnh',N'123 Quang Trung, Q.Gò Vấp, TP.HCM','01693312118','mythinh94@gmail.com','1994/10/30','191833547','2014/07/10',N'Nữ')
insert into MEMBER values('MB002','BichNgoc',N'Trần Thị Bích Ngọc',N'56 Võ Văn Ngân, Q.Thủ Đức, TP.HCM','01633467856','bichngoctran@gmail.com','1995/11/11','081132243','2014/08/13',N'Nữ')
insert into MEMBER values('MB003','DucHuy',N'Vũ Đức Huy',N'188 Trần Hưng Đạo, TP.Vũng Tàu','0989679820','huyvu@gmail.com','1992/09/14','191069148','2014/05/22',N'Nam')
insert into MEMBER values('MB004','PhuThuan',N'Nguyễn Phú Thuận',N'75 Chi Lăng, TP.Huế','01203813213','thuanpn@gmail.com','1991/02/11','080133782','2014/08/02',N'Nam')
insert into MEMBER values('MB005','DuongHai',N'Đinh Dương Hải',N'88 Lê Văn Việt, Q.Thủ Đức, TP.HCM','01688648620','duonghai94@gmail.com','1994/10/26','191844091','2014/05/20',N'Nam')
insert into MEMBER values('MB006','CongDanh',N'Nguyễn Công Danh',N'47 Hai Bà Trưng, Q.1, TP.HCM','01655712985','danhnguyen@gmail.com','1993/02/25','080144890','2013/02/11',N'Nam')
insert into MEMBER values('MB007','MyThanh',N'Dương Thị Mỹ Thanh',N'145 Hùng Vương, TP.Đà Nắng','01269866638','mythanh@gmail.com','1993/08/11','191830047','2014/01/11',N'Nữ')
insert into MEMBER values('MB008','HuongSen',N'Phạm Thị Hương Sen',N'13 Cây Trâm, Q.Gò Vấp, TP.HCM','0982567431','senpham@gmail.com','1994/12/05','191821947','2014/02/22',N'Nữ')
insert into MEMBER values('MB009','QuocHoan',N'Trần Quốc Hoàn',N'98 Lý Thường Kiệt, Q.Tân Bình, TP.HCM','0905893398','hoantq@gmail.com','1992/01/25','0801023373','2014/03/12',N'Nam')
insert into MEMBER values('MB010','MinhNhan',N'Lê Minh Nhân',N'67 Sư Vạn Hạnh, Q.10, TP.HCM','01638224243','minhnhan92@gmail.com','1992/05/29','080140006','2014/04/14',N'Nam')
insert into MEMBER values('MB011','NgocHoang',N'Trần Ngọc Hoàng',N'167 Bùi Văn Hòa, Q.11, TP.HCM','01638996234','ngochoang@gmail.com','1990/09/21','080140119','2014/04/14',N'Nam')
insert into MEMBER values('MB012','HongNhung',N'Phạm Hồng Nhung',N'52 Phạm Văn Thuận, Q.6, TP.HCM','01695524468','nhungpham@gmail.com','1993/08/24','080140227','2014/05/14',N'Nữ')
insert into MEMBER values('MB013','QuynhNga',N'Nguyễn Quỳnh Nga',N'119 Đồng Khởi, Q.5, TP.HCM','0915568803','nganguyen@gmail.com','1994/07/26','080140345','2014/04/11',N'Nữ')
insert into MEMBER values('MB014','VietHung',N'Bùi Viết Hưng',N'225 Nguyễn Khuyến, Q.4, TP.HCM','0914460078','hungbui@gmail.com','1995/06/20','080140886','2014/04/12',N'Nam')
insert into MEMBER values('MB015','TrangNhung',N'Nguyễn Trang Nhung',N'119 Pasteur, Q.1, TP.HCM','0915577833','nhungnguyen@gmail.com','1994/07/09','080141193','2013/04/29',N'Nữ')

/*==============================================================*/
/* Data Table: BINHLUAN                                         */
/*==============================================================*/
select * from BINHLUAN
insert into BINHLUAN values('BL001','MyThinh','AU002',N'Cái này còn hàng không ad ơi?','11:15:01 2014/12/10')
insert into BINHLUAN values('BL002','BichNgoc','AU001',N'Cho mình hỏi hệ thống Jollibee trên Thành phố HCM ở đâu vậy?','10:15:01 2014/10/10')
insert into BINHLUAN values('BL003','DucHuy','AU003',N'Mình đặt voucher này thì khi nào bên bạn mới giao vậy?','20:05:01 2014/12/10')
insert into BINHLUAN values('BL004','PhuThuan','DL002',N'Mình muốn đi ngày thứ 7 ngày 1/01/2015, xem dùm mình coi còn phòng cho 3 người lớn không nhé','08:45:11 2014/10/20')
insert into BINHLUAN values('BL005','MyThanh','DL004',N'đặt voucher rồi mà sao chưa thấy gửi vậy ad?','17:11:41 2014/04/15')
insert into BINHLUAN values('BL006','HuongSen','DL005',N'cho mình hỏi giao voucher đến nhà mình thấy không tiện, cho mình hỏi mình đến tận nơi để lấy voucher được không?','19:03:01 2014/07/04')
insert into BINHLUAN values('BL007','QuocHoan','SP001',N'Mình muốn hủy đơn hàng thì phải làm thế nào?','22:15:01 2014/05/17')
insert into BINHLUAN values('BL008','MinhNhan','SP002',N'Voucher này khi nào hết hạn vậy ad ơi?','10:33:00 2014/05/20')
insert into BINHLUAN values('BL009','MyThinh','SP003',N'hạn chót sử dụng voucher là ngày nào vậy ad?','12:08:39 2014/11/26')
insert into BINHLUAN values('BL010','BichNgoc','SP004',N'ad ơi cho em hỏi là có giới hạn ngày sử dụng trong mấy ngày kể từ khi mình mua không?','10:28:01 2014/10/03')
insert into BINHLUAN values('BL011','DucHuy','AU004',N'Có ai mua voucher và dùng thử ở đây chưa ?? cho ý kiến xem nào','22:05:31 2014/12/01')
insert into BINHLUAN values('BL012','PhuThuan','AU005',N'trẻ em thì đăng ký mua voucher như thế nào ạ?','21:45:11 2014/10/11')
insert into BINHLUAN values('BL013','MyThanh','GT001',N'bạn ơi cho mình hỏi mình mua hai voucher để dùng cho cả uốn lẫn nhuộm được không vậy.?','17:41:11 2014/04/04')
insert into BINHLUAN values('BL014','HuongSen','GT002',N'Gói voucher này áp dụng cho mấy người lớn vậy?','18:03:01 2014/07/19')
insert into BINHLUAN values('BL015','QuocHoan','GT003',N'Voucher này sử dụng được ở những chi nhánh nào vậy?','20:15:01 2014/05/05')
insert into BINHLUAN values('BL016','MinhNhan','GT004',N'Voucher này áp dụng đến khi nào vậy ad ơi?','13:33:00 2014/05/09')

/*==============================================================*/
/* Data Table: DANHMUC                                          */
/*==============================================================*/
select * from DANHMUC
insert into DANHMUC values('AU',N'Ăn uống')
insert into DANHMUC values('GT',N'Giải trí')
insert into DANHMUC values('DL',N'Du lich')
insert into DANHMUC values('SP',N'Spa và làm đẹp')

/*==============================================================*/
/* Data Table: VOUCHER                                          */
/*==============================================================*/
select * from VOUCHER

-- Voucher Ăn Uống --
insert into VOUCHER(MAVOUCHER,MADM,TENVOUCHER,THONGTIN,SOLUONGCON,GIABAN,THOIHANVOUCHER,SOLUONGDABAN,HINHANHVOUCHER,DIEUKIEN,DIEMNOIBAT) values
('AU001','AU',N'Jollibee-Combo Giá Sốc Đón Noel',
N'Cơ Hội Thưởng Thức Combo Ăn Uống Mê Ly Hot Nhất Năm 2014 Với Giá Hấp Dẫn Gồm 6 Món Dành Cho 2 Người Trên Toàn Hệ Thống Jollibee. Voucher 166.000 VNĐ, Còn 99.000 VNĐ, Giảm 40%',
'655','99000','05/01/2015 - 05/02/2015','45','Resources\AU001',
N'- Hạn sử dụng voucher: từ ngày 05/12/2014 đến hết ngày 05/02/2015.
- Địa điểm sử dụng voucher: Hơn 60 chi nhánh Jollibee trên toàn quốc.
- Sử dụng 01 voucher/ 01 combo (không bù thêm tiền). Một khách hàng được mua nhiều phiếu.
- Áp dụng cho dùng tại chỗ và cả mua mang về.',
N'- Thực đơn phong phú như: Gà rán giòn tan (Chickenjoy), Mì ý sốt bò bằm, Cánh gà tẩm nước sốt cay, cơm gà giòn không xương, khoai tây lắc chiên giòn, kem sữa tươi với nguyên liệu 100% nhập từ Úc, đặc biệt nổi tiếng với món gà rán giòn tan ngon tuyệt.
- Sử dụng công thức truyền thống để chế biến món ăn, ít béo, tạo cảm giác ngon miệng, hợp khẩu vị người Việt.
- Chương trình đặc biệt của Jollibee hot nhất năm 2014 áp dụng cho combo 06 món thơm ngon với giá hấp dẫn dành cho 2 người trên toàn hệ thống Jollibee.')
insert into VOUCHER values
('AU002','AU',N'01 Trong 05 Set Món Nhật Tự Chọn Tại Koi Sushi',
N'Đến Koi Sushi – Thưởng Thức Vị Ngon Tinh Tế Từ 01 Trong 05 Set Món Nhật Tự Chọn, Đặc Sắc Và Hấp Dẫn Vô Cùng. Voucher 178.000 VNĐ, Còn 89.000 VNĐ, Giảm 50%',
'594','89000','18/01/2015 - 18/02/2015','6','Resources\AU002',
N'- Địa điểm sử dụng voucher: Koi Sushi - 515 Sư Vạn Hạnh, P.12, Q. 10, TP.HCM
- Hạn sử dụng voucher: từ ngày 18/01/2014 đến hết ngày 18/02/2015
- Thời gian phục vụ: 10h – 22h, tất cả các ngày trong tuần trừ các ngày lễ 24/ 12 & 01/ 01/ 2015.
- Sử dụng 01 Voucher/ 1 set (không bù thêm tiền). Khách hàng được mua nhiều phiếu.
- Áp dụng cho dùng tại chỗ & cả mua mang về, vào tất cả các ngày trong tuần.',
N'- Koi Sushi là một trong những địa chỉ ẩm thực lý tưởng, mà những ai đã trót mê món Nhật thì cần nên khám phá ngay.
- Nhà hàng sở hữu một không gian khá ấm cúng, chỗ ngồi thoải mái, cách bày trí mang đậm phong thái và cốt cách văn hóa Nhật Bản.
- Được ưa chuộng nhất tại đây là các món sushi mang hương vị truyền thống, cùng nhiều món ăn nổi tiếng khác của xứ sở hoa anh đào: sashimi, tempura, cơm bento…
- Sử dụng nguồn nguyên liệu nhập khẩu trực tiếp từ Nhật. Đặc biệt, bếp trưởng tại Koi đã được đào tạo chuyên nghiệp tại Nhật Bản, am hiểu món ăn bản xứ, với hơn 7 năm kinh nghiệm phục vụ tại các nhà hàng lớn.')
insert into VOUCHER values
('AU003','AU',N'Hệ Thống Bánh Chewy Junior - Bánh su Singapore Nổi Tiếng',
N'Cơ Hội Thưởng Thức Vị Ngọt Ngào, Đầy “Quyến Rũ” Từ Nhiều Món Bánh Đa Dạng Tại Hệ Thống Các Chi Nhánh Chewy Junior. Voucher 100.000 VNĐ, Còn 69.000 VNĐ, Giảm 31%',
'669','69000','17/01/2015 - 17/02/2015','31','Resources\AU003',
N'- Áp dụng cho toàn Menu bánh của hệ thống bánh Chewy Junior (trừ bánh sinh nhật và sự kiện).
- Hạn sử dụng voucher: từ ngày 17/01/2014 đến hết ngày 17/02/2015.
- Giờ áp dụng: 9h đến 21h các ngày trong tuần, trừ các ngày (20/11, 24 – 25/12, 31/12 và 01/01)
- Không giới hạn số lượng voucher/1 hoá đơn.
- Áp dụng tại chỗ và mua mang về.',
N'- Chewy Junior là thương hiệu bánh ngọt ra đời tại Singapore, bánh được kết hợp giữa 2 loại bánh từ Nhật Bản và Mexico.
- Một trong các thương hiệu bánh ngọt được yêu thích nhất Đông Nam Á.
- Bánh Chewy Junior là dòng sản phẩm chuyên về nhân kem tươi, bên ngoài bánh được bao phủ bằng các loại mứt, hạt trang trí bắt mắt.
- 100% bánh được nướng và bán trong ngày.
- Thực đơn các loại bánh phong phú, gần 40 loại bánh với hương vị thơm ngon khác nhau cho bạn thoải mái chọn lựa.')
insert into VOUCHER values
('AU004','AU',N'Voucher Giảm Giá Toàn Bộ Menu Pizza Tại Pizza Hot',
N'Thưởng Thức Bánh Pizza Hảo Hạng Tại Pizza Hot – Chuỗi Nhà Hàng Chuyên Về Thức Ăn Nhanh Đầu Tiên Tại TP.HCM – Áp Dụng Toàn Menu. Voucher 100.000 VNĐ, Còn 50.000 VNĐ, Giảm 50%',
'478','50000','16/01/2015 - 16/02/2015','22','Resources\AU004',
N'- Địa điểm áp dụng voucher: Nhà Hàng Pizza Hot, 85A Đường 3 Tháng 2, Phường 11, Quận 10                                                                  
- Áp dụng cho tất cả các lại bánh Pizza hảo hạng tại Pizza Hot (Không áp dụng pizza hải sản).
- Thời gian áp dụng: từ ngày 16/01/2014 đến hết ngày 16/02/201 (nhà hàng nghỉ trưa từ 13h - 15h, Không áp dụng Lễ).
- Không giới hạn số voucher/ Hoá đơn.
- Một voucher áp dụng cho tối đa 02 ghế ngồi.',
N'- Pizza Hot là chuỗi nhà hàng đầu tiên phục vụ thức ăn nhanh kiểu châu Âu tại TP. HCM.
- Món ăn đa dạng, phong phú, được chế biến từ các loại nguyên liệu tươi ngon, đảm bảo giữ được hương vị đặc trưng của các món ăn.
- Voucher áp dụng cho tất cả các lại bánh Pizza hảo hạng tại Pizza Hot (Không áp dụng pizza hải sản).
- Nhà hàng có phong cách phục vụ chu đáo, lịch sự, tận tình.')
insert into VOUCHER values
('AU005','AU',N'Combo 6 Bánh Dorayaki Matcha Trà Xanh Nhân Kem Đậu Đỏ',
N'Chu Du Đến Thế Giới Thần Tiên Của Chú Mèo Ú Doremon Với Combo 6 Bánh Dorayaki Matcha Trà Xanh Nhân Kem Đậu Đỏ Tại Thế Giới Ăn Vặt Furin Việt Nam. Voucher 120.000 VNĐ, Còn 59.000 VNĐ, Giảm 51%',
'322','59000','09/01/2015 - 09/02/2015','78','Resources\AU005',
N'- Địa điểm sử dụng voucher: Thế Giới Ăn Vặt Furin Việt Nam - 43 Huỳnh Khương Ninh, P.Đa Kao, Q.1.
- Áp dụng cho Combo 6 bánh Dorayaki Matcha trà xanh nhân kem đậu đỏ (5cm/ bánh).
- Hạn sử dụng voucher: từ ngày 09/01/2014 đến hết ngày 09/02/201. Áp dụng cả ngày lễ.
- Sử dụng 01 Voucher/ combo 6 bánh (không bù tiền).',
N'- Thế Giới Ăn Vặt Furin Việt Nam là điểm đến lý tưởng dành cho các tín đồ ăn vặt.
- Quán tọa lạc tại quận 1, thuận tiện đi lại.
- Thực đơn ăn vặt phong phú: siro đá bào, bánh ngọt, bánh tráng trộn, các món ăn nhẹ, trái cây, cafe, nước thảo mộc...
- Tên món ăn dễ thương: Vé đi tuổi thơ, Ping Pong vui nhộn, Phương Tây mỹ miều, Mèo máy đáng yêu, Tương phùng dưới mưa, Tứ phương hội ngộ, Xoài thong thả, Cóc thong dong…
- Không gian xinh xắn, được thiết kế và bày trí trẻ trung, sinh động, thích hợp để tổ chức liên hoan, sinh nhật, gặp gỡ bạn bè, hẹn hò…')

-- Voucher Du Lịch --
insert into VOUCHER values
('DL001','DL',N'Tour Hà Nội – Sapa – Hạ Long – Tuần Châu 4N4Đ Gồm Vé Máy Bay',
N'Voucher áp dụng cho Tour du lịch Hà Nội – Sapa – Hạ Long – Tuần Châu (gồm vé máy bay) 04 ngày 04 đêm dành cho 01 khách. Voucher 10.910.000 VNĐ, Còn 6.000.000 VNĐ, Giảm 45%',
'522','6000000','09/12/2014 - 09/04/2015','78','Resources\DL001',
N'- Voucher áp dụng cho Tour du lịch Hà Nội – Sapa – Hạ Long – Tuần Châu (gồm vé máy bay) 04 ngày 04 đêm dành cho 01 khách.
- Hạn sử dụng voucher: từ ngày 09/12/2014 đến hết ngày 09/04/2015
-  Địa điểm sử dụng voucher: Công ty Du lịch – Đại lý VMB Chân Trời Mới (39 Nguyễn Hữu Cảnh, Phường 22, Quận Bình Thạnh, TP.HCM)
- Khách hàng vui lòng liên hệ booking theo điện thoại: 08.73003799',
N'-  Tour du lịch Hà Nội – Sapa – Hạ Long – Tuần Châu (Gồm vé máy bay) 4 ngày 4 đêm dành cho 1 khách mang đến cho bạn cơ hội khám phá “sắc hoa phương Bắc” với những điểm đến có bề dày lịch sử cũng như những nét đẹp trường tồn theo năm tháng.
- Lịch trình tour gồm vé máy bay khứ hồi, đảm bảo: Xe du lịch đời mới có máy lạnh đưa đón theo chương trình tour, Khách sạn: 02 – 03 sao (Tiêu chuẩn 02 – 03 khách/phòng), Ăn uống theo chương trình.
- Vé Tham quan: Cát Cát, Văn Miếu Quốc Tử Giám, Tàu Hạ Long, Vé Vịnh Hạ Long,Vòng hoa viếng lăng Bác…')
insert into VOUCHER values
('DL002','DL',N'Tour Mai Châu - Bản Lác 2 ngày',
N'Voucher áp dụng cho tour Mai Châu – Bản Lác 2 ngày 1 đêm cho 1 người. Voucher 1.250.000 VNĐ, Còn 600.000 VNĐ, Giảm 52%',
'345','600000 ','31/12/2014 - 31/04/2015','54','Resources\DL002',
N'- Một khách hàng được mua nhiều phiếu.
- Sử dụng nhiều phiếu / 01 hóa đơn. Không giới hạn số phiếu sử dụng.
- Hạn sử dụng voucher: từ ngày 31/12/2014 đến hết ngày 31/04/2015
- Phiếu không có giá trị quy đổi thành tiền mặt.
- Địa điểm sử dụng Voucher:  93, Hồng Hà, Ba Đình, Hà Nội - hotline: 0989 800 633
- Liên hệ đặt tour: ĐT: 04.36291319. Giờ làm việc: từ 8h30 đến 17h00 thứ 2 đến thứ 6; 8h30 đến 12h00 thứ 7 hàng tuần',
N'- Áp dụng cho tour Mai Châu – Bản Lác 2 ngày 1 đêm cho 1 người.
- Chương trình: đi Mai Châu, ghé ăn sáng tại Xuân mai (tự túc), thăm quan Bản Lác, ăn trưa đặc sản miền núi, chiều khám phá thung lũng Mai Châu bằng xe đạp. Hôm sau tham quan bản Poom Cọng và Bản Van, chợ Mai Châu, Tự do chinh phục Hang Chiều với 1000 bậc đá
- Tận hưởng không khí mát lành miền sơn cước.
- Khám phá, tìm hiểu nét sinh hoạt văn hoá đặc sắc của đồng bào dân tộc Thái, thăm Bản Lác')
insert into VOUCHER values
('DL003','DL',N'Tour Nam Cát Tiên – Xem Thú Đêm – Xuyên Rừng Và Thác 2N1Đ',
N'Voucher áp dụng cho tour Mai Châu – Bản Lác 2 ngày 1 đêm cho 1 người. Voucher 1.980.000 VNĐ, Còn 900.000 VNĐ, Giảm 57%',
'445','900000 ','07/01/2015 - 07/04/2015','54','Resources\DL003',
N'- Voucher bao gồm: Xe đời mới máy lạnh theo tiêu chuẩn du lịch. Khách sạn tiêu chuẩn tại KDL Nam Cát Tiên. Ăn uống tại rừng Nam Cát Tiên với các món đặc sản địa phương. Hướng dẫn viên phục vụ cho đoàn suốt tuyến.
- Hạn sử dụng voucher: từ ngày 07/01/2015 đến hết ngày 07/04/2015
- Địa điểm sử dụng voucher: Công ty TNHH Dịch vụ Du lịch Đường Sắt Mới - 1172D Đường 3/2, Phường 12, Quận 11, TP Hồ Chí Minh.
- Liên hệ bộ phận tư vấn và đặt tour: 08.73003799',
N'- Tour du lịch Nam Cát Tiên – Xem thú đêm – Xuyên rừng và thác sẽ là một trải nghiệm thú vị dành cho những ai thích phiêu lưu, khám phá.
- Nam Cát Tiên còn giữ được nguyên vẹn tính tự nhiên với hệ sinh thái đa dạng, cảnh quan hùng vĩ, có nhiều dấu tích văn hóa cổ xưa.
- Lịch trình hấp dẫn: xem thú ban đêm bằng xe đặc chủng, khám phá hệ động vật rừng về đêm; băng rừng khám phá hệ sinh thái với cảnh quan đa dạng, không khí mát mẻ cùng âm thanh của rừng xanh.')
insert into VOUCHER values
('DL004','DL',N'Tour Khám Phá Mộc Châu 2N1Đ',
N'Voucher áp dụng cho tour khám phá Mộc Châu 2N1Đ cho 1 người. Voucher 1.220.000 VNĐ, Còn 975.000 VNĐ, Giảm 39%',
'326','975000 ','28/12/2014 - 28/03/2015','74','Resources\DL004',
N'- Khách hàng liên hệ đặt tour trước 7 ngày
- Thay đổi lịch chởi hành: vui lòng báo trước 5 ngày
- Hạn sử dụng voucher: từ ngày 28/12/2014 đến hết ngày 28/03/2015
- Sử dụng nhiều phiếu / 01 hóa đơn. Không giới hạn số phiếu sử dụng.
- Phiếu không có giá trị quy đổi thành tiền mặt.
- Địa điểm sử dụng Voucher:  93, Hồng Hà, Ba Đình, Hà Nội - hotline: 0989 800 633',
N'- Chương trình: đến Mộc Châu: Thác Dải Yếm, cánh đồng hoa cải trắng, Rừng Thông Bản Áng, thăm quan trại Bò Sữa, tham quan Đồi Chè
- Tour khởi hành thứ 7 hàng tuần
- Thưởng thức các món ăn đặc sản tại nhà sàn truyền thống, các món ăn, đồ uống mang đậm hương vị núi rừng Tây Bắc, tham gia lửa trại…')
insert into VOUCHER values
('DL005','DL',N'Tour Campuchia: Siem Riep - Phnompenh 4N3Đ',
N'Voucher áp dụng cho Tour Du lịch Campuchia: Siemriep – Phnompenh 4 ngày 3 đêm dành cho 1 khách. Voucher 4.800.000 VNĐ, Còn 2.800.000 VNĐ, Giảm 42%',
'287','2800000 ','28/12/2014 - 28/03/2015','113','Resources\DL005',
N'- Khởi hành sáng thứ 5 hàng tuần.
- Hạn sử dụng voucher: từ ngày 28/12/2014 đến hết ngày 28/03/2015
- Vận chuyển: Xe  Samco đời mới, máy lạnh, chạy thẳng qua Campuchia
- Ăn uống: Theo chương trình cơm phần có món canh hoặc lẩu, 2 món mặn, món xào, cơm, tráng miệng, trà đá (bao gồm 1 bữa ăn Buffet + 1 bữa lẩu Suki)
- HDV tiếng Việt đi theo phục vụ suốt tuyến, hướng dẫn Campuchia đón tại cửa khẩu.
- Bảo hiểm: Bảo hiểm du lịch quốc tế trọn tour mức đền bù tối đa 10.000 USD/trường hợp
- Tham quan: Vé vào cửa tất cả các điểm tham quan theo chương trình
- Địa điểm sử dụng voucher: CTY TNHH 1 TV Dịch vụ Thương mại Du lịch Sa Mon - 1218, Đường 3/2, P8 Quận 11, TpHCM',
N'- Cơ hội được thưởng thức các món ăn đặc sản Campuchia, thưởng thức chương trình ca múa nhạc Apsara truyền thống với vũ công trong vũ điệu tiên nữ uyển chuyển.
- Tham quan và thử vận may tại sòng bài Naga World đẹp và sang trọng nhất Cambodia…
- Tham gia tour, bạn có cơ hội được chiêm ngưỡng và thưởng ngoạn những cảnh sắc, công trình kiến trúc vĩ đại như: cầu Japanese – Cambodia, Cầu Rồng Đá Ong, Angkor Thom, Angkor Wat,...')

-- Voucher Spa và Làm đẹp --
insert into VOUCHER values
('SP001','SP',N'Trọn Gói Uốn/Duỗi/Nhuộm Tại HT Hằng Hoàng',
N'Thay Đổi Kiểu Tóc Để Làm Mới Mình cùng 1 Trong 3 Dịch Vụ: Uốn/ Duỗi/ Nhuộm Kèm Cắt + Gội + Sấy + Hấp Dầu Tại Salon Hằng Hoàng. Giá 1.000.000 VNĐ, Còn 99.000 VNĐ, Giảm 90%.',
'287','99000 ','03/01/2015 - 03/02/2015','113','Resources\SP001',
N'- Địa điểm sử dụng voucher: Hệ Thống Salon Hằng Hoàng - 93 Trần Quang Khải, P. Tân Định, Q.1 - ĐT: 08.62915039.
- Hạn sử dụng voucher: từ ngày 03/01/2015 đến hết ngày 03/02/2015 (trừ Lễ).
- Áp dụng cho cả nam và nữ.
- Sử dụng 1 voucher/ người/ gói dịch vụ.',
N'- Beauty Salon Hằng Hoàng với 25 năm hoạt động, là một địa chỉ uy tín trong lĩnh vực làm đẹp và chăm sóc tóc, được nhiều khách hàng tin tưởng lựa chọn.
- Đạt nhiều danh hiệu trong các cuộc thi và tham gia nhiều lễ hội tóc, thời trang tóc.
- Không gian sang trọng, thoáng mát, trang thiết bị hiện đại.
- Đa dạng dịch vụ, giúp chăm sóc, tạo kiểu dáng cho tóc, mang đến cho bạn vẻ đẹp thời trang, tự tin, quyến rũ')
insert into VOUCHER values
('SP002','SP',N'Massage Đá Nóng + Foot + Mặt Nạ Rong Nho Tại Hệ Thống Hương Tre Spa',
N'Thư Giãn Tinh Thần Thoải Mái, Kết Hợp Làm Đẹp Da Cùng Gói Massage Body Đá Nóng + Foot + Mặt Nạ Rong Nho Tại Hệ Thống Hương Tre Spa. Voucher 350.000 VNĐ, Còn 49.000 VNĐ, Giảm 86%',
'387','49000 ','28/01/2015 - 28/02/2015','213','Resources\SP002',
N'- Địa điểm sử dụng voucher: 21 Nguyễn Sơn Hà, Phường 5, Quận 3 - ĐT: 08-38181564.
- Hạn sử dụng voucher: từ ngày 28/01/2015 đến hết ngày 28/02/2015 (Áp dụng kể cả ngày lễ).
- Chỉ áp dụng cho nữ.
- Một khách hàng được mua nhiều phiếu.
- Sử dụng 1 phiếu /1 người / 1 lần (Không bù).',
N' Hệ thống Hương Tre Spa gồm nhiều chi nhánh khác nhau, phục vụ nhu cầu làm đẹp đa dạng của chị em phụ nữ.
- Nơi cung cấp nhiều dịch vụ chất lượng như: chăm sóc da mặt, tắm trắng, massage body tinh dầu hướng dương kết hợp đá nóng, massage chân ngâm thuốc bắc kết hợp đá nóng…
- Không gian rộng rãi, thoáng mát, yên tĩnh, mang đến cho khách hàng cảm giác thư giãn thoải mái khi đến trị liệu.')
insert into VOUCHER values
('SP003','SP',N'1 Trong 2 Gói Dịch Vụ Massage Cao Cấp Tại Green Spa',
N'Thêm Nguồn Năng Lượng, Giải Tỏa Căng Thẳng, Mệt Mỏi Với 1 Trong 2 Gói Dịch Vụ Massage Cao Cấp Tại Green Spa. Voucher 250.000 VNĐ, Còn 99.000 VNĐ, Giảm 60%',
'487','99000 ','20/01/2015 - 20/02/2015','113','Resources\SP003',
N'- Địa điểm sử dụng voucher: Green Spa – 05 Sông Đà, Phường 2, Quận Tân Bình.  ĐT: 08 38487906 - 0912 490 399
- Hạn sử dụng voucher: từ ngày 20/01/2015 đến hết ngày 20/02/2015
- Áp dụng cho cả nam và nữ.
- Một khách hàng được mua nhiều phiếu.
- Sử dụng 01 phiếu/ 01 người/ 01 gói dịch vụ (Không bù tiền)',
N'- Green Spa là địa chỉ chăm sóc sắc đẹp chuyên nghiệp và uy tín tại TP.HCM.
- Spa tọa lạc trên con đường yên tĩnh, được xây dựng trên ý tưởng về một khu vườn màu xanh giúp khách hàng thư giãn và “giải nhiệt”.
- Dịch vụ đa dạng bao gồm: xông hơi, chăm sóc da mặt, massage toàn thân, massage chân, chăm sóc toàn thân…')
insert into VOUCHER values
('SP004','SP',N'Anna Sanctuary Wellness Spa – Top 100 Spa Cao Cấp Nổi Tiếng Việt Nam',
N'Trải Nghiệm 01 Trong 02 Dịch Vụ Làm Đẹp Cao Cấp: Trắng sáng Da Mặt / Massage Toàn Thân Tại Anna Sanctuary Wellness Spa. Voucher 1.080.000 VNĐ, Còn 400.000 VNĐ, Giảm 63%',
'587','400000 ','12/01/2015 - 12/02/2015','13','Resources\SP004',
N'- Địa điểm sử dụng voucher: Anna Sanctuary Wellness Spa - 4 Phan Văn Chương, P. Tân Phú, Q. 7, HCM. ĐT:(08) 54 102 102.
- Áp dụng cho 01 trong 02 dịch vụ Chăm sóc da mặt làm trắng sáng hoặc Massage toàn thân tại Anna Sanctuary Wellness Spa (60 phút)
- Hạn sử dụng voucher: từ ngày 12/01/2015 đến hết ngày 12/02/2015
- Sử dụng 1 phiếu / dịch vụ (không bù)
- Áp dụng cho cả Nam và Nữ.',
N'- Anna Sanctuary Wellness Spa được bầu chọn nằm trong Top 100 spa cao cấp nổi tiếng nhất tại Việt Nam.
- Là điểm đến lý tưởng, phục vụ nhu cầu thư giãn, làm đẹp của đông đảo bạn gái.
- Nằm tại khu vực Hồ Bán Nguyệt, quận 7, Spa có ưu điểm rộng rãi, thoáng mát, và đặc biệt yên tĩnh. Không gian mở được tạo nên nhờ lối kiến trúc đậm chất Âu Châu, kết hợp hài hòa với yếu tố thiên nhiên trong lành.
- Đa dạng các dịch vụ: chăm sóc da mặt, trẻ hóa da, dưỡng thể, waxing…')
insert into VOUCHER values
('SP005','SP',N'Trị Sẹo Lõm, Thâm, Trắng Mịn Săn Chắc Tinh Chất 100% Collagen',
N'Liệu Trình Điều Trị Trẻ Hóa Trắng Mịn Da Mặt, Săn Chắc Cơ, Thon Gọn Gương Mặt – Tinh Chất Collagen 100% Tại TMV Hoàng Gia. Voucher 1.500.000 VNĐ, Còn 99.000 VNĐ, Giảm 93%',
'267','99000 ','19/01/2015 - 19/02/2015','133','Resources\SP005',
N'- Địa điểm sử dụng voucher: 149 Đường 3/2, P.11, Q.10 - ĐT: 08.22002190.
- Áp dụng cho Liệu trình Điều trị trẻ hóa trắng mịn da mặt, săn chắc cơ, thon gọn gương mặt – Tinh chất Collagen 100% tại TMV Hoàng Gia. (60 phút)
- Sử dụng 01 phiếu/lần/khách (không bù thêm tiền và không xuất hóa đơn).
- Hạn sử dụng voucher: từ ngày 19/01/2015 đến hết ngày 19/02/2015
- Một khách hàng được mua nhiều phiếu.',
N'- TMV Hoàng Gia là một trong những địa chỉ uy tín bậc nhất tại TP.HCM về trẻ hóa làn da, lưu giữ nét thanh xuân cho chị em phụ nữ.
- Chuyên gia, tư vấn viên nhiều năm kinh nghiệm, giỏi chuyên môn, nhiệt tình.
- Trang thiết bị đầy đủ, máy móc hiện đại.
- Không gian sang trọng, yên tĩnh, thoải mái.')

-- Voucher Giải trí --
insert into VOUCHER values
('GT001','GT',N'Voucher Mua Đàn Guitar Chính Hãng',
N'Cơ Hội Sở Hữu Chiếc Đàn Guitar Chất Lượng, Đúng Chuẩn Với Voucher Mua Đàn Guitar Chính Hãng Tại Cửa Hàng Đàn 168 Nguyễn Thiện Thuật. Voucher 500.000 VNĐ, Còn 200.000 VNĐ, Giảm 60%.',
'267','200000 ','18/01/2015 - 18/02/2015','133','Resources\GT001',
N'- Địa điểm sử dụng voucher: Cửa hàng Đàn, 168 Nguyễn Thiện Thuật, P.2, Q.3, TP HCM.
- Hạn sử dụng voucher: từ ngày 18/01/2015 đến hết ngày 18/02/2015.
- Một khách hàng được mua nhiều phiếu.
- Phiếu không có giá trị quy đổi thành tiền mặt, không trả lại tiền thừa.',
N'- Cửa hàng Đàn 168 Nguyễn Thiện Thuật là địa chỉ chuyên cung cấp các loại nhạc cụ như Guitar, Piano, Vionlin, Ukulele.
- Voucher áp dụng cho 1 cây đàn guitar và 1 túi vải.
- Đàn guitar - một nhạc cụ phổ thông nhất trong đời sống âm nhạc hiện đại giúp bạn có những phút thư giãn thoải mái và thỏa đam mê.')
insert into VOUCHER values
('GT002','GT',N'Khóa Học Làm Bánh Cookies Trà Xanh Và Chocolate 2 Màu - 1 Buổi',
N'Trổ Tài Nấu Nướng, Làm Bánh Ngon Cho Người Thân Với Khóa Học Làm Bánh Cookies Trà Xanh Và Chocolate 2 Màu - 1 Buổi Tại Happy Baking Studio. Voucher 198.000 VNĐ, Còn 99.000 VNĐ, Giảm 50%.',
'367','99000 ','19/01/2015 - 19/02/2015','233','Resources\GT002',
N'- Địa điểm sử dụng voucher: Happy Baking Studio – 42/1 Ung Văn Khiêm, Phường 25, Quận Bình Thạnh. ĐT: 0913 074151 – 0914 128855.
- Khóa học làm bánh hoàn toàn miễn phí trang thiết bị và nguyên vật liệu làm bánh. Sau khi kết thúc học viên mang bánh về.
- Hạn sử dụng voucher: từ ngày 19/01/2015 đến hết ngày 19/02/2015.
- Sử dụng 01 phiếu/ 01 người/ 01 khóa học (không bù tiền).',
N'- Happy Baking Studio là trung tâm dạy làm bánh chuyên nghiệp, có nhiều khóa học: bánh ngọt, bánh pizza, bánh mì, hướng dẫn tự làm bánh, hướng dẫn làm bánh chủ đề Giáng Sinh.
- Đội ngũ giáo viên có nhiều năm kinh nghiệm, là những thợ lành bánh chuyên nghiệp.
- Tham gia khóa học làm bánh cookies tại Happy Baking Studio bạn sẽ được hướng dẫn tận tình và kỹ lưỡng từ khâu trộn bột, nướng bánh cho đến khâu trang trí.')
insert into VOUCHER values
('GT003','GT',N'Dịch Vụ Chụp Hình Thử Làm Cô Dâu Tại Quý Nguyễn Studio',
N'Cảm Nhận Hạnh Phúc Khi Được Khoác Lên Mình Bộ Áo Cô Dâu Cùng Dịch Vụ Chụp Hình Thử Làm Cô Dâu Tại Quý Nguyễn Studio. Voucher 900.000 VNĐ, Còn 99.000 VNĐ, Giảm 89%.',
'238','99000 ','05/01/2015 - 05/02/2015','262','Resources\GT003',
N'- Địa điểm sử dụng voucher: Quý Nguyễn Studio - 239 Phạm Văn Hai, Phường 5, Quận Tân Bình. ĐT: 08 38446279 – 0909 148418.
- Hạn sử dụng voucher: từ ngày 05/01/2015 đến hết ngày 05/02/2015.
- Áp dụng vào tất cả các ngày trong tuần (kể cả Lễ). Giờ áp dụng: 8h-21h.
- Sử dụng 01 phiếu/ 01 gói dịch vụ (không bù tiền).',
N'- Quý Nguyễn Studio là địa chỉ uy tín chuyên về make up, chụp ảnh thời trang và cảnh cưới, thiết kế album cưới…
- Khách hàng được chụp khoảng 40 kiểu tùy theo diễn xuất.
- Studio gởi 10 file hình đã được chỉnh sửa đẹp qua email, usb hoặc facebook.
- Stylist và trang điểm chuyên nghiệp, mang đến cho bạn vẻ ngoài rạng rỡ, đầy sức hút.')
insert into VOUCHER values
('GT004','GT',N'Khóa Học Nghệ Thuật Quyến Rũ 1 Buổi Tại FVA',
N'Tìm Một Nửa Lý Tưởng Của Cuộc Đời Với Khóa Học “Nghệ Thuật Quyến Rũ” 1 Buổi Tại FVA. Voucher 400.000 VNĐ, Còn 85.000 VNĐ, Giảm 79%.',
'441','85000 ','28/01/2015 - 28/02/2015','59','Resources\GT004',
N'- Địa điểm sử dụng voucher: FVA Lầu 3 – Nghĩa Tín Building, số 448/3 Lê Văn Sỹ, P.14, Q.3. ĐT: 0909.2567.93 - 090 432 1365.
- Hạn sử dụng voucher: từ ngày 28/01/2015 đến hết ngày 28/02/2015.
- Thời gian học: 18h- 21h.
- Sử dụng 1 người/voucher (không bù tiền).',
N'- Học viện FVA ra đời với mục đích chia sẻ kinh nghiệm của bản thân với hi vọng giúp đỡ mọi người thay đổi bản thân “trở thành một người thú vị và hấp dẫn”.
- Chuyên gia đào tạo Nguyễn Văn Sơn (Frank Viki) hiện là một trong những chuyên gia đào tạo hàng đầu – số 1 và duy nhất tại Việt Nam trong lĩnh vực tư vấn kỹ năng xây dựng tình yêu đôi lứa…
- Phong cách diễn thuyết sinh động, vui nhộn, anh giúp mọi người tiếp cận kiến thức một cách thoải mái, mang đến những tiếng cười sảng khoái xen lẫn những kiến thức thực tế đầy ý nghĩa.')
insert into VOUCHER values
('GT005','GT',N'Khóa Học “Tìm Kiếm Cơ Hội Đầu Tư – Tự Do Tương Lai” 3 Buổi',
N'Khóa Học “Tìm Kiếm Cơ Hội Đầu Tư – Tự Do Tương Lai” Trong 3 Buổi Tại TT Consulting - Giúp Bạn Làm Chủ Tài Chính Trong Tương Lai Một Cách Hiệu Quả. Voucher 2.000.000 VNĐ, Còn 99.000 VNĐ, Giảm 95%.',
'394','99000 ','14/01/2015 - 14/02/2015','106','Resources\GT005',
N'- Địa điểm sử dụng voucher: Công ty TNHH TT Consulting - Lầu 12 - tòa nhà Green Power, 35 Tôn Đức Thắng, Quận 1 – ĐT: 08 39 11 01 01.
- Hạn sử dụng voucher: từ ngày 14/01/2015 đến hết ngày 14/02/2015 (Không áp dụng ngày lễ).
- Sử dụng 1 phiếu / Người (không bù).
- Học viên mua phiếu của Hotdeal sẽ được tặng quà tặng của TT Consulting bao gồm: 1 sổ ghi chép + 1 Viết',
N'- Tập đoàn Teletrade là công ty tài chính đa quốc gia, cung cấp cho khách hàng những kiến thức chuyên môn và những dịch vụ tư vấn.
- Đội ngũ nhân viên ưu tú, không ngừng được nâng cao chuyên môn nghiệp vụ hướng đến mục tiêu mang đến cho khách hàng những dịch vụ chất lượng cao.
- Khóa học giúp bạn làm chủ tài chính trong tương lai – 3 buổi là cơ hội để bạn tự tin và kinh doanh thành công trên thị trường.')


/*==============================================================*/
/* Data Table: THONGTINKM                                       */
/*==============================================================*/
select * from THONGTINKM

-- TT Ăn Uống --
insert into THONGTINKM values('TT001',N'AU',N'Urban Station tròn 5 tuổi - Khuyến mãi đặc biệt',
'- Như một lời tri ân khách hàng vào dịp sinh nhật cửa hàng, Urban Station sẽ có nhiều ưu đãi mới từ ngày 22.12.2014 - 31/01/2015.
- Ưu đãi 30% cho tất cả các món thức uống bất kì của cửa hàng.
- Đặc biệt ưu đãi 20 thức uống bất kì miễn phí vào 2 khung giờ Special Hour của cửa hàng là 14h và 17h. 
- Từ 18h tối, Urban Station sẽ tặng bánh CupCake cực ngon cho nhóm bạn 4 người ghé cửa hàng.',
'22/12/2014 - 31/01/2015','Resources\TT001')
insert into THONGTINKM values('TT002',N'AU',N'Kem Baskin-Robbins khuyến mại "Mua 2 tặng 1"',
'- Nhân dịp kỷ niệm 3 năm có mặt tại Việt Nam và chào đón năm mới 2015, chuỗi cửa hàng kem Mỹ Baskin-Robbins tổ chức chương trình khuyến mãi "Mua 2 tặng 1".
 - Thời hạn khuyến mãi: 27/12/2014 - 31/01/2015
 - Áp dụng 12h - 19h mỗi ngày.
 - Liên hệ 08 73003131 để được tư vấn thêm về các loại kem Baskin-Robbins và khám phá ngay những mùi kem yêu thích.
 - Điều kiện tham dự khuyến mãi: Dành cho tất cả khách hàng khi đến với các của hàng Baskin-Robbins trên toàn quốc',
 '27/12/2014 - 31/01/2015','Resources\TT002')
insert into THONGTINKM values('TT003',N'AU',N'Khuyến mãi Highlands Coffee mua 1 tặng 1 trong tháng 12-2014',
'- Chương trình khuyến mãi Highlands Coffee mua 1 tặng 1 trong tháng 12-2014, đây là ưu đãi dành cho tất cả khách hàng.
- Thời hạn khuyến mãi: 08/12/2014 - 31/01/2015
- Hãy nhanh chân đến với chương trình khuyến mãi Highlands Coffee để hưởng ngay ưu đãi này.
- Điều kiện tham dự khuyến mãi: Dành cho tất cả khách hàng khi đến với Highlands Coffee',
'08/12/2014 - 31/01/2015','Resources\TT003')
insert into THONGTINKM values('TT004',N'AU',N'KFC - Phần ăn vừa no vừa ngon chỉ với 35.000đ/phần',
'- Khuyến mãi đặc biệt nhân dịp Noel 2014 -  phần ăn KFC tuyệt ngon cộng với Pepsi tươi mát chỉ với 35.000đ.
- Thời hạn khuyến mãi: 20/12/2014 - 31/01/2015
- Điều kiện tham dự khuyến mãi: Dành cho tất cả khách hàng khi đến với KFC.
- Chương trình áp dụng tại tất cả cửa hàng KFC trên toàn quốc từ 10h đến 14h, từ Thứ 2 đến Thứ 6 hàng tuần.',
'20/12/2014 - 31/01/2015','Resources\TT004')
insert into THONGTINKM values('TT005',N'AU',N'Giảm 50% cho Set lunch thứ nhì tại Pizza Hut vào thứ Hai và thứ Ba hàng tuần',
'- Vào thứ Hai và thứ Ba hàng tuần, bạn sẽ được giảm ngay 50% Set lunch (bao gồm Món chính + Món phụ + Món nước) tại Pizza Hut.
- Thười hạn khuyến mãi: 20/12/2014 - 30/01/2015
- Những phần Set lunch chỉ 69.000đ sẽ càng hấp dẫn hơn với ưu đãi "Giảm 50% cho Set lunch thứ nhì" tại Pizza Hut vào thứ Hai và thứ Ba hàng tuần.
- Áp dụng cho toàn bộ các cửa hàng Pizza Hut trên toàn quốc. Cùng rủ thật đông bạn bè tham gia nào!'
,'20/12/2014 - 30/01/2015','Resources\TT005')

-- TT Du lịch --
insert into THONGTINKM values('TT006',N'DL',N'Vietnam Airlines tiếp tục triển khai chương trình “Khoảnh khắc vàng” lần 16',
'- Từ 17/12 - 7/01/2015, khách hàng sẽ có cơ hội mua vé máy bay một chiều với các mức giá đặc biệt rất hấp dẫn.
- Trên các hành trình từ Tp. Hồ Chí Minh đi Nha Trang giá vé là 399.000 VNĐ/chiều
- Từ Tp. Hồ Chí Minhđi Huế, Phú Quốc, Quy Nhơn là 499.000 VNĐ/chiều
- Từ Tp. Hồ Chí Minh đi Đồng Hới là 799.000 VNĐ/chiều
- Từ Tp,Hồ Chí Minh đi Vinh là 999.000 VNĐ/chiều và đi Thanh Hóa, Hải Phòng là 1.099.000 VNĐ/chiều'
,'17/12/2014 - 7/01/2015','Resources\TT006')
insert into THONGTINKM values('TT007',N'DL',N'Các khu du lịch ở Nha Trang ưu đãi nhân lễ Giáng Sinh 2014',
'- Thời hạn Khuyến mãi: từ ngày 14/12/2014 đến ngày 30/01/2015.
- KDL Suối khoáng nóng Tháp Bà giảm 20% giá dịch vụ tắm bùn, tắm khoáng.
- KDL Suối khoáng nóng I-Resort Nha Trang có chương trình ưu đãi giảm 50% giá vé cho 100 vé đầu tiên đến với Resort.
- KDL sinh thái Nhân Tâm (huyện Diên Khánh) tặng vé trò chơi đu dây Zipline cho 50 vị khách đầu tiên đến với khu du lịch '
,'14/12/2014 - 30/01/2015','Resources\TT007')
insert into THONGTINKM values('TT008',N'DL',N'Vinpearl Land ưu đãi giá dành cho người dân Khánh Hòa',
'- Từ ngày 5/10 - 31/01/2015, khu vui chơi giải trí Vinpearl Land Nha Trang triển khai chương trình “Ưu đãi giá dành cho người dân tỉnh Khánh Hòa”.
- Với giá trọn gói 385.000 đồng dành cho người lớn và 315.000 đồng dành cho trẻ em (giảm 30%), du khách sẽ được vui chơi không giới hạn tại Vinpearl Land Nha Trang.
- Để được hưởng chính sách này, đối với khách là người dân Khánh Hòa khi mua vé phải xuất trình bản gốc của các loại giấy tờ như chứng minh nhân dân, hộ chiếu, giấy phép lái xe.'
,'5/10/2014 - 31/01/2015','Resources\TT008')
insert into THONGTINKM values('TT009',N'DL',N'Miễn vé cáp treo Yên Tử (Quảng Ninh) cho học sinh sinh viên',
'- Thời hạn Khuyến mãi: từ ngày 14/12/2014 đến ngày 30/01/2015.
- Công ty cổ phần Phát triển Tùng Lâm vừa thông báo áp dụng chương trình miễn vé cáp treo Yên Tử cho đối tượng học sinh sinh viên
- Cụ thể học sinh, sinh viên chỉ cần xuất trình thẻ HSSV hoặc CMND sinh sau năm 1993 cũng sẽ được miễn vé cáp treo Yên Tử.'
,'14/12/2014 - 30/01/2015','Resources\TT009')
insert into THONGTINKM values('TT010',N'DL',N'Bà Nà Hills (Đà Nẵng) giảm giá vé cáp treo nhân dịp Giáng sinh 2014 và Năm Ất Mùi 2015',
'- Nhân dịp Giáng Sinh 2014 và Năm Ất Mùi 2015 đang đến gần, Khu du lịch Bà Nà Hills ưu đãi giảm giá vé cáp treo còn 100,000 VNĐ/1 vé.
- Thời hạn Khuyến mãi: từ ngày 20/12/2014 đến ngày 20/01/2015.
- Trong suốt thời gian khuyến mại, Bà Nà Hills sẽ liên tục vận hành hệ thống cáp treo từ 6h30 đến 21h00 hàng ngày.'
,'20/12/2014 - 20/01/2015','Resources\TT010')

-- TT Spa và Làm đẹp --
insert into THONGTINKM values('TT011',N'DL',N'Sắc đẹp tỏa sáng – mừng đón giáng sinh – rinh khuyến mại khủng từ Adora Spa',
'- Nhân dịp Giáng Sinh 2014 đang đến gần, Adora Spa ưu đãi giảm giá nhiều dịch vụ chất lượng.
- Giảm 20% Chăm sóc da mặt cơ bản và tắm trắng Love Me For Teen
- Giảm  25% cho chương trình trị mụn tận gốc CN Ance Đức
- Giảm 30% Công nghệ tắm trắng Natural White và Bóc tách hắc sắc tố nhũ tương nhau thai hươu
- Thời hạn Khuyến mãi: từ ngày 20/12/2014 đến ngày 20/01/2015.'
,'20/12/2014 - 20/01/2015','Resources\TT011')
insert into THONGTINKM values('TT012',N'DL',N'Victoria Phan Thiết Spa - giảm giá tới 50% các công nghệ đỉnh cao từ hoa kỳ, thụy sĩ',
'- Tưng bừng chào đón Noel và Tết dương lịch 2015, Saigon Smile Spa giảm giá từ 20 – 50% tất cả các trị liệu da công nghệ cao Hoa Kỳ, Thụy Sĩ.
- Thời hạn Khuyến mãi: 20/12/2014 - 20/01/2015
- Giảm giá 50% đối với khách hàng có thẻ Vip Member 
- Giảm giá 45% đối với khách hàng có thẻ Gold Member 
- Giảm giá 40% đối với tất cả các khách hàng khác',
'20/12/2014 - 20/01/2015','Resources\TT012')
insert into THONGTINKM values('TT013',N'DL',N'Minh Nguyệt Spa - Siêu Khuyến Mại Đón Chào Mùa Noel Và Năm Mới',
'- Chào đón Noel và Năm mới 2015, Minh Nguyệt Spa giảm giá rất nhiều dịch vụ làm đẹp ưu đãi lên tới 50% cùng hàng nghìn món quà hấp dẫn.
- Thời hạn Khuyến mãi: 20/12/2014 - 20/01/2015
- Cùng với chương trình khuyến mãi, Mich Nguyệt Spa xin gửi lời chúc giáng sinh và năm mới an lành đến những khách hàng thân quen của spa',
'20/12/2014 - 20/01/2015','Resources\TT013')
insert into THONGTINKM values('TT014',N'DL',N'Lyna Beauty Spa - trị mụn tiết kiệm 50% mừng Năm Mới',
'- Tưng bừng chào đón Tết dương lịch 2015, Lyna Beauty Spa giảm giá từ 50% tất cả các dịch vụ trị mụn bằng công nghệ Green Laser.
- Thời hạn Khuyến mãi: 20/12/2014 - 20/01/2015
- Cùng theo chân Spa để nhanh chóng tút lại làn da láng mịn, sạch mụn với mức chi phí cực tiết kiệm nào các bạn.',
'20/12/2014 - 20/01/2015','Resources\TT014')
insert into THONGTINKM values('TT015',N'DL',N'Sofia Spa - Soi da, thải độc tố chỉ với 89k',
'- Nhân dịp kỉ niệm tròn 2 tuổi, Sofia Spa tổ chức chương trình ưu đãi soi da, thải độc tố chỉ với 89k.
- Thời hạn Khuyến mãi: 10/11/2014 - 20/01/2015
- Cùng theo chân Spa để nhanh chóng tút lại làn da láng mịn, sạch mụn với mức chi phí cực tiết kiệm nào các bạn.',
'10/11/2014 - 20/01/2015','Resources\TT015')

-- TT Giải trí --
insert into THONGTINKM values('TT016',N'GT',N'Đón Năm Mới ấm áp với drap giường cao cấp từ Bedding Gallery',
'- Bedding Gallery – chuỗi cửa hàng phân phối độc quyền những thương hiệu chăn, drap, gối cao cấp nổi tiếng thế giới mang đến chương trình khuyến mãi với những quà tặng hấp dẫn cho quý khách hàng.
- Thời hạn Khuyến mãi: 28/12/2014 - 28/01/2015
- Đặc biệt tặng 1 cặp gối nằm trị giá 1.360.000VNĐ khi mua 1 bộ drap Sheridan.',
'28/12/2014 - 28/01/2015','Resources\TT016')
insert into THONGTINKM values('TT017',N'GT',N'Hoàng Phúc: Khuyến mãi đặc biệt Nhân dịp Giáng Sinh 2014 và Năm Mới 2015',
'- Từ ngày 22.11 – 30.12.2014, Chuỗi Hoàng Phúc triển khai Chương trình Khuyến Mãi với mức chiết khấu hấp dẫn dành tặng khách hàng.
- Giảm giá 30% cho tất cả sản phẩm mới và giảm thêm 30% cho các sản phẩm đang khuyến mại.
- Mua 1 tặng 1 cho gần 100 sản phẩm nguyên giá duy nhất.',
'22/11/2014 - 30/12/2014','Resources\TT017')
insert into THONGTINKM values('TT018',N'GT',N'World Game khuyến mại ăn uống, vui chơi',
'– Giảm giá ngay 10% cho dịch vụ ăn uống tại cửa hàng KFC, Lotteria khi vui chơi tại khu World Game với hóa đơn trị giá 50.000đ trở lên (chỉ áp dụng cho dịch vụ vui chơi, không bao gồm ăn uống tại World Game)
– Khi sử dụng dịch vụ tại KFC hoặc Lotteria với mỗi hóa đơn trị giá 50.000đ sẽ được tặng luôn 03 xèng chơi game tại khu vui chơi World Game
– Tặng kem tươi cho mỗi hóa đơn khi khách hàng sử dụng dịch vụ tại World Game.',
'28/12/2014 - 28/01/2015','Resources\TT018')
insert into THONGTINKM values('TT019',N'GT',N'Kids World tưng bừng khuyến mãi mừng Năm Mới 2015',
'– Khởi động từ nay đến hết 25/1/2015, chương trình khuyến mãi đặc biệt mừng Năm Mới 2016 được triển khai đồng loạt tại Kids World Times City Hà Nội.
- Trong dịp này, hầu hết các mặt hàng trong hệ thống Kids World đều được giảm giá lên đến 50% với chất lượng tốt và an toàn với chi phí vô cùng ưu đãi. ',
'28/12/2014 - 25/01/2015','Resources\TT019')


/*==============================================================*/
/* Data Table: THONGTINKM                                       */
/*==============================================================*/
select * from DONHANG
insert into DONHANG values('DH001','MyThinh','2014/12/23',N'Trực tiếp',N'Chưa thanh toán',N'Chưa duyệt',N'Lê Thị Mỹ Thịnh','092382232',N'Kí túc xá khu B đại học quốc gia',null,null,null,null)
insert into DONHANG values('DH002','DuongHai','2014/12/24',N'Trực tiếp',N'Chưa thanh toán',N'Chưa duyệt',N'Trần Công ','092382444',N' 299 Trung Kính - Yên Hòa - Cầu Giấy',null,null,N'Giao vào ngày nghỉ',null)
insert into DONHANG values('DH003','HuongSen','2014/12/20',N'Gián tiếp',N'Chưa thanh toán',N'Đã duyệt',N'Phạm Thị Hương Sen ','092382443',N'63 Ngô Thị Thu Minh, Quận Tân Bình.','23A32419',N'Phạm Thị Hương Sen',null,null)
insert into DONHANG values('DH004','DucHuy','2014/12/22',N'Trực tiếp',N'Đã thanh toán',N'Đã duyệt',N'Vũ Đức Huy ','0164359459',N'17 Lê Duẩn, phường Bến Ngé, quận 1, TP HCM',null,null,null,'2014/12/15')
insert into DONHANG values('DH005','BichNgoc','2014/12/30',N'Gián tiếp',N'Đã thanh toán',N'Đã duyệt',N'Trần Thị Bích Ngọc ','01655712985',N'2A - 4A Tôn Đức Thắng, quận 1','71A34545',N'Trần Thị Bích Ngọc ',null,'2014/12/17')
insert into DONHANG values('DH006','PhuThuan','2014/12/28',N'Trực tiếp',N'Chưa thanh toán',N'Đã duyệt',N'Nguyễn Phú Thuận','0166444634',N'2 Phan Văn Chương, quận 7',null,null,N'Giao hàng vào buổi tối',null)
insert into DONHANG values('DH007','MyThanh','2014/12/29',N'Gián tiếp',N'Đã thanh toán',N'Đã duyệt',N'Dương Thị Mỹ Thanh ','01655712999',N'63 Nguyễn Huệ, quận 1','671A34545',N'Dương Thị Mỹ Thanh ',N'Giao vào ngày thứ 6','2014/12/15')
insert into DONHANG values('DH008','QuocHoan','2014/12/30',N'Gián tiếp',N'Chưa thanh toán',N'Chưa duyệt',N'Trần Quốc Hoàn ','095571295',N'253 Nguyễn Văn Trỗi, quận Phú Nhuận','31A34765',N'Trần Quốc Hoàn ',null,null)
insert into DONHANG values('DH009','MinhNhan','2014/12/30',N'Trực tiếp',N'Chưa thanh toán',N'Đã duyệt',N'Nguyễn Minh Nhân','016593743',N'Kí túc xá khu B đại học quốc gia',null,null,null,null)
insert into DONHANG values('DH010','NgocHoang','2014/12/24',N'Gián tiếp',N'Chưa thanh toán',N'Đã duyệt',N'Trần Ngọc Hoàng','092043433',N'102 Cống Quỳnh, quận 1','35A344545',N'Trần Ngọc Hoàng',N'Giao vào các ngày thứ 3 ,5',null)
insert into DONHANG values('DH011','HongNhung','2014/12/25',N'Trực tiếp',N'Chưa thanh toán',N'Chưa duyệt',N'Phạm Hồng Nhung ','09348544',N'25 Kỳ Đồng, quận 3',null,null ,null,null)
insert into DONHANG values('DH012','QuynhNga','2014/12/26',N'Gián tiếp',N'Chưa thanh toán',N'Chưa duyệt',N'Nguyễn Quỳnh Nga','016566554',N'172 Nguyễn Duy Trinh, P. Bình Trưng','8934BD45',N'Nguyễn Quỳnh Nga',null,null)
insert into DONHANG values('DH013','VietHung','2014/12/27',N'Trực tiếp',N'Chưa thanh toán',N'Không duyệt',N'Bùi Viết Hưng','016543454',N'Kí túc xá khu B đại học quốc gia',null,null,null,null)

/*==============================================================*/
/* Data Table: THONGTINKM                                       */
/*==============================================================*/
select * from CHITIETDH
insert into CHITIETDH values ('AU001','DH001','2')
insert into CHITIETDH values ('AU002','DH002','3')
insert into CHITIETDH values ('DL003','DH003','10')
insert into CHITIETDH values ('DL004','DH004','4')
insert into CHITIETDH values ('AU005','DH005','2')
insert into CHITIETDH values ('DL002','DH006','2')
insert into CHITIETDH values ('DL001','DH007','5')
insert into CHITIETDH values ('GT003','DH008','1')
insert into CHITIETDH values ('GT001','DH009','3')
insert into CHITIETDH values ('SP001','DH010','2')
insert into CHITIETDH values ('SP002','DH011','5')
insert into CHITIETDH values ('SP003','DH012','2')
insert into CHITIETDH values ('SP004','DH013','1')
