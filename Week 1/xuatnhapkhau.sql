-- drop database if exists xuatnhapkhau;

create database xuatnhapkhau;

use xuatnhapkhau;

CREATE TABLE PHIEUXUAT (  
    SoPX INT PRIMARY KEY,  
    NgayXuat DATE,  
    DgXuat DECIMAL(10, 2),  
    SlXuat INT  
);

CREATE TABLE PHIEUNHAP (  
    SoPN INT PRIMARY KEY,  
    NgayNhap DATE,  
    SLNhap INT,  
    DGNhap DECIMAL(10, 2)  
);

CREATE TABLE VATTU (  
    MaVTU INT PRIMARY KEY,  
    TenVTU VARCHAR(100)  
);

CREATE TABLE DONDH (  
    SoDH INT PRIMARY KEY,  
    NgayDH DATE,  
    DiaChi VARCHAR(255)  
);

CREATE TABLE NHACC (  
    MaNCC INT PRIMARY KEY,  
    TenNCC VARCHAR(100),  
    DiaChi VARCHAR(255),  
    SDT VARCHAR(15)  
);

CREATE TABLE CUNG_CAP (  
    MaCC INT PRIMARY KEY,  
    SoDH INT,  
    MaNCC INT,  
    FOREIGN KEY (SoDH) REFERENCES DONDH(SoDH),  
    FOREIGN KEY (MaNCC) REFERENCES NHACC(MaNCC)  
);
