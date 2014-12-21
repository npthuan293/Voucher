/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     19/12/2014 09:47:57                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BINHLUAN') and o.name = 'FK_BINHLUAN_RELATIONS_VOUCHER')
alter table BINHLUAN
   drop constraint FK_BINHLUAN_RELATIONS_VOUCHER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BINHLUAN') and o.name = 'FK_BINHLUAN_VIET_TAIKHOAN')
alter table BINHLUAN
   drop constraint FK_BINHLUAN_VIET_TAIKHOAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DONHANG') and o.name = 'FK_DONHANG_TAO_TAIKHOAN')
alter table DONHANG
   drop constraint FK_DONHANG_TAO_TAIKHOAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GOM') and o.name = 'FK_GOM_GOM_DONHANG')
alter table GOM
   drop constraint FK_GOM_GOM_DONHANG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GOM') and o.name = 'FK_GOM_GOM2_VOUCHER')
alter table GOM
   drop constraint FK_GOM_GOM2_VOUCHER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MEMBER') and o.name = 'FK_MEMBER_CO1_TAIKHOAN')
alter table MEMBER
   drop constraint FK_MEMBER_CO1_TAIKHOAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHANVIEN') and o.name = 'FK_NHANVIEN_CO3_TAIKHOAN')
alter table NHANVIEN
   drop constraint FK_NHANVIEN_CO3_TAIKHOAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TAIKHOAN') and o.name = 'FK_TAIKHOAN_DUOC_PHANQUYE')
alter table TAIKHOAN
   drop constraint FK_TAIKHOAN_DUOC_PHANQUYE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VOUCHER') and o.name = 'FK_VOUCHER_THUOC_DANHMUCV')
alter table VOUCHER
   drop constraint FK_VOUCHER_THUOC_DANHMUCV
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BINHLUAN')
            and   name  = 'RELATIONSHIP_9_FK'
            and   indid > 0
            and   indid < 255)
   drop index BINHLUAN.RELATIONSHIP_9_FK
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
            from  sysobjects
           where  id = object_id('DANHMUCVOUCHER')
            and   type = 'U')
   drop table DANHMUCVOUCHER
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
           where  id    = object_id('GOM')
            and   name  = 'GOM2_FK'
            and   indid > 0
            and   indid < 255)
   drop index GOM.GOM2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GOM')
            and   name  = 'GOM_FK'
            and   indid > 0
            and   indid < 255)
   drop index GOM.GOM_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GOM')
            and   type = 'U')
   drop table GOM
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
            and   name  = 'CO3_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHANVIEN.CO3_FK
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
            from  sysobjects
           where  id = object_id('THONGTINKM')
            and   type = 'U')
   drop table THONGTINKM
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VOUCHER')
            and   name  = 'THUOC_FK'
            and   indid > 0
            and   indid < 255)
   drop index VOUCHER.THUOC_FK
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
   USERNAME             varchar(100)         null,
   MAVOUCHER            varchar(100)         null,
   MABL                 varchar(100)         not null,
   NOIDUNGBL            varchar(800)         null,
   TGBL                 datetime             null
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
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_9_FK on BINHLUAN (
MAVOUCHER ASC
)
go

/*==============================================================*/
/* Table: DANHMUCVOUCHER                                        */
/*==============================================================*/
create table DANHMUCVOUCHER (
   MADM                 varchar(100)         not null,
   TENDM                varchar(100)         not null,
   constraint PK_DANHMUCVOUCHER primary key nonclustered (MADM)
)
go

