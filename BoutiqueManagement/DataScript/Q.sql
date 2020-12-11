CREATE TABLE [dbo].[Staff] (
    [Staff_ID]           INT            IDENTITY (1, 1) NOT NULL,
    [StaffName]          NVARCHAR (MAX) NULL,
    [StaffEmail]         NVARCHAR (MAX) NULL,
    [StaffMobile]        NVARCHAR (MAX) NULL,
    [Address]            NVARCHAR (MAX) NULL,
    [JionningDate]       DATETIME2 (7)  NOT NULL,
    [Visa_Finshing_Date] DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED ([Staff_ID] ASC)
);



CREATE TABLE [dbo].[Services] (
    [Service_ID]              INT            IDENTITY (1, 1) NOT NULL,
    [DressName]               NVARCHAR (MAX) NULL,
    [Price]                   NVARCHAR (MAX) NULL,
    [Size]                    NVARCHAR (MAX) NULL,
    [DressId]                 NVARCHAR (MAX) NULL,
    [Item]                    NVARCHAR (MAX) NULL,
    [Customer_ID]             INT            NOT NULL,
    [Customer_objCustomer_ID] INT            NULL,
    CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED ([Service_ID] ASC),
    CONSTRAINT [FK_Services_CustomerDetail_Customer_objCustomer_ID] FOREIGN KEY ([Customer_objCustomer_ID]) REFERENCES [dbo].[CustomerDetail] ([Customer_ID])
);


GO
CREATE NONCLUSTERED INDEX [IX_Services_Customer_objCustomer_ID]
    ON [dbo].[Services]([Customer_objCustomer_ID] ASC);


    CREATE TABLE [dbo].[OnlineOrder] (
    [OnlineOrder_ID]        INT            IDENTITY (1, 1) NOT NULL,
    [NewOrder]              NVARCHAR (MAX) NULL,
    [Purchaser_Name]        NVARCHAR (MAX) NULL,
    [Delivery_Address]      NVARCHAR (MAX) NULL,
    [Estimate_Delivery]     DATETIME2 (7)  NOT NULL,
    [Service_ID]            INT            NOT NULL,
    [Service_objService_ID] INT            NULL,
    CONSTRAINT [PK_OnlineOrder] PRIMARY KEY CLUSTERED ([OnlineOrder_ID] ASC),
    CONSTRAINT [FK_OnlineOrder_Services_Service_objService_ID] FOREIGN KEY ([Service_objService_ID]) REFERENCES [dbo].[Services] ([Service_ID])
);


GO
CREATE NONCLUSTERED INDEX [IX_OnlineOrder_Service_objService_ID]
    ON [dbo].[OnlineOrder]([Service_objService_ID] ASC);

CREATE TABLE [dbo].[CustomerDetail] (
    [Customer_ID]       INT            IDENTITY (1, 1) NOT NULL,
    [CustomerName]      NVARCHAR (MAX) NULL,
    [CustomerEmail]     NVARCHAR (MAX) NULL,
    [CustomerMobile]    NVARCHAR (MAX) NULL,
    [Purpose]           NVARCHAR (MAX) NULL,
    [ArrivedDate]       DATETIME2 (7)  NOT NULL,
    [Staff_ID]          INT            NOT NULL,
    [Staff_objStaff_ID] INT            NULL,
    CONSTRAINT [PK_CustomerDetail] PRIMARY KEY CLUSTERED ([Customer_ID] ASC),
    CONSTRAINT [FK_CustomerDetail_Staff_Staff_objStaff_ID] FOREIGN KEY ([Staff_objStaff_ID]) REFERENCES [dbo].[Staff] ([Staff_ID])
);


GO
CREATE NONCLUSTERED INDEX [IX_CustomerDetail_Staff_objStaff_ID]
    ON [dbo].[CustomerDetail]([Staff_objStaff_ID] ASC);

CREATE TABLE [dbo].[__EFMigrationsHistory] (
    [MigrationId]    NVARCHAR (150) NOT NULL,
    [ProductVersion] NVARCHAR (32)  NOT NULL,
    CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED ([MigrationId] ASC)
);

