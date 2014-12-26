use WebVoucher

---CheckLogin---
drop proc CheckLogin
create procedure CheckLogin
(
	@ausername varchar(20),
	@apassword varchar(50)
)
as
begin
	select * from TAIKHOAN where USERNAME = @ausername and PASSWORD = @apassword and TRANGTHAITK=N'Đang hoạt động'
end
GO

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
						PASSWORD = @pass
						where USERNAME = @username
end
go


---GetID_MEMBER---

create procedure GetID_MEMBER
as
begin
	select max(MA_MEM) from MEMBER
end
go


---GetID_Staff---
create proc GetID_Staff
as
begin
	select max(MANV) from NHANVIEN
end
go


---InsertAccountMember---

create procedure InsertAccountMember
(
	@username varchar(15),
	@password varchar(20)
)
as
begin
	insert into TAIKHOAN (USERNAME,MAQUYEN,PASSWORD,TRANGTHAITK) values (@username,'Q003',@password,N'Đang hoạt động')
end
go


---InsertAccountStaff---
create procedure InsertAccountStaff
(
	@username varchar(15),
	@password varchar(20)
)
as
begin
	insert into TAIKHOAN (USERNAME,MAQUYEN,PASSWORD,TRANGTHAITK) values (@username,'Q002',@password,'On')
end
go


---InsertMember---
create procedure InsertMember
(
	@ma_mem varchar(10),
	@username varchar(20),
	@hoten nvarchar(50),
	@diachi nvarchar(100),
	@sdt varchar(20),
	@email varchar(50),
	@ngaysinh date,
	@cmnd_mem varchar(20),
	@ngaydk date,
	@gioitinh nvarchar(5)
)
as
begin
	insert into MEMBER (MA_MEM,USERNAME,HOTEN_MEM,DIACHI_MEM,SDT_MEM,EMAIL_MEM,NGAYSINH_MEM,CMND_MEM,NGAYDKI,GIOITINH) 
	values (@ma_mem,@username,@hoten,@diachi,@sdt,@email,@ngaysinh,@cmnd_mem,@ngaydk,@gioitinh)
end


---InsertStaff---
create procedure InsertStaff
(
	@ma_nv varchar(10),
	@username varchar(20),
	@hoten nvarchar(50),
	@diachi nvarchar(100),
	@sdt varchar(20),
	@email varchar(50),
	@ngaysinh date,
	@cmnd_nv varchar(20),
	@ngayvaolam date,
	@gioitinh nvarchar(5)
)
as
begin
	insert into NHANVIEN(MANV,USERNAME,HOTENNV,DIACHI_NV,SDT_NV,EMAIL_NV,NGAYSINH_NV,CMND_NV,NGAYVAOLAM,GIOITINH) 
	values (@ma_nv,@username,@hoten,@diachi,@sdt,@email,@ngaysinh,@cmnd_nv,@ngayvaolam,@gioitinh)
end


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
	@cmnd_mem varchar(20),
	@sdt varchar(20)
)
as 
begin
	update MEMBER set 
						HOTEN_MEM = @hoten,
						EMAIL_MEM = @email,
						GIOITINH = @giotinh,
						NGAYSINH_MEM = @ngaysinh,
						DIACHI_MEM = @diachi,
						CMND_MEM = @cmnd_mem,
						SDT_MEM = @sdt											
						where USERNAME = @username
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
	@cmnd_mem varchar(20),
	@sdt varchar(20),
	@ngayvaolam date
)
as
begin  
	update NHANVIEN set 
						HOTENNV = @hoten,
						EMAIL_NV = @email,
						GIOITINH = @gioitinh,
						NGAYSINH_NV = @ngaysinh,
						DIACHI_NV = @diachi,
						CMND_NV = @cmnd_mem,
						SDT_NV = @sdt,
						NGAYVAOLAM = @ngayvaolam											
						where USERNAME = @username
end


----------CheckAccount----------
drop proc CheckAccount
create procedure CheckAccount
	@ausername varchar(50)
as
begin
	select * 
	from TAIKHOAN
	where USERNAME = @ausername
end


----------LastLogin----------
drop proc LastLogin
create procedure LastLogin
	@username varchar(20),
	@TGDNLanCuoi datetime
as
begin
	update TAIKHOAN
	set TGDNLANCUOI = @TGDNLanCuoi
	where USERNAME = @ausername
end


----------UpdateKhoa----------
drop proc UpdateKhoa
create procedure UpdateKhoa
	@ausername varchar(50)
