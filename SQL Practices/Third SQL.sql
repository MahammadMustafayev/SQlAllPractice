CREATE DATABASE KontaktHome
USE KontaktHome

CREATE TABLE Producties
(
  Id int identity(1,1) PRIMARY KEY,
  [Name] nvarchar(255) NOT NULL,
  BuyPrice DECIMAL(18,2),
  SalePrice DECIMAL(18,2),
  CategoryId int references Categories(Id)
)

CREATE TABLE Categories
(
  Id int identity(1,1) PRIMARY KEY,
  [Name] nvarchar(255) NOT NULL
)

CREATE TABLE Cart
(
  Id int identity(1,1) PRIMARY KEY,
  TotalPrice DECIMAL(18,2),
  ProductId int references Producties(Id)
)


INSERT INTO Categories(Name)
VALUES ('Smartphones'),
       ('Headphones'),
	   ('Monitor')

INSERT INTO  Producties(Name,BuyPrice,SalePrice,CategoryId)
VALUES ('Xiaomi Note11',559.99,629.99,1),
       ('Sony Nc Black',570,699.99,2),
	   ('JBL On Ear',30,49.99,2),
	   ('Huawei Nove9',500,699.99,1),
	   ('Asus Tuf Gaming',600,899.99,3),
	   ('HP Elit',600,899.99,3),
	   ('Bang Nordic Ice',600,919.99,2),
	   ('Marshall Mode',200,379.99,2),
	   ('Samsung LC',1500,3249.99,3),
	   ('Iphone 13 Pro',2000,2899.99,1)

INSERT INTO Cart(ProductId)
VALUES (1),
       (2),
	   (3),
	   (4),
	   (5),
	   (6),
	   (7),
	   (8),
	   (9),
	   (10)

SELECT * FROM Categories
SELECT * FROM Producties
SELECT * FROM Cart

CREATE PROCEDURE usp_GetAllSalePrice 
AS
BEGIN
    SELECT SUM(Producties.SalePrice) as 'SalePrice' FROM Producties 
usp_GetAllSalePrice 




