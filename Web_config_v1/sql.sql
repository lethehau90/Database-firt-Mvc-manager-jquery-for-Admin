USE [master]
GO
/****** Object:  Database [Web_config_v1]    Script Date: 10/24/2016 12:41:02 PM ******/
CREATE DATABASE [Web_config_v1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Web_config_v1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Web_config_v1.mdf' , SIZE = 7168KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Web_config_v1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Web_config_v1_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
ALTER DATABASE [Web_config_v1] SET AUTO_CLOSE OFF 
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
ALTER DATABASE [Web_config_v1] SET  DISABLE_BROKER 
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
/****** Object:  StoredProcedure [dbo].[Asp_Excell_GetBy_100DHMoiNhat]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Asp_Excell_GetBy_10DHMoiNhat]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Asp_Excell_GetBy_50DHMoiNhat]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Asp_Excell_GetBy_5DHMoiNhat]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Asp_Excell_GetBy_Chuaduyet]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Asp_Excell_GetBy_duyet]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Asp_Excell_GetBy_Today]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Asp_Excell_GetByAll]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Donhang_Max]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Sanpham_Max]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spThongKe_Edit]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[Advertise]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[Bill_customers]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[Billdetail]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[Chitiethinh]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[CommentProduc]    Script Date: 10/24/2016 12:41:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
 CONSTRAINT [PK_CommentProduc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Company]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[Config]    Script Date: 10/24/2016 12:41:02 PM ******/
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
 CONSTRAINT [PRK_Config_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[CTdonhang]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[Custumers]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[Document]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[DocumentType]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[Donhang]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[Donvi]    Script Date: 10/24/2016 12:41:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donvi](
	[IDdonvi] [int] IDENTITY(1,1) NOT NULL,
	[Tendonvi] [nvarchar](50) NULL,
	[Hienthi] [bit] NULL,
 CONSTRAINT [PK_tblDonvi] PRIMARY KEY CLUSTERED 
(
	[IDdonvi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmailRegisters]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[GroupLibrary]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[GroupMember]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[GroupMenuSanPham]    Script Date: 10/24/2016 12:41:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
	[Mota] [nvarchar](1000) NULL,
	[NameEn] [nvarchar](256) NULL,
	[TitleEn] [nvarchar](256) NULL,
	[contentEn] [ntext] NULL,
 CONSTRAINT [PRK_GroupMenuSanPham_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GroupNewMenuSanPhamDetail]    Script Date: 10/24/2016 12:41:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GroupNewMenuSanPhamDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Tag] [nvarchar](500) NULL,
	[Image] [varchar](500) NULL,
	[IDthuonghieu] [int] NULL,
	[Mausac] [nvarchar](500) NULL,
	[Kichthuoc] [nvarchar](500) NULL,
	[Giaban] [float] NULL,
	[Phantramkhuyenmai] [float] NULL,
	[Donvi] [nvarchar](50) NULL,
	[Luotxem] [int] NULL,
	[Luotdanhgia] [nvarchar](50) NULL,
	[Vat] [bit] NULL,
	[Khuyenmai] [nvarchar](max) NULL,
	[Baohanh] [nvarchar](max) NULL,
	[seri] [nvarchar](50) NULL,
	[Content] [nvarchar](max) NULL,
	[Detail] [ntext] NULL,
	[Date] [datetime] NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Keyword] [nvarchar](max) NULL,
	[Priority] [int] NULL,
	[Index] [int] NULL,
	[Active] [int] NULL,
	[Lang] [varchar](5) NULL,
	[GroupNewsCatTag] [nvarchar](500) NULL,
	[Cateprolevel1] [nvarchar](500) NULL,
	[Cateprolevel2] [nvarchar](500) NULL,
	[Cateprolevel3] [nvarchar](500) NULL,
	[Image1] [varchar](500) NULL,
	[Image2] [varchar](500) NULL,
	[Image3] [varchar](500) NULL,
	[Image4] [varchar](500) NULL,
	[Images5] [varchar](500) NULL,
	[thongdiep] [nvarchar](max) NULL,
	[order] [int] NULL,
	[NameEn] [nvarchar](100) NULL,
	[ContentEn] [ntext] NULL,
	[DetailEn] [ntext] NULL,
	[Soluongmua] [int] NULL,
	[khuyenmaiEn] [ntext] NULL,
	[BaohanhEn] [ntext] NULL,
	[DacDiemNoiBat] [ntext] NULL,
	[DacDiemNoiBatEn] [ntext] NULL,
	[ThongdiepEn] [ntext] NULL,
	[DateView] [datetime] NULL,
 CONSTRAINT [PK_NewMenuSanPham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GroupNews]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[GroupNewsNewsDetail]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[GroupSupport]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[Html]    Script Date: 10/24/2016 12:41:02 PM ******/
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
 CONSTRAINT [PK_Html] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[information]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[Khoanggia]    Script Date: 10/24/2016 12:41:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoanggia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Khoangdau] [nvarchar](50) NULL,
	[Khoangcuoi] [nvarchar](50) NULL,
	[Vitri] [int] NULL,
	[Hienthi] [bit] NULL,
 CONSTRAINT [PK_tblKhoanggia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kichthuoc]    Script Date: 10/24/2016 12:41:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kichthuoc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kichthuoc] [nvarchar](50) NULL,
	[Vitri] [int] NULL,
	[Hienthi] [bit] NULL,
 CONSTRAINT [PK_tblKichthuoc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Language]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[Library]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[Mausac]    Script Date: 10/24/2016 12:41:02 PM ******/
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
 CONSTRAINT [PK_tblMausac] PRIMARY KEY CLUSTERED 
