--create database FlowerShopManagement

--use FlowerShopManagement

--set dateformat DMY

--create table KHACH_HANG
--(
--	SODT_KH	varchar(11),
--	HOTEN	varchar(40),
--	DIACHI	varchar(50),
--	DOANHSO	money,
--	NGDK	smalldatetime
--)

--select * from KHACH_HANG

--create table NHAN_VIEN
--(
--	MANV			char(5),
--	HOTEN			varchar(40),
--	SODT			varchar(20),
--	NGVL			smalldatetime,
--	USERNAME		varchar(50),
--	USER_PASSWORD	varchar(50),
--	USER_PRIORITY	int default 0 not null,
--	AVATAR			varchar(100)
--)

--create table SAN_PHAM
--(
--	MASP	char(5),
--	TENSP	varchar(40),
--	LOAISP	varchar(50),
--	SU_KIEN varchar(50),
--	MANCC	char(6),
--	GIA		money,
--	HINH_ANH varchar(100)
--)

--create table NHA_CUNG_CAP
--(
--	MANCC	char(6),
--	TENNCC	varchar(40),
--	DIACHI	varchar(50),
--	SODT	varchar(20)
--)

--create table HOA_DON
--(
--	MAHD	char(5),
--	NGHD	smalldatetime,
--	SODT_KH	varchar(11),
--	MANV	char(5),
--	TRIGIA	money,
--	TINHTRANG	varchar(6)
--)

--create table CTHD
--(
--	MAHD	char(5),
--	MASP	char(5),
--	SL		int
--)

--create table TK_LOGIN
--(
--	USERNAME	varchar(50) primary key not null,
--	USER_PASSWORD	varchar(50) not null,
--	USER_PRIORITY	int default 0 not null,
--	MANV		char(5) not null
--) ain't use this no mo.

-- drop table TK_LOGIN

-- add new column
-- alter table SAN_PHAM add HINH_ANH image
alter table CTHD add TONGTRIGIA money

-- alter to NOT NULL
--alter table KHACH_HANG alter column SODT_KH varchar(11) not null

--alter table NHAN_VIEN alter column MANV char(5) not null
--alter table NHAN_VIEN alter column USERNAME varchar(50) not null
--alter table NHAN_VIEN alter column USER_PASSWORD varchar(50) not null

--alter table SAN_PHAM alter column MASP char(5) not null
--alter table SAN_PHAM alter column MANCC char(6) not null

--alter table NHA_CUNG_CAP alter column MANCC char(6) not null

--alter table HOA_DON alter column MAHD char(5) not null
--alter table HOA_DON alter column SODT_KH varchar(11) not null
--alter table HOA_DON alter column MANV char(5) not null

--alter table CTHD alter column MAHD char(5) not null
--alter table CTHD alter column MASP char(5) not null

---- add primary keys
--alter table KHACH_HANG add constraint PK_KHACH_HANG primary key (SODT_KH)

--alter table NHAN_VIEN add constraint PK_NHAN_VIEN primary key (MANV)

--alter table SAN_PHAM add constraint PK_SAN_PHAM primary key (MASP)

--alter table NHA_CUNG_CAP add constraint PK_NHA_CUNG_CAP primary key (MANCC)

--alter table HOA_DON add constraint PK_HOA_DON primary key (MAHD)

--alter table CTHD add constraint PK_CTHD primary key (MAHD, MASP)

---- add foreign keys
--alter table SAN_PHAM add constraint FK_MANCC foreign key (MANCC) references NHA_CUNG_CAP(MANCC)

--alter table HOA_DON add constraint FK_SODT_KH foreign key (SODT_KH) references KHACH_HANG(SODT_KH)
--alter table HOA_DON add constraint FK_MANV foreign key (MANV) references NHAN_VIEN(MANV)

--alter table CTHD add constraint FK_MAHD foreign key (MAHD) references HOA_DON(MAHD)
--alter table CTHD add constraint FK_MASP foreign key (MASP) references SAN_PHAM(MASP)

--alter table TK_LOGIN add constraint FK_MANV_LOGIN foreign key (MANV) references NHAN_VIEN(MANV)

---- select
--select * from TK_LOGIN tk inner join NHAN_VIEN nv on tk.MANV = nv.MANV
--select * from NHAN_VIEN

