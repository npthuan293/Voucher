use Voucher


--CHUCVU
select * from PHANQUYEN
insert into PHANQUYEN(MAQUYEN,TENQUYEN) values('Q001',N'Admin')
insert into PHANQUYEN(MAQUYEN,TENQUYEN) values('Q002',N'Nhân viên bán hàng')
insert into PHANQUYEN(MAQUYEN,TENQUYEN) values('Q003',N'Member')

--ACCOUNT
select * from TAIKHOAN
insert into TAIKHOAN (USERNAME,PASSWORD,TRANGTHAITK,MAQUYEN,TGDNLANCUOI) values ('admin','123456','On','Q001','20:10:01 2014/12/30')
insert into TAIKHOAN (USERNAME,PASSWORD,TRANGTHAITK,MAQUYEN,TGDNLANCUOI) values ('member','123456','On','Q003','20:10:01 2014/12/30')
insert into TAIKHOAN (USERNAME,PASSWORD,TRANGTHAITK,MAQUYEN,TGDNLANCUOI) values ('nvbh','123456','On','Q002','20:10:01 2014/12/30')
insert into TAIKHOAN (USERNAME,PASSWORD,TRANGTHAITK,MAQUYEN,TGDNLANCUOI) values ('xukavo','123456','On','Q003','20:10:01 2014/12/30')

--MEMBER
select * from MEMBER
insert into MEMBER (MA_MEM,USERNAME,HOTEN_MEM,DIACHI_MEM,SDT_MEM,EMAIL_MEM,NGAYSINH_MEM,CMND_MEM,NGAYDKI,GIOITINH) values ('M0001','member',N'Nguyễn Phú Thuận',N'Thành phố Hồ Chí Minh','0982567431','thuannp293@gmail.com','1994-03-29','264439148','2014/11/1','Nam')
insert into MEMBER(Ma_Mem,Username,HoTen_Mem,DiaChi_Mem,SDT_Mem,Email_Mem,NgaySinh_Mem,CMND,NgayDKi,TGDNLanCuoi,GioiTinh) values ('M0002','xukavo',N'Dương Cao Chí',N'Thành phố Hồ Chí Minh','0982567431','phongdk@gm.uit.edu.vn','1994/1/1','264439148','2014/11/3','7:10:00 2014/12/30','Nam')
