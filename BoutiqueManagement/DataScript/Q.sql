SET IDENTITY_INSERT [dbo].[Staff] ON
INSERT INTO [dbo].[Staff] ([Staff_ID], [StaffName], [StaffEmail], [StaffMobile], [Address], [JionningDate], [Visa_Finshing_Date]) VALUES (1, N'Yashmin', N'ahmedyass234@gmail.com', N'0223456789', N'21 maitland street frankton', N'2020-08-05 10:00:00', N'2022-01-04 15:04:00')
INSERT INTO [dbo].[Staff] ([Staff_ID], [StaffName], [StaffEmail], [StaffMobile], [Address], [JionningDate], [Visa_Finshing_Date]) VALUES (2, N'Navjot kaur', N'Kkaaurnavjot26@gmail.com', N'0225068196', N'10 te aroha street ', N'2020-10-14 10:00:00', N'2021-06-04 00:00:00')
INSERT INTO [dbo].[Staff] ([Staff_ID], [StaffName], [StaffEmail], [StaffMobile], [Address], [JionningDate], [Visa_Finshing_Date]) VALUES (3, N'Pihu', N'payalpihu23@gmail.com', N'02345678922', N'East tamaki ', N'2020-10-20 09:59:00', N'2021-04-22 15:15:00')
INSERT INTO [dbo].[Staff] ([Staff_ID], [StaffName], [StaffEmail], [StaffMobile], [Address], [JionningDate], [Visa_Finshing_Date]) VALUES (4, N'Karel', N'Muralkarel45@gmail.com', N'0223337788', N'pyespa tauranga tauranga', N'2020-12-01 11:00:00', N'2021-11-11 15:16:00')
INSERT INTO [dbo].[Staff] ([Staff_ID], [StaffName], [StaffEmail], [StaffMobile], [Address], [JionningDate], [Visa_Finshing_Date]) VALUES (5, N'ritu', N'himahh76@gmail.com', N'0221007473', N'83 waterside Dr', N'2020-11-15 10:00:00', N'2022-02-11 12:00:00')
SET IDENTITY_INSERT [dbo].[Staff] OFF


SET IDENTITY_INSERT [dbo].[OnlineOrder] ON
INSERT INTO [dbo].[OnlineOrder] ([OnlineOrder_ID], [NewOrder], [Purchaser_Name], [Delivery_Address], [Estimate_Delivery], [Service_ID], [Service_objService_ID]) VALUES (1, N'Pakistani Dress ', N'Caroline ', N'34 takanini auckland', N'2020-12-18 11:00:00', 1, NULL)
INSERT INTO [dbo].[OnlineOrder] ([OnlineOrder_ID], [NewOrder], [Purchaser_Name], [Delivery_Address], [Estimate_Delivery], [Service_ID], [Service_objService_ID]) VALUES (2, N'casual wear', N'Richard', N'83 waterside Dr', N'2020-12-16 13:15:00', 45, NULL)
INSERT INTO [dbo].[OnlineOrder] ([OnlineOrder_ID], [NewOrder], [Purchaser_Name], [Delivery_Address], [Estimate_Delivery], [Service_ID], [Service_objService_ID]) VALUES (3, N'Evening Gown', N'Ganeson', N'pyespa  tauranga', N'2020-12-14 15:10:00', 21, NULL)
INSERT INTO [dbo].[OnlineOrder] ([OnlineOrder_ID], [NewOrder], [Purchaser_Name], [Delivery_Address], [Estimate_Delivery], [Service_ID], [Service_objService_ID]) VALUES (4, N'Kurties', N'Sam', N'Christchurch 23 lake road', N'2020-12-30 11:11:00', 33, NULL)
INSERT INTO [dbo].[OnlineOrder] ([OnlineOrder_ID], [NewOrder], [Purchaser_Name], [Delivery_Address], [Estimate_Delivery], [Service_ID], [Service_objService_ID]) VALUES (5, N'Girls wear', N'lilly', N'21 maitland street frankton', N'2020-12-16 15:12:00', 34, NULL)
INSERT INTO [dbo].[OnlineOrder] ([OnlineOrder_ID], [NewOrder], [Purchaser_Name], [Delivery_Address], [Estimate_Delivery], [Service_ID], [Service_objService_ID]) VALUES (6, N'lehenga', N'kashh', N'289 ulster street', N'2020-12-23 13:13:00', 65, NULL)
INSERT INTO [dbo].[OnlineOrder] ([OnlineOrder_ID], [NewOrder], [Purchaser_Name], [Delivery_Address], [Estimate_Delivery], [Service_ID], [Service_objService_ID]) VALUES (7, N'Designer suit', N'Neha', N'4 keddle street', N'2020-12-15 15:14:00', 11, NULL)
SET IDENTITY_INSERT [dbo].[OnlineOrder] OFF

