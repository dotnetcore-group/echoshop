
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/17/2017 16:05:44
-- Generated from EDMX file: E:\WorkSpace\EchoShop\EchoShop.Model\EchoShopModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [EchoShop];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_T_UserDetailInfoT_UserBaseInfo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[T_UserDetailInfoSet] DROP CONSTRAINT [FK_T_UserDetailInfoT_UserBaseInfo];
GO
IF OBJECT_ID(N'[dbo].[FK_DeliveryInfoT_UserBaseInfo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DeliveryInfoSet] DROP CONSTRAINT [FK_DeliveryInfoT_UserBaseInfo];
GO
IF OBJECT_ID(N'[dbo].[FK_T_OrderInfoT_UserBaseInfo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[T_OrderInfoSet] DROP CONSTRAINT [FK_T_OrderInfoT_UserBaseInfo];
GO
IF OBJECT_ID(N'[dbo].[FK_T_OrderInfoT_OrderStatus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[T_OrderInfoSet] DROP CONSTRAINT [FK_T_OrderInfoT_OrderStatus];
GO
IF OBJECT_ID(N'[dbo].[FK_T_GoodsT_Category]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[T_ProductsSet] DROP CONSTRAINT [FK_T_GoodsT_Category];
GO
IF OBJECT_ID(N'[dbo].[FK_T_OrderInfoT_Goods]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[T_OrderInfoSet] DROP CONSTRAINT [FK_T_OrderInfoT_Goods];
GO
IF OBJECT_ID(N'[dbo].[FK_T_GoodsT_Brand]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[T_ProductsSet] DROP CONSTRAINT [FK_T_GoodsT_Brand];
GO
IF OBJECT_ID(N'[dbo].[FK_T_ProductAttrT_Products]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[T_ProductAttrSet] DROP CONSTRAINT [FK_T_ProductAttrT_Products];
GO
IF OBJECT_ID(N'[dbo].[FK_T_AttrValueT_Attributes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[T_AttrValueSet] DROP CONSTRAINT [FK_T_AttrValueT_Attributes];
GO
IF OBJECT_ID(N'[dbo].[FK_T_AttributesT_ProductAttr]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[T_ProductAttrSet] DROP CONSTRAINT [FK_T_AttributesT_ProductAttr];
GO
IF OBJECT_ID(N'[dbo].[FK_T_ProductAttrT_AttrValue]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[T_ProductAttrSet] DROP CONSTRAINT [FK_T_ProductAttrT_AttrValue];
GO
IF OBJECT_ID(N'[dbo].[FK_T_OrderInfoT_Attributes_T_OrderInfo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[T_OrderInfoT_Attributes] DROP CONSTRAINT [FK_T_OrderInfoT_Attributes_T_OrderInfo];
GO
IF OBJECT_ID(N'[dbo].[FK_T_OrderInfoT_Attributes_T_Attributes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[T_OrderInfoT_Attributes] DROP CONSTRAINT [FK_T_OrderInfoT_Attributes_T_Attributes];
GO
IF OBJECT_ID(N'[dbo].[FK_T_FavoritesT_UserBaseInfo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[T_FavoritesSet] DROP CONSTRAINT [FK_T_FavoritesT_UserBaseInfo];
GO
IF OBJECT_ID(N'[dbo].[FK_T_ProductsT_Favorites]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[T_FavoritesSet] DROP CONSTRAINT [FK_T_ProductsT_Favorites];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[T_UserBaseInfoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[T_UserBaseInfoSet];
GO
IF OBJECT_ID(N'[dbo].[T_UserDetailInfoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[T_UserDetailInfoSet];
GO
IF OBJECT_ID(N'[dbo].[DeliveryInfoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DeliveryInfoSet];
GO
IF OBJECT_ID(N'[dbo].[T_OrderInfoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[T_OrderInfoSet];
GO
IF OBJECT_ID(N'[dbo].[T_OrderStatusSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[T_OrderStatusSet];
GO
IF OBJECT_ID(N'[dbo].[T_CategorySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[T_CategorySet];
GO
IF OBJECT_ID(N'[dbo].[T_ProductsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[T_ProductsSet];
GO
IF OBJECT_ID(N'[dbo].[T_AdminSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[T_AdminSet];
GO
IF OBJECT_ID(N'[dbo].[T_BrandSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[T_BrandSet];
GO
IF OBJECT_ID(N'[dbo].[T_ProductAttrSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[T_ProductAttrSet];
GO
IF OBJECT_ID(N'[dbo].[T_AttributesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[T_AttributesSet];
GO
IF OBJECT_ID(N'[dbo].[T_AttrValueSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[T_AttrValueSet];
GO
IF OBJECT_ID(N'[dbo].[T_FriendLinksSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[T_FriendLinksSet];
GO
IF OBJECT_ID(N'[dbo].[T_FavoritesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[T_FavoritesSet];
GO
IF OBJECT_ID(N'[dbo].[T_OrderInfoT_Attributes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[T_OrderInfoT_Attributes];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'T_UserBaseInfoSet'
CREATE TABLE [dbo].[T_UserBaseInfoSet] (
    [F_UId] int IDENTITY(1,1) NOT NULL,
    [F_UName] varchar(20)  NOT NULL,
    [F_UPwd] nchar(32)  NOT NULL,
    [F_UState] bit  NOT NULL,
    [F_UCreationDate] datetime  NOT NULL
);
GO

-- Creating table 'T_UserDetailInfoSet'
CREATE TABLE [dbo].[T_UserDetailInfoSet] (
    [F_Id] uniqueidentifier  NOT NULL,
    [F_UNickName] nvarchar(20)  NOT NULL,
    [F_UBirthday] datetime  NULL,
    [F_USex] nchar(1)  NULL,
    [F_UTel] nvarchar(11)  NULL,
    [T_UserBaseInfo_F_UId] int  NOT NULL
);
GO

-- Creating table 'DeliveryInfoSet'
CREATE TABLE [dbo].[DeliveryInfoSet] (
    [F_DId] uniqueidentifier  NOT NULL,
    [F_DConsignee] nvarchar(10)  NOT NULL,
    [F_DAddress] nvarchar(max)  NOT NULL,
    [F_DTel] nvarchar(max)  NOT NULL,
    [F_DIsDefault] bit  NULL,
    [T_UserBaseInfo_F_UId] int  NOT NULL
);
GO

-- Creating table 'T_OrderInfoSet'
CREATE TABLE [dbo].[T_OrderInfoSet] (
    [Id] uniqueidentifier  NOT NULL,
    [F_Quantity] nvarchar(max)  NOT NULL,
    [F_UnitPrice] real  NOT NULL,
    [T_UserBaseInfo_F_UId] int  NOT NULL,
    [T_OrderStatus_Id] int  NOT NULL,
    [T_Goods_F_Id] int  NOT NULL,
    [DeliveryInfo_F_DId] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'T_OrderStatusSet'
CREATE TABLE [dbo].[T_OrderStatusSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [StatuName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'T_CategorySet'
CREATE TABLE [dbo].[T_CategorySet] (
    [F_Id] int IDENTITY(1,1) NOT NULL,
    [F_CategoryName] nvarchar(max)  NOT NULL,
    [F_OrderValue] int  NULL,
    [F_Icon] nvarchar(max)  NULL,
    [F_ParentId] int  NOT NULL
);
GO

-- Creating table 'T_ProductsSet'
CREATE TABLE [dbo].[T_ProductsSet] (
    [F_Id] int IDENTITY(1,1) NOT NULL,
    [F_Name] nvarchar(max)  NOT NULL,
    [F_Desc] nvarchar(max)  NOT NULL,
    [F_OriginalPrice] real  NOT NULL,
    [F_PresentPrice] real  NOT NULL,
    [F_IsNew] bit  NOT NULL,
    [F_IsHot] bit  NOT NULL,
    [F_Img] nvarchar(max)  NULL,
    [F_AddDate] datetime  NULL,
    [T_Category_F_Id] int  NOT NULL,
    [T_Brand_Id] int  NOT NULL
);
GO

-- Creating table 'T_AdminSet'
CREATE TABLE [dbo].[T_AdminSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [F_Name] nvarchar(max)  NOT NULL,
    [F_Pwd] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'T_BrandSet'
CREATE TABLE [dbo].[T_BrandSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [F_Name] nvarchar(max)  NOT NULL,
    [F_Logo] nvarchar(max)  NULL
);
GO

-- Creating table 'T_ProductAttrSet'
CREATE TABLE [dbo].[T_ProductAttrSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Price] real  NOT NULL,
    [T_Products_F_Id] int  NOT NULL,
    [T_Attributes_AttrId] int  NOT NULL,
    [T_AttrValue_Id] int  NOT NULL
);
GO

-- Creating table 'T_AttributesSet'
CREATE TABLE [dbo].[T_AttributesSet] (
    [AttrId] int IDENTITY(1,1) NOT NULL,
    [AttrName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'T_AttrValueSet'
CREATE TABLE [dbo].[T_AttrValueSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [T_Attributes_AttrId] int  NOT NULL
);
GO

-- Creating table 'T_FriendLinksSet'
CREATE TABLE [dbo].[T_FriendLinksSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Logo] nvarchar(max)  NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [Url] nvarchar(max)  NOT NULL,
    [DisplayOrder] int  NOT NULL
);
GO

-- Creating table 'T_FavoritesSet'
CREATE TABLE [dbo].[T_FavoritesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [AddDate] datetime  NULL,
    [T_UserBaseInfo_F_UId] int  NOT NULL,
    [T_Products_F_Id] int  NOT NULL
);
GO

-- Creating table 'T_OrderInfoT_Attributes'
CREATE TABLE [dbo].[T_OrderInfoT_Attributes] (
    [T_OrderInfo_Id] uniqueidentifier  NOT NULL,
    [T_Attributes_AttrId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [F_UId] in table 'T_UserBaseInfoSet'
ALTER TABLE [dbo].[T_UserBaseInfoSet]
ADD CONSTRAINT [PK_T_UserBaseInfoSet]
    PRIMARY KEY CLUSTERED ([F_UId] ASC);
GO

-- Creating primary key on [F_Id] in table 'T_UserDetailInfoSet'
ALTER TABLE [dbo].[T_UserDetailInfoSet]
ADD CONSTRAINT [PK_T_UserDetailInfoSet]
    PRIMARY KEY CLUSTERED ([F_Id] ASC);
GO

-- Creating primary key on [F_DId] in table 'DeliveryInfoSet'
ALTER TABLE [dbo].[DeliveryInfoSet]
ADD CONSTRAINT [PK_DeliveryInfoSet]
    PRIMARY KEY CLUSTERED ([F_DId] ASC);
GO

-- Creating primary key on [Id] in table 'T_OrderInfoSet'
ALTER TABLE [dbo].[T_OrderInfoSet]
ADD CONSTRAINT [PK_T_OrderInfoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'T_OrderStatusSet'
ALTER TABLE [dbo].[T_OrderStatusSet]
ADD CONSTRAINT [PK_T_OrderStatusSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [F_Id] in table 'T_CategorySet'
ALTER TABLE [dbo].[T_CategorySet]
ADD CONSTRAINT [PK_T_CategorySet]
    PRIMARY KEY CLUSTERED ([F_Id] ASC);
GO

-- Creating primary key on [F_Id] in table 'T_ProductsSet'
ALTER TABLE [dbo].[T_ProductsSet]
ADD CONSTRAINT [PK_T_ProductsSet]
    PRIMARY KEY CLUSTERED ([F_Id] ASC);
GO

-- Creating primary key on [Id] in table 'T_AdminSet'
ALTER TABLE [dbo].[T_AdminSet]
ADD CONSTRAINT [PK_T_AdminSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'T_BrandSet'
ALTER TABLE [dbo].[T_BrandSet]
ADD CONSTRAINT [PK_T_BrandSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'T_ProductAttrSet'
ALTER TABLE [dbo].[T_ProductAttrSet]
ADD CONSTRAINT [PK_T_ProductAttrSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [AttrId] in table 'T_AttributesSet'
ALTER TABLE [dbo].[T_AttributesSet]
ADD CONSTRAINT [PK_T_AttributesSet]
    PRIMARY KEY CLUSTERED ([AttrId] ASC);
GO

-- Creating primary key on [Id] in table 'T_AttrValueSet'
ALTER TABLE [dbo].[T_AttrValueSet]
ADD CONSTRAINT [PK_T_AttrValueSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'T_FriendLinksSet'
ALTER TABLE [dbo].[T_FriendLinksSet]
ADD CONSTRAINT [PK_T_FriendLinksSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'T_FavoritesSet'
ALTER TABLE [dbo].[T_FavoritesSet]
ADD CONSTRAINT [PK_T_FavoritesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [T_OrderInfo_Id], [T_Attributes_AttrId] in table 'T_OrderInfoT_Attributes'
ALTER TABLE [dbo].[T_OrderInfoT_Attributes]
ADD CONSTRAINT [PK_T_OrderInfoT_Attributes]
    PRIMARY KEY CLUSTERED ([T_OrderInfo_Id], [T_Attributes_AttrId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [T_UserBaseInfo_F_UId] in table 'T_UserDetailInfoSet'
ALTER TABLE [dbo].[T_UserDetailInfoSet]
ADD CONSTRAINT [FK_T_UserDetailInfoT_UserBaseInfo]
    FOREIGN KEY ([T_UserBaseInfo_F_UId])
    REFERENCES [dbo].[T_UserBaseInfoSet]
        ([F_UId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_T_UserDetailInfoT_UserBaseInfo'
CREATE INDEX [IX_FK_T_UserDetailInfoT_UserBaseInfo]
ON [dbo].[T_UserDetailInfoSet]
    ([T_UserBaseInfo_F_UId]);
GO

-- Creating foreign key on [T_UserBaseInfo_F_UId] in table 'DeliveryInfoSet'
ALTER TABLE [dbo].[DeliveryInfoSet]
ADD CONSTRAINT [FK_DeliveryInfoT_UserBaseInfo]
    FOREIGN KEY ([T_UserBaseInfo_F_UId])
    REFERENCES [dbo].[T_UserBaseInfoSet]
        ([F_UId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DeliveryInfoT_UserBaseInfo'
CREATE INDEX [IX_FK_DeliveryInfoT_UserBaseInfo]
ON [dbo].[DeliveryInfoSet]
    ([T_UserBaseInfo_F_UId]);
GO

-- Creating foreign key on [T_UserBaseInfo_F_UId] in table 'T_OrderInfoSet'
ALTER TABLE [dbo].[T_OrderInfoSet]
ADD CONSTRAINT [FK_T_OrderInfoT_UserBaseInfo]
    FOREIGN KEY ([T_UserBaseInfo_F_UId])
    REFERENCES [dbo].[T_UserBaseInfoSet]
        ([F_UId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_T_OrderInfoT_UserBaseInfo'
CREATE INDEX [IX_FK_T_OrderInfoT_UserBaseInfo]
ON [dbo].[T_OrderInfoSet]
    ([T_UserBaseInfo_F_UId]);
GO

-- Creating foreign key on [T_OrderStatus_Id] in table 'T_OrderInfoSet'
ALTER TABLE [dbo].[T_OrderInfoSet]
ADD CONSTRAINT [FK_T_OrderInfoT_OrderStatus]
    FOREIGN KEY ([T_OrderStatus_Id])
    REFERENCES [dbo].[T_OrderStatusSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_T_OrderInfoT_OrderStatus'
CREATE INDEX [IX_FK_T_OrderInfoT_OrderStatus]
ON [dbo].[T_OrderInfoSet]
    ([T_OrderStatus_Id]);
GO

-- Creating foreign key on [T_Category_F_Id] in table 'T_ProductsSet'
ALTER TABLE [dbo].[T_ProductsSet]
ADD CONSTRAINT [FK_T_GoodsT_Category]
    FOREIGN KEY ([T_Category_F_Id])
    REFERENCES [dbo].[T_CategorySet]
        ([F_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_T_GoodsT_Category'
CREATE INDEX [IX_FK_T_GoodsT_Category]
ON [dbo].[T_ProductsSet]
    ([T_Category_F_Id]);
GO

-- Creating foreign key on [T_Goods_F_Id] in table 'T_OrderInfoSet'
ALTER TABLE [dbo].[T_OrderInfoSet]
ADD CONSTRAINT [FK_T_OrderInfoT_Goods]
    FOREIGN KEY ([T_Goods_F_Id])
    REFERENCES [dbo].[T_ProductsSet]
        ([F_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_T_OrderInfoT_Goods'
CREATE INDEX [IX_FK_T_OrderInfoT_Goods]
ON [dbo].[T_OrderInfoSet]
    ([T_Goods_F_Id]);
GO

-- Creating foreign key on [T_Brand_Id] in table 'T_ProductsSet'
ALTER TABLE [dbo].[T_ProductsSet]
ADD CONSTRAINT [FK_T_GoodsT_Brand]
    FOREIGN KEY ([T_Brand_Id])
    REFERENCES [dbo].[T_BrandSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_T_GoodsT_Brand'
CREATE INDEX [IX_FK_T_GoodsT_Brand]
ON [dbo].[T_ProductsSet]
    ([T_Brand_Id]);
GO

-- Creating foreign key on [T_Products_F_Id] in table 'T_ProductAttrSet'
ALTER TABLE [dbo].[T_ProductAttrSet]
ADD CONSTRAINT [FK_T_ProductAttrT_Products]
    FOREIGN KEY ([T_Products_F_Id])
    REFERENCES [dbo].[T_ProductsSet]
        ([F_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_T_ProductAttrT_Products'
CREATE INDEX [IX_FK_T_ProductAttrT_Products]
ON [dbo].[T_ProductAttrSet]
    ([T_Products_F_Id]);
GO

-- Creating foreign key on [T_Attributes_AttrId] in table 'T_AttrValueSet'
ALTER TABLE [dbo].[T_AttrValueSet]
ADD CONSTRAINT [FK_T_AttrValueT_Attributes]
    FOREIGN KEY ([T_Attributes_AttrId])
    REFERENCES [dbo].[T_AttributesSet]
        ([AttrId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_T_AttrValueT_Attributes'
CREATE INDEX [IX_FK_T_AttrValueT_Attributes]
ON [dbo].[T_AttrValueSet]
    ([T_Attributes_AttrId]);
GO

-- Creating foreign key on [T_Attributes_AttrId] in table 'T_ProductAttrSet'
ALTER TABLE [dbo].[T_ProductAttrSet]
ADD CONSTRAINT [FK_T_AttributesT_ProductAttr]
    FOREIGN KEY ([T_Attributes_AttrId])
    REFERENCES [dbo].[T_AttributesSet]
        ([AttrId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_T_AttributesT_ProductAttr'
CREATE INDEX [IX_FK_T_AttributesT_ProductAttr]
ON [dbo].[T_ProductAttrSet]
    ([T_Attributes_AttrId]);
GO

-- Creating foreign key on [T_AttrValue_Id] in table 'T_ProductAttrSet'
ALTER TABLE [dbo].[T_ProductAttrSet]
ADD CONSTRAINT [FK_T_ProductAttrT_AttrValue]
    FOREIGN KEY ([T_AttrValue_Id])
    REFERENCES [dbo].[T_AttrValueSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_T_ProductAttrT_AttrValue'
CREATE INDEX [IX_FK_T_ProductAttrT_AttrValue]
ON [dbo].[T_ProductAttrSet]
    ([T_AttrValue_Id]);
GO

-- Creating foreign key on [T_OrderInfo_Id] in table 'T_OrderInfoT_Attributes'
ALTER TABLE [dbo].[T_OrderInfoT_Attributes]
ADD CONSTRAINT [FK_T_OrderInfoT_Attributes_T_OrderInfo]
    FOREIGN KEY ([T_OrderInfo_Id])
    REFERENCES [dbo].[T_OrderInfoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [T_Attributes_AttrId] in table 'T_OrderInfoT_Attributes'
ALTER TABLE [dbo].[T_OrderInfoT_Attributes]
ADD CONSTRAINT [FK_T_OrderInfoT_Attributes_T_Attributes]
    FOREIGN KEY ([T_Attributes_AttrId])
    REFERENCES [dbo].[T_AttributesSet]
        ([AttrId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_T_OrderInfoT_Attributes_T_Attributes'
CREATE INDEX [IX_FK_T_OrderInfoT_Attributes_T_Attributes]
ON [dbo].[T_OrderInfoT_Attributes]
    ([T_Attributes_AttrId]);
GO

-- Creating foreign key on [T_UserBaseInfo_F_UId] in table 'T_FavoritesSet'
ALTER TABLE [dbo].[T_FavoritesSet]
ADD CONSTRAINT [FK_T_FavoritesT_UserBaseInfo]
    FOREIGN KEY ([T_UserBaseInfo_F_UId])
    REFERENCES [dbo].[T_UserBaseInfoSet]
        ([F_UId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_T_FavoritesT_UserBaseInfo'
CREATE INDEX [IX_FK_T_FavoritesT_UserBaseInfo]
ON [dbo].[T_FavoritesSet]
    ([T_UserBaseInfo_F_UId]);
GO

-- Creating foreign key on [T_Products_F_Id] in table 'T_FavoritesSet'
ALTER TABLE [dbo].[T_FavoritesSet]
ADD CONSTRAINT [FK_T_ProductsT_Favorites]
    FOREIGN KEY ([T_Products_F_Id])
    REFERENCES [dbo].[T_ProductsSet]
        ([F_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_T_ProductsT_Favorites'
CREATE INDEX [IX_FK_T_ProductsT_Favorites]
ON [dbo].[T_FavoritesSet]
    ([T_Products_F_Id]);
GO

-- Creating foreign key on [DeliveryInfo_F_DId] in table 'T_OrderInfoSet'
ALTER TABLE [dbo].[T_OrderInfoSet]
ADD CONSTRAINT [FK_T_OrderInfoDeliveryInfo]
    FOREIGN KEY ([DeliveryInfo_F_DId])
    REFERENCES [dbo].[DeliveryInfoSet]
        ([F_DId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_T_OrderInfoDeliveryInfo'
CREATE INDEX [IX_FK_T_OrderInfoDeliveryInfo]
ON [dbo].[T_OrderInfoSet]
    ([DeliveryInfo_F_DId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------