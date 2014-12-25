/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     12/22/2014 9:14:41 PM                        */
/*==============================================================*/
Create database WebVoucher
Use WebVoucher
Go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BINHLUAN') and o.name = 'FK_BINHLUAN_CUA_VOUCHER')
alter table BINHLUAN
   drop constraint FK_BINHLUAN_CUA_VOUCHER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BINHLUAN') and o.name = 'FK_BINHLUAN_VIET_TAIKHOAN')
alter table BINHLUAN
   drop constraint FK_BINHLUAN_VIET_TAIKHOAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETDH') and o.name = 'FK_CHITIETD_CHITIETDH_VOUCHER')
alter table CHITIETDH
   drop constraint FK_CHITIETD_CHITIETDH_VOUCHER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETDH') and o.name = 'FK_CHITIETD_CHITIETDH_DONHANG')
alter table CHITIETDH
   drop constraint FK_CHITIETD_CHITIETDH_DONHANG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DONHANG') and o.name = 'FK_DONHANG_TAO_TAIKHOAN')
alter table DONHANG
   drop constraint FK_DONHANG_TAO_TAIKHOAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MEMBER') and o.name = 'FK_MEMBER_CO1_TAIKHOAN')
alter table MEMBER
   drop constraint FK_MEMBER_CO1_TAIKHOAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHANVIEN') and o.name = 'FK_NHANVIEN_CO2_TAIKHOAN')
alter table NHANVIEN
   drop constraint FK_NHANVIEN_CO2_TAIKHOAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TAIKHOAN') and o.name = 'FK_TAIKHOAN_DUOC_PHANQUYE')
alter table TAIKHOAN
   drop constraint FK_TAIKHOAN_DUOC_PHANQUYE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('THONGTINKM') and o.name = 'FK_THONGTIN_THUOC2_DANHMUC')
alter table THONGTINKM
   drop constraint FK_THONGTIN_THUOC2_DANHMUC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VOUCHER') and o.name = 'FK_VOUCHER_THUOC1_DANHMUC')
alter table VOUCHER
   drop constraint FK_VOUCHER_THUOC1_DANHMUC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BINHLUAN')
            and   name  = 'CUA_FK'
            and   indid > 0
            and   indid < 255)
   drop index BINHLUAN.CUA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BINHLUAN')
            and   name  = 'VIET_FK'
            and   indid > 0
            and   indid < 255)
   drop index BINHLUAN.VIET_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BINHLUAN')
            and   type = 'U')
   drop table BINHLUAN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETDH')
            and   name  = 'GOM_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETDH.GOM_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETDH')
            and   name  = 'GOM2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETDH.GOM2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHITIETDH')
            and   type = 'U')
   drop table CHITIETDH
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DANHMUC')
            and   type = 'U')
   drop table DANHMUC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DONHANG')
            and   name  = 'TAO_FK'
            and   indid > 0
            and   indid < 255)
   drop index DONHANG.TAO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DONHANG')
            and   type = 'U')
   drop table DONHANG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MEMBER')
            and   name  = 'CO1_FK'
            and   indid > 0
            and   indid < 255)
   drop index MEMBER.CO1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MEMBER')
            and   type = 'U')
   drop table MEMBER
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHANVIEN')
            and   name  = 'CO2_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHANVIEN.CO2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHANVIEN')
            and   type = 'U')
   drop table NHANVIEN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHANQUYEN')
            and   type = 'U')
   drop table PHANQUYEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TAIKHOAN')
            and   name  = 'DUOC_FK'
            and   indid > 0
            and   indid < 255)
   drop index TAIKHOAN.DUOC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TAIKHOAN')
            and   type = 'U')
   drop table TAIKHOAN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('THONGTINKM')
            and   name  = 'THUOC2_FK'
            and   indid > 0
            and   indid < 255)
   drop index THONGTINKM.THUOC2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('THONGTINKM')
            and   type = 'U')
   drop table THONGTINKM
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VOUCHER')
            and   type = 'U')
   drop table VOUCHER
go

