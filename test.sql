create database test

use test


create table TAIKHOAN 
(
	Username varchar(15) not null,
	Password varchar(50),
	TrangThaiTK nvarchar(30),
	MaQuyen nvarchar(50)
	primary key (username)
)

create table PHANQUYEN
(
	MaQuyen varchar(5),
	TenQuyen nvarchar(50),
	primary key (MaQuyen)
)

drop table MEMBER
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
	TGDNLanCuoi datetime,
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
insert into TAIKHOAN (Username,Password,TrangThaiTK,MaQuyen) values ('admin','123456','On','Q001')
insert into TAIKHOAN (Username,Password,TrangThaiTK,MaQuyen) values ('member','123456','On','Q003')
insert into TAIKHOAN (Username,Password,TrangThaiTK,MaQuyen) values ('nvbh','123456','On','Q002')
insert into TAIKHOAN (Username,Password,TrangThaiTK,MaQuyen) values ('nhkh','123456','On','Q003')
insert into TAIKHOAN (Username,Password,TrangThaiTK,MaQuyen) values ('xukavo','123456','On','Q003')

--CHUCVU
insert into PHANQUYEN(MaQuyen,TenQuyen) values('Q001',N'Admin')
insert into PHANQUYEN(MaQuyen,TenQuyen) values('Q002',N'Nhân viên bán hàng')
insert into PHANQUYEN(MaQuyen,TenQuyen) values('Q003',N'Member')
--MEMBER
insert into MEMBER(Ma_Mem,Username,HoTen_Mem,DiaChi_Mem,SDT_Mem,Email_Mem,NgaySinh_Mem,CMND,NgayDKi,TGDNLanCuoi,GioiTinh) values ('M0001','member',N'Nguyễn Phú Thuận',N'Thành phố Hồ Chí Minh','0982567431','thuannp293@gmail.com','1994-03-29','264439148','2014/11/1','20:10:01 2014/12/30','Nam')
insert into MEMBER(Ma_Mem,Username,HoTen_Mem,DiaChi_Mem,SDT_Mem,Email_Mem,NgaySinh_Mem,CMND,NgayDKi,TGDNLanCuoi,GioiTinh) values ('M0002','xukavo',N'Dương Cao Chí',N'Thành phố Hồ Chí Minh','0982567431','phongdk@gm.uit.edu.vn','1994/1/1','264439148','2014/11/3','7:10:00 2014/12/30','Nam')

--NHANVIEN
insert into NHANVIEN(MaNV,Username,HoTenNV,DiaChi_NV,SDT_NV,Email_NV,NgaySinh_NV,CMND_NV,NgayVaoLam,GioiTinh) values ('NV001','admin',N'Dương Khai Phong',N'Thành phố Hồ Chí Minh','0909123456','phongdk@gm.uit.edu.vn','1983/01/1','264429133','2014/10/2','Nam')
insert into NHANVIEN(MaNV,Username,HoTenNV,DiaChi_NV,SDT_NV,Email_NV,NgaySinh_NV,CMND_NV,NgayVaoLam,GioiTinh) values ('NV002','nvbh',N'Dương Khai Phong',N'Thành phố Hồ Chí Minh','0909123456','phongdk@gm.uit.edu.vn','1988/01/1','264429133','2014/10/10','Nam')
insert into NHANVIEN(MaNV,Username,HoTenNV,DiaChi_NV,SDT_NV,Email_NV,NgaySinh_NV,CMND_NV,NgayVaoLam,GioiTinh) values ('NV003','nhkh',N'Dương Khai Phong',N'Thành phố Hồ Chí Minh','0909123456','phongdk@gm.uit.edu.vn','1986/01/1','264429133','2014/10/10','Nam')


select * from TAIKHOAN
select * from MEMBER
select * from NHANVIEN
delete from TAIKHOAN
delete from MEMBER where Username = 'huyvu'
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
	insert into MEMBER (Ma_Mem,Username,HoTen_Mem,DiaChi_Mem,SDT_Mem,Email_Mem,NgaySinh_Mem,CMND,NgayDKi,TGDNLanCuoi,GioiTinh) 
	values (@ma_mem,@username,@hoten,@diachi,@sdt,@email,@ngaysinh,@CMND,@ngaydk,null,@gioitinh)
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


----------UpdateAccount----------
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
						CMND = @cmnd,
						SDT_Mem = @sdt,
						Email_Mem = @email,
						GioiTinh = @gioitinh,
						NgaySinh_Mem = @ngaysinh,
						DiaChi_Mem = @diachi
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

----------LoadMemberAccount----------
drop proc LoadMemberAccount
create procedure LoadMemberAccount
as
begin
	select Ma_Mem,Username,HoTen_Mem,DiaChi_Mem,SDT_Mem,Email_Mem,FORMAT(NgaySinh_Mem,'dd-MM-yyyy') as NgaySinh,CMND, FORMAT(NgayDKi,'dd-MM-yyyy') as NgayDK,FORMAT(TGDNLanCuoi,'dd-MM-yyyy HH:mm:ss') as DangNhapLanCuoi,GioiTinh
	from MEMBER
end

----------LoadMemberByUsername----------
drop proc LoadMemberByUsername
create procedure LoadMemberByUsername
  @username varchar(20)
as
begin
	select * from MEMBER
end

----------LoadStaffAccount----------
drop proc LoadStaffAccount
create procedure LoadStaffAccount
as
begin
	select MaNV,Username,HoTenNV,DiaChi_NV,SDT_NV,Email_NV,FORMAT(NgaySinh_NV,'dd-MM-yyyy') as NgaySinh,CMND_NV, FORMAT(NgayVaoLam,'dd-MM-yyyy') as NgayVL,GioiTinh from NHANVIEN
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
