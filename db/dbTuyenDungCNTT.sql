CREATE DATABASE [dbWebTimViecCNTT]
GO
USE [dbWebTimViecCNTT]
GO
/****** Object:  Table [dbo].[tbl_CapBac]    Script Date: 01/04/2023 6:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CapBac](
	[PK_sMaCapBac] [nvarchar](50) NOT NULL,
	[sTenCapBac] [nvarchar](100) NULL,
 CONSTRAINT [PK_tbl_CapBac] PRIMARY KEY CLUSTERED 
(
	[PK_sMaCapBac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ChuyenNganh]    Script Date: 01/04/2023 6:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChuyenNganh](
	[PK_sMaCN] [nvarchar](50) NOT NULL,
	[sTenCN] [nvarchar](100) NULL,
 CONSTRAINT [PK_tbl_ChuyenNganh] PRIMARY KEY CLUSTERED 
(
	[PK_sMaCN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_DiaChi]    Script Date: 01/04/2023 6:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_DiaChi](
	[PK_sMaDiaChi] [nvarchar](50) NOT NULL,
	[sTenDiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_DiaChi] PRIMARY KEY CLUSTERED 
(
	[PK_sMaDiaChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HoSoXinViec]    Script Date: 01/04/2023 6:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HoSoXinViec](
	[PK_iMaHoSo] [int] IDENTITY(1,1) NOT NULL,
	[sTenHoSo] [nvarchar](200) NULL,
	[FK_iMaUngVien] [int] NOT NULL,
	[FK_sMaCN] [nvarchar](50) NOT NULL,
	[FK_sMaLoaiCV] [nvarchar](50) NULL,
	[FK_sMaCapBac] [nvarchar](50) NOT NULL,
	[sMucTieuNgheNghiep] [ntext] NULL,
	[sKinhNghiem] [ntext] NULL,
	[sKyNang] [nvarchar](200) NULL,
	[sHocVan] [ntext] NULL,
	[sKyNangMem] [nvarchar](200) NULL,
	[sGiaiThuong] [nvarchar](200) NULL,
 CONSTRAINT [PK_tbl_HoSoXinViec_1] PRIMARY KEY CLUSTERED 
(
	[PK_iMaHoSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_LoaiCongViec]    Script Date: 01/04/2023 6:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_LoaiCongViec](
	[PK_sMaLoaiCV] [nvarchar](50) NOT NULL,
	[sTenLoaiCV] [nvarchar](100) NULL,
 CONSTRAINT [PK_tbl_LoaiCongViec] PRIMARY KEY CLUSTERED 
(
	[PK_sMaLoaiCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_MucLuong]    Script Date: 01/04/2023 6:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_MucLuong](
	[PK_sMaMucLuong] [nvarchar](50) NOT NULL,
	[sTenMucLuong] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_MucLuong] PRIMARY KEY CLUSTERED 
(
	[PK_sMaMucLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_NhaTuyenDung]    Script Date: 01/04/2023 6:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_NhaTuyenDung](
	[PK_iMaNTD] [int] NOT NULL,
	[sTenNTD] [nvarchar](200) NULL,
	[sTenNDD] [nvarchar](100) NULL,
	[sChucVuNDD] [nvarchar](50) NULL,
	[sSoDienThoai] [nvarchar](11) NULL,
	[sAnhBia] [nvarchar](200) NULL,
	[sAnhDaiDien] [nvarchar](200) NULL,
	[sQuyMo] [nvarchar](50) NULL,
	[sMoTa] [nvarchar](250) NULL,
	[sDiaChi] [nvarchar](250) NULL,
	[sWebsite] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_NhaTuyenDung] PRIMARY KEY CLUSTERED 
(
	[PK_iMaNTD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Quyen]    Script Date: 01/04/2023 6:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Quyen](
	[PK_iMaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[sTenQuyen] [nvarchar](100) NULL,
 CONSTRAINT [PK_tbl_Quyen] PRIMARY KEY CLUSTERED 
(
	[PK_iMaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TaiKhoan]    Script Date: 01/04/2023 6:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TaiKhoan](
	[PK_iMaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[sEmail] [nvarchar](100) NULL,
	[sMatKhau] [nvarchar](100) NULL,
	[FK_iMaQuyen] [int] NULL,
	[dNgayTao] [datetime] NULL,
	[bTrangThai] [bit] NULL,
 CONSTRAINT [PK_tbl_TaiKhoan_1] PRIMARY KEY CLUSTERED 
(
	[PK_iMaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TinTuyenDung]    Script Date: 01/04/2023 6:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TinTuyenDung](
	[PK_iMaTTD] [int] IDENTITY(1,1) NOT NULL,
	[FK_iMaNTD] [int] NOT NULL,
	[FK_sMaCN] [nvarchar](50) NOT NULL,
	[FK_sMaLoaiCV] [nvarchar](50) NOT NULL,
	[FK_sMaMucLuong] [nvarchar](50) NOT NULL,
	[FK_sMaCapBac] [nvarchar](50) NOT NULL,
	[FK_sMaDiaChi] [nvarchar](50) NULL,
	[sTenCongViec] [nvarchar](250) NULL,
	[sDiaChiLamViec] [nvarchar](250) NULL,
	[iSoLuong] [int] NULL,
	[sGioiTinhYC] [nvarchar](50) NULL,
	[sMoTaCongViec] [ntext] NULL,
	[sYeuCauUngVien] [ntext] NULL,
	[sKyNangLienQuan] [ntext] NULL,
	[sQuyenLoi] [ntext] NULL,
	[dNgayDang] [datetime] NULL,
	[dHanNop] [datetime] NULL,
	[iLuotXem] [int] NULL,
	[sGhiChu] [nvarchar](500) NULL,
	[bTrangThai] [bit] NULL,
 CONSTRAINT [PK_tbl_TinTuyenDung] PRIMARY KEY CLUSTERED 
(
	[PK_iMaTTD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UngTuyen]    Script Date: 01/04/2023 6:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UngTuyen](
	[PK_iMaUngVien] [int] NOT NULL,
	[FK_iMaTTD] [int] NOT NULL,
	[sLinkHoSo] [nvarchar](150) NULL,
	[dNgayUngTuyen] [datetime] NULL,
	[sTrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_UngTuyen] PRIMARY KEY CLUSTERED 
(
	[PK_iMaUngVien] ASC,
	[FK_iMaTTD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UngVien]    Script Date: 01/04/2023 6:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UngVien](
	[PK_iMaUngVien] [int] NOT NULL,
	[sTenUngVien] [nvarchar](200) NULL,
	[sSoDienThoai] [nvarchar](10) NULL,
	[sGioiTinh] [nvarchar](3) NULL,
	[dNgaySinh] [date] NULL,
	[sAnhDaiDien] [nvarchar](200) NULL,
	[sAnhBia] [nvarchar](200) NULL,
	[sDiaChi] [nvarchar](200) NULL,
 CONSTRAINT [PK_tbl_UngVien_1] PRIMARY KEY CLUSTERED 
(
	[PK_iMaUngVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_CapBac] ([PK_sMaCapBac], [sTenCapBac]) VALUES (N'chuyen-vien-phan-tich-nghiep-vu', N'Chuyên viên phân tích nghiệp vụ')
INSERT [dbo].[tbl_CapBac] ([PK_sMaCapBac], [sTenCapBac]) VALUES (N'ky-su-cau-noi', N'Kỹ sư cầu nối')
INSERT [dbo].[tbl_CapBac] ([PK_sMaCapBac], [sTenCapBac]) VALUES (N'lap-trinh-vien', N'Lập trình viên')
INSERT [dbo].[tbl_CapBac] ([PK_sMaCapBac], [sTenCapBac]) VALUES (N'nhan-vien-kiem-thu', N'Nhân viên kiểm thử')
INSERT [dbo].[tbl_CapBac] ([PK_sMaCapBac], [sTenCapBac]) VALUES (N'phat-trien-san-pham', N'Phát triển sản phẩm')
INSERT [dbo].[tbl_CapBac] ([PK_sMaCapBac], [sTenCapBac]) VALUES (N'quan-ly-san-pham', N'Quản lý sản phẩm')
INSERT [dbo].[tbl_CapBac] ([PK_sMaCapBac], [sTenCapBac]) VALUES (N'quan-tri-he-thong', N'Quản trị hệ thống')
INSERT [dbo].[tbl_CapBac] ([PK_sMaCapBac], [sTenCapBac]) VALUES (N'thuc-tap-sinh', N'Thực tập sinh')
INSERT [dbo].[tbl_CapBac] ([PK_sMaCapBac], [sTenCapBac]) VALUES (N'truong-nhom', N'Trưởng nhóm')
GO
INSERT [dbo].[tbl_ChuyenNganh] ([PK_sMaCN], [sTenCN]) VALUES (N'back-end', N'Back End')
INSERT [dbo].[tbl_ChuyenNganh] ([PK_sMaCN], [sTenCN]) VALUES (N'business-analyst', N'Business Analyst')
INSERT [dbo].[tbl_ChuyenNganh] ([PK_sMaCN], [sTenCN]) VALUES (N'c-c-', N'C/C++')
INSERT [dbo].[tbl_ChuyenNganh] ([PK_sMaCN], [sTenCN]) VALUES (N'C-Sharp', N'C-Sharp')
INSERT [dbo].[tbl_ChuyenNganh] ([PK_sMaCN], [sTenCN]) VALUES (N'front-end', N'Front End')
INSERT [dbo].[tbl_ChuyenNganh] ([PK_sMaCN], [sTenCN]) VALUES (N'full-stack', N'Full Stack')
INSERT [dbo].[tbl_ChuyenNganh] ([PK_sMaCN], [sTenCN]) VALUES (N'golang', N'GoLang')
INSERT [dbo].[tbl_ChuyenNganh] ([PK_sMaCN], [sTenCN]) VALUES (N'ios', N'iOS')
INSERT [dbo].[tbl_ChuyenNganh] ([PK_sMaCN], [sTenCN]) VALUES (N'java', N'Java')
INSERT [dbo].[tbl_ChuyenNganh] ([PK_sMaCN], [sTenCN]) VALUES (N'JavaScript', N'JavaScript')
INSERT [dbo].[tbl_ChuyenNganh] ([PK_sMaCN], [sTenCN]) VALUES (N'mobile-apps', N'Mobile Apps')
INSERT [dbo].[tbl_ChuyenNganh] ([PK_sMaCN], [sTenCN]) VALUES (N'-net', N'.NET')
INSERT [dbo].[tbl_ChuyenNganh] ([PK_sMaCN], [sTenCN]) VALUES (N'php', N'PHP')
INSERT [dbo].[tbl_ChuyenNganh] ([PK_sMaCN], [sTenCN]) VALUES (N'python', N'Python')
INSERT [dbo].[tbl_ChuyenNganh] ([PK_sMaCN], [sTenCN]) VALUES (N'ReactJS', N'ReactJS')
INSERT [dbo].[tbl_ChuyenNganh] ([PK_sMaCN], [sTenCN]) VALUES (N'ruby', N'RuBy')
INSERT [dbo].[tbl_ChuyenNganh] ([PK_sMaCN], [sTenCN]) VALUES (N'tester', N'Tester')
INSERT [dbo].[tbl_ChuyenNganh] ([PK_sMaCN], [sTenCN]) VALUES (N'ux-ui', N'UX UI')
GO
INSERT [dbo].[tbl_DiaChi] ([PK_sMaDiaChi], [sTenDiaChi]) VALUES (N'da-nang', N'Đà Nẵng')
INSERT [dbo].[tbl_DiaChi] ([PK_sMaDiaChi], [sTenDiaChi]) VALUES (N'ha-noi', N'Hà Nội')
INSERT [dbo].[tbl_DiaChi] ([PK_sMaDiaChi], [sTenDiaChi]) VALUES (N'ho-chi-minh', N'Hồ Chí Minh')
INSERT [dbo].[tbl_DiaChi] ([PK_sMaDiaChi], [sTenDiaChi]) VALUES (N'khac', N'Khác')
GO
INSERT [dbo].[tbl_LoaiCongViec] ([PK_sMaLoaiCV], [sTenLoaiCV]) VALUES (N'ban-thoi-gian', N'Bán thời gian')
INSERT [dbo].[tbl_LoaiCongViec] ([PK_sMaLoaiCV], [sTenLoaiCV]) VALUES (N'remote-lam-viec-tu-xa', N'Remote - Làm việc từ xa')
INSERT [dbo].[tbl_LoaiCongViec] ([PK_sMaLoaiCV], [sTenLoaiCV]) VALUES (N'thuc-tap', N'Thực tập')
INSERT [dbo].[tbl_LoaiCongViec] ([PK_sMaLoaiCV], [sTenLoaiCV]) VALUES (N'toan-thoi-gian', N'Toàn thời gian')
GO
INSERT [dbo].[tbl_MucLuong] ([PK_sMaMucLuong], [sTenMucLuong]) VALUES (N'3-5-trieu', N'3 - 5 triệu')
INSERT [dbo].[tbl_MucLuong] ([PK_sMaMucLuong], [sTenMucLuong]) VALUES (N'5-7-trieu', N'5 - 7 triệu')
INSERT [dbo].[tbl_MucLuong] ([PK_sMaMucLuong], [sTenMucLuong]) VALUES (N'7-10-trieu', N'7 - 10 triệu')
INSERT [dbo].[tbl_MucLuong] ([PK_sMaMucLuong], [sTenMucLuong]) VALUES (N'duoi-3-trieu', N'Dưới 3 triệu')
INSERT [dbo].[tbl_MucLuong] ([PK_sMaMucLuong], [sTenMucLuong]) VALUES (N'thoa-thuan', N'Thỏa thuận')
INSERT [dbo].[tbl_MucLuong] ([PK_sMaMucLuong], [sTenMucLuong]) VALUES (N'tren-10-trieu', N'Trên 10 triệu')
GO
INSERT [dbo].[tbl_NhaTuyenDung] ([PK_iMaNTD], [sTenNTD], [sTenNDD], [sChucVuNDD], [sSoDienThoai], [sAnhBia], [sAnhDaiDien], [sQuyMo], [sMoTa], [sDiaChi], [sWebsite]) VALUES (2, N'CÔNG TY TNHH TECHVSI', N'Lê Tuấn Anh', N'Giám đốc', N'0987654310', NULL, N'/Images/NhaTuyenDung/vsi220941486.jpeg', N'25-99 nhân viên', N'We are the top software development company in Vietnam, with highly skilled in developing large scale and complex business web applications. TechVSI, a software development company, aims to use the latest web technologies to build stunning websites.', N'Tòa nhà Lotus, 16 Cửu Long, Phường 2, Quận Tân Bình, Thành phố Hồ Chí Minh', N'https://techvsi.com')
GO
SET IDENTITY_INSERT [dbo].[tbl_Quyen] ON 

INSERT [dbo].[tbl_Quyen] ([PK_iMaQuyen], [sTenQuyen]) VALUES (1, N'Quản trị viên')
INSERT [dbo].[tbl_Quyen] ([PK_iMaQuyen], [sTenQuyen]) VALUES (2, N'Nhà tuyển dụng')
INSERT [dbo].[tbl_Quyen] ([PK_iMaQuyen], [sTenQuyen]) VALUES (3, N'Ứng viên')
SET IDENTITY_INSERT [dbo].[tbl_Quyen] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_TaiKhoan] ON 

INSERT [dbo].[tbl_TaiKhoan] ([PK_iMaTaiKhoan], [sEmail], [sMatKhau], [FK_iMaQuyen], [dNgayTao], [bTrangThai]) VALUES (1, N'admin@gmail.com', N'21232f297a57a5a743894a0e4a801fc3', 1, CAST(N'2023-03-02T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tbl_TaiKhoan] ([PK_iMaTaiKhoan], [sEmail], [sMatKhau], [FK_iMaQuyen], [dNgayTao], [bTrangThai]) VALUES (2, N'nhatuyendung@gmail.com', N'316f8ca77a7a840d14990aa3038aed7f', 2, CAST(N'2023-04-01T18:01:05.490' AS DateTime), 1)
INSERT [dbo].[tbl_TaiKhoan] ([PK_iMaTaiKhoan], [sEmail], [sMatKhau], [FK_iMaQuyen], [dNgayTao], [bTrangThai]) VALUES (4, N'sonngocphan223@gmail.com', N'20cfb64bac4ec15711de5c7521adba03', 3, CAST(N'2023-04-01T18:18:52.347' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[tbl_TaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_TinTuyenDung] ON 

INSERT [dbo].[tbl_TinTuyenDung] ([PK_iMaTTD], [FK_iMaNTD], [FK_sMaCN], [FK_sMaLoaiCV], [FK_sMaMucLuong], [FK_sMaCapBac], [FK_sMaDiaChi], [sTenCongViec], [sDiaChiLamViec], [iSoLuong], [sGioiTinhYC], [sMoTaCongViec], [sYeuCauUngVien], [sKyNangLienQuan], [sQuyenLoi], [dNgayDang], [dHanNop], [iLuotXem], [sGhiChu], [bTrangThai]) VALUES (1, 2, N'front-end', N'ban-thoi-gian', N'5-7-trieu', N'lap-trinh-vien', N'ho-chi-minh', N'Lập trình viên Frontend', NULL, 1, N'Không yêu cầu', N'<p>Thiết kế giao diện web theo y&ecirc;u cầu của từng dự &aacute;n.</p>', N'<p>Th&agrave;nh thạo c&aacute;c ng&ocirc;n ngữ cần để lập tr&igrave;nh frontend v&agrave; biết &iacute;t nhất 1 framework</p>', NULL, NULL, CAST(N'2023-04-01T18:33:40.430' AS DateTime), CAST(N'2023-04-22T00:12:00.000' AS DateTime), 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_TinTuyenDung] OFF
GO
INSERT [dbo].[tbl_UngVien] ([PK_iMaUngVien], [sTenUngVien], [sSoDienThoai], [sGioiTinh], [dNgaySinh], [sAnhDaiDien], [sAnhBia], [sDiaChi]) VALUES (3, N'Phan Ngọc Sơn', N'0917432501', N'Nam', CAST(N'2002-03-22' AS Date), N'/Images/UngVien/sonngocphan.jpg', NULL, N'Phan Thiết, Bình Thuận')
INSERT [dbo].[tbl_UngVien] ([PK_iMaUngVien], [sTenUngVien], [sSoDienThoai], [sGioiTinh], [dNgaySinh], [sAnhDaiDien], [sAnhBia], [sDiaChi]) VALUES (4, N'Phan Ngọc Sơn', N'0917432501', N'Nam', CAST(N'2002-03-22' AS Date), N'/Images/UngVien/sonngocphan.jpg', N'/Images/UngVien/cover-default221236765.jpg', N'Phan Thiết, Bình Thuận')
GO
ALTER TABLE [dbo].[tbl_BaiViet] ADD  CONSTRAINT [DF_tbl_BaiViet_iLuotXem]  DEFAULT ((0)) FOR [iLuotXem]
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung] ADD  CONSTRAINT [DF_tbl_TinTuyenDung_dNgayDang]  DEFAULT (getdate()) FOR [dNgayDang]
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung] ADD  CONSTRAINT [DF_tbl_TinTuyenDung_iLuotXem]  DEFAULT ((0)) FOR [iLuotXem]
GO
ALTER TABLE [dbo].[tbl_BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_tbl_BaiViet_tbl_TaiKhoan] FOREIGN KEY([FK_iMaTaiKhoan])
REFERENCES [dbo].[tbl_TaiKhoan] ([PK_iMaTaiKhoan])
GO
ALTER TABLE [dbo].[tbl_BaiViet] CHECK CONSTRAINT [FK_tbl_BaiViet_tbl_TaiKhoan]
GO
ALTER TABLE [dbo].[tbl_HoSoXinViec]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoSoXinViec_tbl_CapBac] FOREIGN KEY([FK_sMaCapBac])
REFERENCES [dbo].[tbl_CapBac] ([PK_sMaCapBac])
GO
ALTER TABLE [dbo].[tbl_HoSoXinViec] CHECK CONSTRAINT [FK_tbl_HoSoXinViec_tbl_CapBac]
GO
ALTER TABLE [dbo].[tbl_HoSoXinViec]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoSoXinViec_tbl_ChuyenNganh] FOREIGN KEY([FK_sMaCN])
REFERENCES [dbo].[tbl_ChuyenNganh] ([PK_sMaCN])
GO
ALTER TABLE [dbo].[tbl_HoSoXinViec] CHECK CONSTRAINT [FK_tbl_HoSoXinViec_tbl_ChuyenNganh]
GO
ALTER TABLE [dbo].[tbl_HoSoXinViec]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoSoXinViec_tbl_LoaiCongViec] FOREIGN KEY([FK_sMaLoaiCV])
REFERENCES [dbo].[tbl_LoaiCongViec] ([PK_sMaLoaiCV])
GO
ALTER TABLE [dbo].[tbl_HoSoXinViec] CHECK CONSTRAINT [FK_tbl_HoSoXinViec_tbl_LoaiCongViec]
GO
ALTER TABLE [dbo].[tbl_HoSoXinViec]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoSoXinViec_tbl_UngVien] FOREIGN KEY([FK_iMaUngVien])
REFERENCES [dbo].[tbl_UngVien] ([PK_iMaUngVien])
GO
ALTER TABLE [dbo].[tbl_HoSoXinViec] CHECK CONSTRAINT [FK_tbl_HoSoXinViec_tbl_UngVien]
GO
ALTER TABLE [dbo].[tbl_NhaTuyenDung]  WITH CHECK ADD  CONSTRAINT [FK_tbl_NhaTuyenDung_tbl_TaiKhoan] FOREIGN KEY([PK_iMaNTD])
REFERENCES [dbo].[tbl_TaiKhoan] ([PK_iMaTaiKhoan])
GO
ALTER TABLE [dbo].[tbl_NhaTuyenDung] CHECK CONSTRAINT [FK_tbl_NhaTuyenDung_tbl_TaiKhoan]
GO
ALTER TABLE [dbo].[tbl_TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TaiKhoan_tbl_Quyen] FOREIGN KEY([FK_iMaQuyen])
REFERENCES [dbo].[tbl_Quyen] ([PK_iMaQuyen])
GO
ALTER TABLE [dbo].[tbl_TaiKhoan] CHECK CONSTRAINT [FK_tbl_TaiKhoan_tbl_Quyen]
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TinTuyenDung_tbl_CapBac] FOREIGN KEY([FK_sMaCapBac])
REFERENCES [dbo].[tbl_CapBac] ([PK_sMaCapBac])
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung] CHECK CONSTRAINT [FK_tbl_TinTuyenDung_tbl_CapBac]
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TinTuyenDung_tbl_ChuyenNganh] FOREIGN KEY([FK_sMaCN])
REFERENCES [dbo].[tbl_ChuyenNganh] ([PK_sMaCN])
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung] CHECK CONSTRAINT [FK_tbl_TinTuyenDung_tbl_ChuyenNganh]
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TinTuyenDung_tbl_DiaChi] FOREIGN KEY([FK_sMaDiaChi])
REFERENCES [dbo].[tbl_DiaChi] ([PK_sMaDiaChi])
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung] CHECK CONSTRAINT [FK_tbl_TinTuyenDung_tbl_DiaChi]
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TinTuyenDung_tbl_LoaiCongViec] FOREIGN KEY([FK_sMaLoaiCV])
REFERENCES [dbo].[tbl_LoaiCongViec] ([PK_sMaLoaiCV])
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung] CHECK CONSTRAINT [FK_tbl_TinTuyenDung_tbl_LoaiCongViec]
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TinTuyenDung_tbl_MucLuong] FOREIGN KEY([FK_sMaMucLuong])
REFERENCES [dbo].[tbl_MucLuong] ([PK_sMaMucLuong])
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung] CHECK CONSTRAINT [FK_tbl_TinTuyenDung_tbl_MucLuong]
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TinTuyenDung_tbl_NhaTuyenDung] FOREIGN KEY([FK_iMaNTD])
REFERENCES [dbo].[tbl_NhaTuyenDung] ([PK_iMaNTD])
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung] CHECK CONSTRAINT [FK_tbl_TinTuyenDung_tbl_NhaTuyenDung]
GO
ALTER TABLE [dbo].[tbl_UngTuyen]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UngTuyen_tbl_TinTuyenDung1] FOREIGN KEY([FK_iMaTTD])
REFERENCES [dbo].[tbl_TinTuyenDung] ([PK_iMaTTD])
GO
ALTER TABLE [dbo].[tbl_UngTuyen] CHECK CONSTRAINT [FK_tbl_UngTuyen_tbl_TinTuyenDung1]
GO
ALTER TABLE [dbo].[tbl_UngTuyen]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UngTuyen_tbl_UngVien] FOREIGN KEY([PK_iMaUngVien])
REFERENCES [dbo].[tbl_UngVien] ([PK_iMaUngVien])
GO
ALTER TABLE [dbo].[tbl_UngTuyen] CHECK CONSTRAINT [FK_tbl_UngTuyen_tbl_UngVien]
GO
