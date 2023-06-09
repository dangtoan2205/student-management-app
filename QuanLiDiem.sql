
Create database DemoJava		
go

Use DemoJava
go
Create table USERS(
TaiKhoan nvarchar(50),
MatKhau nvarchar(50),
ChucNang nvarchar(50)
)
go
Create table SINHVIEN(
MaSV nvarchar(30),
HoTen nvarchar(50),
NgaySinh nvarchar(50),
GioiTinh bit,
DiaChi nvarchar(50),
constraint PK_SINHVIEN primary key (MaSV),
)
go
Create table BANGDIEM
(
MaSV nvarchar(30),
DiemToan1 float,
DiemTriet float,
DiemLi1 float,
DiemTB float,
constraint PK_BANGDIEM primary key (MaSV),
Constraint FK_BANGDIEM_SINHVIEN foreign key (MaSV) references SINHVIEN(MASV),
)
go
Create table MON(
MaMonHoc nvarchar(20),
TenMonHoc nvarchar(20),
)
go
----------------Nhập liệu---------------------

--Users
Insert into Users
values('admin1','123','DT')

Insert into Users
values('admin2','123','GV')


--SinhVien
Insert into SINHVIEN
values('001',N'Đặng Ngọc Toàn','01-01-1997',1,N'Thái Bình')


--BANGDIEM

Insert into BANGDIEM
values('001',7,8.5,8.5,8)

--BangMon

Insert into MON
values('CT01','Toan1')

Insert into MON
values('CT02','Triet')

Insert into MON
values('CT03','Li1')

----select bảng
select * from Users
select * from SinhVien
select * from BangDiem
select * from MON