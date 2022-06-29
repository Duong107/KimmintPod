GO 
USE master
GO
DROP DATABASE MINTPOD
GO
CREATE DATABASE MINTPOD
GO
USE MINTPOD
GO
CREATE TABLE Accounts
(
Username nvarchar(10) not null primary key,
Password nvarchar(10) not null,
Fullname nvarchar(255) not null,
PhoneNumber varchar(11) not null,
Location nvarchar(255) not null,
Email nvarchar(255) not null,
Avatar nvarchar(255) not null,
DateCre Date not null,
Admin bit not null
)
GO
CREATE TABLE Brands
(
ID_Brand int identity not null primary key,
Name_Brand nvarchar(255) not null,
Image_Brand nvarchar(255) not null,
Activated bit not null,
User_Brand nvarchar(10) not null,
DateCre Date not null,
FOREIGN KEY (User_Brand) REFERENCES Accounts(Username)
)
GO
CREATE TABLE Products
(
ID_Pro int identity not null primary key,
Name_Pro nvarchar(255) not null,
Image_Pro nvarchar(255) not null,
Price_Pro float not null,
Nic_Pro float not null,
ML_Pro float not null,
Charg_Pro bit,
QTY_Pro int not null,
SoldOut bit not null,
Activated bit not null,
Amount int not null,
User_Pro nvarchar(10) not null,
Brand_Pro int not null,
DateCre Date not null,
FOREIGN KEY (User_Pro) REFERENCES Accounts(Username),
FOREIGN KEY (Brand_Pro) REFERENCES Brands(ID_Brand)
)
GO
CREATE TABLE ProductVote
(
ID_Vote int identity not null primary key,
ID_ProVote int not null,
VoteValue int not null,
DateCre Date not null,
User_Vote nvarchar(10) not null,
FOREIGN KEY (ID_ProVote) REFERENCES Products(ID_Pro),
FOREIGN KEY (User_Vote) REFERENCES Accounts(Username)
)
GO
CREATE TABLE Carts
(
ID_Cart int identity not null primary key,
ID_Pro int not null,
ID_User nvarchar(10) not null,
QTY int not null,
DateCre Date not null,
Puchases bit not null,
FOREIGN KEY (ID_Pro) REFERENCES Products(ID_Pro),
FOREIGN KEY (ID_User) REFERENCES Accounts(Username)
)
GO
CREATE TABLE BLOG
(
ID_BLOG int identity not null primary key,
ID_User nvarchar(10) not null,
TITLE nvarchar(255),
SUBJ nvarchar(55),
BODY nvarchar(255),
DateCre Date not null,
HIDE bit not null,
FOREIGN KEY (ID_User) REFERENCES Accounts(Username)
)
GO
ALTER TABLE Accounts
ADD activated bit;
GO
UPDATE Accounts
SET activated = 1
GO