/*==============================================================*/
/* Table: BINHLUAN                                              */
/*==============================================================*/
create table BINHLUAN (
   MABL                 varchar(100)         not null,
   USERNAME             varchar(100)         null,
   MAVOUCHER            varchar(100)         null,
   NOIDUNGBL            nvarchar(800)        null,
   TGBL                 datetime             null,
   constraint PK_BINHLUAN primary key nonclustered (MABL)
)
go

/*==============================================================*/
/* Index: VIET_FK                                               */
/*==============================================================*/
create index VIET_FK on BINHLUAN (
USERNAME ASC
)
go

/*==============================================================*/
/* Index: CUA_FK                                                */
/*==============================================================*/
create index CUA_FK on BINHLUAN (
MAVOUCHER ASC
)
go

/*==============================================================*/
/* Table: CHITIETDH                                             */
/*==============================================================*/
create table CHITIETDH (
   MAVOUCHER            varchar(100)         not null,
   MADH                 varchar(100)         not null,
   SOLUONGVOUCHER       varchar(100)         null,
   constraint PK_CHITIETDH primary key nonclustered (MAVOUCHER, MADH)
)
go

/*==============================================================*/
/* Index: GOM2_FK                                               */
/*==============================================================*/
create index GOM2_FK on CHITIETDH (
MADH ASC
)
go

/*==============================================================*/
/* Index: GOM_FK                                                */
/*==============================================================*/
create index GOM_FK on CHITIETDH (
MAVOUCHER ASC
)
go

/*==============================================================*/
/* Table: DANHMUC                                               */
/*==============================================================*/
create table DANHMUC (
   MADM                 varchar(100)         not null,
   TENDM                nvarchar(100)        not null,
   constraint PK_DANHMUC primary key nonclustered (MADM)
)
go

/*==============================================================*/
/* Table: DONHANG                                               */
/*==============================================================*/
create table DONHANG (
   MADH                 varchar(100)         not null,
   USERNAME             varchar(100)         null,
   NGAYTAODH            datetime             not null,
   HINHTHUCTT           nvarchar(100)        not null,
   TINHTRANGTT          nvarchar(100)        not null,
   TRANGTHAIDH          nvarchar(100)        not null,
   HOTENNGUOIMUA        nvarchar(100)        not null,
   SDT                  varchar(100)         not null,
   DIACHIGIAOHANG       nvarchar(200)        not null,
   SOTKNH               varchar(200)         not null,
   TENCHUTK             nvarchar(100)        not null,
   NOTE                 nvarchar(500)        null,
   NGAYTHANHTOAN        datetime             not null,
   constraint PK_DONHANG primary key nonclustered (MADH)
)
go

/*==============================================================*/
/* Index: TAO_FK                                                */
/*==============================================================*/
create index TAO_FK on DONHANG (
USERNAME ASC
)
go

/*==============================================================*/
/* Table: MEMBER                                                */
/*==============================================================*/
create table MEMBER (
   MA_MEM               varchar(100)         not null,
   USERNAME             varchar(100)         not null,
   HOTEN_MEM            nvarchar(100)        not null,
   DIACHI_MEM           nvarchar(200)        not null,
   SDT_MEM              varchar(100)         not null,
   EMAIL_MEM            varchar(100)         not null,
   NGAYSINH_MEM         datetime             not null,
   CMND_MEM             bigint               not null,
   NGAYDKI              datetime             not null,
   GIOITINH             nvarchar(50)         not null,
   constraint PK_MEMBER primary key nonclustered (MA_MEM)
)
go

/*==============================================================*/
/* Index: CO1_FK                                                */
/*==============================================================*/
create index CO1_FK on MEMBER (
USERNAME ASC
)
go

/*==============================================================*/
/* Table: NHANVIEN                                              */
/*==============================================================*/
create table NHANVIEN (
   MANV                 varchar(100)         not null,
   USERNAME             varchar(100)         not null,
   HOTENNV              nvarchar(100)        not null,
   DIACHI_NV            nvarchar(200)        not null,
   SDT_NV               varchar(100)         not null,
   EMAIL_NV             varchar(100)         not null,
   NGAYSINH_NV          datetime             not null,
   CMND_NV              bigint               not null,
   NGAYVAOLAM           datetime             not null,
   GIOITINH             nvarchar(50)         not null,
   constraint PK_NHANVIEN primary key nonclustered (MANV)
)
go