insert into NHAN_VIEN(MANV, HOTEN, SODT, NGVL, USERNAME, USER_PASSWORD, USER_PRIORITY, AVATAR) values ('NV001','Nguyen Nhu Nhut','0927345678','13/4/2020','nhutnn','4m;_&lNa<8xF.Ht{','1','avatar1.jpg')
insert into NHAN_VIEN(MANV, HOTEN, SODT, NGVL, USERNAME, USER_PASSWORD, USER_PRIORITY, AVATAR) values ('NV002','Le Thi Phi Yen','0987567390','21/4/2020','yenltp','P)7KA6aFHjfSkpSK','0','avatar2.jpg')
insert into NHAN_VIEN(MANV, HOTEN, SODT, NGVL, USERNAME, USER_PASSWORD, USER_PRIORITY, AVATAR) values ('NV003','Vo Van Binh','0997047382','27/4/2020','binhvv','y!5a%Jo5`;N?}4F:','0','avatar3.jpg')
insert into NHAN_VIEN(MANV, HOTEN, SODT, NGVL, USERNAME, USER_PASSWORD, USER_PRIORITY, AVATAR) values ('NV004','Ngo Thanh Tuan','0913758498','24/6/2020','tuannt','bGlNe5Row{Z{GGH@','0','avatar4.jpg')
insert into NHAN_VIEN(MANV, HOTEN, SODT, NGVL, USERNAME, USER_PASSWORD, USER_PRIORITY, AVATAR) values ('NV005','Nguyen Thi Truc Thanh','0918590387','20/7/2020','thanhntt','pq~=N/5NU7bqT%%?','0','avatar5.png')

insert into KHACH_HANG(SODT_KH, HOTEN, DIACHI, DOANHSO, NGDK) values ('0912345678','Tran Ngoc Han','731, Tran Hung Dao, Q5, TpHCM','13060000','22/07/2020')
insert into KHACH_HANG(SODT_KH, HOTEN, DIACHI, DOANHSO, NGDK) values ('0908256478','Do Ngoc Linh','45, Nguyen Canh Chan, Q1, TpHCM','280000','30/07/2020')
insert into KHACH_HANG(SODT_KH, HOTEN, DIACHI, DOANHSO, NGDK) values ('0917325476','Trinh Minh Long','50/34, Le Dai Hanh, Q10, TpHCM','250000','02/10/2020')
insert into KHACH_HANG(SODT_KH, HOTEN, DIACHI, DOANHSO, NGDK) values ('0924610869','Le Nhat Minh','34, Truong Dinh, Q3, TpHCM','21000','28/10/2020')
insert into KHACH_HANG(SODT_KH, HOTEN, DIACHI, DOANHSO, NGDK) values ('0963173896','Vo Hoai Thuong','227, Nguyen Van Cu, Q5, TpHCM','915000','24/11/2020')
insert into KHACH_HANG(SODT_KH, HOTEN, DIACHI, DOANHSO, NGDK) values ('0916783565','Nguyen Van Tam','32/3, Tran Binh Trong, Q5, TpHCM','12500','01/12/2020')
insert into KHACH_HANG(SODT_KH, HOTEN, DIACHI, DOANHSO, NGDK) values ('0908765432','Dinh Thanh An','23/5, Nguyen Trai, Q5, TpHCM','300000','30/12/2020')
insert into KHACH_HANG(SODT_KH, HOTEN, DIACHI, DOANHSO, NGDK) values ('0938435756','Phan Hong Thanh','45/2, An Duong Vuong, Q5, TpHCM','365000','13/12/2020')
insert into KHACH_HANG(SODT_KH, HOTEN, DIACHI, DOANHSO, NGDK) values ('0965476312','Le Ha Vinh','873, Le Hong Phong, Q5, TpHCM','70000','14/01/2021')
insert into KHACH_HANG(SODT_KH, HOTEN, DIACHI, DOANHSO, NGDK) values ('0976890943','Ha Duy Lap','34/34B, Nguyen Trai, Q1, TpHCM','67500','16/01/2021')

insert into NHA_CUNG_CAP (MANCC, TENNCC, DIACHI, SODT) values ('NCC001','Sai Gon - Dam Sen','Nguyen Van Phu, P.5, Q.11, TPHCM','0987654321')
insert into NHA_CUNG_CAP (MANCC, TENNCC, DIACHI, SODT) values ('NCC002','Ho Thi Ky','Hem 52 Ho Thi Ky, P.1, Q.10, TPHCM','0912345678')
insert into NHA_CUNG_CAP (MANCC, TENNCC, DIACHI, SODT) values ('NCC003','Cho hoa Hau Giang','Cau Hau Giang, P.12, Q.6, TPHCM','0976543218')
insert into NHA_CUNG_CAP (MANCC, TENNCC, DIACHI, SODT) values ('NCC004','Cho hoa cong vien 23/9','D.Pham Ngu Lao, P.Pham Ngu Lao, Q.1, TPHCM','0965432187')
insert into NHA_CUNG_CAP (MANCC, TENNCC, DIACHI, SODT) values ('NCC005','Ben Binh Dong','337 Ben Binh Dong, P.13, Q.8, TPHCM','0954321876')