as
begin
	update TAIKHOAN 
	set TRANGTHAITK = N'Đang hoạt động'
	where USERNAME = @ausername
end

----------UpdateKhoa2----------
drop proc UpdateKhoa2
create procedure UpdateKhoa2
	@ausername varchar(50)
as
begin
	update TAIKHOAN 
	set TRANGTHAITK = N'Ngừng hoạt động'	
	where USERNAME = @ausername
end


----------LoadAccount----------
drop proc LoadAccount
create procedure LoadAccount
as
begin
	select * from TAIKHOAN
end


----------LoadMemberAccount----------
drop proc LoadMemberAccount
create procedure LoadMemberAccount
as
begin
	select MA_MEM,USERNAME,HOTEN_MEM,DIACHI_MEM,SDT_MEM,EMAIL_MEM,FORMAT(NGAYSINH_MEM,'dd-MM-yyyy') as NgaySinh,CMND_MEM, FORMAT(NGAYDKI,'dd-MM-yyyy') as NgayDK,GIOITINH
	from MEMBER
end

----------LoadMemberByUsername----------
drop proc LoadMemberByUsername
create procedure LoadMemberByUsername
  @username varchar(20)
as
begin
	select * from MEMBER where USERNAME = @username
end


----------LoadStaffAccount----------
drop proc LoadStaffAccount
create procedure LoadStaffAccount
as
begin
	select N.MANV,N.USERNAME,N.HOTENNV,N.DIACHI_NV,N.SDT_NV,N.EMAIL_NV,FORMAT(NGAYSINH_NV,'dd-MM-yyyy') as NgaySinh,N.CMND_NV, FORMAT(NGAYVAOLAM,'dd-MM-yyyy') as NgayVL,N.GIOITINH,T.MAQUYEN
	from NHANVIEN N,TAIKHOAN T
	where N.USERNAME = T.USERNAME and T.MAQUYEN='Q002'
end


----------LoadStaffByUsername----------
drop proc LoadStaffByUsername
create procedure LoadStaffByUsername
  @username varchar(20)
as
begin
	select * from NHANVIEN where USERNAME = @username
end


----------DeleteAccount----------
create procedure DeleteAccount
	@username varchar(20)
as
begin
	delete from TAIKHOAN where USERNAME = @username
end


----------DeleteStaff----------
drop proc DeleteStaff
create procedure DeleteStaff
	@username varchar(20)
as 
begin 
	delete  from NHANVIEN where USERNAME = @username
end


---SearchMember---
create procedure SearchMember
	@input nvarchar(20)
as 
begin
	select MA_MEM,USERNAME,HOTEN_MEM,DIACHI_MEM,SDT_MEM,EMAIL_MEM,FORMAT(NGAYSINH_MEM,'dd-MM-yyyy') as NgaySinh,CMND_MEM, FORMAT(NGAYDKI,'dd-MM-yyyy') as NgayDK,GIOITINH
	from MEMBER 
	where ((MA_MEM like (@input + '%') or MA_MEM like ('%' + @input) or MA_MEM like ('%' + @input + '%')) ) or 
	((USERNAME like (@input + '%') or USERNAME like ('%' + @input) or USERNAME like ('%' + @input + '%')) ) or 
	((HOTEN_MEM like (@input + '%') or HOTEN_MEM like ('%' + @input) or HOTEN_MEM like ('%' + @input + '%')) ) or 
	((DIACHI_MEM like (@input + '%') or DIACHI_MEM like ('%' + @input) or DIACHI_MEM like ('%' + @input + '%')) ) or
	((SDT_MEM like (@input + '%') or SDT_MEM like ('%' + @input) or SDT_MEM like ('%' + @input + '%')) ) or 
	((EMAIL_MEM like (@input + '%') or EMAIL_MEM like ('%' + @input) or EMAIL_MEM like ('%' + @input + '%')) ) or 
	((NGAYSINH_MEM like (@input + '%') or NGAYSINH_MEM like ('%' + @input) or NGAYSINH_MEM like ('%' + @input + '%')) ) or 
	((CMND_MEM like (@input + '%') or CMND_MEM like ('%' + @input) or CMND_MEM like ('%' + @input + '%')) ) or 
	((NGAYDKI like (@input + '%') or NGAYDKI like ('%' + @input) or NGAYDKI like ('%' + @input + '%')) ) or 
	((GIOITINH like (@input + '%') or GIOITINH like ('%' + @input) or GIOITINH like ('%' + @input + '%')) )