/*==============================================================*/
/* Index: CO2_FK                                                */
/*==============================================================*/
create index CO2_FK on NHANVIEN (
USERNAME ASC
)
go

/*==============================================================*/
/* Table: PHANQUYEN                                             */
/*==============================================================*/
create table PHANQUYEN (
   MAQUYEN              varchar(100)         not null,
   TENQUYEN             nvarchar(100)        not null,
   constraint PK_PHANQUYEN primary key nonclustered (MAQUYEN)
)
go

/*==============================================================*/
/* Table: TAIKHOAN                                              */
/*==============================================================*/
create table TAIKHOAN (
   USERNAME             varchar(100)         not null,
   MAQUYEN              varchar(100)         null,
   PASSWORD             varchar(100)         not null,
   TRANGTHAITK          nvarchar(100)        null,
   TGDNLANCUOI          datetime             null,
   constraint PK_TAIKHOAN primary key nonclustered (USERNAME)
)
go

/*==============================================================*/
/* Index: DUOC_FK                                               */
/*==============================================================*/
create index DUOC_FK on TAIKHOAN (
MAQUYEN ASC
)
go

/*==============================================================*/
/* Table: THONGTINKM                                            */
/*==============================================================*/
create table THONGTINKM (
   MATTKM               varchar(100)         not null,
   MADM                 varchar(100)         null,
   TENTTKM              nvarchar(200)        not null,
   NOIDUNGKM            nvarchar(500)        not null,
   THOIHANKM            varchar(100)         not null,
   HINHANHTTKM          image                null,
   constraint PK_THONGTINKM primary key nonclustered (MATTKM)
)
go

/*==============================================================*/
/* Index: THUOC2_FK                                             */
/*==============================================================*/
create index THUOC2_FK on THONGTINKM (
MADM ASC
)
go

/*==============================================================*/
/* Table: VOUCHER                                               */
/*==============================================================*/
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
   DIEUKIEN             nvarchar(500)        not null,
   DIEMNOIBAT           nvarchar(100)        not null,
   constraint PK_VOUCHER primary key nonclustered (MAVOUCHER)
)
go

alter table BINHLUAN
   add constraint FK_BINHLUAN_CUA_VOUCHER foreign key (MAVOUCHER)
      references VOUCHER (MAVOUCHER)
go

alter table BINHLUAN
   add constraint FK_BINHLUAN_VIET_TAIKHOAN foreign key (USERNAME)
      references TAIKHOAN (USERNAME)
go

alter table CHITIETDH
   add constraint FK_CHITIETD_CHITIETDH_VOUCHER foreign key (MAVOUCHER)
      references VOUCHER (MAVOUCHER)
go

alter table CHITIETDH
   add constraint FK_CHITIETD_CHITIETDH_DONHANG foreign key (MADH)
      references DONHANG (MADH)
go

alter table DONHANG
   add constraint FK_DONHANG_TAO_TAIKHOAN foreign key (USERNAME)
      references TAIKHOAN (USERNAME)
go

alter table MEMBER
   add constraint FK_MEMBER_CO1_TAIKHOAN foreign key (USERNAME)
      references TAIKHOAN (USERNAME)
go

alter table NHANVIEN
   add constraint FK_NHANVIEN_CO2_TAIKHOAN foreign key (USERNAME)
      references TAIKHOAN (USERNAME)
go

alter table TAIKHOAN
   add constraint FK_TAIKHOAN_DUOC_PHANQUYE foreign key (MAQUYEN)
      references PHANQUYEN (MAQUYEN)
go

alter table THONGTINKM
   add constraint FK_THONGTIN_THUOC2_DANHMUC foreign key (MADM)
      references DANHMUC (MADM)
go

alter table VOUCHER
   add constraint FK_VOUCHER_THUOC1_DANHMUC foreign key (MADM)
      references DANHMUC (MADM)
go