(
	[IDmau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mautuychon]    Script Date: 10/24/2016 12:41:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mautuychon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenmau] [nvarchar](500) NULL,
	[mamau] [nvarchar](500) NULL,
	[type] [int] NULL,
	[tenmauEn] [nvarchar](500) NULL,
 CONSTRAINT [PK_mautuychon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Member]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[Province]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[quantity_purchased]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[service_charge]    Script Date: 10/24/2016 12:41:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[service_charge](
	[idservice] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NULL,
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
/****** Object:  Table [dbo].[Shop]    Script Date: 10/24/2016 12:41:02 PM ******/
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
 CONSTRAINT [PK_Shop] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 10/24/2016 12:41:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Des] [nvarchar](300) NULL,
	[Lang] [varchar](5) NULL,
	[NameEn] [nvarchar](200) NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SlideShow]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[Support]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[TB_ThongKe]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[Thanhvien]    Script Date: 10/24/2016 12:41:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thanhvien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Taikhoan] [nvarchar](200) NULL,
	[Matkhau] [nvarchar](200) NULL,
	[Hoten] [nvarchar](200) NULL,
	[Ngaysinh] [nvarchar](200) NULL,
	[Gioitinh] [nvarchar](200) NULL,
	[Diachi] [nvarchar](200) NULL,
	[SDT] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
	[Actice] [bit] NULL,
	[thutu] [int] NULL,
 CONSTRAINT [PK_Thanhvien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Thuonghieu]    Script Date: 10/24/2016 12:41:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thuonghieu](
	[IDthuonghieu] [int] IDENTITY(1,1) NOT NULL,
	[Tenthuonghieu] [nvarchar](100) NULL,
	[Logo] [nvarchar](500) NULL,
	[Url] [nvarchar](500) NULL,
	[Hienthi] [bit] NULL,
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
/****** Object:  Table [dbo].[Tintuc]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[Url_thanhtoan]    Script Date: 10/24/2016 12:41:02 PM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 10/24/2016 12:41:02 PM ******/
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

INSERT [dbo].[Advertise] ([Id], [Name], [Image], [Width], [Height], [Link], [Target], [Content], [Position], [PageId], [Click], [Ord], [Active], [Lang], [NameEn], [ContentEn], [Ngaytao], [Ngayhethan], [LuotClick]) VALUES (95, N'Ảnh logo', N'/Uploads/images/Logo/no-image.jpg', 100, 100, N'http://thoitrangdepxinh.vn', N'_self', N'', 1, 3, 0, 1, 1, N'vi', N'', N'', CAST(0x0000A6A300000000 AS DateTime), NULL, 0)
INSERT [dbo].[Advertise] ([Id], [Name], [Image], [Width], [Height], [Link], [Target], [Content], [Position], [PageId], [Click], [Ord], [Active], [Lang], [NameEn], [ContentEn], [Ngaytao], [Ngayhethan], [LuotClick]) VALUES (98, N'An toàn và đảm bảo', N'/Uploads/images/Logo/Ico.jpg', 100, 100, N'', N'_self', N'<strong style="box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-transform: uppercase; font-size: 15px; font-family: Roboto; color: rgb(0, 0, 0); display: block; line-height: normal; text-align: center; background: transparent;">THANH TO&Aacute;N<br style="box-sizing: border-box;" />
KHI NHẬN H&Agrave;NG</strong>', 3, 4, 0, 1, 1, N'vi', N'', N'', CAST(0x0000A6A300000000 AS DateTime), CAST(0x0000A6AD00000000 AS DateTime), 0)
INSERT [dbo].[Advertise] ([Id], [Name], [Image], [Width], [Height], [Link], [Target], [Content], [Position], [PageId], [Click], [Ord], [Active], [Lang], [NameEn], [ContentEn], [Ngaytao], [Ngayhethan], [LuotClick]) VALUES (99, N'Giao hàng tận nơi nhanh chóng', N'/Uploads/images/Logo/logo_smoking.png', 100, 100, N'', N'_self', N'<div>GIAO H&Agrave;NG<br />
TO&Agrave;N QUỐC</div>
', 3, 1, 0, 2, 1, N'vi', N'', N'', CAST(0x0000A69100000000 AS DateTime), NULL, 0)
INSERT [dbo].[Advertise] ([Id], [Name], [Image], [Width], [Height], [Link], [Target], [Content], [Position], [PageId], [Click], [Ord], [Active], [Lang], [NameEn], [ContentEn], [Ngaytao], [Ngayhethan], [LuotClick]) VALUES (100, N'Xem quy định đổi trả hàng', N'/Uploads/images/Logo/Ico.jpg', 100, 100, N'', N'_parent', N'<div><span class="fa fa-asterisk" style="color:rgb(0, 0, 0);"></span>ĐỔI TRẢ<br />
TRONG 7 NG&Agrave;Y</div>
', 5, 3, 0, 3, 1, N'vi', N'', N'ĐỔI TRẢ<br style="box-sizing: border-box;" />
TRONG 7 NG&Agrave;Y', CAST(0x0000A6A700000000 AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[Advertise] OFF
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
SET IDENTITY_INSERT [dbo].[CommentProduc] ON 

INSERT [dbo].[CommentProduc] ([Id], [ProId], [Name], [Email], [Point], [Content], [Date], [Active]) VALUES (5, 214, N'sgsg', N'sgsdg', 5, N'sgsdgsdg', CAST(0x0000A0DA00BAFCC0 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[CommentProduc] OFF
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([id], [Name], [Address], [PhoneNumber], [Fax], [ProvinceId], [NameEn], [AddressEn]) VALUES (1, N'Công ty CP TMDV Thăng Long', N'35 Láng Hạ, Ba Đình, Hà Nội', N'04. 3514.6820', N'04. 3514.6821', 3, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Company] OFF
SET IDENTITY_INSERT [dbo].[Config] ON 

INSERT [dbo].[Config] ([Id], [Mail_Smtp], [Mail_Port], [Mail_Info], [Mail_Noreply], [Mail_Password], [PlaceHead], [PlaceBody], [GoogleId], [Contact], [DeliveryTerms], [PaymentTerms], [FreeShipping], [Copyright], [Title], [Description], [Keyword], [Lang], [Helpsize], [Location], [ToolScrip], [Icon]) VALUES (1, N'smtp.gmail.com', 587, N'admin@gmail.com', N'admin@gmail.com', N'admin', N'Tiêu đề mail ở đây ?', N'Đây là nội dung bản quyền website của bạn ?', NULL, NULL, N'Đây là nội dung bản quyền website của bạn ?', N'Đây là nội dung bản quyền website của bạn ?', 0, N'Đây là nội dung bản quyền website của bạn ?', N'Tiêu đề website của bạn ở đây?', N'Mô tả website tìm kiếm trên công cụ google ở đây?', N'Từ khóa website tìm kiếm trên công cụ google ở đây?', NULL, N'Đây là nội dung bản quyền website của bạn ?', 0, N'Đây là nội dung bản quyền website của bạn ?', N'/Uploads/images/Logo/Ico.jpg')
SET IDENTITY_INSERT [dbo].[Config] OFF
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([Id], [Name], [Company], [Address], [Tel], [Mail], [Detail], [Date], [Active], [Lang], [NameEn], [CompanyEn], [AddressEn], [DetailEn]) VALUES (2, N'Nhận tại văn phòng', NULL, NULL, N'0902671917', N'lehau@sharefree24h.com', N'<span style="font-family: Roboto, sans-serif; font-size: 14px; line-height: 20px;">421/21 Sư Vạn Hạnh, P.12, Q. 10, TPHCM.&nbsp;</span><br style="box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 14px; line-height: 20px;" />
<br style="box-sizing: border-box; font-family: Roboto, sans-serif; font-size: 14px; line-height: 20px;" />
<span style="font-family: Roboto, sans-serif; font-size: 14px; line-height: 20px;">Thời gian l&agrave;m việc: 8:00 đến 21:30 (tất cả c&aacute;c ng&agrave;y trong tuần)</span>', CAST(0x0000A5F000000000 AS DateTime), 1, N'vi', NULL, NULL, NULL, NULL)
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
SET IDENTITY_INSERT [dbo].[DocumentType] ON 

INSERT [dbo].[DocumentType] ([Id], [Name], [Ord], [Active], [Lang], [NameEn]) VALUES (1, N'Nghị định', 1, 1, N'vi', NULL)
SET IDENTITY_INSERT [dbo].[DocumentType] OFF
SET IDENTITY_INSERT [dbo].[Donhang] ON 

INSERT [dbo].[Donhang] ([IDhd], [IDuser], [SDT], [Hoten], [Mail], [Diachi], [Tinh], [Huyen], [Xungho], [Hinhthucthanhtoan], [Goidichvu], [Tongtienhang], [Thanhtoan], [ngaydathang], [KH], [Duyet], [Khuyenmai], [Hinhthucgiaohang], [GhiChuKhac], [Tiengiamgia]) VALUES (109, NULL, N'0938293118', N'li', N'gogo_386@163.com', N'
quan 2', NULL, NULL, N'anh', NULL, NULL, 4471250, NULL, CAST(0x0000A63900E6850B AS DateTime), NULL, N'0', NULL, N'30000', NULL, 0)
INSERT [dbo].[Donhang] ([IDhd], [IDuser], [SDT], [Hoten], [Mail], [Diachi], [Tinh], [Huyen], [Xungho], [Hinhthucthanhtoan], [Goidichvu], [Tongtienhang], [Thanhtoan], [ngaydathang], [KH], [Duyet], [Khuyenmai], [Hinhthucgiaohang], [GhiChuKhac], [Tiengiamgia]) VALUES (110, NULL, N'0902671917', N'sấ', N'lethehau90.vn@gmail.com', N'thang binh quang nam', NULL, NULL, N'fasf', NULL, NULL, 4381000, NULL, CAST(0x0000A63D000805F5 AS DateTime), NULL, N'0', NULL, N'30000', N'thang binh quang nam', 0)
INSERT [dbo].[Donhang] ([IDhd], [IDuser], [SDT], [Hoten], [Mail], [Diachi], [Tinh], [Huyen], [Xungho], [Hinhthucthanhtoan], [Goidichvu], [Tongtienhang], [Thanhtoan], [ngaydathang], [KH], [Duyet], [Khuyenmai], [Hinhthucgiaohang], [GhiChuKhac], [Tiengiamgia]) VALUES (111, NULL, N'092671917', N'rew', N'dsfds@gmail.com', N'dfdsfs', NULL, NULL, N'fasf', NULL, NULL, 4851250, NULL, CAST(0x0000A63D000A2286 AS DateTime), NULL, N'0', NULL, N'30000', N'fdgfdg', 0)
INSERT [dbo].[Donhang] ([IDhd], [IDuser], [SDT], [Hoten], [Mail], [Diachi], [Tinh], [Huyen], [Xungho], [Hinhthucthanhtoan], [Goidichvu], [Tongtienhang], [Thanhtoan], [ngaydathang], [KH], [Duyet], [Khuyenmai], [Hinhthucgiaohang], [GhiChuKhac], [Tiengiamgia]) VALUES (112, NULL, N'0902671917', N'Hậu', N'lethehau90.vn@gmail.com', N'thăng bình quảng nam', NULL, NULL, N'anh', NULL, NULL, 4836600, NULL, CAST(0x0000A63D000C274C AS DateTime), NULL, N'0', NULL, N'30000', N'thăng bình quảng nam', 0)
SET IDENTITY_INSERT [dbo].[Donhang] OFF
SET IDENTITY_INSERT [dbo].[Donvi] ON 

INSERT [dbo].[Donvi] ([IDdonvi], [Tendonvi], [Hienthi]) VALUES (4, N'Thành Phố Hồ Chí Minh', 1)
SET IDENTITY_INSERT [dbo].[Donvi] OFF
SET IDENTITY_INSERT [dbo].[EmailRegisters] ON 

INSERT [dbo].[EmailRegisters] ([Id], [Email], [Createdate], [Status]) VALUES (1, N'sontest@yahoo.com', CAST(0x9EDE0000 AS SmallDateTime), 0)
SET IDENTITY_INSERT [dbo].[EmailRegisters] OFF
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

INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (29, N'Thời Trang CAT', N'thoi-trang-cat', NULL, N'Thời trang dễ thương', N'Thời trang dễ thương', N'Thời trang dễ thương', 5, 0, 1, 1, N'vi', N'/Images/images/product_thumb/%C4%91%E1%BA%A7m%20v%C3%A1y/thoi%20trang%20nam.jpg', N'<span style="line-height: 20.8px;">Nhu cầu tất yếu của phái nữ là làm đẹp, đó không chỉ là niềm vui mà còn là cả một nghệ thuật, để đem lại sự tự tin và phong thái cho mọi cô gái trong mọi hoàn cảnh và sự kiện. Khái niệm làm đẹp vô cùng lớn, bao hàm cả nghành thời trang và như vậy thì thời trang nữ chắc chắn là sự quan tâm hàng đầu của các nhà thiết kế cũng như mọi cô nàng. Với mục đích đem đến những sản phẩm thời trang cao cấp thật sự chất lượng, giá cả phải chăng, để tôn lên vẻ đẹp cũng như là sự biểu hiện cá tính của gu thẫm mỹ mỗi người.</span>', N' Fashion CAT', NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (30, N'Thời Trang Nữ', N'thoi-trang-nu', NULL, N'Thời Trang Nữ', N'Thời Trang Nữ', N'Thời Trang Nữ', 1, 0, 0, 1, N'vi', N'/Images/images/product_thumb/%C4%91%E1%BA%A7m%20v%C3%A1y/dam.jpg', N'Nhu cầu tất yếu của phái nữ là làm đẹp, đó không chỉ là niềm vui mà còn là cả một nghệ thuật, để đem lại sự tự tin và phong thái cho mọi cô gái trong mọi hoàn cảnh và sự kiện. Khái niệm làm đẹp vô cùng lớn, bao hàm cả nghành thời trang và như vậy thì thời trang nữ chắc chắn là sự quan tâm hàng đầu của các nhà thiết kế cũng như mọi cô nàng. Với mục đích đem đến những sản phẩm thời trang cao cấp thật sự chất lượng, giá cả phải chăng, để tôn lên vẻ đẹp cũng như là sự biểu hiện cá tính của gu thẫm mỹ mỗi người.', NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (50, N'Phụ Kiện', N'phu-kien', NULL, N'Phụ Kiện', N'Phụ Kiện', N'Phụ Kiện', 3, 1, 0, 1, N'vi', NULL, N'<span style="line-height: 20.8px;">Nhu cầu tất yếu của phái nữ là làm đẹp, đó không chỉ là niềm vui mà còn là cả một nghệ thuật, để đem lại sự tự tin và phong thái cho mọi cô gái trong mọi hoàn cảnh và sự kiện. Khái niệm làm đẹp vô cùng lớn, bao hàm cả nghành thời trang và như vậy thì thời trang nữ chắc chắn là sự quan tâm hàng đầu của các nhà thiết kế cũng như mọi cô nàng. Với mục đích đem đến những sản phẩm thời trang cao cấp thật sự chất lượng, giá cả phải chăng, để tôn lên vẻ đẹp cũng như là sự biểu hiện cá tính của gu thẫm mỹ mỗi người.</span>', NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (51, N'Giày_Dép', N'giay_dep', NULL, N'Giày_Dép', N'Giày_Dép', N'Giày_Dép', 2, 1, 0, 1, N'vi', N'/Images/images/product_thumb/%C4%91%E1%BA%A7m%20v%C3%A1y/thoi%20trang%20me%20va%20be.jpg', N'Giày_Dép', NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (52, N'THỜI TRANG HOTGIRL', N'thoi-trang-hotgirl', NULL, N'THỜI TRANG HOTGIRL', N'THỜI TRANG HOTGIRL', N'THỜI TRANG HOTGIRL', 4, 0, 1, 1, N'vi', NULL, N'THỜI TRANG HOTGIRL', N'FASHION hotgirl', NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (53, N'Đầm váy', N'dam-vay', N'30', NULL, NULL, NULL, 1, 1, 0, 1, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (54, N'Áo Nữ', N'ao-nu', N'30', NULL, NULL, NULL, 2, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (55, N'Quần Nữ', N'quan-nu', N'30', NULL, NULL, NULL, 3, 0, 0, 1, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (56, N'Đầm dạo phố', N'dam-dao-pho', N'53', N'Đầm dạo phố', N'Đầm dạo phố', N'Đầm dạo phố', 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (57, N'Đầm công sở', N'dam-cong-so', N'53', N'Đầm công sở', N'Đầm công sở', N'Đầm công sở', 2, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (58, N'Đầm dự tiệc', N'dam-du-tiec', N'53', N'Đầm dự tiệc', N'Đầm dự tiệc', N'Đầm dự tiệc', 3, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (59, N'Váy liền thân', N'vay-lien-than', N'53', N'Váy liền thân', N'Váy liền thân', N'Váy liền thân', 4, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (60, N'Áo thun nữ', N'ao-thun-nu', N'54', NULL, NULL, NULL, 1, 0, 1, 1, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (61, N'Áo sơ mi nữ', N'ao-so-mi-nu', N'54', NULL, NULL, NULL, 2, 0, 0, 1, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (65, N'Thời trang dễ thương', N'thoi-trang-de-thuong', N'29', N'Thời trang dễ thương', N'Thời trang dễ thương', N'Thời trang dễ thương', 1, 0, 0, 1, N'vi', NULL, N'Thời trang dễ thương', NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (68, N'Đầm váy công chúa', N'dam-vay-cong-chua', N'65', N'Đầm váy công chúa', N'Đầm váy công chúa', N'Đầm váy công chúa', 1, 0, 0, 1, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (70, N'Phụ kiện nữ', N'phu-kien-nu', N'50', NULL, NULL, NULL, 1, 0, 0, 1, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (72, N'Đồng hồ - Trang sức', N'dong-ho---trang-suc', N'70', N'Đồng hồ - Trang sức', N'Đồng hồ - Trang sức', N'Đồng hồ - Trang sức', 1, 0, 1, 1, NULL, NULL, N'Đồng hồ - Trang sức', NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (78, N'Chân váy rời', N'chan-vay-roi', N'53', N'Chân váy rời', N'Chân váy rời', N'Chân váy rời', 5, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (79, N'áo crop top', N'ao-crop-top', N'54', N'áo crop top', N'áo crop top', N'áo crop top', 3, 0, 0, 1, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (80, N'quần shot', N'quan-shot', N'55', N'quần shot', N'quần shot', N'quần shot', 1, 0, 1, 1, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (81, N'quần dài', N'quan-dai', N'55', N'quần dài', N'quần dài', N'quần dài', 2, 0, 0, 1, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (82, N'Quần ngố', N'quan-ngo', N'55', N'Quần ngố', N'Quần ngố', N'Quần ngố', 3, 0, 0, 1, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (83, N'Áo khoát _ Vest', N'ao-khoat-_-vest', N'30', N'Áo khoát _ Vest', N'Áo khoát _ Vest', N'Áo khoát _ Vest', 5, 0, 0, 1, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (84, N'Set đồ bộ _  Jumsuit', N'set-do-bo-_--jumsuit', N'30', N'Set đồ bộ _  Jumsuit', N'Set đồ bộ _  Jumsuit', N'Set đồ bộ _  Jumsuit', 4, 0, 0, 1, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (86, N'Túi xách _ Ba lô _ ví', N'tui-xach-_-ba-lo-_-vi', N'50', N'Túi xách _ Ba lô _ ví', N'Túi xách _ Ba lô _ ví', N'Túi xách _ Ba lô _ ví', 2, 0, 0, 1, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (92, N'Giày Thể Thao', N'giay-the-thao', N'51', NULL, NULL, NULL, 1, 0, 0, 1, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (93, N'Giày Búp Bê', N'giay-bup-be', N'51', NULL, NULL, NULL, 2, 0, 0, 1, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (94, N'Giày Cao Gót', N'giay-cao-got', N'51', NULL, NULL, NULL, 3, 0, 0, 1, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (95, N'Giày Sandan', N'giay-sandan', N'51', NULL, NULL, NULL, 4, 0, 0, 1, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (96, N'Dép', N'dep', N'51', NULL, NULL, NULL, 5, 0, 0, 1, N'vi', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GroupMenuSanPham] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [Mota], [NameEn], [TitleEn], [contentEn]) VALUES (97, N'Mũ _ Nón', N'mu-_-non', N'70', NULL, NULL, NULL, 2, 0, 0, 1, N'vi', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[GroupMenuSanPham] OFF
SET IDENTITY_INSERT [dbo].[GroupNews] ON 

INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (81, N'Thời Trang Nam', N'thoi-trang-nam', NULL, N'', N'', N'', 1, 1, 0, 1, N'vi', N'/Uploads/files/thanhtoan/service-2.png', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (82, N'Thời Trang Nữ', N'thoi-trang-nu', NULL, N'', N'', N'', 1, 1, 0, 1, N'vi', N'/Uploads/files/thanhtoan/service-4.png', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (84, N'Áo nam', N'ao-nam', N'81', N'', N'Danh mục 1.1', N'Danh mục 1.1', 1, 1, 0, 1, N'vi', N'/Uploads/files/thanhtoan/service-4.png', N'Danh mục 1.1', N'', N'                                                                                                    ', N'Danh mục 1.1', N'Danh mục 1.1')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (85, N'Áo dài tay', N'ao-dai-tay', N'84 ', N'', N'Danh mục 1.1.1', N'Danh mục 1.1.1', 1, 1, 0, 1, N'vi', N'/Uploads/files/thanhtoan/service-2.png', N'', N'', N'                                                                                                    ', N'Danh mục 1.1.1', N'Danh mục 1.1.1')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (87, N'Áo sơ mi', N'ao-so-mi', N'82', N'', N'', N'', 1, 1, 0, 1, N'vi', N'/Uploads/files/thanhtoan/service-3.png', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (89, N'Áo đầm', N'ao-dam', N'82', N'', N'', N'', 1, 1, 0, 1, N'vi', N'/Uploads/files/thanhtoan/service-3.png', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (92, N'Thời trang Stin', N'thoi-trang-stin', NULL, N'', N'', N'', 1, 1, 0, 1, N'vi', N'/Uploads/files/thanhtoan/service-2.png', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (95, N'Thời trang trẻ', N'thoi-trang-tre', N'92', N'', N'', N'', 1, 0, 0, 1, N'vi', N'/Uploads/files/thanhtoan/service-4.png', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (96, N'Áo ngắn tay', N'ao-ngan-tay', N'84 ', N'', N'', N'', 1, 0, 0, 0, N'vi', N'/Uploads/images/Logo/logo_smoking.png', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (98, N'Quần nam', N'quan-nam', N'81', N'', N'', N'', 1, 0, 0, 1, N'vi', N'/Uploads/images/Logo/logo_smoking.png', N'', N'', N'                                                                                                    ', N'', N'')
INSERT [dbo].[GroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang], [Logogroup], [NameEn], [TitleEn], [ImagesLogo], [content], [contentEn]) VALUES (99, N'Quần bò', N'quan-bo', N'98 ', N'', N'', N'', 1, 0, 0, 1, N'vi', N'/Uploads/images/Logo/logo_smoking.png', N'', N'', N'                                                                                                    ', N'', N'')
SET IDENTITY_INSERT [dbo].[GroupNews] OFF
SET IDENTITY_INSERT [dbo].[GroupNewsNewsDetail] ON 

INSERT [dbo].[GroupNewsNewsDetail] ([Id], [Name], [Tag], [Image], [Content], [Detail], [Date], [Title], [Description], [Keyword], [Priority], [Index], [Active], [ord], [Nguon], [Lang], [Image1], [Image2], [Image3], [Image4], [Images5], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [NameEn], [ContentEn], [DetailEn], [DateView], [Luotxem]) VALUES (3, N'Mourinho gặp lại Chelsea và các trận cầu nảy lửa cuối tuần này', N'mourinho-gap-lai-chelsea-va-cac-tran-cau-nay-lua-cuoi-tuan-nay', N'/Uploads/files/thanhtoan/service-4.png', N'Trận đấu trên sân Stamford Bridge hứa hẹn nhiều khó khăn với Man Utd. Tại Italy, Juventus hành quân đến San Siro với mục tiêu đánh bại AC Milan.', N'<h3>Trận đấu tr&ecirc;n s&acirc;n Stamford Bridge hứa hẹn nhiều kh&oacute; khăn với Man Utd. Tại Italy, Juventus h&agrave;nh qu&acirc;n đến San Siro với mục ti&ecirc;u đ&aacute;nh bại AC Milan.</h3>
<img alt="Mourinho gặp lại Chelsea và các trận cầu nảy lửa cuối tuần này - ảnh thể thao" data-component-caption="&lt;p&gt;
	&lt;strong&gt;Bournemouth - Tottenham&lt;/strong&gt; (&lt;em&gt;18h45, thứ Bảy 22/10&lt;/em&gt;): Phong độ sân nhà của Bournemouth sẽ là mối lo ngại cho thầy trò Mauricio Pochettino khi cuộc đua tranh các vị trí dẫn đầu đang diễn biến phức tạp.&lt;br /&gt;&lt;br /&gt;
	Từ đầu mùa đến nay, Man Utd là đội duy nhất rời sân Vitality với ba điểm. Thầy trò Eddie Howe đang có ba chiến thắng liên tiếp trên sân nhà. &lt;br /&gt;&lt;br /&gt;
	Lần gần nhất Bournemouth đánh bại Tottenham tính ở tất cả các mặt trận là từ tháng 2/1957, tại vòng năm Cup FA. Nhưng đội chủ nhà có cơ sở để hy vọng tạo ra một bất ngờ ở trận đấu sớm vòng chín Ngoại hạng Anh.&lt;/p&gt;" data-reference-id="24210768" id="vne_slide_image_0" src="http://img.f2.thethao.vnecdn.net/2016/10/21/2016-10-17T170707Z-119725627-MT1ACI14643589-RTRMADP-3-SOCCER-CHAMPIONS-LEV-TOT-1477049752_660x0.jpg" /><a href="javascript:;">&nbsp;</a>

<p><strong>Bournemouth - Tottenham</strong>&nbsp;(<em>18h45, thứ Bảy 22/10</em>): Phong độ s&acirc;n nh&agrave; của&nbsp;Bournemouth sẽ l&agrave; mối lo ngại cho thầy tr&ograve;&nbsp;Mauricio Pochettino khi cuộc đua tranh c&aacute;c vị tr&iacute; dẫn đầu đang diễn biến phức tạp.<br />
<br />
Từ đầu m&ugrave;a đến nay, Man Utd l&agrave; đội duy nhất rời s&acirc;n&nbsp;Vitality với ba điểm. Thầy tr&ograve;&nbsp;Eddie Howe đang c&oacute; ba chiến thắng li&ecirc;n tiếp tr&ecirc;n s&acirc;n nh&agrave;.&nbsp;<br />
<br />
Lần gần nhất Bournemouth đ&aacute;nh bại Tottenham t&iacute;nh ở tất cả c&aacute;c mặt trận l&agrave; từ th&aacute;ng 2/1957, tại v&ograve;ng năm Cup FA. Nhưng đội chủ nh&agrave; c&oacute; cơ sở để hy vọng tạo ra một bất ngờ ở trận đấu sớm v&ograve;ng ch&iacute;n Ngoại hạng Anh.</p>
<br />
&nbsp;<br />
<img alt="Mourinho gặp lại Chelsea và các trận cầu nảy lửa cuối tuần này - ảnh thể thao" data-component-caption="&lt;p&gt;
	&lt;strong&gt;Arsenal - Middlesbrough&lt;/strong&gt; (&lt;em&gt;21h thứ Bảy, 22/10&lt;/em&gt;): Arsenal đang có phong độ tốt và hừng hực khí thế sau trận thắng Ludogorets 6-0 ở Champions League.&lt;br /&gt;&lt;br /&gt;
	Mesut Ozil nhận nhiều lời khen sau hat-trick đầu tiên trong sự nghiệp, vào lưới đội bóng Bulgaria. Anh cùng Alexis Sanchez, cầu thủ ghi bàn thắng đẹp ở trận thắng nói trên, hứa hẹn sẽ khiến hàng thủ đội khách có một ngày làm việc vất vả. Arsenal đang có mạch sáu chiến thắng trên tất cả các mặt trận.&lt;br /&gt;&lt;br /&gt;
	Tuy nhiên, đội bóng của HLV Wenger thường nhận kết quả không tốt khi đối đầu với Middlesbrough. Họ chỉ thắng một trong sáu gặp đội chủ sân Riverside trong lịch sử Ngoại hạng Anh. Điều có thể khiến Arsenal tự tin hơn là đoàn quân dưới trướng Aitor Karanka đang không có phong độ tốt. Họ không thắng trận nào trong sáu vòng gần nhất.&lt;br /&gt;&lt;br /&gt;
	Ngày 22/10, Arsene Wenger sẽ kỷ niệm sinh nhật lần thứ 67. Do đó, các cầu thủ Arsenal sẽ có thêm động lực giành chiến thắng làm quà cho ông thầy.&lt;/p&gt;" data-reference-id="24210769" id="vne_slide_image_1" src="http://img.f4.thethao.vnecdn.net/2016/10/21/2016-10-19T204052Z-119911252-MT1ACI14645959-RTRMADP-3-SOCCER-CHAMPIONS-ARS-LUD-1477050298_660x0.jpg" /><a href="javascript:;">&nbsp;</a>

<p><strong>Arsenal -&nbsp;Middlesbrough</strong>&nbsp;(<em>21h thứ Bảy, 22/10</em>): Arsenal đang c&oacute; phong độ tốt v&agrave; hừng hực kh&iacute; thế sau trận thắng&nbsp;Ludogorets 6-0 ở Champions League.<br />
<br />
Mesut Ozil nhận nhiều lời khen sau hat-trick đầu ti&ecirc;n trong sự nghiệp, v&agrave;o lưới đội b&oacute;ng Bulgaria. Anh c&ugrave;ng Alexis Sanchez, cầu thủ ghi b&agrave;n thắng đẹp ở trận thắng n&oacute;i tr&ecirc;n, hứa hẹn sẽ khiến h&agrave;ng thủ đội kh&aacute;ch c&oacute; một ng&agrave;y l&agrave;m việc vất vả. Arsenal đang c&oacute; mạch s&aacute;u chiến thắng tr&ecirc;n tất cả c&aacute;c mặt trận.<br />
<br />
Tuy nhi&ecirc;n, đội b&oacute;ng của HLV Wenger thường nhận kết quả kh&ocirc;ng tốt khi đối đầu với&nbsp;Middlesbrough. Họ chỉ thắng một trong s&aacute;u gặp đội chủ s&acirc;n Riverside trong lịch sử Ngoại hạng Anh. Điều c&oacute; thể khiến Arsenal tự tin hơn l&agrave; đo&agrave;n qu&acirc;n dưới trướng Aitor Karanka đang kh&ocirc;ng c&oacute; phong độ tốt. Họ kh&ocirc;ng thắng trận n&agrave;o trong s&aacute;u v&ograve;ng gần nhất.<br />
<br />
Ng&agrave;y 22/10, Arsene Wenger sẽ kỷ niệm sinh nhật lần thứ 67. Do đ&oacute;, c&aacute;c cầu thủ Arsenal sẽ c&oacute; th&ecirc;m động lực gi&agrave;nh chiến thắng l&agrave;m qu&agrave; cho &ocirc;ng thầy.</p>
<br />
&nbsp;<br />
<img alt="Mourinho gặp lại Chelsea và các trận cầu nảy lửa cuối tuần này - ảnh thể thao" data-component-caption="&lt;p&gt;
	&lt;strong&gt;Liverpool - West Brom &lt;/strong&gt;(&lt;em&gt;23h30 thứ Bảy, 22/10&lt;/em&gt;): Đây là trận đấu mà Daniel Sturridge nhiều khả năng được trao cơ hội và anh phải tận dụng điều đó.&lt;br /&gt;&lt;br /&gt;
	Sturridge chỉ ghi được hai bàn sau tám lần ra sân ở mùa giải này và cả hai đều ở trận đấu với Burton ở Cup Liên đoàn. Đó là lý do Jurgen Klopp thường sử dụng Roberto Firmino đá cao nhất và để Sturridge, một trung phong đích thực, ngồi dự bị.&lt;br /&gt;&lt;br /&gt;
	Tuy nhiên, Sturridge chơi tốt trong trận đấu với Man Utd ở vòng trước. Ngoài ra, duyên ghi bàn của anh vào lưới West Brom sẽ là một yếu tố khiến Klopp nên suy nghĩ về việc có nên trao suất đá chính cho Sturridge hay không. Tiền đạo tuyển Anh ghi bàn trong cả hai trận gặp West Brom khi khoác áo Liverpool.&lt;/p&gt;" data-reference-id="24210770" id="vne_slide_image_2" src="http://img.f2.thethao.vnecdn.net/2016/10/21/2016-10-17T202109Z-119737269-MT1ACI14643783-RTRMADP-3-SOCCER-ENGLAND-LIV-MUN-1477050935_660x0.jpg" /><a href="javascript:;">&nbsp;</a>

<p><strong>Liverpool - West Brom&nbsp;</strong>(<em>23h30 thứ Bảy, 22/10</em>): Đ&acirc;y l&agrave; trận đấu m&agrave;&nbsp;Daniel Sturridge nhiều khả năng được trao cơ hội v&agrave; anh phải tận dụng điều đ&oacute;.<br />
<br />
Sturridge chỉ ghi được hai b&agrave;n sau t&aacute;m lần ra s&acirc;n ở m&ugrave;a giải n&agrave;y v&agrave; cả hai đều ở trận đấu với Burton ở Cup Li&ecirc;n đo&agrave;n. Đ&oacute; l&agrave; l&yacute; do Jurgen Klopp thường sử dụng&nbsp;Roberto Firmino đ&aacute; cao nhất v&agrave; để&nbsp;Sturridge, một trung phong đ&iacute;ch thực, ngồi dự bị.<br />
<br />
Tuy nhi&ecirc;n, Sturridge chơi tốt trong trận đấu với Man Utd ở v&ograve;ng trước. Ngo&agrave;i ra, duy&ecirc;n ghi b&agrave;n của anh v&agrave;o lưới West Brom sẽ l&agrave; một yếu tố khiến Klopp n&ecirc;n suy nghĩ về việc c&oacute; n&ecirc;n trao suất đ&aacute; ch&iacute;nh cho&nbsp;Sturridge hay kh&ocirc;ng.&nbsp;Tiền đạo tuyển Anh ghi b&agrave;n trong cả hai trận gặp West Brom khi kho&aacute;c &aacute;o Liverpool.</p>
<br />
&nbsp;<br />
<img alt="Mourinho gặp lại Chelsea và các trận cầu nảy lửa cuối tuần này - ảnh thể thao" data-component-caption="&lt;p&gt;
	&lt;strong&gt;Man City - Southampton&lt;/strong&gt; (&lt;em&gt;19h30 Chủ Nhật, 23/10&lt;/em&gt;): Sau 10 trận thắng liên tiếp, Man City đang trải qua bốn trận liên tiếp không thể lấy lại cảm giác đó.&lt;br /&gt;&lt;br /&gt;
	Tuy nhiên, Pep Guardiola có thể bớt lo lắng vì năm lần gần nhất tiếp Southampton tại Etihad, Man City đều thắng. Ông cũng chưa phải đối mặt với chỉ trích dù kết quả gần đây của đội không tốt. Người Anh dường như vẫn đang bị mê hoặc bởi phong cách mới mẻ mà HLV người Tây Ban Nha mang lại.&lt;br /&gt;&lt;br /&gt;
	Man City vẫn đang đứng đầu bảng nhưng Arsenal đã cân bằng điểm số với họ trong khi Tottenham chỉ kém một điểm. Nếu tiếp tục không thắng, đội bóng của Guardiola có nguy cơ bị các đối thủ qua mặt. Khi ấy, cựu HLV Barca sẽ được nếm trải sức ép từ truyền thông Anh.&lt;br /&gt;&lt;br /&gt;
	 &lt;/p&gt;" data-reference-id="24210771" id="vne_slide_image_3" src="http://img.f2.thethao.vnecdn.net/2016/10/21/2016-10-19T204231Z-119911351-MT1ACI14645971-RTRMADP-3-SOCCER-CHAMPIONS-FCB-MCI-1477051265_660x0.jpg" /><a href="javascript:;">&nbsp;</a>

<p><strong>Man City - Southampton</strong>&nbsp;(<em>19h30 Chủ Nhật, 23/10</em>): Sau 10 trận thắng li&ecirc;n tiếp, Man City đang trải qua bốn trận li&ecirc;n tiếp kh&ocirc;ng thể lấy lại cảm gi&aacute;c đ&oacute;.<br />
<br />
Tuy nhi&ecirc;n,&nbsp;Pep Guardiola c&oacute; thể bớt lo lắng v&igrave; năm lần gần nhất tiếp Southampton tại Etihad, Man City đều thắng. &Ocirc;ng cũng chưa phải đối mặt với chỉ tr&iacute;ch d&ugrave; kết quả gần đ&acirc;y của đội kh&ocirc;ng tốt. Người Anh dường như vẫn đang bị m&ecirc; hoặc bởi phong c&aacute;ch mới mẻ m&agrave; HLV người T&acirc;y Ban Nha mang lại.<br />
<br />
Man City vẫn đang đứng đầu bảng nhưng Arsenal đ&atilde; c&acirc;n bằng điểm số với họ trong khi Tottenham chỉ k&eacute;m một điểm. Nếu tiếp tục kh&ocirc;ng thắng, đội b&oacute;ng của Guardiola c&oacute; nguy cơ bị c&aacute;c đối thủ qua mặt. Khi ấy, cựu HLV Barca sẽ được nếm trải sức &eacute;p từ truyền th&ocirc;ng Anh.<br />
<br />
&nbsp;</p>
<br />
&nbsp;<br />
<img alt="Mourinho gặp lại Chelsea và các trận cầu nảy lửa cuối tuần này - ảnh thể thao" data-component-caption="&lt;p&gt;
	&lt;strong&gt;Chelsea - Man Utd&lt;/strong&gt; (&lt;em&gt;22h Chủ Nhật, 22/1&lt;/em&gt;0): Trong các đội bóng ở Ngoại hạng Anh, Chelsea là đối thủ mang lại cho Jose Mourinho nhiều cảm xúc nhất khi chạm trán.&lt;br /&gt;&lt;br /&gt;
	HLV người Bồ Đào Nha có thể hận thù pha chút lưu luyến trong chuyến trở lại Stamford Bridge lần này. Chelsea và Mourinho giống như hai thương hiệu gắn liền với nhau. Dù đã cố gắng hòa nhập tại Man Utd, một đội bóng giàu truyền thống khác ở Anh, chiến lược gia 55 tuổi vẫn chưa thể tách rời mối liên hệ với đội bóng London.&lt;br /&gt;&lt;br /&gt;
	Nhưng sự thật là gần một năm trước, đội bóng mà Mourinho ba lần giúp đăng quang Ngoại hạng Anh đã tống cổ ông ra đường. Chỉ bằng cách đánh bại Chelsea, Mourinho mới khẳng định ông đã xóa tình yêu với đội bóng này để hướng đến tương lai ở Man Utd.&lt;br /&gt;&lt;br /&gt;
	Tuy nhiên, Man Utd chỉ thắng hai trong số 19 lần gần nhất hành quân đến Stamford Bridge và trong bảy lần đối đầu gần nhất giữa hai đội, Chelsea không thua trận nào. Hồi năm 2012, Mourinho từng giúp Inter Milan giành chiến thắng trên sân Chelsea. Các CĐV Man Utd hy vọng duyên chiến thắng đó của HLV người Bồ Đào Nha sẽ giúp đội nhà có kết quả tốt trong lần đối đầu này.&lt;/p&gt;" data-reference-id="24210772" id="vne_slide_image_4" src="http://img.f3.thethao.vnecdn.net/2016/10/21/2016-10-20T192236Z-119992956-MT1ACI14646639-RTRMADP-3-SOCCER-EUROPA-MNU-FEN-1477051868_660x0.jpg" /><a href="javascript:;">&nbsp;</a>

<p><strong>Chelsea - Man Utd</strong>&nbsp;(<em>22h Chủ Nhật, 22/1</em>0): Trong c&aacute;c đội b&oacute;ng ở Ngoại hạng Anh, Chelsea l&agrave; đối thủ mang lại cho Jose Mourinho nhiều cảm x&uacute;c nhất khi chạm tr&aacute;n.<br />
<br />
HLV người Bồ Đ&agrave;o Nha c&oacute; thể hận th&ugrave; pha ch&uacute;t lưu luyến trong chuyến trở lại Stamford Bridge lần n&agrave;y. Chelsea v&agrave; Mourinho giống như hai thương hiệu gắn liền với nhau. D&ugrave; đ&atilde; cố gắng h&ograve;a nhập tại Man Utd, một đội b&oacute;ng gi&agrave;u truyền thống kh&aacute;c ở Anh, chiến lược gia 55 tuổi vẫn chưa thể t&aacute;ch rời mối li&ecirc;n hệ với đội b&oacute;ng London.<br />
<br />
Nhưng sự thật l&agrave; gần một năm trước, đội b&oacute;ng m&agrave; Mourinho ba lần gi&uacute;p đăng quang Ngoại hạng Anh đ&atilde; tống cổ &ocirc;ng ra đường. Chỉ bằng c&aacute;ch đ&aacute;nh bại Chelsea, Mourinho mới khẳng định &ocirc;ng đ&atilde; x&oacute;a t&igrave;nh y&ecirc;u với đội b&oacute;ng n&agrave;y để hướng đến tương lai ở Man Utd.<br />
<br />
Tuy nhi&ecirc;n, Man Utd chỉ thắng hai trong số 19 lần gần nhất h&agrave;nh qu&acirc;n đến Stamford Bridge v&agrave; trong bảy lần đối đầu gần nhất giữa hai đội, Chelsea kh&ocirc;ng thua trận n&agrave;o. Hồi năm 2012, Mourinho từng gi&uacute;p Inter Milan gi&agrave;nh chiến thắng tr&ecirc;n s&acirc;n Chelsea. C&aacute;c CĐV Man Utd hy vọng duy&ecirc;n chiến thắng đ&oacute; của HLV người Bồ Đ&agrave;o Nha sẽ gi&uacute;p đội nh&agrave; c&oacute; kết quả tốt trong lần đối đầu n&agrave;y.</p>
<br />
&nbsp;<br />
<img alt="Mourinho gặp lại Chelsea và các trận cầu nảy lửa cuối tuần này - ảnh thể thao" data-component-caption="&lt;p&gt;
	&lt;strong&gt;Valencia - Barca&lt;/strong&gt; (&lt;em&gt;21h15 thứ Bảy, 22/10&lt;/em&gt;): Ba bàn thắng mà Messi ghi vào lưới Man City là một lời cảnh báo cho Valencia trước cuộc so tài cuối tuần này.&lt;/p&gt;
&lt;p&gt;
	Barca trầy trật trong thời gian tiền đạo người Argentina nghỉ thi đấu vì chấn thương, nhưng giai đoạn khó khăn đó đã qua. Cùng với phong độ của Suarez, cầu thủ vừa nhận &lt;a href=&quot;http://thethao.vnexpress.net/tin-tuc/la-liga/suarez-neu-toi-khong-doat-giay-vang-2017-thi-do-se-la-messi-hoac-neymar-3486966.html&quot;&gt;Giày Vàng châu Âu&lt;/a&gt;, và Neymar, hàng thủ đội chủ nhà hứa hẹn sẽ có một ngày làm việc vất vả.&lt;/p&gt;
&lt;p&gt;
	Vấn đề với Barca là họ đang thiếu hụt nhân sự ở hàng thủ. Thủ môn Jasper Cillessen và hậu vệ phải Sergi Roberto vắng mặt trong hai trận gần đây. Jordi Alba và Gerard Pique dính chấn thương ở trận gặp Man City và sẽ nghỉ tới hết tháng. Với Jeremy Mathieu, sau chiếc thẻ đỏ ở trận gặp Man City, cơ hội chiếm suất đá chính của anh gần như không còn.&lt;/p&gt;" data-reference-id="24210773" id="vne_slide_image_5" src="http://img.f1.thethao.vnecdn.net/2016/10/21/2016-10-19T191121Z-119905881-MT1ACI14645564-RTRMADP-3-SOCCER-CHAMPIONS-FCB-MCI-1477052931_660x0.jpg" /><a href="javascript:;">&nbsp;</a>

<p><strong>Valencia - Barca</strong>&nbsp;(<em>21h15 thứ Bảy, 22/10</em>): Ba b&agrave;n thắng m&agrave; Messi ghi v&agrave;o lưới Man City l&agrave; một lời cảnh b&aacute;o cho Valencia trước cuộc so t&agrave;i cuối tuần n&agrave;y.</p>

<p>Barca trầy trật trong thời gian tiền đạo người Argentina nghỉ thi đấu v&igrave; chấn thương, nhưng giai đoạn kh&oacute; khăn đ&oacute; đ&atilde; qua. C&ugrave;ng với phong độ của Suarez, cầu thủ vừa nhận&nbsp;<a href="http://thethao.vnexpress.net/tin-tuc/la-liga/suarez-neu-toi-khong-doat-giay-vang-2017-thi-do-se-la-messi-hoac-neymar-3486966.html">Gi&agrave;y V&agrave;ng ch&acirc;u &Acirc;u</a>, v&agrave; Neymar, h&agrave;ng thủ đội chủ nh&agrave; hứa hẹn sẽ c&oacute; một ng&agrave;y l&agrave;m việc vất vả.</p>

<p>Vấn đề với Barca l&agrave; họ đang thiếu hụt nh&acirc;n sự ở h&agrave;ng thủ. Thủ m&ocirc;n&nbsp;Jasper Cillessen v&agrave; hậu vệ phải Sergi Roberto vắng mặt trong hai trận gần đ&acirc;y.&nbsp;Jordi Alba v&agrave; Gerard Pique d&iacute;nh chấn thương ở trận gặp Man City v&agrave; sẽ nghỉ tới hết th&aacute;ng. Với&nbsp;Jeremy Mathieu, sau chiếc thẻ đỏ ở trận gặp Man City, cơ hội chiếm suất đ&aacute; ch&iacute;nh của anh gần như kh&ocirc;ng c&ograve;n.</p>
<br />
&nbsp;<br />
<img alt="Mourinho gặp lại Chelsea và các trận cầu nảy lửa cuối tuần này - ảnh thể thao" data-component-caption="&lt;p&gt;
	&lt;strong&gt;Sevilla - Atletico Madrid&lt;/strong&gt; (&lt;em&gt;21h15 Chủ Nhật, 23/10&lt;/em&gt;): Đội đầu bảng La Liga sẽ có chuyến làm khách dự báo nhiều khó khăn trên sân Sevilla.&lt;/p&gt;
&lt;p&gt;
	Trận chiến này quyết định đến thứ tự trên đỉnh bảng điểm vì Atletico chỉ đang hơn Sevilla một điểm. Nhà ĐKVĐ Europa League toàn thắng hai trận gần nhất và đang có phong độ tốt. Cầu thủ đang tạo cảm hứng cho lối chơi của họ là Samir Nasri, tiền vệ mượn được từ Man City. Ở trận đấu vòng trước, Sevilla thắng sát nút đội mới lên hạng Leganes.&lt;/p&gt;
&lt;p&gt;
	Trong khi đó, Atletico Madrid vùi dập Granada 7-1 ở vòng trước và tiếp tục thắng Rostov 1-0 ở Champions League hồi giữa tuần. Đội bóng của Diego Simeone vừa chấp nhận họ sẽ không tham gia thị trường chuyển nhượng mùa đông tới theo án phạt của FIFA. Atletico và Real đều bị kỷ luật do chuyển nhượng cầu thủ dưới độ tuổi cho phép.&lt;/p&gt;" data-reference-id="24210774" id="vne_slide_image_6" src="http://img.f2.thethao.vnecdn.net/2016/10/21/2016-10-15T181009Z-477055826-S1BEUHDSZHAB-RTRMADP-3-SOCCER-SPAIN-1477053766_660x0.jpg" /><a href="javascript:;">&nbsp;</a>

<p><strong>Sevilla - Atletico Madrid</strong>&nbsp;(<em>21h15 Chủ Nhật, 23/10</em>): Đội đầu bảng La Liga sẽ c&oacute; chuyến l&agrave;m kh&aacute;ch dự b&aacute;o nhiều kh&oacute; khăn tr&ecirc;n s&acirc;n Sevilla.</p>

<p>Trận chiến n&agrave;y quyết định đến thứ tự tr&ecirc;n đỉnh bảng điểm v&igrave; Atletico chỉ đang hơn Sevilla một điểm. Nh&agrave; ĐKVĐ Europa League to&agrave;n thắng hai trận gần nhất v&agrave; đang c&oacute; phong độ tốt. Cầu thủ đang tạo cảm hứng cho lối chơi của họ l&agrave;&nbsp;Samir Nasri, tiền vệ mượn được từ Man City. Ở trận đấu v&ograve;ng trước, Sevilla thắng s&aacute;t n&uacute;t đội mới l&ecirc;n hạng&nbsp;Leganes.</p>

<p>Trong khi đ&oacute;, Atletico Madrid v&ugrave;i dập&nbsp;Granada 7-1 ở v&ograve;ng trước v&agrave; tiếp tục thắng Rostov 1-0 ở Champions League hồi giữa tuần. Đội b&oacute;ng của Diego Simeone vừa chấp nhận họ sẽ kh&ocirc;ng tham gia thị trường chuyển nhượng m&ugrave;a đ&ocirc;ng tới theo &aacute;n phạt của FIFA. Atletico v&agrave; Real đều bị kỷ luật do chuyển nhượng cầu thủ dưới độ tuổi cho ph&eacute;p.</p>
<br />
&nbsp;<br />
<img alt="Mourinho gặp lại Chelsea và các trận cầu nảy lửa cuối tuần này - ảnh thể thao" data-component-caption="&lt;p&gt;
	&lt;strong&gt;Real Madrid - Athletic Bilbao&lt;/strong&gt; (&lt;em&gt;1h45 thứ Hai, 24/10&lt;/em&gt;): Real Madrid ghi 11 bàn trong hai trận gần nhất nhưng chừng đó vẫn chưa đủ để họ vượt mặt kình địch cùng thành phố.&lt;br /&gt;&lt;br /&gt;
	Atletico đang đứng đầu bảng, hơn Real về hiệu số bàn thắng bại. Do đó, thầy trò Zinedine Zidane đặt mục tiêu thắng càng đậm càng tốt. Đó là điều chẳng tốt đẹp gì với Bilbao. Casemiro, Luka Modric và Sergio Ramos không thể ra sân do chấn thương, nhưng Zidane tự tin đội bóng của ông sẽ chiến thắng nhờ phong độ cao của hàng công.&lt;br /&gt;&lt;br /&gt;
	Bilbao thường thi đấu tệ khi gặp Real, nhưng họ đang có phong độ tốt. Đội bóng xứ Basque đánh bại Genk 2-0 ở Europa League hồi giữa tuần. Aketxe, Balenziaga và Boveda sẽ không góp mặt do chấn thương, nhưng Benat Etxebarria đã có thể trở lại. Tiền đạo Aduriz ghi năm bàn trong bảy trận gần nhất. Anh sẽ là mũi nhọn nguy hiểm bên phía đội khách trận này khi Real vắng Ramos và Casemiro.&lt;/p&gt;" data-reference-id="24210775" id="vne_slide_image_7" src="http://img.f4.thethao.vnecdn.net/2016/10/22/2016-10-18T192920Z-369504042-D1BEUHSTLGAC-RTRMADP-3-SOCCER-CHAMPIONS-MAD-WAR-1477071208_660x0.jpg" /><a href="javascript:;">&nbsp;</a>

<p><strong>Real Madrid -&nbsp;Athletic Bilbao</strong>&nbsp;(<em>1h45 thứ Hai, 24/10</em>): Real Madrid ghi 11 b&agrave;n trong hai trận gần nhất nhưng chừng đ&oacute; vẫn chưa đủ để họ vượt mặt k&igrave;nh địch c&ugrave;ng th&agrave;nh phố.<br />
<br />
Atletico đang đứng đầu bảng, hơn Real về hiệu số b&agrave;n thắng bại. Do đ&oacute;, thầy tr&ograve; Zinedine Zidane đặt mục ti&ecirc;u thắng c&agrave;ng đậm c&agrave;ng tốt. Đ&oacute; l&agrave; điều chẳng tốt đẹp g&igrave; với Bilbao.&nbsp;Casemiro, Luka Modric v&agrave; Sergio Ramos kh&ocirc;ng thể ra s&acirc;n do chấn thương, nhưng Zidane tự tin đội b&oacute;ng của &ocirc;ng sẽ chiến thắng nhờ phong độ cao của h&agrave;ng c&ocirc;ng.<br />
<br />
Bilbao thường thi đấu tệ khi gặp Real, nhưng họ đang c&oacute; phong độ tốt. Đội b&oacute;ng xứ Basque đ&aacute;nh bại Genk 2-0 ở Europa League hồi giữa tuần.&nbsp;Aketxe, Balenziaga v&agrave; Boveda sẽ kh&ocirc;ng g&oacute;p mặt do chấn thương, nhưng&nbsp;Benat Etxebarria đ&atilde; c&oacute; thể trở lại. Tiền đạo&nbsp;Aduriz ghi năm b&agrave;n trong bảy trận gần nhất. Anh sẽ l&agrave; mũi nhọn nguy hiểm b&ecirc;n ph&iacute;a đội kh&aacute;ch trận n&agrave;y khi Real vắng Ramos v&agrave; Casemiro.</p>
<br />
&nbsp;<br />
<img alt="Mourinho gặp lại Chelsea và các trận cầu nảy lửa cuối tuần này - ảnh thể thao" data-component-caption="&lt;p&gt;
	&lt;strong&gt;AC Milan - Juventus&lt;/strong&gt; (&lt;em&gt;1h45 Chủ Nhật, 23/10&lt;/em&gt;): Bất bại trong năm trận gần nhất, AC Milan đang hồi sinh mạnh mẽ dưới thời tân HLV Vincenzo Montella.&lt;br /&gt;&lt;br /&gt;
	Năm chiến thắng sau tám vòng, AC Milan đang đứng thứ ba tại Serie A, kém Juventus năm điểm trước trận đại chiến cuối tuần này. Đây là khởi đầu tốt nhất của Milan tính từ năm 2010. Tuần trước, họ ra sân với đội hình ít tuổi nhất Serie A: 24 tuổi và 231 ngày.&lt;br /&gt;&lt;br /&gt;
	Juventus thắng sáu trận gần nhất ở Serie A và đánh bại Milan trong chín lần gặp mặt gần nhất, trong đó có trận chung kết Cup Italy mùa trước. Tất nhiên, đội bóng của Max Allegri vẫn nằm cửa trên. Đây là thử thách thực sự với đội bóng trẻ trung của Montella, nhưng Juventus rõ ràng không thể xem thường năng lượng mà Milan đang sở hữu. &lt;/p&gt;" data-reference-id="24210776" id="vne_slide_image_8" src="http://img.f2.thethao.vnecdn.net/2016/10/22/ac-milan-striker-carlos-bacca-r-competes-for-the-ball-against-juventus-leonardo-bonucci-1477072068_660x0.jpg" /><a href="javascript:;">&nbsp;</a>

<p><strong>AC Milan - Juventus</strong>&nbsp;(<em>1h45 Chủ Nhật, 23/10</em>): Bất bại trong năm trận gần nhất, AC Milan đang hồi sinh mạnh mẽ dưới thời t&acirc;n HLV&nbsp;Vincenzo Montella.<br />
<br />
Năm chiến thắng sau t&aacute;m v&ograve;ng, AC Milan đang đứng thứ ba tại Serie A, k&eacute;m Juventus năm điểm trước trận đại chiến cuối tuần n&agrave;y. Đ&acirc;y l&agrave; khởi đầu tốt nhất của Milan t&iacute;nh từ năm 2010. Tuần trước, họ ra s&acirc;n với đội h&igrave;nh &iacute;t tuổi nhất Serie A:&nbsp;24 tuổi v&agrave; 231 ng&agrave;y.<br />
<br />
Juventus thắng s&aacute;u trận gần nhất ở Serie A v&agrave; đ&aacute;nh bại Milan trong ch&iacute;n lần gặp mặt gần nhất, trong đ&oacute; c&oacute; trận chung kết Cup Italy m&ugrave;a trước. Tất nhi&ecirc;n, đội b&oacute;ng của Max Allegri vẫn nằm cửa tr&ecirc;n. Đ&acirc;y l&agrave; thử th&aacute;ch thực sự với đội b&oacute;ng trẻ trung của Montella, nhưng Juventus r&otilde; r&agrave;ng kh&ocirc;ng thể xem thường năng lượng m&agrave; Milan đang sở hữu.&nbsp;</p>
<br />
&nbsp;<br />
<img alt="Mourinho gặp lại Chelsea và các trận cầu nảy lửa cuối tuần này - ảnh thể thao" data-component-caption="&lt;p&gt;
	&lt;strong&gt;Bayern - Moenchengladbach&lt;/strong&gt; (&lt;em&gt;23h30 thứ Bảy, 23/10&lt;/em&gt;): Bayern Munich đang rất khát một chiến thắng sau kết quả hòa ở hai trận Bundesliga gần nhất.&lt;br /&gt;&lt;br /&gt;
	Đoàn quân của Carlo Ancelotti đánh bại PSV Eindhoven 4-1 ở Champions League để chấm dứt chuỗi ba trận không thắng. Tuy nhiên, họ sẽ đụng một đối thủ khó nhằn khi trở lại Bundesliga là Moenchengladbach. &lt;br /&gt;&lt;br /&gt;
	Chỉ đứng thứ 11 và hòa đội áp chót Hamburg 0-0 vòng trước, nhưng các cầu thủ Moenchengladbach có tâm lý tốt nhờ trận thắng Celtic 2-0 ở Champions League. Kết quả đó giúp họ chấm dứt chuỗi ba trận không thắng và lấy lại sự tự tin trước chuyến làm khách trên sân Allianz Arena.&lt;br /&gt;
	 &lt;/p&gt;" data-reference-id="24210777" id="vne_slide_image_9" src="http://img.f3.thethao.vnecdn.net/2016/10/22/2016-10-19T203323Z-1363827519-LR1ECAJ1L3C7V-RTRMADP-3-SOCCER-CHAMPIONS-BAY-PSV-1477072831_660x0.jpg" /><a href="javascript:;">&nbsp;</a>

<p><strong>Bayern -&nbsp;Moenchengladbach</strong>&nbsp;(<em>23h30 thứ Bảy, 23/10</em>):&nbsp;Bayern Munich đang rất kh&aacute;t một chiến thắng sau kết quả h&ograve;a ở hai trận Bundesliga gần nhất.<br />
<br />
Đo&agrave;n qu&acirc;n của Carlo Ancelotti đ&aacute;nh bại&nbsp;PSV Eindhoven 4-1 ở Champions League để chấm dứt chuỗi ba trận kh&ocirc;ng thắng. Tuy nhi&ecirc;n, họ sẽ đụng một đối thủ kh&oacute; nhằn khi trở lại Bundesliga l&agrave; Moenchengladbach.&nbsp;<br />
<br />
Chỉ đứng thứ 11 v&agrave; h&ograve;a đội &aacute;p ch&oacute;t Hamburg 0-0 v&ograve;ng trước, nhưng c&aacute;c cầu thủ Moenchengladbach c&oacute; t&acirc;m l&yacute; tốt nhờ trận thắng Celtic 2-0 ở Champions League. Kết quả đ&oacute; gi&uacute;p họ chấm dứt chuỗi ba trận kh&ocirc;ng thắng v&agrave; lấy lại sự tự tin trước chuyến l&agrave;m kh&aacute;ch tr&ecirc;n s&acirc;n Allianz Arena.<br />
&nbsp;</p>
<br />
&nbsp;<br />
<img alt="Mourinho gặp lại Chelsea và các trận cầu nảy lửa cuối tuần này - ảnh thể thao" data-component-caption="&lt;p&gt;
	&lt;strong&gt;PSG - Marseille&lt;/strong&gt; (&lt;em&gt;1h45 thứ Hai, 24/10&lt;/em&gt;): Trận đấu được chờ đợi nhất vòng 10 Ligue 1 tuần này sẽ là cuộc chạm trán duyên nợ giữa PSG và Marseille.&lt;br /&gt;&lt;br /&gt;
	PSG khởi đầu mùa giải chậm chạp dưới quyền tân HLV Unai Emery. Phong độ của họ ngày càng tốt lên, nhưng đội bóng Paris chưa thể lấy lại vị trí đầu bảng quen thuộc từ tay Nice. PSG thắng bốn trong năm trận gần nhất. Edinson Cavani ghi 13 bàn trong 11 trận gần đây, một hiệu suất rất cao.&lt;br /&gt;&lt;br /&gt;
	Thực tế, tin tức khiến người hâm mộ Marseille quân tâm nhiều nhất lúc này không phải là trận đấu với PSG. Đội bóng này vừa đổi chủ sở hữu. Frank McCourt, doanh nhân người Mỹ, mua lại Marseille với giá 48,9 triệu đôla. Ở ghế HLV trưởng, Franck Passi cũng vừa được thay thế bằng một cái tên hứa hẹn hơn là Rudi Garcia. Người hâm mộ CLB thành phố cảng hy vọng sự đổi mới này sẽ giúp đội bóng cải thiện phong độ, thoát khỏi vị trí thứ 12 trên bảng điểm.  &lt;/p&gt;" data-reference-id="24210778" id="vne_slide_image_10" src="http://img.f1.thethao.vnecdn.net/2016/10/22/2016-10-15T153134Z-1898902413-D1AEUHDEXIAA-RTRMADP-3-SOCCER-FRANCE-1477073659_660x0.jpg" /><a href="javascript:;">&nbsp;</a>

<p><strong>PSG - Marseille</strong>&nbsp;(<em>1h45 thứ Hai, 24/10</em>): Trận đấu được chờ đợi nhất v&ograve;ng 10 Ligue 1 tuần n&agrave;y sẽ l&agrave; cuộc chạm tr&aacute;n duy&ecirc;n nợ giữa PSG v&agrave; Marseille.<br />
<br />
PSG khởi đầu m&ugrave;a giải chậm chạp dưới quyền t&acirc;n HLV&nbsp;Unai Emery. Phong độ của họ ng&agrave;y c&agrave;ng tốt l&ecirc;n, nhưng đội b&oacute;ng Paris chưa thể lấy lại vị tr&iacute; đầu bảng quen thuộc từ tay Nice. PSG thắng bốn trong năm trận gần nhất. Edinson Cavani ghi 13 b&agrave;n trong 11 trận gần đ&acirc;y, một hiệu suất rất cao.<br />
<br />
Thực tế, tin tức khiến người h&acirc;m mộ&nbsp;Marseille qu&acirc;n t&acirc;m nhiều nhất l&uacute;c n&agrave;y kh&ocirc;ng phải l&agrave; trận đấu với PSG. Đội b&oacute;ng n&agrave;y vừa đổi chủ sở hữu.&nbsp;Frank McCourt, doanh nh&acirc;n người Mỹ, mua lại Marseille với gi&aacute; 48,9 triệu đ&ocirc;la. Ở ghế HLV trưởng, Franck Passi cũng vừa được thay thế bằng một c&aacute;i t&ecirc;n hứa hẹn hơn l&agrave; Rudi Garcia. Người h&acirc;m mộ CLB th&agrave;nh phố cảng hy vọng sự đổi mới n&agrave;y sẽ gi&uacute;p đội b&oacute;ng cải thiện phong độ, tho&aacute;t khỏi vị tr&iacute; thứ 12 tr&ecirc;n bảng điểm. &nbsp;</p>
', CAST(0x0000A6A8008F021F AS DateTime), N'', N'Trận đấu trên sân Stamford Bridge hứa hẹn nhiều khó khăn với Man Utd. Tại Italy, Juventus hành quân đến San Siro với mục tiêu đánh bại AC Milan.', N'Trận đấu trên sân Stamford Bridge hứa hẹn nhiều khó khăn với Man Utd. Tại Italy, Juventus hành quân đến San Siro với mục tiêu đánh bại AC Milan.', 2, 1, 1, 1, N'Vnexpress.net', N'vi', N'/Uploads/images/Logo/Ico.jpg', N'/Uploads/images/Logo/logo_smoking.png', N'/Uploads/images/Logo/no-image.jpg', N'/Uploads/files/thanhtoan/service-2.png', N'/Uploads/files/thanhtoan/service-1.png', N'99', N'thoi-trang-nam', N'quan-nam', N'quan-bo', N'', N'', N'', CAST(0x0000A6A700EA2A77 AS DateTime), 0)
INSERT [dbo].[GroupNewsNewsDetail] ([Id], [Name], [Tag], [Image], [Content], [Detail], [Date], [Title], [Description], [Keyword], [Priority], [Index], [Active], [ord], [Nguon], [Lang], [Image1], [Image2], [Image3], [Image4], [Images5], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [NameEn], [ContentEn], [DetailEn], [DateView], [Luotxem]) VALUES (4, N'Messi văng tục với CĐV Valencia sau khi ghi bàn', N'messi-vang-tuc-voi-cdv-valencia-sau-khi-ghi-ban', N'/Uploads/files/thanhtoan/service-2.png', N'Tiền đạo của Barca hét lên khán đài để đáp trả hành động ném chai nước vào Neymar và Suarez từ các CĐV Valencia.', N'<h3>Tiền đạo của Barca h&eacute;t l&ecirc;n kh&aacute;n đ&agrave;i để đ&aacute;p trả h&agrave;nh động n&eacute;m chai nước v&agrave;o Neymar v&agrave; Suarez từ c&aacute;c CĐV Valencia.</h3>

<ul>
	<li><a alt="Messi ghi bàn quyết định ở phút bù giờ, Barca trở lại dẫn đầu Liga" href="http://thethao.vnexpress.net/tin-tuc/tuong-thuat/messi-ghi-ban-quyet-dinh-o-phut-bu-gio-barca-tro-lai-dan-dau-liga-3487793.html?utm_source=detail&amp;utm_medium=box_relatedtop&amp;utm_campaign=boxtracking" title="Messi ghi bàn quyết định ở phút bù giờ, Barca trở lại dẫn đầu Liga">Messi ghi b&agrave;n quyết định ở ph&uacute;t b&ugrave; giờ, Barca trở lại dẫn đầu Liga</a>&nbsp;/&nbsp;<a alt="HLV Prandelli: ''Nghĩ cách ngăn chặn Messi là vô ích''" href="http://thethao.vnexpress.net/tin-tuc/la-liga/hlv-prandelli-nghi-cach-ngan-chan-messi-la-vo-ich-3487549.html?utm_source=detail&amp;utm_medium=box_relatedtop&amp;utm_campaign=boxtracking" title="HLV Prandelli: ''Nghĩ cách ngăn chặn Messi là vô ích''">HLV Prandelli: &#39;Nghĩ c&aacute;ch ngăn chặn Messi l&agrave; v&ocirc; &iacute;ch&#39;</a></li>
</ul>

<p>Lionel Messi ấn định tỷ số tr&ecirc;n chấm phạt đền ở ph&uacute;t b&ugrave; giờ hiệp hai, gi&uacute;p Barca thắng s&aacute;t n&uacute;t Valencia 3-2 tại v&ograve;ng ch&iacute;n La Liga. Sau đ&oacute;, anh c&ugrave;ng c&aacute;c đồng đội mừng b&agrave;n thắng ngay gần chỗ ngồi của c&aacute;c CĐV đội chủ nh&agrave;. Cay c&uacute; v&igrave; đội nh&agrave; để thua ph&uacute;t ch&oacute;t, một số CĐV qu&aacute; kh&iacute;ch đ&atilde; n&eacute;m nhiều vật thể xuống chỗ cầu thủ Barca.</p>

<p>Một chai nước rơi tr&uacute;ng đầu Neymar, trong khi&nbsp;Luis Suarez cũng ra vẻ đau đớn v&agrave; ng&atilde; xuống s&acirc;n. Chứng kiến điều n&agrave;y, Messi quay lại ph&iacute;a kh&aacute;n đ&agrave;i, c&agrave;ng ăn mừng mạnh hơn đồng thời văng tục về ph&iacute;a c&aacute;c CĐV đối phương.</p>

<table align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="messi-vang-tuc-voi-cdv-valencia-sau-khi-ghi-ban" data-natural-width="500" data-pwidth="470.40625" data-width="500" src="http://img.f1.thethao.vnecdn.net/2016/10/23/Untitled-1-4841-1477161505.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>Messi văng tục với CĐV trong khi Neymar v&agrave; Suarez đang nằm s&acirc;n. Ảnh:&nbsp;<em>David Ramos</em>.</p>
			</td>
		</tr>
	</tbody>
</table>

<p>H&agrave;nh động của ng&ocirc;i sao 29 tuổi bị m&aacute;y quay ghi lại. Messi chửi những c&acirc;u th&ocirc; tục bằng tiếng T&acirc;y Ban Nha.&nbsp;</p>

<p>Cả Neymar lẫn Suarez đều kh&ocirc;ng gặp chấn thương nghi&ecirc;m trọng.&nbsp;Paco Alcacer, người bị một t&uacute;i hạt hướng dương rơi tr&uacute;ng trước đ&oacute;, cũng kh&ocirc;ng hề hấn g&igrave;.&nbsp;</p>

<p>Alcacer được Barca chi&ecirc;u mộ từ Valencia h&egrave; vừa rồi v&agrave; anh đ&atilde; nhận được sự ch&agrave;o đ&oacute;n đặc biệt từ CĐV đội b&oacute;ng cũ. Tiền vệ 23 tuổi n&agrave;y ngồi dự bị v&agrave; bị c&aacute;c CĐV Valencia chế giễu, n&eacute;m đồ vật tr&uacute;ng mặt anh.</p>
<iframe allowfullscreen="" frameborder="0" height="270" id="player_746284" src="http://video.vnexpress.net/parser.html?id=103525&amp;t=2&amp;ft=video&amp;si=1002565&amp;ap=0&amp;ishome=0&amp;player_id=746284" width="480"></iframe>

<p>Băng ghi h&igrave;nh cũng cho thấy cảnh HLV Luis Enrique nổi giận ngo&agrave;i đường bi&ecirc;n khi chứng kiến c&aacute;c học tr&ograve; bị CĐV đối thủ rủa xả trong cả trận đấu. Tuy nhi&ecirc;n, &ocirc;ng kh&ocirc;ng n&oacute;i về việc n&agrave;y trong buổi họp b&aacute;o. HLV của Valencia&nbsp;Cesare Prandelli th&igrave; khẳng định &ocirc;ng kh&ocirc;ng thấy vụ việc n&agrave;y.</p>
', CAST(0x0000A6A800B84CC5 AS DateTime), N'', N'Tiền đạo của Barca hét lên khán đài để đáp trả hành động ném chai nước vào Neymar và Suarez từ các CĐV Valencia.', N'Tiền đạo của Barca hét lên khán đài để đáp trả hành động ném chai nước vào Neymar và Suarez từ các CĐV Valencia.', 1, 1, 1, 2, N'Vĩnh San', N'vi', N'/Uploads/files/thanhtoan/service-1.png', N'/Uploads/files/thanhtoan/service-2.png', N'/Uploads/images/Logo/Ico.jpg', N'/Uploads/images/Logo/logo_smoking.png', N'/Uploads/files/thanhtoan/service-4.png', N'85', N'thoi-trang-nam', N'ao-nam', N'ao-dai-tay', N'Messi văng tục với CĐV Valencia sau khi ghi bàn', N'Tiền đạo của Barca hét lên khán đài để đáp trả hành động ném chai nước vào Neymar và Suarez từ các CĐV Valencia.', N'Tiền đạo của Barca h&eacute;t l&ecirc;n kh&aacute;n đ&agrave;i để đ&aacute;p trả h&agrave;nh động n&eacute;m chai nước v&agrave;o Neymar v&agrave; Suarez từ c&aacute;c CĐV Valencia.', CAST(0x0000A6A80090E18F AS DateTime), 0)
INSERT [dbo].[GroupNewsNewsDetail] ([Id], [Name], [Tag], [Image], [Content], [Detail], [Date], [Title], [Description], [Keyword], [Priority], [Index], [Active], [ord], [Nguon], [Lang], [Image1], [Image2], [Image3], [Image4], [Images5], [GroupNewsCatTag], [Cateprolevel1], [Cateprolevel2], [Cateprolevel3], [NameEn], [ContentEn], [DetailEn], [DateView], [Luotxem]) VALUES (5, N'HLV Hoàng Anh Tuấn: ''U19 Việt Nam không ngán Bahrain, đủ sức vào bán kết''', N'hlv-hoang-anh-tuan-u19-viet-nam-khong-ngan-bahrain-du-suc-vao-ban-ket', N'/Uploads/files/thanhtoan/service-2.png', N'HLV đội U19 Việt Nam tin các học trò có thể tạo ra bất ngờ trong trận tứ kết giải U19 châu Á hôm nay, nơi đội chiến thắng sẽ giành vé dự U20 World Cup 2017.', N'<p>&quot;Myanmar từng gi&agrave;nh v&eacute; dự U20 World Cup th&igrave; Việt Nam cũng c&oacute; thể l&agrave;m được. Bahrain l&agrave; chủ nh&agrave;, nắm nhiều lợi thế trong tay. Nhưng ch&uacute;ng t&ocirc;i đ&atilde; chuẩn bị rất kỹ cho trận đấu v&agrave; sẵn s&agrave;ng để tạo bất ngờ. Vũ kh&iacute; lớn nhất của Việt Nam l&agrave; tinh thần&quot;, HLV Ho&agrave;ng Anh Tuấn chia sẻ trước trận đấu.</p>

<p>&Ocirc;ng sau đ&oacute; nhấn mạnh: &quot;C&aacute;c cầu thủ của t&ocirc;i đến đ&acirc;y kh&ocirc;ng phải để du lịch. Họ tập luyện chăm chỉ v&agrave; lu&ocirc;n thi đấu hết m&igrave;nh&quot;.</p>

<table align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="hlv-hoang-anh-tuan-u19-viet-nam-khong-ngan-bahrain-du-suc-vao-ban-ket" data-natural-width="500" data-pwidth="470.40625" data-width="500" src="http://img.f1.thethao.vnecdn.net/2016/10/22/hopbaovn-bahrain-8209-1477138661.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>HLV Ho&agrave;ng Anh Tuấn (phải) g&acirc;y bất ngờ lớn khi c&ugrave;ng U19 Việt Nam đ&aacute;nh bại Triều Ti&ecirc;n 2-1, ho&agrave; UAE 1-0 v&agrave; cầm ch&acirc;n Iraq với tỷ số 0-0 để gi&agrave;nh v&eacute; v&agrave;o tứ kết. Ảnh:&nbsp;<em>AFC</em>.</p>
			</td>
		</tr>
	</tbody>
</table>

<p>Việt Nam g&acirc;y bất ngờ lớn khi vượt UAE v&agrave; Triều Ti&ecirc;n để c&ugrave;ng Iraq gi&agrave;nh v&eacute; đi tiếp tại bảng B. Đ&acirc;y l&agrave; lần đầu ti&ecirc;n b&oacute;ng đ&aacute; Việt Nam lọt v&agrave;o tứ kết giải U19 ch&acirc;u &Aacute;. S&aacute;u lần dự giải, U19 Việt Nam đều bị loại ngay từ v&ograve;ng bảng, thậm ch&iacute; kh&ocirc;ng kiếm nổi một trận thắng.</p>

<p>Chiến c&ocirc;ng của thầy tr&ograve; HLV Ho&agrave;ng Anh Tuấn năm nay c&agrave;ng đặc biệt hơn, v&igrave; tại giải đấu ở Bahrain, Việt Nam l&agrave; đại diện duy nhất của Đ&ocirc;ng Nam &Aacute; tiến tới v&ograve;ng đấu loại trực tiếp.</p>

<p>&quot;Ch&uacute;ng t&ocirc;i đến từ Đ&ocirc;ng Nam &Aacute;. Ch&uacute;ng t&ocirc;i hy vọng đội sẽ g&oacute;p phần thay đổi bản đồ b&oacute;ng đ&aacute; khu vực. T&ocirc;i cũng mong tương lai c&aacute;c đội b&oacute;ng của ch&acirc;u &Aacute; c&oacute; thể thay đổi bản đồ b&oacute;ng đ&aacute; thế giới&quot;, HLV Ho&agrave;ng Anh Tuấn n&oacute;i th&ecirc;m.</p>

<p>Tại giải n&agrave;y, bốn đội v&agrave;o b&aacute;n kết được trao suất dự U20 World Cup diễn ra v&agrave;o năm sau tại H&agrave;n Quốc.</p>
', CAST(0x0000A6A900C87304 AS DateTime), N'', N'HLV đội U19 Việt Nam tin các học trò có thể tạo ra bất ngờ trong trận tứ kết giải U19 châu Á hôm nay, nơi đội chiến thắng sẽ giành vé dự U20 World Cup 2017.', N'HLV đội U19 Việt Nam tin các học trò có thể tạo ra bất ngờ trong trận tứ kết giải U19 châu Á hôm nay, nơi đội chiến thắng sẽ giành vé dự U20 World Cup 2017.', 1, 1, 1, 1, N'Vnexpress.net', N'vi', N'', N'', N'', N'', N'', N'85', N'thoi-trang-nam', N'ao-nam', N'ao-dai-tay', N'HLV Hoàng Anh Tuấn: ''U19 Việt Nam không ngán Bahrain, đủ sức vào bán kết''', N'HLV đội U19 Việt Nam tin các học trò có thể tạo ra bất ngờ trong trận tứ kết giải U19 châu Á hôm nay, nơi đội chiến thắng sẽ giành vé dự U20 World Cup 2017.', N'<p>&quot;Myanmar từng gi&agrave;nh v&eacute; dự U20 World Cup th&igrave; Việt Nam cũng c&oacute; thể l&agrave;m được. Bahrain l&agrave; chủ nh&agrave;, nắm nhiều lợi thế trong tay. Nhưng ch&uacute;ng t&ocirc;i đ&atilde; chuẩn bị rất kỹ cho trận đấu v&agrave; sẵn s&agrave;ng để tạo bất ngờ. Vũ kh&iacute; lớn nhất của Việt Nam l&agrave; tinh thần&quot;, HLV Ho&agrave;ng Anh Tuấn chia sẻ trước trận đấu.</p>

<p>&Ocirc;ng sau đ&oacute; nhấn mạnh: &quot;C&aacute;c cầu thủ của t&ocirc;i đến đ&acirc;y kh&ocirc;ng phải để du lịch. Họ tập luyện chăm chỉ v&agrave; lu&ocirc;n thi đấu hết m&igrave;nh&quot;.</p>

<table align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody>
		<tr>
			<td><img alt="hlv-hoang-anh-tuan-u19-viet-nam-khong-ngan-bahrain-du-suc-vao-ban-ket" data-natural-width="500" data-pwidth="470.40625" data-width="500" src="http://img.f1.thethao.vnecdn.net/2016/10/22/hopbaovn-bahrain-8209-1477138661.jpg" /></td>
		</tr>
		<tr>
			<td>
			<p>HLV Ho&agrave;ng Anh Tuấn (phải) g&acirc;y bất ngờ lớn khi c&ugrave;ng U19 Việt Nam đ&aacute;nh bại Triều Ti&ecirc;n 2-1, ho&agrave; UAE 1-0 v&agrave; cầm ch&acirc;n Iraq với tỷ số 0-0 để gi&agrave;nh v&eacute; v&agrave;o tứ kết. Ảnh:&nbsp;<em>AFC</em>.</p>
			</td>
		</tr>
	</tbody>
</table>

<p>Việt Nam g&acirc;y bất ngờ lớn khi vượt UAE v&agrave; Triều Ti&ecirc;n để c&ugrave;ng Iraq gi&agrave;nh v&eacute; đi tiếp tại bảng B. Đ&acirc;y l&agrave; lần đầu ti&ecirc;n b&oacute;ng đ&aacute; Việt Nam lọt v&agrave;o tứ kết giải U19 ch&acirc;u &Aacute;. S&aacute;u lần dự giải, U19 Việt Nam đều bị loại ngay từ v&ograve;ng bảng, thậm ch&iacute; kh&ocirc;ng kiếm nổi một trận thắng.</p>

<p>Chiến c&ocirc;ng của thầy tr&ograve; HLV Ho&agrave;ng Anh Tuấn năm nay c&agrave;ng đặc biệt hơn, v&igrave; tại giải đấu ở Bahrain, Việt Nam l&agrave; đại diện duy nhất của Đ&ocirc;ng Nam &Aacute; tiến tới v&ograve;ng đấu loại trực tiếp.</p>

<p>&quot;Ch&uacute;ng t&ocirc;i đến từ Đ&ocirc;ng Nam &Aacute;. Ch&uacute;ng t&ocirc;i hy vọng đội sẽ g&oacute;p phần thay đổi bản đồ b&oacute;ng đ&aacute; khu vực. T&ocirc;i cũng mong tương lai c&aacute;c đội b&oacute;ng của ch&acirc;u &Aacute; c&oacute; thể thay đổi bản đồ b&oacute;ng đ&aacute; thế giới&quot;, HLV Ho&agrave;ng Anh Tuấn n&oacute;i th&ecirc;m.</p>

<p>Tại giải n&agrave;y, bốn đội v&agrave;o b&aacute;n kết được trao suất dự U20 World Cup diễn ra v&agrave;o năm sau tại H&agrave;n Quốc.</p>
', CAST(0x0000A6A800BA8162 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[GroupNewsNewsDetail] OFF
SET IDENTITY_INSERT [dbo].[GroupSupport] ON 

INSERT [dbo].[GroupSupport] ([Id], [Name], [Ord], [Active], [Lang], [NameEn]) VALUES (1, N'Hỗ trợ kinh doanh', 1, 1, N'vi', NULL)
SET IDENTITY_INSERT [dbo].[GroupSupport] OFF
SET IDENTITY_INSERT [dbo].[Html] ON 

INSERT [dbo].[Html] ([id], [type], [Active], [Lang], [Ten], [Html_content], [TenEn], [Html_contentEn], [images]) VALUES (35, 4, 1, N'vi', N'Thông tin', N'Trang soạn thảo thông tin', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Html] OFF
SET IDENTITY_INSERT [dbo].[information] ON 

INSERT [dbo].[information] ([Id], [Name], [Image], [Target], [Content], [Position], [Click], [Ord], [Active], [Lang], [Detail], [Title], [Description], [Keyword], [Image1], [Image2], [Image3], [Image4], [Image5], [Index], [Priority], [Tag], [NameEn], [ContentEn], [DetailEn]) VALUES (2, N'Tiêu đề tin Trang Chủ tiếng việt', N'/Uploads/images/Logo/logo_smoking.png', N'', N'', 0, 0, 1, 1, N'vi', N'Nội dung b&agrave;i đăng tiếng việt', N'', N'Seo bài viết cho trang chủ', N'Từ khóa bài viết', N'', N'', N'', N'', N'', 1, 1, N'', N'Tiêu đề tin Trang Chủ tiếng Anh', N'', N'Nội dung b&agrave;i đăng tiếng anh')
INSERT [dbo].[information] ([Id], [Name], [Image], [Target], [Content], [Position], [Click], [Ord], [Active], [Lang], [Detail], [Title], [Description], [Keyword], [Image1], [Image2], [Image3], [Image4], [Image5], [Index], [Priority], [Tag], [NameEn], [ContentEn], [DetailEn]) VALUES (3, N'Tiêu đề tin Về Chúng Tôi tiếng việt', N'/Uploads/images/Logo/logo_smoking.png', N'', N'', 0, 0, 1, 1, N'vi', N'Nội dung b&agrave;i đăng tiếng việt', N'', N'Seo bài viết cho trang chủ', N'Từ khóa bài viết', N'', N'', N'', N'', N'', 2, 1, N'', N'Tiêu đề tin Về Chúng Tôi tiếng Anh', N'', N'Nội dung b&agrave;i đăng tiếng anh')
SET IDENTITY_INSERT [dbo].[information] OFF
SET IDENTITY_INSERT [dbo].[Kichthuoc] ON 

INSERT [dbo].[Kichthuoc] ([ID], [Kichthuoc], [Vitri], [Hienthi]) VALUES (8, N'XHAN43543', 300000, 1)
INSERT [dbo].[Kichthuoc] ([ID], [Kichthuoc], [Vitri], [Hienthi]) VALUES (9, N'FASHIONELVA', 100000, 1)
SET IDENTITY_INSERT [dbo].[Kichthuoc] OFF
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
SET IDENTITY_INSERT [dbo].[Mausac] ON 

INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn]) VALUES (1, N'Đỏ', N'/Images/images/Mausac/do.gif', N'vi        ', NULL)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn]) VALUES (3, N'Vàng', N'/Images/images/Mausac/vang.gif', N'vi        ', NULL)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn]) VALUES (4, N'Cam', N'/Images/images/Mausac/cam.gif', N'vi        ', NULL)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn]) VALUES (5, N'Da', N'/Images/images/Mausac/da.gif', N'vi        ', NULL)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn]) VALUES (6, N'Da Trời', N'/Images/images/Mausac/datroi.gif', N'vi        ', NULL)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn]) VALUES (7, N'Đen', N'/Images/images/Mausac/den.gif', N'vi        ', NULL)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn]) VALUES (8, N'Hồng', N'/Images/images/Mausac/hong.gif', N'vi        ', NULL)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn]) VALUES (9, N'Màu Lá Cây', N'/Images/images/Mausac/la.gif', N'vi        ', NULL)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn]) VALUES (10, N'Nâu Nhạc', N'/Images/images/Mausac/naunhat.gif', N'vi        ', NULL)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn]) VALUES (11, N'Màu Sữa', N'/Images/images/Mausac/sua.gif', N'vi        ', NULL)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn]) VALUES (12, N'Tím', N'/Images/images/Mausac/tim.gif', N'vi        ', NULL)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn]) VALUES (13, N'Màu Xám', N'/Images/images/Mausac/xam.gif', N'vi        ', NULL)
INSERT [dbo].[Mausac] ([IDmau], [Tenmau], [Hinhanh], [Lang], [TenmauEn]) VALUES (14, N'Xanh Lam', N'/Images/images/Mausac/xanhlam.gif', N'vi        ', N'Xanh Lam')
SET IDENTITY_INSERT [dbo].[Mausac] OFF
SET IDENTITY_INSERT [dbo].[mautuychon] ON 

INSERT [dbo].[mautuychon] ([id], [tenmau], [mamau], [type], [tenmauEn]) VALUES (1, N'Màu đỏ hồng', N'FF0066', 1, NULL)
INSERT [dbo].[mautuychon] ([id], [tenmau], [mamau], [type], [tenmauEn]) VALUES (2, N'Màu đỏ', N'FF080D', 3, NULL)
INSERT [dbo].[mautuychon] ([id], [tenmau], [mamau], [type], [tenmauEn]) VALUES (3, N'Màu hồng đỏ', N'FF0066', 2, NULL)
INSERT [dbo].[mautuychon] ([id], [tenmau], [mamau], [type], [tenmauEn]) VALUES (4, N'Màu xanh', N'60A90A', 4, NULL)
INSERT [dbo].[mautuychon] ([id], [tenmau], [mamau], [type], [tenmauEn]) VALUES (5, N'Màu xanh', N'549706', 5, NULL)
SET IDENTITY_INSERT [dbo].[mautuychon] OFF
SET IDENTITY_INSERT [dbo].[Member] ON 

INSERT [dbo].[Member] ([Id], [Name], [Email], [Username], [Password], [GroupMemberId], [Active], [NameEn], [Isplace], [IsplaceEn], [Note], [NoteEn]) VALUES (1, N'Thanh Tuyền', N'tuyenht@vmms.vn', N'tuyenht', N'fea7b285bdcafb473b6ad2dd6fcaa8a0', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Member] ([Id], [Name], [Email], [Username], [Password], [GroupMemberId], [Active], [NameEn], [Isplace], [IsplaceEn], [Note], [NoteEn]) VALUES (2, N'Thanh Tuyen', N'tuyenht@gmail.com', N'tuyenht', N'fea7b285bdcafb473b6ad2dd6fcaa8a0', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Member] ([Id], [Name], [Email], [Username], [Password], [GroupMemberId], [Active], [NameEn], [Isplace], [IsplaceEn], [Note], [NoteEn]) VALUES (3, N'Hoang Thuy Linh', N'linhht.biz@alsc.vn', N'linhht', N'12345', 1, 0, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Member] OFF
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
INSERT [dbo].[quantity_purchased] ([Id_quantity], [Sl_mua], [Phan_tram_tang], [Active]) VALUES (3, 3, 6, 1)
INSERT [dbo].[quantity_purchased] ([Id_quantity], [Sl_mua], [Phan_tram_tang], [Active]) VALUES (4, 4, 7, 1)
INSERT [dbo].[quantity_purchased] ([Id_quantity], [Sl_mua], [Phan_tram_tang], [Active]) VALUES (5, 5, 8, 1)
INSERT [dbo].[quantity_purchased] ([Id_quantity], [Sl_mua], [Phan_tram_tang], [Active]) VALUES (6, 6, 9, 1)
SET IDENTITY_INSERT [dbo].[quantity_purchased] OFF
SET IDENTITY_INSERT [dbo].[service_charge] ON 

INSERT [dbo].[service_charge] ([idservice], [Type], [Name], [Gia], [Active], [NameEn]) VALUES (6, 1, N'Bưa điện --> Dịch Vụ 30,000 VNĐ', 30000, 1, N'Bưa điện --> Dịch Vụ 30,000 VNĐ')
INSERT [dbo].[service_charge] ([idservice], [Type], [Name], [Gia], [Active], [NameEn]) VALUES (7, 2, N'Vận Chuyển --> Dịch Vụ 20,000 VNĐ', 20000, 1, N'Vận Chuyển --> Dịch Vụ 20,000 VNĐ')
SET IDENTITY_INSERT [dbo].[service_charge] OFF
SET IDENTITY_INSERT [dbo].[Shop] ON 

INSERT [dbo].[Shop] ([id], [Name], [CompanyId], [Address], [PhoneNumber]) VALUES (4, N'Trà Trầm', 1, N'Hoàn Kiếm - Hà Nội', N'043.928.6255')
INSERT [dbo].[Shop] ([id], [Name], [CompanyId], [Address], [PhoneNumber]) VALUES (5, N'Cửa hàng 51 Nguyễn Chí Thanh', 1, N'Đống Đa - Hà Nội', N'043.773.1183')
INSERT [dbo].[Shop] ([id], [Name], [CompanyId], [Address], [PhoneNumber]) VALUES (6, N'Cửa hàng 157 Cầu Giấy', 1, N'Cầu Giấy - Hà Nội', N'043.833.6764')
INSERT [dbo].[Shop] ([id], [Name], [CompanyId], [Address], [PhoneNumber]) VALUES (7, N'Cửa hàng 215 Giảng Võ', 1, N'Ba Đình - Hà Nội', N'043.514.1108')
INSERT [dbo].[Shop] ([id], [Name], [CompanyId], [Address], [PhoneNumber]) VALUES (8, N'Cửa hàng số 7 Khâm Thiên', 1, N'Đống Đa- Hà Nội', N'043.851.7818')
INSERT [dbo].[Shop] ([id], [Name], [CompanyId], [Address], [PhoneNumber]) VALUES (9, N'Và tại các siêu thị và nhà thuốc ', 1, N'', N'')
INSERT [dbo].[Shop] ([id], [Name], [CompanyId], [Address], [PhoneNumber]) VALUES (11, N'136 Kí Con', 1, N'Hải Phòng', N'324342')
INSERT [dbo].[Shop] ([id], [Name], [CompanyId], [Address], [PhoneNumber]) VALUES (27, N'Trà Trầm sửa', 1, N'dsfds', N'4363656')
INSERT [dbo].[Shop] ([id], [Name], [CompanyId], [Address], [PhoneNumber]) VALUES (34, N'Trà Trầm sửa thêm', 1, N'Thành Phố Hồ Chí Minh', N'0902671917')
SET IDENTITY_INSERT [dbo].[Shop] OFF
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([Id], [Name], [Des], [Lang], [NameEn]) VALUES (6, N'XXS', N'', N'vi', NULL)
INSERT [dbo].[Sizes] ([Id], [Name], [Des], [Lang], [NameEn]) VALUES (7, N'XS', N'', N'vi', NULL)
INSERT [dbo].[Sizes] ([Id], [Name], [Des], [Lang], [NameEn]) VALUES (8, N'S', N'', N'vi', NULL)
INSERT [dbo].[Sizes] ([Id], [Name], [Des], [Lang], [NameEn]) VALUES (9, N'M', N'', N'vi', NULL)
INSERT [dbo].[Sizes] ([Id], [Name], [Des], [Lang], [NameEn]) VALUES (10, N'L', N'', N'vi', NULL)
INSERT [dbo].[Sizes] ([Id], [Name], [Des], [Lang], [NameEn]) VALUES (11, N'XL', N'', N'vi', NULL)
INSERT [dbo].[Sizes] ([Id], [Name], [Des], [Lang], [NameEn]) VALUES (12, N'XXL', N'', N'vi', NULL)
SET IDENTITY_INSERT [dbo].[Sizes] OFF
SET IDENTITY_INSERT [dbo].[SlideShow] ON 

INSERT [dbo].[SlideShow] ([Id], [Name], [Image], [Width], [Height], [Link], [Target], [Content], [Position], [Click], [Ord], [Active], [Lang], [Detail], [Title], [Description], [Keyword], [Image1], [Image2], [Image3], [Image4], [Image5], [Index], [Priority], [Tag], [NameEn], [ContentEn], [DetailEn]) VALUES (4, N'Tiêu đề trình chiếu cho ngôn ngữ tiếng việt', N'/Uploads/files/thanhtoan/service-4.png', 100, 100, NULL, N'_parent', N'', 0, 0, 1, 1, N'vi', N'Nội dung tr&igrave;nh chiếu cho ng&ocirc;n ngữ tiếng việt', N'', N'mô tả từ khóa trình chiếu cho ngôn ngữ tiếng việt', N'từ khóa trình chiếu cho ngôn ngữ tiếng việt', N'', N'', N'', N'', N'', 1, 0, N'', N'Tiêu đề trình chiếu cho ngôn ngữ tiếng Anh', N'', N'Nội dung tr&igrave;nh chiếu cho ng&ocirc;n ngữ tiếng anh')
SET IDENTITY_INSERT [dbo].[SlideShow] OFF
SET IDENTITY_INSERT [dbo].[Support] ON 

INSERT [dbo].[Support] ([Id], [Name], [Tel], [Type], [Nick], [Ord], [Active], [GroupSupportId], [Lang], [Location]) VALUES (3, N'Mrs Vi Hoa', N'', 1, N'nuoc_hoavn', 1, 1, 1, N'vi', 0)
INSERT [dbo].[Support] ([Id], [Name], [Tel], [Type], [Nick], [Ord], [Active], [GroupSupportId], [Lang], [Location]) VALUES (4, N'Mr Văn Tuấn', N'', 1, N'nuoc_hoavn', 2, 1, 1, N'vi', 1)
INSERT [dbo].[Support] ([Id], [Name], [Tel], [Type], [Nick], [Ord], [Active], [GroupSupportId], [Lang], [Location]) VALUES (8, N'MR Tuấn Hùng', N'', 1, N'nuoc_hoavn', 3, 1, 1, N'vi', 0)
INSERT [dbo].[Support] ([Id], [Name], [Tel], [Type], [Nick], [Ord], [Active], [GroupSupportId], [Lang], [Location]) VALUES (9, N'Ms Mai Hương', N'', 1, N'nuoc_hoavn', 4, 1, 1, N'vi', 1)
INSERT [dbo].[Support] ([Id], [Name], [Tel], [Type], [Nick], [Ord], [Active], [GroupSupportId], [Lang], [Location]) VALUES (10, N'Manager Phú Đạt', N'090.214.2260 0r 097.360.1980', 1, N'vandatvn1980', 5, 1, 1, N'vi', 0)
SET IDENTITY_INSERT [dbo].[Support] OFF
SET IDENTITY_INSERT [dbo].[TB_ThongKe] ON 

INSERT [dbo].[TB_ThongKe] ([MaTB], [ThoiGian], [SoTruyCap]) VALUES (1, CAST(0x0000A66401608451 AS DateTime), 22)
INSERT [dbo].[TB_ThongKe] ([MaTB], [ThoiGian], [SoTruyCap]) VALUES (2, CAST(0x0000A6840183B612 AS DateTime), 2)
INSERT [dbo].[TB_ThongKe] ([MaTB], [ThoiGian], [SoTruyCap]) VALUES (3, CAST(0x0000A685016D936C AS DateTime), 35)
SET IDENTITY_INSERT [dbo].[TB_ThongKe] OFF
SET IDENTITY_INSERT [dbo].[Thanhvien] ON 

INSERT [dbo].[Thanhvien] ([id], [Taikhoan], [Matkhau], [Hoten], [Ngaysinh], [Gioitinh], [Diachi], [SDT], [Email], [Actice], [thutu]) VALUES (177, NULL, N'123', N'Lê Thế Hậu', NULL, NULL, N'Quảng Nam', N'0902671917', N'lethehau90.vn@gmail.com', NULL, NULL)
INSERT [dbo].[Thanhvien] ([id], [Taikhoan], [Matkhau], [Hoten], [Ngaysinh], [Gioitinh], [Diachi], [SDT], [Email], [Actice], [thutu]) VALUES (178, NULL, N'kahchanchina', N'ky', NULL, NULL, N'
12,duong 8,phuong binh an, quan 2,hcm', N'0938293118', N'kdkahchan@gmail.com', NULL, NULL)
INSERT [dbo].[Thanhvien] ([id], [Taikhoan], [Matkhau], [Hoten], [Ngaysinh], [Gioitinh], [Diachi], [SDT], [Email], [Actice], [thutu]) VALUES (179, NULL, N'kahchanchina', N'li', NULL, NULL, N'
quan 2', N'0938293118', N'gogo_386@163.com', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Thanhvien] OFF
SET IDENTITY_INSERT [dbo].[Thuonghieu] ON 

INSERT [dbo].[Thuonghieu] ([IDthuonghieu], [Tenthuonghieu], [Logo], [Url], [Hienthi], [Vitri], [Lienkettinh], [mota], [Lang], [Tenthuonghieu_En], [mota_En]) VALUES (6, N'Chưa Có thương hiệu', NULL, NULL, 1, 1, N'chua-co-thuong-hieu', NULL, N'vi        ', NULL, NULL)
INSERT [dbo].[Thuonghieu] ([IDthuonghieu], [Tenthuonghieu], [Logo], [Url], [Hienthi], [Vitri], [Lienkettinh], [mota], [Lang], [Tenthuonghieu_En], [mota_En]) VALUES (7, N'Rau Sạch', NULL, NULL, 1, 1, N'rau-sach', NULL, N'vi        ', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Thuonghieu] OFF
SET IDENTITY_INSERT [dbo].[Tintuc] ON 

INSERT [dbo].[Tintuc] ([Id], [Name], [Tag], [Ngaydang], [Tomtat], [Noidung], [Tacgia], [Luotxem], [Hinhanh], [Title], [Description], [Keyword], [Active], [Ord], [Type], [Ngayxemganday], [lienkiettinh], [NameEn], [ContentEn], [DetailEn], [Nguon]) VALUES (2, N'Bài đăng demo 1', N'bai-dang-demo-1', CAST(0x0000A6920084BCFE AS DateTime), N'Bài đăng demo 1', N'B&agrave;i đăng demo 1', NULL, 0, N'/Uploads/files/thanhtoan/service-3.png', N'', N'Bài đăng demo 1', N'Bài đăng demo 1', 1, 1, 2, CAST(0x0000A6A800FF381D AS DateTime), N'', N'Bài đăng demo 1', N'Bài đăng demo 1', N'B&agrave;i đăng demo 1', N'Sưu tầm')
INSERT [dbo].[Tintuc] ([Id], [Name], [Tag], [Ngaydang], [Tomtat], [Noidung], [Tacgia], [Luotxem], [Hinhanh], [Title], [Description], [Keyword], [Active], [Ord], [Type], [Ngayxemganday], [lienkiettinh], [NameEn], [ContentEn], [DetailEn], [Nguon]) VALUES (7, N'Bài đăng demo 2', N'bai-dang-demo-2', CAST(0x0000A69300957BF9 AS DateTime), N'Bài đăng demo 1', N'B&agrave;i đăng demo 1', NULL, 0, N'/Uploads/files/thanhtoan/service-1.png', N'', N'Bài đăng demo 1', N'Bài đăng demo 1', 1, 2, 1, CAST(0x0000A6A800FF5426 AS DateTime), N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Tintuc] OFF
SET IDENTITY_INSERT [dbo].[Url_thanhtoan] ON 

INSERT [dbo].[Url_thanhtoan] ([id], [Name], [Address], [PhoneNumber], [Fax], [vitri]) VALUES (1, N'Địa Chỉ <br> Mua hàng', N'http://localhost:12345/page/thoi-trang-dep-xinh-la-gi', NULL, NULL, 1)
INSERT [dbo].[Url_thanhtoan] ([id], [Name], [Address], [PhoneNumber], [Fax], [vitri]) VALUES (2, N'Giao hàng <br> Toàn Quốc', N'http://localhost:12345/page/van-chuyen-thanh-toan', NULL, NULL, 1)
INSERT [dbo].[Url_thanhtoan] ([id], [Name], [Address], [PhoneNumber], [Fax], [vitri]) VALUES (3, N'Trả tiền <br> Tại Nhà', N'http://localhost:12345/page/quy-dinh-doi-tra-hang', NULL, NULL, 1)
INSERT [dbo].[Url_thanhtoan] ([id], [Name], [Address], [PhoneNumber], [Fax], [vitri]) VALUES (4, N'Đổi trả hàng <br> Trong 14 ngày', N'http://localhost:12345/page/quy-dinh-doi-tra-hang', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Url_thanhtoan] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Name], [Username], [Password], [Level], [Admin], [Ord], [Active], [Role]) VALUES (47, N'Admin', N'Admin', N'e3afed0047b08059d0fada10f400c1e5', N'', 1, 1, 1, N'Admin')
INSERT [dbo].[User] ([Id], [Name], [Username], [Password], [Level], [Admin], [Ord], [Active], [Role]) VALUES (1036, N'a', N'a', N'0cc175b9c0f1b6a831c399e269772661', N'', 1, 4, 1, N'Personnel')
INSERT [dbo].[User] ([Id], [Name], [Username], [Password], [Level], [Admin], [Ord], [Active], [Role]) VALUES (1037, N'b', N'b', N'92eb5ffee6ae2fec3ad71c777531578f', N'', 1, 1, 1, N'Personnel')
INSERT [dbo].[User] ([Id], [Name], [Username], [Password], [Level], [Admin], [Ord], [Active], [Role]) VALUES (1038, N'c', N'c', N'4a8a08f09d37b73795649038408b5f33', N'', 1, 1, 1, N'Personnel')
INSERT [dbo].[User] ([Id], [Name], [Username], [Password], [Level], [Admin], [Ord], [Active], [Role]) VALUES (1041, N'd', N'd', N'92eb5ffee6ae2fec3ad71c777531578f', N'', 1, 1, 1, N'Personnel')
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
