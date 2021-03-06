CREATE DATABASE HOPISTAL_MANAGEMENT
USE HOPISTAL_MANAGEMENT
GO


CREATE TABLE PHONGKHOA(
	ID_PHONG_KHOA INT IDENTITY(1,1) PRIMARY KEY
)

CREATE TABLE BENHNHAN(
	ID_BENH_NHAN INT IDENTITY(1,1) PRIMARY KEY,
	HO_TEN VARCHAR(100) NOT NULL,
	NGAY_SINH DATE NOT NULL,
	SDT INT NOT NULL,
	DIA_CHI VARCHAR(500) NOT NULL,
	CMND INT NOT NULL,
	TON_GIAO BIT NOT NULL,
	DAN_TOC VARCHAR(100) NOT NULL,
	GIOI_TINH VARCHAR(100) NOT NULL,
	DOI_TUONG_THU_PHI VARCHAR(100) NOT NULL, /*MIỄN PHÍ OR BH Y TẾ OR THU PHÍ OR KHÁC*/
	ANH_BENHNHAN VARBINARY(MAX),
	MA_BHYT INT,
	MA_THAN_NHAN INT,
	ID_LAM_SANG INT,
	ID_THUTUC INT,
)

CREATE TABLE THUTUC_NHAPVIEN(
	ID_THUTUC INT IDENTITY(1,1) PRIMARY KEY,
	HINH_THUC_NHAP_VIEN VARCHAR(100) NOT NULL, /*CẤP CỨU OR ĐIỀU TRỊ OR CHUYỂN VIỆN OR KHÁM BỆNH*/
	TIEN_SU_BENH VARCHAR(100),
)

CREATE TABLE LAM_SANG(
	ID_LAM_SANG INT IDENTITY(1,1) PRIMARY KEY,
	TG_NHAP_VIEN DATETIME NOT NULL,
	TINH_TRANG_NHAP_VIEN VARCHAR(500) NOT NULL,
	CHUYEN_KHOA VARCHAR(100) NOT NULL,
	BAC_SI_CHINH INT,
	Y_TA1 INT,
	Y_TA2 INT,
	DIEU_DUONG1 INT,
	DIEU_DUONG2 INT,
	CHUAN_DOAN_LAN1 VARCHAR(1000),
	CHUAN_DOAN_LAN2 VARCHAR(1000),


)