/*==============================================================*/
/* Table: DONHANG                                               */
/*==============================================================*/
create table DONHANG (
   MADH                 varchar(100)         not null,
   USERNAME             varchar(100)         null,
   NGAYTAODH            datetime             not null,
   HINHTHUCTT           varchar(100)         not null,
   TINHTRANGTT          varchar(100)         not null,
   TRANGTHAIDH          varchar(100)         not null,
   HOTENNGUOIMUA        varchar(100)         not null,
   SDT                  bigint               not null,
   DIACHIGIAOHANG       varchar(200)         not null,
   SOTKNH               varchar(200)         not null,
   TENCHUTK             varchar(100)         not null,
   NOTE                 varchar(500)         null,
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
/* Table: GOM                                                   */
/*==============================================================*/
create table GOM (
   MADH                 varchar(100)         not null,
   MAVOUCHER            varchar(100)         not null,
   constraint PK_GOM primary key (MADH, MAVOUCHER)
)
go

/*==============================================================*/
/* Index: GOM_FK                                                */
/*==============================================================*/
create index GOM_FK on GOM (
MADH ASC
)
go

/*==============================================================*/
/* Index: GOM2_FK                                               */
/*==============================================================*/
create index GOM2_FK on GOM (
MAVOUCHER ASC
)
go

/*==============================================================*/
/* Table: MEMBER                                                */
/*==============================================================*/
create table MEMBER (
   MA_MEM               varchar(100)         not null,
   USERNAME             varchar(100)         not null,
   HOTEN_MEM            varchar(100)         not null,
   DIACHI_MEM           varchar(200)         not null,
   SDT_MEM              bigint               not null,
   EMAIL_MEM            varchar(100)         not null,
   NGAYSINH_MEM         datetime             not null,
   CMND_MEM             bigint               not null,
   NGAYDKI              datetime             not null,
   GIOITINH             varchar(50)          not null,
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
   HOTENNV              varchar(100)         not null,
   DIACHI_NV            varchar(200)         not null,
   SDT_NV               bigint               not null,
   EMAIL_NV             varchar(100)         not null,
   NGAYSINH_NV          datetime             not null,
   CMND_NV              bigint               not null,
   NGAYVAOLAM           datetime             not null,
   GIOITINH             varchar(50)          not null,
   constraint PK_NHANVIEN primary key nonclustered (MANV)
)
go

/*==============================================================*/
/* Index: CO3_FK                                                */
/*==============================================================*/
create index CO3_FK on NHANVIEN (
USERNAME ASC
)
go

/*==============================================================*/
/* Table: PHANQUYEN                                             */
/*==============================================================*/
create table PHANQUYEN (
   MAQUYEN              varchar(100)         not null,
   TENQUYEN             varchar(100)         not null,
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
   TRANGTHAITK          varchar(100)         null,
   TGDNLANCUOI          datetime             not null,
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
   TENTTKM              varchar(200)         not null,
   NOIDUNGKM            varchar(500)         not null,
   THOIHANKM            datetime             not null,
   HINHANHTTKM          image                not null,
   constraint PK_THONGTINKM primary key nonclustered (MATTKM)
)
go

/*==============================================================*/
/* Table: VOUCHER                                               */
/*==============================================================*/
create table VOUCHER (
   MAVOUCHER            varchar(100)         not null,
   MADM                 varchar(100)         null,
   TENVOUCHER           varchar(200)         not null,
   THONGTIN             varchar(300)         not null,
   SOLUONGCON           bigint               not null,
   GIABAN               money                not null,
   THOIHANVOUCHER       datetime             not null,
   SOLUONGDABAN         bigint               not null,
   HINHANHVOUCHER       image                not null,
   constraint PK_VOUCHER primary key nonclustered (MAVOUCHER)
)
go

/*==============================================================*/
/* Index: THUOC_FK                                              */
/*==============================================================*/
create index THUOC_FK on VOUCHER (
MADM ASC
)
go

alter table BINHLUAN
   add constraint FK_BINHLUAN_RELATIONS_VOUCHER foreign key (MAVOUCHER)
      references VOUCHER (MAVOUCHER)
go

alter table BINHLUAN
   add constraint FK_BINHLUAN_VIET_TAIKHOAN foreign key (USERNAME)
      references TAIKHOAN (USERNAME)
go

alter table DONHANG
   add constraint FK_DONHANG_TAO_TAIKHOAN foreign key (USERNAME)
      references TAIKHOAN (USERNAME)
go

alter table GOM
   add constraint FK_GOM_GOM_DONHANG foreign key (MADH)
      references DONHANG (MADH)
go

alter table GOM
   add constraint FK_GOM_GOM2_VOUCHER foreign key (MAVOUCHER)
      references VOUCHER (MAVOUCHER)
go

alter table MEMBER
   add constraint FK_MEMBER_CO1_TAIKHOAN foreign key (USERNAME)
      references TAIKHOAN (USERNAME)
go

alter table NHANVIEN
   add constraint FK_NHANVIEN_CO3_TAIKHOAN foreign key (USERNAME)
      references TAIKHOAN (USERNAME)
go

alter table TAIKHOAN
   add constraint FK_TAIKHOAN_DUOC_PHANQUYE foreign key (MAQUYEN)
      references PHANQUYEN (MAQUYEN)
go

alter table VOUCHER
   add constraint FK_VOUCHER_THUOC_DANHMUCV foreign key (MADM)
      references DANHMUCVOUCHER (MADM)
go

