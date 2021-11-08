CREATE DATABASE [db_BTVN];
GO;
CREATE TABLE [dbo].[tblCongDan](
	[PK_iCongdanID] [int] IDENTITY(1,1) NOT NULL,
	[sHoten] [nvarchar](50) NOT NULL,
	[tNgaysinh] [datetime] NOT NULL,
	[sCMND] [varchar](12) NOT NULL,
	[sHokhau] [nvarchar](100) NULL,
 CONSTRAINT [PK_tblCongdan] PRIMARY KEY CLUSTERED 
(
	[PK_iCongdanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET IDENTITY_INSERT dbo.tblCongDan ON;  

INSERT [dbo].[tblCongDan] ([PK_iCongdanID], [sHoten], [tNgaysinh], [sCMND], [sHokhau]) VALUES (1,
N'Hoang Thi Thu Huong ', CAST(N'2001-07-17T00:00:00.000' AS DateTime),
N'091920967', N'Pho yen - Thai Nguyen');
INSERT [dbo].[tblCongDan] ([PK_iCongdanID], [sHoten], [tNgaysinh], [sCMND], [sHokhau]) VALUES (2,
N'Hoang  Thu Ha ', CAST(N'2007-07-09T00:00:00.000' AS DateTime),
N'091425354', N'Pho yen - Thai Nguyen');
INSERT [dbo].[tblCongDan] ([PK_iCongdanID], [sHoten], [tNgaysinh], [sCMND], [sHokhau]) VALUES (3,
N'Nguyen Van Linh ', CAST(N'1996-06-16T00:00:00.000' AS DateTime),
N'071524301', N'Hung Ha - Thai Binh');
INSERT [dbo].[tblCongDan] ([PK_iCongdanID], [sHoten], [tNgaysinh], [sCMND], [sHokhau]) VALUES (4,
N'Ha Thi Vui ', CAST(N'1982-03-23T00:00:00.000' AS DateTime),
N'023541203', N'Cat Tien - Lam Dong');
INSERT [dbo].[tblCongDan] ([PK_iCongdanID], [sHoten], [tNgaysinh], [sCMND], [sHokhau]) VALUES (5,
N'Tran Thi Huyen ', CAST(N'2003-08-05T00:00:00.000' AS DateTime),
N'035614895', N'Hoang Mai - Ha Noi');

INSERT [dbo].[tblCongDan] ([PK_iCongdanID], [sHoten], [tNgaysinh], [sCMND], [sHokhau]) VALUES (6,
N'Nguyen Hoang Anh ', CAST(N'2001-08-21T00:00:00.000' AS DateTime),
N'041254635', N'Thanh Xuan - Ha Noi');



/*buổi 3 */
create procedure [dbo].[spCongDan_Get]
as
begin
set nocount on;
select *from tblCongDan
end
go

UPDATE tblCongDan
SET tNgaysinh = ''
WHERE
    tNgaysinh IS NULL;

ALTER TABLE tblCongDan ALTER COLUMN tNgaysinh datetime  NULL;