end


---SearchStaff---
drop procedure SearchStaff
create procedure SearchStaff
	@input nvarchar(20)
as 
begin
	select MANV,USERNAME,HOTENNV,DIACHI_NV,SDT_NV,EMAIL_NV,FORMAT(NGAYSINH_NV,'dd-MM-yyyy') as NgaySinh,CMND_NV,GIOITINH
	from (	select *
			from NHANVIEN N
			where N.USERNAME in
							(select T.USERNAME
							from TAIKHOAN T
							where MAQUYEN='Q002')) as NHANVIENTEMP
	where ((MANV like (@input + '%') or MANV like ('%' + @input) or MANV like ('%' + @input + '%')) ) or 
	((USERNAME like (@input + '%') or USERNAME like ('%' + @input) or USERNAME like ('%' + @input + '%')) ) or 
	((HOTENNV like (@input + '%') or HOTENNV like ('%' + @input) or HOTENNV like ('%' + @input + '%')) ) or 
	((DIACHI_NV like (@input + '%') or DIACHI_NV like ('%' + @input) or DIACHI_NV like ('%' + @input + '%')) ) or
	((SDT_NV like (@input + '%') or SDT_NV like ('%' +@input) or SDT_NV like ('%' + @input + '%')) ) or 
	((EMAIL_NV like (@input + '%') or EMAIL_NV like ('%' +@input) or EMAIL_NV like ('%' + @input + '%')) ) or 
	((NGAYSINH_NV like (@input + '%') or NGAYSINH_NV like ('%' + @input) or NGAYSINH_NV like ('%' + @input + '%')) ) or 
	((CMND_NV like (@input + '%') or CMND_NV like ('%' + @input) or CMND_NV like ('%' + @input + '%')) ) or 
	((GIOITINH like (@input + '%') or GIOITINH like ('%' + @input) or GIOITINH like ('%' + @input + '%')) )
end


---SearchOrder---
create procedure SearchOrder
	@input nvarchar(20)
as 
begin
	select MADH,USERNAME,FORMAT(NGAYTAODH,'dd-MM-yyyy') as NgayTaoDH,HINHTHUCTT,TINHTRANGTT,TRANGTHAIDH,HOTENNGUOIMUA,SDT,DIACHIGIAOHANG,SOTKNH,TENCHUTK,NOTE,FORMAT(NGAYTHANHTOAN,'dd-MM-yyyy') as NgayThanhToan
	from DONHANG 
	where ((MADH like (@input + '%') or MADH like ('%' + @input) or MADH like ('%' + @input + '%')) ) or 
	((USERNAME like (@input + '%') or USERNAME like ('%' + @input) or USERNAME like ('%' + @input + '%')) ) or 
	((NGAYTAODH like (@input + '%') or NGAYTAODH like ('%' + @input) or NGAYTAODH like ('%' + @input + '%')) ) or 
	((HINHTHUCTT like (@input + '%') or HINHTHUCTT like ('%' + @input) or HINHTHUCTT like ('%' + @input + '%')) ) or
	((TINHTRANGTT like (@input + '%') or TINHTRANGTT like ('%' + @input) or TINHTRANGTT like ('%' + @input + '%')) ) or 
	((TRANGTHAIDH like (@input + '%') or TRANGTHAIDH like ('%' + @input) or TRANGTHAIDH like ('%' + @input + '%')) ) or 
	((HOTENNGUOIMUA like (@input + '%') or HOTENNGUOIMUA like ('%' + @input) or HOTENNGUOIMUA like ('%' + @input + '%')) ) or 
	((SDT like (@input + '%') or SDT like ('%' + @input) or SDT like ('%' + @input + '%')) ) or 
	((DIACHIGIAOHANG like (@input + '%') or DIACHIGIAOHANG like ('%' + @input) or DIACHIGIAOHANG like ('%' + @input + '%')) ) or 
	((SOTKNH like (@input + '%') or SOTKNH like ('%' + @input) or SOTKNH like ('%' + @input + '%')) ) or 
	((TENCHUTK like (@input + '%') or TENCHUTK like ('%' + @input) or TENCHUTK like ('%' + @input + '%')) ) or 
	((NOTE like (@input + '%') or NOTE like ('%' + @input) or NOTE like ('%' + @input + '%')) ) or 
	((NGAYTHANHTOAN like (@input + '%') or NGAYTHANHTOAN like ('%' + @input) or NGAYTHANHTOAN like ('%' + @input + '%')) ) 
