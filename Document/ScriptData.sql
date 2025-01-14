USE [FPT_DEMO_V1]
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [Username], [Password], [Role]) VALUES (1, N'admin_1', N'123456', N'admin')
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role]) VALUES (2, N'customer_1', N'123456', N'customer')
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role]) VALUES (3, N'investor_1', N'123456', N'investor')
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role]) VALUES (4, N'agency_1', N'123456', N'agency')
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role]) VALUES (5, N'test_', N'$2a$08$hEr3E/WuBqJ/gEfaWz6pSO/3HvQo2Lr46IyudyPSHNRB8CFxVIHea', N'customer')
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role]) VALUES (6, N'test_1', N'123456', N'customer')
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role]) VALUES (7, N'test_2', N'123456', N'customer')
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role]) VALUES (8, N'test_3', N'123456', N'customer')
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role]) VALUES (9, N'test_4', N'123456', N'customer')
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role]) VALUES (10, N'test_5', N'123456', N'customer')
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role]) VALUES (11, N'test_6', N'123456', N'customer')
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role]) VALUES (12, N'test_7', N'123456', N'customer')
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role]) VALUES (13, N'test_8', N'123456', N'customer')
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role]) VALUES (14, N'test_9', N'123456', N'customer')
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role]) VALUES (15, N'test1', N'123456', N'customer')
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role]) VALUES (16, N'test2', N'123456', N'customer')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerId], [UserId], [FullName], [Email], [PhoneNumber], [Address]) VALUES (1, 2, N'Nguyễn Văn A', N'nguyenvana@gmail.com', N'0123456789', N'Quận 9')
INSERT [dbo].[Customer] ([CustomerId], [UserId], [FullName], [Email], [PhoneNumber], [Address]) VALUES (12, NULL, N'Nguyễn Văn B', N'nguyenvanB@gmail.com', N'0123456787', N'Thủ Đức')
INSERT [dbo].[Customer] ([CustomerId], [UserId], [FullName], [Email], [PhoneNumber], [Address]) VALUES (13, NULL, N'Nguyễn Văn B', N'nguyenvanB@gmail.com', N'0123456787', N'Thủ Đức')
INSERT [dbo].[Customer] ([CustomerId], [UserId], [FullName], [Email], [PhoneNumber], [Address]) VALUES (14, 12, N'Nguyễn Văn B', N'nguyenvanB@gmail.com', N'0123456787', N'Thủ Đức')
INSERT [dbo].[Customer] ([CustomerId], [UserId], [FullName], [Email], [PhoneNumber], [Address]) VALUES (15, 13, N'Nguyễn Văn B', N'nguyenvanB@gmail.com', N'0123456787', N'Thủ Đức')
INSERT [dbo].[Customer] ([CustomerId], [UserId], [FullName], [Email], [PhoneNumber], [Address]) VALUES (16, 14, N'Nguyễn Văn B', N'nguyenvanB@gmail.com', N'0123456787', N'Thủ Đức')
INSERT [dbo].[Customer] ([CustomerId], [UserId], [FullName], [Email], [PhoneNumber], [Address]) VALUES (17, 15, N'Nguyen Van C', NULL, N'0123456786', N'Quan Thu Duc')
INSERT [dbo].[Customer] ([CustomerId], [UserId], [FullName], [Email], [PhoneNumber], [Address]) VALUES (18, 16, N'Nguyen Van C', N'nguyenvanc@gmail.com', N'0123456786', N'Quan Thu Duc')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Investor] ON 

INSERT [dbo].[Investor] ([InvestorId], [Name], [Email], [PhoneNumber], [Address], [UserId]) VALUES (1, N'CÔNG TY TNHH PHÁT TRIỂN PHÚ MỸ HƯNG', N' phumyhung@phumyhung.vn', N'(028) 5411-9999', N'Tầng 10, Tòa nhà Lawrence S.Ting, 801 Nguyễn Văn Linh, P. Tân Phú, Q.7, TP. HCM', 3)
SET IDENTITY_INSERT [dbo].[Investor] OFF
GO
SET IDENTITY_INSERT [dbo].[Agency] ON 

INSERT [dbo].[Agency] ([AgencyId], [UserId], [Name], [Email], [PhoneNumber]) VALUES (1, 4, N'ABC Realty', N'ABCRealty@gmail.com ', N'0123456788')
SET IDENTITY_INSERT [dbo].[Agency] OFF
GO
SET IDENTITY_INSERT [dbo].[Project] ON 

INSERT [dbo].[Project] ([ProjectId], [Name], [InvestorId], [Location], [Thumbnail], [Type], [NumberOfApartments], [NumberOfShops], [LandArea], [ConstructionDensity], [Status], [StartDate], [EndDate], [Description]) VALUES (3, N'The Antonia Phú Mỹ Hưng', 1, N'Đường Nguyễn Lương Bằng, P.Tân Phú, Quận 7, TP.HCM', N'https://phumyhungcorp.com.vn/wp-content/uploads/2019/05/vi-tri-the-antonia-co-logo.jpg', N'Apartment', 366, 0, 5880, 80, NULL, NULL, NULL, NULL)
INSERT [dbo].[Project] ([ProjectId], [Name], [InvestorId], [Location], [Thumbnail], [Type], [NumberOfApartments], [NumberOfShops], [LandArea], [ConstructionDensity], [Status], [StartDate], [EndDate], [Description]) VALUES (4, N'Phú Mỹ Hưng Midtown', 1, N'Lô M5,6,7,8 Đường số 16, Phường Tân Phú, Quận 7, TP.HCM', N'https://phumyhung.vn/wp-content/uploads/2022/03/Sakura-Park-midtownjpg.jpg', N'Apartment', 300, 0, 56331, 80, NULL, NULL, NULL, NULL)
INSERT [dbo].[Project] ([ProjectId], [Name], [InvestorId], [Location], [Thumbnail], [Type], [NumberOfApartments], [NumberOfShops], [LandArea], [ConstructionDensity], [Status], [StartDate], [EndDate], [Description]) VALUES (5, N'Cardinal Court', 1, N'Khu đất C13B (Đô thị Phú Mỹ Hưng), P. Tân Phú, Quận 7, TP.HCM', N'https://phumyhung.vn/wp-content/uploads/2022/01/cardinal-cour-1.jpg', N'Apartment', 182, 0, 10780, 100, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Project] OFF
GO
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([BookingId], [ProjectId], [CustomerId], [BookingDate], [Status], [SelectionMethod], [IsSelected], [AgencyId], [OpeningForSalesDetailId], [AmountDeposit]) VALUES (1, 3, 16, CAST(N'2024-03-01T17:53:32.1450000+00:00' AS DateTimeOffset), N'Approved', N'"VNPAY"', 0, 1, NULL, 500000)
SET IDENTITY_INSERT [dbo].[Booking] OFF
GO
SET IDENTITY_INSERT [dbo].[AgencyProject] ON 

INSERT [dbo].[AgencyProject] ([AgencyProjectId], [AgencyId], [ProjectId]) VALUES (4, 1, 3)
SET IDENTITY_INSERT [dbo].[AgencyProject] OFF
GO
