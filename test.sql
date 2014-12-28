create database test

use test


create table TAIKHOAN 
(
	Username varchar(15) not null,
	Password varchar(50),
	TrangThaiTK nvarchar(30),
	MaQuyen nvarchar(50),
	TGDNLanCuoi datetime,
	primary key (username)
)

create table PHANQUYEN
(
	MaQuyen varchar(5),
	TenQuyen nvarchar(50),
	primary key (MaQuyen)
)

create table MEMBER
(
	Ma_Mem varchar(10),
	Username varchar(20),
	HoTen_Mem nvarchar(50),
	DiaChi_Mem nvarchar(100),
	SDT_Mem varchar(20),
	Email_Mem varchar(50),
	NgaySinh_Mem date,
	CMND varchar(20),
	NgayDKi date,
	GioiTinh nvarchar(5),
	primary key (Ma_Mem)
)

create table NHANVIEN
(
	MaNV varchar(5),
	Username varchar(20),
	HoTenNV nvarchar(50),
	DiaChi_NV nvarchar(200),
	SDT_NV varchar(20),
	Email_NV varchar(50),
	NgaySinh_NV date,
	CMND_NV varchar(20),
	NgayVaoLam date,
	GioiTinh nvarchar(5),
	primary key (MaNV)
)

set dateformat dmy
--ACCOUNT
insert into TAIKHOAN (Username,Password,TrangThaiTK,MaQuyen,TGDNLanCuoi) values ('admin','123456','On','Q001','20:10:01 2014/12/30')
insert into TAIKHOAN (Username,Password,TrangThaiTK,MaQuyen,TGDNLanCuoi) values ('member','123456','On','Q003','20:10:01 2014/12/30')
insert into TAIKHOAN (Username,Password,TrangThaiTK,MaQuyen,TGDNLanCuoi) values ('nvbh','123456','On','Q002','20:10:01 2014/12/30')
insert into TAIKHOAN (Username,Password,TrangThaiTK,MaQuyen,TGDNLanCuoi) values ('xukavo','123456','On','Q003','20:10:01 2014/12/30')
insert into TAIKHOAN (Username,Password,TrangThaiTK,MaQuyen,TGDNLanCuoi) values ('huyvu','123456','On','Q003','20:10:01 2014/12/30')
insert into TAIKHOAN (Username,Password,TrangThaiTK,MaQuyen,TGDNLanCuoi) values ('nvbh1','123456','On','Q002','20:10:01 2014/12/30')
--CHUCVU
insert into PHANQUYEN(MaQuyen,TenQuyen) values('Q001',N'Admin')
insert into PHANQUYEN(MaQuyen,TenQuyen) values('Q002',N'Nhân viên bán hàng')
insert into PHANQUYEN(MaQuyen,TenQuyen) values('Q003',N'Member')
--MEMBER
insert into MEMBER(Ma_Mem,Username,HoTen_Mem,DiaChi_Mem,SDT_Mem,Email_Mem,NgaySinh_Mem,CMND,NgayDKi,GioiTinh) values ('M0001','member',N'Nguyễn Phú Thuận',N'Thành phố Hồ Chí Minh','0982567431','thuannp293@gmail.com','1994-03-29','264439148','2014/11/1','Nam')
insert into MEMBER(Ma_Mem,Username,HoTen_Mem,DiaChi_Mem,SDT_Mem,Email_Mem,NgaySinh_Mem,CMND,NgayDKi,GioiTinh) values ('M0002','xukavo',N'Dương Cao Chí',N'Thành phố Hồ Chí Minh','0982567431','phongdk@gm.uit.edu.vn','1994/1/1','264439148','2014/11/3','Nam')
insert into MEMBER(Ma_Mem,Username,HoTen_Mem,DiaChi_Mem,SDT_Mem,Email_Mem,NgaySinh_Mem,CMND,NgayDKi,GioiTinh) values ('M0004','huyvu',N'Vũ Đức Huy',N'Thành phố Hồ Chí Minh
DA NAG
HÂ NOI','0982567431','phongdk@gm.uit.edu.vn','1994/1/1','264439148','2014/11/3','Nam')
insert into MEMBER(Ma_Mem,Username,HoTen_Mem,DiaChi_Mem,SDT_Mem,Email_Mem,NgaySinh_Mem,CMND,NgayDKi,GioiTinh) values ('M0005','member',N'Nguyễn Phú Thuât',N'Thành phố Hồ Chí Minh','0982567431','thuannp293@gmail.com','1994-03-29','264439148','2014/11/1','Nam')
--NHANVIEN
insert into NHANVIEN(MaNV,Username,HoTenNV,DiaChi_NV,SDT_NV,Email_NV,NgaySinh_NV,CMND_NV,NgayVaoLam,GioiTinh) values ('NV001','admin',N'Dương Khai Phong',N'Thành phố Hồ Chí Minh','0909123456','phongdk@gm.uit.edu.vn','1983/01/1','264429133','2014/10/2','Nam')
insert into NHANVIEN(MaNV,Username,HoTenNV,DiaChi_NV,SDT_NV,Email_NV,NgaySinh_NV,CMND_NV,NgayVaoLam,GioiTinh) values ('NV002','nvbh',N'Lê Thị Mỹ Thịnh',N'Thành phố Hồ Chí Minh','0909123456','phongdk@gm.uit.edu.vn','1988/01/1','264429133','2014/10/10','Nam')
insert into NHANVIEN(MaNV,Username,HoTenNV,DiaChi_NV,SDT_NV,Email_NV,NgaySinh_NV,CMND_NV,NgayVaoLam,GioiTinh) values ('NV003','nvbh1',N'Dương Khai Phong',N'Thành phố Hồ Chí Minh','0909123456','phongdk@gm.uit.edu.vn','1988/01/1','264429133','2014/10/10','Nam')


select * from TAIKHOAN
select * from MEMBER
select * from NHANVIEN
delete from TAIKHOAN
delete from MEMBER where Ma_Mem = 'M0004'
delete from NHANVIEN


drop proc CheckLogin
create procedure CheckLogin
(
	@ausername varchar(20),
	@apassword varchar(50)
)
as
begin
	select * from TAIKHOAN where username = @ausername and Password = @apassword and TrangThaiTK='On'
end
GO

create proc GetID_MEMBER
as
begin
	select max(Ma_Mem) from MEMBER
end
go

create proc GetID_Staff
as
begin
	select max(MaNV) from NHANVIEN
end
go

----------InsertAccount----------
drop proc InsertAccount
create procedure InsertAccountMember
(
	@username varchar(15),
	@password varchar(20)
)
as
begin
	insert into TAIKHOAN (username,Password,TrangThaiTK,MaQuyen) values (@username,@password,'On','Q003')
end
go


create procedure InsertAccountStaff
(
	@username varchar(15),
	@password varchar(20)
)
as
begin
	insert into TAIKHOAN (username,Password,TrangThaiTK,MaQuyen) values (@username,@password,'On','Q002')
end
go
----------InsertMember----------
drop proc InsertMember
create procedure InsertMember
(
	@ma_mem varchar(10),
	@username varchar(20),
	@hoten nvarchar(50),
	@diachi nvarchar(100),
	@sdt varchar(20),
	@email varchar(50),
	@ngaysinh date,
	@CMND varchar(20),
	@ngaydk date,
	@gioitinh nvarchar(5)
)
as
begin
	insert into MEMBER (Ma_Mem,Username,HoTen_Mem,DiaChi_Mem,SDT_Mem,Email_Mem,NgaySinh_Mem,CMND,NgayDKi,GioiTinh) 
	values (@ma_mem,@username,@hoten,@diachi,@sdt,@email,@ngaysinh,@CMND,@ngaydk,@gioitinh)
end

----------InsertStaff----------
drop proc InsertStaff
create procedure InsertStaff
(
	@ma_nv varchar(10),
	@username varchar(20),
	@hoten nvarchar(50),
	@diachi nvarchar(100),
	@sdt varchar(20),
	@email varchar(50),
	@ngaysinh date,
	@CMND varchar(20),
	@ngayvaolam date,
	@gioitinh nvarchar(5)
)
as
begin
	insert into NHANVIEN(MaNV,Username,HoTenNV,DiaChi_NV,SDT_NV,Email_NV,NgaySinh_NV,CMND_NV,NgayVaoLam,GioiTinh) 
	values (@ma_nv,@username,@hoten,@diachi,@sdt,@email,@ngaysinh,@CMND,@ngayvaolam,@gioitinh)
end


----------UpdatePass----------
drop proc UpdatePass
create procedure UpdatePass
(
	@username varchar(15),
	@pass varchar(20)
)
as
begin
	update TAIKHOAN set  
						Password = @pass
						where Username = @username
end
go


----------UpdateMember----------
drop proc UpdateMember
create procedure UpdateMember
(
	@username varchar(20),
	@hoten nvarchar(50),
	@email varchar(50),
	@gioitinh nvarchar(5),
	@ngaysinh date,
	@diachi nvarchar(150),
	@cmnd varchar(20),
	@sdt varchar(20)
)
as
begin
	update MEMBER set 
						HoTen_Mem = @hoten,
						Email_Mem = @email,
						GioiTinh = @gioitinh,
						NgaySinh_Mem = @ngaysinh,
						DiaChi_Mem = @diachi,
						CMND = @cmnd,
						SDT_Mem = @sdt											
						where Username = @username
end

----------UpdateStaff----------
drop proc UpdateStaff
create procedure UpdateStaff
(
	@username varchar(20),
	@hoten nvarchar(50),
	@email varchar(50),
	@gioitinh nvarchar(5),
	@ngaysinh date,
	@diachi nvarchar(150),
	@cmnd varchar(20),
	@sdt varchar(20),
	@ngayvaolam date
)
as
begin
	update NHANVIEN set 
						HoTenNV = @hoten,
						Email_NV = @email,
						GioiTinh = @gioitinh,
						NgaySinh_NV = @ngaysinh,
						DiaChi_NV = @diachi,
						CMND_NV = @cmnd,
						SDT_NV = @sdt,
						NgayVaoLam = @ngayvaolam											
						where Username = @username
end

----------CheckAccount----------
drop proc CheckAccount
create procedure CheckAccount
	@ausername varchar(50)
as
begin
	select * 
	from TAIKHOAN
	where Username = @ausername
end

----------LastLogin----------
drop proc LastLogin
create procedure LastLogin
	@username varchar(20),
	@TGDNLanCuoi datetime
as
begin
	update TAIKHOAN
	set TGDNLanCuoi = @TGDNLanCuoi
	where Username = @username
end


----------UpdateKhoa----------
drop proc UpdateKhoa
create procedure UpdateKhoa
	@ausername varchar(50)
as
begin
	update TAIKHOAN 
	set TrangThaiTK = 'On'
	where Username = @ausername
end

----------UpdateKhoa2----------
drop proc UpdateKhoa2
create procedure UpdateKhoa2
	@ausername varchar(50)
as
begin
	update TAIKHOAN 
	set TrangThaiTK = 'Off'	
	where Username = @ausername
end

----------LoadAccount----------
drop proc LoadAccount
create procedure LoadAccount
  @ausername varchar(20)
as
begin
	select * from TAIKHOAN
end


create procedure SearchMember
	@input nvarchar(20)
as
begin
	select Ma_Mem,Username,HoTen_Mem,DiaChi_Mem,SDT_Mem,Email_Mem,FORMAT(NgaySinh_Mem,'dd-MM-yyyy') as NgaySinh,CMND, FORMAT(NgayDKi,'dd-MM-yyyy') as NgayDK,GioiTinh
	from MEMBER 
	where ((Ma_Mem like (@input + '%') or Ma_Mem like ('%' + @input) or Ma_Mem like ('%' + @input + '%')) ) or 
	((Username like (@input + '%') or Username like ('%' + @input) or Username like ('%' + @input + '%')) ) or 
	((HoTen_Mem like (@input + '%') or HoTen_Mem like ('%' + @input) or HoTen_Mem like ('%' + @input + '%')) ) or 
	((DiaChi_Mem like (@input + '%') or DiaChi_Mem like ('%' + @input) or DiaChi_Mem like ('%' + @input + '%')) ) or
	((SDT_Mem like (@input + '%') or SDT_Mem like ('%' + @input) or SDT_Mem like ('%' + @input + '%')) ) or 
	((Email_Mem like (@input + '%') or Email_Mem like ('%' + @input) or Email_Mem like ('%' + @input + '%')) ) or 
	((NgaySinh_Mem like (@input + '%') or NgaySinh_Mem like ('%' + @input) or NgaySinh_Mem like ('%' + @input + '%')) ) or 
	((CMND like (@input + '%') or CMND like ('%' + @input) or CMND like ('%' + @input + '%')) ) or 
	((NgayDKi like (@input + '%') or NgayDKi like ('%' + @input) or NgayDKi like ('%' + @input + '%')) ) or 
	((GioiTinh like (@input + '%') or GioiTinh like ('%' + @input) or GioiTinh like ('%' + @input + '%')) )
end


create procedure SearchStaff
	@input nvarchar(20)
as
begin
	select MaNV,Username,HoTenNV,DiaChi_NV,SDT_NV,Email_NV,FORMAT(NgaySinh_NV,'dd-MM-yyyy') as NgaySinh,CMND_NV,GioiTinh
	from NHANVIEN 
	where ((MaNV like ('Khai Phong' + '%') or MaNV like ('%' + 'Khai Phong') or MaNV like ('%' + 'Khai Phong' + '%')) ) or 
	((Username like ('Khai Phong' + '%') or Username like ('%' + 'Khai Phong') or Username like ('%' + 'Khai Phong' + '%')) ) or 
	((HoTenNV like ('Khai Phong' + '%') or HoTenNV like ('%' + 'Khai Phong') or HoTenNV like ('%' + 'Khai Phong' + '%')) ) or 
	((DiaChi_NV like ('Khai Phong' + '%') or DiaChi_NV like ('%' + 'Khai Phong') or DiaChi_NV like ('%' + 'Khai Phong' + '%')) ) or
	((SDT_NV like ('Khai Phong' + '%') or SDT_NV like ('%' + 'Khai Phong') or SDT_NV like ('%' + 'Khai Phong' + '%')) ) or 
	((Email_NV like ('Khai Phong' + '%') or Email_NV like ('%' + 'Khai Phong') or Email_NV like ('%' + 'Khai Phong' + '%')) ) or 
	((NgaySinh_NV like ('Khai Phong' + '%') or NgaySinh_NV like ('%' + 'Khai Phong') or NgaySinh_NV like ('%' + 'Khai Phong' + '%')) ) or 
	((CMND_NV like ('Khai Phong' + '%') or CMND_NV like ('%' + 'Khai Phong') or CMND_NV like ('%' + 'Khai Phong' + '%')) ) or 
	((GioiTinh like ('Khai Phong' + '%') or GioiTinh like ('%' + 'Khai Phong') or GioiTinh like ('%' + 'Khai Phong' + '%')) ) 
end

----------LoadMemberAccount----------
drop proc LoadMemberAccount
create procedure LoadMemberAccount
as
begin
	select Ma_Mem,Username,HoTen_Mem,DiaChi_Mem,SDT_Mem,Email_Mem,FORMAT(NgaySinh_Mem,'dd-MM-yyyy') as NgaySinh,CMND, FORMAT(NgayDKi,'dd-MM-yyyy') as NgayDK,GioiTinh
	from MEMBER
end

----------LoadMemberByUsername----------
drop proc LoadMemberByUsername
create procedure LoadMemberByUsername
  @username varchar(20)
as
begin
	select * from MEMBER where Username = @username
end

----------LoadStaffByUsername----------
drop proc LoadStaffByUsername
create procedure LoadStaffByUsername
  @username varchar(20)
as
begin
	select * from NHANVIEN where Username = @username
end
----------LoadStaffAccount----------
drop proc LoadStaffAccount
create procedure LoadStaffAccount
as
begin
	select N.MaNV,N.Username,N.HoTenNV,N.DiaChi_NV,N.SDT_NV,N.Email_NV,FORMAT(NgaySinh_NV,'dd-MM-yyyy') as NgaySinh,N.CMND_NV, FORMAT(NgayVaoLam,'dd-MM-yyyy') as NgayVL,N.GioiTinh,T.MaQuyen
	from NHANVIEN N,TAIKHOAN T
	where N.Username = T.Username and T.MaQuyen='Q002'
end

----------DeleteAccount----------
create procedure DeleteAccount
	@username varchar(20)
as
begin
	delete from TAIKHOAN where Username = @username
end

----------DeleteStaff----------
drop proc DeleteStaff
create procedure DeleteStaff
	@username varchar(20)
as 
begin 
	delete  from NHANVIEN where Username = @username
end


create table Voucher
(
	MaVoucher varchar(10),
	imgfile text
)
select * from Voucher

create procedure InsertVoucher
(
	@mavoucher varchar(10),
	@imgfile text
)
as
begin
	insert into Voucher (MaVoucher,imgfile) values (@mavoucher,@imgfile)
end

select * from ORDERS
create table ORDERS (
   MADH                 varchar(100)         not null,
   USERNAME             varchar(100)         null,
   NGAYTAODH            date				 not null,
   HINHTHUCTT           nvarchar(100)        not null,
   TINHTRANGTT          nvarchar(100)        not null,
   TRANGTHAIDH          nvarchar(100)        not null,
   HOTENNGUOIMUA        nvarchar(100)        not null,
   SDT                  varchar(100)         not null,
   DIACHIGIAOHANG       nvarchar(200)        not null,
   SOTKNH               varchar(200)         not null,
   TENCHUTK             nvarchar(100)        not null,
   NOTE                 nvarchar(500)        null,
   NGAYTHANHTOAN        date             not null,
   constraint PK_DONHANG primary key nonclustered (MADH)
)
insert into ORDERS(MADH,USERNAME,NGAYTAODH,HINHTHUCTT,TINHTRANGTT,TRANGTHAIDH,HOTENNGUOIMUA,SDT,DIACHIGIAOHANG,SOTKNH,TENCHUTK,NOTE,NGAYTHANHTOAN)
values('DH0001','member','2014/12/10',N'Trực tiếp',N'Đã thanh toán',N'Đã duyệt',N'Nguyễn Phú Thuận','0982567431',N'KTX Khu A','1234567890',N'Nguyễn Phú Thuận','','2014/12/21')
drop table CHITIETDH
create table CHITIETDH (
   MAVOUCHER            varchar(100)         not null,
   MADH                 varchar(100)         not null,
   SOLUONGVOUCHER       varchar(100)     null,
   constraint PK_CHITIETDH primary key nonclustered (MAVOUCHER, MADH)
)
select * from ORDERS
delete from CHITIETDH
insert into CHITIETDH(MAVOUCHER,MADH,SOLUONGVOUCHER) values('V0001','DH0001',1)
insert into CHITIETDH(MAVOUCHER,MADH,SOLUONGVOUCHER) values('V0003','DH0001',3)
insert into CHITIETDH(MAVOUCHER,MADH,SOLUONGVOUCHER) values('V0004','DH0001',5)




create procedure LoadOrderByMaDH
(
	@madh varchar(10)
)
as
begin
	select * from ORDERS where MADH = @madh
end
drop proc LoadOrderByUsername
create procedure LoadOrderByUsername
(
	@username varchar(10)
)																			
as
begin
	select MADH,USERNAME,FORMAT(NGAYTAODH,'dd-MM-yyyy') as NgayTao,HINHTHUCTT,TINHTRANGTT,TRANGTHAIDH,HOTENNGUOIMUA,SDT,DIACHIGIAOHANG,SOTKNH,TENCHUTK,NOTE,FORMAT(NGAYTHANHTOAN,'dd-MM-yyyy') as NgayThanhToan
	from ORDERS where USERNAME = @username
end

create procedure LoadCTDHByMaDH
(
	@madh varchar(10)
)
as
begin
	select * from CHITIETDH where MADH = @madh
end
drop table VOUCHER
create table VOUCHER (
   MAVOUCHER            varchar(100)         not null,
   MADM                 varchar(100)         null,
   TENVOUCHER           nvarchar(200)        not null,
   THONGTIN             nvarchar(300)        not null,
   SOLUONGCON           bigint               not null,
   GIABAN               float                not null,
   THOIHANVOUCHER       varchar(100)         not null,
   SOLUONGDABAN         bigint               not null,
   HINHANHVOUCHER       varchar(200)         null,
   DIEUKIEN             nvarchar(800)        not null,
   DIEMNOIBAT           nvarchar(800)        not null,
   constraint PK_VOUCHER primary key nonclustered (MAVOUCHER)
)
-- Voucher Ăn Uống --
insert into VOUCHER values ('AU001','AU',N'Canh Chua Cá Lóc',N'Canh chua cá lóc được nấu từ nhà hàng Huy-STP giàu chất dinh dưỡng','10','99000','2014/12/05 - 2015/02/05','45',null,N'Hết ngày 05/12/2014/',N'ngon bổ rẻ')
insert into VOUCHER values ('DL002','DL',N'Biển Vũng Tàu',N'Chuyến đi du lịch Vũng Tàu sang trọng, bla bla','20','1696696','2014/12/05 - 2015/02/05','35',null,N'Hết ngày 30/12/2014/',N'Nhanh chóng tiện lợi')
insert into VOUCHER values ('DL003','DL',N'Nghỉ Dưỡng Resort HuySTP',N'Nghỉ dưỡng lại Resort HuySTP rộng lớn nhất Đông Nam Á, bla bla','40','969069','2014/12/05 - 2015/02/05','40',null,N'Hết ngày 08/1/2015',N'Vui vẻ thoáng mát')
insert into VOUCHER values ('AU004','AU',N'Canh Chua Cá Lóc',N'Canh chua cá lóc được nấu từ nhà hàng Huy-STP giàu chất dinh dưỡng','10','99000','2014/12/05 - 2015/02/05','45',null,N'Hết ngày 05/12/2014/',N'ngon bổ rẻ')
insert into VOUCHER values ('DL005','DL',N'Biển Vũng Tàu',N'Chuyến đi du lịch Vũng Tàu sang trọng, bla bla','20','1696696','2014/12/05 - 2015/02/05','35',null,N'Hết ngày 30/12/2014/',N'Nhanh chóng tiện lợi')
insert into VOUCHER values ('DL006','DL',N'Nghỉ Dưỡng Resort HuySTP',N'Nghỉ dưỡng lại Resort HuySTP rộng lớn nhất Đông Nam Á, bla bla','40','969069','2014/12/05 - 2015/02/05','40',null,N'Hết ngày 08/1/2015',N'Vui vẻ thoáng mát')
select * from VOUCHER
----- 
create procedure LoadDetailVoucher
as
begin
	select * from VOUCHER
end
------ LoadVoucherByDM ------
create procedure LoadVoucherByDM
  @MADM varchar(100)
as
begin
	select * from VOUCHER where MADM = @MADM
end
------ DeleteVoucherByMAVOUCHER -------
drop proc DeleteVoucherByMAVOUCHER
create procedure DeleteVoucherByMAVOUCHER
	@MAVOUCHER varchar(100)
as 
begin 
	delete  from VOUCHER where MAVOUCHER = @MAVOUCHER
end
go
------- GetID_Voucher ----
drop proc GetID_VoucherByDL
create proc GetID_VoucherByDL

as
begin
	select max(MAVOUCHER) from VOUCHER where MADM = 'DL'
end
go
create proc GetID_VoucherByAU
as
begin
	select max(MAVOUCHER) from VOUCHER where MADM = 'AU'
end
go

create proc GetID_VoucherBySP
as
begin
	select max(MAVOUCHER) from VOUCHER where MADM = 'SP'
end
go
create proc GetID_VoucherByGT
as
begin
	select max(MAVOUCHER) from VOUCHER where MADM = 'GT'
end
go
select * from VOUCHER
----- CheckMAVoucher ----- 
drop proc CheckVoucher
create procedure CheckVoucher
	@tenvoucher nvarchar(200),
	@thongtin nvarchar(300),
	@soluong bigint,
	@giaban float,
	@thoihanvoucher varchar(100),
	@soluongdaban bigint,
	@hinhanh varchar(200),
	@dieukien nvarchar(800),
	@diemnoibat nvarchar(800)
as
begin
	select * 
	from VOUCHER
	where TENVOUCHER = @tenvoucher and THONGTIN = @thongtin 
	and SOLUONGCON = @soluong and GIABAN = @giaban and THOIHANVOUCHER = @thoihanvoucher
	and SOLUONGDABAN = @soluongdaban and HINHANHVOUCHER = @hinhanh and DIEUKIEN = @dieukien
	and DIEMNOIBAT = @diemnoibat  
end

----- InsertVoucher ------

create procedure InsertVoucher
(
	@mavoucher varchar(100),
	@madm varchar(100),
	@tenvoucher nvarchar(200),
	@thongtin nvarchar(300),
	@soluong bigint,
	@giaban float,
	@thoihanvoucher varchar(100),
	@soluongdaban bigint,
	@hinhanh varchar(200),
	@dieukien nvarchar(800),
	@diemnoibat nvarchar(800)
)
as
begin
	insert into VOUCHER (MAVOUCHER,MADM,TENVOUCHER,THONGTIN,SOLUONGCON,GIABAN,THOIHANVOUCHER,SOLUONGDABAN,HINHANHVOUCHER,DIEUKIEN,DIEMNOIBAT) 
	values (@mavoucher,@madm,@tenvoucher,@thongtin,@soluong,@giaban,@thoihanvoucher,@soluongdaban,@hinhanh,@dieukien,@diemnoibat)
end