end


---SearchOrderByUsername---

create procedure SearchOrderByUsername
	@username varchar(20),
	@input nvarchar(20)
as 
begin
	select MADH,USERNAME,FORMAT(NGAYTAODH,'dd-MM-yyyy') as NgayTaoDH,HINHTHUCTT,TINHTRANGTT,TRANGTHAIDH,HOTENNGUOIMUA,SDT,DIACHIGIAOHANG,SOTKNH,TENCHUTK,NOTE,FORMAT(NGAYTHANHTOAN,'dd-MM-yyyy') as NgayThanhToan
	from DONHANG 
	where 
	(((MADH like (@input + '%') or MADH like ('%' + @input) or MADH like ('%' + @input + '%')) ) or  
	((NGAYTAODH like (@input + '%') or NGAYTAODH like ('%' + @input) or NGAYTAODH like ('%' + @input + '%')) ) or 
	((HINHTHUCTT like (@input + '%') or HINHTHUCTT like ('%' + @input) or HINHTHUCTT like ('%' + @input + '%')) ) or
	((TINHTRANGTT like (@input + '%') or TINHTRANGTT like ('%' + @input) or TINHTRANGTT like ('%' + @input + '%')) ) or 
	((TRANGTHAIDH like (@input + '%') or TRANGTHAIDH like ('%' + @input) or TRANGTHAIDH like ('%' + @input + '%')) ) or 
	((HOTENNGUOIMUA like (@input + '%') or HOTENNGUOIMUA like ('%' + @input) or HOTENNGUOIMUA like ('%' + @input + '%')) ) or 
	((SDT like (@input + '%') or SDT like ('%' + @input) or SDT like ('%' + @input + '%')) ) or 
	((DIACHIGIAOHANG like (@input + '%') or DIACHIGIAOHANG like ('%' + @input) or DIACHIGIAOHANG like ('%' + @input + '%')) ) or 
	((SOTKNH like (@input + '%') or SOTKNH like ('%' + @input) or SOTKNH like ('%' + @input + '%')) ) or 
	((TENCHUTK like (@input + '%') or TENCHUTK like ('%' + @input) or TENCHUTK like ('%' + @input + '%')) ) or 
	((NOTE like (@input + '%') or NOTE like ('%' + @input) or NOTE like ('%' + @input + '%')) ) or 
	((NGAYTHANHTOAN like (@input + '%') or NGAYTHANHTOAN like ('%' + @input) or NGAYTHANHTOAN like ('%' + @input + '%')) ) )
	and USERNAME in (	select USERNAME 
	from DONHANG
	where USERNAME =@username)
end

---LoadOrder---
create procedure LoadOrder
as
begin
	select *
	from DONHANG
end


---LoadOrderByMaDH---

create procedure LoadOrderByMaDH
(
	@madh varchar(10)
)
as
begin
	select MADH,USERNAME,FORMAT(NGAYTAODH,'dd-MM-yyyy') as NgayTaoDH,HINHTHUCTT,TINHTRANGTT,TRANGTHAIDH,HOTENNGUOIMUA,SDT,DIACHIGIAOHANG,SOTKNH,TENCHUTK,NOTE,FORMAT(NGAYTHANHTOAN,'dd-MM-yyyy') as NgayThanhToan
	from DONHANG
	where MADH = @madh
end


---LoadOrderByUsername---
create procedure LoadOrderByUsername
(
	@username varchar(10)
)
as
begin
	select MADH,USERNAME,FORMAT(NGAYTAODH,'dd-MM-yyyy') as NgayTaoDH,HINHTHUCTT,TINHTRANGTT,TRANGTHAIDH,HOTENNGUOIMUA,SDT,DIACHIGIAOHANG,SOTKNH,TENCHUTK,NOTE,FORMAT(NGAYTHANHTOAN,'dd-MM-yyyy') as NgayThanhToan
	from DONHANG
	where USERNAME = @username
end


---LoadVOUCHERFromCTHD
create procedure LoadVOUCHERFromCTHD
(
	@madh varchar(20)
)
as
begin
	select * 
	from VOUCHER V
	where MAVOUCHER in  (	select MAVOUCHER
				from CHITIETDH C
				where C.MADH = @madh
				)
end
		

---LoadCTDHByMADH---
drop procedure LoadCTDHByMADH
create procedure LoadCTDHByMADH
(
	@madh varchar(20)
)
as
begin
	select *
	from CHITIETDH
	where MADH = @madh
end