SET IDENTITY_INSERT [dbo].[Services] ON
INSERT INTO [dbo].[Services] ([Service_ID], [DressName], [Price], [Size], [DressId], [Item], [Customer_ID], [Customer_objCustomer_ID]) VALUES (1, N'Designer Suit', N'$180', N'X-L', N'IN06', N'3', 20, NULL)
INSERT INTO [dbo].[Services] ([Service_ID], [DressName], [Price], [Size], [DressId], [Item], [Customer_ID], [Customer_objCustomer_ID]) VALUES (2, N'Evening Gown', N'$132', N'XXL', N'IN07', N'5', 21, NULL)
INSERT INTO [dbo].[Services] ([Service_ID], [DressName], [Price], [Size], [DressId], [Item], [Customer_ID], [Customer_objCustomer_ID]) VALUES (3, N'Heavy Unstitched Lehenga', N'$550', N'Medium', N'IN24', N'2', 22, NULL)
INSERT INTO [dbo].[Services] ([Service_ID], [DressName], [Price], [Size], [DressId], [Item], [Customer_ID], [Customer_objCustomer_ID]) VALUES (4, N'Straight Cut Style', N'$149', N'Small', N'PK14', N'3', 23, NULL)
INSERT INTO [dbo].[Services] ([Service_ID], [DressName], [Price], [Size], [DressId], [Item], [Customer_ID], [Customer_objCustomer_ID]) VALUES (5, N'Frock Style', N'$249', N'X-L', N'PK07', N'6', 24, NULL)
INSERT INTO [dbo].[Services] ([Service_ID], [DressName], [Price], [Size], [DressId], [Item], [Customer_ID], [Customer_objCustomer_ID]) VALUES (6, N'Casual Dress', N'$65', N'XXL', N'47', N'3', 25, NULL)
INSERT INTO [dbo].[Services] ([Service_ID], [DressName], [Price], [Size], [DressId], [Item], [Customer_ID], [Customer_objCustomer_ID]) VALUES (7, N'Indian Kurties', N'$45', N'X-L', N'IN99', N'10', 26, NULL)
INSERT INTO [dbo].[Services] ([Service_ID], [DressName], [Price], [Size], [DressId], [Item], [Customer_ID], [Customer_objCustomer_ID]) VALUES (8, N'Suit Designer', N'$234', N'Medium', N'IN88', N'2', 27, NULL)
SET IDENTITY_INSERT [dbo].[Services] OFF

SET IDENTITY_INSERT [dbo].[CustomerDetail] ON
INSERT INTO [dbo].[CustomerDetail] ([Customer_ID], [CustomerName], [CustomerEmail], [CustomerMobile], [Purpose], [ArrivedDate], [Staff_ID], [Staff_objStaff_ID]) VALUES (1, N'Richard', N'Rich123@gmail.com', N'0223456879', N'Browsing', N'2020-11-13 11:45:00', -3, NULL)
INSERT INTO [dbo].[CustomerDetail] ([Customer_ID], [CustomerName], [CustomerEmail], [CustomerMobile], [Purpose], [ArrivedDate], [Staff_ID], [Staff_objStaff_ID]) VALUES (2, N'Linda', N'LArunch56@gmail.com', N'0221232323', N'Buy dress', N'2020-11-17 15:57:00', 2, NULL)
INSERT INTO [dbo].[CustomerDetail] ([Customer_ID], [CustomerName], [CustomerEmail], [CustomerMobile], [Purpose], [ArrivedDate], [Staff_ID], [Staff_objStaff_ID]) VALUES (3, N'Sam', N'Samridhi23456@gmail.com', N'0212344321', N'Hold one gown ', N'2020-12-10 10:58:00', 1, NULL)
INSERT INTO [dbo].[CustomerDetail] ([Customer_ID], [CustomerName], [CustomerEmail], [CustomerMobile], [Purpose], [ArrivedDate], [Staff_ID], [Staff_objStaff_ID]) VALUES (4, N'Diamond', N'diamond34@gmail.com', N'0227672278', N'Buy Kurties 10', N'2020-12-01 21:59:00', 2, NULL)
INSERT INTO [dbo].[CustomerDetail] ([Customer_ID], [CustomerName], [CustomerEmail], [CustomerMobile], [Purpose], [ArrivedDate], [Staff_ID], [Staff_objStaff_ID]) VALUES (5, N'Pari', N'Arjunpari33@gmail.com', N'0213456789', N'Purchase 2 casual dress', N'2020-12-04 15:00:00', 4, NULL)
INSERT INTO [dbo].[CustomerDetail] ([Customer_ID], [CustomerName], [CustomerEmail], [CustomerMobile], [Purpose], [ArrivedDate], [Staff_ID], [Staff_objStaff_ID]) VALUES (6, N'John', N'LUCCyjohn345@gmail.com', N'021134345', N'Purchase gift for wife', N'2020-11-30 10:01:00', 5, NULL)
INSERT INTO [dbo].[CustomerDetail] ([Customer_ID], [CustomerName], [CustomerEmail], [CustomerMobile], [Purpose], [ArrivedDate], [Staff_ID], [Staff_objStaff_ID]) VALUES (7, N'Ritu', N'navleenr345@gamil.com', N'02233453456', N'Buy dress', N'2020-11-22 15:02:00', 6, NULL)
SET IDENTITY_INSERT [dbo].[CustomerDetail] OFF
