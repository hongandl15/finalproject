CREATE TABLE [tbl_Accountant](
	[AccountantID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[Birthday] [date] NULL,
	[Address] [nvarchar](100) NOT NULL,
 )
 CREATE TABLE [tbl_Agent](
	[AgentID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL
	PRIMARY KEY (AgentID)
 )
 CREATE TABLE [tbl_Beverage](
	[BeverageID] [nvarchar](50) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Cost] [int] NULL,
	PRIMARY KEY (BeverageID, ProductName)
 )

 CREATE TABLE [tbl_OverviewDeliveryNote](
	[DeliveryID] [nvarchar](50) NOT NULL,
	Date [nvarchar](50),
	Agent [nvarchar](50),
	Phone [nvarchar](50),
	Address [nvarchar](50),
	TotalPrice [money],
	PRIMARY KEY (DeliveryID),
 )
 CREATE TABLE [tbl_OverviewReceivedNote](
	[ReceivedID] [nvarchar](50) NOT NULL,
	Date [nvarchar](50),
	Agent [nvarchar](50),
	Phone [nvarchar](50),
	Address [nvarchar](50),
	TotalPrice [money],
	PRIMARY KEY (ReceivedID),
 )


 INSERT INTO tbl_Accountant VALUES  ('A01','Jayson','Male', '05-14-2000', 'Ho Chi Minh'),
									('A02','Thomas','Male', '11-16-2001', 'Ho Chi Minh'),
									('A03','Adele','Female', '01-25-1999', 'Ho Chi Minh')


INSERT INTO tbl_Agent VALUES ('AG01','Green House','Dong Nai', '0912345127'),
							 ('AG02','NPP','Tay Ninh', '0851231258')



INSERT INTO tbl_Beverage VALUES	('B01', 'Pepsi', 'Soft drink',0, 10000),
								('B02', 'O Long', 'Tea',0, 12000),
								('B03', 'Revice', 'Sport drink',0, 9000),
								('B04', 'Orange', 'Juice drink',0, 15000),
								('B05', 'Green Tea', 'Tea',0, 10000),
								('B06', 'Sting', 'Soft drink',0, 12000),
								('B07', 'Redbull', 'Sport drink',0, 14000),
								('B08', 'C2', 'Tea',0, 8000),
								('B09', 'Apple', 'Juice drink',0, 13000),
								('B10', 'Lime', 'Juice drink',0, 11000)