insert into SAN_PHAM(MASP, TENSP, LOAISP, SU_KIEN, MANCC, GIA, HINH_ANH) values ('SP001','Hoa Cuc 1','hoa cuc','new','NCC001','450000','hoa_cuc.jpg')
insert into SAN_PHAM(MASP, TENSP, LOAISP, SU_KIEN, MANCC, GIA, HINH_ANH) values ('SP002','Hoa Dao 1','hoa dao','new','NCC002','750000','hoa_dao.jpg')
insert into SAN_PHAM(MASP, TENSP, LOAISP, SU_KIEN, MANCC, GIA, HINH_ANH) values ('SP003','Hoa Hong 1','hoa hong','love','NCC003','400000','hoa_hong.jpg')
insert into SAN_PHAM(MASP, TENSP, LOAISP, SU_KIEN, MANCC, GIA, HINH_ANH) values ('SP004','Hoa Lan 1','hoa lan','office','NCC004','500000','hoa_lan.jpg')
insert into SAN_PHAM(MASP, TENSP, LOAISP, SU_KIEN, MANCC, GIA, HINH_ANH) values ('SP005','Hoa Ly 1','hoa ly','congrats','NCC005','550000','hoa_ly.jpg')
insert into SAN_PHAM(MASP, TENSP, LOAISP, SU_KIEN, MANCC, GIA, HINH_ANH) values ('SP006','Hoa Mai 1','hoa mai','new','NCC001','600000','hoa_mai.jpg')
insert into SAN_PHAM(MASP, TENSP, LOAISP, SU_KIEN, MANCC, GIA, HINH_ANH) values ('SP007','Hoa Van Tho 1','hoa van tho','condolence','NCC002','450000','hoa_van_tho.png')

insert into HOA_DON(MAHD, NGHD, SODT_KH, MANV, TRIGIA, TINHTRANG) values ('HD001','23/12/2022','0908765432','NV001','1450000', 'Paid')
insert into HOA_DON(MAHD, NGHD, SODT_KH, MANV, TRIGIA, TINHTRANG) values ('HD002','23/12/2022','0908765432','NV002','1400000', 'Unpaid')
insert into HOA_DON(MAHD, NGHD, SODT_KH, MANV, TRIGIA, TINHTRANG) values ('HD003','23/12/2022','0908765432','NV003','1450000', 'Unpaid')
insert into HOA_DON(MAHD, NGHD, SODT_KH, MANV, TRIGIA, TINHTRANG) values ('HD004','23/12/2022','0908765432','NV004','1400000', 'Paid')
insert into HOA_DON(MAHD, NGHD, SODT_KH, MANV, TRIGIA, TINHTRANG) values ('HD005','03/01/2023','0908765432','NV003','1450000', 'Paid')
insert into HOA_DON(MAHD, NGHD, SODT_KH, MANV, TRIGIA, TINHTRANG) values ('HD006','03/01/2023','0908765432','NV002','1400000', 'Paid')
insert into HOA_DON(MAHD, NGHD, SODT_KH, MANV, TRIGIA, TINHTRANG) values ('HD007','22/11/2022','0908765432','NV002','1450000', 'Unpaid')
insert into HOA_DON(MAHD, NGHD, SODT_KH, MANV, TRIGIA, TINHTRANG) values ('HD008','21/10/2022','0908765432','NV003','1400000', 'Unpaid')
insert into HOA_DON(MAHD, NGHD, SODT_KH, MANV, TRIGIA, TINHTRANG) values ('HD009','02/01/2023','0912345678','NV004','1350000', 'Unpaid')
insert into HOA_DON(MAHD, NGHD, SODT_KH, MANV, TRIGIA, TINHTRANG) values ('HD010','23/11/2022','0912345678','NV005','1450000', 'Unpaid')

insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD001','SP001','1','450000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD001','SP002','1','750000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD001','SP003','1','400000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD002','SP003','1','400000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD002','SP004','1','500000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD003','SP001','1','450000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD003','SP003','1','400000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD003','SP005','1','550000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD004','SP004','1','500000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD004','SP005','1','550000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD005','SP002','1','750000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD006','SP004','1','500000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD007','SP003','1','400000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD007','SP004','1','500000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD007','SP005','1','550000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD008','SP003','1','400000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD008','SP005','1','550000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD008','SP007','1','450000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD009','SP002','1','750000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD009','SP004','1','500000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD009','SP008','1','100000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD010','SP003','1','400000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD010','SP006','1','600000')
insert into CTHD(MAHD, MASP, SL, TONGTRIGIA) values ('HD010','SP007','1','450000')
