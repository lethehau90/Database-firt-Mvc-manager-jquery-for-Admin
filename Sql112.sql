USE [master]
GO
/****** Object:  Database [Web_config_v1]    Script Date: 12/12/2016 3:26:28 CH ******/
CREATE DATABASE [Web_config_v1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Web_config_v1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Web_config_v1.mdf' , SIZE = 5184KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Web_config_v1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Web_config_v1_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Web_config_v1] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Web_config_v1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Web_config_v1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Web_config_v1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Web_config_v1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Web_config_v1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Web_config_v1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Web_config_v1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Web_config_v1] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Web_config_v1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Web_config_v1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Web_config_v1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Web_config_v1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Web_config_v1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Web_config_v1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Web_config_v1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Web_config_v1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Web_config_v1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Web_config_v1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Web_config_v1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Web_config_v1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Web_config_v1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Web_config_v1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Web_config_v1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Web_config_v1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Web_config_v1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Web_config_v1] SET  MULTI_USER 
GO
ALTER DATABASE [Web_config_v1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Web_config_v1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Web_config_v1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Web_config_v1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Web_config_v1]
GO
/****** Object:  StoredProcedure [dbo].[Asp_Excell_GetBy_100DHMoiNhat]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE  PROCEDURE [dbo].[Asp_Excell_GetBy_100DHMoiNhat]
AS

SELECT  Top 100   dbo.Donhang.IDhd as 'ID Đơn Hàng', 

dbo.Donhang.Xungho as 'Xưng Hô', 

 dbo.Donhang.Hoten as 'Họ Tên', 
 
   dbo.Donhang.ngaydathang as 'Ngày đặt hàng', 
 
  dbo.Donhang.SDT as 'Số Điện Thoại', 
  
  dbo.Donhang.Mail as 'EMail', 
  
   dbo.Donhang.Diachi as 'Địa Chỉ', 
    
                      dbo.Donhang.GhiChuKhac as 'Ghi Chú Khác', 
                      
                       dbo.CTdonhang.Tensanpham as 'Tên Sản Phẩm', 
                       
                       dbo.CTdonhang.Soluong as 'Số Lượng',  
                       
                       dbo.CTdonhang.Giaban as 'Giá Bán', 

					   dbo.Donhang.Hinhthucgiaohang as 'Phí Dịch Vụ', 
					   
					   dbo.Donhang.Tiengiamgia as 'Tiền Giảm Nhập Mã Giảm', 
                       
                       dbo.CTdonhang.Size as 'Size', 
                       
                        dbo.CTdonhang.Mausac as 'Màu Sắc',  
                        
                        dbo.CTdonhang .Giamthem as 'Giảm Thêm', 
                        
                      dbo.CTdonhang.Soluong * dbo.CTdonhang.Giaban*(100-dbo.CTdonhang .Giamthem)/100 - dbo.CTdonhang .Giamthem AS 'Thành Tiền Chưa Phí DV'
FROM         dbo.Donhang INNER JOIN
                      dbo.CTdonhang ON dbo.Donhang.IDhd = dbo.CTdonhang.IDhd 
                      
                    
                      
                      
                      ORDER BY dbo.Donhang.IDhd DESC







GO
/****** Object:  StoredProcedure [dbo].[Asp_Excell_GetBy_10DHMoiNhat]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[Asp_Excell_GetBy_10DHMoiNhat]
AS

SELECT  Top 10   dbo.Donhang.IDhd as 'ID Đơn Hàng', 

dbo.Donhang.Xungho as 'Xưng Hô', 

 dbo.Donhang.Hoten as 'Họ Tên', 
 
   dbo.Donhang.ngaydathang as 'Ngày đặt hàng', 
 
  dbo.Donhang.SDT as 'Số Điện Thoại', 
  
  dbo.Donhang.Mail as 'EMail', 
  
   dbo.Donhang.Diachi as 'Địa Chỉ', 
    
                      dbo.Donhang.GhiChuKhac as 'Ghi Chú Khác', 
                      
                       dbo.CTdonhang.Tensanpham as 'Tên Sản Phẩm', 
                       
                       dbo.CTdonhang.Soluong as 'Số Lượng',  
                       
                       dbo.CTdonhang.Giaban as 'Giá Bán', 

					   dbo.Donhang.Hinhthucgiaohang as 'Phí Dịch Vụ', 
					   
					   dbo.Donhang.Tiengiamgia as 'Tiền Giảm Nhập Mã Giảm', 
                       
                       dbo.CTdonhang.Size as 'Size', 
                       
                        dbo.CTdonhang.Mausac as 'Màu Sắc',  
                        
                        dbo.CTdonhang .Giamthem as 'Giảm Thêm', 
                        
                      dbo.CTdonhang.Soluong * dbo.CTdonhang.Giaban*(100-dbo.CTdonhang .Giamthem)/100 - dbo.CTdonhang .Giamthem AS 'Thành Tiền Chưa Phí DV'
FROM         dbo.Donhang INNER JOIN
                      dbo.CTdonhang ON dbo.Donhang.IDhd = dbo.CTdonhang.IDhd 
                      
                    
                      
                      
                      ORDER BY dbo.Donhang.IDhd DESC







GO
/****** Object:  StoredProcedure [dbo].[Asp_Excell_GetBy_50DHMoiNhat]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[Asp_Excell_GetBy_50DHMoiNhat]
AS

SELECT  Top 50   dbo.Donhang.IDhd as 'ID Đơn Hàng', 

dbo.Donhang.Xungho as 'Xưng Hô', 

 dbo.Donhang.Hoten as 'Họ Tên', 
 
   dbo.Donhang.ngaydathang as 'Ngày đặt hàng', 
 
  dbo.Donhang.SDT as 'Số Điện Thoại', 
  
  dbo.Donhang.Mail as 'EMail', 
  
   dbo.Donhang.Diachi as 'Địa Chỉ', 
    
                      dbo.Donhang.GhiChuKhac as 'Ghi Chú Khác', 
                      
                       dbo.CTdonhang.Tensanpham as 'Tên Sản Phẩm', 
                       
                       dbo.CTdonhang.Soluong as 'Số Lượng',  
                       
                       dbo.CTdonhang.Giaban as 'Giá Bán', 

					   dbo.Donhang.Hinhthucgiaohang as 'Phí Dịch Vụ', 
					   
					   dbo.Donhang.Tiengiamgia as 'Tiền Giảm Nhập Mã Giảm', 
                       
                       dbo.CTdonhang.Size as 'Size', 
                       
                        dbo.CTdonhang.Mausac as 'Màu Sắc',  
                        
                        dbo.CTdonhang .Giamthem as 'Giảm Thêm', 
                        
                      dbo.CTdonhang.Soluong * dbo.CTdonhang.Giaban*(100-dbo.CTdonhang .Giamthem)/100 - dbo.CTdonhang .Giamthem AS 'Thành Tiền Chưa Phí DV'
FROM         dbo.Donhang INNER JOIN
                      dbo.CTdonhang ON dbo.Donhang.IDhd = dbo.CTdonhang.IDhd 
                      
                    
                      
                      
                      ORDER BY dbo.Donhang.IDhd DESC







GO
/****** Object:  StoredProcedure [dbo].[Asp_Excell_GetBy_5DHMoiNhat]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[Asp_Excell_GetBy_5DHMoiNhat]
AS

SELECT  Top 5   dbo.Donhang.IDhd as 'ID Đơn Hàng', 

dbo.Donhang.Xungho as 'Xưng Hô', 

 dbo.Donhang.Hoten as 'Họ Tên', 
 
   dbo.Donhang.ngaydathang as 'Ngày đặt hàng', 
 
  dbo.Donhang.SDT as 'Số Điện Thoại', 
  
  dbo.Donhang.Mail as 'EMail', 
  
   dbo.Donhang.Diachi as 'Địa Chỉ', 
    
                      dbo.Donhang.GhiChuKhac as 'Ghi Chú Khác', 
                      
                       dbo.CTdonhang.Tensanpham as 'Tên Sản Phẩm', 
                       
                       dbo.CTdonhang.Soluong as 'Số Lượng',  
                       
                       dbo.CTdonhang.Giaban as 'Giá Bán', 

					   dbo.Donhang.Hinhthucgiaohang as 'Phí Dịch Vụ', 
					   
					   dbo.Donhang.Tiengiamgia as 'Tiền Giảm Nhập Mã Giảm', 
                       
                       dbo.CTdonhang.Size as 'Size', 
                       
                        dbo.CTdonhang.Mausac as 'Màu Sắc',  
                        
                        dbo.CTdonhang .Giamthem as 'Giảm Thêm', 
                        
                      dbo.CTdonhang.Soluong * dbo.CTdonhang.Giaban*(100-dbo.CTdonhang .Giamthem)/100 - dbo.CTdonhang .Giamthem AS 'Thành Tiền Chưa Phí DV'
FROM         dbo.Donhang INNER JOIN
                      dbo.CTdonhang ON dbo.Donhang.IDhd = dbo.CTdonhang.IDhd 
                      
                    
                      
                      
                      ORDER BY dbo.Donhang.IDhd DESC







GO
/****** Object:  StoredProcedure [dbo].[Asp_Excell_GetBy_Chuaduyet]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[Asp_Excell_GetBy_Chuaduyet]
AS

SELECT     dbo.Donhang.IDhd as 'ID Đơn Hàng', 

dbo.Donhang.Xungho as 'Xưng Hô', 

 dbo.Donhang.Hoten as 'Họ Tên', 
 
   dbo.Donhang.ngaydathang as 'Ngày đặt hàng', 
 
  dbo.Donhang.SDT as 'Số Điện Thoại', 
  
  dbo.Donhang.Mail as 'EMail', 
  
   dbo.Donhang.Diachi as 'Địa Chỉ', 
    
                      dbo.Donhang.GhiChuKhac as 'Ghi Chú Khác', 
                      
                       dbo.CTdonhang.Tensanpham as 'Tên Sản Phẩm', 
                       
                       dbo.CTdonhang.Soluong as 'Số Lượng',  
                       
                       dbo.CTdonhang.Giaban as 'Giá Bán', 

					   dbo.Donhang.Hinhthucgiaohang as 'Phí Dịch Vụ', 
					   
					   dbo.Donhang.Tiengiamgia as 'Tiền Giảm Nhập Mã Giảm', 
                       
                       dbo.CTdonhang.Size as 'Size', 
                       
                        dbo.CTdonhang.Mausac as 'Màu Sắc',  
                        
                        dbo.CTdonhang .Giamthem as 'Giảm Thêm', 
                        
                      dbo.CTdonhang.Soluong * dbo.CTdonhang.Giaban*(100-dbo.CTdonhang .Giamthem)/100 - dbo.CTdonhang .Giamthem AS 'Thành Tiền Chưa Phí DV'
FROM         dbo.Donhang INNER JOIN
                      dbo.CTdonhang ON dbo.Donhang.IDhd = dbo.CTdonhang.IDhd 
                      
                      where dbo.Donhang.Duyet='0'
                      
                      
                      ORDER BY dbo.Donhang.IDhd DESC







GO
/****** Object:  StoredProcedure [dbo].[Asp_Excell_GetBy_duyet]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[Asp_Excell_GetBy_duyet]
AS

SELECT     dbo.Donhang.IDhd as 'ID Đơn Hàng', 

dbo.Donhang.Xungho as 'Xưng Hô', 

 dbo.Donhang.Hoten as 'Họ Tên', 
 
   dbo.Donhang.ngaydathang as 'Ngày đặt hàng', 
 
  dbo.Donhang.SDT as 'Số Điện Thoại', 
  
  dbo.Donhang.Mail as 'EMail', 
  
   dbo.Donhang.Diachi as 'Địa Chỉ', 
    
                      dbo.Donhang.GhiChuKhac as 'Ghi Chú Khác', 
                      
                       dbo.CTdonhang.Tensanpham as 'Tên Sản Phẩm', 
                       
                       dbo.CTdonhang.Soluong as 'Số Lượng',  
                       
                       dbo.CTdonhang.Giaban as 'Giá Bán', 

					   dbo.Donhang.Hinhthucgiaohang as 'Phí Dịch Vụ', 
					   
					   dbo.Donhang.Tiengiamgia as 'Tiền Giảm Nhập Mã Giảm', 
                       
                       dbo.CTdonhang.Size as 'Size', 
                       
                        dbo.CTdonhang.Mausac as 'Màu Sắc',  
                        
                        dbo.CTdonhang .Giamthem as 'Giảm Thêm', 
                        
                      dbo.CTdonhang.Soluong * dbo.CTdonhang.Giaban*(100-dbo.CTdonhang .Giamthem)/100 - dbo.CTdonhang .Giamthem AS 'Thành Tiền Chưa Phí DV'
FROM         dbo.Donhang INNER JOIN
                      dbo.CTdonhang ON dbo.Donhang.IDhd = dbo.CTdonhang.IDhd 
                      
                      where dbo.Donhang.Duyet='1'
                      
                      
                      ORDER BY dbo.Donhang.IDhd DESC







GO
/****** Object:  StoredProcedure [dbo].[Asp_Excell_GetBy_Today]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[Asp_Excell_GetBy_Today]
AS

SELECT  Top 50   dbo.Donhang.IDhd as 'ID Đơn Hàng', 

dbo.Donhang.Xungho as 'Xưng Hô', 

 dbo.Donhang.Hoten as 'Họ Tên', 
 
   dbo.Donhang.ngaydathang as 'Ngày đặt hàng', 
 
  dbo.Donhang.SDT as 'Số Điện Thoại', 
  
  dbo.Donhang.Mail as 'EMail', 
  
   dbo.Donhang.Diachi as 'Địa Chỉ', 
    
                      dbo.Donhang.GhiChuKhac as 'Ghi Chú Khác', 
                      
                       dbo.CTdonhang.Tensanpham as 'Tên Sản Phẩm', 
                       
                       dbo.CTdonhang.Soluong as 'Số Lượng',  
                       
                       dbo.CTdonhang.Giaban as 'Giá Bán', 

					   dbo.Donhang.Hinhthucgiaohang as 'Phí Dịch Vụ', 
					   
					   dbo.Donhang.Tiengiamgia as 'Tiền Giảm Nhập Mã Giảm', 
                       
                       dbo.CTdonhang.Size as 'Size', 
                       
                        dbo.CTdonhang.Mausac as 'Màu Sắc',  
                        
                        dbo.CTdonhang .Giamthem as 'Giảm Thêm', 
                        
                      dbo.CTdonhang.Soluong * dbo.CTdonhang.Giaban*(100-dbo.CTdonhang .Giamthem)/100 - dbo.CTdonhang .Giamthem AS 'Thành Tiền Chưa Phí DV'
FROM         dbo.Donhang INNER JOIN
                      dbo.CTdonhang ON dbo.Donhang.IDhd = dbo.CTdonhang.IDhd 
                      
                    
                      where DAY(dbo.Donhang.ngaydathang) = DAY(GETDATE()) and month(dbo.Donhang.ngaydathang) = month(GETDATE()) and 
                      year(dbo.Donhang.ngaydathang) = year(GETDATE())
                      
                      ORDER BY dbo.Donhang.IDhd DESC







GO
/****** Object:  StoredProcedure [dbo].[Asp_Excell_GetByAll]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Asp_Excell_GetByAll]
AS

SELECT     dbo.Donhang.IDhd as 'ID Đơn Hàng', 

dbo.Donhang.Xungho as 'Xưng Hô', 

 dbo.Donhang.Hoten as 'Họ Tên', 
 
   dbo.Donhang.ngaydathang as 'Ngày đặt hàng', 
 
  dbo.Donhang.SDT as 'Số Điện Thoại', 
  
  dbo.Donhang.Mail as 'EMail', 
  
   dbo.Donhang.Diachi as 'Địa Chỉ', 
    
                      dbo.Donhang.GhiChuKhac as 'Ghi Chú Khác', 
                      
                       dbo.CTdonhang.Tensanpham as 'Tên Sản Phẩm', 
                       
                       dbo.CTdonhang.Soluong as 'Số Lượng',  
                       
                       dbo.CTdonhang.Giaban as 'Giá Bán', 

					   dbo.Donhang.Hinhthucgiaohang as 'Phí Dịch Vụ', 
					   
					   dbo.Donhang.Tiengiamgia as 'Tiền Giảm Nhập Mã Giảm', 
                       
                       dbo.CTdonhang.Size as 'Size', 
                       
                        dbo.CTdonhang.Mausac as 'Màu Sắc',  
                        
                        dbo.CTdonhang .Giamthem as 'Giảm Thêm', 
                        
                      dbo.CTdonhang.Soluong * dbo.CTdonhang.Giaban*(100-dbo.CTdonhang .Giamthem)/100 - dbo.CTdonhang .Giamthem AS 'Thành Tiền Chưa Phí DV'
FROM         dbo.Donhang INNER JOIN
                      dbo.CTdonhang ON dbo.Donhang.IDhd = dbo.CTdonhang.IDhd 
                      
                      
                      ORDER BY dbo.Donhang.IDhd DESC







GO
/****** Object:  StoredProcedure [dbo].[Donhang_Max]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Donhang_Max] 

AS
BEGIN
	select MAX(IDhd) from Donhang
END







GO
/****** Object:  StoredProcedure [dbo].[Sanpham_Max]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Sanpham_Max] 

AS
BEGIN
	select MAX(Id) from NewMenuSanPham
END







GO
/****** Object:  StoredProcedure [dbo].[spThongKe_Edit]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spThongKe_Edit]
AS
BEGIN
	DECLARE @SoTruyCapGanNhat bigint
	DECLARE @Count int
	SELECT @Count=Count(*) FROM TB_ThongKe ttk
	IF @Count IS NULL SET @Count=0
	IF @Count=0
		INSERT INTO TB_ThongKe(ThoiGian, SoTruyCap)
		VALUES (GetDate(),1)
	ELSE
		BEGIN
			
			DECLARE @ThoiGianGanNhat datetime
			SELECT @SoTruyCapGanNhat=ttk.SoTruyCap, @ThoiGianGanNhat=ttk.ThoiGian
			  FROM TB_ThongKe ttk WHERE ttk.MaTB=(SELECT Max(ttk2.MaTB) FROM TB_ThongKe ttk2)
			IF @SoTruyCapGanNhat IS NULL SET @SoTruyCapGanNhat=0
			IF @ThoiGianGanNhat IS NULL SET @ThoiGianGanNhat=getdate()
			-- Kiểm tra xem lần truy cập này có phải đã sang ngày mới không (Qua thời điểm 12h00)
			-- Nếu chưa sang ngày mới thì cập nhật lại SoTruyCap
			IF Day(@ThoiGianGanNhat)=Day(GETDATE())
				BEGIN
					UPDATE TB_ThongKe
					SET
						SoTruyCap = @SoTruyCapGanNhat+1,
						ThoiGian = GetDate()
						
					WHERE MaTB=(SELECT Max(ttk2.MaTB) FROM TB_ThongKe ttk2)
				END
				-- Nếu đã sang ngày mới thì thêm mới bản ghi, SoTruyCap bắt đầu lại là 1
			ELSE
				BEGIN
					INSERT INTO TB_ThongKe(ThoiGian, SoTruyCap)
					VALUES (GetDate(),1)
				END
		END
 
		-- Thống kê Hom nay, Hom qua, Tuan nay, Tuan Truoc, Thang nay, Thang Truoc
		DECLARE @HomNay INT
		SET @HomNay = datepart(dw, GetDate())
		SELECT @SoTruyCapGanNhat=ttk.SoTruyCap, @ThoiGianGanNhat=ttk.ThoiGian
			  FROM TB_ThongKe ttk WHERE ttk.MaTB=(SELECT Max(ttk2.MaTB) FROM TB_ThongKe ttk2)
		--Tính SoTruyCapHomQua
		DECLARE @SoTruyCapHomQua bigint
		SELECT @SoTruyCapHomQua=isnull(SoTruyCap,0) FROM TB_ThongKe  
			WHERE CONVERT(nvarchar(20),ThoiGian,103)=CONVERT(nvarchar(20),GETDATE()-1,103)
		IF @SoTruyCapHomQua IS null SET @SoTruyCapHomQua=0
		-- Tính Ngày đầu tuần này
		DECLARE @DauTuanNay datetime
		SET @DauTuanNay= DATEADD(wk, DATEDIFF(wk, 6, GetDate()), 6)
		-- Tính Ngày đầu của tuần trước Tính từ thời điểm 00:00:))
		DECLARE @NgayDauTuanTruoc datetime
		SET @NgayDauTuanTruoc = Cast(CONVERT(nvarchar(30),DATEADD(dd, -(@HomNay+6), GetDate()),101) AS datetime)
		-- Tính ngày cuối tuần trước tính đến 24h ngày cuối tuần 
		DECLARE @NgayCuoiTuanTruoc datetime
		SET @NgayCuoiTuanTruoc = Cast(CONVERT(nvarchar(30),DATEADD(dd, -@HomNay, GetDate()),101) +' 23:59:59' AS datetime)
		
		-- Tính số truy cập tuần này
		DECLARE @SoTruyCapTuanNay bigint
		SELECT @SoTruyCapTuanNay=isnull(Sum(SoTruyCap),0) FROM TB_ThongKe ttk 
			WHERE ttk.ThoiGian BETWEEN @DauTuanNay AND getdate()
		 
		-- Tính số truy cập tuần trước
		DECLARE @SoLanTruyCapTuanTruoc bigint
		SELECT @SoLanTruyCapTuanTruoc=isnull(sum(SoTruyCap),0)  FROM TB_ThongKe ttk 
			WHERE ttk.ThoiGian BETWEEN @NgayDauTuanTruoc AND @NgayCuoiTuanTruoc
		
		-- Tính số truy cập tháng này
		DECLARE @SoTruyCapThangNay bigint 
		SELECT @SoTruyCapThangNay=isnull(Sum(SoTruyCap),0)
			FROM TB_ThongKe ttk WHERE MONTH(ttk.ThoiGian)=MONTH(GETDATE())
		
		-- Tính số truy cập tháng trước
		DECLARE @SoTruyCapThangTruoc bigint 
		SELECT @SoTruyCapThangTruoc=isnull(Sum(SoTruyCap),0)
			FROM TB_ThongKe ttk WHERE MONTH(ttk.ThoiGian)=MONTH(GETDATE())-1

			-- Tính số truy cập năm này
		DECLARE @SoTruyCapnamNay bigint 
		SELECT @SoTruyCapnamNay=isnull(Sum(SoTruyCap),0)
			FROM TB_ThongKe ttk WHERE YEAR(ttk.ThoiGian)=YEAR(GETDATE())

				-- Tính số truy cập năm trước
		DECLARE @SoTruyCapnamTruoc bigint 
		SELECT @SoTruyCapnamTruoc=isnull(Sum(SoTruyCap),0)
			FROM TB_ThongKe ttk WHERE YEAR(ttk.ThoiGian)=YEAR(GETDATE())-1
		
		-- Tính tổng số
		DECLARE @TongSo bigint
		SELECT  @TongSo=isnull(Sum(SoTruyCap),0) FROM TB_ThongKe ttk
		
		SELECT @SoTruyCapGanNhat AS HomNay, 
		@SoTruyCapHomQua AS HomQua,
		@SoTruyCapTuanNay AS TuanNay, 
		@SoLanTruyCapTuanTruoc AS TuanTruoc, 
		@SoTruyCapThangNay AS ThangNay, 
		@SoTruyCapThangTruoc AS ThangTruoc,
		@SoTruyCapnamNay AS NamNay, 
		@SoTruyCapnamTruoc AS NamTruoc,
		@TongSo AS TatCa
END





GO
/****** Object:  Table [dbo].[Advertise]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Advertise](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Image] [varchar](255) NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[Link] [varchar](255) NULL,
	[Target] [varchar](10) NULL,
	[Content] [ntext] NULL,
	[Position] [smallint] NULL,
	[PageId] [int] NULL,
	[Click] [int] NULL,
	[Ord] [int] NULL,
	[Active] [bit] NOT NULL,
	[Lang] [varchar](5) NULL,
	[NameEn] [nvarchar](150) NULL,
	[ContentEn] [ntext] NULL,
	[Ngaytao] [datetime] NULL,
	[Ngayhethan] [datetime] NULL,
	[LuotClick] [int] NULL,
 CONSTRAINT [PRK_Advertise_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bill_customers]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bill_customers](
	[billid] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[totalmoney] [varchar](100) NULL,
	[idate] [datetime] NULL,
	[xdate] [datetime] NULL,
	[request] [ntext] NULL,
	[typepay] [nvarchar](100) NULL,
	[state] [int] NULL,
	[lang] [char](3) NULL,
	[show] [int] NULL,
 CONSTRAINT [PK_tbBill_customers] PRIMARY KEY CLUSTERED 
(
	[billid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Billdetail]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Billdetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bilid] [int] NULL,
	[proid] [int] NULL,
	[sizeid] [int] NULL,
	[colorid] [int] NULL,
	[quantity] [int] NULL,
	[bilprice] [varchar](100) NULL,
	[bilpricevnd] [varchar](100) NULL,
	[bilmoney] [varchar](100) NULL,
	[billlocation] [int] NULL,
	[Date] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_tbBilldetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommentProduc]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommentProduc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProId] [int] NULL,
	[Name] [nvarchar](250) NULL,
	[Email] [nvarchar](150) NULL,
	[Point] [int] NULL,
	[Content] [ntext] NULL,
	[Date] [datetime] NULL,
	[Active] [int] NULL,
	[Level] [varchar](256) NULL,
 CONSTRAINT [PK_CommentProduc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Fax] [varchar](50) NULL,
	[ProvinceId] [int] NULL,
	[NameEn] [nvarchar](50) NULL,
	[AddressEn] [nvarchar](50) NULL,
 CONSTRAINT [PK_Deliver] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Config]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Config](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Mail_Smtp] [nvarchar](64) NULL,
	[Mail_Port] [smallint] NULL,
	[Mail_Info] [nvarchar](64) NULL,
	[Mail_Noreply] [nvarchar](64) NULL,
	[Mail_Password] [nvarchar](64) NULL,
	[PlaceHead] [ntext] NULL,
	[PlaceBody] [ntext] NULL,
	[GoogleId] [nvarchar](1000) NULL,
	[Contact] [ntext] NULL,
	[DeliveryTerms] [ntext] NULL,
	[PaymentTerms] [ntext] NULL,
	[FreeShipping] [float] NULL,
	[Copyright] [ntext] NULL,
	[Title] [nvarchar](1000) NULL,
	[Description] [nvarchar](1000) NULL,
	[Keyword] [nvarchar](1000) NULL,
	[Lang] [varchar](5) NULL,
	[Helpsize] [ntext] NULL,
	[Location] [int] NULL,
	[ToolScrip] [ntext] NULL,
	[Icon] [nvarchar](500) NULL,
	[Map] [ntext] NULL,
 CONSTRAINT [PRK_Config_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Company] [nvarchar](512) NULL,
	[Address] [nvarchar](512) NULL,
	[Tel] [varchar](64) NULL,
	[Mail] [varchar](64) NULL,
	[Detail] [ntext] NULL,
	[Date] [datetime] NULL,
	[Active] [int] NULL,
	[Lang] [varchar](5) NULL,
	[NameEn] [nvarchar](256) NULL,
	[CompanyEn] [nvarchar](512) NULL,
	[AddressEn] [nvarchar](512) NULL,
	[DetailEn] [ntext] NULL,
 CONSTRAINT [PRK_Contact_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTdonhang]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTdonhang](
	[IdCTHD] [int] IDENTITY(1,1) NOT NULL,
	[IDhd] [int] NULL,
	[IDsanpham] [nchar](10) NULL,
	[Tensanpham] [nvarchar](200) NULL,
	[Soluong] [int] NULL,
	[Giaban] [float] NULL,
	[Size] [nvarchar](50) NULL,
	[Mausac] [nvarchar](50) NULL,
	[Hinhanh] [nvarchar](500) NULL,
	[danhmucsanpham] [nvarchar](500) NULL,
	[chitietsanpham] [nvarchar](500) NULL,
	[Giamthem] [float] NULL,
 CONSTRAINT [PK_CTdonhang] PRIMARY KEY CLUSTERED 
(
	[IdCTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Custumers]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Custumers](
	[iusid] [int] IDENTITY(1,1) NOT NULL,
	[vusername] [nvarchar](100) NULL,
	[vpassword] [nvarchar](200) NULL,
	[vcusname] [nvarchar](200) NULL,
	[dbirthday] [nvarchar](100) NULL,
	[vprovince] [nvarchar](200) NULL,
	[vaddress] [nvarchar](200) NULL,
	[vphone] [varchar](100) NULL,
	[vmobile] [varchar](100) NULL,
	[vemail] [varchar](100) NULL,
	[dcreatedate] [datetime] NULL,
	[istatus] [smallint] NULL,
 CONSTRAINT [PK_tbCUSTOMERS] PRIMARY KEY CLUSTERED 
(
	[iusid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Chitiethinh]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitiethinh](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IDsanpham] [nvarchar](500) NULL,
	[Images] [nvarchar](500) NULL,
	[Thumimg] [nvarchar](500) NULL,
	[Thumsimg] [nvarchar](500) NULL,
	[ord] [int] NULL,
 CONSTRAINT [PK_Chitiethinh] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Document]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Document](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](256) NULL,
	[Name] [nvarchar](256) NULL,
	[Images] [nvarchar](500) NULL,
	[CreateDate] [datetime] NULL,
	[EffectiveDate] [datetime] NULL,
	[Info] [ntext] NULL,
	[File] [nvarchar](512) NULL,
	[Ord] [int] NULL,
	[Priority] [int] NULL,
	[Active] [int] NULL,
	[TypeId] [int] NULL,
	[MemberId] [int] NULL,
	[Lang] [varchar](5) NULL,
	[NameEn] [nvarchar](256) NULL,
	[infoEn] [ntext] NULL,
 CONSTRAINT [PRK_Document_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentType]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocumentType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Ord] [int] NULL,
	[Active] [int] NULL,
	[Lang] [varchar](5) NULL,
	[NameEn] [nvarchar](256) NULL,
 CONSTRAINT [PRK_DocumentType_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Donhang]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donhang](
	[IDhd] [int] IDENTITY(1,1) NOT NULL,
	[IDuser] [int] NULL,
	[SDT] [nvarchar](50) NULL,
	[Hoten] [nvarchar](100) NULL,
	[Mail] [nvarchar](100) NULL,
	[Diachi] [nvarchar](500) NULL,
	[Tinh] [nvarchar](50) NULL,
	[Huyen] [nvarchar](50) NULL,
	[Xungho] [nvarchar](50) NULL,
	[Hinhthucthanhtoan] [nvarchar](100) NULL,
	[Goidichvu] [nvarchar](100) NULL,
	[Tongtienhang] [float] NULL,
	[Thanhtoan] [float] NULL,
	[ngaydathang] [datetime] NULL,
	[KH] [nvarchar](100) NULL,
	[Duyet] [nvarchar](50) NULL,
	[Khuyenmai] [nvarchar](max) NULL,
	[Hinhthucgiaohang] [nvarchar](100) NULL,
	[GhiChuKhac] [ntext] NULL,
	[Tiengiamgia] [int] NULL,
 CONSTRAINT [PK_Donhang] PRIMARY KEY CLUSTERED 
(
	[IDhd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmailRegisters]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmailRegisters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](300) NULL,
	[Createdate] [smalldatetime] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_EmailRegisters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Even_Date]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Even_Date](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[NameEn] [nvarchar](500) NULL,
	[content] [ntext] NULL,
	[contentEn] [ntext] NULL,
	[Date_event_start] [datetime] NULL,
	[Date_event_end] [datetime] NULL,
	[Price_event] [int] NULL,
	[Ord] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Even_Date] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GroupLibrary]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GroupLibrary](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Tag] [nvarchar](256) NULL,
	[Level] [varchar](256) NULL,
	[Image] [nvarchar](256) NULL,
	[Ord] [int] NULL,
	[Active] [int] NULL,
	[Lang] [varchar](5) NULL,
	[NameEn] [nvarchar](256) NULL,
 CONSTRAINT [PRK_GroupLibrary_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GroupMember]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupMember](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Active] [int] NULL,
	[NameEn] [nvarchar](256) NULL,
 CONSTRAINT [PRK_GroupMember_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GroupMenuSanPham]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[GroupMenuSanPham](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Tag] [nvarchar](256) NULL,
	[Level] [varchar](256) NULL,
	[Title] [nvarchar](256) NULL,
	[Description] [nvarchar](256) NULL,
	[Keyword] [nvarchar](512) NULL,
	[Ord] [int] NULL,
	[Priority] [int] NULL,
	[Index] [int] NULL,
	[Active] [int] NULL,
	[Lang] [varchar](5) NULL,
	[Logogroup] [nvarchar](500) NULL,
	[NameEn] [nvarchar](256) NULL,
	[TitleEn] [nvarchar](256) NULL,
	[ImagesLogo] [nchar](100) NULL,
	[content] [ntext] NULL,
	[contentEn] [ntext] NULL,
 CONSTRAINT [PK_GroupMenuSanPham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GroupNewMenuSanPhamDetail]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GroupNewMenuSanPhamDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[NameEn] [nvarchar](100) NULL,
	[Tag] [nvarchar](500) NULL,
	[IDthuonghieu] [nvarchar](500) NULL,
	[NguonSanPham] [nvarchar](500) NULL,
	[Mausac] [nvarchar](500) NULL,
	[Kichthuoc] [nvarchar](500) NULL,
	[SanphamCungloai] [nvarchar](1000) NULL,
	[Donvi] [nvarchar](500) NULL,
	[Luotdanhgia] [nvarchar](50) NULL,
	[Video] [nvarchar](1000) NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Keyword] [nvarchar](max) NULL,
	[Priority] [int] NULL,
	[Index] [int] NULL,
	[Order] [int] NULL,
	[Active] [int] NULL,
	[GroupNewsCatTag] [nvarchar](500) NULL,
	[Cateprolevel1] [nvarchar](500) NULL,
	[Cateprolevel2] [nvarchar](500) NULL,
	[Cateprolevel3] [nvarchar](500) NULL,
	[Image] [varchar](500) NULL,
	[Image1] [varchar](500) NULL,
	[Image2] [varchar](500) NULL,
	[Image3] [varchar](500) NULL,
	[Image4] [varchar](500) NULL,
	[Image5] [varchar](500) NULL,
	[Content] [nvarchar](max) NULL,
	[ContentEn] [ntext] NULL,
	[Detail] [ntext] NULL,
	[DetailEn] [ntext] NULL,
	[Khuyenmai] [nvarchar](max) NULL,
	[KhuyenmaiEn] [ntext] NULL,
	[Baohanh] [nvarchar](max) NULL,
	[BaohanhEn] [ntext] NULL,
	[DacDiemNoiBat] [ntext] NULL,
	[DacDiemNoiBatEn] [ntext] NULL,
	[Thongdiep] [nvarchar](max) NULL,
	[ThongdiepEn] [ntext] NULL,
	[Seri] [nvarchar](50) NULL,
	[Luotxem] [int] NULL,
	[Soluongmua] [int] NULL,
	[DateCreate] [date] NULL,
	[DateView] [date] NULL,
	[Stock] [int] NULL,
	[Number_Stock] [int] NULL,
	[Vat] [bit] NULL,
	[Gianhaphang] [float] NULL,
	[Giaban] [float] NULL,
	[Phantramkhuyenmai] [int] NULL,
	[Giabankhuyenmai] [float] NULL,
	[DateStart_Event] [date] NULL,
	[DateEnd_Event] [date] NULL,
	[Giaban_Event] [float] NULL,
	[Content_Event] [nvarchar](1000) NULL,
	[Content_EventEn] [nvarchar](1000) NULL,
 CONSTRAINT [PK_NewMenuSanPham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GroupNews]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GroupNews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Tag] [nvarchar](256) NULL,
	[Level] [varchar](256) NULL,
	[Title] [nvarchar](256) NULL,
	[Description] [nvarchar](256) NULL,
	[Keyword] [nvarchar](512) NULL,
	[Ord] [int] NULL,
	[Priority] [int] NULL,
	[Index] [int] NULL,
	[Active] [int] NULL,
	[Lang] [varchar](5) NULL,
	[Logogroup] [nvarchar](500) NULL,
	[NameEn] [nvarchar](256) NULL,
	[TitleEn] [nvarchar](256) NULL,
	[ImagesLogo] [nchar](100) NULL,
	[content] [ntext] NULL,
	[contentEn] [ntext] NULL,
 CONSTRAINT [PRK_GroupNews_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GroupNewsNewsDetail]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GroupNewsNewsDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Tag] [nvarchar](max) NULL,
	[Image] [varchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[Detail] [ntext] NULL,
	[Date] [datetime] NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Keyword] [nvarchar](max) NULL,
	[Priority] [int] NULL,
	[Index] [int] NULL,
	[Active] [int] NULL,
	[ord] [int] NULL,
	[Nguon] [nvarchar](500) NULL,
	[Lang] [varchar](5) NULL,
	[Image1] [varchar](max) NULL,
	[Image2] [varchar](max) NULL,
	[Image3] [varchar](max) NULL,
	[Image4] [varchar](max) NULL,
	[Images5] [varchar](max) NULL,
	[GroupNewsCatTag] [nvarchar](max) NULL,
	[Cateprolevel1] [nvarchar](500) NULL,
	[Cateprolevel2] [nvarchar](500) NULL,
	[Cateprolevel3] [nvarchar](500) NULL,
	[NameEn] [nvarchar](100) NULL,
	[ContentEn] [ntext] NULL,
	[DetailEn] [ntext] NULL,
	[DateView] [datetime] NULL,
	[Luotxem] [int] NULL,
 CONSTRAINT [PRK_News_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GroupSupport]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GroupSupport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Ord] [int] NULL,
	[Active] [int] NULL,
	[Lang] [varchar](5) NULL,
	[NameEn] [nvarchar](256) NULL,
 CONSTRAINT [PRK_GroupSupport_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Html]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Html](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [int] NULL,
	[Active] [int] NULL,
	[Lang] [varchar](5) NULL,
	[Ten] [nvarchar](100) NULL,
	[Html_content] [ntext] NULL,
	[TenEn] [nvarchar](100) NULL,
	[Html_contentEn] [ntext] NULL,
	[images] [varchar](500) NULL,
	[Ord] [int] NULL,
 CONSTRAINT [PK_Html] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[information]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[information](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Image] [varchar](255) NULL,
	[Target] [varchar](10) NULL,
	[Content] [ntext] NULL,
	[Position] [smallint] NULL,
	[Click] [int] NULL,
	[Ord] [int] NULL,
	[Active] [bit] NOT NULL,
	[Lang] [varchar](5) NULL,
	[Detail] [ntext] NULL,
	[Title] [nvarchar](256) NULL,
	[Description] [nvarchar](256) NULL,
	[Keyword] [nvarchar](256) NULL,
	[Image1] [nvarchar](256) NULL,
	[Image2] [nvarchar](256) NULL,
	[Image3] [nvarchar](256) NULL,
	[Image4] [nvarchar](256) NULL,
	[Image5] [nvarchar](256) NULL,
	[Index] [int] NULL,
	[Priority] [int] NULL,
	[Tag] [nvarchar](150) NULL,
	[NameEn] [nvarchar](100) NULL,
	[ContentEn] [ntext] NULL,
	[DetailEn] [ntext] NULL,
 CONSTRAINT [PRK_information_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kichthuoc]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kichthuoc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kichthuoc] [nvarchar](50) NULL,
	[Vitri] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_tblKichthuoc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Khoanggia]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoanggia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Khoangdau] [nvarchar](50) NULL,
	[Khoangcuoi] [nvarchar](50) NULL,
	[Vitri] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_tblKhoanggia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Language]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Language](
	[Id] [varchar](5) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Folder] [varchar](100) NULL,
	[Default] [bit] NOT NULL,
	[Image] [varchar](50) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PRK_Language_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Library]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Library](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Tag] [nvarchar](256) NULL,
	[Image] [nvarchar](256) NULL,
	[File] [nvarchar](512) NULL,
	[Info] [ntext] NULL,
	[Priority] [int] NULL,
	[Active] [int] NULL,
	[GroupLibraryId] [int] NULL,
	[MemberId] [int] NULL,
	[Lang] [varchar](5) NULL,
	[LibraryCatTag] [nvarchar](256) NULL,
	[NameEn] [nvarchar](256) NULL,
	[infoEn] [ntext] NULL,
	[Content] [ntext] NULL,
	[ContetnEn] [ntext] NULL,
 CONSTRAINT [PRK_Library_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MacodeKhuyenMai]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MacodeKhuyenMai](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Macode] [nvarchar](50) NULL,
	[Valueprice] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_MacodeKhuyenMai] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mausac]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mausac](
	[IDmau] [int] IDENTITY(1,1) NOT NULL,
	[Tenmau] [nvarchar](100) NULL,
	[Hinhanh] [nvarchar](500) NULL,
	[Lang] [nchar](10) NULL,
	[TenmauEn] [nvarchar](100) NULL,
	[Ord] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_tblMausac] PRIMARY KEY CLUSTERED 
(
	[IDmau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Member]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Member](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[Username] [varchar](64) NULL,
	[Password] [varchar](64) NULL,
	[GroupMemberId] [int] NULL,
	[Active] [int] NULL,
	[NameEn] [nvarchar](256) NULL,
	[Isplace] [nvarchar](500) NULL,
	[IsplaceEn] [nvarchar](500) NULL,
	[Note] [ntext] NULL,
	[NoteEn] [ntext] NULL,
 CONSTRAINT [PRK_Member_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Nuocsanxuat]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nuocsanxuat](
	[IDNuocsanxuat] [int] IDENTITY(1,1) NOT NULL,
	[TenNuocsanxuat] [nvarchar](100) NULL,
	[Logo] [nvarchar](500) NULL,
	[Active] [bit] NULL,
	[Vitri] [int] NULL,
	[TenNuocsanxuat_En] [nvarchar](100) NULL,
 CONSTRAINT [PK_Nuocsanxuat] PRIMARY KEY CLUSTERED 
(
	[IDNuocsanxuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Province]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Province](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[NameEn] [nvarchar](200) NULL,
 CONSTRAINT [PK_Province] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[quantity_purchased]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quantity_purchased](
	[Id_quantity] [int] IDENTITY(1,1) NOT NULL,
	[Sl_mua] [int] NULL,
	[Phan_tram_tang] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_quantity_purchased] PRIMARY KEY CLUSTERED 
(
	[Id_quantity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[service_charge]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[service_charge](
	[idservice] [int] IDENTITY(1,1) NOT NULL,
	[Ord] [int] NULL,
	[Name] [nvarchar](500) NULL,
	[Gia] [int] NULL,
	[Active] [bit] NULL,
	[NameEn] [nvarchar](500) NULL,
 CONSTRAINT [PK_service_charge] PRIMARY KEY CLUSTERED 
(
	[idservice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shop]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[CompanyId] [int] NULL,
	[Address] [nvarchar](500) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Shop] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SlideShow]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SlideShow](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Image] [varchar](255) NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[Link] [varchar](255) NULL,
	[Target] [varchar](10) NULL,
	[Content] [ntext] NULL,
	[Position] [smallint] NULL,
	[Click] [int] NULL,
	[Ord] [int] NULL,
	[Active] [bit] NOT NULL,
	[Lang] [varchar](5) NULL,
	[Detail] [ntext] NULL,
	[Title] [nvarchar](256) NULL,
	[Description] [nvarchar](256) NULL,
	[Keyword] [nvarchar](256) NULL,
	[Image1] [nvarchar](256) NULL,
	[Image2] [nvarchar](256) NULL,
	[Image3] [nvarchar](256) NULL,
	[Image4] [nvarchar](256) NULL,
	[Image5] [nvarchar](256) NULL,
	[Index] [int] NULL,
	[Priority] [int] NULL,
	[Tag] [nvarchar](150) NULL,
	[NameEn] [nvarchar](200) NULL,
	[ContentEn] [ntext] NULL,
	[DetailEn] [ntext] NULL,
 CONSTRAINT [PRK_SlideShow_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Support]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Support](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Tel] [nvarchar](256) NULL,
	[Type] [int] NULL,
	[Nick] [varchar](128) NULL,
	[Ord] [int] NULL,
	[Active] [int] NULL,
	[GroupSupportId] [int] NULL,
	[Lang] [varchar](5) NULL,
	[Location] [int] NULL,
 CONSTRAINT [PRK_Support_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tax_ruler]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tax_ruler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Province] [nvarchar](500) NULL,
	[Tax_pri] [int] NULL,
	[Description] [ntext] NULL,
	[File_tax] [nvarchar](500) NULL,
	[Ord] [int] NULL,
	[NameEn] [nvarchar](100) NULL,
	[DescriptionEn] [ntext] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Tax_ruler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_ThongKe]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ThongKe](
	[MaTB] [int] IDENTITY(1,1) NOT NULL,
	[ThoiGian] [datetime] NOT NULL,
	[SoTruyCap] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tintuc]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tintuc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Tag] [nvarchar](500) NULL,
	[Ngaydang] [datetime] NULL,
	[Tomtat] [nvarchar](max) NULL,
	[Noidung] [nvarchar](max) NULL,
	[Tacgia] [nvarchar](10) NULL,
	[Luotxem] [int] NULL,
	[Hinhanh] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Keyword] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[Ord] [int] NULL,
	[Type] [int] NULL,
	[Ngayxemganday] [datetime] NULL,
	[lienkiettinh] [nvarchar](200) NULL,
	[NameEn] [nvarchar](100) NULL,
	[ContentEn] [ntext] NULL,
	[DetailEn] [ntext] NULL,
	[Nguon] [nvarchar](500) NULL,
 CONSTRAINT [PK_tblTintuc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Thanhvien]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thanhvien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Taikhoan] [nvarchar](200) NULL,
	[Matkhau] [nvarchar](200) NULL,
	[Hoten] [nvarchar](200) NULL,
	[Ngaysinh] [datetime] NULL,
	[Gioitinh] [nvarchar](200) NULL,
	[Diachi] [nvarchar](200) NULL,
	[SDT] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
	[Actice] [bit] NULL,
	[thutu] [int] NULL,
	[CreateDate] [date] NULL,
 CONSTRAINT [PK_Thanhvien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Thuonghieu]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thuonghieu](
	[IDthuonghieu] [int] IDENTITY(1,1) NOT NULL,
	[Tenthuonghieu] [nvarchar](100) NULL,
	[Logo] [nvarchar](500) NULL,
	[Url] [nvarchar](500) NULL,
	[Active] [bit] NULL,
	[Vitri] [int] NULL,
	[Lienkettinh] [nvarchar](500) NULL,
	[mota] [nvarchar](max) NULL,
	[Lang] [nchar](10) NULL,
	[Tenthuonghieu_En] [nvarchar](100) NULL,
	[mota_En] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblThuonghieu] PRIMARY KEY CLUSTERED 
(
	[IDthuonghieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Url_thanhtoan]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Url_thanhtoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](500) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Fax] [varchar](50) NULL,
	[vitri] [int] NULL,
 CONSTRAINT [PK_Url_thanhtoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/12/2016 3:26:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Username] [varchar](64) NULL,
	[Password] [varchar](64) NULL,
	[Level] [varchar](50) NULL,
	[Admin] [int] NULL,
	[Ord] [int] NULL,
	[Active] [int] NULL,
	[Role] [nvarchar](200) NULL,
 CONSTRAINT [PRK_User_ID] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Advertise] ON 

INSERT [dbo].[Advertise] ([Id], [Name], [Image], [Width], [Height], [Link], [Target], [Content], [Position], [PageId], [Click], [Ord], [Active], [Lang], [NameEn], [ContentEn], [Ngaytao], [Ngayhethan], [LuotClick]) VALUES (101, N'Logo header', N'/Uploads/images/Logo/logo_nho.png', 100, 100, N'', N'_self', N'', 0, 1, 0, 1, 1, N'vi', N'', N'', CAST(0x0000A6AF00000000 AS DateTime), CAST(0x0000A6E400000000 AS DateTime), 0)
INSERT [dbo].[Advertise] ([Id], [Name], [Image], [Width], [Height], [Link], [Target], [Content], [Position], [PageId], [Click], [Ord], [Active], [Lang], [NameEn], [ContentEn], [Ngaytao], [Ngayhethan], [LuotClick]) VALUES (103, N'Ảnh poster', N'/Uploads/images/Logo/quy-trinh-to-chuc-su-kien.jpg', 100, 100, N'', N'_self', N'', 0, 2, 0, 1, 1, N'vi', N'', N'', CAST(0x0000A6AF00000000 AS DateTime), NULL, 0)
INSERT [dbo].[Advertise] ([Id], [Name], [Image], [Width], [Height], [Link], [Target], [Content], [Position], [PageId], [Click], [Ord], [Active], [Lang], [NameEn], [ContentEn], [Ngaytao], [Ngayhethan], [LuotClick]) VALUES (104, N'Ảnh header', N'/Uploads/files/backgroadheader.jpg', 100, 100, N'', N'_self', N'', 0, 3, 0, 1, 1, N'vi', N'', N'', CAST(0x0000A6B400000000 AS DateTime), NULL, 0)
INSERT [dbo].[Advertise] ([Id], [Name], [Image], [Width], [Height], [Link], [Target], [Content], [Position], [PageId], [Click], [Ord], [Active], [Lang], [NameEn], [ContentEn], [Ngaytao], [Ngayhethan], [LuotClick]) VALUES (105, N'Ảnh Contact', N'/Uploads/files/lien-he.jpg', 100, 100, N'', N'_self', N'', 0, 5, 0, 1, 1, N'vi', N'', N'', CAST(0x0000A6B700000000 AS DateTime), NULL, 0)
INSERT [dbo].[Advertise] ([Id], [Name], [Image], [Width], [Height], [Link], [Target], [Content], [Position], [PageId], [Click], [Ord], [Active], [Lang], [NameEn], [ContentEn], [Ngaytao], [Ngayhethan], [LuotClick]) VALUES (106, N'Background Footer', N'/Uploads/files/background-carousel-02.jpg', 100, 100, N'', N'_self', N'', 0, 4, 0, 1, 1, N'vi', N'', N'', CAST(0x0000A6B700000000 AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[Advertise] OFF
SET IDENTITY_INSERT [dbo].[CommentProduc] ON 

INSERT [dbo].[CommentProduc] ([Id], [ProId], [Name], [Email], [Point], [Content], [Date], [Active], [Level]) VALUES (39, 12, N'Hau', N'lethehau', 1, N'Hau', CAST(0x0000A6DA00000000 AS DateTime), 1, NULL)
INSERT [dbo].[CommentProduc] ([Id], [ProId], [Name], [Email], [Point], [Content], [Date], [Active], [Level]) VALUES (40, 12, N'Hau', N'lethehau', 1, N'Hau', CAST(0x0000A6DA00000000 AS DateTime), 1, NULL)
INSERT [dbo].[CommentProduc] ([Id], [ProId], [Name], [Email], [Point], [Content], [Date], [Active], [Level]) VALUES (41, 2, N'Hau', N'lethehau', 1, N'Hau', CAST(0x0000A6DA00000000 AS DateTime), 1, NULL)
INSERT [dbo].[CommentProduc] ([Id], [ProId], [Name], [Email], [Point], [Content], [Date], [Active], [Level]) VALUES (42, 3, N'Hau', N'lethehau', 1, N'Hau', CAST(0x0000A6DA00000000 AS DateTime), 1, NULL)
INSERT [dbo].[CommentProduc] ([Id], [ProId], [Name], [Email], [Point], [Content], [Date], [Active], [Level]) VALUES (43, 2, N'Hau', N'lethehau', 1, N'Hau', CAST(0x0000A6DA00000000 AS DateTime), 1, N'41')
INSERT [dbo].[CommentProduc] ([Id], [ProId], [Name], [Email], [Point], [Content], [Date], [Active], [Level]) VALUES (58, 3, N'Hau', N'lethehau', 1, N'Hau', CAST(0x0000A6DA00000000 AS DateTime), 1, N'42')
SET IDENTITY_INSERT [dbo].[CommentProduc] OFF
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([id], [Name], [Address], [PhoneNumber], [Fax], [ProvinceId], [NameEn], [AddressEn]) VALUES (1, N'Công ty CP TMDV Thăng Long', N'35 Láng Hạ, Ba Đình, Hà Nội', N'04. 3514.6820', N'04. 3514.6821', 3, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Company] OFF
SET IDENTITY_INSERT [dbo].[Config] ON 

INSERT [dbo].[Config] ([Id], [Mail_Smtp], [Mail_Port], [Mail_Info], [Mail_Noreply], [Mail_Password], [PlaceHead], [PlaceBody], [GoogleId], [Contact], [DeliveryTerms], [PaymentTerms], [FreeShipping], [Copyright], [Title], [Description], [Keyword], [Lang], [Helpsize], [Location], [ToolScrip], [Icon], [Map]) VALUES (1, N'smtp.gmail.com', 587, N'admin@gmail.com', N'admin@gmail.com', N'admin', N'Tiêu đề mail ở đây ?', N'Đây là nội dung bản quyền website của bạn ?', NULL, NULL, N'Đây là nội dung bản quyền website của bạn ?', N'Đây là nội dung bản quyền website của bạn ?', 0, N'<strong>CÔNG TY TNHH TM XD NHÔMKÍNG XÂY DỰNG ĐÌNH KHOA</strong>', N'CÔNG TY TNHH TM XD NHÔMKÍNG XÂY DỰNG ĐÌNH KHOA PHAN THIẾT', N'cầu than kính cường lực phan thiết,lang cang kính cường lực phan thiết , phòng tấm kính cường lực phan thiết ,cửa nhômphan thiết ,mặt dựng ,nhôm phan thiết ,kính sơn màu ốp bếp phan thiết', N'cầu than kính cường lực phan thiết,lang cang kính cường lực phan thiết , phòng tấm kính cường lực phan thiết ,cửa nhômphan thiết ,mặt dựng phan thiết ,nhôm phan thiết ,kính sơn màu ốp bếp phan thiết', NULL, N'Đây là nội dung bản quyền website của bạn ?', 0, N'', N'/Uploads/images/Logo/logo_nho.png', N'<iframe allowfullscreen="" frameborder="0" height="450" scrolling="no" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3917.29673442427!2d108.09847741480223!3d10.940942992210063!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3176831c0535559d%3A0xff77d234402338e!2zNzcgUGjhuqFtIE5n4buNYyBUaOG6oWNoLCBQaMO6IFRyaW5oLCB0cC4gUGhhbiBUaGnhur90LCBCw6xuaCBUaHXhuq1uLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1478479796782" style="border:0" width="100%"></iframe>')
SET IDENTITY_INSERT [dbo].[Config] OFF
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([Id], [Name], [Company], [Address], [Tel], [Mail], [Detail], [Date], [Active], [Lang], [NameEn], [CompanyEn], [AddressEn], [DetailEn]) VALUES (1, N'Hau', N'', N'', N'090267917', N'lethehau90.vn@gmail.com', N'<strong>Nội thư hộp mail đ&acirc;y n&egrave;&nbsp;Nội thư hộp mail đ&acirc;y n&egrave;&nbsp;Nội thư hộp mail đ&acirc;y n&egrave;&nbsp;Nội thư hộp mail đ&acirc;y n&egrave;</strong>', CAST(0x0000A6DA0005FB6F AS DateTime), 1, N'vi', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[CTdonhang] ON 

INSERT [dbo].[CTdonhang] ([IdCTHD], [IDhd], [IDsanpham], [Tensanpham], [Soluong], [Giaban], [Size], [Mausac], [Hinhanh], [danhmucsanpham], [chitietsanpham], [Giamthem]) VALUES (145, 109, N'47        ', N'Đầm liền tay xòe 1014', 11, 475000, N'M', N'Hồng', N'/Images/images/thoitrangnu/dam1014/1.jpg', N'dam-vay', N'dam-lien-tay-xoe-1014', 15)
INSERT [dbo].[CTdonhang] ([IdCTHD], [IDhd], [IDsanpham], [Tensanpham], [Soluong], [Giaban], [Size], [Mausac], [Hinhanh], [danhmucsanpham], [chitietsanpham], [Giamthem]) VALUES (146, 110, N'47        ', N'Đầm liền tay xòe 1014', 4, 475000, N'M', N'Hồng', N'/Images/images/thoitrangnu/dam1014/1.jpg', N'dam-vay', N'dam-lien-tay-xoe-1014', 7)
INSERT [dbo].[CTdonhang] ([IdCTHD], [IDhd], [IDsanpham], [Tensanpham], [Soluong], [Giaban], [Size], [Mausac], [Hinhanh], [danhmucsanpham], [chitietsanpham], [Giamthem]) VALUES (147, 110, N'39        ', N'Đầm trể vai 1008', 8, 380000, N'M', N'Trắng', N'/Images/images/thoitrangnu/dam1009/1(1).jpg', N'vay', N'dam-tre-vai-1008', 15)
INSERT [dbo].[CTdonhang] ([IdCTHD], [IDhd], [IDsanpham], [Tensanpham], [Soluong], [Giaban], [Size], [Mausac], [Hinhanh], [danhmucsanpham], [chitietsanpham], [Giamthem]) VALUES (148, 111, N'47        ', N'Đầm liền tay xòe 1014', 11, 475000, N'M', N'Hồng', N'/Images/images/thoitrangnu/dam1014/1.jpg', N'dam-vay', N'dam-lien-tay-xoe-1014', 15)
INSERT [dbo].[CTdonhang] ([IdCTHD], [IDhd], [IDsanpham], [Tensanpham], [Soluong], [Giaban], [Size], [Mausac], [Hinhanh], [danhmucsanpham], [chitietsanpham], [Giamthem]) VALUES (149, 111, N'39        ', N'Đầm trể vai 1008', 1, 380000, N'M', N'Trắng', N'/Images/images/thoitrangnu/dam1009/1(1).jpg', N'vay', N'dam-tre-vai-1008', 0)
INSERT [dbo].[CTdonhang] ([IdCTHD], [IDhd], [IDsanpham], [Tensanpham], [Soluong], [Giaban], [Size], [Mausac], [Hinhanh], [danhmucsanpham], [chitietsanpham], [Giamthem]) VALUES (150, 112, N'67        ', N'Váy liền 1505', 5, 270000, N'FREE SIZE', N'xanh', N'/Images/images/thoitrangnu/dam1505/1.jpg', N'vay', N'vay-lien-1505', 8)
INSERT [dbo].[CTdonhang] ([IdCTHD], [IDhd], [IDsanpham], [Tensanpham], [Soluong], [Giaban], [Size], [Mausac], [Hinhanh], [danhmucsanpham], [chitietsanpham], [Giamthem]) VALUES (151, 112, N'75        ', N'Đầm liền nơ trắng 1022', 10, 285000, N'Fresize', N'Đen trắng', N'/Images/images/thoitrangnu/dam1022/1.jpg', N'dam-da-tiec', N'dam-lien-no-trang-1022', 15)
INSERT [dbo].[CTdonhang] ([IdCTHD], [IDhd], [IDsanpham], [Tensanpham], [Soluong], [Giaban], [Size], [Mausac], [Hinhanh], [danhmucsanpham], [chitietsanpham], [Giamthem]) VALUES (152, 112, N'40        ', N'Đầm trể vai chân váy hoa 1010', 3, 405000, N'M', N'Đen', N'/Images/images/thoitrangnu/dam1010/1(1).jpg', N'dam-dao-pho', N'dam-tre-vai-chan-vay-hoa-1010', 6)
SET IDENTITY_INSERT [dbo].[CTdonhang] OFF
SET IDENTITY_INSERT [dbo].[Chitiethinh] ON 

INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (154, N'133', N'/Images/images/product_slide/20150410160435_32960.jpg', N'/Images/Images/_thumbs/filesDetail/20150410160435_32960.jpg', N'/Images/_thumbs/images/product_slide/20150410160435_32960.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (155, N'133', N'/Images/images/product_slide/20150410160435_36875.jpg', N'/Images/Images/_thumbs/filesDetail/20150410160435_36875.jpg', N'/Images/_thumbs/images/product_slide/20150410160435_36875.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (156, N'133', N'/Images/images/product_slide/20150410160435_70426.jpg', N'/Images/Images/_thumbs/filesDetail/20150410160435_70426.jpg', N'/Images/_thumbs/images/product_slide/20150410160435_70426.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (157, N'134', N'/Images/images/product_slide/20150410160435_32960.jpg', N'/Images/Images/_thumbs/filesDetail/20150410160435_32960.jpg', N'/Images/_thumbs/images/product_slide/20150410160435_32960.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (158, N'134', N'/Images/images/product_slide/20150410160435_36875.jpg', N'/Images/Images/_thumbs/filesDetail/20150410160435_36875.jpg', N'/Images/_thumbs/images/product_slide/20150410160435_36875.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (159, N'134', N'/Images/images/product_slide/20150703090700_60490.jpg', N'/Images/Images/_thumbs/filesDetail/20150703090700_60490.jpg', N'/Images/_thumbs/images/product_slide/20150703090700_60490.jpg', 6)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (247, N'26', N'/Images/images/product_thumb/damvay/2(2).jpg', N'/Images/Images/_thumbs/filesDetail/2(2).jpg', N'/Images/_thumbs/images/product_thumb/damvay/2(2).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (248, N'27', N'/Images/images/product_thumb/damvay/damdaopho/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/product_thumb/damvay/damdaopho/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (249, N'27', N'/Images/images/product_thumb/damvay/damdaopho/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/product_thumb/damvay/damdaopho/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (250, N'27', N'/Images/images/product_thumb/damvay/damdaopho/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/product_thumb/damvay/damdaopho/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (251, N'27', N'/Images/images/product_thumb/damvay/damdaopho/5(1).jpg', N'/Images/Images/_thumbs/filesDetail/5(1).jpg', N'/Images/_thumbs/images/product_thumb/damvay/damdaopho/5(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (252, N'27', N'/Images/images/product_thumb/damvay/damdaopho/6(1).jpg', N'/Images/Images/_thumbs/filesDetail/6(1).jpg', N'/Images/_thumbs/images/product_thumb/damvay/damdaopho/6(1).jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (256, N'29', N'/Images/images/thoitrangnu/dam1004/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1004/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (257, N'29', N'/Images/images/thoitrangnu/dam1004/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1004/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (258, N'29', N'/Images/images/thoitrangnu/dam1004/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1004/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (259, N'29', N'/Images/images/thoitrangnu/dam1004/5(1).jpg', N'/Images/Images/_thumbs/filesDetail/5(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1004/5(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (260, N'30', N'/Images/images/thoitrangnu/dam1004/2(3).jpg', N'/Images/Images/_thumbs/filesDetail/2(3).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1004/2(3).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (261, N'30', N'/Images/images/thoitrangnu/dam1004/3(3).jpg', N'/Images/Images/_thumbs/filesDetail/3(3).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1004/3(3).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (262, N'30', N'/Images/images/thoitrangnu/dam1004/4(3).jpg', N'/Images/Images/_thumbs/filesDetail/4(3).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1004/4(3).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (263, N'30', N'/Images/images/thoitrangnu/dam1004/5(3).jpg', N'/Images/Images/_thumbs/filesDetail/5(3).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1004/5(3).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (264, N'31', N'/Images/images/thoitrangnu/dam1005/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1005/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (265, N'31', N'/Images/images/thoitrangnu/dam1005/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1005/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (266, N'31', N'/Images/images/thoitrangnu/dam1005/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1005/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (267, N'31', N'/Images/images/thoitrangnu/dam1005/5(1).jpg', N'/Images/Images/_thumbs/filesDetail/5(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1005/5(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (268, N'31', N'/Images/images/thoitrangnu/dam1005/6(1).jpg', N'/Images/Images/_thumbs/filesDetail/6(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1005/6(1).jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (269, N'33', N'/Images/images/thoitrangnu/dam1006/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1006/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (270, N'33', N'/Images/images/thoitrangnu/dam1006/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1006/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (271, N'33', N'/Images/images/thoitrangnu/dam1006/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1006/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (272, N'33', N'/Images/images/thoitrangnu/dam1006/5(1).jpg', N'/Images/Images/_thumbs/filesDetail/5(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1006/5(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (273, N'33', N'/Images/images/thoitrangnu/dam1006/6(1).jpg', N'/Images/Images/_thumbs/filesDetail/6(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1006/6(1).jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (274, N'34', N'/Images/images/thoitrangnu/dam1007/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1007/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (275, N'34', N'/Images/images/thoitrangnu/dam1007/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1007/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (276, N'34', N'/Images/images/thoitrangnu/dam1007/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1007/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (277, N'34', N'/Images/images/thoitrangnu/dam1007/5(1).jpg', N'/Images/Images/_thumbs/filesDetail/5(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1007/5(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (278, N'34', N'/Images/images/thoitrangnu/dam1007/6(1).jpg', N'/Images/Images/_thumbs/filesDetail/6(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1007/6(1).jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (294, N'38', N'/Images/images/thoitrangnu/dam1007/6(1).jpg', N'/Images/Images/_thumbs/filesDetail/6(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1007/6(1).jpg', 6)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (295, N'38', N'/Images/images/thoitrangnu/dam1007/6(1).jpg', N'/Images/Images/_thumbs/filesDetail/6(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1007/6(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (296, N'38', N'/Images/images/thoitrangnu/dam1007/6(1).jpg', N'/Images/Images/_thumbs/filesDetail/6(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1007/6(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (297, N'38', N'/Images/images/thoitrangnu/dam1007/6(1).jpg', N'/Images/Images/_thumbs/filesDetail/6(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1007/6(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (299, N'39', N'/Images/images/thoitrangnu/dam1009/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1009/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (300, N'39', N'/Images/images/thoitrangnu/dam1009/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1009/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (301, N'39', N'/Images/images/thoitrangnu/dam1009/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1009/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (302, N'39', N'/Images/images/thoitrangnu/dam1009/5(1).jpg', N'/Images/Images/_thumbs/filesDetail/5(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1009/5(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (303, N'39', N'/Images/images/thoitrangnu/dam1009/6(1).jpg', N'/Images/Images/_thumbs/filesDetail/6(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1009/6(1).jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (305, N'40', N'/Images/images/thoitrangnu/dam1010/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1010/3(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (306, N'40', N'/Images/images/thoitrangnu/dam1010/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1010/4(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (307, N'40', N'/Images/images/thoitrangnu/dam1010/5(1).jpg', N'/Images/Images/_thumbs/filesDetail/5(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1010/5(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (308, N'40', N'/Images/images/thoitrangnu/dam1010/6(1).jpg', N'/Images/Images/_thumbs/filesDetail/6(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1010/6(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (309, N'41', N'/Images/images/thoitrangnu/dam1011/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1011/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (310, N'41', N'/Images/images/thoitrangnu/dam1011/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1011/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (311, N'41', N'/Images/images/thoitrangnu/dam1011/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1011/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (312, N'41', N'/Images/images/thoitrangnu/dam1011/5(1).jpg', N'/Images/Images/_thumbs/filesDetail/5(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1011/5(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (313, N'41', N'/Images/images/thoitrangnu/dam1011/6(1).jpg', N'/Images/Images/_thumbs/filesDetail/6(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1011/6(1).jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (314, N'42', N'/Images/images/thoitrangnu/chanvay1012/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/thoitrangnu/chanvay1012/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (315, N'42', N'/Images/images/thoitrangnu/chanvay1012/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/thoitrangnu/chanvay1012/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (316, N'42', N'/Images/images/thoitrangnu/chanvay1012/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/thoitrangnu/chanvay1012/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (317, N'42', N'/Images/images/thoitrangnu/chanvay1012/5(1).jpg', N'/Images/Images/_thumbs/filesDetail/5(1).jpg', N'/Images/_thumbs/images/thoitrangnu/chanvay1012/5(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (318, N'42', N'/Images/images/thoitrangnu/chanvay1012/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/thoitrangnu/chanvay1012/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (319, N'43', N'/Images/images/thoitrangnu/dam1013/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1013/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (320, N'43', N'/Images/images/thoitrangnu/dam1013/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1013/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (321, N'43', N'/Images/images/thoitrangnu/dam1013/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1013/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (322, N'43', N'/Images/images/thoitrangnu/dam1013/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1013/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (323, N'43', N'/Images/images/thoitrangnu/dam1013/6(1).jpg', N'/Images/Images/_thumbs/filesDetail/6(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1013/6(1).jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (324, N'44', N'/Images/images/thoitrangnu/aovayroi/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/thoitrangnu/aovayroi/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (325, N'44', N'/Images/images/thoitrangnu/aovayroi/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/thoitrangnu/aovayroi/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (326, N'44', N'/Images/images/thoitrangnu/aovayroi/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/thoitrangnu/aovayroi/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (327, N'44', N'/Images/images/thoitrangnu/aovayroi/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/thoitrangnu/aovayroi/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (328, N'44', N'/Images/images/thoitrangnu/aovayroi/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/thoitrangnu/aovayroi/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (329, N'45', N'/Images/images/product_thumb/giaythethao/1100/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1100/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (330, N'45', N'/Images/images/product_thumb/giaythethao/1100/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1100/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (331, N'45', N'/Images/images/product_thumb/giaythethao/1100/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1100/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (332, N'45', N'/Images/images/product_thumb/giaythethao/1100/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1100/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (333, N'45', N'/Images/images/product_thumb/giaythethao/1100/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1100/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (339, N'47', N'/Images/images/thoitrangnu/dam1014/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1014/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (340, N'47', N'/Images/images/thoitrangnu/dam1014/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1014/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (341, N'47', N'/Images/images/thoitrangnu/dam1014/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1014/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (342, N'47', N'/Images/images/thoitrangnu/dam1014/5(1).jpg', N'/Images/Images/_thumbs/filesDetail/5(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1014/5(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (343, N'47', N'/Images/images/thoitrangnu/dam1014/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1014/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (344, N'48', N'/Images/images/thoitrangnu/dam1015/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1015/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (345, N'48', N'/Images/images/thoitrangnu/dam1015/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1015/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (346, N'48', N'/Images/images/thoitrangnu/dam1015/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1015/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (347, N'48', N'/Images/images/thoitrangnu/dam1015/5(1).jpg', N'/Images/Images/_thumbs/filesDetail/5(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1015/5(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (348, N'49', N'/Images/images/thoitrangnu/dam1016/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1016/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (349, N'49', N'/Images/images/thoitrangnu/dam1016/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1016/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (350, N'49', N'/Images/images/thoitrangnu/dam1016/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1016/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (351, N'49', N'/Images/images/thoitrangnu/dam1016/5(1).jpg', N'/Images/Images/_thumbs/filesDetail/5(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1016/5(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (352, N'49', N'/Images/images/thoitrangnu/dam1016/6(1).jpg', N'/Images/Images/_thumbs/filesDetail/6(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1016/6(1).jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (353, N'50', N'/Images/images/thoitrangnu/dam1017/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1017/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (354, N'50', N'/Images/images/thoitrangnu/dam1017/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1017/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (355, N'50', N'/Images/images/thoitrangnu/dam1017/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1017/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (356, N'50', N'/Images/images/thoitrangnu/dam1017/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1017/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (357, N'50', N'/Images/images/thoitrangnu/dam1017/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1017/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (358, N'51', N'/Images/images/product_thumb/giaysandan/giay1101/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1101/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (359, N'51', N'/Images/images/product_thumb/giaysandan/giay1101/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1101/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (360, N'51', N'/Images/images/product_thumb/giaysandan/giay1101/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1101/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (361, N'51', N'/Images/images/product_thumb/giaysandan/giay1101/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1101/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (362, N'51', N'/Images/images/product_thumb/giaysandan/giay1101/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1101/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (363, N'52', N'/Images/images/product_thumb/giaybupbe/giay1102/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaybupbe/giay1102/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (365, N'52', N'/Images/images/product_thumb/giaybupbe/giay1102/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaybupbe/giay1102/4.jpg', 3)
GO
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (367, N'52', N'/Images/images/product_thumb/giaybupbe/giay1102/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/product_thumb/giaybupbe/giay1102/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (368, N'52', N'/Images/images/product_thumb/giaybupbe/giay1102/7.jpg', N'/Images/Images/_thumbs/filesDetail/7.jpg', N'/Images/_thumbs/images/product_thumb/giaybupbe/giay1102/7.jpg', 6)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (376, N'52', N'/Images/images/product_thumb/giaybupbe/giay1102/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaybupbe/giay1102/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (378, N'52', N'/Images/images/product_thumb/giaybupbe/giay1102/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaybupbe/giay1102/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (381, N'53', N'/Images/images/product_thumb/caogot/caogot1103/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1103/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (382, N'53', N'/Images/images/product_thumb/caogot/caogot1103/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1103/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (383, N'53', N'/Images/images/product_thumb/caogot/caogot1103/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1103/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (384, N'53', N'/Images/images/product_thumb/caogot/caogot1103/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1103/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (385, N'53', N'/Images/images/product_thumb/caogot/caogot1103/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1103/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (386, N'53', N'/Images/images/product_thumb/caogot/caogot1103/7(1).jpg', N'/Images/Images/_thumbs/filesDetail/7(1).jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1103/7(1).jpg', 6)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (387, N'53', N'/Images/images/product_thumb/caogot/caogot1103/8(1).jpg', N'/Images/Images/_thumbs/filesDetail/8(1).jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1103/8(1).jpg', 7)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (388, N'54', N'/Images/images/thoitrangnu/dam1051/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1051/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (389, N'54', N'/Images/images/thoitrangnu/dam1051/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1051/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (390, N'54', N'/Images/images/thoitrangnu/dam1051/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1051/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (391, N'54', N'/Images/images/thoitrangnu/dam1051/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1051/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (392, N'54', N'/Images/images/thoitrangnu/dam1051/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1051/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (393, N'55', N'/Images/images/thoitrangnu/dam1052/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1052/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (394, N'55', N'/Images/images/thoitrangnu/dam1052/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1052/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (395, N'55', N'/Images/images/thoitrangnu/dam1052/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1052/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (396, N'55', N'/Images/images/thoitrangnu/dam1052/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1052/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (397, N'55', N'/Images/images/thoitrangnu/dam1052/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1052/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (398, N'56', N'/Images/images/thoitrangnu/dam1503/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1503/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (399, N'56', N'/Images/images/thoitrangnu/dam1503/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1503/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (400, N'56', N'/Images/images/thoitrangnu/dam1503/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1503/5.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (401, N'56', N'/Images/images/thoitrangnu/dam1503/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1503/6.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (402, N'57', N'/Images/images/thoitrangnu/dam1504/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1504/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (403, N'57', N'/Images/images/thoitrangnu/dam1504/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1504/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (404, N'57', N'/Images/images/thoitrangnu/dam1504/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1504/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (405, N'57', N'/Images/images/thoitrangnu/dam1504/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1504/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (406, N'57', N'/Images/images/thoitrangnu/dam1504/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1504/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (417, N'60', N'/Images/images/product_thumb/giaysandan/giayomchan1104/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giayomchan1104/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (418, N'60', N'/Images/images/product_thumb/giaysandan/giayomchan1104/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giayomchan1104/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (419, N'60', N'/Images/images/product_thumb/giaysandan/giayomchan1104/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giayomchan1104/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (420, N'60', N'/Images/images/product_thumb/giaysandan/giayomchan1104/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giayomchan1104/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (421, N'60', N'/Images/images/product_thumb/giaysandan/giayomchan1104/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giayomchan1104/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (422, N'61', N'/Images/images/product_thumb/giaysandan/giayomchan1105/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giayomchan1105/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (423, N'61', N'/Images/images/product_thumb/giaysandan/giayomchan1105/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giayomchan1105/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (424, N'61', N'/Images/images/product_thumb/giaysandan/giayomchan1105/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giayomchan1105/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (425, N'61', N'/Images/images/product_thumb/giaysandan/giayomchan1105/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giayomchan1105/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (447, N'66', N'/Images/images/thoitrangnu/dam1018/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1018/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (448, N'66', N'/Images/images/thoitrangnu/dam1018/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1018/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (449, N'67', N'/Images/images/thoitrangnu/dam1505/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1505/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (450, N'67', N'/Images/images/thoitrangnu/dam1505/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1505/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (451, N'67', N'/Images/images/thoitrangnu/dam1505/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1505/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (452, N'67', N'/Images/images/thoitrangnu/dam1505/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1505/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (453, N'67', N'/Images/images/thoitrangnu/dam1505/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1505/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (473, N'72', N'/Images/images/thoitrangnu/damvoan1506/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/thoitrangnu/damvoan1506/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (475, N'72', N'/Images/images/thoitrangnu/damvoan1506/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/thoitrangnu/damvoan1506/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (477, N'72', N'/Images/images/thoitrangnu/damvoan1506/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/thoitrangnu/damvoan1506/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (484, N'72', N'/Images/images/thoitrangnu/damvoan1506/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/thoitrangnu/damvoan1506/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (486, N'72', N'/Images/images/thoitrangnu/damvoan1506/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/thoitrangnu/damvoan1506/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (488, N'73', N'/Images/images/thoitrangnu/dam1019/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1019/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (489, N'73', N'/Images/images/thoitrangnu/dam1019/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1019/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (490, N'73', N'/Images/images/thoitrangnu/dam1019/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1019/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (491, N'73', N'/Images/images/thoitrangnu/dam1019/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1019/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (492, N'73', N'/Images/images/thoitrangnu/dam1019/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1019/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (493, N'74', N'/Images/images/thoitrangnu/dam1020/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/thoitrangnu/dam1020/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (494, N'74', N'/Images/images/thoitrangnu/dam1020/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1020/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (495, N'74', N'/Images/images/thoitrangnu/dam1020/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1020/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (496, N'74', N'/Images/images/thoitrangnu/dam1020/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1020/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (497, N'66', N'/Images/images/thoitrangnu/dam1018/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1018/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (498, N'66', N'/Images/images/thoitrangnu/dam1018/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1018/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (499, N'75', N'/Images/images/thoitrangnu/dam1022/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1022/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (500, N'75', N'/Images/images/thoitrangnu/dam1022/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1022/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (501, N'75', N'/Images/images/thoitrangnu/dam1022/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1022/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (502, N'75', N'/Images/images/thoitrangnu/dam1022/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1022/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (503, N'75', N'/Images/images/thoitrangnu/dam1022/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1022/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (504, N'76', N'/Images/images/thoitrangnu/dam1021/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1021/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (505, N'76', N'/Images/images/thoitrangnu/dam1021/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1021/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (506, N'76', N'/Images/images/thoitrangnu/dam1021/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1021/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (507, N'76', N'/Images/images/thoitrangnu/dam1021/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1021/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (508, N'76', N'/Images/images/thoitrangnu/dam1021/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1021/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (517, N'78', N'/Images/images/thoitrangnu/dam1507/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1507/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (518, N'78', N'/Images/images/thoitrangnu/dam1507/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1507/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (519, N'78', N'/Images/images/thoitrangnu/dam1507/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1507/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (520, N'78', N'/Images/images/thoitrangnu/dam1507/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1507/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (525, N'80', N'/Images/images/product_thumb/giaythethao/1108/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1108/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (526, N'80', N'/Images/images/product_thumb/giaythethao/1108/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1108/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (527, N'80', N'/Images/images/product_thumb/giaythethao/1108/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1108/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (528, N'80', N'/Images/images/product_thumb/giaythethao/1108/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1108/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (529, N'81', N'/Images/images/thoitrangnu/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/thoitrangnu/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (530, N'81', N'/Images/images/thoitrangnu/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/thoitrangnu/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (531, N'81', N'/Images/images/thoitrangnu/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/thoitrangnu/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (532, N'81', N'/Images/images/thoitrangnu/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/thoitrangnu/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (533, N'82', N'/Images/images/thoitrangnu/dam1508/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1508/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (534, N'82', N'/Images/images/thoitrangnu/dam1508/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1508/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (535, N'82', N'/Images/images/thoitrangnu/dam1508/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1508/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (536, N'82', N'/Images/images/thoitrangnu/dam1508/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1508/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (541, N'84', N'/Images/images/product_thumb/dep/dep1109/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/dep/dep1109/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (542, N'84', N'/Images/images/product_thumb/dep/dep1109/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/dep/dep1109/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (543, N'84', N'/Images/images/product_thumb/dep/dep1109/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/dep/dep1109/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (544, N'62', N'/Images/images/product_thumb/giaythethao/1110/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1110/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (545, N'62', N'/Images/images/product_thumb/giaythethao/1110/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1110/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (546, N'62', N'/Images/images/product_thumb/giaythethao/1110/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1110/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (547, N'62', N'/Images/images/product_thumb/giaythethao/1110/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1110/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (548, N'62', N'/Images/images/product_thumb/giaythethao/1110/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1110/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (549, N'62', N'/Images/images/product_thumb/giaythethao/1110/7.jpg', N'/Images/Images/_thumbs/filesDetail/7.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1110/7.jpg', 6)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (550, N'63', N'/Images/images/product_thumb/giaythethao/1112/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1112/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (551, N'63', N'/Images/images/product_thumb/giaythethao/1112/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1112/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (552, N'63', N'/Images/images/product_thumb/giaythethao/1112/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1112/4.jpg', 3)
GO
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (553, N'63', N'/Images/images/product_thumb/giaythethao/1112/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1112/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (554, N'58', N'/Images/images/product_thumb/giaysandan/giay1113/1.jpg', N'/Images/Images/_thumbs/filesDetail/1.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1113/1.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (555, N'58', N'/Images/images/product_thumb/giaysandan/giay1113/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1113/2.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (556, N'58', N'/Images/images/product_thumb/giaysandan/giay1113/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1113/3.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (557, N'58', N'/Images/images/product_thumb/giaysandan/giay1113/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1113/4.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (558, N'79', N'/Images/images/product_thumb/giaysandan/giay1120/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1120/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (559, N'79', N'/Images/images/product_thumb/giaysandan/giay1120/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1120/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (560, N'79', N'/Images/images/product_thumb/giaysandan/giay1120/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1120/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (561, N'79', N'/Images/images/product_thumb/giaysandan/giay1120/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1120/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (562, N'71', N'/Images/images/product_thumb/caogot/caogot1121/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1121/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (563, N'71', N'/Images/images/product_thumb/caogot/caogot1121/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1121/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (564, N'71', N'/Images/images/product_thumb/caogot/caogot1121/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1121/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (565, N'71', N'/Images/images/product_thumb/caogot/caogot1121/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1121/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (566, N'71', N'/Images/images/product_thumb/caogot/caogot1121/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1121/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (567, N'85', N'/Images/images/product_thumb/damvay/vayno1023/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/damvay/vayno1023/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (568, N'85', N'/Images/images/product_thumb/damvay/vayno1023/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/damvay/vayno1023/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (569, N'85', N'/Images/images/product_thumb/damvay/vayno1023/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/damvay/vayno1023/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (570, N'85', N'/Images/images/product_thumb/damvay/vayno1023/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/damvay/vayno1023/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (576, N'64', N'/Images/images/product_thumb/giaythethao/1115/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1115/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (577, N'64', N'/Images/images/product_thumb/giaythethao/1115/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1115/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (578, N'64', N'/Images/images/product_thumb/giaythethao/1115/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1115/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (579, N'64', N'/Images/images/product_thumb/giaythethao/1115/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1115/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (580, N'64', N'/Images/images/product_thumb/giaythethao/1115/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1115/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (581, N'46', N'/Images/images/product_thumb/caogot/caogot1116/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1116/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (582, N'46', N'/Images/images/product_thumb/caogot/caogot1116/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1116/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (583, N'46', N'/Images/images/product_thumb/caogot/caogot1116/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1116/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (584, N'46', N'/Images/images/product_thumb/caogot/caogot1116/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1116/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (585, N'46', N'/Images/images/product_thumb/caogot/caogot1116/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1116/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (586, N'46', N'/Images/images/product_thumb/caogot/caogot1116/7.jpg', N'/Images/Images/_thumbs/filesDetail/7.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1116/7.jpg', 6)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (587, N'86', N'/Images/images/product_thumb/damvay/setaovayroi1024/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/damvay/setaovayroi1024/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (588, N'86', N'/Images/images/product_thumb/damvay/setaovayroi1024/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/damvay/setaovayroi1024/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (589, N'86', N'/Images/images/product_thumb/damvay/setaovayroi1024/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/damvay/setaovayroi1024/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (590, N'86', N'/Images/images/product_thumb/damvay/setaovayroi1024/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/damvay/setaovayroi1024/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (591, N'86', N'/Images/images/product_thumb/damvay/setaovayroi1024/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/product_thumb/damvay/setaovayroi1024/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (592, N'68', N'/Images/images/product_thumb/giaythethao/1117/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1117/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (593, N'68', N'/Images/images/product_thumb/giaythethao/1117/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1117/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (594, N'68', N'/Images/images/product_thumb/giaythethao/1117/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1117/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (595, N'68', N'/Images/images/product_thumb/giaythethao/1117/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1117/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (596, N'68', N'/Images/images/product_thumb/giaythethao/1117/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1117/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (597, N'68', N'/Images/images/product_thumb/giaythethao/1117/7.jpg', N'/Images/Images/_thumbs/filesDetail/7.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1117/7.jpg', 6)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (598, N'87', N'/Images/images/thoitrangnu/dam1026/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1026/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (599, N'87', N'/Images/images/thoitrangnu/dam1026/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1026/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (600, N'87', N'/Images/images/thoitrangnu/dam1026/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1026/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (601, N'87', N'/Images/images/thoitrangnu/dam1026/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1026/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (602, N'88', N'/Images/images/product_thumb/damvay/damyem1025/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/damvay/damyem1025/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (603, N'88', N'/Images/images/product_thumb/damvay/damyem1025/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/damvay/damyem1025/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (604, N'88', N'/Images/images/product_thumb/damvay/damyem1025/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/damvay/damyem1025/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (605, N'88', N'/Images/images/product_thumb/damvay/damyem1025/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/damvay/damyem1025/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (606, N'88', N'/Images/images/product_thumb/damvay/damyem1025/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/product_thumb/damvay/damyem1025/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (648, N'98', N'/Images/images/product_thumb/giaysandan/giay1125/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1125/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (650, N'98', N'/Images/images/product_thumb/giaysandan/giay1125/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1125/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (653, N'98', N'/Images/images/product_thumb/giaysandan/giay1125/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1125/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (655, N'98', N'/Images/images/product_thumb/giaysandan/giay1125/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1125/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (657, N'77', N'/Images/images/thoitrangnu/damcongso/damxuongcocao1509/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/thoitrangnu/damcongso/damxuongcocao1509/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (658, N'77', N'/Images/images/thoitrangnu/damcongso/damxuongcocao1509/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/thoitrangnu/damcongso/damxuongcocao1509/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (659, N'77', N'/Images/images/thoitrangnu/damcongso/damxuongcocao1509/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/thoitrangnu/damcongso/damxuongcocao1509/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (660, N'77', N'/Images/images/thoitrangnu/damcongso/damxuongcocao1509/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/thoitrangnu/damcongso/damxuongcocao1509/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (661, N'65', N'/Images/images/product_thumb/giaythethao/1122/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1122/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (662, N'65', N'/Images/images/product_thumb/giaythethao/1122/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1122/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (663, N'65', N'/Images/images/product_thumb/giaythethao/1122/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1122/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (664, N'65', N'/Images/images/product_thumb/giaythethao/1122/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1122/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (665, N'65', N'/Images/images/product_thumb/giaythethao/1122/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1122/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (679, N'105', N'/Images/images/product_thumb/caogot/caogot1130/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1130/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (680, N'105', N'/Images/images/product_thumb/caogot/caogot1130/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1130/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (681, N'105', N'/Images/images/product_thumb/caogot/caogot1130/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1130/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (682, N'105', N'/Images/images/product_thumb/caogot/caogot1130/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1130/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (683, N'106', N'/Images/images/product_thumb/giaysandan/giayda1131/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giayda1131/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (684, N'106', N'/Images/images/product_thumb/giaysandan/giayda1131/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giayda1131/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (685, N'106', N'/Images/images/product_thumb/giaysandan/giayda1131/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giayda1131/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (686, N'106', N'/Images/images/product_thumb/giaysandan/giayda1131/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giayda1131/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (687, N'107', N'/Images/images/product_thumb/giaysandan/giay1132/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1132/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (688, N'107', N'/Images/images/product_thumb/giaysandan/giay1132/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1132/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (689, N'107', N'/Images/images/product_thumb/giaysandan/giay1132/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1132/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (690, N'107', N'/Images/images/product_thumb/giaysandan/giay1132/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1132/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (691, N'108', N'/Images/images/product_thumb/giayluoi/gjayluoi1133/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giayluoi/gjayluoi1133/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (692, N'108', N'/Images/images/product_thumb/giayluoi/gjayluoi1133/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giayluoi/gjayluoi1133/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (693, N'108', N'/Images/images/product_thumb/giayluoi/gjayluoi1133/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giayluoi/gjayluoi1133/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (694, N'108', N'/Images/images/product_thumb/giayluoi/gjayluoi1133/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giayluoi/gjayluoi1133/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (695, N'109', N'/Images/images/product_thumb/giayluoi/giayluoi1134/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giayluoi/giayluoi1134/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (696, N'109', N'/Images/images/product_thumb/giayluoi/giayluoi1134/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giayluoi/giayluoi1134/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (697, N'109', N'/Images/images/product_thumb/giayluoi/giayluoi1134/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giayluoi/giayluoi1134/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (698, N'109', N'/Images/images/product_thumb/giayluoi/giayluoi1134/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giayluoi/giayluoi1134/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (699, N'109', N'/Images/images/product_thumb/giayluoi/giayluoi1134/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/product_thumb/giayluoi/giayluoi1134/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (745, N'83', N'/Images/images/product_thumb/damvay/damyem1510/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/damvay/damyem1510/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (746, N'83', N'/Images/images/product_thumb/damvay/damyem1510/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/damvay/damyem1510/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (747, N'83', N'/Images/images/product_thumb/damvay/damyem1510/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/damvay/damyem1510/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (748, N'83', N'/Images/images/product_thumb/damvay/damyem1510/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/damvay/damyem1510/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (749, N'111', N'/Images/images/product_thumb/giaythethao/1123/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1123/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (750, N'111', N'/Images/images/product_thumb/giaythethao/1123/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1123/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (751, N'112', N'/Images/images/product_thumb/giaythethao/1124/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1124/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (752, N'112', N'/Images/images/product_thumb/giaythethao/1124/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1124/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (753, N'112', N'/Images/images/product_thumb/giaythethao/1124/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1124/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (754, N'112', N'/Images/images/product_thumb/giaythethao/1124/5(1).jpg', N'/Images/Images/_thumbs/filesDetail/5(1).jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1124/5(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (755, N'113', N'/Images/images/product_thumb/giaythethao/1126/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1126/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (756, N'113', N'/Images/images/product_thumb/giaythethao/1126/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1126/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (757, N'113', N'/Images/images/product_thumb/giaythethao/1126/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1126/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (758, N'113', N'/Images/images/product_thumb/giaythethao/1126/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1126/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (759, N'114', N'/Images/images/product_thumb/giaythethao/1127/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1127/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (760, N'114', N'/Images/images/product_thumb/giaythethao/1127/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1127/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (761, N'114', N'/Images/images/product_thumb/giaythethao/1127/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1127/4.jpg', 3)
GO
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (762, N'114', N'/Images/images/product_thumb/giaythethao/1127/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1127/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (763, N'115', N'/Images/images/product_thumb/giaythethao/1128/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1128/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (764, N'115', N'/Images/images/product_thumb/giaythethao/1128/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1128/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (765, N'115', N'/Images/images/product_thumb/giaythethao/1128/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1128/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (778, N'120', N'/Images/images/product_thumb/vicamtay/2001/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/2001/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (779, N'120', N'/Images/images/product_thumb/vicamtay/2001/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/2001/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (780, N'120', N'/Images/images/product_thumb/vicamtay/2001/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/2001/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (781, N'120', N'/Images/images/product_thumb/vicamtay/2001/5(1).jpg', N'/Images/Images/_thumbs/filesDetail/5(1).jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/2001/5(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (782, N'122', N'/Images/images/product_thumb/non/non2100/2(2).jpg', N'/Images/Images/_thumbs/filesDetail/2(2).jpg', N'/Images/_thumbs/images/product_thumb/non/non2100/2(2).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (783, N'122', N'/Images/images/product_thumb/non/non2100/3(2).jpg', N'/Images/Images/_thumbs/filesDetail/3(2).jpg', N'/Images/_thumbs/images/product_thumb/non/non2100/3(2).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (784, N'122', N'/Images/images/product_thumb/non/non2100/4(2).jpg', N'/Images/Images/_thumbs/filesDetail/4(2).jpg', N'/Images/_thumbs/images/product_thumb/non/non2100/4(2).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (785, N'122', N'/Images/images/product_thumb/non/non2100/5(2).jpg', N'/Images/Images/_thumbs/filesDetail/5(2).jpg', N'/Images/_thumbs/images/product_thumb/non/non2100/5(2).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (786, N'123', N'/Images/images/product_thumb/non/non2101/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/product_thumb/non/non2101/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (787, N'123', N'/Images/images/product_thumb/non/non2101/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/product_thumb/non/non2101/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (788, N'123', N'/Images/images/product_thumb/non/non2101/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/product_thumb/non/non2101/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (789, N'123', N'/Images/images/product_thumb/non/non2101/5(1).jpg', N'/Images/Images/_thumbs/filesDetail/5(1).jpg', N'/Images/_thumbs/images/product_thumb/non/non2101/5(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (790, N'124', N'/Images/images/product_thumb/non/non2102/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/product_thumb/non/non2102/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (791, N'124', N'/Images/images/product_thumb/non/non2102/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/product_thumb/non/non2102/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (792, N'124', N'/Images/images/product_thumb/non/non2102/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/product_thumb/non/non2102/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (793, N'124', N'/Images/images/product_thumb/non/non2102/5(1).jpg', N'/Images/Images/_thumbs/filesDetail/5(1).jpg', N'/Images/_thumbs/images/product_thumb/non/non2102/5(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (794, N'124', N'/Images/images/product_thumb/non/non2102/6(1).jpg', N'/Images/Images/_thumbs/filesDetail/6(1).jpg', N'/Images/_thumbs/images/product_thumb/non/non2102/6(1).jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (795, N'125', N'/Images/images/product_thumb/non/non2103/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/product_thumb/non/non2103/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (796, N'125', N'/Images/images/product_thumb/non/non2103/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/product_thumb/non/non2103/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (797, N'125', N'/Images/images/product_thumb/non/non2103/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/product_thumb/non/non2103/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (798, N'126', N'/Images/images/product_thumb/non/non2104/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/product_thumb/non/non2104/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (799, N'126', N'/Images/images/product_thumb/non/non2104/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/product_thumb/non/non2104/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (800, N'126', N'/Images/images/product_thumb/non/non2104/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/product_thumb/non/non2104/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (801, N'126', N'/Images/images/product_thumb/non/non2104/5(1).jpg', N'/Images/Images/_thumbs/filesDetail/5(1).jpg', N'/Images/_thumbs/images/product_thumb/non/non2104/5(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (802, N'126', N'/Images/images/product_thumb/non/non2104/6(1).jpg', N'/Images/Images/_thumbs/filesDetail/6(1).jpg', N'/Images/_thumbs/images/product_thumb/non/non2104/6(1).jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (803, N'127', N'/Images/images/product_thumb/non/non2105/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/non/non2105/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (804, N'127', N'/Images/images/product_thumb/non/non2105/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/non/non2105/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (805, N'127', N'/Images/images/product_thumb/non/non2105/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/non/non2105/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (806, N'127', N'/Images/images/product_thumb/non/non2105/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/non/non2105/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (807, N'128', N'/Images/images/product_thumb/non/non2106/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/product_thumb/non/non2106/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (808, N'128', N'/Images/images/product_thumb/non/non2106/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/product_thumb/non/non2106/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (809, N'128', N'/Images/images/product_thumb/non/non2106/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/product_thumb/non/non2106/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (810, N'128', N'/Images/images/product_thumb/non/non2106/5(1).jpg', N'/Images/Images/_thumbs/filesDetail/5(1).jpg', N'/Images/_thumbs/images/product_thumb/non/non2106/5(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (811, N'129', N'/Images/images/product_thumb/non/non2107/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/non/non2107/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (812, N'129', N'/Images/images/product_thumb/non/non2107/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/non/non2107/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (813, N'129', N'/Images/images/product_thumb/non/non2107/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/non/non2107/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (814, N'129', N'/Images/images/product_thumb/non/non2107/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/non/non2107/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (815, N'130', N'/Images/images/product_thumb/giaythethao/1129/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1129/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (816, N'130', N'/Images/images/product_thumb/giaythethao/1129/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1129/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (817, N'130', N'/Images/images/product_thumb/giaythethao/1129/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1129/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (818, N'130', N'/Images/images/product_thumb/giaythethao/1129/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1129/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (819, N'131', N'/Images/images/product_thumb/giayda/1130/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/product_thumb/giayda/1130/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (820, N'131', N'/Images/images/product_thumb/giayda/1130/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/product_thumb/giayda/1130/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (821, N'131', N'/Images/images/product_thumb/giayda/1130/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/product_thumb/giayda/1130/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (822, N'131', N'/Images/images/product_thumb/giayda/1130/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giayda/1130/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (823, N'132', N'/Images/images/product_thumb/giaythethao/1132/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1132/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (824, N'132', N'/Images/images/product_thumb/giaythethao/1132/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1132/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (825, N'132', N'/Images/images/product_thumb/giaythethao/1132/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1132/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (826, N'132', N'/Images/images/product_thumb/giaythethao/1132/5(1).jpg', N'/Images/Images/_thumbs/filesDetail/5(1).jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1132/5(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (827, N'132', N'/Images/images/product_thumb/giaythethao/1132/6(1).jpg', N'/Images/Images/_thumbs/filesDetail/6(1).jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1132/6(1).jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (828, N'133', N'/Images/images/product_thumb/giaythethao/1135/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1135/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (829, N'133', N'/Images/images/product_thumb/giaythethao/1135/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1135/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (830, N'133', N'/Images/images/product_thumb/giaythethao/1135/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1135/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (831, N'133', N'/Images/images/product_thumb/giaythethao/1135/5(1).jpg', N'/Images/Images/_thumbs/filesDetail/5(1).jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1135/5(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (832, N'134', N'/Images/images/product_thumb/giaythethao/1136/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1136/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (833, N'134', N'/Images/images/product_thumb/giaythethao/1136/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1136/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (834, N'134', N'/Images/images/product_thumb/giaythethao/1136/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1136/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (835, N'134', N'/Images/images/product_thumb/giaythethao/1136/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1136/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (836, N'135', N'/Images/images/product_thumb/giayluoi/giayluoi1137/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/product_thumb/giayluoi/giayluoi1137/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (837, N'135', N'/Images/images/product_thumb/giayluoi/giayluoi1137/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/product_thumb/giayluoi/giayluoi1137/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (838, N'136', N'/Images/images/product_thumb/caogot/caogot1138/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1138/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (839, N'136', N'/Images/images/product_thumb/caogot/caogot1138/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1138/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (840, N'136', N'/Images/images/product_thumb/caogot/caogot1138/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1138/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (841, N'136', N'/Images/images/product_thumb/caogot/caogot1138/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1138/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (842, N'137', N'/Images/images/product_thumb/caogot/caogot1139/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1139/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (843, N'137', N'/Images/images/product_thumb/caogot/caogot1139/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1139/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (844, N'137', N'/Images/images/product_thumb/caogot/caogot1139/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1139/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (845, N'137', N'/Images/images/product_thumb/caogot/caogot1139/5(1).jpg', N'/Images/Images/_thumbs/filesDetail/5(1).jpg', N'/Images/_thumbs/images/product_thumb/caogot/caogot1139/5(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (856, N'104', N'/Images/images/product_thumb/giaybupbe/giay1141/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaybupbe/giay1141/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (858, N'138', N'/Images/images/product_thumb/giaysandan/giay1142/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1142/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (859, N'138', N'/Images/images/product_thumb/giaysandan/giay1142/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1142/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (860, N'138', N'/Images/images/product_thumb/giaysandan/giay1142/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1142/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (861, N'138', N'/Images/images/product_thumb/giaysandan/giay1142/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1142/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (862, N'104', N'/Images/images/product_thumb/giaybupbe/giay1141/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaybupbe/giay1141/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (864, N'104', N'/Images/images/product_thumb/giaybupbe/giay1141/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaybupbe/giay1141/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (869, N'103', N'/Images/images/product_thumb/giaybupbe/giay1140/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaybupbe/giay1140/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (870, N'103', N'/Images/images/product_thumb/giaybupbe/giay1140/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaybupbe/giay1140/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (871, N'103', N'/Images/images/product_thumb/giaybupbe/giay1140/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaybupbe/giay1140/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (872, N'103', N'/Images/images/product_thumb/giaybupbe/giay1140/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaybupbe/giay1140/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (873, N'103', N'/Images/images/product_thumb/giaybupbe/giay1140/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaybupbe/giay1140/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (874, N'103', N'/Images/images/product_thumb/giaybupbe/giay1140/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaybupbe/giay1140/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (875, N'103', N'/Images/images/product_thumb/giaybupbe/giay1140/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaybupbe/giay1140/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (876, N'103', N'/Images/images/product_thumb/giaybupbe/giay1140/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaybupbe/giay1140/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (877, N'103', N'/Images/images/product_thumb/giaybupbe/giay1140/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaybupbe/giay1140/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (878, N'103', N'/Images/images/product_thumb/giaybupbe/giay1140/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaybupbe/giay1140/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (879, N'103', N'/Images/images/product_thumb/giaybupbe/giay1140/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaybupbe/giay1140/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (880, N'103', N'/Images/images/product_thumb/giaybupbe/giay1140/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaybupbe/giay1140/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (881, N'139', N'/Images/images/product_thumb/giaysandan/giay1143/2(1).jpg', N'/Images/Images/_thumbs/filesDetail/2(1).jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1143/2(1).jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (882, N'139', N'/Images/images/product_thumb/giaysandan/giay1143/3(1).jpg', N'/Images/Images/_thumbs/filesDetail/3(1).jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1143/3(1).jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (883, N'139', N'/Images/images/product_thumb/giaysandan/giay1143/4(1).jpg', N'/Images/Images/_thumbs/filesDetail/4(1).jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1143/4(1).jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (884, N'139', N'/Images/images/product_thumb/giaysandan/giay1143/5(1).jpg', N'/Images/Images/_thumbs/filesDetail/5(1).jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1143/5(1).jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (885, N'139', N'/Images/images/product_thumb/giaysandan/giay1143/6(1).jpg', N'/Images/Images/_thumbs/filesDetail/6(1).jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1143/6(1).jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (886, N'140', N'/Images/images/product_thumb/giaysandan/giay1145/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1145/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (887, N'140', N'/Images/images/product_thumb/giaysandan/giay1145/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1145/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (888, N'140', N'/Images/images/product_thumb/giaysandan/giay1145/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1145/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (889, N'140', N'/Images/images/product_thumb/giaysandan/giay1145/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1145/5.jpg', 4)
GO
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (890, N'140', N'/Images/images/product_thumb/giaysandan/giay1145/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/product_thumb/giaysandan/giay1145/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (891, N'141', N'/Images/images/product_thumb/giaythethao/1144/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1144/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (892, N'141', N'/Images/images/product_thumb/giaythethao/1144/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1144/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (893, N'141', N'/Images/images/product_thumb/giaythethao/1144/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1144/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (894, N'141', N'/Images/images/product_thumb/giaythethao/1144/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1144/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (895, N'142', N'/Images/images/product_thumb/giaythethao/1146/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1146/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (896, N'142', N'/Images/images/product_thumb/giaythethao/1146/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1146/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (897, N'142', N'/Images/images/product_thumb/giaythethao/1146/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1146/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (898, N'142', N'/Images/images/product_thumb/giaythethao/1146/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1146/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (899, N'143', N'/Images/images/product_thumb/giaythethao/1147/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1147/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (900, N'143', N'/Images/images/product_thumb/giaythethao/1147/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1147/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (901, N'143', N'/Images/images/product_thumb/giaythethao/1147/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giaythethao/1147/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (905, N'148', N'/Images/images/thoitrangnu/damcongso/dam1511/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/thoitrangnu/damcongso/dam1511/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (906, N'148', N'/Images/images/thoitrangnu/damcongso/dam1511/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/thoitrangnu/damcongso/dam1511/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (907, N'148', N'/Images/images/thoitrangnu/damcongso/dam1511/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/thoitrangnu/damcongso/dam1511/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (908, N'148', N'/Images/images/thoitrangnu/damcongso/dam1511/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/thoitrangnu/damcongso/dam1511/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (909, N'149', N'/Images/images/product_thumb/giayluoi/giayluoi1149/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/giayluoi/giayluoi1149/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (910, N'149', N'/Images/images/product_thumb/giayluoi/giayluoi1149/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/giayluoi/giayluoi1149/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (911, N'149', N'/Images/images/product_thumb/giayluoi/giayluoi1149/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/giayluoi/giayluoi1149/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (912, N'149', N'/Images/images/product_thumb/giayluoi/giayluoi1149/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/giayluoi/giayluoi1149/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (913, N'150', N'/Images/images/thoitrangnu/damcongso/dam1512/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/thoitrangnu/damcongso/dam1512/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (914, N'150', N'/Images/images/thoitrangnu/damcongso/dam1512/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/thoitrangnu/damcongso/dam1512/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (915, N'150', N'/Images/images/thoitrangnu/damcongso/dam1512/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/thoitrangnu/damcongso/dam1512/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (916, N'150', N'/Images/images/thoitrangnu/damcongso/dam1512/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/thoitrangnu/damcongso/dam1512/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (917, N'151', N'/Images/images/thoitrangnu/dam1513/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1513/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (918, N'151', N'/Images/images/thoitrangnu/dam1513/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1513/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (919, N'151', N'/Images/images/thoitrangnu/dam1513/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1513/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (920, N'152', N'/Images/images/product_thumb/vicamtay/tuixach2002/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/tuixach2002/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (921, N'152', N'/Images/images/product_thumb/vicamtay/tuixach2002/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/tuixach2002/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (922, N'152', N'/Images/images/product_thumb/vicamtay/tuixach2002/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/tuixach2002/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (923, N'152', N'/Images/images/product_thumb/vicamtay/tuixach2002/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/tuixach2002/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (924, N'153', N'/Images/images/product_thumb/vicamtay/tuixach2003/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/tuixach2003/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (925, N'153', N'/Images/images/product_thumb/vicamtay/tuixach2003/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/tuixach2003/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (926, N'153', N'/Images/images/product_thumb/vicamtay/tuixach2003/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/tuixach2003/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (927, N'153', N'/Images/images/product_thumb/vicamtay/tuixach2003/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/tuixach2003/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (928, N'154', N'/Images/images/product_thumb/vicamtay/2004/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/2004/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (929, N'154', N'/Images/images/product_thumb/vicamtay/2004/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/2004/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (930, N'154', N'/Images/images/product_thumb/vicamtay/2004/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/2004/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (931, N'154', N'/Images/images/product_thumb/vicamtay/2004/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/2004/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (932, N'155', N'/Images/images/product_thumb/vicamtay/tuixach2005/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/tuixach2005/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (933, N'155', N'/Images/images/product_thumb/vicamtay/tuixach2005/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/tuixach2005/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (934, N'155', N'/Images/images/product_thumb/vicamtay/tuixach2005/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/tuixach2005/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (935, N'155', N'/Images/images/product_thumb/vicamtay/tuixach2005/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/tuixach2005/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (936, N'155', N'/Images/images/product_thumb/vicamtay/tuixach2005/6.jpg', N'/Images/Images/_thumbs/filesDetail/6.jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/tuixach2005/6.jpg', 5)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (937, N'156', N'/Images/images/product_thumb/hoatai/hoatai2110/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/hoatai2110/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (938, N'156', N'/Images/images/product_thumb/hoatai/hoatai2110/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/hoatai2110/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (939, N'157', N'/Images/images/product_thumb/hoatai/hoatai2111/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/hoatai2111/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (940, N'157', N'/Images/images/product_thumb/hoatai/hoatai2111/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/hoatai2111/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (941, N'157', N'/Images/images/product_thumb/hoatai/hoatai2111/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/hoatai2111/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (942, N'157', N'/Images/images/product_thumb/hoatai/hoatai2111/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/hoatai2111/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (943, N'158', N'/Images/images/product_thumb/hoatai/hoatai2112/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/hoatai2112/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (944, N'158', N'/Images/images/product_thumb/hoatai/hoatai2112/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/hoatai2112/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (945, N'159', N'/Images/images/product_thumb/hoatai/hoatai2113/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/hoatai2113/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (946, N'160', N'/Images/images/product_thumb/hoatai/hoatai2114/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/hoatai2114/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (950, N'162', N'/Images/images/product_thumb/hoatai/hoatai2116/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/hoatai2116/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (951, N'162', N'/Images/images/product_thumb/hoatai/hoatai2116/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/hoatai2116/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (956, N'161', N'/Images/images/product_thumb/hoatai/hoatai2115/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/hoatai2115/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (957, N'161', N'/Images/images/product_thumb/hoatai/hoatai2115/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/hoatai2115/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (958, N'163', N'/Images/images/product_thumb/hoatai/bongtai2117/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/bongtai2117/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (959, N'163', N'/Images/images/product_thumb/hoatai/bongtai2117/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/bongtai2117/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (960, N'163', N'/Images/images/product_thumb/hoatai/bongtai2117/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/bongtai2117/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (961, N'163', N'/Images/images/product_thumb/hoatai/bongtai2117/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/bongtai2117/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (962, N'164', N'/Images/images/product_thumb/dongho/dongho2128/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/dongho/dongho2128/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (963, N'164', N'/Images/images/product_thumb/dongho/dongho2128/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/dongho/dongho2128/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (964, N'164', N'/Images/images/product_thumb/dongho/dongho2128/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/dongho/dongho2128/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (965, N'165', N'/Images/images/product_thumb/dongho/dongho2129/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/dongho/dongho2129/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (966, N'165', N'/Images/images/product_thumb/dongho/dongho2129/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/dongho/dongho2129/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (967, N'165', N'/Images/images/product_thumb/dongho/dongho2129/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/dongho/dongho2129/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (968, N'166', N'/Images/images/product_thumb/dongho/dongho2130/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/dongho/dongho2130/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (969, N'166', N'/Images/images/product_thumb/dongho/dongho2130/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/dongho/dongho2130/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (970, N'166', N'/Images/images/product_thumb/dongho/dongho2130/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/dongho/dongho2130/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (971, N'167', N'/Images/images/product_thumb/dongho/dongho2131/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/dongho/dongho2131/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (972, N'167', N'/Images/images/product_thumb/dongho/dongho2131/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/dongho/dongho2131/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (973, N'168', N'/Images/images/product_thumb/dongho/dongho2132/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/dongho/dongho2132/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (974, N'168', N'/Images/images/product_thumb/dongho/dongho2132/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/dongho/dongho2132/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (975, N'169', N'/Images/images/product_thumb/dongho/dongho2133/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/dongho/dongho2133/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (976, N'169', N'/Images/images/product_thumb/dongho/dongho2133/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/dongho/dongho2133/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (977, N'169', N'/Images/images/product_thumb/dongho/dongho2133/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/dongho/dongho2133/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (978, N'170', N'/Images/images/product_thumb/dongho/dongho2134/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/dongho/dongho2134/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (979, N'170', N'/Images/images/product_thumb/dongho/dongho2134/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/dongho/dongho2134/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (980, N'170', N'/Images/images/product_thumb/dongho/dongho2134/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/dongho/dongho2134/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (981, N'171', N'/Images/images/product_thumb/vong/vongtay2145/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongtay2145/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (982, N'171', N'/Images/images/product_thumb/vong/vongtay2145/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongtay2145/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (983, N'171', N'/Images/images/product_thumb/vong/vongtay2145/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongtay2145/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (984, N'172', N'/Images/images/product_thumb/vong/vongtay2146/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongtay2146/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (985, N'172', N'/Images/images/product_thumb/vong/vongtay2146/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongtay2146/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (986, N'172', N'/Images/images/product_thumb/vong/vongtay2146/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongtay2146/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (987, N'172', N'/Images/images/product_thumb/vong/vongtay2146/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongtay2146/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (988, N'173', N'/Images/images/product_thumb/vong/vongtay2147/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongtay2147/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (989, N'174', N'/Images/images/product_thumb/vong/vongtay2148/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongtay2148/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (990, N'174', N'/Images/images/product_thumb/vong/vongtay2148/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongtay2148/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (991, N'175', N'/Images/images/product_thumb/vong/vongtay2149/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongtay2149/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (992, N'176', N'/Images/images/product_thumb/vong/vongco2150/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongco2150/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (993, N'176', N'/Images/images/product_thumb/vong/vongco2150/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongco2150/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (994, N'177', N'/Images/images/product_thumb/hoatai/bongtai2118/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/bongtai2118/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (995, N'177', N'/Images/images/product_thumb/hoatai/bongtai2118/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/bongtai2118/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (996, N'178', N'/Images/images/product_thumb/hoatai/bongtai2119/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/bongtai2119/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (997, N'178', N'/Images/images/product_thumb/hoatai/bongtai2119/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/bongtai2119/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (998, N'178', N'/Images/images/product_thumb/hoatai/bongtai2119/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/bongtai2119/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (999, N'179', N'/Images/images/product_thumb/hoatai/bongtai2120/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/bongtai2120/2.jpg', 1)
GO
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1000, N'179', N'/Images/images/product_thumb/hoatai/bongtai2120/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/bongtai2120/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1001, N'179', N'/Images/images/product_thumb/hoatai/bongtai2120/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/hoatai/bongtai2120/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1002, N'180', N'/Images/images/product_thumb/vong/vongco2151/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongco2151/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1003, N'180', N'/Images/images/product_thumb/vong/vongco2151/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongco2151/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1004, N'180', N'/Images/images/product_thumb/vong/vongco2151/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongco2151/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1005, N'180', N'/Images/images/product_thumb/vong/vongco2151/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongco2151/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1006, N'181', N'/Images/images/product_thumb/vong/vongco2152/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongco2152/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1007, N'181', N'/Images/images/product_thumb/vong/vongco2152/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongco2152/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1008, N'181', N'/Images/images/product_thumb/vong/vongco2152/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongco2152/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1009, N'181', N'/Images/images/product_thumb/vong/vongco2152/5.jpg', N'/Images/Images/_thumbs/filesDetail/5.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongco2152/5.jpg', 4)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1010, N'182', N'/Images/images/product_thumb/vong/vongco2153/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongco2153/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1011, N'182', N'/Images/images/product_thumb/vong/vongco2153/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongco2153/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1012, N'182', N'/Images/images/product_thumb/vong/vongco2153/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/product_thumb/vong/vongco2153/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1013, N'183', N'/Images/images/thoitrangnu/dam1514/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1514/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1014, N'183', N'/Images/images/thoitrangnu/dam1514/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1514/3.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1015, N'183', N'/Images/images/thoitrangnu/dam1514/4.jpg', N'/Images/Images/_thumbs/filesDetail/4.jpg', N'/Images/_thumbs/images/thoitrangnu/dam1514/4.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1019, N'185', N'/Images/images/product_thumb/vicamtay/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1020, N'185', N'/Images/images/product_thumb/vicamtay/18.jpg', N'/Images/Images/_thumbs/filesDetail/18.jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/18.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1021, N'186', N'/Images/images/product_thumb/vicamtay/vicamtay2006/18.jpg', N'/Images/Images/_thumbs/filesDetail/18.jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/vicamtay2006/18.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1022, N'186', N'/Images/images/product_thumb/vicamtay/vicamtay2006/19.jpg', N'/Images/Images/_thumbs/filesDetail/19.jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/vicamtay2006/19.jpg', 2)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1023, N'186', N'/Images/images/product_thumb/vicamtay/vicamtay2006/20.jpg', N'/Images/Images/_thumbs/filesDetail/20.jpg', N'/Images/_thumbs/images/product_thumb/vicamtay/vicamtay2006/20.jpg', 3)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1030, N'188', N'/Images/images/product_thumb/thatlung/thatlung3000/2.jpg', N'/Images/Images/_thumbs/filesDetail/2.jpg', N'/Images/_thumbs/images/product_thumb/thatlung/thatlung3000/2.jpg', 1)
INSERT [dbo].[Chitiethinh] ([id], [IDsanpham], [Images], [Thumimg], [Thumsimg], [ord]) VALUES (1031, N'188', N'/Images/images/product_thumb/thatlung/thatlung3000/3.jpg', N'/Images/Images/_thumbs/filesDetail/3.jpg', N'/Images/_thumbs/images/product_thumb/thatlung/thatlung3000/3.jpg', 2)
SET IDENTITY_INSERT [dbo].[Chitiethinh] OFF
SET IDENTITY_INSERT [dbo].[DocumentType] ON 

INSERT [dbo].[DocumentType] ([Id], [Name], [Ord], [Active], [Lang], [NameEn]) VALUES (1, N'Nghị định', 1, 1, N'vi', NULL)
SET IDENTITY_INSERT [dbo].[DocumentType] OFF
SET IDENTITY_INSERT [dbo].[Donhang] ON 

INSERT [dbo].[Donhang] ([IDhd], [IDuser], [SDT], [Hoten], [Mail], [Diachi], [Tinh], [Huyen], [Xungho], [Hinhthucthanhtoan], [Goidichvu], [Tongtienhang], [Thanhtoan], [ngaydathang], [KH], [Duyet], [Khuyenmai], [Hinhthucgiaohang], [GhiChuKhac], [Tiengiamgia]) VALUES (109, NULL, N'0938293118', N'li', N'gogo_386@163.com', N'quan 2', NULL, NULL, N'anh', NULL, NULL, 4471250, NULL, CAST(0x0000A63900E6850B AS DateTime), NULL, N'0', NULL, N'30000', NULL, 0)
INSERT [dbo].[Donhang] ([IDhd], [IDuser], [SDT], [Hoten], [Mail], [Diachi], [Tinh], [Huyen], [Xungho], [Hinhthucthanhtoan], [Goidichvu], [Tongtienhang], [Thanhtoan], [ngaydathang], [KH], [Duyet], [Khuyenmai], [Hinhthucgiaohang], [GhiChuKhac], [Tiengiamgia]) VALUES (110, NULL, N'0902671917', N'sấ', N'lethehau90.vn@gmail.com', N'thang binh quang nam', NULL, NULL, N'fasf', NULL, NULL, 4381000, NULL, CAST(0x0000A63D000805F5 AS DateTime), NULL, N'0', NULL, N'30000', N'thang binh quang nam', 0)
INSERT [dbo].[Donhang] ([IDhd], [IDuser], [SDT], [Hoten], [Mail], [Diachi], [Tinh], [Huyen], [Xungho], [Hinhthucthanhtoan], [Goidichvu], [Tongtienhang], [Thanhtoan], [ngaydathang], [KH], [Duyet], [Khuyenmai], [Hinhthucgiaohang], [GhiChuKhac], [Tiengiamgia]) VALUES (111, NULL, N'092671917', N'rew', N'dsfds@gmail.com', N'dfdsfs', NULL, NULL, N'fasf', NULL, NULL, 4851250, NULL, CAST(0x0000A63D000A2286 AS DateTime), NULL, N'0', NULL, N'30000', N'fdgfdg', 0)
INSERT [dbo].[Donhang] ([IDhd], [IDuser], [SDT], [Hoten], [Mail], [Diachi], [Tinh], [Huyen], [Xungho], [Hinhthucthanhtoan], [Goidichvu], [Tongtienhang], [Thanhtoan], [ngaydathang], [KH], [Duyet], [Khuyenmai], [Hinhthucgiaohang], [GhiChuKhac], [Tiengiamgia]) VALUES (112, NULL, N'0902671917', N'Hậu', N'lethehau90.vn@gmail.com', N'thăng bình quảng nam', NULL, NULL, N'anh', NULL, NULL, 4836600, NULL, CAST(0x0000A63D000C274C AS DateTime), NULL, N'0', NULL, N'30000', N'thăng bình quảng nam', 0)
SET IDENTITY_INSERT [dbo].[Donhang] OFF
SET IDENTITY_INSERT [dbo].[EmailRegisters] ON 

INSERT [dbo].[EmailRegisters] ([Id], [Email], [Createdate], [Status]) VALUES (1, N'sontest@yahoo.com', CAST(0x9EDE0000 AS SmallDateTime), 0)
SET IDENTITY_INSERT [dbo].[EmailRegisters] OFF
SET IDENTITY_INSERT [dbo].[Even_Date] ON 

INSERT [dbo].[Even_Date] ([Id], [Name], [NameEn], [content], [contentEn], [Date_event_start], [Date_event_end], [Price_event], [Ord], [Active]) VALUES (1, N'ngày 8/3', N'Nhân dịp tặng quà ngày 8/3', N'Nh&acirc;n dịp tặng qu&agrave; ng&agrave;y 8/3', N'Nh&acirc;n dịp tặng qu&agrave; ng&agrave;y 8/3', CAST(0x0000A6AC00000000 AS DateTime), CAST(0x0000A6AE00000000 AS DateTime), 20, 1, 1)
SET IDENTITY_INSERT [dbo].[Even_Date] OFF
SET IDENTITY_INSERT [dbo].[GroupLibrary] ON 

INSERT [dbo].[GroupLibrary] ([Id], [Name], [Tag], [Level], [Image], [Ord], [Active], [Lang], [NameEn]) VALUES (1, N'Thư viện tài liệu', N'thu-vien-tai-lieu', NULL, NULL, 1, 1, N'vi', NULL)
INSERT [dbo].[GroupLibrary] ([Id], [Name], [Tag], [Level], [Image], [Ord], [Active], [Lang], [NameEn]) VALUES (2, N'Thư viện ảnh', N'thu-vien-anh', NULL, N'', 2, 1, N'vi', NULL)
INSERT [dbo].[GroupLibrary] ([Id], [Name], [Tag], [Level], [Image], [Ord], [Active], [Lang], [NameEn]) VALUES (3, N'Hoạt động công ty', N'hoat-dong-cong-ty', N'1', N'/Images/images/hoctoiec.jpg', 1, 1, N'vi', NULL)
INSERT [dbo].[GroupLibrary] ([Id], [Name], [Tag], [Level], [Image], [Ord], [Active], [Lang], [NameEn]) VALUES (4, N'Kho vận Mỹ Đình', N'kho-van-my-dinh', N'2', N'', 2, 1, N'vi', NULL)
INSERT [dbo].[GroupLibrary] ([Id], [Name], [Tag], [Level], [Image], [Ord], [Active], [Lang], [NameEn]) VALUES (5, N'Kho vận Bắc Ninh', N'kho-van-bac-ninh', N'3', N'', 3, 1, N'vi', NULL)
INSERT [dbo].[GroupLibrary] ([Id], [Name], [Tag], [Level], [Image], [Ord], [Active], [Lang], [NameEn]) VALUES (6, N'Thư viện ALS', N'thu-vien-als', N'1', N'/uploads/images/Logo.jpg', 1, 0, N'vi', NULL)
INSERT [dbo].[GroupLibrary] ([Id], [Name], [Tag], [Level], [Image], [Ord], [Active], [Lang], [NameEn]) VALUES (7, N'Demo', N'demo', NULL, N'/Images/images/en.jpg', 1, 1, N'vi', NULL)
SET IDENTITY_INSERT [dbo].[GroupLibrary] OFF
SET IDENTITY_INSERT [dbo].[GroupMember] ON 

INSERT [dbo].[GroupMember] ([Id], [Name], [Active], [NameEn]) VALUES (1, N'Nhóm đăng ký', 1, NULL)
SET IDENTITY_INSERT [dbo].[GroupMember] OFF
SET IDENTITY_INSERT [dbo].[GroupMenuSanPham] ON 

INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (1, N'Thời trang nam', N'thoi-trang-nam', NULL, N'', N'Thời trang nam', N'Thời trang nam', 1, 0, 0, 1, N'vi', N'/Uploads/files/thanhtoan/service-3.png', N'Thời trang nam', N'', N'                                                                                                    ', N'Thời trang nam', N'Thời trang nam')
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (2, N'Áo nam nam', N'ao-nam-nam', N'1', N'', N'Áo nam', N'Áo nam', 1, 1, 0, 1, N'vi', N'/Uploads/images/Logo/logo_smoking.png', N'Áo nam', N'', N'                                                                                                    ', N'Áo nam', N'Áo nam')
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (4, N'Quần nam', N'quan-nam', N'1', N'', N'', N'', 1, 0, 0, 1, N'vi', N'/Uploads/files/thanhtoan/service-1.png', N'Quần nam', N'', N'                                                                                                    ', N'Quần nam', N'Quần nam')
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (5, N'Giày Nam', N'giay-nam', N'1', N'', N'', N'', 1, 0, 0, 1, N'vi', N'/Uploads/files/thanhtoan/service-1.png', N'Giày Nam', N'', N'                                                                                                    ', N'Giày Nam', N'Giày Nam')
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (6, N'Thời Trang nữ', N'thoi-trang-nu', NULL, N'', N'Thời Trang nữ', N'Thời Trang nữ', 1, 0, 0, 1, N'vi', N'', N'', N'', N'                                                                                                    ', N'Thời Trang nữ', N'')
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (7, N'Áo thun', N'ao-thun', N'2', N'', N'', N'', 1, 0, 0, 1, N'vi', N'', N'', N'', N'                                                                                                    ', N'', N'')
SET IDENTITY_INSERT [dbo].[GroupMenuSanPham] OFF
SET IDENTITY_INSERT [dbo].[GroupNewMenuSanPhamDetail] ON 

INSERT [dbo].[GroupNewMenuSanPhamDetail] ([Id], [Name], [NameEn], [Tag], [IDthuonghieu], [NguonSanPham], [Mausac], [Kichthuoc], [SanphamCungloai], [Donvi], [Luotdanhgia], [Video], [Title], [Description], [Keyword], [Priority], [Index], [Order], [Active], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [Image], [Image1], [Image2], [Image3], [Image4], [Image5], [Content], [ContentEn], [Detail], [DetailEn], [Khuyenmai], [KhuyenmaiEn], [Baohanh], [BaohanhEn], [DacDiemNoiBat], [DacDiemNoiBatEn], [Thongdiep], [ThongdiepEn], [Seri], [Luotxem], [Soluongmua], [DateCreate], [DateView], [Stock], [Number_Stock], [Vat], [Gianhaphang], [Giaban], [Phantramkhuyenmai], [Giabankhuyenmai], [DateStart_Event], [DateEnd_Event], [Giaban_Event], [Content_Event], [Content_EventEn]) VALUES (2, N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', N'bai-dang-san-pham-1', N'Chanel,Adidas', N'Trung Quốc', N'Đỏ,Vàng,Cam,Da Trời,Đen,Màu Lá Cây,Màu Sữa', N'XX,X,FreeSize', N'quan-nam,thoi-trang-nu', NULL, N'', N'https://www.youtube.com/watch?v=u9igMr6iLtw', N'', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', 2, 1, 1, 1, N'4', N'thoi-trang-nam', N'thoi-trang-nam', N'quan-nam', N'/Uploads/files/backgroadheader.jpg', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', N'B&agrave;i đăng sản phẩm 1', N'', N'abc', N'abc', N'abc', N'abc', N'', N'', N'abc', N'abc', N'abc', 0, 0, CAST(0x1D3C0B00 AS Date), CAST(0x1D3C0B00 AS Date), 1, 300, 1, 300, 230000, 10, 207000, CAST(0x1D3C0B00 AS Date), CAST(0x243C0B00 AS Date), 400, N'Bài đăng Sản Phẩm', N'Bài đăng Sản Phẩm')
INSERT [dbo].[GroupNewMenuSanPhamDetail] ([Id], [Name], [NameEn], [Tag], [IDthuonghieu], [NguonSanPham], [Mausac], [Kichthuoc], [SanphamCungloai], [Donvi], [Luotdanhgia], [Video], [Title], [Description], [Keyword], [Priority], [Index], [Order], [Active], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [Image], [Image1], [Image2], [Image3], [Image4], [Image5], [Content], [ContentEn], [Detail], [DetailEn], [Khuyenmai], [KhuyenmaiEn], [Baohanh], [BaohanhEn], [DacDiemNoiBat], [DacDiemNoiBatEn], [Thongdiep], [ThongdiepEn], [Seri], [Luotxem], [Soluongmua], [DateCreate], [DateView], [Stock], [Number_Stock], [Vat], [Gianhaphang], [Giaban], [Phantramkhuyenmai], [Giabankhuyenmai], [DateStart_Event], [DateEnd_Event], [Giaban_Event], [Content_Event], [Content_EventEn]) VALUES (3, N'Bài đăng sản phẩm 2', N'Bài đăng sản phẩm 1', N'bai-dang-san-pham-2', N'Chanel,Adidas', N'Trung Quốc', N'Đỏ,Vàng,Cam,Da Trời,Đen,Màu Lá Cây,Màu Sữa', N'XX,X,FreeSize', N'ao-nam,quan-nam,thoi-trang-nu', NULL, N'', N'https://www.youtube.com/watch?v=u9igMr6iLtw', N'', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', 2, 1, 1, 1, N'4', N'thoi-trang-nam', N'thoi-trang-nam', N'quan-nam', N'/Uploads/files/backgroadheader.jpg', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', N'B&agrave;i đăng sản phẩm 1', N'', N'abc', N'abc', N'abc', N'abc', N'', N'', N'abc', N'abc', N'abc', 0, 0, CAST(0x1F3C0B00 AS Date), CAST(0x00000000 AS Date), 1, 300, 1, 300, 230000, 10, 207000, CAST(0x1D3C0B00 AS Date), CAST(0x243C0B00 AS Date), 400, N'Bài đăng Sản Phẩm', N'Bài đăng Sản Phẩm')
INSERT [dbo].[GroupNewMenuSanPhamDetail] ([Id], [Name], [NameEn], [Tag], [IDthuonghieu], [NguonSanPham], [Mausac], [Kichthuoc], [SanphamCungloai], [Donvi], [Luotdanhgia], [Video], [Title], [Description], [Keyword], [Priority], [Index], [Order], [Active], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [Image], [Image1], [Image2], [Image3], [Image4], [Image5], [Content], [ContentEn], [Detail], [DetailEn], [Khuyenmai], [KhuyenmaiEn], [Baohanh], [BaohanhEn], [DacDiemNoiBat], [DacDiemNoiBatEn], [Thongdiep], [ThongdiepEn], [Seri], [Luotxem], [Soluongmua], [DateCreate], [DateView], [Stock], [Number_Stock], [Vat], [Gianhaphang], [Giaban], [Phantramkhuyenmai], [Giabankhuyenmai], [DateStart_Event], [DateEnd_Event], [Giaban_Event], [Content_Event], [Content_EventEn]) VALUES (4, N'Bài đăng sản phẩm 3', N'Bài đăng sản phẩm 1', N'bai-dang-san-pham-3', N'Chanel,Adidas', N'Trung Quốc', N'Đỏ,Vàng,Cam,Da Trời,Đen,Màu Lá Cây,Màu Sữa', N'XX,X,FreeSize', N'ao-nam,quan-nam,thoi-trang-nu', NULL, N'', N'https://www.youtube.com/watch?v=u9igMr6iLtw', N'', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', 2, 1, 1, 1, N'4', N'thoi-trang-nam', N'thoi-trang-nam', N'quan-nam', N'/Uploads/files/backgroadheader.jpg', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', N'B&agrave;i đăng sản phẩm 1', N'', N'abc', N'abc', N'abc', N'abc', N'', N'', N'abc', N'abc', N'abc', 0, 0, CAST(0x1F3C0B00 AS Date), CAST(0x00000000 AS Date), 1, 300, 1, 300, 230000, 10, 207000, CAST(0x1D3C0B00 AS Date), CAST(0x243C0B00 AS Date), 400, N'Bài đăng Sản Phẩm', N'Bài đăng Sản Phẩm')
INSERT [dbo].[GroupNewMenuSanPhamDetail] ([Id], [Name], [NameEn], [Tag], [IDthuonghieu], [NguonSanPham], [Mausac], [Kichthuoc], [SanphamCungloai], [Donvi], [Luotdanhgia], [Video], [Title], [Description], [Keyword], [Priority], [Index], [Order], [Active], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [Image], [Image1], [Image2], [Image3], [Image4], [Image5], [Content], [ContentEn], [Detail], [DetailEn], [Khuyenmai], [KhuyenmaiEn], [Baohanh], [BaohanhEn], [DacDiemNoiBat], [DacDiemNoiBatEn], [Thongdiep], [ThongdiepEn], [Seri], [Luotxem], [Soluongmua], [DateCreate], [DateView], [Stock], [Number_Stock], [Vat], [Gianhaphang], [Giaban], [Phantramkhuyenmai], [Giabankhuyenmai], [DateStart_Event], [DateEnd_Event], [Giaban_Event], [Content_Event], [Content_EventEn]) VALUES (5, N'Bài đăng sản phẩm 4', N'Bài đăng sản phẩm 1', N'bai-dang-san-pham-4', N'Chanel,Adidas', N'Trung Quốc', N'Đỏ,Vàng,Cam,Da Trời,Đen,Màu Lá Cây,Màu Sữa', N'XX,X,FreeSize', N'ao-nam,quan-nam,thoi-trang-nu', NULL, N'', N'https://www.youtube.com/watch?v=u9igMr6iLtw', N'', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', 2, 1, 1, 1, N'4', N'thoi-trang-nam', N'thoi-trang-nam', N'quan-nam', N'/Uploads/files/backgroadheader.jpg', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', N'B&agrave;i đăng sản phẩm 1', N'', N'abc', N'abc', N'abc', N'abc', N'', N'', N'abc', N'abc', N'abc', 0, 0, CAST(0x1F3C0B00 AS Date), NULL, 1, 300, 1, 300, 230000, 10, 207000, CAST(0x1D3C0B00 AS Date), CAST(0x243C0B00 AS Date), 400, N'Bài đăng Sản Phẩm', N'Bài đăng Sản Phẩm')
INSERT [dbo].[GroupNewMenuSanPhamDetail] ([Id], [Name], [NameEn], [Tag], [IDthuonghieu], [NguonSanPham], [Mausac], [Kichthuoc], [SanphamCungloai], [Donvi], [Luotdanhgia], [Video], [Title], [Description], [Keyword], [Priority], [Index], [Order], [Active], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [Image], [Image1], [Image2], [Image3], [Image4], [Image5], [Content], [ContentEn], [Detail], [DetailEn], [Khuyenmai], [KhuyenmaiEn], [Baohanh], [BaohanhEn], [DacDiemNoiBat], [DacDiemNoiBatEn], [Thongdiep], [ThongdiepEn], [Seri], [Luotxem], [Soluongmua], [DateCreate], [DateView], [Stock], [Number_Stock], [Vat], [Gianhaphang], [Giaban], [Phantramkhuyenmai], [Giabankhuyenmai], [DateStart_Event], [DateEnd_Event], [Giaban_Event], [Content_Event], [Content_EventEn]) VALUES (6, N'Bài đăng sản phẩm 5', N'Bài đăng sản phẩm 1', N'bai-dang-san-pham-5', N'Chanel,Adidas', N'Trung Quốc', N'Đỏ,Vàng,Cam,Da Trời,Đen,Màu Lá Cây,Màu Sữa', N'XX,X,FreeSize', N'ao-nam,quan-nam,thoi-trang-nu', NULL, N'', N'https://www.youtube.com/watch?v=u9igMr6iLtw', N'', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', 2, 1, 1, 1, N'4', N'thoi-trang-nam', N'thoi-trang-nam', N'quan-nam', N'/Uploads/files/backgroadheader.jpg', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', N'B&agrave;i đăng sản phẩm 1', N'', N'abc', N'abc', N'abc', N'abc', N'', N'', N'abc', N'abc', N'abc', 0, 0, CAST(0x1F3C0B00 AS Date), NULL, 1, 300, 1, 300, 230000, 10, 207000, CAST(0x1D3C0B00 AS Date), CAST(0x243C0B00 AS Date), 400, N'Bài đăng Sản Phẩm', N'Bài đăng Sản Phẩm')
INSERT [dbo].[GroupNewMenuSanPhamDetail] ([Id], [Name], [NameEn], [Tag], [IDthuonghieu], [NguonSanPham], [Mausac], [Kichthuoc], [SanphamCungloai], [Donvi], [Luotdanhgia], [Video], [Title], [Description], [Keyword], [Priority], [Index], [Order], [Active], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [Image], [Image1], [Image2], [Image3], [Image4], [Image5], [Content], [ContentEn], [Detail], [DetailEn], [Khuyenmai], [KhuyenmaiEn], [Baohanh], [BaohanhEn], [DacDiemNoiBat], [DacDiemNoiBatEn], [Thongdiep], [ThongdiepEn], [Seri], [Luotxem], [Soluongmua], [DateCreate], [DateView], [Stock], [Number_Stock], [Vat], [Gianhaphang], [Giaban], [Phantramkhuyenmai], [Giabankhuyenmai], [DateStart_Event], [DateEnd_Event], [Giaban_Event], [Content_Event], [Content_EventEn]) VALUES (7, N'Bài đăng sản phẩm 6', N'Bài đăng sản phẩm 1', N'bai-dang-san-pham-6', N'Chanel,Adidas', N'Trung Quốc', N'Đỏ,Vàng,Cam,Da Trời,Đen,Màu Lá Cây,Màu Sữa', N'XX,X,FreeSize', N'ao-nam,quan-nam,thoi-trang-nu', NULL, N'', N'https://www.youtube.com/watch?v=u9igMr6iLtw', N'', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', 2, 1, 1, 1, N'4', N'thoi-trang-nam', N'thoi-trang-nam', N'quan-nam', N'/Uploads/files/backgroadheader.jpg', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', N'B&agrave;i đăng sản phẩm 1', N'', N'abc', N'abc', N'abc', N'abc', N'', N'', N'abc', N'abc', N'abc', 0, 0, CAST(0x1F3C0B00 AS Date), NULL, 1, 300, 1, 300, 230000, 10, 207000, CAST(0x1D3C0B00 AS Date), CAST(0x243C0B00 AS Date), 400, N'Bài đăng Sản Phẩm', N'Bài đăng Sản Phẩm')
INSERT [dbo].[GroupNewMenuSanPhamDetail] ([Id], [Name], [NameEn], [Tag], [IDthuonghieu], [NguonSanPham], [Mausac], [Kichthuoc], [SanphamCungloai], [Donvi], [Luotdanhgia], [Video], [Title], [Description], [Keyword], [Priority], [Index], [Order], [Active], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [Image], [Image1], [Image2], [Image3], [Image4], [Image5], [Content], [ContentEn], [Detail], [DetailEn], [Khuyenmai], [KhuyenmaiEn], [Baohanh], [BaohanhEn], [DacDiemNoiBat], [DacDiemNoiBatEn], [Thongdiep], [ThongdiepEn], [Seri], [Luotxem], [Soluongmua], [DateCreate], [DateView], [Stock], [Number_Stock], [Vat], [Gianhaphang], [Giaban], [Phantramkhuyenmai], [Giabankhuyenmai], [DateStart_Event], [DateEnd_Event], [Giaban_Event], [Content_Event], [Content_EventEn]) VALUES (8, N'Bài đăng sản phẩm 7', N'Bài đăng sản phẩm 1', N'bai-dang-san-pham-7', N'Chanel,Adidas', N'Trung Quốc', N'Đỏ,Vàng,Cam,Da Trời,Đen,Màu Lá Cây,Màu Sữa', N'XX,X,FreeSize', N'ao-nam,quan-nam,thoi-trang-nu', NULL, N'', N'https://www.youtube.com/watch?v=u9igMr6iLtw', N'', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', 2, 1, 1, 1, N'4', N'thoi-trang-nam', N'thoi-trang-nam', N'quan-nam', N'/Uploads/files/backgroadheader.jpg', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', N'B&agrave;i đăng sản phẩm 1', N'', N'abc', N'abc', N'abc', N'abc', N'', N'', N'abc', N'abc', N'abc', 0, 0, CAST(0x1F3C0B00 AS Date), NULL, 1, 300, 1, 300, 230000, 10, 207000, CAST(0x1D3C0B00 AS Date), CAST(0x243C0B00 AS Date), 400, N'Bài đăng Sản Phẩm', N'Bài đăng Sản Phẩm')
INSERT [dbo].[GroupNewMenuSanPhamDetail] ([Id], [Name], [NameEn], [Tag], [IDthuonghieu], [NguonSanPham], [Mausac], [Kichthuoc], [SanphamCungloai], [Donvi], [Luotdanhgia], [Video], [Title], [Description], [Keyword], [Priority], [Index], [Order], [Active], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [Image], [Image1], [Image2], [Image3], [Image4], [Image5], [Content], [ContentEn], [Detail], [DetailEn], [Khuyenmai], [KhuyenmaiEn], [Baohanh], [BaohanhEn], [DacDiemNoiBat], [DacDiemNoiBatEn], [Thongdiep], [ThongdiepEn], [Seri], [Luotxem], [Soluongmua], [DateCreate], [DateView], [Stock], [Number_Stock], [Vat], [Gianhaphang], [Giaban], [Phantramkhuyenmai], [Giabankhuyenmai], [DateStart_Event], [DateEnd_Event], [Giaban_Event], [Content_Event], [Content_EventEn]) VALUES (9, N'Bài đăng sản phẩm 8', N'Bài đăng sản phẩm 1', N'bai-dang-san-pham-8', N'Chanel,Adidas', N'Trung Quốc', N'Đỏ,Vàng,Cam,Da Trời,Đen,Màu Lá Cây,Màu Sữa', N'XX,X,FreeSize', N'ao-nam,quan-nam,thoi-trang-nu', NULL, N'', N'https://www.youtube.com/watch?v=u9igMr6iLtw', N'', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', 2, 1, 1, 1, N'4', N'thoi-trang-nam', N'thoi-trang-nam', N'quan-nam', N'/Uploads/files/backgroadheader.jpg', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', N'B&agrave;i đăng sản phẩm 1', N'', N'abc', N'abc', N'abc', N'abc', N'', N'', N'abc', N'abc', N'abc', 0, 0, CAST(0x1F3C0B00 AS Date), NULL, 1, 300, 1, 300, 230000, 10, 207000, CAST(0x1D3C0B00 AS Date), CAST(0x243C0B00 AS Date), 400, N'Bài đăng Sản Phẩm', N'Bài đăng Sản Phẩm')
INSERT [dbo].[GroupNewMenuSanPhamDetail] ([Id], [Name], [NameEn], [Tag], [IDthuonghieu], [NguonSanPham], [Mausac], [Kichthuoc], [SanphamCungloai], [Donvi], [Luotdanhgia], [Video], [Title], [Description], [Keyword], [Priority], [Index], [Order], [Active], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [Image], [Image1], [Image2], [Image3], [Image4], [Image5], [Content], [ContentEn], [Detail], [DetailEn], [Khuyenmai], [KhuyenmaiEn], [Baohanh], [BaohanhEn], [DacDiemNoiBat], [DacDiemNoiBatEn], [Thongdiep], [ThongdiepEn], [Seri], [Luotxem], [Soluongmua], [DateCreate], [DateView], [Stock], [Number_Stock], [Vat], [Gianhaphang], [Giaban], [Phantramkhuyenmai], [Giabankhuyenmai], [DateStart_Event], [DateEnd_Event], [Giaban_Event], [Content_Event], [Content_EventEn]) VALUES (10, N'Bài đăng sản phẩm 9', N'Bài đăng sản phẩm 1', N'bai-dang-san-pham-9', N'Chanel,Adidas', N'Trung Quốc', N'Đỏ,Vàng,Cam,Da Trời,Đen,Màu Lá Cây,Màu Sữa', N'XX,X,FreeSize', N'ao-nam,quan-nam,thoi-trang-nu', NULL, N'', N'https://www.youtube.com/watch?v=u9igMr6iLtw', N'', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', 2, 1, 1, 1, N'5', N'thoi-trang-nam', N'thoi-trang-nam', N'giay-nam', N'/Uploads/files/backgroadheader.jpg', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', N'B&agrave;i đăng sản phẩm 1', N'', N'abc', N'abc', N'abc', N'abc', N'', N'', N'abc', N'abc', N'abc', 0, 0, CAST(0x1F3C0B00 AS Date), CAST(0x00000000 AS Date), 1, 300, 1, 300, 230000, 10, 207000, CAST(0x1D3C0B00 AS Date), CAST(0x243C0B00 AS Date), 400, N'Bài đăng Sản Phẩm', N'Bài đăng Sản Phẩm')
INSERT [dbo].[GroupNewMenuSanPhamDetail] ([Id], [Name], [NameEn], [Tag], [IDthuonghieu], [NguonSanPham], [Mausac], [Kichthuoc], [SanphamCungloai], [Donvi], [Luotdanhgia], [Video], [Title], [Description], [Keyword], [Priority], [Index], [Order], [Active], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [Image], [Image1], [Image2], [Image3], [Image4], [Image5], [Content], [ContentEn], [Detail], [DetailEn], [Khuyenmai], [KhuyenmaiEn], [Baohanh], [BaohanhEn], [DacDiemNoiBat], [DacDiemNoiBatEn], [Thongdiep], [ThongdiepEn], [Seri], [Luotxem], [Soluongmua], [DateCreate], [DateView], [Stock], [Number_Stock], [Vat], [Gianhaphang], [Giaban], [Phantramkhuyenmai], [Giabankhuyenmai], [DateStart_Event], [DateEnd_Event], [Giaban_Event], [Content_Event], [Content_EventEn]) VALUES (11, N'Bài đăng sản phẩm 10', N'Bài đăng sản phẩm 1', N'bai-dang-san-pham-10', N'Chanel,Adidas', N'Trung Quốc', N'Đỏ,Vàng,Cam,Da Trời,Đen,Màu Lá Cây,Màu Sữa', N'XX,X,FreeSize', N'ao-nam,quan-nam,thoi-trang-nu', NULL, N'', N'https://www.youtube.com/watch?v=u9igMr6iLtw', N'', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', 2, 1, 1, 1, N'4', N'thoi-trang-nam', N'thoi-trang-nam', N'quan-nam', N'/Uploads/files/backgroadheader.jpg', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', N'B&agrave;i đăng sản phẩm 1', N'', N'abc', N'abc', N'abc', N'abc', N'', N'', N'abc', N'abc', N'abc', 0, 0, CAST(0x1F3C0B00 AS Date), NULL, 1, 300, 1, 300, 230000, 10, 207000, CAST(0x1D3C0B00 AS Date), CAST(0x243C0B00 AS Date), 400, N'Bài đăng Sản Phẩm', N'Bài đăng Sản Phẩm')
INSERT [dbo].[GroupNewMenuSanPhamDetail] ([Id], [Name], [NameEn], [Tag], [IDthuonghieu], [NguonSanPham], [Mausac], [Kichthuoc], [SanphamCungloai], [Donvi], [Luotdanhgia], [Video], [Title], [Description], [Keyword], [Priority], [Index], [Order], [Active], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [Image], [Image1], [Image2], [Image3], [Image4], [Image5], [Content], [ContentEn], [Detail], [DetailEn], [Khuyenmai], [KhuyenmaiEn], [Baohanh], [BaohanhEn], [DacDiemNoiBat], [DacDiemNoiBatEn], [Thongdiep], [ThongdiepEn], [Seri], [Luotxem], [Soluongmua], [DateCreate], [DateView], [Stock], [Number_Stock], [Vat], [Gianhaphang], [Giaban], [Phantramkhuyenmai], [Giabankhuyenmai], [DateStart_Event], [DateEnd_Event], [Giaban_Event], [Content_Event], [Content_EventEn]) VALUES (12, N'Bài đăng sản phẩm 11', N'Bài đăng sản phẩm 1', N'bai-dang-san-pham-11', N'Chanel,Adidas', N'Trung Quốc', N'Đỏ,Vàng,Cam,Da Trời,Đen,Màu Lá Cây,Màu Sữa', N'XX,X,FreeSize', N'quan-nam,thoi-trang-nu', NULL, N'', N'https://www.youtube.com/watch?v=u9igMr6iLtw', N'', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', 2, 1, 1, 1, N'4', N'thoi-trang-nam', N'thoi-trang-nam', N'quan-nam', N'/Uploads/files/backgroadheader.jpg', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', N'B&agrave;i đăng sản phẩm 1', N'', N'abc', N'abc', N'abc', N'abc', N'', N'', N'abc', N'abc', N'abc', 0, 0, CAST(0x1F3C0B00 AS Date), CAST(0x00000000 AS Date), 1, 300, 1, 300, 230000, 10, 207000, CAST(0x1D3C0B00 AS Date), CAST(0x243C0B00 AS Date), 400, N'Bài đăng Sản Phẩm', N'Bài đăng Sản Phẩm')
INSERT [dbo].[GroupNewMenuSanPhamDetail] ([Id], [Name], [NameEn], [Tag], [IDthuonghieu], [NguonSanPham], [Mausac], [Kichthuoc], [SanphamCungloai], [Donvi], [Luotdanhgia], [Video], [Title], [Description], [Keyword], [Priority], [Index], [Order], [Active], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [Image], [Image1], [Image2], [Image3], [Image4], [Image5], [Content], [ContentEn], [Detail], [DetailEn], [Khuyenmai], [KhuyenmaiEn], [Baohanh], [BaohanhEn], [DacDiemNoiBat], [DacDiemNoiBatEn], [Thongdiep], [ThongdiepEn], [Seri], [Luotxem], [Soluongmua], [DateCreate], [DateView], [Stock], [Number_Stock], [Vat], [Gianhaphang], [Giaban], [Phantramkhuyenmai], [Giabankhuyenmai], [DateStart_Event], [DateEnd_Event], [Giaban_Event], [Content_Event], [Content_EventEn]) VALUES (13, N'Bài đăng sản phẩm 12', N'Bài đăng sản phẩm 1', N'bai-dang-san-pham-12', N'Chanel,Adidas', N'Trung Quốc', N'Đỏ,Vàng,Cam,Da Trời,Đen,Màu Lá Cây,Màu Sữa', N'XX,X,FreeSize', N'ao-nam,quan-nam,thoi-trang-nu', NULL, N'', N'https://www.youtube.com/watch?v=u9igMr6iLtw', N'', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', 2, 1, 1, 1, N'4', N'thoi-trang-nam', N'thoi-trang-nam', N'quan-nam', N'/Uploads/files/backgroadheader.jpg', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', N'B&agrave;i đăng sản phẩm 1', N'', N'abc', N'abc', N'abc', N'abc', N'', N'', N'abc', N'abc', N'abc', 0, 0, CAST(0x203C0B00 AS Date), CAST(0x00000000 AS Date), 1, 300, 1, 300, 230000, 10, 207000, CAST(0x1D3C0B00 AS Date), CAST(0x243C0B00 AS Date), 400, N'Bài đăng Sản Phẩm', N'Bài đăng Sản Phẩm')
INSERT [dbo].[GroupNewMenuSanPhamDetail] ([Id], [Name], [NameEn], [Tag], [IDthuonghieu], [NguonSanPham], [Mausac], [Kichthuoc], [SanphamCungloai], [Donvi], [Luotdanhgia], [Video], [Title], [Description], [Keyword], [Priority], [Index], [Order], [Active], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [Image], [Image1], [Image2], [Image3], [Image4], [Image5], [Content], [ContentEn], [Detail], [DetailEn], [Khuyenmai], [KhuyenmaiEn], [Baohanh], [BaohanhEn], [DacDiemNoiBat], [DacDiemNoiBatEn], [Thongdiep], [ThongdiepEn], [Seri], [Luotxem], [Soluongmua], [DateCreate], [DateView], [Stock], [Number_Stock], [Vat], [Gianhaphang], [Giaban], [Phantramkhuyenmai], [Giabankhuyenmai], [DateStart_Event], [DateEnd_Event], [Giaban_Event], [Content_Event], [Content_EventEn]) VALUES (14, N'Bài đăng sản phẩm 14', N'Bài đăng sản phẩm 1', N'bai-dang-san-pham-14', N'Chanel,Adidas', N'Trung Quốc', N'Đỏ,Vàng,Cam,Da Trời,Đen,Màu Lá Cây,Màu Sữa', N'XX,X,FreeSize', N'ao-nam,quan-nam,thoi-trang-nu', NULL, N'', N'https://www.youtube.com/watch?v=u9igMr6iLtw', N'', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', 2, 1, 1, 1, N'7', N'thoi-trang-nam', N'ao-nam-nam', N'ao-thun', N'/Uploads/files/backgroadheader.jpg', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng s?n ph?m 1', N'Bài đăng sản phẩm 1', N'Bài đăng sản phẩm 1', N'B&agrave;i đăng sản phẩm 1', N'', N'abc', N'abc', N'abc', N'abc', N'', N'', N'abc', N'abc', N'abc', 0, 0, CAST(0x213C0B00 AS Date), CAST(0x00000000 AS Date), 1, 300, 1, 300, 230000, 10, 207000, CAST(0x1D3C0B00 AS Date), CAST(0x243C0B00 AS Date), 400, N'Bài đăng Sản Phẩm', N'Bài đăng Sản Phẩm')
SET IDENTITY_INSERT [dbo].[GroupNewMenuSanPhamDetail] OFF
SET IDENTITY_INSERT [dbo].[GroupNews] ON 

INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (126, N'Vách ngăn - Mặt Dựng', N'vach-ngan---mat-dung', NULL, N'', N'', N'', 1, 0, 0, 1, N'vi', N'', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (127, N'Các Loại Cửa Nhôm', N'cac-loai-cua-nhom', NULL, N'', N'', N'', 1, 0, 0, 1, N'vi', N'', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (128, N'Cửa nhựa lõi thép', N'cua-nhua-loi-thep', NULL, N'', N'', N'', 1, 1, 0, 1, N'vi', N'/Uploads/images/cuanhualoithep/cua-nhua-upvc.jpg', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (129, N'Tủ - Cửa Cuốn - Tự động', N'tu---cua-cuon---tu-dong', NULL, N'', N'', N'', 1, 0, 0, 1, N'vi', N'', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (130, N'Các loại kính', N'cac-loai-kinh', NULL, N'', N'', N'', 1, 0, 0, 1, N'vi', N'', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (131, N'Khóa cửa, Bản lề, Tay', N'khoa-cua-ban-le-tay', NULL, N'', N'', N'', 1, 1, 0, 1, N'vi', N'/Uploads/images/khoacuakinh/671597.jpg', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (132, N'Vách ngăn nhôm kính', N'vach-ngan-nhom-kinh', N'126', N'', N'', N'', 1, 1, 0, 1, N'vi', N'/Uploads/files/Vachngankinh/vach-ngan-kinh-phong-khach.jpg', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (133, N'Mặt dựng nhôm kính', N'mat-dung-nhom-kinh', N'126', N'', N'', N'', 1, 1, 0, 1, N'vi', N'/Uploads/images/matdungnhomkinh/mat-dung-nhom-kinh-semi.jpg', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (135, N'Cửa đi nhôm kính', N'cua-di-nhom-kinh', N'127', N'', N'', N'', 1, 1, 0, 1, N'vi', N'/Uploads/images/cuadinhomkinh/cua-di-mo-2canh.jpg', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (136, N'Cửa sổ nhôm kính', N'cua-so-nhom-kinh', N'127', N'', N'', N'', 1, 1, 0, 1, N'vi', N'/Uploads/images/cusonhomkinh/cua-so-mo-lua-nhom-kinh-1-3.jpg', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (139, N'Tủ nhôm kính', N'tu-nhom-kinh', N'129', N'', N'', N'', 1, 1, 0, 1, N'vi', N'/Uploads/images/tunhomkinh/tu-bep-nhom-kinh-01.jpg', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (140, N'Phòng tắm kính', N'phong-tam-kinh', N'129', N'', N'', N'', 2, 1, 0, 1, N'vi', N'/Uploads/images/phongtamkinh/15-mau-phong-tam-kinh-dep-hien-dai-1.jpg', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (142, N'Lan can kính', N'lan-can-kinh', N'129', N'', N'', N'', 7, 1, 0, 1, N'vi', N'/Uploads/images/4908349ban_cong_inox_kinh_1.jpg', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (147, N'Kính nội thất', N'kinh-noi-that', N'130', N'', N'', N'', 1, 1, 0, 1, N'vi', N'/Uploads/images/kinhnoithat/kinh-trang-tri.jpg', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (148, N'kính màu trang trí', N'kinh-mau-trang-tri', N'130', N'', N'', N'', 1, 1, 0, 1, N'vi', N'/Uploads/images/kinhmau/kinh_mau_trang_tri_2.jpg', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (160, N'Cầu thang kính', N'cau-thang-kinh', N'129', N'', N'', N'', 4, 1, 0, 1, N'vi', N'/Uploads/images/cuadinhomkinh/cua-di-mo-2canh.jpg', N'', N'', N'                                                                                                    ', N'', N'')
SET IDENTITY_INSERT [dbo].[GroupNews] OFF
SET IDENTITY_INSERT [dbo].[GroupNewsNewsDetail] ON 

INSERT [dbo].[GroupNewsNewsDetail] ([Id], [Name], [Tag], [Image], [Content], [Detail], [Date], [Title], [Description], [Keyword], [Priority], [Index], [Active], [ord], [Nguon], [Lang], [Image1], [Image2], [Image3], [Image4], [Images5], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [NameEn], [ContentEn], [DetailEn], [DateView], [Luotxem]) VALUES (1, N'VÁCH NGĂN KÍNH PHAN THIẾT', N'vach-ngan-kinh-phan-thiet', N'/Uploads/files/Vachngankinh/dvk1.jpg', N'Dòng vách ngăn kính, vách nhôm kính, vách ngăn nhôm kính , vach ngan son tinh dien là một trong những vật liệu được ưa chuộng và sử dụng nhiều nhất trong các khối văn phòng, công ty, cao ốc.... Loại vách ngăn kính này có ưu điểm là mang lại hiệu quả cách âm ưu việt, đồng thời vách ngăn kính cũng làm cho không gian của bạn trở nên rộng rãi, thoáng đãng, hiện đại và thẩm mỹ hơn.', N'<p>D&ograve;ng&nbsp;<u>v&aacute;ch ngăn k&iacute;nh&nbsp;phan thiết</u>, v&aacute;ch nh&ocirc;m k&iacute;nh, v&aacute;ch ngăn nh&ocirc;m k&iacute;nh phan thiết&nbsp;,&nbsp;vach ngan son tinh dien&nbsp;l&agrave; một trong những vật liệu được ưa chuộng v&agrave; sử dụng nhiều nhất trong c&aacute;c khối văn ph&ograve;ng, c&ocirc;ng ty, cao ốc.... Loại v&aacute;ch ngăn k&iacute;nh n&agrave;y c&oacute; ưu điểm l&agrave; mang lại hiệu quả c&aacute;ch &acirc;m ưu việt, đồng thời v&aacute;ch ngăn k&iacute;nh cũng l&agrave;m cho kh&ocirc;ng gian của bạn trở n&ecirc;n rộng r&atilde;i, tho&aacute;ng đ&atilde;ng, hiện đại v&agrave; thẩm mỹ hơn.</p>

<p style="text-align: center;"><img alt="vach ngan kinh cuong luc dep" src="/Uploads/images/Vachngankinh/vach-ngan-kinh-cuong-luc.jpg" style="width: 500px; height: 375px;" /></p>

<p style="text-align: center;"><em>Ảnh minh họa: v&aacute;ch k&iacute;nh cường lực</em></p>

<p>Nh&ocirc;m k&iacute;nh Anh Sơn của ch&uacute;ng t&ocirc;i l&agrave; một trong những đơn vị ch&agrave;ng đầu tại tphcm v&agrave; c&aacute;c v&ugrave;ng l&acirc;n cận trong lĩnh vực cung cấp v&agrave; l&agrave;m v&aacute;ch ngăn k&iacute;nh,&nbsp;<u>v&aacute;ch ngăn nh&ocirc;m k&iacute;nh&nbsp;phan thiết</u>,&nbsp;cua kinh, cửa k&iacute;nh cường lực hay nh&ocirc;m k&iacute;nh li&ecirc;n quan với gi&aacute; rẻ v&agrave; theo y&ecirc;u cầu. Ch&uacute;ng t&ocirc;i tự h&agrave;o l&agrave; một đơn vị được rất nhiều kh&aacute;ch h&agrave;ng tin tưởng v&agrave; sử dụng những sản phẩm cũng như dịch vụ về nh&ocirc;m k&iacute;nh.&nbsp;</p>

<h3>Đến với nh&ocirc;m k&iacute;nh phan thiết để l&agrave;m cửa k&iacute;nh hay v&aacute;ch ngăn k&iacute;nh qu&yacute; kh&aacute;ch sẽ được nh&acirc;n vi&ecirc;n tư vấn tận t&igrave;nh, gi&uacute;p Qu&yacute; kh&aacute;ch c&oacute; sự chọn lựa tốt nhất cho c&ocirc;ng tr&igrave;nh của m&igrave;nh.</h3>

<p style="text-align: center;"><img alt="vach ngan kinh phong ngu" src="/Uploads/images/Vachngankinh/vach-ngan-kinh-phong-khach.jpg" style="width: 500px; height: 375px;" /></p>

<p style="text-align: center;"><em>Ảnh v&aacute;ch ngăn k&iacute;nh ph&ograve;ng ngủ</em></p>

<p>Tất cả những c&ocirc;ng tr&igrave;nh về nh&ocirc;m k&iacute;nh hay&nbsp;<u>v&aacute;ch ngăn k&iacute;nh&nbsp;phan thiết</u>&nbsp;do ĐĂNG KHOA&nbsp;thi c&ocirc;ng điều sử dụng bằng vật liệu k&iacute;nh cường lực chất lượng cao, c&oacute; tem bảo h&agrave;nh ch&iacute;nh h&atilde;ng. Cam kết đảm bảo sự an to&agrave;n trong v&agrave; sau khi thi c&ocirc;ng v&aacute;ch ngăn k&iacute;nh!&nbsp;</p>

<p style="text-align: center;"><img alt="vach ngan nhom kinh" src="/Uploads/images/Vachngankinh/dvk1.jpg" style="width: 500px; height: 375px;" /></p>

<p style="text-align: center;"><em>Ảnh v&aacute;ch ngăn nh&ocirc;m k&iacute;nh</em></p>

<p>Những d&ograve;ng sản phẩm v&aacute;ch ngăn k&iacute;nh, cửa k&iacute;nh,&nbsp;cua kinh thuy luc&nbsp;hay nh&ocirc;m k&iacute;nh của Anh Sơn điều c&oacute; nhiều mẫu m&atilde;, kiểu d&aacute;ng, thiết kế đẹp mắt, sang trọng, chất lượng bền bỉ, gi&aacute; cả lu&ocirc;n rẻ nhất.</p>
', CAST(0x0000A6DA00F8DA2F AS DateTime), N'', N'Dòng vách ngăn kính, vách nhôm kính, vách ngăn nhôm kính , vach ngan son tinh dien là một trong những vật liệu được ưa chuộng và sử dụng nhiều nhất trong các khối văn phòng, công ty, cao ốc.... Loại vách ngăn kính này có ưu điểm là mang lại hiệu quả cách âm ưu việt, đồng thời vách ngăn kính cũng làm cho không gian của bạn trở nên rộng rãi, thoáng đãng, hiện đại và thẩm mỹ hơn.', N'mặt dựng nhôm phan thiết, vach ngan phan thiet,cầu than kính cường lực phan thiết', 2, 1, 1, 1, N'', N'vi', N'', N'', N'', N'', N'', N'132', N'vach-ngan---mat-dung', N'vach-ngan---mat-dung', N'vach-ngan-nhom-kinh', N'', N'', N'', CAST(0x0000A6B7018AF5B5 AS DateTime), 0)
INSERT [dbo].[GroupNewsNewsDetail] ([Id], [Name], [Tag], [Image], [Content], [Detail], [Date], [Title], [Description], [Keyword], [Priority], [Index], [Active], [ord], [Nguon], [Lang], [Image1], [Image2], [Image3], [Image4], [Images5], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [NameEn], [ContentEn], [DetailEn], [DateView], [Luotxem]) VALUES (2, N'Mặt dựng nhôm kính phan thiết', N'mat-dung-nhom-kinh-phan-thiet', N'/Uploads/images/matdungnhomkinh/mat-dung-nhom-kinh-semi.jpg', N'Trong vòng hai mươi năm trở lại đây, hệ thống mặt dựng nhôm kính trong các dự án nhà cao tầng trở nên phổ biến tại Việt Nam. Giá thành của hệ thống mặt dựng nhôm kính có thể lên tới 20% tổng giá thành xây dựng của một công trình cao tầng. Hệ thống mặt dựng nhôm kính thường là kết cấu bao che của công trình.', N'<p>Trong v&ograve;ng hai mươi năm trở lại đ&acirc;y, hệ thống&nbsp;mặt dựng nh&ocirc;m k&iacute;nh&nbsp;trong c&aacute;c dự &aacute;n nh&agrave; cao tầng trở n&ecirc;n phổ biến tại Việt Nam phan thiết. Gi&aacute; th&agrave;nh của hệ thống&nbsp;mặt dựng nh&ocirc;m k&iacute;nh&nbsp;c&oacute; thể l&ecirc;n tới 20% tổng gi&aacute; th&agrave;nh x&acirc;y dựng của một c&ocirc;ng tr&igrave;nh cao tầng. Hệ thống&nbsp;mặt dựng nh&ocirc;m k&iacute;nh&nbsp;thường l&agrave; kết cấu bao che của c&ocirc;ng tr&igrave;nh. V&igrave; vậy, hệ thống&nbsp;mặt dựng nh&ocirc;m k&iacute;nh&nbsp;l&agrave; một trong những bộ phận quan trọng của nh&agrave; cao tầng v&agrave; ng&agrave;y c&agrave;ng quan trọng hơn x&eacute;t tr&ecirc;n c&aacute;c mặt như: c&ocirc;ng năng, thẩm mỹ, gi&aacute; th&agrave;nh. Ngo&agrave;i ra,&nbsp;mặt dựng nh&ocirc;m k&iacute;nh&nbsp;l&agrave; hệ chịu tải trọng gi&oacute; đầu ti&ecirc;n của nh&agrave; cao tầng v&agrave; từ đ&oacute; truyền đến hệ thống chịu tải trọng ngang của nh&agrave;.</p>

<h2>Đặc điểm:</h2>

<ul>
	<li>T&ugrave;y theo thi&ecirc;́t k&ecirc;́ ki&ecirc;́n tr&uacute;c của c&ocirc;ng tr&igrave;nh,&nbsp;v&aacute;ch&nbsp;nh&ocirc;m k&iacute;nh&nbsp;lớn&nbsp;th&ocirc;ng tầng được sử dụng cho nh&agrave; cao tầng c&oacute; hoặc kh&ocirc;ng c&oacute;&nbsp;nan nh&ocirc;m&nbsp;trang tr&iacute; ở mặt ngo&agrave;i.</li>
	<li>Ph&ugrave; hợp với ti&ecirc;u chuẩn Ch&acirc;u &Acirc;u về c&aacute;ch &acirc;m, c&aacute;ch nhiệt, độ k&iacute;n kh&iacute;t (chống gi&oacute;, nước, kh&ocirc;ng kh&iacute;) bảo đảm &aacute;nh s&aacute;ng tự nhi&ecirc;n.&nbsp;</li>
	<li>Đa dạng kiểu d&aacute;ng, ph&ugrave; hợp với nhiều dạng kiến tr&uacute;c, t&iacute;nh thẩm mỹ cao. Sử dụng trong thiết kế c&aacute;c t&ograve;a nh&agrave; c&oacute; kiến tr&uacute;c dạng hi-tech.</li>
	<li>Thi c&ocirc;ng&nbsp;mặt dựng nh&ocirc;m k&iacute;nh&nbsp;đơn giản v&agrave; gọn nhẹ.</li>
	<li>Tải trọng nhẹ, khả năng chịu lực tốt v&agrave; độ bền cao.</li>
	<li>Kinh tế trong sử dụng.</li>
</ul>

<h2>Vật liệu:&nbsp;</h2>

<ul>
	<li>Thanh profile phan thiết&nbsp;được &eacute;p đ&ugrave;n từ hợp kim nh&ocirc;m cao cấp, đạt ti&ecirc;u chu&acirc;̉n ch&acirc;u &Acirc;u.&nbsp;</li>
	<li>K&iacute;nh: k&iacute;nh đơn, k&iacute;nh an to&agrave;n, k&iacute;nh cường lực, k&iacute;nh b&aacute;n cường lực, k&iacute;nh hoa văn, hộp k&iacute;nh (được bơm kh&iacute; trơ c&aacute;ch &acirc;m, c&aacute;ch nhiệt).&nbsp;</li>
	<li>Hệ gioăng l&agrave;m từ vật liệu EPDM chống l&atilde;o h&oacute;a, đảm bảo độ k&iacute;n kh&iacute;t.&nbsp;&nbsp;</li>
</ul>

<p>V&aacute;ch&nbsp;nh&ocirc;m k&iacute;nh&nbsp;lớn&nbsp;được chia l&agrave;m 4 hệ ch&iacute;nh:&nbsp;</p>

<p><strong>Mặt dựng nh&ocirc;m k&iacute;nh&nbsp;hệ Stick&nbsp;phan thiết</strong>: v&aacute;ch&nbsp;nh&ocirc;m k&iacute;nh&nbsp;lớn hệ Stick&nbsp;c&oacute; thể sử dụng cho mọi loại bề mặt b&ecirc;n ngo&agrave;i của to&agrave; nh&agrave;, đặc biệt ph&ugrave; hợp với bề mặt to&agrave; nh&agrave; c&oacute; kiến tr&uacute;c phức tạp hoặc c&oacute; nhiều điểm nối.&nbsp;V&aacute;ch nh&ocirc;m k&iacute;nh lớn hệ Stick&nbsp;được sản xuất v&agrave; gia c&ocirc;ng c&aacute;c thanh&nbsp;nh&ocirc;m, k&iacute;nh&nbsp;v&agrave; một số chi ti&ecirc;́t kh&aacute;c tại nh&agrave; m&aacute;y, to&agrave;n bộ c&ocirc;ng việc li&ecirc;n kết,&nbsp;<font face="arial, helvetica, sans-serif">thi c&ocirc;ng&nbsp;</font>mặt dựng nh&ocirc;m k&iacute;nh&nbsp;v&agrave; ho&agrave;n thiện được thực hiện tại c&ocirc;ng trường. Kh&aacute;c với hệ Unitized, hệ thống&nbsp;mặt dựng Stick&nbsp;được triển khai lắp đặt từng chi tiết cấu th&agrave;nh n&ecirc;n&nbsp;mặt dựng nh&ocirc;m k&iacute;nh&nbsp;ở ngay tại c&ocirc;ng tr&igrave;nh.</p>

<h3><strong><em>Cấu tạo của hệ Stick c&oacute;&nbsp;nan nh&ocirc;m trang tr&iacute;</em></strong></h3>

<p style="text-align: center;"><img _cke_saved_src="/User_folder_upload/userfiles/images/Mat dung nhom kinh/Mặt-dựng-nhôm-kính-khung-xương-nổi.png" alt="" src="/Uploads/images/matdungnhomkinh/he-mat-dung-unitized.png" style="width: 683px; height: 254px;" /></p>

<h3><strong><em>Cấu tạo của hệ Stick kh&ocirc;ng nan nh&ocirc;m trang tr&iacute;</em></strong></h3>

<h3>&nbsp;</h3>

<p style="text-align: center;"><img _cke_saved_src="/User_folder_upload/userfiles/images/Mat dung nhom kinh/Mặt-dựng-nhôm-kính-khung-xương-chìm.jpg" alt="" src="/Uploads/images/matdungnhomkinh/M%E1%BA%B7t-d%E1%BB%B1ng-nh%C3%B4m-k%C3%ADnh-khung-x%C6%B0%C6%A1ng-ch%C3%ACm.jpg" style="width: 661px; height: 229px;" /></p>

<p><strong>Mặt dựng nh&ocirc;m k&iacute;nh&nbsp;</strong><strong>hệ</strong><strong>&nbsp;Unitized:</strong>&nbsp;mặt dựng Unitized&nbsp;l&agrave; hệ thống&nbsp;v&aacute;ch&nbsp;nh&ocirc;m k&iacute;nh&nbsp;lớn&nbsp;được sản xuất, gia c&ocirc;ng v&agrave; ho&agrave;n thiện th&agrave;nh c&aacute;c tấm panel ngay từ trong nh&agrave; m&aacute;y, sau đ&oacute; được chuyển đến c&ocirc;ng tr&igrave;nh để lắp dựng v&agrave; ho&agrave;n thiện tổng thể.&nbsp;Mặt dựng tường k&iacute;nh lớn hệ Unitized&nbsp;sử dụng tốt nhất cho c&ocirc;ng tr&igrave;nh c&oacute; mặt ngo&agrave;i đồng nhất v&agrave; c&aacute;c tầng c&oacute; chiều cao như nhau.</p>

<p>Đặc điểm của phương &aacute;n&nbsp;thi c&ocirc;ng&nbsp;mặt dựng nh&ocirc;m k&iacute;nh&nbsp;theo hệ Unitized l&agrave; c&aacute;c tấm&nbsp;khung nh&ocirc;m k&iacute;nh&nbsp;được sản xuất v&agrave; lắp gh&eacute;p ho&agrave;n thiện sẵn tại nh&agrave; m&aacute;y, bao gồm ho&agrave;n thiện to&agrave;n bộ cấu th&agrave;nh của mỗi tấm khung nh&ocirc;m k&iacute;nh &ndash; gọi l&agrave; c&aacute;c Modul.</p>

<p>Sau đ&oacute;, c&aacute;c modul ho&agrave;n thiện n&agrave;y được vận chuyển từ nh&agrave; m&aacute;y đến c&ocirc;ng tr&igrave;nh v&agrave; được sử dụng c&aacute;c thiết bị cẩu n&acirc;ng chuy&ecirc;n dụng để đưa l&ecirc;n c&aacute;c vị tr&iacute; lắp gh&eacute;p đ&atilde; chuẩn bị sẵn. C&aacute;c vị tr&iacute; lắp gh&eacute;p n&agrave;y đ&atilde; được đặt sẵn c&aacute;c bảng m&atilde; ngay từ thời điểm đổ b&ecirc; t&ocirc;ng s&agrave;n v&agrave; đ&agrave; cột dưới sự gi&aacute;m s&aacute;t của đội ngũ kỹ sư v&agrave; c&aacute;c thiết bị trắc đạt tọa độ.</p>

<h3><strong><em>Cấu tạo của&nbsp;mặt dựng nh&ocirc;m k&iacute;nh&nbsp;hệ Unitized kh&ocirc;ng nan nh&ocirc;m trang tr&iacute; mặt ngo&agrave;i</em></strong></h3>

<p>&nbsp;</p>

<p style="text-align: center;"><img _cke_saved_src="/User_folder_upload/userfiles/images/Mat dung nhom kinh/he-mat-dung-unitized.png" alt="" src="/Uploads/images/matdungnhomkinh/M%E1%BA%B7t-d%E1%BB%B1ng-nh%C3%B4m-k%C3%ADnh-khung-x%C6%B0%C6%A1ng-n%E1%BB%95i.png" style="width: 626px; height: 232px;" /></p>

<p><strong><em>Hệ mặt dựng Semi- Unitized</em>:</strong>&nbsp;hệ b&aacute;n lắp gh&eacute;p semi-unitized hay c&ograve;n gọi l&agrave; hệ Hybrid curtain wall thường được sử dụng cho những t&ograve;a nh&agrave; m&agrave; khoảng c&aacute;ch giữa c&aacute;c tầng l&agrave; lớn. Đầu ti&ecirc;n l&agrave; gắn c&aacute;c thanh nh&ocirc;m dọc (đố dọc &ndash; million) theo t&ograve;a nh&agrave; bởi bản m&atilde; v&agrave; ốc v&iacute;t &nbsp;sau đ&oacute; gh&eacute;p c&aacute;c&nbsp;khung nh&ocirc;m k&iacute;nh&nbsp;v&agrave;o c&aacute;c thanh dọc đ&atilde; được lắp trước bằng ốc v&iacute;t kết cấu v&agrave; cuối c&ugrave;ng l&agrave; gh&eacute;p c&aacute;c sập nh&ocirc;m che k&iacute;n c&aacute;c đường nối. Thời gian&nbsp;thi c&ocirc;ng&nbsp;mặt dựng nh&ocirc;m k&iacute;nh&nbsp;semi-unitized l&acirc;u hơn v&agrave; y&ecirc;u cầu lượng nh&acirc;n c&ocirc;ng lắp đặt nhiều hơn. Tuy nhi&ecirc;n&nbsp;mặt dựng&nbsp;semi-unitized đảm bảo độ an to&agrave;n, chắc chắn, đặc biệt cho c&aacute;c t&ograve;a nh&agrave; cao tầng.</p>

<p><strong>Mặt dựng nh&ocirc;m k&iacute;nh&nbsp;hệ&nbsp;</strong><strong><strong>Spider</strong>:</strong>&nbsp;mặt dựng&nbsp;tường k&iacute;nh hệ Spider&nbsp;l&agrave; một trong những phương ph&aacute;p hệ thống tường&nbsp;k&iacute;nh kh&ocirc;ng khung, chủ yếu chỉ d&ugrave;ng c&aacute;c chốt giữ k&iacute;nh để tạo th&agrave;nh c&aacute;c điểm li&ecirc;n kết v&agrave; kết nối c&aacute;c tấm k&iacute;nh lại với nhau.</p>

<h2>C&aacute;c loại bề mặt của v&aacute;ch nh&ocirc;m k&iacute;nh lớn&nbsp;phan thiết</h2>

<p><em>V&aacute;ch&nbsp;nh&ocirc;m k&iacute;nh&nbsp;lớn nẹp ngo&agrave;i (nẹp ngang v&agrave; nẹp dọc)</em>: kết cấu n&agrave;y c&oacute; ưu điểm tạo vẻ ngo&agrave;i chắc chắn cho c&ocirc;ng tr&igrave;nh. Với c&ocirc;ng nghệ sơn&nbsp;nh&ocirc;m cao cấp, kh&aacute;ch h&agrave;ng c&oacute; thể thoải m&aacute;i lựa chọn c&aacute;c gam m&agrave;u kh&aacute;c nhau cho c&aacute;c thanh nẹp ngo&agrave;i, từ đ&oacute; tạo vẻ đẹp cho to&agrave;n bộ c&ocirc;ng tr&igrave;nh.</p>

<p><em>V&aacute;ch nh&ocirc;m k&iacute;nh&nbsp;lớn kết hợp giữa c&oacute; nan nh&ocirc;m hoặc kh&ocirc;ng c&oacute; nan&nbsp;nh&ocirc;m trang tr&iacute;:</em>&nbsp;kết cấu n&agrave;y sẽ tạo điểm nhấn bằng những đường kẻ dọc hoặc kẻ ngang tr&ecirc;n bề mặt ngo&agrave;i của to&agrave;n bộ c&ocirc;ng tr&igrave;nh. Việc kết hợp giữa c&aacute;c nẹp ngang với nẹp dọc sẽ tạo ra n&eacute;t độc đ&aacute;o mang t&iacute;nh thẩm mỹ cao.</p>

<p><em>V&aacute;ch&nbsp;</em><strong><em>nh&ocirc;m k&iacute;nh</em></strong><em>&nbsp;lớn kh&ocirc;ng nan nh&ocirc;m trang tr&iacute; mặt ngo&agrave;i:</em>&nbsp; kết cấu n&agrave;y c&oacute; ưu điểm nổi trội l&agrave; tạo n&ecirc;n bề mặt phẳng đ&ocirc;̀ng nh&acirc;́t b&ecirc;n ngo&agrave;i của c&ocirc;ng tr&igrave;nh v&agrave; c&oacute; cảm gi&aacute;c như một tấm k&iacute;nh khổng lồ khi nh&igrave;n từ mặt ngo&agrave;i. Điều n&agrave;y kh&ocirc;ng chỉ thuận lợi trong việc trang tr&iacute; những &ocirc; k&iacute;nh c&oacute; m&agrave;u sắc kh&aacute;c nhau m&agrave; c&ograve;n ph&ugrave; hợp để đặt m&agrave;n h&igrave;nh&nbsp;quảng c&aacute;o điện tử&nbsp;lớn.</p>

<p style="text-align: center;"><img alt="" src="/Uploads/images/matdungnhomkinh/mat-dung-nhom-kinh-semi.jpg" style="width: 764px; height: 538px;" /></p>
', CAST(0x0000A6B90159E413 AS DateTime), N'', N'cầu than kính cường lực phan thiết,lang cang kính cường lực phan thiết,phòng tấm kính cường lực phan thiết,cửa nhômphan thiết
,mặt dựng nhôm phan thiết,kính sơn màu ốp bếp phan thiết', N'cầu than kính cường lực phan thiết,lang cang kính cường lực phan thiết,phòng tấm kính cường lực phan thiết,cửa nhômphan thiết
,mặt dựng nhôm phan thiết,kính sơn màu ốp bếp phan thiết', 2, 1, 1, 1, N'', N'vi', N'', N'', N'', N'', N'', N'133', N'vach-ngan---mat-dung', N'vach-ngan---mat-dung', N'mat-dung-nhom-kinh', N'', N'', N'', CAST(0x0000A6B80001E87F AS DateTime), 0)
INSERT [dbo].[GroupNewsNewsDetail] ([Id], [Name], [Tag], [Image], [Content], [Detail], [Date], [Title], [Description], [Keyword], [Priority], [Index], [Active], [ord], [Nguon], [Lang], [Image1], [Image2], [Image3], [Image4], [Images5], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [NameEn], [ContentEn], [DetailEn], [DateView], [Luotxem]) VALUES (3, N'Cửa đi nhôm kính phan thiết', N'cua-di-nhom-kinh-phan-thiet', N'/Uploads/images/cuadinhomkinh/cua-di-mo-2canh.jpg', N'Với công nghệ sản xuất hiện đại, nhôm kính cao cấp Hải Tiến cam kết sẽ mang tới ngôi nhà của quý khách hàng những sản phẩm hoàn hảo nhất, dịch vụ bảo hành bảo trì uy tín và chuyên nghiệp.Nhôm kính', N'<h1>Cửa đi nh&ocirc;m k&iacute;nh&nbsp;phan thiết</h1>

<p style="text-align: center;"><img alt="" src="/Uploads/images/cuadinhomkinh/img142821094902_15_cuaupvc-cuadimoquay-thongphong-img02.jpg" style="width: 550px; height: 702px;" /></p>

<p style="text-align: center;"><img alt="" src="/Uploads/images/cuadinhomkinh/cua-di-mo-2canh.jpg" style="width: 701px; height: 539px;" /></p>

<h2>Th&ocirc;ng tin th&ecirc;m về Nh&ocirc;m K&iacute;nh phan thiết&nbsp;Đ&Igrave;NH KHOA</h2>

<p>Với c&ocirc;ng nghệ sản xuất hiện đại, nh&ocirc;m k&iacute;nh cao cấp cam kết sẽ mang tới ng&ocirc;i nh&agrave; của qu&yacute; kh&aacute;ch h&agrave;ng những sản phẩm ho&agrave;n hảo nhất, dịch vụ bảo h&agrave;nh bảo tr&igrave; uy t&iacute;n v&agrave; chuy&ecirc;n nghiệp.Nh&ocirc;m k&iacute;nh phan thiết&nbsp; tư vấn, thiết kế, sản xuất c&aacute;c sản phẩm về nh&ocirc;m k&iacute;nh như: cửa đi nh&ocirc;m k&iacute;nh, cửa sổ nh&ocirc;m k&iacute;nh, tủ bếp, cabin nh&agrave; tắm... cho mọi c&ocirc;ng tr&igrave;nh. Đ&aacute;p ứng mọi nhu cầu thiết kế, k&iacute;ch thước v&agrave; mẫu m&atilde; của kh&aacute;ch h&agrave;ng.&nbsp;</p>
', CAST(0x0000A6C6000511AC AS DateTime), N'', N'Với công nghệ sản xuất hiện đại, nhôm kính cao cấp Hải Tiến cam kết sẽ mang tới ngôi nhà của quý khách hàng những sản phẩm hoàn hảo nhất, dịch vụ bảo hành bảo trì uy tín và chuyên nghiệp.Nhôm kính', N'cu di nhom kinh phan thiet, lang cang kính cường lực phan thiết,phòng tấm kính cường lực phan thiết, cửa nhômphan thiết,mặt dựng nhôm phan ,kính sơn màu ốp bếp phan thiếtthiết', 2, 1, 1, 1, N'', N'vi', N'', N'', N'', N'', N'', N'135', N'cac-loai-cua-nhom', N'cac-loai-cua-nhom', N'cua-di-nhom-kinh', N'', N'', N'', CAST(0x0000A6B80005FEA2 AS DateTime), 0)
INSERT [dbo].[GroupNewsNewsDetail] ([Id], [Name], [Tag], [Image], [Content], [Detail], [Date], [Title], [Description], [Keyword], [Priority], [Index], [Active], [ord], [Nguon], [Lang], [Image1], [Image2], [Image3], [Image4], [Images5], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [NameEn], [ContentEn], [DetailEn], [DateView], [Luotxem]) VALUES (4, N'CỬA SỔ MỞ LÙA NHÔM KÍNH PHAN THIẾT (MỞ TRƯỢT)', N'cua-so-mo-lua-nhom-kinh-phan-thiet-mo-truot', N'/Uploads/images/cusonhomkinh/cua-so-mo-lua-nhom-kinh-1-3.jpg', N'Cửa sổ mở lùa phan thiết được sử dụng những nơi mà cửa mở quay và cửa mở hất không thể dùng vì không gian mở không có 2 nhà gần nhau chỉ lấy ấn sáng và sự thông thoáng thì sử dụng phù hợp nhất', N'<p><strong>&nbsp;Cửa sổ mở l&ugrave;a nh&ocirc;m k&iacute;nh</strong>&nbsp;phan thiết l&agrave; cửa sổ được l&agrave;m bằng nh&ocirc;m k&iacute;nh v&agrave; khi đ&oacute;ng mở chỉ cần đẩy về 2 b&ecirc;n l&agrave; được v&agrave; diện t&iacute;ch mở được khoảng 2/3 diện t&iacute;ch &ocirc; cửa. Cửa sổ mở l&ugrave;a được sử dụng những nơi m&agrave; cửa&nbsp;mở quay v&agrave; cửa mở hất kh&ocirc;ng thể d&ugrave;ng v&igrave; kh&ocirc;ng gian mở kh&ocirc;ng c&oacute; 2 nh&agrave; gần nhau chỉ lấy ấn s&aacute;ng v&agrave; sự th&ocirc;ng tho&aacute;ng th&igrave; sử dụng ph&ugrave; hợp nhất. hoặc sử dụng nơi b&ecirc;n ngo&agrave;i dễ đột nhập b&ecirc;n ngo&agrave;i sử dụng khung an to&agrave;n th&igrave; mẫu cửa n&agrave;y ph&ugrave; hợp.</p>

<p>&nbsp; &nbsp;&nbsp;<strong>Cửa sổ mở l&ugrave;a, mở trượ</strong>t phan thiết với kh&ocirc;ng gian đ&oacute;ng mở rất nhỏ l&ecirc;n được sử dụng v&ocirc; c&ugrave;ng nhiều trong c&aacute;c th&agrave;nh phố với những ng&ocirc;i nh&agrave; mọc l&ecirc;n như nấm. Với những thanh nh&ocirc;m cứng vững c&ugrave;ng với m&agrave;u sơn nổi bật của nh&ocirc;m k&iacute;nh th&igrave; kh&ocirc;ng vật liệu g&igrave; c&oacute; thể x&acirc;y dựng tốt bằng cửa nh&ocirc;m k&iacute;nh.</p>

<div style="text-align: center;"><img alt="Mẫu cửa sổ mở lùa nhôm kính đẹp" src="/Uploads/images/cusonhomkinh/cua-so-mo-lua-nhom-kinh-1-1.jpg" style="width: 550px; height: 386px;" /></div>

<p style="text-align: center;"><em>Mẫu cửa sổ mở l&ugrave;a nh&ocirc;m k&iacute;nh đẹp</em></p>

<h2>I, CẤU TẠO CỬA SỔ MỞ L&Ugrave;A PHAN THIẾT&nbsp;NH&Ocirc;M K&Iacute;NH (MỞ TRƯỢT)</h2>

<p>Cấu tạo của cửa sổ mở l&ugrave;a, mở trượt kh&aacute; đơn giản v&agrave; dễ d&agrave;ng thi c&ocirc;ng:</p>

<p>&ndash; Hệ ray trượt bằng nh&ocirc;m gồm c&oacute; 2 đường ray đỡ b&aacute;nh xe được lắp đặt trong khung vửa sổ, c&aacute;c khung bao v&agrave; khung cửa được t&iacute;nh to&aacute;n cẩn thận sao cho khi đ&oacute;ng mở tao được độ k&iacute;n tốt nhất.<br />
&ndash; &Ocirc; cửa gồm c&oacute; từ 2 đến 6 c&aacute;nh cửa: thường số cửa chẳn tạo th&agrave;nh 1 cặp để thuận tiện đ&oacute;ng mở c&aacute;c khung cửa dược lắp gh&eacute;p thanh nh&ocirc;m được t&iacute;nh to&aacute;n c&aacute;ch &acirc;m v&agrave; c&aacute;ch nhiệt tốt, t&iacute;nh to&aacute;n cả khe tho&aacute;t nước khi trường hợp xấu nước chui v&agrave;o khung.<br />
&ndash; Cụm b&aacute;nh xe chuyển động nhẹ &ecirc;m: đ&acirc;y l&agrave; phụ kiện quan trọng của mẫu cửa trượt với b&aacute;nh xe cao cấp th&igrave; độ bền cửa cao sử dụng &ecirc;m, kh&ocirc;ng tạo ra tiếng động.<br />
&ndash; Tay nắm, kh&oacute;a k&iacute;nh, gioăng, giảm chấn, giảm &acirc;m.</p>

<div style="text-align: center;"><img alt="Mẫu cửa sổ mở lùa nhôm kính Xingfa" src="/Uploads/images/cusonhomkinh/cua-so-mo-lua-nhom-kinh-1-2.jpg" style="width: 1600px; height: 1200px;" /></div>

<p style="text-align: center;"><em>Mẫu cửa sổ mở trượt&nbsp;nh&ocirc;m k&iacute;nh Xingfa</em></p>

<h2>II, VẬT LIỆU L&Agrave;M CỬA SỔ PHAN THIẾT&nbsp;MỞ L&Ugrave;A NH&Ocirc;M K&Iacute;NH</h2>

<ul>
	<li>&nbsp; &nbsp; Khung &ocirc; cửa được l&agrave;m từ nh&ocirc;m của c&aacute;c h&atilde;ng sản xuất nh&ocirc;m kh&aacute;c nhau nhưng ở Việt Nam th&igrave; khung cửa thường l&agrave;m bằng nh&ocirc;m Việt Ph&aacute;p v&agrave; nh&ocirc;m Việt Nhật, nh&ocirc;m Xingfa..</li>
	<li>&nbsp; &nbsp; C&aacute;c &ocirc; cửa th&igrave; được l&agrave;m từ nh&ocirc;m c&ugrave;ng loại với khung cửa v&agrave; k&iacute;nh l&agrave;m cửa mở trượt nh&ocirc;m k&iacute;nh th&igrave; thường d&ugrave;ng k&iacute;nh thường hoặc k&iacute;nh cường lực c&oacute; độ d&agrave;y từ 5 mm &ndash; 10 mm.</li>
	<li>&nbsp; &nbsp;Cụm b&aacute;nh xe chuyển động l&agrave; loại nhập khẩu chống m&ograve;n v&agrave; han rỉ khi đống mở c&oacute; độ &ecirc;m kh&ocirc;ng g&acirc;y tiếng động lớn.</li>
	<li>&nbsp; &nbsp;C&aacute;c phụ kiện kh&aacute;c thường nhập khẩu của nước ngo&agrave;i nhằm giảm &acirc;m tốt nhất v&agrave; chống va đập mạnh giữa c&aacute;c c&aacute;nh cửa sổ mở trượt nh&ocirc;m k&iacute;nh.</li>
</ul>

<p>&nbsp; &nbsp;Với vật liệu tr&ecirc;n th&igrave; gi&aacute; cửa sổ mở l&ugrave;a nh&ocirc;m k&iacute;nh cũng được cho l&agrave; ph&ugrave; hợp với cuộc sống hiện nay của nước ta.</p>

<div style="text-align: center;"><img alt="Mẫu cửa sổ nhôm kính mở lùa cao cấp" src="/Uploads/images/cusonhomkinh/cua-so-mo-lua-nhom-kinh-1-3.jpg" style="width: 1113px; height: 778px;" /></div>

<p style="text-align: center;"><em>Mẫu cửa sổ nh&ocirc;m k&iacute;nh mở l&ugrave;a cao cấp</em></p>

<h2>III, ƯU ĐIỂM CỬA SỔ MỞ L&Ugrave;A NH&Ocirc;M K&Iacute;NH</h2>

<ul>
	<li>&nbsp;Khi đ&oacute;ng mở kh&ocirc;ng mất diện t&iacute;ch căn ph&ograve;ng cũng như b&ecirc;n ngo&agrave;i, đ&acirc;y đặc điểm nổi bật mẫu cửa mở l&ugrave;a nhiều người nh&igrave;n v&agrave;o đặc điểm n&agrave;y chọn mẫu cửa mở l&ugrave;a.</li>
	<li>&nbsp;Khi sử dụng th&igrave; rất an to&agrave;n, kh&ocirc;ng bị gi&oacute; giật, cửa lu&ocirc;n được cố định v&agrave;o 2 đầu của khung bao l&ecirc;n d&ugrave; cửa c&oacute; mở th&igrave; gi&oacute; kh&ocirc;ng ảnh tới cửa.</li>
	<li>&nbsp;Cửa sổ l&ugrave;a c&oacute; độ k&iacute;n kh&iacute;t cao l&ecirc;n c&aacute;ch &acirc;m, c&aacute;ch nhiệt tốt: Với những thanh nh&ocirc;m c&oacute; độ d&agrave;y cao c&ugrave;ng với những tấm k&iacute;nh th&igrave; ng&ocirc;i nh&agrave; tuy vẫn thoang tho&aacute;ng s&aacute;ng sủa nhưng nhiệt độ b&ecirc;n ngo&agrave;i kh&ocirc;ng ảnh hưởng tới kh&ocirc;ng gian b&ecirc;n trong.</li>
	<li>&nbsp;Đa dạng về k&iacute;nh thước cũng như mẫu m&atilde;: nh&ocirc;m k&iacute;nh l&agrave; vật liệu nổi bật về sự đa dạng mẫu m&atilde; cũng như m&agrave;u sắc với mỗi kh&ocirc;ng gian cũng như sở th&iacute;ch th&igrave; sử dụng mẫu m&atilde; v&agrave; m&agrave;u sắc kh&aacute;c nhau.</li>
	<li>&nbsp;Dễ sử dụng v&agrave; vệ sinh nhanh.</li>
	<li style="text-align: center;">&nbsp;Cửa sổ l&ugrave;a nh&ocirc;m k&iacute;nh c&oacute; g&oacute;c mở rộng n&ecirc;n th&iacute;ch hợp đ&oacute;n nhiều gi&oacute; v&agrave; &aacute;nh nắng cho ng&ocirc;i nh&agrave;, với diện t&iacute;ch k&iacute;nh rộng th&igrave; ng&ocirc;i nh&agrave; bạn lu&ocirc;n s&aacute;ng v&agrave; căn ph&ograve;ng lu&ocirc;n tho&aacute;ng.<br />
	<img alt="Mẫu cửa sổ nhôm kính mở lùa hệ 4 cánh" src="/Uploads/images/cusonhomkinh/cua-so-mo-lua-nhom-kinh-1.jpg" style="width: 650px; height: 594px;" />
	<p><em>Mẫu cửa sổ nh&ocirc;m k&iacute;nh mở l&ugrave;a hệ 4 c&aacute;nh</em></p>
	</li>
</ul>

<p>&nbsp; &nbsp; &nbsp;Với những ưu điểm vượt trội tr&ecirc;n th&igrave; c&aacute;c bạn l&ecirc;n chọn cho m&igrave;nh một mẫu cửa sổ mở l&ugrave;a nh&ocirc;m k&iacute;nh đẹp nhất, nếu c&ograve;n băn khoăn g&igrave; th&igrave; h&atilde;y li&ecirc;n hệ với ch&uacute;ng t&ocirc;i.</p>
', CAST(0x0000A6B90158AD92 AS DateTime), N'', N'Cửa sổ mở lùa được sử dụng những nơi mà cửa mở quay và cửa mở hất không thể dùng vì không gian mở không có 2 nhà gần nhau chỉ lấy ấn sáng và sự thông thoáng thì sử dụng phù hợp nhất', N'cua so nhom kinh phan thiet, cầu than kính cường lực phan thiết,lang cang kính cường lực phan thiết,phòng tấm kính cường lực phan thiết,cửa nhômphan thiết,cửa nhômphan thiết,kính sơn màu ốp bếp phan thiết', 2, 1, 1, 1, N'', N'vi', N'', N'', N'', N'', N'', N'136', N'cac-loai-cua-nhom', N'cac-loai-cua-nhom', N'cua-so-nhom-kinh', N'', N'', N'', CAST(0x0000A6B80089EC24 AS DateTime), 0)
INSERT [dbo].[GroupNewsNewsDetail] ([Id], [Name], [Tag], [Image], [Content], [Detail], [Date], [Title], [Description], [Keyword], [Priority], [Index], [Active], [ord], [Nguon], [Lang], [Image1], [Image2], [Image3], [Image4], [Images5], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [NameEn], [ContentEn], [DetailEn], [DateView], [Luotxem]) VALUES (5, N'Cửa nhựa phan thiết lõi thép Upvc là gì?', N'cua-nhua-phan-thiet-loi-thep-upvc-la-gi', N'/Uploads/images/cuanhualoithep/cau-nhua-upvc-1.jpg', N'Cửa nhựa lõi thép uPVC là loại cửa có xuất xứ từ châu Âu, cửa được cấu tạo từ các thanh profile nhựa uPVC và lõi thép mạ kẽm nằm bên trong nhằm gia tăng khả năng chịu lực cho cửa nhựa lõi thép.', N'- Cửa nhựa l&otilde;i th&eacute;p uPVC phan thiết&nbsp;l&agrave; loại cửa c&oacute; xuất xứ từ ch&acirc;u &Acirc;u, cửa được cấu tạo từ c&aacute;c thanh profile nhựa uPVC v&agrave; l&otilde;i th&eacute;p mạ kẽm nằm b&ecirc;n trong nhằm gia tăng khả năng chịu lực cho cửa nhựa l&otilde;i th&eacute;p.<br />
- Thanh nhựa của&nbsp;<u><strong>cửa nhựa l&otilde;i th&eacute;p&nbsp;phan thiết</strong></u>&nbsp;được l&agrave;m từ nhựa uPVC, đ&acirc;y l&agrave; một loại nhựa cứng c&oacute; độ bền cao, kh&ocirc;ng h&oacute;a dẻo, khả năng chống chịu lửa tốt.<br />
- Trong thanh Profile nhựa được thiết kế c&aacute;c khoang rỗng tạo c&aacute;c khoảng hẫng &acirc;m, gi&uacute;p cửa nhựa l&otilde;i th&eacute;p c&aacute;ch &acirc;m, giữ nhiệt tốt.<br />
- L&otilde;i th&eacute;p sử dụng cho cửa nhựa l&otilde;i th&eacute;p l&agrave; loại l&otilde;i th&eacute;p được mạ kẽm c&oacute; độ bền v&agrave; khả năng chống ăn m&ograve;n cao.
<div style="text-align: center;"><img alt="thanh-profile-nhua-upvc" src="/Uploads/images/cuanhualoithep/thanh-nhua-upvc.jpg" style="width: 600px; height: 400px;" /></div>

<div style="text-align: center;">Thanh Profile<a href="http://webxaydung.net/image/data/cua-nhua-loi-thep/thanh-nhua-upvc.jpg">&nbsp;</a>nhựa Upvc</div>
&nbsp;<br />
<strong>3. Cửa nhựa l&otilde;i th&eacute;p Upvc phan thiết&nbsp;cấu tạo thế n&agrave;o?</strong><br />
Cấu tạo cửa nhựa Upvc bao gồm những th&agrave;nh phần ch&iacute;nh sau:<br />
- Thanh nhựa định h&igrave;nh.<br />
-&nbsp;<u><strong>L&otilde;i th&eacute;p gia cường</strong></u>.<br />
- K&iacute;nh: K&iacute;nh thường, k&iacute;nh an to&agrave;n, k&iacute;nh cường lực,&hellip;<br />
- Hệ gioăng k&eacute;p đảm bảo độ k&iacute;n kh&iacute;t cao.<br />
- Hệ phụ kiện kim kh&iacute;: Chốt, bản lề, tay nắm, kh&oacute;a,&hellip;
<div style="text-align: center;"><img alt="cau-tao-cua-nhua-loi-thep" src="/Uploads/images/cuanhualoithep/cau-tao-cua-nhua-upvc.jpg" style="width: 520px; height: 383px;" /></div>

<div style="text-align: center;">Cấu tạo cửa nhựa l&otilde;i th&eacute;p</div>
&nbsp;<br />
<strong>4. Cửa nhựa l&otilde;i th&eacute;p Upvc phan thiết&nbsp;c&oacute; bao nhi&ecirc;u loại?</strong><br />
Nếu ph&acirc;n theo kiểu mở th&igrave; cửa nhựa Upvc gồm những loại sau:<br />
- Cửa nhựa c&aacute;nh mở quay.<br />
- Cửa nhựa c&aacute;nh mở trượt.<br />
-&nbsp;<u><strong>Cửa nhựa</strong></u>&nbsp;c&aacute;nh mở hất (D&agrave;nh cho cửa sổ).<br />
- Cửa nhựa c&aacute;nh mở xếp trượt (D&agrave;nh cho cửa đi ch&iacute;nh).
<div style="text-align: center;"><img alt="loi-thep-gia-cuong" src="/Uploads/images/cuanhualoithep/loi-thep-gia-cuong.jpg" style="width: 504px; height: 342px;" /></div>

<div style="text-align: center;">L&otilde;i th&eacute;p gia cường</div>
&nbsp;<br />
<strong>5. Cửa nhựa l&otilde;i th&eacute;p Upvc phan thiết&nbsp;c&oacute; ưu điểm g&igrave;?</strong><br />
- Hệ gioăng EPDM k&iacute;n kh&iacute;t gi&uacute;p&nbsp;cửa&nbsp;lu&ocirc;n c&aacute;ch &acirc;m, c&aacute;ch nhiệt, đem đến kh&ocirc;ng gian y&ecirc;n tĩnh.<br />
- T&iacute;nh ổn định cao, kh&ocirc;ng cong v&ecirc;nh, co ng&oacute;t.<br />
- Bền bỉ trước kh&iacute; hậu nhiệt đới n&oacute;ng ẩm, mưa nhiều.<br />
-&nbsp;C&aacute;c thanh profile khu&ocirc;n cửa kết hợp với th&eacute;p gia cường n&ecirc;n c&oacute; khả năng chịu lực tốt v&agrave; độ an to&agrave;n cao cho c&ocirc;ng tr&igrave;nh, an to&agrave;n khi xảy ch&aacute;y hỏa hoạn.<br />
- Cửa thẩm mỹ cao, cửa k&iacute;nh rộng, sang trọng gi&uacute;p mở rộng kh&ocirc;ng gian v&agrave; tạo được tầm nh&igrave;n bao qu&aacute;t cho căn ph&ograve;ng.&nbsp;&nbsp;<br />
-&nbsp;Dễ vệ sinh, lau ch&ugrave;i cả ở b&ecirc;n trong v&agrave; b&ecirc;n ngo&agrave;i.<br />
- Sử dụng k&iacute;nh an to&agrave;n, k&iacute;nh cường lực, k&iacute;nh hộp&hellip; mang lại độ an to&agrave;n cao, kh&ocirc;ng g&acirc;y s&aacute;t thương khi vỡ.<br />
-&nbsp;Hiệu quả kinh tế cao trong qu&aacute; tr&igrave;nh sử dụng.
<div style="text-align: center;"><img alt="phu-kien-kim-khi" src="/Uploads/images/cuanhualoithep/phu-kien-cua-nhua-loi-thep.jpg" style="width: 544px; height: 417px;" /></div>

<div style="text-align: center;">Hệ phụ kiện kim kh&iacute;</div>
&nbsp;<br />
<strong>6. Một số mẫu h&igrave;nh ảnh cửa nhựa l&otilde;i th&eacute;p phan thiết.</strong>

<div style="text-align: center;"><br />
<strong><img alt="Cua-nhua-loi-thep" src="/Uploads/images/cuanhualoithep/cau-nhua-upvc-1.jpg" style="width: 600px; height: 450px;" /></strong></div>

<div style="text-align: center;"><br />
<strong>Cửa sở nhựa mở quay</strong></div>

<div style="text-align: center;"><strong><img alt="cua-nhua-loi-thep-upvc" src="/Uploads/images/cuanhualoithep/cua-nhua-upvc.jpg" style="width: 600px; height: 450px;" /></strong></div>

<div style="text-align: center;"><strong>Cửa sổ nhựa l&otilde;i th&eacute;p</strong></div>

<div style="text-align: center;"><strong><img alt="cua-nhua-loi-thep" src="/Uploads/images/cuanhualoithep/vach-cua-nhua-loi-thep.jpg" style="width: 600px; height: 450px;" /></strong></div>

<div style="text-align: center;"><strong>V&aacute;ch k&iacute;nh cửa nhựa l&otilde;i th&eacute;p</strong></div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;"><strong><img alt="cua-nhua-loi-thep-upvc" src="/Uploads/images/cuanhualoithep/cua-nhua-upvc.jpg" style="width: 600px; height: 450px;" /></strong></div>

<div style="text-align: center;"><strong>Cửa đi mở trượt</strong></div>

<div style="text-align: center;"><img alt="san-xua-cua-nhua-loi-thep-upvc" src="/Uploads/images/cuanhualoithep/san-xuat-cua-nhua-loi-thep-upvc-6.jpg" style="width: 400px; height: 299px;" /></div>

<div style="text-align: center;"><strong>Sản xuất cửa nhựa l&otilde;i th&eacute;p&nbsp;</strong></div>
<br />
&nbsp;', CAST(0x0000A6B9015838F0 AS DateTime), N'', N'Cửa nhựa lõi thép uPVC là loại cửa có xuất xứ từ châu Âu, cửa được cấu tạo từ các thanh profile nhựa uPVC và lõi thép mạ kẽm nằm bên trong nhằm gia tăng khả năng chịu lực cho cửa nhựa lõi thép.', N'phan thiết,cầu than kính cường lực phan thiết
+ lang cang kính cường lực phan thiết
+ phòng tấm kính cường lực phan thiết
+ cửa nhômphan thiết
+ mặt dựng nhôm phan thiết
kính sơn màu ốp bếp phan thiết', 2, 1, 1, 1, N'', N'vi', N'', N'', N'', N'', N'', N'128', N'cua-nhua-loi-thep', N'cua-nhua-loi-thep', N'cua-nhua-loi-thep', N'', N'', N'', CAST(0x0000A6B80090A580 AS DateTime), 0)
INSERT [dbo].[GroupNewsNewsDetail] ([Id], [Name], [Tag], [Image], [Content], [Detail], [Date], [Title], [Description], [Keyword], [Priority], [Index], [Active], [ord], [Nguon], [Lang], [Image1], [Image2], [Image3], [Image4], [Images5], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [NameEn], [ContentEn], [DetailEn], [DateView], [Luotxem]) VALUES (6, N'Mẫu tủ nhôm kính phan thiết được ưa chuộng 2016 ', N'mau-tu-nhom-kinh-phan-thiet-duoc-ua-chuong-2016', N'/Uploads/images/tunhomkinh/tunhomyte1.jpg', N'Tủ nhôm kính đang ngày càng được ưa chuộng. Hôm nay nhôm kính Phú quý xin gửi tới quý khách hàng các mẫu tủ nhôm kính đang được ưa chuộng năm 2016', N'<h2>Tủ bếp nh&ocirc;m k&iacute;nh&nbsp;phan thiết</h2>

<p>Với m&agrave;u sắc trắng b&oacute;ng của sơn tĩnh điện c&ugrave;ng với thiết kế đẹp mắt , chắc chắn kh&ocirc;ng gian nh&agrave; bếp của bạn sẽ trở n&ecirc;n hiện đại v&agrave; sang trọng. Đưới đ&acirc;y l&agrave; c&aacute;c kiểu mẫu tủ&nbsp; bếp nh&ocirc;m k&iacute;nh hiện đang được ưu chuộng nhất hiện nay. Về vệ sinh với bề mặt k&iacute;nh rất tiện lợi lau ch&ugrave;i dễ d&agrave;ng v&agrave; được phối m&agrave;u bằng sơn tĩnh điện n&ecirc;n bạn ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về m&agrave;u sắc của tủ bếp nh&eacute; .</p>

<p style="text-align: center;"><img alt="tu-bep-nhom-kinh-01 Mẫu tủ nhôm kính được ưa chuộng 2016" src="/Uploads/images/tunhomkinh/tu-bep-nhom-kinh-01.jpg" style="width: 450px; height: 338px;" title="Mẫu tủ nhôm kính được ưa chuộng 2016" /></p>

<p><em>H&igrave;nh ảnh mẫu tủ bếp nh&ocirc;m k&iacute;nh</em></p>

<p>Kh&ocirc;ng những đựng đồ dụng cụ bếp rất ngăn nắp khoa học, tủ bếp nh&ocirc;m k&iacute;nh c&ograve;n mang đến cho kh&ocirc;ng gian căn bếp sự s&aacute;ng b&oacute;ng, sạch đẹp. Hơn nữa với mặt k&iacute;nh trong suốt bạn c&oacute; thể dễ nhận biết được vật dụng b&ecirc;n trong l&agrave; g&igrave; m&agrave; kh&ocirc;ng cần phải mở cửa tủ ra , điều n&agrave;y rất thuận lợi cho qu&aacute; tr&igrave;nh t&igrave;m kiếm đồ d&ugrave;ng nh&agrave; bếp cho những b&agrave; nội trợ c&oacute; t&iacute;nh hay qu&ecirc;n.</p>

<p style="text-align: center;"><img alt="tu-bep-1 Mẫu tủ nhôm kính được ưa chuộng 2016" src="/Uploads/images/tunhomkinh/tu-bep-1.jpg" style="width: 500px; height: 375px;" title="Mẫu tủ nhôm kính được ưa chuộng 2016" /></p>

<p><em>Tủ bếp nh&ocirc;m k&iacute;nh v&acirc;n gỗ&nbsp;</em></p>

<p>Tủ bếp nh&ocirc;m k&iacute;nh c&oacute; 2 m&agrave;u cơ bản l&agrave; m&agrave;u trắng sơn tĩnh điện v&agrave; tủ bếp nh&ocirc;m k&iacute;nh v&acirc;n gỗ. Nhưng với m&agrave;u trắng tinh khiết v&agrave; sang trọng th&igrave; tủ bếp nh&ocirc;m k&iacute;nh m&agrave;u trắng sơn tĩnh điện được ưa chuộng nhiều hơn.&nbsp;Hiện nay tủ bếp nh&ocirc;m k&iacute;nh đang dần thay thế c&aacute;c loại tủ g&otilde;, tủ nhựa th&ocirc;ng thường.</p>

<h2>Tủ trưng b&agrave;y nh&ocirc;m k&iacute;nh&nbsp;phan thiết</h2>

<p>Kh&ocirc;ng chỉ d&ugrave;ng l&agrave;m tủ bếp, với c&aacute;c thiết kế độc đ&aacute;o đẹp mắc, ph&ugrave; hợp với từng c&ocirc;ng dụng m&agrave; tủ nh&ocirc;m k&iacute;nh được sử dụng rộng r&atilde;i để trưng b&agrave;y sản phẩm đặc t&iacute;nh của k&iacute;nh l&agrave; trong suốt dễ d&agrave;ng quan s&aacute;t v&agrave; tạo sự sang trọng.</p>

<p style="text-align: center;"><img alt="tu-nhom-kinh-dep Mẫu tủ nhôm kính được ưa chuộng 2016" src="/Uploads/images/tunhomkinh/tu-nhom-kinh-dep.jpg" style="width: 520px; height: 490px;" title="Mẫu tủ nhôm kính được ưa chuộng 2016" /></p>

<p><em>Mẫu tủ trưng b&agrave;y trong gia đ&igrave;nh</em></p>

<p>Với thiết kế tủ như tr&ecirc;n gia đ&igrave;nh bạn ho&agrave;n to&agrave;n c&oacute; thể d&ugrave;ng để k&ecirc; tivi, trang tr&iacute; gian ph&ograve;ng kh&aacute;ch, c&aacute;c ngăn nhỏ d&ugrave;ng để đựng đồ. Vừa gọn nh&agrave; m&agrave; lại vừa sang trọng.</p>

<p style="text-align: center;"><br />
<em><img alt="tu-ruou-kinh Mẫu tủ nhôm kính được ưa chuộng 2016" src="/Uploads/images/tunhomkinh/tu-ruou-kinh.jpg" style="width: 400px; height: 533px;" title="Mẫu tủ nhôm kính được ưa chuộng 2016" /></em></p>

<p><em>Mẫu tủ nh&ocirc;m k&iacute;nh trưng b&agrave;y rượu</em></p>

<p>Ph&ugrave; hợp với c&aacute;c quầy rượu, c&aacute;c cửa h&agrave;ng trưng b&agrave;y rượu hay cho những gia đ&igrave;nh c&oacute; c&aacute;c qu&yacute; &ocirc;ng, qu&yacute; b&agrave; th&iacute;ch sưu tầm rượu. Tủ trưng b&agrave;y rượu bằng nh&ocirc;m k&iacute;nh đang l&agrave; xu hướng c&aacute;c cửa h&agrave;ng trưng b&agrave;y, c&aacute;c hộ gia đ&igrave;nh ưa chuộng.</p>

<h2>Tủ trưng b&agrave;y b&aacute;n h&agrave;ng&nbsp;phan thiết</h2>

<p>C&aacute;c sản phẩm được b&agrave;y b&aacute;n như điện thoại di động, lap top, nh&agrave; thuốc&hellip; &nbsp;đều được trưng b&agrave;y trong c&aacute;c tủ nh&ocirc;m k&iacute;nh đẹp v&agrave; chuy&ecirc;n nghiệp . Để kh&aacute;ch h&agrave;ng c&oacute; thể quan s&aacute;t c&aacute;c chiếc điện thoại , laptop tốt hơn , đồng thời giữ cho c&aacute;c sản phẩm được tốt , mới đẹp&nbsp; v&agrave; tr&aacute;nh ảnh hưởng từ m&ocirc;i trường b&ecirc;n ngo&agrave;i như bụi bẩn, ẩm mốc.</p>

<p style="text-align: center;"><img alt="tutrungbayphukienmt Mẫu tủ nhôm kính được ưa chuộng 2016" src="/Uploads/images/tunhomkinh/tutrungbayphukienmt.jpg" style="width: 450px; height: 338px;" title="Mẫu tủ nhôm kính được ưa chuộng 2016" /></p>

<p><em>Tủ nh&ocirc;m k&iacute;nh trưng b&agrave;y điện thoại</em></p>

<p>Mỗi loại mẫu tủ nh&ocirc;m k&iacute;nh đều đ&aacute;p ứng c&aacute;c nhu cầu mục đ&iacute;ch sử dụng kh&aacute;c nhau.</p>

<p style="text-align: center;"><img alt="tunhomyte1 Mẫu tủ nhôm kính được ưa chuộng 2016" src="/Uploads/images/tunhomkinh/tunhomyte1.jpg" style="width: 450px; height: 332px;" title="Mẫu tủ nhôm kính được ưa chuộng 2016" /></p>

<p><em>Ứng dụng của tủ nh&ocirc;m k&iacute;nh tại quầy thuốc</em></p>

<p>Với phương ch&acirc;m mang lại&nbsp; những lợi &iacute;ch cần thiết nhất cho kh&aacute;ch h&agrave;ng cửa h&agrave;ng nh&ocirc;m k&iacute;nh Ph&uacute; Qu&yacute; lu&ocirc;n l&agrave; lựa chọn đ&aacute;ng tin cậy cho kh&aacute;ch h&agrave;ng. C&ugrave;ng với dịch vụ tư vấn miễn ph&iacute;, lắp đặt nhanh ch&oacute;ng ch&uacute;ng t&ocirc;i lu&ocirc;n cố gắng&nbsp;đảm bảo l&agrave;m h&agrave;i l&ograve;ng tất cả c&aacute;c kh&aacute;ch h&agrave;ng.</p>
', CAST(0x0000A6B9015A3471 AS DateTime), N'', N'Tủ nhôm kính phan thiết đang ngày càng được ưa chuộng. Hôm nay nhôm kính Phú quý xin gửi tới quý khách hàng các mẫu tủ nhôm kính đang được ưa chuộng năm 2016', N'cầu than kính cường lực phan thiết,lang cang kính cường lực phan thiết,phòng tấm kính cường lực phan thiết,cửa nhômphan thiết
,mặt dựng nhôm phan thiết,kính sơn màu ốp bếp phan thiết', 2, 1, 1, 1, N'', N'vi', N'', N'', N'', N'', N'', N'139', N'tu---cua-cuon---tu-dong', N'tu---cua-cuon---tu-dong', N'tu-nhom-kinh', N'', N'', N'', CAST(0x0000A6B8017F3E58 AS DateTime), 0)
INSERT [dbo].[GroupNewsNewsDetail] ([Id], [Name], [Tag], [Image], [Content], [Detail], [Date], [Title], [Description], [Keyword], [Priority], [Index], [Active], [ord], [Nguon], [Lang], [Image1], [Image2], [Image3], [Image4], [Images5], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [NameEn], [ContentEn], [DetailEn], [DateView], [Luotxem]) VALUES (7, N'Phòng tắm kính phan thiết', N'phong-tam-kinh-phan-thiet', N'/Uploads/images/phongtamkinh/15-mau-phong-tam-kinh-dep-hien-dai-1.jpg', N'Hiện nay, vật liệu  phòng tắm kính cường lực được các chủ thầu xây dựng cũng như gia chủ ưa chuộng và tin dùng.
Chúng có tắc dụng giúp không gian phòng tắm trở nên rộng rãi, sạch sẽ, thoáng đãng và dễ vệ sinh hơn.
Gía thành phải chăng phan thiết', N'<p>Hiện nay, vật liệu&nbsp;<strong>&nbsp;ph&ograve;ng tắm k&iacute;nh cường lực</strong>&nbsp;được c&aacute;c chủ thầu x&acirc;y dựng cũng như gia chủ ưa chuộng v&agrave; tin d&ugrave;ng.</p>

<p>Ch&uacute;ng c&oacute; tắc dụng gi&uacute;p kh&ocirc;ng gian ph&ograve;ng tắm trở n&ecirc;n rộng r&atilde;i, sạch sẽ, tho&aacute;ng đ&atilde;ng v&agrave; dễ vệ sinh hơn.</p>

<p>G&iacute;a th&agrave;nh phải chăng , chất liệu&nbsp;<strong>k&iacute;nh cường lực&nbsp;phan thiết</strong>&nbsp;an to&agrave;n n&ecirc;n hầu như c&aacute;c ng&ocirc;i nh&agrave;, c&ocirc;ng tr&igrave;nh lớn b&eacute; hiện nay điều tin d&ugrave;ng.</p>

<p>H&ocirc;m nay C&ocirc;ng Ty nh&ocirc;m k&iacute;nh Đ&igrave;nh Khoa phan thiết&nbsp;, xin giới thiệu đến qu&yacute; kh&aacute;ch h&agrave;ng những mẫu k&iacute;nh ph&ograve;ng tắm v&agrave; những c&ocirc;ng dụng của n&oacute;, c&ugrave;ng tham khảo !</p>

<p>Ngo&agrave;i V&aacute;ch tắm k&iacute;nh ch&uacute;ng t&ocirc;i c&ograve;n chuy&ecirc;n thiết kế, thi c&ocirc;ng, lắp đặt c&aacute;c sản phẩm hợp kim phục vụ trong ngh&agrave;nh x&acirc;y dựng v&agrave; trang tr&iacute; nội thất như:&nbsp;Cửa k&iacute;nh,&nbsp;thi c&ocirc;ng nh&ocirc;m k&iacute;nh, Cửa sổ, Cửa đi, Mặt dựng, V&aacute;ch ngăn, Tủ nh&ocirc;m , Kệ nh&ocirc;m&hellip; C&aacute;c c&ocirc;ng tr&igrave;nh k&iacute;nh như: Cầu thang, Lancan, Mặt dựng, Bản lề kẹp,&nbsp;Ph&ograve;ng tắm đứng, K&iacute;nh chịu lực, K&iacute;nh gh&eacute;p an to&agrave;n. Đặc biệt: Thi c&ocirc;ng cửa k&iacute;nh tự động, k&iacute;nh phong thủy tạo kh&ocirc;ng kh&iacute; tho&aacute;ng m&aacute;t.</p>

<p style="text-align: center;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt="983653568266.jpg" data-pagespeed-url-hash="3244173930" onload="pagespeed.CriticalImages.checkImageForCriticality(this);" src="/Uploads/images/phongtamkinh/983653568266.jpg" style="width: 552px; height: 480px;" /></p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>ph&ograve;ng tắm k&iacute;nh cửa mở&nbsp;phan thiết</strong></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Phụ kiện đi trực tiếp từ nh&agrave; cung cấp đến tay người c&oacute; nhu cầu thi c&ocirc;ng, kh&ocirc;ng qua trung gian n&ecirc;n gi&aacute; th&agrave;nh&nbsp;thi c&ocirc;ng ph&ograve;ng tắm k&iacute;nh&nbsp;chắc chắn gi&aacute; cạnh tranh hơn.</p>

<p>- Thợ thi c&ocirc;ng&nbsp;<strong>ph&ograve;ng tắm k&iacute;nh&nbsp;phan thiết</strong>&nbsp;nhiều năm kinh nghiệm, t&aacute;c phong l&agrave;m việc chuy&ecirc;n nghiệp, nhiệt t&igrave;nh, sẵn s&agrave;ng hỗ trợ tận nh&agrave; để khảo s&aacute;t, tư vấn c&aacute;ch lắp đặt ph&ograve;ng tắm k&iacute;nh ph&ugrave; hợp nhất!</p>

<p>&nbsp;</p>

<p style="text-align: center;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt="15-mau-phong-tam-kinh-dep-hien-dai-1.jpg" data-pagespeed-url-hash="4135096825" onload="pagespeed.CriticalImages.checkImageForCriticality(this);" src="/Uploads/images/phongtamkinh/15-mau-phong-tam-kinh-dep-hien-dai-1.jpg" style="width: 594px; height: 395px;" /></p>

<p>&nbsp;</p>

<p>- Chế độ bảo h&agrave;nh ph&ograve;ng tắm k&iacute;nh tốt, hậu m&atilde;i tốt.</p>

<p>- Nh&acirc;n vi&ecirc;n chăm s&oacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiện, nhiệt t&igrave;nh, chu đ&aacute;o kh&ocirc;ng ngại xa.</p>

<p>Mang lại sự<strong>&nbsp;Sang Trọng - Hiện Đại - An To&agrave;n</strong>&nbsp;cho mọi c&ocirc;ng tr&igrave;nh của qu&yacute; kh&aacute;ch.&nbsp;</p>
', CAST(0x0000A6B9015A9BB3 AS DateTime), N'', N'Hiện nay, vật liệu  phòng tắm kính cường lực được các chủ thầu xây dựng cũng như gia chủ ưa chuộng và tin dùng.
Chúng có tắc dụng giúp không gian phòng tắm trở nên rộng rãi, sạch sẽ, thoáng đãng và dễ vệ sinh hơn.
Gía thành phải chăng', N'cầu than kính cường lực phan thiết,lang cang kính cường lực phan thiết,phòng tấm kính cường lực phan thiết,cửa nhômphan thiết
,mặt dựng nhôm phan thiết,kính sơn màu ốp bếp phan thiết', 2, 1, 1, 1, N'', N'vi', N'', N'', N'', N'', N'', N'140', N'tu---cua-cuon---tu-dong', N'tu---cua-cuon---tu-dong', N'phong-tam-kinh', N'', N'', N'', CAST(0x0000A6B80184D684 AS DateTime), 0)
INSERT [dbo].[GroupNewsNewsDetail] ([Id], [Name], [Tag], [Image], [Content], [Detail], [Date], [Title], [Description], [Keyword], [Priority], [Index], [Active], [ord], [Nguon], [Lang], [Image1], [Image2], [Image3], [Image4], [Images5], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [NameEn], [ContentEn], [DetailEn], [DateView], [Luotxem]) VALUES (8, N'lan can kính cường lực phan thiết', N'lan-can-kinh-cuong-luc-phan-thiet', N'/Uploads/images/4908349ban_cong_inox_kinh_1.jpg', N'Lan can kính là một bộ khung không thể thiếu cho ngôi nhà của bạn,đặc biệt với những tiện lợi an toàn mà nó mang lại và sự thông thoáng tạo không gian mở tiện lợi cho mọi công trình kiến trúc,kể cả những ngôi nhà nhỏ đặc thù như tại các thành phố lớn tại Việt Nam phan thiết', N'<p>Lan can K&iacute;nh l&agrave; một bộ khung kh&ocirc;ng thể thiếu cho ng&ocirc;i nh&agrave; của bạn,đặc biệt với những tiện lợi an to&agrave;n m&agrave; n&oacute; mang lại v&agrave; sự th&ocirc;ng tho&aacute;ng tạo kh&ocirc;ng gian mở tiện lợi cho mọi c&ocirc;ng tr&igrave;nh kiến tr&uacute;c,kể cả những ng&ocirc;i nh&agrave; nhỏ đặc th&ugrave; như tại c&aacute;c th&agrave;nh phố lớn tại Việt Nam.Với thiết kế chắc chắc&nbsp;<strong>lan can k&iacute;nh cường lực phan thiết</strong>&nbsp;lu&ocirc;n l&agrave; sự ưu ti&ecirc;n lựa chọn h&agrave;ng đầu cho nh&agrave; phố,biệt thự,căn hộ cao cấp,chung cư,t&ograve;a cao ốc văn ph&ograve;ng v&agrave; nhiều kiến tr&uacute;c hiện đại nhưng cũng kh&ocirc;ng k&eacute;m phần sang trọng.</p>

<h2><strong>SƠ LƯỢC VỀ LAN CAN K&Iacute;NH PHAN THIẾT</strong></h2>

<ul>
	<li>Kh&aacute;i niệm lan can k&iacute;nh</li>
	<li>Cấu tạo lan can bằng k&iacute;nh</li>
	<li>Ph&acirc;n loại lan can bằng k&iacute;nh</li>
	<li>Đặc điểm v&agrave; ứng dụng lan can k&iacute;nh</li>
	<li>Chủng loại lan can k&iacute;nh</li>
	<li>Y&ecirc;u cầu th&ocirc;ng số v&agrave; kĩ thuật của lan can k&iacute;nh&nbsp;phan thiết</li>
</ul>

<p>Lan can k&iacute;nh phan thiết l&agrave; dạng v&aacute;ch ngăn&nbsp; r&igrave;a b&ecirc;n cầu thang,ban c&ocirc;ng hay đại sảnh c&oacute; chức năng tạo độ an to&agrave;n,ngăn khu vực v&agrave; tạo khung sườn cho kiến tr&uacute;c.Lan can k&iacute;nh được cấu tạo bằng k&iacute;nh,trụ,tay vịn v&agrave; hệ phụ kiện đi k&egrave;m.Với độ bền cực cao,l&agrave;m từ k&iacute;nh cường lực c&oacute; độ d&agrave;y thấp nhất l&agrave; 10mm lu&ocirc;n đảm bảo sự chắc chắn an to&agrave;n cho mọi hoạt động trong nh&agrave; bạn,ngo&agrave;i ra khung inox chắc chắn,bền l&acirc;u,ch&oacute;ng chọi mọi thời tiết,lu&ocirc;n l&agrave; điểm nhấn tạo tuổi thọ cho lan can k&iacute;nh nh&agrave; bạn,Ngo&agrave;i ra việc vệ sinh lao chủi hết sức dễ d&agrave;ng ti&ecirc;n lợi nhanh ch&oacute;ng,tạo cảm gi&aacute;c cho ng&ocirc;i nh&agrave; lu&ocirc;n ở trạng th&aacute;i sạch sẽ tho&aacute;ng đo&atilde;ng.</p>

<p>lan can được thiết kế song &nbsp;kim loại hay song gỗ những lan can cầu thang hay lan can h&agrave;nh lan được thiết kế với kim loại chịu lực v&agrave; k&iacute;nh cường lực trong suốt hay hoa văn mờ tinh tế tr&ecirc;n k&iacute;nh sẽ l&agrave; điểm nhất hết sức tinh tế,mang n&eacute;t đẹp hiện đại pha ch&uacute;t cổ điển từ c&aacute;c họa tiết.</p>

<h2><strong>CẤU TẠO LAN CAN K&Iacute;NH PHAN THIẾT</strong></h2>

<p>Lan can k&iacute;nh,&nbsp;được cấu tạo bởi:</p>

<p>-&nbsp;<strong>K&iacute;nh</strong>&nbsp;li&ecirc;n kết bao gồm:&nbsp;K&iacute;nh Cường lực&nbsp;hoặc k&iacute;nh d&aacute;n an to&agrave;n hai lớp</p>

<p>-&nbsp;<strong>Trụ</strong>:&nbsp;</p>

<p>-&nbsp;<strong>Pat v&agrave; kẹp k&iacute;nh</strong></p>

<p>-&nbsp;<strong>Tay vịn</strong>, phụ kiện tay vịn</p>

<p style="text-align: center;">&nbsp;<img alt="Cấu tạo lan can kính" src="/Uploads/images/cau-tao-lan-can-kinh.png" style="width: 726px; height: 435px;" title="Cấu tạo lan can kính" /></p>

<p><strong>Cấu tạo lan can k&iacute;nh</strong></p>

<p><strong><font face="times new roman, times, serif">PH&Acirc;N LOẠI</font></strong></p>

<h2><strong>Lan can k&iacute;nh cầu thang&nbsp;phan thiết</strong></h2>

<p>Được thiết kế bằng k&iacute;nh cường lực cao cấp,c&oacute; nhiều độ d&agrave;y kh&aacute;c nhau,kh&aacute;ch h&agrave;ng c&oacute; thể lựa chọn,đặ điểm tạo sự chắc chắn,k&iacute;nh cường lực trong suốt tạo kh&ocirc;ng gian th&ocirc;ng tho&aacute;ng,đẳng cấp cho ng&ocirc;i nh&agrave;.</p>

<ul>
	<li>Lan can cầu thang pad đ&ocirc;i</li>
	<li>Lan can cầu thang pad đơn</li>
	<li>Lan can cầu thang dạng u &acirc;m s&agrave;n</li>
	<li>Lan can cầu thang trụ ngắn</li>
	<li>Lan can cầu thang trụ d&agrave;i</li>
	<li>Lan can cầu thang trụ kẹp</li>
	<li>Lan can cầu thang kh&ocirc;ng trụ</li>
</ul>

<h2><strong>Lan can k&iacute;nh ban c&ocirc;ng&nbsp;phan thiết</strong></h2>

<p>Sử dụng k&iacute;nh cường lực cao cấp k&ecirc; trực tiếp xuống s&agrave;n,kh&ocirc;ng sử dụng trụ nhằm lảm giảm khối lượng sức nặng cho lan can của ng&ocirc;i nh&agrave;.tay vịn được l&agrave;m bằng inox cao cấp 304&nbsp; chống rỉ s&eacute;t,chống ăn m&ograve;n,tuổi thọ cao,chịu thời tiết khắc nghiệt tốt.</p>

<ul>
	<li>Lan can ban c&ocirc;ng pad đ&ocirc;i</li>
	<li>Lan can ban c&ocirc;ng pad đơn</li>
	<li>Lan can ban c&ocirc;ng trụ ngắn</li>
	<li>Lan can ban c&ocirc;ng trụ d&agrave;i</li>
	<li>Lan can ban c&ocirc;ng trụ kẹp</li>
	<li>Lan can ban c&ocirc;ng trụ dời</li>
	<li>Lan can inox k&iacute;nh cường lực</li>
</ul>

<p>​<strong>Lan can k&iacute;nh đại sảnh&nbsp;phan thiết</strong></p>

<p>Sử dụng cho những kh&ocirc;ng gian rộng như trung t&acirc;m thương mại,nh&agrave; h&agrave;ng,kh&aacute;ch sạn,sảnh tiệc,văn ph&ograve;ng c&ocirc;ng ty,biệt thự nh&agrave; phố..v..v đảm bảo độ chắc chắn với k&iacute;nh cường lực từ 12mm được bắt v&iacute;t v&agrave;o dầm,được li&ecirc;n kết với nhau qua trụ,tay vịn c&oacute; thể lựa chọn bằng gỗ hay inox 304 cao cấp.</p>

<p>Với chất liệu lu&ocirc;n được nghi&ecirc;n cứu v&agrave; cải tiến kh&ocirc;ng ngừng,&nbsp;lan can k&iacute;nh đẹp&nbsp;l&agrave; sự kết hợp những kĩ thuật c&ocirc;ng nghệ hiện đại,b&ecirc;n cạnh sự chắc chắn nhưng gọn nhẹ,gần gũi với thi&ecirc;n nhi&ecirc;n,v&agrave; mang yếu tố sinh học &aacute;nh sang c&oacute; thể tho&aacute;t qua dễ d&agrave;ng gi&uacute;p thuận lợi cho việc trồng c&acirc;y v&agrave; tạo cho &aacute;nh s&aacute;ng l&agrave;u v&agrave;o nh&agrave; bạn.</p>

<p>Hiện nay tr&ecirc;n thị trường c&oacute; nhiều d&ograve;ng k&iacute;nh kh&aacute;c nhau như k&iacute;nh trong suốt,k&iacute;nh trong mờ,k&iacute;nh mờ đục,k&iacute;nh phản quan,gương&hellip;.Độ d&agrave;y của k&iacute;nh cừng lực cũng c&oacute; nhi&ecirc;u mức kh&aacute;c nhau,nh&igrave;n chung đều đ&aacute;p ứng c&aacute;c ti&ecirc;u ch&iacute; an to&agrave;n sử dụng,bề mặt được sử l&yacute; chống b&aacute;m bẩn,tr&aacute;nh trơn trượt,c&aacute;c phụ kiện lan can k&iacute;nh được thiết kế đồng bộ với chất liệu cao cấp bảo h&agrave;nh từ 2 năm</p>

<p><strong>ỨNG DỤNG VỚI ĐA DẠNG KIẾN TR&Uacute;C&nbsp;phan thiết</strong></p>

<p>Lan can k&iacute;nh phan thiết&nbsp;hiện nay lu&ocirc;n được ứng dụng rổng r&atilde;i ở nhiều c&ocirc;ng tr&igrave;nh như trung t&acirc;m thương mại,c&ocirc;ng tr&igrave;nh lớn,kh&aacute;ch sạn nh&agrave; h&agrave;ng,t&ograve;a cao ốc,biệt thự nh&agrave; phố&hellip;v.v với nhiều năm l&agrave;m việc trong lĩnh vực nội ngoại thất ch&uacute;ng t&ocirc;i lu&ocirc;n cấp cấp c&aacute;c sản phẩm tốt nhất cho qu&yacute; kh&aacute;ch h&agrave;ng,lu&ocirc;n cung cấp những sản phẩm tốt nhất với gi&aacute; ưu đ&atilde;i nhất,chắc chắn kh&aacute;ch h&agrave;ng sẽ nhận được sự h&agrave;i l&ograve;ng từ sản phẩm cũng như dịch vụ chuy&ecirc;n nghiệp từ ch&uacute;ng t&ocirc;i.</p>

<p style="text-align: center;"><img alt="" src="/Uploads/images/4908349ban_cong_inox_kinh_1.jpg" style="width: 1024px; height: 768px;" /></p>
', CAST(0x0000A6B90159055B AS DateTime), N'', N'Lan can kính là một bộ khung không thể thiếu cho ngôi nhà của bạn,đặc biệt với những tiện lợi an toàn mà nó mang lại và sự thông thoáng tạo không gian mở tiện lợi cho mọi công trình kiến trúc,kể cả những ngôi nhà nhỏ đặc thù như tại các thành phố lớn tại Việt Nam', N'cầu than kính cường lực phan thiết,lang cang kính cường lực phan thiết,phòng tấm kính cường lực phan thiết,cửa nhômphan thiết
,mặt dựng nhôm phan thiết,kính sơn màu ốp bếp phan thiết', 2, 1, 1, 1, N'', N'vi', N'', N'', N'', N'', N'', N'142', N'tu---cua-cuon---tu-dong', N'tu---cua-cuon---tu-dong', N'lan-can-kinh', N'', N'', N'', CAST(0x0000A6B8018B5E94 AS DateTime), 0)
INSERT [dbo].[GroupNewsNewsDetail] ([Id], [Name], [Tag], [Image], [Content], [Detail], [Date], [Title], [Description], [Keyword], [Priority], [Index], [Active], [ord], [Nguon], [Lang], [Image1], [Image2], [Image3], [Image4], [Images5], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [NameEn], [ContentEn], [DetailEn], [DateView], [Luotxem]) VALUES (9, N'Lan can kinh ban công phan thiết', N'lan-can-kinh-ban-cong-phan-thiet', N'/Uploads/images/Lancankinh/lan-can-kinh-u-am.jpg', N'Lan can kính hiện nay cũng còn khá mới mẻ tại Việt Nam, chúng ta đã quá quen thuộc với những mẫu lan can truyền thống luôn được ưa chuộng bởi sự chắc chắn, an toàn của nó. Nhưng đó chính là sự đột phá của kiến trúc hiện đại ngày nay, mang đến nét đẹp hiện đại, sang trọng cho không gian.', N'<p><strong>Lan can k&iacute;nh&nbsp;phan thiết</strong>&nbsp;sẽ tạo cảm gi&aacute;c nới rộng cho kh&ocirc;ng gian kiến tr&uacute;c so với kiểu lan can gỗ hay sắt, mang lại vẻ đẹp hiện đại, sang trọng v&agrave; lu&ocirc;n được xem l&agrave; một trong những điểm nhấn kiến tr&uacute;c quan trọng cho nội - ngoại thất c&ocirc;ng tr&igrave;nh. V&igrave; thế&nbsp;lan can kinh&nbsp;ban c&ocirc;ng l&agrave; chọn lựa của c&aacute;c ng&ocirc;i nh&agrave; phố, biệt thự cao cấp, c&aacute;c t&ograve;a cao ốc văn ph&ograve;ng,khu du lịch, hồ bơi... mang lại sự sang trọng, trang nh&atilde;, t&iacute;nh thẩm mỹ cao cho c&ocirc;ng tr&igrave;nh sử dụng.</p>

<h2>Lan can k&iacute;nh ban c&ocirc;ng l&agrave; g&igrave;</h2>

<p><br />
Lan can k&iacute;nh ban c&ocirc;ng&nbsp;phan thiết l&agrave; một hạng mục kh&ocirc;ng thể thiếu trong c&aacute;c c&ocirc;ng tr&igrave;nh kiến tr&uacute;c, lan can c&oacute; t&aacute;c dụng tạo lối đi b&ecirc;n trong c&ocirc;ng tr&igrave;nh, lỗ th&ocirc;ng tầng khu vực cầu thang, lan can ngo&agrave;i ban c&ocirc;ng...Ch&iacute;nh v&igrave; vậy m&agrave; kiểu d&aacute;ng cũng như chất liệu sử dụng l&agrave;m&nbsp;lan can k&iacute;nh&nbsp;ảnh hưởng rất nhiều dến diện t&iacute;ch c&ocirc;ng tr&igrave;nh, vẻ thẩm mỹ, an to&agrave;n v&agrave; độ bền khi lắp đặt.&nbsp;</p>

<h2>Ưu điểm của lan can k&iacute;nh ban c&ocirc;ng<br />
&nbsp;</h2>

<p>- Ngo&agrave;i ra khi sử dụng kiểu&nbsp;<strong>lan can k&iacute;nh cường lực&nbsp;phan thiết&nbsp;</strong>bạn sẽ tiết kiệm được chi ph&iacute; sơn phết như loại lan can sắt, v&igrave; k&iacute;nh c&oacute; bề mặt phẳng, dễ lau ch&ugrave;i, kh&ocirc;ng bị gỉ s&eacute;t hay biến dạng khi chịu sức n&oacute;ng cũng như mưa do kh&iacute; hậu thi&ecirc;n nhi&ecirc;n g&acirc;y ra. Bạn c&oacute; thể y&ecirc;n t&acirc;m về độ an to&agrave;n của mẫu lan can kinh cuong luc n&agrave;y v&igrave; khả năng chịu va đập gấp 4-5 lần v&agrave; khi vỡ sẽ kh&ocirc;ng hề g&acirc;y trầy xước cho con người như loại k&iacute;nh th&ocirc;ng thường.</p>

<p>-&nbsp;K&iacute;nh cường lực&nbsp;c&oacute; khả năng chịu lực gấp 7 đến 8 lần so với c&aacute;c loại k&iacute;nh nổi th&ocirc;ng thường c&ugrave;ng loại, với c&ugrave;ng k&iacute;ch thước, c&ugrave;ng độ d&agrave;y. Nếu kh&ocirc;ng may k&iacute;nh bị vỡ th&igrave; sẽ vỡ ra th&agrave;nh nhiều vụn nhỏ, do đ&oacute; giảm thiểu tối đa việc g&acirc;y thương t&iacute;ch so với k&iacute;nh th&ocirc;ng thường<br />
<br />
- Lan can k&iacute;nh ban c&ocirc;ng từ&nbsp;<strong>k&iacute;nh cường lực&nbsp;phan thiết</strong>&nbsp;chịu được độ sốc nhiệt rất cao so với k&iacute;nh thường. Ch&ecirc;nh lệch nhiệt dộ giữa l&otilde;i v&agrave; bề mặt đến &gt; 2000 độ C. Trong khi đ&oacute; k&iacute;nh th&ocirc;ng thường chịu được sự ch&ecirc;nh lệch nhiệt độ cho ph&eacute;p l&agrave; dưới 500 độ C.</p>

<p>- K&iacute;nh sau khi cường lực&nbsp;phan thiết kh&ocirc;ng bị thay đổi c&aacute;c đặc t&iacute;nh vốn c&oacute; của k&iacute;nh thường như m&agrave;u sắc, độ trong suốt, th&agrave;nh phần h&oacute;a học, độ dẫn nhiệt của k&iacute;nh, khối lượng ri&ecirc;ng, hệ số gi&atilde;n nở, hay độ truyền &aacute;nh s&aacute;ng, ...<br />
<br />
- Lan can k&iacute;nh cường lực được sử dụng trong nh&agrave; kh&ocirc;ng chỉ bền, v&agrave; chắc chắn, m&agrave; c&ograve;n gi&uacute;p cho ng&ocirc;i nh&agrave; của bạn tr&ocirc;ng sang trọng hơn, s&aacute;ng sủa v&agrave; dễ lau ch&ugrave;i, vệ sinh</p>

<h2>Ph&acirc;n loại lan can k&iacute;nh ban c&ocirc;ng&nbsp;phan thiết</h2>

<p>&nbsp;</p>

<h3>- Lan can k&iacute;nh ban c&ocirc;ng&nbsp;phan thiết dạng u &acirc;m s&agrave;n:</h3>

<p>K&iacute;nh được ch&ocirc;n s&acirc;u v&agrave;o s&agrave;n hay đ&agrave; bề t&ocirc;ng từ 5-7cm rồi d&aacute;n v&agrave;o đ&oacute; bằng keo (silicon) chịu lực v&agrave; chịu đ&agrave;n hồi.<br />
&nbsp;</p>

<p style="text-align: center;"><img alt="Lan can kính dạng âm sàn, lan can inox kính cường lực" src="/Uploads/images/Lancankinh/lan-can-kinh-u-am.jpg" title="Lan can kính dạng âm sàn" /></p>

<p style="text-align: center;"><strong><em>Lan can dạng pass u &acirc;m s&agrave;n</em></strong></p>

<h3>- Lan can k&iacute;nh ban c&ocirc;ng&nbsp;phan thiết dạng pass inox:</h3>

<p>P&aacute;t inox c&oacute; 2 loại bằng pass đơn v&agrave; pass đ&ocirc;i, (pass l&agrave; một đoạn inox h&igrave;nh trụ tr&ograve;n c&oacute; một đầu c&oacute; giữ k&iacute;nh). Dạng&nbsp;<strong>lan can k&iacute;nh</strong>&nbsp;ban c&ocirc;ng n&agrave;y k&iacute;nh che phủ b&ecirc;n th&agrave;nh đ&agrave; li&ecirc;n kết, giữa k&iacute;nh v&agrave; đ&agrave; li&ecirc;n kết sẽ c&oacute; một khoản rỗng. Khi ho&agrave;n thiện dạng lan can k&iacute;nh n&agrave;y sẽ l&agrave; một&nbsp;<strong>v&aacute;ch k&iacute;nh</strong>&nbsp;li&ecirc;n tục trong suốt.<br />
<br />
&nbsp;</p>

<p style="text-align: center;"><img alt="Lan can kính ban công pad đôi, lan can kính" src="/Uploads/images/Lancankinh/lan-can-kinh-pat-doi.jpg" style="width: 500px; height: 370px;" title="Lan can kính ban công pad đôi" /></p>

<p style="text-align: center;"><strong><em>Lan can dạng pass đ&ocirc;i</em></strong></p>

<p>&nbsp;</p>

<p style="text-align: center;"><img alt="Lan can kính ban công pad đơn" src="/Uploads/images/Lancankinh/lan-can-kinh-pat-don.jpg" style="width: 500px; height: 370px;" title="Lan can kính ban công pad đơn" /></p>

<p style="text-align: center;"><strong><em>Lan can dạng pass đơn</em></strong><br />
&nbsp;</p>

<h3>- Lan can k&iacute;nh ban c&ocirc;ng&nbsp;phan thiết dạng trụ ngắn:</h3>

<p>Trụ ngắn đa số c&aacute;c trụ ngắn đều c&oacute; độ d&agrave;i từ 1/5-1/3 chiều cao&nbsp;lan can k&iacute;nh&nbsp;v&agrave; được chia l&agrave;m 2 dạng l&agrave; trụ cặp h&ocirc;ng v&agrave; trụ &aacute;p s&agrave;n. Dạng lan can k&iacute;nh c&oacute; 2 đặc điểm sau: đ&aacute;y c&aacute;ch s&agrave;n v&agrave; k&iacute;nh li&ecirc;n tục, ph&iacute;a tr&ecirc;n sẽ chỉ c&oacute; k&iacute;nh v&agrave; tay nắm dạng l&agrave;m cho kh&ocirc;ng cầu thang của bạn như nửa hở nửa k&iacute;nh, n&oacute; vừa th&ocirc;ng tho&aacute;ng b&ecirc;n dưới v&agrave; trong suốt b&ecirc;n tr&ecirc;n.</p>

<h3>- Lan can k&iacute;nh ban c&ocirc;ng&nbsp;phan thiết dạng trụ d&agrave;i:</h3>

<p>Rất đa dạng v&agrave; phong ph&uacute; về kiểu trụ như trụ inox vu&ocirc;ng tr&ograve;n dẹp.. , trụ inox gỗ, trụ inox nh&ocirc;m, trụ inox mecal, trụ sắt&hellip;, độ cao ti&ecirc;u chuẩn của thang trụ l&agrave; 850mm, k&iacute;nh được li&ecirc;n kết v&agrave;o trụ cao c&aacute;c tay đỡ bằng inox. Lan can k&iacute;nh ban c&ocirc;ng trụ d&agrave;i đa số ph&aacute;i tr&ecirc;n đều bắc buộc phải sử dụng tay vịn. Với sự đa dạng của kiểu trụ d&agrave;i sẽ bạn thể hiện sức s&aacute;ng tạo v&agrave; mang đến những lan can k&iacute;nh ban c&ocirc;ng như &yacute;.<br />
<br />
H&atilde;y gọi ngay cho&nbsp;Nội Thất B&ugrave;i Ph&aacute;t&nbsp;đ&ecirc;&nbsp;gi&uacute;p lới rộng kh&ocirc;ng gian gi&uacute;p cho ng&ocirc;i nh&agrave; của bạn trở n&ecirc;n lộng lẫy, tăng t&iacute;nh thẩm mỹ, mang lại vẻ đẹp hiện đại, sang trọng &nbsp;của lan can k&iacute;nh cường lực v&agrave; lu&ocirc;n được xem l&agrave; một trong những điểm nhấn kiến tr&uacute;c quan trọng trong nội ngoại thất.</p>
', CAST(0x0000A6C600058D20 AS DateTime), N'', N'Lan can kính hiện nay cũng còn khá mới mẻ tại Việt Nam, chúng ta đã quá quen thuộc với những mẫu lan can truyền thống luôn được ưa chuộng bởi sự chắc chắn, an toàn của nó. Nhưng đó chính là sự đột phá của kiến trúc hiện đại ngày nay, mang đến nét đẹp hiện đại, sang trọng cho không gian.', N'cu di nhom kinh phan thiet, lang cang kính cường lực phan thiết,phòng tấm kính cường lực phan thiết, cửa nhômphan thiết,mặt dựng nhôm phan ,kính sơn màu ốp bếp phan thiếtthiết', 2, 1, 1, 1, N'', N'vi', N'', N'', N'', N'', N'', N'142', N'tu---cua-cuon---tu-dong', N'tu---cua-cuon---tu-dong', N'lan-can-kinh', N'', N'', N'', CAST(0x0000A6B901656BBD AS DateTime), 0)
INSERT [dbo].[GroupNewsNewsDetail] ([Id], [Name], [Tag], [Image], [Content], [Detail], [Date], [Title], [Description], [Keyword], [Priority], [Index], [Active], [ord], [Nguon], [Lang], [Image1], [Image2], [Image3], [Image4], [Images5], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [NameEn], [ContentEn], [DetailEn], [DateView], [Luotxem]) VALUES (10, N'Kính trang trí nội thất phan thiết', N'kinh-trang-tri-noi-that-phan-thiet', N'/Uploads/images/kinhnoithat/kinh-trang-tri.jpg', N'Ngày nay việc sử dụng Kính Trang Trí  nội thất làm đẹp cho không gian nội thất không thể thiếu mỗi khi sửa chữa xây dựng nhà mới. ', N'<p>Ng&agrave;y nay việc sử dụng&nbsp;<strong>K&iacute;nh Trang Tr&iacute; phan thiết</strong>&nbsp; nội thất l&agrave;m đẹp cho kh&ocirc;ng gian nội thất kh&ocirc;ng thể thiếu mỗi khi sửa chữa x&acirc;y dựng nh&agrave; mới.&nbsp;<strong>K&iacute;nh trang tr&iacute;&nbsp;phan thiết</strong>&nbsp;gi&uacute;p cho kh&ocirc;ng gian nội thất trở l&ecirc;n xinh động sang trọng, l&agrave;m điểm nhấn hấp dẫn với mẫu m&atilde; đa dạng phong ph&uacute; t&ugrave;y theo sở th&iacute;ch v&agrave; gu thẩm mỹ của mỗi người.&nbsp;Đặc biệt l&agrave; những tấm h&igrave;nh gia đ&igrave;nh l&agrave;m tranh gh&eacute;p k&iacute;nh&nbsp;treo trong ph&ograve;ng rất sang trọng lu&ocirc;n s&aacute;ng mới v&agrave; bền l&acirc;u.</p>

<p>&nbsp;</p>

<div style="text-align: center;">&nbsp;</div>

<p>Để đ&aacute;p ứng y&ecirc;u cầu ng&agrave;y c&agrave;ng cao của thị trường. C&ocirc;ng Ty&nbsp;K&iacute;nh An To&agrave;n&nbsp;đ&atilde; mạnh dạn đầu tư ph&aacute;t triển đa dạng c&aacute;c mẫu m&atilde; để đ&aacute;p ứng xu hướng hiện đại v&agrave; t&iacute;nh thẩm mỹ cao mang đến cho Qu&yacute; Kh&aacute;ch h&agrave;ng một c&aacute;i nh&igrave;n mới về thiết kế kiến tr&uacute;c v&agrave;<strong><em>trang tr&iacute; nội thất.</em></strong></p>

<div style="text-align: center;"><img alt="Kinh trang tri" src="/Uploads/images/kinhnoithat/kinh-trang-tri.jpg" style="width: 606px; height: 359px;" /></div>

<p style="text-align: center;"><em>K&iacute;nh trang tr&iacute; nội thất</em></p>

<h2 justify=""><strong>Đặc điểm K&iacute;nh trang tr&iacute; nội thất&nbsp;phan thiết</strong></h2>

<ul>
	<li><em><strong>K&iacute;nh Gh&eacute;p Trang Tr&iacute;&nbsp;</strong></em><strong>phan thiết</strong>&nbsp; nội thất l&agrave; một lọai k&iacute;nh an to&agrave;n m&agrave; ở giữa hai lớp k&iacute;nh c&ograve;n c&oacute; th&ecirc;m một lớp vật liệu d&ugrave;ng để trang tr&iacute; đặc biệt như:Vải, sợi , tơ, d&acirc;y kim loại, giấy&hellip;Qua qu&aacute; tr&igrave;nh hấp nhiệt l&agrave;m cho lớp keo phim tan ra thấm đều v&agrave;o lớp vật liệu<em><strong>&nbsp;trang tr&iacute;&nbsp;</strong></em>v&agrave; gắn chặt ch&uacute;ng v&agrave;o giữa hai lớp k&iacute;nh tạo th&agrave;nh một&nbsp;sản phẩmmới vừa đảm bảo y&ecirc;u cầu về an to&agrave;n, vừa c&oacute; đựợc sự độc đ&aacute;o ri&ecirc;ng của người sử dụng.</li>
</ul>

<div style="text-align: center;"><img alt="Vách ngăn kính trang trí" sizes="(max-width: 650px) 100vw, 650px" src="/Uploads/images/kinhnoithat/Bui-tre3.jpg" srcset="http://kinhantoanvn.com/wordpress/wp-content/uploads/2015/03/Bui-tre3.jpg 750w, http://kinhantoanvn.com/wordpress/wp-content/uploads/2015/03/Bui-tre3-300x165.jpg 300w" style="width: 750px; height: 412px;" /></div>

<p style="text-align: center;">V&aacute;ch ngăn k&iacute;nh trang tr&iacute;</p>

<h2 justify=""><strong>Ưu điểm:</strong></h2>

<ul>
	<li>Đa dạng về m&agrave;u sắc v&agrave; kiểu&nbsp;<strong><em>hoa văn trang tr&iacute;&nbsp;</em></strong>với h&agrave;ng ngh&igrave;n họa tiết kh&aacute;c nhau.</li>
	<li>L&agrave; loại k&iacute;nh an to&agrave;n khi sử dụng kh&ocirc;ng g&acirc;y thương t&iacute;ch khi bễ vở, ngăn cản kẻ tr&ocirc;m đột nhập v&igrave; k&iacute;nh trang tr&iacute; rất kh&oacute; ph&aacute; ra từng mảnh để chui v&agrave;o nh&agrave;.</li>
	<li>Độ d&agrave;y k&iacute;nh linh họat, t&ugrave;y theo sự lựa chọn của kh&aacute;ch h&agrave;ng (Từ 6 đến 20mm, quy c&aacute;ch tối đa: 1700 x 3000mm t&ugrave;y theo mẫu m&atilde;)</li>
	<li>Giữ được m&agrave;u sắc l&acirc;u nhất, kh&ocirc;ng bị phai m&agrave;u, kh&ocirc;ng trầy sước lớp&nbsp;<strong><em>trang tr&iacute; .</em></strong>.. Tạo vẻ hiện đại sang trọng cho c&ocirc;ng tr&igrave;nh của bạn.</li>
	<li style="text-align: center;"><img alt="Kính ghép" src="/Uploads/images/kinhnoithat/Kinh-ghep-an-toan1.jpg" style="width: 653px; height: 252px;" /></li>
	<li style="text-align: center;"><em>K&iacute;nh gh&eacute;p trang tr&iacute; an to&agrave;n kh&ocirc;ng g&acirc;y s&aacute;t thương khi bể vỡ v&agrave; ngăn cản s&acirc;m nhập bất hợp ph&aacute;p</em></li>
</ul>

<h2><strong>Ứng dụng:</strong></h2>

<ul>
	<li>Được ứng dụng rộng r&atilde;i trong kiến tr&uacute;c v&agrave;&nbsp;<em><strong>trang tr&iacute; nội thất</strong></em>&nbsp;như:</li>
	<li>Quầy tiếp t&acirc;n nh&agrave; h&agrave;ng, kh&aacute;ch sạn, khu du lịch, khu nghỉ m&aacute;t.</li>
	<li>V&aacute;ch ngăn trang tr&iacute; cho những ph&ograve;ng kh&aacute;ch sang trọng, ph&ograve;ng tắm hiện đại.</li>
	<li>B&agrave;n trang tr&iacute;, quầy Bar, hộp đ&egrave;n trang tr&iacute;, trần k&iacute;nh, m&aacute;i v&ograve;m&hellip;</li>
</ul>
', CAST(0x0000A6B901759A17 AS DateTime), N'', N'Ngày nay việc sử dụng Kính Trang Trí  nội thất làm đẹp cho không gian nội thất không thể thiếu mỗi khi sửa chữa xây dựng nhà mới. ', N'cu di nhom kinh phan thiet, lang cang kính cường lực phan thiết,phòng tấm kính cường lực phan thiết, cửa nhômphan thiết,mặt dựng nhôm phan ,kính sơn màu ốp bếp phan thiếtthiết', 2, 1, 1, 1, N'', N'vi', N'', N'', N'', N'', N'', N'147', N'cac-loai-kinh', N'cac-loai-kinh', N'kinh-noi-that', N'', N'', N'', CAST(0x0000A6B9016DA340 AS DateTime), 0)
INSERT [dbo].[GroupNewsNewsDetail] ([Id], [Name], [Tag], [Image], [Content], [Detail], [Date], [Title], [Description], [Keyword], [Priority], [Index], [Active], [ord], [Nguon], [Lang], [Image1], [Image2], [Image3], [Image4], [Images5], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [NameEn], [ContentEn], [DetailEn], [DateView], [Luotxem]) VALUES (11, N'Kính màu trang trí phan thiết', N'kinh-mau-trang-tri-phan-thiet', N'/Uploads/images/kinhmau/kinh_mau_trang_tri_1.jpg', N'Với ưu điểm là khổ kính lớn, màu sắc và hiệu ứng phong phú, làm cho không gian ứng dụng của kính màu trở nên rộng rãi và sang trọng hơn, đối với các khu vực dành cho kinh doanh như: Showroom thời trang phan thiết', N'<p>Với ưu điểm l&agrave; khổ k&iacute;nh lớn, m&agrave;u sắc v&agrave; hiệu ứng phong ph&uacute;, l&agrave;m cho kh&ocirc;ng gian ứng dụng của k&iacute;nh m&agrave;u trở n&ecirc;n rộng r&atilde;i v&agrave; sang trọng hơn, đối với c&aacute;c khu vực d&agrave;nh cho kinh doanh như:&nbsp;<strong>Showroom&nbsp;phan thiết</strong>&nbsp;thời trang, cửa h&agrave;ng, kh&aacute;ch sạn, shop qu&agrave; lưu niệm, nh&agrave; h&agrave;ng, bể bơi, c&aacute;c trung t&acirc;m thương mại... V&aacute;ch&nbsp;<strong>k&iacute;nh m&agrave;u trang tr&iacute;&nbsp;phan thiết</strong>&nbsp;l&agrave;m t&ocirc;n th&ecirc;m sản phẩm kinh doanh, kh&ocirc;ng gian rộng hơn, m&agrave;u sắc trang nh&atilde; l&agrave;m cho kh&aacute;ch h&agrave;ng c&oacute; cảm gi&aacute;c thoải m&aacute;i v&agrave; dễ chịu.</p>

<p align="left">K&iacute;nh m&agrave;u&nbsp;s&aacute;ng b&oacute;ng, vết nối gh&eacute;p giữa 2 tấm k&iacute;nh c&oacute; thể được gh&eacute;p liền mạch hoặc kết hợp bằng c&aacute;c thanh inox, kh&aacute;ch h&agrave;ng c&oacute; thể thoải m&aacute;i lựa chọn m&agrave;u sắc cho ph&ugrave; hợp với sở th&iacute;ch c&aacute; nh&acirc;n v&agrave; đặc điểm của sản phẩm kh&aacute;ch h&agrave;ng kinh doanh, kh&ocirc;ng giới hạn về m&agrave;u sắc, độ d&agrave;y v&agrave; chủng loại k&iacute;nh&nbsp; .</p>

<h2>Sản phẩm k&iacute;nh m&agrave;u trang tr&iacute; showroom phan thiết, k&iacute;nh m&agrave;u l&agrave;m showroom&nbsp;phan thiết</h2>

<p style="text-align: center;"><img alt="kinh mau trang tri 1" src="/Uploads/images/kinhmau/kinh_mau_trang_tri_1.jpg" style="width: 500px; height: 312px;" /></p>

<p align="left">Kh&ocirc;ng gian sang trọng l&agrave;m cho người xem, người mua h&agrave;ng c&oacute; cảm gi&aacute;c th&uacute; vị như lễ hội v&agrave; th&iacute;ch th&uacute; mua sắm, c&aacute;c khu vực ri&ecirc;ng biệt trong cửa h&agrave;ng được ngăn c&aacute;ch hợp l&yacute; v&agrave; trang nh&atilde;, kh&ocirc;ng gian kh&ocirc;ng bị ẩm ướt, r&ecirc;u mốc, bụi bặm l&agrave;m cho sản phẩm b&agrave;y b&aacute;n lu&ocirc;n mới mẻ v&agrave; sạch sẽ</p>

<h3>Ứng dụng k&iacute;nh m&agrave;u trang tr&iacute;&nbsp;phan thiết</h3>

<p style="text-align: center;"><img alt="kinh mau trang tri 2" src="/Uploads/images/kinhmau/kinh_mau_trang_tri_2.jpg" style="width: 500px; height: 312px;" /></p>

<p align="left">K&iacute;nh m&agrave;u phan thiết&nbsp;l&agrave;m quầy thu ng&acirc;n: To&agrave;n bộ v&aacute;ch quầy lễ t&acirc;n, quầy thu ng&acirc;n được l&agrave;m bằng k&iacute;nh m&agrave;u, v&aacute;ch k&iacute;nh m&agrave;u ph&iacute;a sau được l&agrave;m l&ecirc;n để d&aacute;n logo c&ocirc;ng ty, tạo n&ecirc;n một bộ mặt lịch sự v&agrave; kiểu c&aacute;ch.<br />
In chữ l&ecirc;n k&iacute;nh cường lực m&agrave;u l&agrave;m biển bảng quảng c&aacute;o, k&iacute;nh m&agrave;u ốp mặt tiền: sự kết hợp m&agrave;u nền v&agrave; m&agrave;u của chữ tạo n&ecirc;n biển bảng sắc n&eacute;t v&agrave; độc đ&aacute;o, ngo&agrave;i ra kh&aacute;ch h&agrave;ng c&oacute; thể lựa chọn phương &aacute;n cắt chữ bằng mica m&agrave;u hoặc chữ inox để d&aacute;n l&ecirc;n biển k&iacute;nh tạo th&agrave;nh h&igrave;nh hộp, chữ nổi. K&iacute;nh m&agrave;u c&oacute; thể chịu được nhiệt độ ngo&agrave;i trời trong khoảng thời gian h&agrave;ng chục năm m&agrave; kh&ocirc;ng l&agrave;m phai mờ hay thay đổi m&agrave;u sắc.<br />
Điểm nhấn, tr&ecirc;n tủ, in chữ, logo thương hiệu tr&ecirc;n k&iacute;nh m&agrave;u: Điểm nhấn trong cửa h&agrave;ng, khu vực trưng b&agrave;y, để qu&agrave; lưu niệm hay h&igrave;nh ảnh về c&ocirc;ng ty, sản phấm, k&iacute;nh m&agrave;u l&agrave;m tr&ecirc;n tủ n&ecirc;u ti&ecirc;u đề hay khẩu hiệu, c&oacute; thể kết hợp với c&aacute;c loại đ&egrave;n chiếu.</p>

<p>Sự kết hợp ho&agrave;n hảo&nbsp;<strong>k&iacute;nh m&agrave;u trang tr&iacute;&nbsp;phan thiết</strong>&nbsp;sẽ l&agrave;m cho kh&ocirc;ng gian sống, kh&ocirc;ng gian l&agrave;m việc của bạn trở n&ecirc;n sang trọng, lịch l&atilde;m hơn.</p>
', CAST(0x0000A6CD0069B457 AS DateTime), N'', N'cu di nhom kinh phan thiet, lang cang kính cường lực phan thiết,phòng tấm kính cường lực phan thiết, cửa nhômphan thiết,mặt dựng nhôm phan ,kính sơn màu ốp bếp phan thiếtthiết', N'cu di nhom kinh phan thiet, lang cang kính cường lực phan thiết,phòng tấm kính cường lực phan thiết, cửa nhômphan thiết,mặt dựng nhôm phan ,kính sơn màu ốp bếp phan thiếtthiết', 2, 1, 1, 1, N'', N'vi', N'', N'', N'', N'', N'', N'148', N'cac-loai-kinh', N'cac-loai-kinh', N'kinh-mau-trang-tri', N'', N'', N'', CAST(0x0000A6B9017782CA AS DateTime), 0)
INSERT [dbo].[GroupNewsNewsDetail] ([Id], [Name], [Tag], [Image], [Content], [Detail], [Date], [Title], [Description], [Keyword], [Priority], [Index], [Active], [ord], [Nguon], [Lang], [Image1], [Image2], [Image3], [Image4], [Images5], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [NameEn], [ContentEn], [DetailEn], [DateView], [Luotxem]) VALUES (12, N'Khóa cửa, Bản lề, Tay nắm phan thiết', N'khoa-cua-ban-le-tay-nam-phan-thiet', N'/Uploads/images/khoacuakinh/671597.jpg', N'Cửa kính ngày càng ược đông đảo người tin dùng và ưa chuộng đặc biệt cửa kính cường lực. Song hành cùng các loại của kính phụ kiện không thể thiếu đó chính là khóa cửa kính phan thiết.', N'<p>Cửa k&iacute;nh ng&agrave;y c&agrave;ng ược đ&ocirc;ng đảo người tin d&ugrave;ng v&agrave; ưa chuộng đặc biệt cửa k&iacute;nh cường lực. Song h&agrave;nh c&ugrave;ng c&aacute;c loại của k&iacute;nh phụ kiện kh&ocirc;ng thể thiếu đ&oacute; ch&iacute;nh l&agrave;&nbsp;kh&oacute;a cửa k&iacute;nh.</p>

<p>Kh&oacute;a cửa k&iacute;nh&nbsp;hiện nay tr&ecirc;n thị trường cũng rất đa dạng với nhiều mẫu m&atilde; mang t&iacute;nh thẩm mỹ cao. Ngo&agrave;i ra t&iacute;nh năng sử dụng an to&agrave;n của kh&oacute;a l&agrave; điều m&agrave; mọi người quan t&acirc;m nhất.</p>

<p>Dưới đ&acirc;y ch&uacute;ng t&ocirc;i xin giới thiệu một v&agrave;i mẫu kh&oacute;a cửa k&iacute;nh cao cấp nổi bật thường được sử dụng trong cửa k&iacute;nh cường lực</p>

<p><strong>1.Kh&oacute;a Cửa K&iacute;nh Phan Thiết&nbsp;Thủy Lực VVP&nbsp;</strong></p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt="khoa-kinh-VVP" src="/Uploads/images/khoacuakinh/khoa-kinh-VVP.jpg" style="width: 618px; height: 452px;" /></p>

<p><strong>2.Kh&oacute;a Cửa K&iacute;nh Phan Thiết&nbsp;Thủy Lực NEWST</strong></p>

<p style="text-align: center;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt="Kết quả hình ảnh cho khóa cửa kính" src="/Uploads/images/khoacuakinh/images.jpg" style="width: 259px; height: 194px;" /></p>

<p><strong>3.Kh&oacute;a K&iacute;nh Phan Thiết&nbsp;Cường Lực ADLER</strong></p>

<p style="text-align: center;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt="phu-kien-cua-kinh-adler-1024×761" src="/Uploads/images/khoacuakinh/phu-kien-cua-kinh-adler-1024x761-460x306.jpg" style="width: 460px; height: 306px;" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>

<p>Kh&oacute;a k&iacute;nh cường lực Adler được&nbsp;nhập khẩu ch&iacute;nh h&atilde;ng từ CHLB Đức. Sản phẩm được&nbsp;sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại, chống cậy, ph&aacute; kh&oacute;a gi&uacute;p bảo vệ tuyệt đối cho ng&ocirc;i nh&agrave; bạn.</p>

<h3><strong>3.Kh&oacute;a k&iacute;nh Phan Thiết&nbsp;cường lực Hand &ndash;&nbsp;Kh&oacute;a cửa thủy lực Hand&nbsp;</strong></h3>

<p style="text-align: center;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt="Kết quả hình ảnh cho khóa cửa kính" src="/Uploads/images/khoacuakinh/images%20(1).jpg" style="width: 314px; height: 160px;" /></p>

<h3>&nbsp;</h3>

<p>Đ&acirc;y cũng l&agrave; một thương hiệu kh&oacute;a cửa k&iacute;nh cường lực đến từ CHLB Đức. Kh&oacute;a k&iacute;nh cường lực Hand c&oacute; chất lượng cao, vận h&agrave;nh ổn định, hơn nữa gi&aacute; kh&oacute;a cửa thủy lực Hand lại phải chăng n&ecirc;n sẽ l&agrave; sự lựa chọn đ&aacute;ng tin cậy cho cho bạn</p>

<h3><strong>4.Kh&oacute;a k&iacute;nh Phan Thiết&nbsp;cường lực King &ndash;&nbsp;Kh&oacute;a cửa thủy lực King</strong></h3>

<p style="text-align: center;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt="1280559425145_hz-myalibaba-web6_5856" src="/Uploads/images/khoacuakinh/1280559425145_hz-myalibaba-web6_5856-460x306.jpg" style="width: 460px; height: 306px;" /></p>

<p>Kh&oacute;a k&iacute;nh cường lực King được Quang Minh&nbsp;nhập khẩu nguy&ecirc;n chiếc từ H&agrave;n Quốc với&nbsp;chất lượng đảm bảo v&agrave; bảo h&agrave;nh chuy&ecirc;n nghiệp</p>

<h3>&nbsp;</h3>

<h3>5.Kh&oacute;a k&iacute;nh <strong>Phan Thiết</strong>&nbsp;cường lực Hafele &ndash;&nbsp;Kh&oacute;a cửa thủy lực Hafele</h3>

<p style="text-align: center;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt="hafele" src="/Uploads/images/khoacuakinh/hafele-290x190.jpeg" style="width: 290px; height: 190px;" /></p>

<p>Kh&oacute;a k&iacute;nh cường lực Hafele được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ CHLB Đức với c&aacute;c đặc điểm kỹ thuật được đảm bảo ch&iacute;nh x&aacute;c đến từng chi tiết nhỏ nhất, đem lại t&aacute;c dụng bảo vệ tối đa cho ng&ocirc;i nh&agrave; của bạn.</p>

<p>Cửa k&iacute;nh ng&agrave;y c&agrave;ng được đ&ocirc;ng đảo người tin d&ugrave;ng v&agrave; ưa chuộng đặc biệt cửa &nbsp;k&iacute;nh cường lực. Song h&agrave;nh c&ugrave;ng c&aacute;c loại của k&iacute;nh phụ kiện kh&ocirc;ng thể thiếu đ&oacute; ch&iacute;nh l&agrave; c&aacute;c loại kh&oacute;a. Kh&oacute;a cửa k&iacute;nh, hiện nay tr&ecirc;n thị trường cũng rất đa dạng với nhiều mẫu m&atilde; mang t&iacute;nh thẩm mỹ cao. Ngo&agrave;i ra t&iacute;nh năng sử dụng an to&agrave;n của kh&oacute;a l&agrave; điều m&agrave; mọi người quan t&acirc;m nhất. Dưới đ&acirc;y ch&uacute;ng t&ocirc;i xin giới thiệu một v&agrave;i mẫu kh&oacute;a cao cấp nổi bật thường được sử dụng trong cửa k&iacute;nh cường lực.</p>

<p><strong>6.Kh&oacute;a Phan Thiết&nbsp;b&aacute;n nguyệt th&ocirc;ng dụng</strong></p>

<ul>
	<li>
	<p>Đ&uacute;ng như t&ecirc;n gọi đ&acirc;y l&agrave; dạng kh&oacute;a h&igrave;nh b&aacute;n nguyệt. Kh&oacute;a c&oacute; 2 dạng l&agrave; b&aacute;n nguyệt đơn v&agrave; b&aacute;n nguyệt k&eacute;p:</p>

	<h3>Kh&oacute;a cửa b&aacute;n nguyệt đơn</h3>

	<p style="text-align: center;"><img alt="671597 Khóa cửa kính cường lực cao cấp" src="/Uploads/images/khoacuakinh/671597.jpg" style="width: 484px; height: 367px;" title="Khóa cửa kính cường lực cao cấp" /></p>

	<p>L&agrave; dạng kh&oacute;a c&oacute; cấu tạo đơn giản như c&aacute;c loại kh&oacute;a th&ocirc;ng thường thấy bao gồm 2 phần ch&iacute;nh l&agrave; l&otilde;i kh&oacute;a v&agrave; m&oacute;c kh&oacute;a. Loại kh&oacute;a n&agrave;y thường được sử dụng cho c&aacute;c loại cửa k&iacute;nh cường lực&nbsp;lắp&nbsp;đặt theo dạng cửa mở trượt 1 c&aacute;nh. Nguy&ecirc;n nh&acirc;n của việc thường d&ugrave;ng cho cửa đ&oacute;ng mở trượt 1 c&aacute;nh l&agrave; do khi người sử dụng&nbsp;vặn l&otilde;i kh&oacute;a th&igrave; m&oacute;c kh&oacute;a sẽ&nbsp;đ&oacute;ng lại h&igrave;nh c&aacute;nh cung&nbsp;ăn khớp với thanh kh&oacute;a cố&nbsp;định b&ecirc;n tường, kh&oacute;a kh&ocirc;ng cho c&aacute;nh cửa mở trượt sang b&ecirc;n v&agrave; khi vặn ngược trở lại cửa sẽ được mở.</p>

	<p>Đ&acirc;y l&agrave; dạng kh&oacute;a cấu tạo v&agrave; c&aacute;ch sử dụng đơn giản n&ecirc;n rất th&ocirc;ng dụng.</p>

	<p>Kh&oacute;a b&aacute;n nguyệt đơn c&oacute; hai dạng l&agrave;:</p>

	<ul>
		<li>Kh&oacute;a&nbsp;&nbsp;1&nbsp;đầu ch&igrave;a c&oacute; cấu tạo một b&ecirc;n l&agrave; n&uacute;m vặn, &nbsp;một b&ecirc;n l&agrave;&nbsp;ổ kh&oacute;a&nbsp;để cắm ch&igrave;a v&agrave;o mở. Loại kh&oacute;a n&agrave;y th&iacute;ch hợp với c&aacute;c c&aacute;nh cửa lắp trong nh&agrave;, tiện khi sử dụng mở b&ecirc;n trong m&agrave; kh&ocirc;ng cần d&ugrave;ng&nbsp;đến ch&igrave;a kh&oacute;a.</li>
		<li>Kh&oacute;a 2 đầu ch&igrave;a l&agrave;&nbsp;&nbsp;c&oacute; cấu tạo 2&nbsp;ổ kh&oacute;a 2 b&ecirc;n&nbsp;để cắm ch&igrave;a v&agrave;o mở. Loại kh&oacute;a n&agrave;y&nbsp;đảm bảo t&iacute;nh an to&agrave;n hơn cho gia chủ v&igrave; muốn mở kh&oacute;a phải c&oacute; ch&igrave;a, kh&ocirc;ng phải bất kỳ ai cũng&nbsp;<strong>c</strong>&oacute; thể mở kh&oacute;a từ b&ecirc;n trong như loại một&nbsp;đầu ch&igrave;a.</li>
	</ul>

	<h3><strong>Kh&oacute;a Phan Thiết&nbsp;b&aacute;n nguyệt k&eacute;p</strong></h3>

	<p style="text-align: center;"><img alt="9492220 Khóa cửa kính cường lực cao cấp" src="/Uploads/images/khoacuakinh/9492220.jpg" style="width: 450px; height: 253px;" title="Khóa cửa kính cường lực cao cấp" /></p>

	<p>C&ugrave;ng l&agrave; dạng kh&oacute;a b&aacute;n nguyệt nhưng c&oacute; đặc điểm nổi trội hơn l&agrave; được gh&eacute;p từ 2 b&aacute;n nguyệt đơn&nbsp;gh&eacute;p lại v&agrave; li&ecirc;n kết với nhau. Kh&oacute;a cũng được thiết kế nhỏ gọn gần giống như kh&oacute;a đơn v&agrave; được cấu tạo&nbsp;một b&ecirc;n l&agrave; n&uacute;m vặn chốt kh&oacute;a lại với nhau c&ograve;n một b&ecirc;n l&agrave; ổ kh&oacute;a để đ&oacute;ng mở bằng ch&igrave;a kh&oacute;a.</p>

	<p>Kh&oacute;a &nbsp;thường được sử dụng cho c&aacute;c loại cửa k&iacute;nh cường lực mở quay, mở trượt.</p>

	<p>Kh&oacute;a b&aacute;n nguyệt ph&ugrave; hợp với tất cả c&aacute;c loại cửa k&iacute;nh cường lực d&agrave;nh cho nh&agrave; ri&ecirc;ng, văn ph&ograve;ng c&ocirc;ng ty, cửa ra v&agrave;o của c&aacute;c cửa h&agrave;ng, nh&agrave; h&agrave;ng, hệ thống showroom, trung t&acirc;m thương mại, trung t&acirc;m chăm s&oacute;c sắc đẹp spa , tiệm cắt t&oacute;c , cửa da v&agrave;o c&aacute;c t&ograve;a nh&agrave;, trung t&acirc;m hội nghị, bệnh viện, kh&aacute;ch sạn, nh&agrave; nghỉ&hellip;.</p>
	</li>
</ul>
', CAST(0x0000A6DA00F8CFC8 AS DateTime), N'', N'Cửa kính ngày càng ược đông đảo người tin dùng và ưa chuộng đặc biệt cửa kính cường lực. Song hành cùng các loại của kính phụ kiện không thể thiếu đó chính là khóa cửa kính phan thiết.', N'cu di nhom kinh phan thiet, lang cang kính cường lực phan thiết,phòng tấm kính cường lực phan thiết, cửa nhômphan thiết,mặt dựng nhôm phan ,kính sơn màu ốp bếp phan thiếtthiết', 2, 1, 1, 1, N'', N'vi', N'', N'', N'', N'', N'', N'131', N'khoa-cua-ban-le-tay', N'khoa-cua-ban-le-tay', N'khoa-cua-ban-le-tay', N'', N'', N'', CAST(0x0000A6B90184E2F1 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[GroupNewsNewsDetail] OFF
SET IDENTITY_INSERT [dbo].[GroupSupport] ON 

INSERT [dbo].[GroupSupport] ([Id], [Name], [Ord], [Active], [Lang], [NameEn]) VALUES (1, N'Hỗ trợ kinh doanh', 1, 1, N'vi', NULL)
SET IDENTITY_INSERT [dbo].[GroupSupport] OFF
SET IDENTITY_INSERT [dbo].[Html] ON 

INSERT [dbo].[Html] ([id], [type], [Active], [Lang], [Ten], [Html_content], [TenEn], [Html_contentEn], [images], [Ord]) VALUES (38, 1, 1, N'vi', N'Hotline_phongban', N'<span style="color:#ff0000;"><span style="font-size: 18px;"><b>- Gmail: d</b></span><strong>inhkhoa999glass@gmail.com<br />
- Di động:0902 648 642</strong></span><br />
<br />
 ', N'', N'', N'/Uploads/images/Logo/hot-line.png', 1)
INSERT [dbo].[Html] ([id], [type], [Active], [Lang], [Ten], [Html_content], [TenEn], [Html_contentEn], [images], [Ord]) VALUES (43, 4, 1, N'vi', N'Thông tin', N'<ul>
	<li><span style="color: #666;"></span>
	<p><strong>CÔNG TY TNHH TM XD ĐÌNH KHOA</strong></p>

	<p><strong>·   Địa chỉ : 77 Phạm Ngọc Thạch - TP. Phan Thiết - Bình Thuận</strong></p>

	<p><strong>·   Điện thoại :  0626 548642 - 0902 648 642</strong></p>

	<p><strong>·   E-mail : dinhkhoa999glass@gmail.com</strong></p>
	<span style="color: #666;"></span></li>
</ul>
', N'', N'', N'/Uploads/images/Logo/logo_nho.png', 1)
INSERT [dbo].[Html] ([id], [type], [Active], [Lang], [Ten], [Html_content], [TenEn], [Html_contentEn], [images], [Ord]) VALUES (44, 5, 1, N'vi', N'Lý do chọn chúng tôi', N'<ul>
	<li><span style="color: #666;">Đội ngũ nhân viên với 10 năm kịnh nghiệm.</span></li>
	<li><span style="color: #666;">Vận chuyển siêu tốc, lắp ráp nhanh gọn.</span></li>
	<li><span style="color: #666;">Trang thiết bị đẹp, thay mới thường xuyên.</span></li>
	<li><span style="color: #666;">Dẫn đầu thì trường về giá, chất lượng thật sự như cam kết.</span></li>
	<li><span style="color: #666;">Tư vấn nhiệt tình chu đáo về các gói dịch vụ của công ty.</span></li>
	<li><span style="color: #666;">Hỗ trợ khách hàng từ A đến Z.</span></li>
</ul>
', N'', N'', N'', 1)
INSERT [dbo].[Html] ([id], [type], [Active], [Lang], [Ten], [Html_content], [TenEn], [Html_contentEn], [images], [Ord]) VALUES (45, 6, 1, N'vi', N'THEO DÕI FANPAGE', N'  ', N'', N'', N'', 1)
INSERT [dbo].[Html] ([id], [type], [Active], [Lang], [Ten], [Html_content], [TenEn], [Html_contentEn], [images], [Ord]) VALUES (46, 7, 1, N'vi', N'Công Ty TNHH TM XD NHÔM KÍNH XÂY DỰNG ĐÌNH KHOA', N'<div>
<p><strong>Địa chỉ : 77 Phạm Ngọc Thạch - TP. Phan Thiết - Bình Thuận</strong></p>

<p><strong>Điện thoại :  0626 548642 - 0902 648 642</strong></p>

<p><strong>E-mail : dinhkhoa999glass@gmail.com</strong></p>
</div>
', N'', N'', N'', 1)
SET IDENTITY_INSERT [dbo].[Html] OFF
SET IDENTITY_INSERT [dbo].[information] ON 

INSERT [dbo].[information] ([Id], [Name], [Image], [Target], [Content], [Position], [Click], [Ord], [Active], [Lang], [Detail], [Title], [Description], [Keyword], [Image1], [Image2], [Image3], [Image4], [Image5], [Index], [Priority], [Tag], [NameEn], [ContentEn], [DetailEn]) VALUES (2, N'kÍNH CHÀO QUÝ KHÁCH', N'', N'', N'', 0, 0, 1, 1, N'vi', N'<p><strong>C&Ocirc;NG TY&nbsp;TNHH TM XD NH&Ocirc;M K&Iacute;NG X&Acirc;Y DỰNG Đ&Igrave;NH KHOA&nbsp;</strong>tự h&agrave;o l&agrave; nh&agrave; cung cấp dịch vụ sản phẩm nh&ocirc;m k&iacute;nh x&acirc;y dựng. Ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết mang tới cho kh&aacute;ch h&agrave;ng&nbsp;<strong>dịch vụ uy t&iacute;n &ndash; chuy&ecirc;n nghiệp &ndash; gi&aacute; cả hợp l&yacute;</strong>&nbsp;bởi ch&uacute;ng t&ocirc;i hiểu rằng &ldquo;<em>Sự th&agrave;nh c&ocirc;ng của qu&yacute; kh&aacute;ch h&agrave;ng cũng ch&iacute;nh l&agrave; sự th&agrave;nh c&ocirc;ng của c&ocirc;ng ty ch&uacute;ng t&ocirc;i.</em>&rdquo;.</p>

<p>Qu&yacute; kh&aacute;ch h&agrave;ng&nbsp;c&oacute; bất kỳ thắc mắc n&agrave;o h&atilde;y gọi ngay số Hotline:&nbsp;<strong>&nbsp;0626 548642 - 0902 648 642</strong></p>

<p><strong>Đ&Igrave;NH KHOA&nbsp;</strong><em><b>r</b>ất h&acirc;n hạnh&nbsp;được phục vụ!</em></p>
', N'', N'', N'', N'', N'', N'', N'', N'', 1, 1, N'kinh-chao-quy-khach', N'', N'', N'Nội dung b&agrave;i đăng tiếng anh')
INSERT [dbo].[information] ([Id], [Name], [Image], [Target], [Content], [Position], [Click], [Ord], [Active], [Lang], [Detail], [Title], [Description], [Keyword], [Image1], [Image2], [Image3], [Image4], [Image5], [Index], [Priority], [Tag], [NameEn], [ContentEn], [DetailEn]) VALUES (3, N'TẦM NHÌN XỨ MỆNH CỐT LÕI', N'', N'', N'', 0, 0, 1, 1, N'vi', N'<p>1.&nbsp;<strong>TẦM NH&Igrave;N</strong></p>

<p>&nbsp; Bằng tất cả&nbsp;<strong>Tr&iacute; Tuệ</strong>,&nbsp;<strong>T&acirc;m Huyết</strong>&nbsp;v&agrave; với sự&nbsp;<strong>Nỗ Lực</strong>&nbsp;tiếp thu v&agrave; học hỏi kh&ocirc;ng ngừng <strong>C&Ocirc;NG TY&nbsp;TNHH TM XD NH&Ocirc;MK&Iacute;NG X&Acirc;Y DỰNG Đ&Igrave;NH KHOA</strong>&nbsp;phấn đấu trở th&agrave;nh C&ocirc;ng ty x&acirc;y dựng c&oacute; uy t&iacute;n v&agrave; lớn mạnh h&agrave;ng đầu tại Việt Nam</p>

<p>2.&nbsp;<strong>SỨ MỆNH</strong></p>

<ul>
	<li>Đối với thị trường: cung cấp c&aacute;c sản phẩm, dịch vụ với chất lượng tốt nhất v&agrave; gi&aacute; cả ph&ugrave; hợp nhất, c&aacute;c sản phẩm &ldquo;thể hiện được sự sang trọng từ vẻ b&ecirc;n ngo&agrave;i, sự chắc chắn &ndash; bền vững từ b&ecirc;n trong&rdquo;. B&ecirc;n cạnh gi&aacute; trị chất lượng vượt trội, trong mỗi sản phẩm &ndash; dịch vụ đều chứa đựng những th&ocirc;ng điệp văn h&oacute;a, nhằm thỏa m&atilde;n tối đa nhu cầu ch&iacute;nh đ&aacute;ng của kh&aacute;ch h&agrave;ng.</li>
	<li>Đối với đối t&aacute;c: đề cao tinh thần hợp t&aacute;c c&ugrave;ng ph&aacute;t triển, hỗ trợ tối đa v&agrave; chia sẻ với nh&agrave; cung cấp để đem lại gi&aacute; trị cho sản phẩm v&agrave; dịch vụ tốt nhất.</li>
	<li>Đối với nh&acirc;n vi&ecirc;n: x&acirc;y dựng m&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, năng động, s&aacute;ng tạo v&agrave; nh&acirc;n văn; tạo điều kiện cho tất cả nh&acirc;n vi&ecirc;n c&oacute; mối quan hệ th&acirc;n thiết, thu nhập ổn định v&agrave; cơ hội ph&aacute;t triển c&ocirc;ng bằng cho tất cả nh&acirc;n vi&ecirc;n.</li>
	<li>Đối với x&atilde; hội: lu&ocirc;n h&agrave;i h&ograve;a lợi &iacute;ch doanh nghiệp với lợi &iacute;ch x&atilde; hội, đ&oacute;ng g&oacute;p t&iacute;ch cực v&agrave;o c&aacute;c hoạt động an sinh x&atilde; hội, ph&uacute;c lợi x&atilde; hội của địa phương v&agrave; to&agrave;n quốc.</li>
</ul>

<p><strong>3. GI&Aacute; TRỊ CỐT L&Otilde;I</strong></p>

<p>&nbsp; &nbsp; Với phương ch&acirc;m sống v&agrave; l&agrave;m việc &ldquo;<strong>TR&Iacute; &ndash; T&Acirc;M &ndash; T&Iacute;N&nbsp;</strong>&rdquo;</p>

<ul>
	<li>&ldquo;TR&Iacute;&rdquo;: Đ&Igrave;NH KHOA&nbsp;lu&ocirc;n coi trọng gi&aacute; trị tr&iacute; tuệ trong từng sản phẩm, dịch vụ của m&igrave;nh v&agrave; lu&ocirc;n coi s&aacute;ng tạo l&agrave; sức sống, l&agrave; đ&ograve;n bẩy ph&aacute;t triển; đề cao tinh thần d&aacute;m nghĩ, d&aacute;m l&agrave;m; chủ trương x&acirc;y dựng một &ldquo;doanh nghiệp học tập&rdquo;.</li>
	<li>&ldquo;T&Acirc;M&rdquo;: Đ&Igrave;NH KHOA lu&ocirc;n lu&ocirc;n đề cao chữ T&acirc;m trong từng c&ocirc;ng việc, lu&ocirc;n xem sự bền vững của c&ocirc;ng tr&igrave;nh l&agrave; mục ti&ecirc;u của thiết kế v&agrave; thi c&ocirc;ng, lu&ocirc;n lấy những qui định của Ph&aacute;p luật (qui phạm, ti&ecirc;u chuẩn&hellip;) l&agrave;m phương chỉ Nam để l&agrave;m việc, duy tr&igrave; đạo đức v&agrave; lấy kh&aacute;ch h&agrave;ng l&agrave;m trung t&acirc;m.</li>
	<li>&ldquo;T&Iacute;N&rdquo;: Đ&Igrave;NH KHOA coi chữ T&iacute;n như coi trọng ch&iacute;nh danh dự của m&igrave;nh. V&igrave; vậy, C&ocirc;ng ty Đ&Igrave;NH KHOA lu&ocirc;n chuẩn bị đầy đủ năng lực thực thi v&agrave; nỗ lực hết m&igrave;nh để đảm bảo đ&uacute;ng cam kết.</li>
</ul>
', N'', N'', N'', N'', N'', N'', N'', N'', 2, 1, N'tam-nhin-xu-menh-cot-loi', N'', N'', N'')
INSERT [dbo].[information] ([Id], [Name], [Image], [Target], [Content], [Position], [Click], [Ord], [Active], [Lang], [Detail], [Title], [Description], [Keyword], [Image1], [Image2], [Image3], [Image4], [Image5], [Index], [Priority], [Tag], [NameEn], [ContentEn], [DetailEn]) VALUES (10, N'Giới Thiệu', N'', N'', N'', 0, 0, 1, 1, N'vi', N'<p style="text-align: center;"><strong>C&ocirc;ng Ty TNHH TM XD NH&Ocirc;M K&Iacute;NG X&Acirc;Y DỰNG&nbsp;Đ&Igrave;NH KHOA</strong><br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;----o0o----&nbsp;</p>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
			<p>&middot;&nbsp;<strong>&nbsp;&nbsp;C&Ocirc;NG TY&nbsp;TNHH TM XD NH&Ocirc;M K&Iacute;NH&nbsp;X&Acirc;Y DỰNG&nbsp;Đ&Igrave;NH KHOA</strong></p>

			<p><strong>&middot;&nbsp; &nbsp;Địa chỉ : 77 Phạm Ngọc Thạch - TP. Phan Thiết - B&igrave;nh Thuận</strong></p>

			<p><strong>&middot;&nbsp;&nbsp; Điện thoại : &nbsp;0626 548642 - 0902 648 642</strong></p>

			<p><strong>&middot;&nbsp; &nbsp;E-mail : dinhkhoa999glass@gmail.com</strong></p>
			</td>
		</tr>
	</tbody>
</table>

<p>K&iacute;nh thưa qu&iacute; kh&aacute;ch&nbsp;,</p>

<p><br />
Trước hết, thay mặt c&ocirc;ng ty Song&nbsp; Linh, ch&uacute;ng t&ocirc;i xin gửi đến Qu&iacute; kh&aacute;ch h&agrave;ng lời ch&agrave;o tr&acirc;n trọng nhất v&agrave; xin cảm ơn Qu&iacute; kh&aacute;ch đ&atilde; d&agrave;nh ch&uacute;t thời gian qu&yacute; b&aacute;u của m&igrave;nh để t&igrave;m hiểu về cơ sở v&agrave; những sản phẩm của ch&uacute;ng t&ocirc;i.</p>

<p><br />
Một trong những sản phẩm ch&iacute;nh của c&ocirc;ng ty l&agrave;:</p>

<ul>
	<li>Thi c&ocirc;ng cửa k&iacute;nh,&nbsp;v&aacute;ch ngăn k&iacute;nh,&nbsp;k&iacute;nh cường lực&nbsp;cho c&aacute;c nh&agrave; cao tầng.</li>
	<li>Thi c&ocirc;ng lắp đặt khung nh&ocirc;m kiếng nh&agrave; cao tầng v&agrave; nh&agrave; ở.</li>
	<li>Thi c&ocirc;ng lắp đặt c&aacute;c loại lan can k&iacute;nh, cầu thang kiếng,&nbsp;ph&ograve;ng tắm k&iacute;nh.</li>
	<li>Thi lắp đặt c&aacute;c loại cửa đi, của sồ nh&ocirc;m kiếng nh&agrave; ở nh&agrave; cao tầng, c&ocirc;ng ty x&iacute; nghiệp</li>
	<li>Thi lắp đặt c&aacute;c loại&nbsp;v&aacute;ch ngăn nh&ocirc;m kiếng&nbsp;nh&agrave; ở, nh&agrave; cao tầng, c&ocirc;ng ty x&iacute; nghiệp&hellip;</li>
	<li>Thi c&ocirc;ng lắp đặt c&aacute;c loại gi&agrave;n phơi th&ocirc;ng minh..</li>
	<li>Cửa nh&ocirc;m k&iacute;nh&nbsp;(cửa đi, cửa sổ, V&aacute;ch ngăn, tường k&iacute;nh, mặt dựng v&agrave; c&aacute;c sản phẩm bằng nh&ocirc;m kh&aacute;c d&ugrave;ng trong x&acirc;y dựng v&agrave; trang tr&iacute; nội thất.)</li>
	<li>V&aacute;ch ngăn, tường k&iacute;nh trong ph&ograve;ng l&agrave;m việc, kh&aacute;ch sạn,...</li>
	<li>Ph&ograve;ng tắm đứng v&agrave; cửa tủ &acirc;m tường.</li>
	<li>Mặt dựng, trần bằng nh&ocirc;m, Tấm nh&ocirc;m tổng hợp.<br />
	lan can.</li>
	<li>V&agrave; c&aacute;c sản phẩm bằng nh&ocirc;m kh&aacute;c d&ugrave;ng trong x&acirc;y dựng v&agrave; trang tr&iacute; nội thất.</li>
</ul>

<p>&nbsp;</p>

<p>L&agrave; đơn vị tư vấn ch&iacute;nh x&aacute;c, gi&aacute; cả hợp l&yacute; , thi c&ocirc;ng nhanh gọn với một đội ngũ c&aacute;n bộ c&oacute; tr&igrave;nh độ kỹ thuật cao, c&ocirc;ng nh&acirc;n l&agrave;nh nghề đ&atilde; từng tham gia nhiều dự &aacute;n lớn trong lĩnh vực x&acirc;y dựng từ rất nhiều năm.</p>

<p>Với sức trẻ - năng động - s&aacute;ng tạo c&ugrave;ng m&aacute;y m&oacute;c v&agrave; trang thiết bị hiện đại C&ocirc;ng ty ch&uacute;ng t&ocirc;i chắc chắn sẽ đem đến cho c&aacute;c qu&yacute; kh&aacute;ch h&agrave;ng một dịch vụ ho&agrave;n hảo từ kh&acirc;u thiết kế, đo đạc, cung cấp, lắp đặt v&agrave; ho&agrave;n thiện đến kh&acirc;u bảo h&agrave;nh sản phẩm. Chất lượng bảo h&agrave;nh của c&ocirc;ng ty lu&ocirc;n được đặt l&ecirc;n h&agrave;ng đầu v&igrave; c&ocirc;ng ty lu&ocirc;n n&acirc;ng cao uy t&iacute;n thương hiệu n&ecirc;n qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; thể y&ecirc;n t&acirc;m về sản phẩm</p>

<p>Với phương ch&acirc;m phục vụ kh&aacute;ch h&agrave;ng l&agrave; tr&ecirc;n hết, chu đ&aacute;o, c&oacute; tinh thần tr&aacute;ch nhiệm, kh&ocirc;ng ngại kh&oacute; hy vọng sẽ l&agrave;m cho qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng v&agrave; ho&agrave;n to&agrave;n tin tưởng.</p>

<p>Ch&uacute;ng t&ocirc;i nhận thi c&ocirc;ng c&aacute;c c&ocirc;ng tr&igrave;nh tr&ecirc;n tất cả c&aacute;c t&igrave;nh th&agrave;nh.</p>

<p>Tr&acirc;n trọng,</p>
', N'', N'Công Ty TNHH TM XD NHÔM KÍNG XÂY DỰNG', N'Công Ty TNHH TM XD NHÔM KÍNG XÂY DỰNG', N'', N'', N'', N'', N'', 3, 1, N'gioi-thieu', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[information] OFF
SET IDENTITY_INSERT [dbo].[Kichthuoc] ON 

INSERT [dbo].[Kichthuoc] ([ID], [Kichthuoc], [Vitri], [Active]) VALUES (8, N'Xl', 1, 1)
INSERT [dbo].[Kichthuoc] ([ID], [Kichthuoc], [Vitri], [Active]) VALUES (9, N'XX', 2, 1)
INSERT [dbo].[Kichthuoc] ([ID], [Kichthuoc], [Vitri], [Active]) VALUES (10, N'L', 3, 1)
INSERT [dbo].[Kichthuoc] ([ID], [Kichthuoc], [Vitri], [Active]) VALUES (11, N'X', 4, 1)
INSERT [dbo].[Kichthuoc] ([ID], [Kichthuoc], [Vitri], [Active]) VALUES (12, N'LL', 5, 1)
INSERT [dbo].[Kichthuoc] ([ID], [Kichthuoc], [Vitri], [Active]) VALUES (13, N'FreeSize', 6, 1)
SET IDENTITY_INSERT [dbo].[Kichthuoc] OFF
SET IDENTITY_INSERT [dbo].[Khoanggia] ON 

INSERT [dbo].[Khoanggia] ([ID], [Khoangdau], [Khoangcuoi], [Vitri], [Active]) VALUES (1, N'100000', N'20000', 1, 1)
INSERT [dbo].[Khoanggia] ([ID], [Khoangdau], [Khoangcuoi], [Vitri], [Active]) VALUES (2, N'2000000', N'500000', 1, 1)
SET IDENTITY_INSERT [dbo].[Khoanggia] OFF
INSERT [dbo].[Language] ([Id], [Name], [Folder], [Default], [Image], [Active]) VALUES (N'en', N'English', N'/Language/English', 0, N'/Areas/Admin/img/flags/fr.png', 1)
INSERT [dbo].[Language] ([Id], [Name], [Folder], [Default], [Image], [Active]) VALUES (N'vi', N'Tiếng Việt', N'/Language/Vietnamese', 1, N'/Areas/Admin/img/flags/ru.png', 1)
SET IDENTITY_INSERT [dbo].[Library] ON 

INSERT [dbo].[Library] ([Id], [Name], [Tag], [Image], [File], [Info], [Priority], [Active], [GroupLibraryId], [MemberId], [Lang], [LibraryCatTag], [NameEn], [infoEn], [Content], [ContetnEn]) VALUES (1, N'Các chiến thuật kinh doanh cổ phiếu', N'cac-chien-thuat-kinh-doanh-co-phieu', N'', N'/uploads/files/Cac-chien-thuat-KD-co-phieu.pdf', N'', 1, 1, 1, NULL, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Library] ([Id], [Name], [Tag], [Image], [File], [Info], [Priority], [Active], [GroupLibraryId], [MemberId], [Lang], [LibraryCatTag], [NameEn], [infoEn], [Content], [ContetnEn]) VALUES (2, N'24 kế sách trong thương trường', N'24-ke-sach-trong-thuong-truong', N'/uploads/images/liendanh_lienket.jpg', N'/uploads/files/24-ke-sach-trong-thuong-truong.pdf', N'', 1, 1, 1, NULL, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Library] ([Id], [Name], [Tag], [Image], [File], [Info], [Priority], [Active], [GroupLibraryId], [MemberId], [Lang], [LibraryCatTag], [NameEn], [infoEn], [Content], [ContetnEn]) VALUES (3, N'Cẩm nang thương mại điện tử cho doanh nghiệp', N'cam-nang-thuong-mai-dien-tu-cho-doanh-nghiep', N'', N'/uploads/files/Cam-nang-TMDT-cho-DN.pdf', N'', 1, 1, 1, NULL, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Library] ([Id], [Name], [Tag], [Image], [File], [Info], [Priority], [Active], [GroupLibraryId], [MemberId], [Lang], [LibraryCatTag], [NameEn], [infoEn], [Content], [ContetnEn]) VALUES (7, N'Cẩm nang Harvard', N'cam-nang-harvard', N'', N'/uploads/files/cam%20nang%20harvard.xls', N'', 1, 1, 6, NULL, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Library] ([Id], [Name], [Tag], [Image], [File], [Info], [Priority], [Active], [GroupLibraryId], [MemberId], [Lang], [LibraryCatTag], [NameEn], [infoEn], [Content], [ContetnEn]) VALUES (8, N'Cẩm nang quản lý hiệu quả', N'cam-nang-quan-ly-hieu-qua', N'', N'/uploads/files/cam%20nang%20quan%20ly%20hieu%20qua.xls', N'', 1, 1, 6, NULL, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Library] ([Id], [Name], [Tag], [Image], [File], [Info], [Priority], [Active], [GroupLibraryId], [MemberId], [Lang], [LibraryCatTag], [NameEn], [infoEn], [Content], [ContetnEn]) VALUES (9, N'MBA trong tầm tay', N'mba-trong-tam-tay', N'', N'/uploads/files/MBA%20trong%20tam%20tay.xls', N'', 1, 1, 6, NULL, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Library] ([Id], [Name], [Tag], [Image], [File], [Info], [Priority], [Active], [GroupLibraryId], [MemberId], [Lang], [LibraryCatTag], [NameEn], [infoEn], [Content], [ContetnEn]) VALUES (10, N'Tiếng Anh', N'tieng-anh', N'', N'/uploads/files/Tieng%20Anh.xls', N'', 1, 1, 6, NULL, N'vi', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Library] OFF
SET IDENTITY_INSERT [dbo].[MacodeKhuyenMai] ON 

INSERT [dbo].[MacodeKhuyenMai] ([ID], [Macode], [Valueprice], [Active]) VALUES (3, N'XXXX', 30000, 1)
SET IDENTITY_INSERT [dbo].[MacodeKhuyenMai] OFF
SET IDENTITY_INSERT [dbo].[Mausac] ON 

INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn], [Ord], [Active]) VALUES (1, N'Đỏ', N'/Images/images/Mausac/do.gif', N'vi        ', NULL, 1, 1)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn], [Ord], [Active]) VALUES (3, N'Vàng', N'/Images/images/Mausac/vang.gif', N'vi        ', N'', 1, 1)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn], [Ord], [Active]) VALUES (4, N'Cam', N'/Images/images/Mausac/cam.gif', N'vi        ', NULL, 1, 1)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn], [Ord], [Active]) VALUES (5, N'Da', N'/Images/images/Mausac/da.gif', N'vi        ', NULL, 1, 1)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn], [Ord], [Active]) VALUES (6, N'Da Trời', N'/Images/images/Mausac/datroi.gif', N'vi        ', NULL, 1, 1)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn], [Ord], [Active]) VALUES (7, N'Đen', N'/Images/images/Mausac/den.gif', N'vi        ', NULL, 1, 1)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn], [Ord], [Active]) VALUES (8, N'Hồng', N'/Images/images/Mausac/hong.gif', N'vi        ', NULL, 1, 1)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn], [Ord], [Active]) VALUES (9, N'Màu Lá Cây', N'/Images/images/Mausac/la.gif', N'vi        ', NULL, 1, 1)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn], [Ord], [Active]) VALUES (10, N'Nâu Nhạc', N'/Images/images/Mausac/naunhat.gif', N'vi        ', NULL, 1, 1)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn], [Ord], [Active]) VALUES (11, N'Màu Sữa', N'/Images/images/Mausac/sua.gif', N'vi        ', NULL, 1, 1)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn], [Ord], [Active]) VALUES (12, N'Tím', N'/Images/images/Mausac/tim.gif', N'vi        ', NULL, 1, 1)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn], [Ord], [Active]) VALUES (13, N'Màu Xám', N'/Images/images/Mausac/xam.gif', N'vi        ', N'', 1, 1)
SET IDENTITY_INSERT [dbo].[Mausac] OFF
SET IDENTITY_INSERT [dbo].[Member] ON 

INSERT [dbo].[Member] ([Id], [Name], [Email], [Username], [Password], [GroupMemberId], [Active], [NameEn], [Isplace], [IsplaceEn], [Note], [NoteEn]) VALUES (1, N'Thanh Tuyền', N'tuyenht@vmms.vn', N'tuyenht', N'fea7b285bdcafb473b6ad2dd6fcaa8a0', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Member] ([Id], [Name], [Email], [Username], [Password], [GroupMemberId], [Active], [NameEn], [Isplace], [IsplaceEn], [Note], [NoteEn]) VALUES (2, N'Thanh Tuyen', N'tuyenht@gmail.com', N'tuyenht', N'fea7b285bdcafb473b6ad2dd6fcaa8a0', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Member] ([Id], [Name], [Email], [Username], [Password], [GroupMemberId], [Active], [NameEn], [Isplace], [IsplaceEn], [Note], [NoteEn]) VALUES (3, N'Hoang Thuy Linh', N'linhht.biz@alsc.vn', N'linhht', N'12345', 1, 0, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Member] OFF
SET IDENTITY_INSERT [dbo].[Nuocsanxuat] ON 

INSERT [dbo].[Nuocsanxuat] ([IDNuocsanxuat], [TenNuocsanxuat], [Logo], [Active], [Vitri], [TenNuocsanxuat_En]) VALUES (1, N'Trung Quốc', N'', 1, 1, N'')
INSERT [dbo].[Nuocsanxuat] ([IDNuocsanxuat], [TenNuocsanxuat], [Logo], [Active], [Vitri], [TenNuocsanxuat_En]) VALUES (2, N'Ấn độ', N'', 1, 1, N'')
SET IDENTITY_INSERT [dbo].[Nuocsanxuat] OFF
SET IDENTITY_INSERT [dbo].[Province] ON 

INSERT [dbo].[Province] ([Id], [Name], [NameEn]) VALUES (3, N'Hà Nội', NULL)
INSERT [dbo].[Province] ([Id], [Name], [NameEn]) VALUES (4, N'Hải Phòng', NULL)
INSERT [dbo].[Province] ([Id], [Name], [NameEn]) VALUES (8, N'TP HCM', NULL)
INSERT [dbo].[Province] ([Id], [Name], [NameEn]) VALUES (9, N'Quảng Ninh', NULL)
INSERT [dbo].[Province] ([Id], [Name], [NameEn]) VALUES (10, N'Đà Nẵng', NULL)
INSERT [dbo].[Province] ([Id], [Name], [NameEn]) VALUES (11, N'Huế', NULL)
INSERT [dbo].[Province] ([Id], [Name], [NameEn]) VALUES (12, N'Vinh', NULL)
INSERT [dbo].[Province] ([Id], [Name], [NameEn]) VALUES (13, N'Bắc Ninh', NULL)
INSERT [dbo].[Province] ([Id], [Name], [NameEn]) VALUES (14, N'Phú Thọ', NULL)
INSERT [dbo].[Province] ([Id], [Name], [NameEn]) VALUES (15, N'Hải Dương', NULL)
SET IDENTITY_INSERT [dbo].[Province] OFF
SET IDENTITY_INSERT [dbo].[quantity_purchased] ON 

INSERT [dbo].[quantity_purchased] ([Id_quantity], [Sl_mua], [Phan_tram_tang], [Active]) VALUES (2, 2, 5, 1)
INSERT [dbo].[quantity_purchased] ([Id_quantity], [Sl_mua], [Phan_tram_tang], [Active]) VALUES (3, 3, 5, 1)
INSERT [dbo].[quantity_purchased] ([Id_quantity], [Sl_mua], [Phan_tram_tang], [Active]) VALUES (4, 4, 7, 1)
INSERT [dbo].[quantity_purchased] ([Id_quantity], [Sl_mua], [Phan_tram_tang], [Active]) VALUES (5, 5, 8, 1)
INSERT [dbo].[quantity_purchased] ([Id_quantity], [Sl_mua], [Phan_tram_tang], [Active]) VALUES (6, 6, 9, 1)
INSERT [dbo].[quantity_purchased] ([Id_quantity], [Sl_mua], [Phan_tram_tang], [Active]) VALUES (7, 7, 10, 1)
SET IDENTITY_INSERT [dbo].[quantity_purchased] OFF
SET IDENTITY_INSERT [dbo].[service_charge] ON 

INSERT [dbo].[service_charge] ([idservice], [Ord], [Name], [Gia], [Active], [NameEn]) VALUES (6, 1, N'Bưa điện --> Dịch Vụ 50,000 VNĐ', 30000, 1, N'Post office --> Service 50,000 VNĐ')
INSERT [dbo].[service_charge] ([idservice], [Ord], [Name], [Gia], [Active], [NameEn]) VALUES (7, 1, N'Dịch vụ tận nhà ---> 30,000 VNĐ', 30000, 1, N'Sevice the Home')
SET IDENTITY_INSERT [dbo].[service_charge] OFF
SET IDENTITY_INSERT [dbo].[Shop] ON 

INSERT [dbo].[Shop] ([id], [Name], [CompanyId], [Address], [PhoneNumber], [Active]) VALUES (4, N'Trà Trầm', 1, N'Hoàn Kiếm - Hà Nội', N'043.928.6255', NULL)
INSERT [dbo].[Shop] ([id], [Name], [CompanyId], [Address], [PhoneNumber], [Active]) VALUES (5, N'Cửa hàng 51 Nguyễn Chí Thanh', 1, N'Đống Đa - Hà Nội', N'043.773.1183', NULL)
INSERT [dbo].[Shop] ([id], [Name], [CompanyId], [Address], [PhoneNumber], [Active]) VALUES (6, N'Cửa hàng 157 Cầu Giấy', 1, N'Cầu Giấy - Hà Nội', N'043.833.6764', NULL)
INSERT [dbo].[Shop] ([id], [Name], [CompanyId], [Address], [PhoneNumber], [Active]) VALUES (7, N'Cửa hàng 215 Giảng Võ', 1, N'Ba Đình - Hà Nội', N'043.514.1108', NULL)
INSERT [dbo].[Shop] ([id], [Name], [CompanyId], [Address], [PhoneNumber], [Active]) VALUES (8, N'Cửa hàng số 7 Khâm Thiên', 1, N'Đống Đa- Hà Nội', N'043.851.7818', NULL)
INSERT [dbo].[Shop] ([id], [Name], [CompanyId], [Address], [PhoneNumber], [Active]) VALUES (9, N'Và tại các siêu thị và nhà thuốc ', 1, N'', N'', NULL)
INSERT [dbo].[Shop] ([id], [Name], [CompanyId], [Address], [PhoneNumber], [Active]) VALUES (11, N'136 Kí Con', 1, N'Hải Phòng', N'324342', NULL)
INSERT [dbo].[Shop] ([id], [Name], [CompanyId], [Address], [PhoneNumber], [Active]) VALUES (27, N'Trà Trầm sửa', 1, N'dsfds', N'4363656', NULL)
INSERT [dbo].[Shop] ([id], [Name], [CompanyId], [Address], [PhoneNumber], [Active]) VALUES (34, N'Trà Trầm sửa thêm', 1, N'Thành Phố Hồ Chí Minh', N'0902671917', NULL)
SET IDENTITY_INSERT [dbo].[Shop] OFF
SET IDENTITY_INSERT [dbo].[SlideShow] ON 

INSERT [dbo].[SlideShow] ([Id], [Name], [Image], [Width], [Height], [Link], [Target], [Content], [Position], [Click], [Ord], [Active], [Lang], [Detail], [Title], [Description], [Keyword], [Image1], [Image2], [Image3], [Image4], [Image5], [Index], [Priority], [Tag], [NameEn], [ContentEn], [DetailEn]) VALUES (8, N'Trình chiếu 1', N'/Uploads/images/Anhtrinhchieu/slide-1-5911.jpg', 100, 100, NULL, N'_self', N'', 0, 0, 1, 1, N'vi', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, N'trinh-chieu-1', N'', N'', N'')
INSERT [dbo].[SlideShow] ([Id], [Name], [Image], [Width], [Height], [Link], [Target], [Content], [Position], [Click], [Ord], [Active], [Lang], [Detail], [Title], [Description], [Keyword], [Image1], [Image2], [Image3], [Image4], [Image5], [Index], [Priority], [Tag], [NameEn], [ContentEn], [DetailEn]) VALUES (9, N'Trình chiếu 2', N'/Uploads/images/Anhtrinhchieu/slide-2-9411.jpg', 100, 100, NULL, N'_self', N'', 0, 0, 2, 1, N'vi', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, N'trinh-chieu-2', N'', N'', N'')
INSERT [dbo].[SlideShow] ([Id], [Name], [Image], [Width], [Height], [Link], [Target], [Content], [Position], [Click], [Ord], [Active], [Lang], [Detail], [Title], [Description], [Keyword], [Image1], [Image2], [Image3], [Image4], [Image5], [Index], [Priority], [Tag], [NameEn], [ContentEn], [DetailEn]) VALUES (10, N'Trình chiếu 3', N'/Uploads/images/Anhtrinhchieu/slide-3-9071.jpg', 100, 100, NULL, N'_self', N'', 0, 0, 3, 1, N'vi', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, N'trinh-chieu-3', N'', N'', N'')
INSERT [dbo].[SlideShow] ([Id], [Name], [Image], [Width], [Height], [Link], [Target], [Content], [Position], [Click], [Ord], [Active], [Lang], [Detail], [Title], [Description], [Keyword], [Image1], [Image2], [Image3], [Image4], [Image5], [Index], [Priority], [Tag], [NameEn], [ContentEn], [DetailEn]) VALUES (11, N'Trình chiếu 4', N'/Uploads/images/Anhtrinhchieu/slide-4-2966.jpg', 100, 100, NULL, N'_self', N'', 0, 0, 2, 1, N'vi', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, N'trinh-chieu-4', N'', N'', N'')
INSERT [dbo].[SlideShow] ([Id], [Name], [Image], [Width], [Height], [Link], [Target], [Content], [Position], [Click], [Ord], [Active], [Lang], [Detail], [Title], [Description], [Keyword], [Image1], [Image2], [Image3], [Image4], [Image5], [Index], [Priority], [Tag], [NameEn], [ContentEn], [DetailEn]) VALUES (12, N'Trình chiếu 5', N'/Uploads/images/Anhtrinhchieu/slide-5-1238.jpg', 100, 100, NULL, N'_self', N'', 0, 0, 4, 1, N'vi', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 0, N'trinh-chieu-5', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[SlideShow] OFF
SET IDENTITY_INSERT [dbo].[Support] ON 

INSERT [dbo].[Support] ([Id], [Name], [Tel], [Type], [Nick], [Ord], [Active], [GroupSupportId], [Lang], [Location]) VALUES (3, N'Mrs Vi Hoa', N'', 1, N'nuoc_hoavn', 1, 1, 1, N'vi', 0)
INSERT [dbo].[Support] ([Id], [Name], [Tel], [Type], [Nick], [Ord], [Active], [GroupSupportId], [Lang], [Location]) VALUES (4, N'Mr Văn Tuấn', N'', 1, N'nuoc_hoavn', 2, 1, 1, N'vi', 1)
INSERT [dbo].[Support] ([Id], [Name], [Tel], [Type], [Nick], [Ord], [Active], [GroupSupportId], [Lang], [Location]) VALUES (8, N'MR Tuấn Hùng', N'', 1, N'nuoc_hoavn', 3, 1, 1, N'vi', 0)
INSERT [dbo].[Support] ([Id], [Name], [Tel], [Type], [Nick], [Ord], [Active], [GroupSupportId], [Lang], [Location]) VALUES (9, N'Ms Mai Hương', N'', 1, N'nuoc_hoavn', 4, 1, 1, N'vi', 1)
INSERT [dbo].[Support] ([Id], [Name], [Tel], [Type], [Nick], [Ord], [Active], [GroupSupportId], [Lang], [Location]) VALUES (10, N'Manager Phú Đạt', N'090.214.2260 0r 097.360.1980', 1, N'vandatvn1980', 5, 1, 1, N'vi', 0)
SET IDENTITY_INSERT [dbo].[Support] OFF
SET IDENTITY_INSERT [dbo].[Tax_ruler] ON 

INSERT [dbo].[Tax_ruler] ([Id], [Name], [Province], [Tax_pri], [Description], [File_tax], [Ord], [NameEn], [DescriptionEn], [Active]) VALUES (1, N'Thuế Sản phẩm', N'Khu vực miền trung', 10, N'', N'', 1, N'Tax product', N'', 1)
INSERT [dbo].[Tax_ruler] ([Id], [Name], [Province], [Tax_pri], [Description], [File_tax], [Ord], [NameEn], [DescriptionEn], [Active]) VALUES (2, N'Thuế Sản Phẩm', N'Khu vực Miền Nam', 0, N'', N'', 1, N'', N'', 1)
SET IDENTITY_INSERT [dbo].[Tax_ruler] OFF
SET IDENTITY_INSERT [dbo].[TB_ThongKe] ON 

INSERT [dbo].[TB_ThongKe] ([MaTB], [ThoiGian], [SoTruyCap]) VALUES (1, CAST(0x0000A66401608451 AS DateTime), 22)
INSERT [dbo].[TB_ThongKe] ([MaTB], [ThoiGian], [SoTruyCap]) VALUES (2, CAST(0x0000A6840183B612 AS DateTime), 2)
INSERT [dbo].[TB_ThongKe] ([MaTB], [ThoiGian], [SoTruyCap]) VALUES (3, CAST(0x0000A685016D936C AS DateTime), 35)
INSERT [dbo].[TB_ThongKe] ([MaTB], [ThoiGian], [SoTruyCap]) VALUES (4, CAST(0x0000A6CF00A0B70E AS DateTime), 12)
INSERT [dbo].[TB_ThongKe] ([MaTB], [ThoiGian], [SoTruyCap]) VALUES (5, CAST(0x0000A6D201576AFE AS DateTime), 1)
INSERT [dbo].[TB_ThongKe] ([MaTB], [ThoiGian], [SoTruyCap]) VALUES (6, CAST(0x0000A6D7017346C9 AS DateTime), 29)
INSERT [dbo].[TB_ThongKe] ([MaTB], [ThoiGian], [SoTruyCap]) VALUES (7, CAST(0x0000A6D801787DFF AS DateTime), 34)
INSERT [dbo].[TB_ThongKe] ([MaTB], [ThoiGian], [SoTruyCap]) VALUES (8, CAST(0x0000A6D900C10101 AS DateTime), 20)
INSERT [dbo].[TB_ThongKe] ([MaTB], [ThoiGian], [SoTruyCap]) VALUES (9, CAST(0x0000A6DA00F3B0C0 AS DateTime), 16)
SET IDENTITY_INSERT [dbo].[TB_ThongKe] OFF
SET IDENTITY_INSERT [dbo].[Tintuc] ON 

INSERT [dbo].[Tintuc] ([Id], [Name], [Tag], [Ngaydang], [Tomtat], [Noidung], [Tacgia], [Luotxem], [Hinhanh], [Title], [Description], [Keyword], [Active], [Ord], [Type], [Ngayxemganday], [lienkiettinh], [NameEn], [ContentEn], [DetailEn], [Nguon]) VALUES (1, N'Hiện đại bằng cầu thang kính cho nhà hẹp phan thiết', N'hien-dai-bang-cau-thang-kinh-cho-nha-hep-phan-thiet', CAST(0x0000A6BA008317FB AS DateTime), N'Cầu thang kính cho nhà hẹp vừa tiết kiệm không gian, tạo cảm giác rộng rãi hơn, lại mang tới phong cách hiện đại, sang trọng. Đây chính là giải pháp hữu hiệu nhất cho những ai muốn xây dựng nhà riêng cho mình nhưng gặp hạn chế về diện tích. ', N'<strong>Cầu thang k&iacute;nh cho nh&agrave; hẹp vừa tiết kiệm kh&ocirc;ng gian, tạo cảm gi&aacute;c rộng r&atilde;i hơn, lại mang tới phong c&aacute;ch hiện đại, sang trọng. Đ&acirc;y ch&iacute;nh l&agrave; giải ph&aacute;p hữu hiệu nhất cho những ai muốn x&acirc;y dựng nh&agrave; ri&ecirc;ng cho m&igrave;nh nhưng gặp hạn chế về diện t&iacute;ch.&nbsp;</strong><br />
<br />
Đối với những nơi th&agrave;nh thị, đất chật người đ&ocirc;ng như Th&agrave;nh phố Hồ Ch&iacute; Minh hay H&agrave; Nội, đi đ&acirc;u ta cũng bắt gặp những ng&ocirc;i nh&agrave; c&oacute; diện t&iacute;ch nhỏ, chật hẹp, chủ yếu được x&acirc;y dạng 2 hoặc 3 tầng th&igrave; mới c&oacute; đủ kh&ocirc;ng gian sinh hoạt cho cả gia đ&igrave;nh. V&agrave; chiếc cầu thang ch&iacute;nh l&agrave; cầu nối li&ecirc;n kết kh&ocirc;ng gian giữa c&aacute;c tầng lại với nhau.&nbsp;<br />
&nbsp;
<div style="text-align: center;"><img alt="Điểm thêm nét hiện đại bằng cầu thang kính cho nhà hẹp" src="/Uploads/images/Tintuc/netdep/diem-them-net-hien-dai-bang-cau-thang-kinh-cho-nha-hep-01.jpg" style="width: 550px; height: 437px;" title="Điểm thêm nét hiện đại bằng cầu thang kính cho nhà hẹp" /></div>
Nh&agrave; c&oacute; diện t&iacute;ch lớn ta c&oacute; thể thoải m&aacute;i thiết kế dựa theo &yacute; th&iacute;ch của m&igrave;nh, tuy nhi&ecirc;n, đối với những ng&ocirc;i nh&agrave; hạn chế m&agrave; mặt diện t&iacute;ch th&igrave; sẽ kh&oacute; khăn hơn rất nhiều, từ khoảng kh&ocirc;ng gian cầu thang bị co nhỏ cho đến kiểu d&aacute;ng, thiết kế cầu thang như thế n&agrave;o vừa hiện đại vừa tiện nghi khiến kh&ocirc;ng &iacute;t gia chủ v&agrave; c&aacute;c đơn vị thi c&ocirc;ng phải đau đầu.&nbsp;

<h2><br />
Cầu thang k&iacute;nh ch&iacute;nh l&agrave; giải ph&aacute;p hữu hiệu cho nh&agrave; hẹp&nbsp;</h2>
<br />
Thay v&igrave; sử dụng cầu thang gỗ theo dạng truyền thống, vừa ghồ ghề vừa chiếm diện t&iacute;ch th&igrave; thiết kế&nbsp;cầu thang k&iacute;nh phan thết&nbsp;cho nh&agrave; hẹp lại l&agrave; giải ph&aacute;p hữu hiệu được nhiều người ưa chuộng bởi những ưu điểm m&agrave; n&oacute; mang lại.&nbsp;<br />
<br />
Cầu thang k&iacute;nh chủ yếu được l&agrave;m bằng&nbsp;k&iacute;nh cường lực, đa dạng trong c&aacute;ch sử dụng, c&oacute; thể l&agrave;m bậc thang hay lan can hai b&ecirc;n cầu thang đều được, gi&uacute;p phản chiếu &aacute;nh s&aacute;ng, cho căn nh&agrave; trở n&ecirc;n s&aacute;ng sửa, tho&aacute;ng đ&atilde;ng hơn rất nhiều, đồng thời, tạo ảo gi&aacute;c như kh&ocirc;ng gian được nới rộng. K&iacute;nh trong suốt , bước l&ecirc;n từng bậc cầu thang sẽ cho bạn cảm &nbsp;gi&aacute;c như bước tr&ecirc;n m&acirc;y.&nbsp;<br />
&nbsp;
<div style="text-align: center;"><img alt="Điểm thêm nét hiện đại bằng cầu thang kính cho nhà hẹp" src="/Uploads/images/Tintuc/netdep/diem-them-net-hien-dai-bang-cau-thang-kinh-cho-nha-hep-02.jpg" style="width: 550px; height: 365px;" title="Điểm thêm nét hiện đại bằng cầu thang kính cho nhà hẹp" /></div>
Hơn hết, ch&iacute;nh t&iacute;nh chịu lực c&ugrave;ng đồ bền của lan can k&iacute;nh lại l&agrave; điều khiến nhiều người quan t&acirc;m v&agrave; cảm thấy h&agrave;i l&ograve;ng nhất. Bề mặt k&iacute;nh trơn l&aacute;ng n&ecirc;n độ b&oacute;ng k&iacute;nh lu&ocirc;n giữ được l&acirc;u, với hợp với c&aacute;c phụ kiện đi k&egrave;m bằng inox tuổi thọ cao, kh&ocirc;ng tốn k&eacute;m chi ph&iacute; sửa chữa hay bảo dưỡng. Thời gian l&agrave;m vệ sinh, lau ch&ugrave;i cho cầu thang k&iacute;nh cũng giảm đi đ&aacute;ng kể, chỉ cần d&ugrave;ng khăn lau, k&egrave;m th&ecirc;m nước vệ sinh k&iacute;nh sẽ trả lại vẻ s&aacute;ng đẹp như mới thi c&ocirc;ng.

<h2><br />
Mẫu cầu thang k&iacute;nh phan thết&nbsp;cho nh&agrave; hẹp được ưu chuộng nhiều nhất hiện nay</h2>
&nbsp;<br />
Cầu thang k&iacute;nh ng&agrave;y nay rất được l&ograve;ng kh&aacute;ch h&agrave;ng, đi bất cứ đ&acirc;u, bạn cũng c&oacute; thể bắt gặp những chiếc cầu thang được thiết kế theo lối hiện đại, sang trọng cho ng&ocirc;i nh&agrave;. Dưới đ&acirc;y l&agrave; một số mẫu&nbsp;<strong>cầu thang k&iacute;nh cho nh&agrave; hẹp&nbsp;</strong>đẹp, đươc nhiều gia chủ lựa chọn cho kh&ocirc;ng gian nh&agrave; ở ri&ecirc;ng của m&igrave;nh:<br />
&nbsp;
<div style="text-align: center;"><img alt="Điểm thêm nét hiện đại bằng cầu thang kính cho nhà hẹp" src="/Uploads/images/Tintuc/netdep/diem-them-net-hien-dai-bang-cau-thang-kinh-cho-nha-hep-03.jpg" style="width: 550px; height: 530px;" title="Điểm thêm nét hiện đại bằng cầu thang kính cho nhà hẹp" /></div>
&nbsp;<br />
<em>Cầu thang k&iacute;nh cong với đường uốn lượn mang đến n&eacute;t mềm mại cho kh&ocirc;ng gian&nbsp;</em>

<div style="text-align: center;"><em><img alt="Điểm thêm nét hiện đại bằng cầu thang kính cho nhà hẹp" src="/Uploads/images/Tintuc/netdep/diem-them-net-hien-dai-bang-cau-thang-kinh-cho-nha-hep-05.jpg" style="width: 550px; height: 365px;" title="Điểm thêm nét hiện đại bằng cầu thang kính cho nhà hẹp" /></em></div>

<div style="text-align: center;"><em><img alt="Điểm thêm nét hiện đại bằng cầu thang kính cho nhà hẹp" src="/Uploads/images/Tintuc/netdep/diem-them-net-hien-dai-bang-cau-thang-kinh-cho-nha-hep-06.jpg" style="width: 550px; height: 446px;" title="Điểm thêm nét hiện đại bằng cầu thang kính cho nhà hẹp" /></em></div>
<br />
<em>Cầu thang k&iacute;nh trong suốt đơn giản nhưng v&ocirc; c&ugrave;ng hợp với kiến tr&uacute;c ng&ocirc;i nh&agrave;</em>

<div style="text-align: center;"><em><img alt="Điểm thêm nét hiện đại bằng cầu thang kính cho nhà hẹp" src="/Uploads/images/Tintuc/netdep/diem-them-net-hien-dai-bang-cau-thang-kinh-cho-nha-hep-07.jpg" style="width: 550px; height: 588px;" title="Điểm thêm nét hiện đại bằng cầu thang kính cho nhà hẹp" /></em></div>
<br />
<br />
&nbsp;<br />
Nh&agrave; hạn chế về mặt diện t&iacute;ch từ nay sẽ chẳng c&ograve;n l&agrave; vấn đề nếu bạn biết c&aacute;ch tận dụng&nbsp;<strong>cầu thang k&iacute;nh phan thết</strong><strong>&nbsp;cho nh&agrave; hẹp</strong>&nbsp;v&agrave;o ch&iacute;nh kh&ocirc;ng gian của m&igrave;nh. X&acirc;y dựng&nbsp;cầu thang k&iacute;nh phan thết&nbsp;kh&ocirc;ng chỉ đảm bảo t&iacute;nh năng sử dụng m&agrave; c&ograve;n l&agrave; c&aacute;ch gi&uacute;p nơi ở &nbsp;trở n&ecirc;n th&ocirc;ng tho&aacute;ng, rộng r&atilde;i v&agrave; đ&oacute;n &aacute;nh s&aacute;ng v&agrave;o c&aacute;c ph&ograve;ng trong ng&ocirc;i nh&agrave;.<br />
&nbsp;', NULL, 0, N'/Uploads/images/Tintuc/netdep/diem-them-net-hien-dai-bang-cau-thang-kinh-cho-nha-hep-01.jpg', N'', N'Cầu thang kính cho nhà hẹp vừa tiết kiệm không gian, tạo cảm giác rộng rãi hơn, lại mang tới phong cách hiện đại, sang trọng. Đây chính là giải pháp hữu hiệu nhất cho những ai muốn xây dựng nhà riêng cho mình nhưng gặp hạn chế về diện tích. ', N'cầu than kính cường lực phan thiết,lang cang kính cường lực phan thiết , phòng tấm kính cường lực phan thiết ,cửa nhômphan thiết ,mặt dựng ,nhôm phan thiết ,kính sơn màu ốp bếp phan thiết', 1, 1, 2, NULL, N'', N'', N'', N'', N'')
INSERT [dbo].[Tintuc] ([Id], [Name], [Tag], [Ngaydang], [Tomtat], [Noidung], [Tacgia], [Luotxem], [Hinhanh], [Title], [Description], [Keyword], [Active], [Ord], [Type], [Ngayxemganday], [lienkiettinh], [NameEn], [ContentEn], [DetailEn], [Nguon]) VALUES (2, N'Phan thiết Kính cường lực bị nứt do đâu?', N'phan-thiet-kinh-cuong-luc-bi-nut-do-dau', CAST(0x0000A6BA0085DF12 AS DateTime), N'Kính cường lực bị nứt là một trong số những mặt hạn chế bên cạnh những ưu điểm mà loại kính này mang lại. Mặc dù tỉ lệ xảy ra thấp nhưng bạn cũng nên tìm hiểu nguyên nhân để có cách xử lý thích hợp. 
', N'<strong>K&iacute;nh cường lực bị nứt l&agrave; một trong số những mặt hạn chế b&ecirc;n cạnh những ưu điểm m&agrave; loại k&iacute;nh n&agrave;y mang lại. Mặc d&ugrave; tỉ lệ xảy ra thấp nhưng bạn cũng n&ecirc;n t&igrave;m hiểu nguy&ecirc;n nh&acirc;n để c&oacute; c&aacute;ch xử l&yacute; th&iacute;ch hợp.&nbsp;</strong><br />
<br />
K&iacute;nh cường lực &nbsp;ng&agrave;y nay l&agrave; sự ho&agrave;n hảo cho hầu hết c&aacute;c c&ocirc;ng tr&igrave;nh từ đồ xộ như t&ograve;a nh&agrave;, trung t&acirc;m thương mại, si&ecirc;u thị&hellip;.cho đến c&ocirc;ng tr&igrave;nh nhỏ như nh&agrave; ở bởi những đặc t&iacute;nh m&agrave; n&oacute; mang lại như khả năng chịu nhiệt, c&aacute;ch &acirc;m, kh&ocirc;ng bị trầy xước, độ an to&agrave;n cao&hellip;.<br />
&nbsp;
<div style="text-align: center;"><img alt="Kính cường lực bị nứt do đâu" src="/Uploads/images/Tintuc/binut/kinh-cuong-luc-bi-nut-do-dau-04.jpg" style="width: 599px; height: 462px;" title="Kính cường lực bị nứt do đâu" /></div>
Tuy nhi&ecirc;n, loại k&iacute;nh n&agrave;y cũng c&oacute; nhược điểm đ&oacute; l&agrave; k&iacute;nh cường lực bị nứt bất cứ l&uacute;c n&agrave;o m&agrave; kh&ocirc;ng thể dự đo&aacute;n trước được.

<h2><br />
K&iacute;nh cường lực bị nứt</h2>
<br />
K&iacute;nh cường lực bị nứt vỡ ho&agrave;n to&agrave;n c&oacute; thể xảy ra do c&aacute;c t&aacute;c động của ngoại cảnh hoặc cũng c&oacute; thể do ch&iacute;nh bản th&acirc;n chất lượng của sản phẩm:<br />
&nbsp;
<h3>Chất lượng k&iacute;nh kh&ocirc;ng đảm bảo</h3>
<br />
K&iacute;nh cường lực tr&ecirc;n thị trường hiện nay xuất hiện h&agrave;ng nh&aacute;i, h&agrave;ng thật lẫn lộn với nhau, nếu người kh&ocirc;ng c&oacute; kinh nghiệm đi chọn mua sẽ rất dễ gặp phải sai lầm. K&iacute;nh sản xuất với c&ocirc;ng nghệ k&eacute;m, kh&ocirc;ng c&oacute; độ bề, chỉ cần một lực nhỏ t&aacute;c động l&agrave; k&iacute;nh đ&atilde; vỡ ngay. &nbsp;<br />
&nbsp;
<h3>Do va đập mạnh</h3>
&nbsp;

<div style="text-align: center;"><img alt="Kính cường lực bị nứt do đâu" src="/Uploads/images/Tintuc/binut/kinh-cuong-luc-bi-nut-do-dau-03(1).jpg" style="width: 600px; height: 417px;" title="Kính cường lực bị nứt do đâu" /></div>
Trong qu&aacute; tr&igrave;nh sử dụng, nếu bạn kh&ocirc;ng cẩn thận, khiến cửa k&iacute;nh đập mạnh sẽ khiến k&iacute;nh cường lực bị nứt hoặc vỡ.&nbsp;<br />
&nbsp;
<h3>K&iacute;nh bị o &eacute;p dẫn tới nứt</h3>
&nbsp;

<div style="text-align: center;"><img alt="Kính cường lực bị nứt do đâu" src="/Uploads/images/Tintuc/binut/kinh-cuong-luc-bi-nut-do-dau.jpg" style="width: 600px; height: 400px;" title="Kính cường lực bị nứt do đâu" /></div>
&nbsp;<br />
Lỗi n&agrave;y chủ yếu do trong qu&aacute; tr&igrave;nh thi c&ocirc;ng, người thợ lắp đặt k&iacute;nh kh&ocirc;ng chừa khe tho&aacute;ng quanh k&iacute;nh, khi c&oacute; sự thay đổi của thời tiết, nhiệt độ t&aacute;c động v&agrave;o k&iacute;nh, l&acirc;u ng&agrave;y k&iacute;nh d&atilde;n nỡ, bị o &eacute;p dẫn tới rạn hoặc nứt.&nbsp;<br />
&nbsp;
<h3>Bản lề, tay nắm lắp r&aacute;p kh&ocirc;ng ch&iacute;nh x&aacute;c</h3>

<div style="text-align: center;"><img alt="Kính cường lực bị nứt do đâu" src="/Uploads/images/Tintuc/binut/kinh-cuong-luc-bi-nut-do-dau-05(1).jpg" style="width: 600px; height: 500px;" title="Kính cường lực bị nứt do đâu" /></div>
V&igrave; được sản xuất ho&agrave;n to&agrave;n bằng k&iacute;nh cường lực n&ecirc;n điểm yếu nhất của cửa ch&iacute;nh l&agrave; ngay cạnh vi&ecirc;n xung quanh, đặc biệt l&agrave; c&aacute;c g&oacute;c. Khi c&aacute;c phụ kiện bị lắp lệch lạc, c&aacute;nh cửa bị xệ xuống, va đập nhẹ cũng c&oacute; thể g&acirc;y vỡ rạn.<br />
&nbsp;
<h3>C&oacute; tạp chất b&ecirc;n trong k&iacute;nh</h3>
<br />
Nguy&ecirc;n nh&acirc;n n&agrave;y thường hiếm xảy ra, tuy nhi&ecirc;n nếu tạp chất bị lẫn b&ecirc;n trong v&agrave; trong qu&aacute; tr&igrave;nh sản xuất, tạp chất chưa đặt đến độ ổn định của n&oacute; để đạt cấu tr&uacute;c bền vững th&igrave; c&oacute; thể g&acirc;y ra hiện tượng k&iacute;nh vỡ đột ngột.<br />
&nbsp;
<h2>Lưu &yacute; khi xử l&yacute; k&iacute;nh cường lực bị nứt</h2>
<br />
Khi tấm k&iacute;nh cường lực nh&agrave; bạn tự nhi&ecirc;n bị nứt th&igrave; điều đầu ti&ecirc;n bạn phải l&agrave;m đ&oacute; ch&iacute;nh l&agrave; x&aacute;c định nguy&ecirc;n nh&acirc;n.&nbsp;<br />
<br />
Nếu k&iacute;nh vỡ do t&aacute;c động ngoại cảnh, bạn chỉ cần thay thế bằng một tấm k&iacute;nh cường lực mới. Ngược lại lỗi do chất lượng sản phẩm th&igrave; bạn phải x&aacute;c định loại k&iacute;nh cường lực m&agrave; m&igrave;nh đang sử dụng c&oacute; đ&uacute;ng chất lượng hay kh&ocirc;ng, từ đ&oacute;, t&igrave;m ra loại k&iacute;nh mới uy t&iacute;n chất lượng hơn.&nbsp;<br />
<br />
Ngo&agrave;i ra, bạn cũng kh&ocirc;ng n&ecirc;n tự xử l&yacute; k&iacute;nh cường lực bị nứt nếu kh&ocirc;ng c&oacute; kinh nghiệm bởi rất nguy hiểm. Tốt nhất n&ecirc;n gọi thợ sửa chữa đến để giải quyết bởi họ c&oacute; đầy đủ trang thiết bị, dụng cụ chuy&ecirc;n dụng.&nbsp;<br />
&nbsp;', NULL, 0, N'/Uploads/images/Tintuc/binut/kinh-cuong-luc-bi-nut-do-dau-04.jpg', N'', N'Kính cường lực bị nứt là một trong số những mặt hạn chế bên cạnh những ưu điểm mà loại kính này mang lại. Mặc dù tỉ lệ xảy ra thấp nhưng bạn cũng nên tìm hiểu nguyên nhân để có cách xử lý thích hợp. 
', N'cầu than kính cường lực phan thiết,lang cang kính cường lực phan thiết , phòng tấm kính cường lực phan thiết ,cửa nhômphan thiết ,mặt dựng ,nhôm phan thiết ,kính sơn màu ốp bếp phan thiết', 1, 1, 2, NULL, N'', N'', N'', N'', N'')
INSERT [dbo].[Tintuc] ([Id], [Name], [Tag], [Ngaydang], [Tomtat], [Noidung], [Tacgia], [Luotxem], [Hinhanh], [Title], [Description], [Keyword], [Active], [Ord], [Type], [Ngayxemganday], [lienkiettinh], [NameEn], [ContentEn], [DetailEn], [Nguon]) VALUES (3, N'Cửa kính cường lực phan thiết chống trộm có an toàn?', N'cua-kinh-cuong-luc-phan-thiet-chong-trom-co-an-toan', CAST(0x0000A6BA0086D087 AS DateTime), N'Độ an toàn cao, khả năng chống trộm là thế mạnh của cửa kính cường lực mà không phải bất cứ loại cửa kính thông thường nào cũng có được. ', N'<strong>Độ an to&agrave;n cao, khả năng chống trộm l&agrave; thế mạnh của cửa k&iacute;nh cường lực phan thiết m&agrave; kh&ocirc;ng phải bất cứ loại cửa k&iacute;nh th&ocirc;ng thường n&agrave;o cũng c&oacute; được.&nbsp;</strong><br />
<br />
Trong xu thế hiện đại ng&agrave;y nay, vật liệu k&iacute;nh ng&agrave;y trở n&ecirc;n dần quen thuộc, mang t&iacute;nh ứng dụng cao, th&iacute;ch hợp với mọi c&ocirc;ng tr&igrave;nh. Việc sử dụng k&iacute;nh trong thiết kế nội thất c&ograve;n g&oacute;p phần mang lại cho những to&agrave; nh&agrave; văn ph&ograve;ng, cao ốc, chung cư cao tầng hay những ng&ocirc;i nh&agrave; phố, biệt thự&hellip; kiến tr&uacute;c hiện đại, kh&ocirc;ng gian mở, gần gũi với m&ocirc;i trường v&agrave; t&iacute;nh thẩm mỹ cao.&nbsp;<br />
&nbsp;
<div style="text-align: center;"><img alt="Cửa kính cường lực chống trộm có an toàn?" src="/Uploads/images/Tintuc/binut/kinh-cuong-luc-bi-nut-do-dau-04.jpg" style="width: 599px; height: 462px;" title="Cửa kính cường lực chống trộm có an toàn?" /></div>
&nbsp;<br />
Cửa k&iacute;nh cường lực phan thiết&nbsp;ch&iacute;nh l&agrave; một trong những thiết bị nội thất l&agrave;m bằng k&iacute;nh được ưa chuộng rộng r&atilde;i, l&agrave; giải ph&aacute;p v&agrave; lựa chọn h&agrave;ng đầu cho những c&ocirc;ng tr&igrave;nh c&oacute; kiến tr&uacute;c an to&agrave;n, sang trọng, hiện đại v&agrave; th&acirc;n thiện. Với qu&aacute; nhiều t&iacute;nh năng t&iacute;ch hợp trong cửa k&iacute;nh cường lực, nhiều người đ&atilde; kh&ocirc;ng khỏi thắc mắc v&agrave; tự đặt ra c&acirc;u hỏi: Cửa k&iacute;nh cường lực c&oacute; thật sự chống trộm?&rdquo;
<h2><br />
Cửa k&iacute;nh cường lực c&oacute; chống trộm được kh&ocirc;ng?</h2>
<br />
Kh&ocirc;ng c&oacute; một c&acirc;u trả lời n&agrave;o c&oacute; thể chắc chắn cho khả năng chống trộm của cửa k&iacute;nh cường lực. Thế nhưng, nếu so s&aacute;nh với c&aacute;c loại cửa k&iacute;nh th&ocirc;ng thường, ta vẫn thấy được sự kh&aacute;c biệt cũng độ an to&agrave;n của đ&oacute;, đặc biệt trong trường hợp c&oacute; trộm đột nhập, ph&aacute; vỡ k&iacute;nh.<br />
&nbsp;
<div style="text-align: center;"><img alt="Cửa kính cường lực chống trộm có an toàn?" src="/Uploads/images/Tintuc/binut/cua-kinh-cuong-luc-chong-trom-co-an-toan-02.jpg" style="width: 500px; height: 403px;" title="Cửa kính cường lực chống trộm có an toàn?" /></div>
K&iacute;nh cường lực phan thiết&nbsp;sử dụng trong loại cửa n&agrave;y thường được gia c&ocirc;ng, t&ocirc;i luyện rất cẩn thận, cho ra bề mặt k&iacute;nh chắc chắn, khả năng chịu lực, chống va đập, chịu tải trọng lớn v&agrave; chống vỡ rất nhiều lần. Trong trường hợp c&oacute; kẻ trộm đột nhập, đập vỡ k&iacute;nh, k&iacute;nh cường lực an to&agrave;n n&agrave;y c&oacute; khả năng chịu được những va đập mạnh, vẫn đứng vững chắc trong cửa ngay cả khi bị đập rạn vỡ. Nếu chẳng may bị vỡ sẽ vỡ th&agrave;nh nhiều mảnh vụn nhỏ, kh&ocirc;ng g&acirc;y độ s&aacute;t thương cho bạn.&nbsp;<br />
<br />
Đặc biệt, nhờ lớp m&agrave;ng phim m&agrave; k&iacute;nh cường lực rất kh&oacute; bị cắt đứt n&ecirc;n c&oacute; khả năng chống trộm tốt v&agrave; ở những nơi trọng yếu như cửa đi ch&iacute;nh v&agrave; cửa sổ m&agrave; kh&ocirc;ng phải thiết kế th&ecirc;m song sắt chống đột nhập.&nbsp;<br />
<br />
<strong>Cửa k&iacute;nh cường lực chống trộm</strong>&nbsp;&iacute;t nhiều vẫn mang lại sự an to&agrave;n t&iacute;nh mạng cho bạn trong những trường hợp nguy hiểm xảy ra. H&atilde;y lắp đặt&nbsp;cửa k&iacute;nh cường phan thiết lực&nbsp;của c&ocirc;ng ty Việt Nhật ch&uacute;ng t&ocirc;i để đảm bảo an to&agrave;n trong thời buổi trộm cướp hiện nay nh&eacute;.&nbsp;', NULL, 0, N'/Uploads/images/Tintuc/binut/cua-kinh-cuong-luc-chong-trom-co-an-toan-02.jpg', N'', N'', N'cầu than kính cường lực phan thiết,lang cang kính cường lực phan thiết , phòng tấm kính cường lực phan thiết ,cửa nhômphan thiết ,mặt dựng ,nhôm phan thiết ,kính sơn màu ốp bếp phan thiết', 1, 1, 2, CAST(0x0000A6BA0086F057 AS DateTime), N'', N'', N'', N'', N'')
INSERT [dbo].[Tintuc] ([Id], [Name], [Tag], [Ngaydang], [Tomtat], [Noidung], [Tacgia], [Luotxem], [Hinhanh], [Title], [Description], [Keyword], [Active], [Ord], [Type], [Ngayxemganday], [lienkiettinh], [NameEn], [ContentEn], [DetailEn], [Nguon]) VALUES (4, N'Phan thiết Sử dụng kính cường lực làm mặt bàn - Tại sao không?', N'phan-thiet-su-dung-kinh-cuong-luc-lam-mat-ban---tai-sao-khong', CAST(0x0000A6BA0088E120 AS DateTime), N'Mặt bàn kính cường lực yên tâm khi sử dụng, đặt vật nóng lên bàn không sợ bể, va đập mạnh không sợ nứt kính, an toàn tuyệt đối với những thiết kế độc lạ, chắc chắn bạn không thể bỏ qua.
', N'<strong>Mặt b&agrave;n k&iacute;nh cường lực phan thiết y&ecirc;n t&acirc;m khi sử dụng, đặt vật n&oacute;ng l&ecirc;n b&agrave;n kh&ocirc;ng sợ bể, va đập mạnh kh&ocirc;ng sợ nứt k&iacute;nh, an to&agrave;n tuyệt đối với những thiết kế độc lạ, chắc chắn bạn kh&ocirc;ng thể bỏ qua.</strong><br />
<br />
D&ugrave; l&agrave; căn nh&agrave; được với diện t&iacute;ch lớn hay nhỏ th&igrave; khi thiết kế nội thất cũng kh&ocirc;ng thể thiếu được những chiếc b&agrave;n xinh xắn, tiện lợi. Ng&agrave;y nay, thay v&igrave; lựa chọn b&agrave;n với k&iacute;ch thước lớn, nhiều chủ thi c&ocirc;ng lại ưa chuộng b&agrave;n nhỏ được thiết kế độc lạ, m&agrave; kh&ocirc;ng đụng h&agrave;ng, tạo n&eacute;t ri&ecirc;ng cũng như điểm ấn tượng mỗi khi c&oacute; ai gh&eacute; thăm nh&agrave;.<br />
&nbsp;
<div style="text-align: center;"><img alt="Sử dụng kính cường lực làm mặt bàn - Tại sao không?" src="/Uploads/images/Tintuc/matban/su-dung-kinh-cuong-luc-lam-mat-ban-tai-sao-khong.jpg" style="width: 500px; height: 351px;" title="Sử dụng kính cường lực làm mặt bàn - Tại sao không?" /></div>
Nếu trước kia, mặt b&agrave;n với chất liệu gỗ hay kim loại được sử dụng nhiều nhưng nay, nhiều người kh&ocirc;ng c&ograve;n ưa chuộng vật liệu n&agrave;y nữa bởi v&igrave; d&ugrave; gi&aacute; th&agrave;nh rẻ nhưng sau thời gian sử dụng ch&uacute;ng rất nhanh bị hao m&ograve;n, cũ kĩ, l&agrave;m mất đi t&iacute;nh thẫm mỹ. V&agrave;&nbsp;<strong>mặt b&agrave;n k&iacute;nh cường lực</strong>&nbsp;ra đời thay thế cho loại vật liệu truyền thống đ&oacute;.&nbsp;

<h2>&nbsp;<br />
Mặt b&agrave;n được l&agrave;m bằng k&iacute;nh cường lực c&oacute; g&igrave; kh&aacute;c</h2>
<br />
Ng&agrave;y nay, với t&iacute;nh ưu việt ho&agrave;n hảo c&ugrave;ng những ứng dụng s&aacute;ng tạo, mang lại lợi &iacute;ch cao,&nbsp;&nbsp;k&iacute;nh cường lực&nbsp;đ&atilde; kh&ocirc;ng c&ograve;n trở n&ecirc;n qu&aacute; xa lạ đối với mọi c&ocirc;ng tr&igrave;nh thi c&ocirc;ng.&nbsp;<strong>Mặt b&agrave;n k&iacute;nh cường lự</strong>c phan thiết đ&atilde; v&agrave; đang trở th&agrave;nh vật dụng quen thuộc từ nh&agrave; d&acirc;n dụng cho đến văn ph&ograve;ng, c&ocirc;ng sở.<br />
&nbsp;
<div style="text-align: center;"><img alt="Sử dụng kính cường lực làm mặt bàn - Tại sao không?" src="/Uploads/images/Tintuc/matban/su-dung-kinh-cuong-luc-lam-mat-ban-tai-sao-khong-06.jpg" style="width: 500px; height: 497px;" title="Sử dụng kính cường lực làm mặt bàn - Tại sao không?" /></div>
<br />
<em>Mặt b&agrave;n k&iacute;nh cường lực </em>phan thiết<em>&nbsp;trong suốt tạo cảm gi&aacute;c v&ocirc; c&ugrave;ng sang trọng, tho&aacute;ng đ&atilde;ng cho ng&ocirc;i nh&agrave;, kh&ocirc;ng hề l&agrave;m chật kh&ocirc;ng gian</em><br />
&nbsp;<br />
Mẫu mặt b&agrave;n n&agrave;y được l&agrave;m bằng k&iacute;nh cường lực cao cấp, sản xuất tr&ecirc;n d&acirc;y chuyền v&agrave; c&ocirc;ng nghệ hiện đại với nhiều mẫu m&atilde;, họa tiết trang tr&iacute; độc đ&aacute;o kh&aacute;c nhau, đem lại sự sang trong v&agrave; t&iacute;nh thẩm mỹ cho ng&ocirc;i nh&agrave;.<br />
<br />
B&agrave;n k&iacute;nh sử dụng k&iacute;nh cường lực c&oacute; độ chịu lực cao gấp 5 lần so với c&aacute;c loại k&iacute;nh thường kh&aacute;c c&ugrave;ng độ d&agrave;y, k&iacute;ch thước, do đ&oacute;, bạn ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m sử dụng m&agrave; kh&ocirc;ng lo bị nứt, vỡ k&iacute;nh.<br />
&nbsp;
<div style="text-align: center;"><img alt="Sử dụng kính cường lực làm mặt bàn - Tại sao không?" src="/Uploads/images/Tintuc/matban/su-dung-kinh-cuong-luc-lam-mat-ban-tai-sao-khong-08.jpg" style="width: 500px; height: 368px;" title="Sử dụng kính cường lực làm mặt bàn - Tại sao không?" /></div>
&nbsp;<br />
<em>T&ugrave;y v&agrave;o mục đ&iacute;ch sử dụng m&agrave; bạn c&oacute; thể lựa chọn mặt b&agrave;n theo kiểu d&aacute;ng th&iacute;ch hợp từ &nbsp;mặt b&agrave;n k&iacute;nh tr&ograve;n, mặt b&agrave;n k&iacute;nh vu&ocirc;ng, cho đến mặt b&agrave;n k&iacute;nh chữ nhật...</em><br />
Một t&iacute;nh năng ưu việt gi&uacute;p mặt b&agrave;n k&iacute;nh cường lực tốt hơn những loại mặt b&agrave;n kh&aacute;c đ&oacute; ch&iacute;nh l&agrave; khả năng chống thầm, lu&ocirc;n giữ được độ bền, kh&ocirc;ng bị mục n&aacute;t, bền đẹp m&atilde;i m&atilde;i, gi&uacute; tiết kiệm chi ph&iacute; tối đa cho người sử dụng.
<h2><br />
Ứng dụng của mặt b&agrave;n k&iacute;nh cường lực&nbsp;phan thiết</h2>
<br />
K&iacute;nh cường lực rất đa dạng, c&oacute; thể sử dụng l&agrave;m mặt b&agrave;n với nhiều loại, mẫu m&atilde;, k&iacute;ch thước kh&aacute;c nhau như: B&agrave;n l&agrave;m việc, b&agrave;n học, b&agrave;n ăn, b&agrave;n kh&aacute;ch&hellip;.mang tới vẻ nh&atilde; nhặn v&agrave; sang trọng cho kh&ocirc;ng gian nội thất.<br />
<br />
<strong>Đối với b&agrave;n l&agrave;m việc</strong>: mặt b&agrave;n k&iacute;nh cường lực cho b&agrave;n l&agrave;m việc th&ocirc;ng thường chỉ được thiết kế theo kiểu d&aacute;ng đơn giản để thuận tiện cho người sử dụng. Mặt b&agrave;n dễ lau ch&ugrave;i, nếu th&iacute;ch b&aacute;n c&oacute; thể y&ecirc;u cầu tạo th&ecirc;m hiệu ứng k&iacute;nh m&agrave;u để mang lại cảm gi&aacute;c thoải m&aacute;i v&agrave; thư gi&atilde;n trong giờ l&agrave;m việc.&nbsp;<br />
&nbsp;
<div style="text-align: center;"><img alt="Sử dụng kính cường lực làm mặt bàn - Tại sao không?" src="/Uploads/images/Tintuc/matban/su-dung-kinh-cuong-luc-lam-mat-ban-tai-sao-khong-03.jpg" style="width: 500px; height: 333px;" title="Sử dụng kính cường lực làm mặt bàn - Tại sao không?" /></div>
<br />
<em>B&agrave;n l&agrave;m việc sử dụng mặt b&agrave;n l&agrave;m từ k&iacute;nh cường lực đơn giản nhưng v&ocirc; c&ugrave;ng đẹp</em>

<div style="text-align: center;"><img alt="Sử dụng kính cường lực làm mặt bàn - Tại sao không?" src="/Uploads/images/Tintuc/matban/su-dung-kinh-cuong-luc-lam-mat-ban-tai-sao-khong-10.jpg" style="width: 500px; height: 331px;" title="Sử dụng kính cường lực làm mặt bàn - Tại sao không?" /></div>
<br />
<em>Gam m&agrave;u s&aacute;ng, rực r&otilde; như m&agrave;u xanh, m&agrave;u v&agrave;ng, hay trắng....cũng rất được ưa chuộng trong thiết kế b&agrave;n l&agrave;m việc</em><br />
<strong>Mặt b&agrave;n ăn bằng k&iacute;nh cường lực</strong>: B&agrave;n ăn trong gia đ&igrave;nh thường lớn n&ecirc;n k&iacute;nh cường lực được sử dụng phải c&oacute; độ d&agrave;y nhất định, mang đến sự an to&agrave;n cho người sử dụng, nhất l&agrave; trẻ em. B&agrave;n ăn được m&agrave;i cạnh nhẵn, mặt b&agrave;n s&aacute;ng b&oacute;ng, ch&acirc;n b&agrave;n c&oacute; thể sử dụng inox hoặc bằng gỗ...t&ugrave;y theo &yacute; th&iacute;ch của gia chủ. B&agrave;n ăn sử dụng an to&agrave;n bởi t&iacute;nh chịu nhiệt, chịu lực tốt.&nbsp;<br />
&nbsp;
<div style="text-align: center;"><img alt="Sử dụng kính cường lực làm mặt bàn - Tại sao không?" src="/Uploads/images/Tintuc/matban/su-dung-kinh-cuong-luc-lam-mat-ban-tai-sao-khong-11.jpg" style="width: 500px; height: 359px;" title="Sử dụng kính cường lực làm mặt bàn - Tại sao không?" /></div>
<br />
<em>B&agrave;n ăn thanh tho&aacute;t hơn rất nhiều với b&agrave;n l&agrave;m việc sử dụng ho&agrave;n to&agrave;n bằng k&iacute;nh cường lực</em>

<div style="text-align: center;"><img alt="Sử dụng kính cường lực làm mặt bàn - Tại sao không?" src="/Uploads/images/Tintuc/matban/su-dung-kinh-cuong-luc-lam-mat-ban-tai-sao-khong-09(1).jpg" style="width: 500px; height: 375px;" title="Sử dụng kính cường lực làm mặt bàn - Tại sao không?" /></div>
<br />
<em>Họa tiết sọc đen trắng như thế n&agrave;y l&agrave;m cho b&agrave;n ăn trong nh&agrave; bếp đẹp mắt hơn, tạo cảm gi&aacute;c ngon miệng mỗi khi qu&acirc;y quần b&ecirc;n gia đ&igrave;nh</em><br />
&nbsp;<br />
<strong>B&agrave;n k&iacute;nh cường lực trong ph&ograve;ng kh&aacute;ch</strong>: nội thất phong kh&aacute;ch thường được ch&uacute; trọng rất nhiều bởi đ&acirc;y l&agrave; kh&ocirc;ng gian ch&iacute;nh v&agrave; được sử dụng để tiếp kh&aacute;ch thường xuy&ecirc;n. B&agrave;n d&ugrave;ng trong ph&ograve;ng kh&aacute;ch c&oacute; ch&acirc;n b&agrave;n nhỏ, k&iacute;nh cường lực được gia c&ocirc;ng v&agrave; thiết kế cầu k&igrave; hơn, k&iacute;nh kh&ocirc;ng vỡ...mang lại điểm nhấn cho ph&ograve;ng kh&aacute;ch.&nbsp;<br />
&nbsp;
<div style="text-align: center;"><img alt="Sử dụng kính cường lực làm mặt bàn - Tại sao không?" src="/Uploads/images/Tintuc/matban/su-dung-kinh-cuong-luc-lam-mat-ban-tai-sao-khong-07.jpg" style="width: 500px; height: 333px;" title="Sử dụng kính cường lực làm mặt bàn - Tại sao không?" /></div>
<br />
<em>Mặt b&agrave;n k&iacute;nh cường lực trong ph&ograve;ng kh&aacute;ch được c&aacute;ch điệu với kiểu d&aacute;ng v&ograve;ng cung rất lạ mắt</em>

<div style="text-align: center;"><img alt="Sử dụng kính cường lực làm mặt bàn - Tại sao không?" src="/Uploads/images/Tintuc/matban/su-dung-kinh-cuong-luc-lam-mat-ban-tai-sao-khong-06.jpg" style="width: 500px; height: 497px;" title="Sử dụng kính cường lực làm mặt bàn - Tại sao không?" /></div>
<br />
<em>Hay đơn giản chỉ l&agrave; mặt b&agrave;n dạng h&igrave;nh vu&ocirc;ng nhưng vẫn mang n&eacute;t hiện đại</em><br />
&nbsp;<br />
Ngo&agrave;i ra, nếu bạn muốn cũng c&oacute; thể sử dụng k&iacute;nh cường lực d&agrave;y với m&agrave;u sắc kh&aacute;c nhau như đỏ, xanh, trắng&hellip;.để l&agrave;m mặt b&agrave;n sử dụng b&ecirc;n trong nh&agrave; bếp, vừa để trang tr&iacute; vừa phục vụ cho c&ocirc;ng việc nấu ăn hằng ng&agrave;y.<br />
&nbsp;
<div style="text-align: center;"><img alt="Sử dụng kính cường lực làm mặt bàn - Tại sao không?" src="/Uploads/images/Tintuc/matban/su-dung-kinh-cuong-luc-lam-mat-ban-tai-sao-khong-04.jpg" style="width: 500px; height: 429px;" title="Sử dụng kính cường lực làm mặt bàn - Tại sao không?" /></div>
&nbsp;<br />
<em>Mặt b&agrave;n k&iacute;nh cường lực với độ d&agrave;y lớn sử dụng để l&agrave;m b&agrave;n trong nh&agrave; bếp rất hữu dụng, vừa sử dụng chế biến thức ăn, vừa trang tr&iacute; cho căn trọng s&aacute;ng đẹp hơn</em><br />
&nbsp;<br />
Sử dụng<strong>&nbsp;mặt b&agrave;n k&iacute;nh cường lực&nbsp;</strong>phan thiết&nbsp;ch&iacute;nh l&agrave; c&aacute;ch mang đến sự s&aacute;ng tạo, vẻ đẹp trang nh&atilde; ho&agrave;n to&agrave;n mới về cả độ bền v&agrave; t&iacute;nh thẫm mỹ cho ng&ocirc;i nh&agrave; của bạn.&nbsp;', NULL, 0, N'', N'', N'Mặt bàn kính cường lực yên tâm khi sử dụng, đặt vật nóng lên bàn không sợ bể, va đập mạnh không sợ nứt kính, an toàn tuyệt đối với những thiết kế độc lạ, chắc chắn bạn không thể bỏ qua.
', N'cầu than kính cường lực phan thiết,lang cang kính cường lực phan thiết , phòng tấm kính cường lực phan thiết ,cửa nhômphan thiết ,mặt dựng ,nhôm phan thiết ,kính sơn màu ốp bếp phan thiết', 1, 1, 2, NULL, N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Tintuc] OFF
SET IDENTITY_INSERT [dbo].[Thanhvien] ON 

INSERT [dbo].[Thanhvien] ([id], [Taikhoan], [Matkhau], [Hoten], [Ngaysinh], [Gioitinh], [Diachi], [SDT], [Email], [Actice], [thutu], [CreateDate]) VALUES (177, N'kahchanchina', N'e3afed0047b08059d0fada10f400c1e5', N'hậu', CAST(0x0000A6ED00000000 AS DateTime), N'Nam', NULL, N'0902671917', N'lethehau90.vn@gmail.com', 1, 0, CAST(0x333C0B00 AS Date))
INSERT [dbo].[Thanhvien] ([id], [Taikhoan], [Matkhau], [Hoten], [Ngaysinh], [Gioitinh], [Diachi], [SDT], [Email], [Actice], [thutu], [CreateDate]) VALUES (178, N'abc', N'e3afed0047b08059d0fada10f400c1e5', N'ky', CAST(0x0000A6D800000000 AS DateTime), N'Nữ', N'
12,duong 8,phuong binh an, quan 2,hcm', N'0938293118', N'kdkahchan@gmail.com', 0, 2, CAST(0x333C0B00 AS Date))
SET IDENTITY_INSERT [dbo].[Thanhvien] OFF
SET IDENTITY_INSERT [dbo].[Thuonghieu] ON 

INSERT [dbo].[Thuonghieu] ([IDthuonghieu], [Tenthuonghieu], [Logo], [Url], [Active], [Vitri], [Lienkettinh], [mota], [Lang], [Tenthuonghieu_En], [mota_En]) VALUES (6, N'Chanel', N'/Uploads/files/thanhtoan/service-1.png', N'', 1, 1, N'chanel', N'', N'vi        ', N'', N'')
INSERT [dbo].[Thuonghieu] ([IDthuonghieu], [Tenthuonghieu], [Logo], [Url], [Active], [Vitri], [Lienkettinh], [mota], [Lang], [Tenthuonghieu_En], [mota_En]) VALUES (7, N'Adidas', N'/Uploads/files/thanhtoan/service-4.png', N'http://webdemo.com', 1, 1, N'adidas', N'<em><strong>Samsung</strong></em>', N'vi        ', N'Adidas', N'Samsung')
SET IDENTITY_INSERT [dbo].[Thuonghieu] OFF
SET IDENTITY_INSERT [dbo].[Url_thanhtoan] ON 

INSERT [dbo].[Url_thanhtoan] ([id], [Name], [Address], [PhoneNumber], [Fax], [vitri]) VALUES (1, N'Địa Chỉ <br> Mua hàng', N'http://localhost:12345/page/thoi-trang-dep-xinh-la-gi', NULL, NULL, 1)
INSERT [dbo].[Url_thanhtoan] ([id], [Name], [Address], [PhoneNumber], [Fax], [vitri]) VALUES (2, N'Giao hàng <br> Toàn Quốc', N'http://localhost:12345/page/van-chuyen-thanh-toan', NULL, NULL, 1)
INSERT [dbo].[Url_thanhtoan] ([id], [Name], [Address], [PhoneNumber], [Fax], [vitri]) VALUES (3, N'Trả tiền <br> Tại Nhà', N'http://localhost:12345/page/quy-dinh-doi-tra-hang', NULL, NULL, 1)
INSERT [dbo].[Url_thanhtoan] ([id], [Name], [Address], [PhoneNumber], [Fax], [vitri]) VALUES (4, N'Đổi trả hàng <br> Trong 14 ngày', N'http://localhost:12345/page/quy-dinh-doi-tra-hang', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Url_thanhtoan] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Name], [Username], [Password], [Level], [Admin], [Ord], [Active], [Role]) VALUES (47, N'Admin', N'Admin', N'e3afed0047b08059d0fada10f400c1e5', N'', 1, 1, 1, N'Admin')
INSERT [dbo].[User] ([Id], [Name], [Username], [Password], [Level], [Admin], [Ord], [Active], [Role]) VALUES (1036, N'a', N'a', N'827ccb0eea8a706c4c34a16891f84e7b', N'', 1, 4, 1, N'Personnel')
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Advertise] ADD  CONSTRAINT [DF__Advertise__Activ__0DAF0CB0]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Language] ADD  DEFAULT ((0)) FOR [Default]
GO
ALTER TABLE [dbo].[Language] ADD  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Bill_customers]  WITH CHECK ADD  CONSTRAINT [FK_tbBill_customers_tbCUSTOMERS] FOREIGN KEY([userid])
REFERENCES [dbo].[Custumers] ([iusid])
GO
ALTER TABLE [dbo].[Bill_customers] CHECK CONSTRAINT [FK_tbBill_customers_tbCUSTOMERS]
GO
ALTER TABLE [dbo].[Billdetail]  WITH CHECK ADD  CONSTRAINT [FK_tbBilldetail_tbBill_customers] FOREIGN KEY([bilid])
REFERENCES [dbo].[Bill_customers] ([billid])
GO
ALTER TABLE [dbo].[Billdetail] CHECK CONSTRAINT [FK_tbBilldetail_tbBill_customers]
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_Province] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[Province] ([Id])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_Province]
GO
ALTER TABLE [dbo].[Document]  WITH NOCHECK ADD  CONSTRAINT [FRK_Document_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FRK_Document_MemberId]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FRK_Document_TypeId] FOREIGN KEY([TypeId])
REFERENCES [dbo].[DocumentType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FRK_Document_TypeId]
GO
ALTER TABLE [dbo].[Library]  WITH CHECK ADD  CONSTRAINT [FRK_Library_GroupLibraryId] FOREIGN KEY([GroupLibraryId])
REFERENCES [dbo].[GroupLibrary] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Library] CHECK CONSTRAINT [FRK_Library_GroupLibraryId]
GO
ALTER TABLE [dbo].[Library]  WITH CHECK ADD  CONSTRAINT [FRK_Library_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[Library] CHECK CONSTRAINT [FRK_Library_MemberId]
GO
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FRK_Member_GroupMemberId] FOREIGN KEY([GroupMemberId])
REFERENCES [dbo].[GroupMember] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FRK_Member_GroupMemberId]
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [FK_Shop_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([id])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [FK_Shop_Company]
GO
ALTER TABLE [dbo].[Support]  WITH CHECK ADD  CONSTRAINT [FRK_Support_GroupSupportId] FOREIGN KEY([GroupSupportId])
REFERENCES [dbo].[GroupSupport] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Support] CHECK CONSTRAINT [FRK_Support_GroupSupportId]
GO
USE [master]
GO
ALTER DATABASE [Web_config_v1] SET  READ_WRITE 
GO
