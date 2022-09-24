CREATE TABLE Products (
ID int IDENTITY(1,1) NOT NULL,
Name varchar(100),
Brand varchar(100),
Category varchar(50),
Price int
CONSTRAINT PK_ID PRIMARY KEY (ID)
);

CREATE TABLE Reviews (
ProductID int NOT NULL,
Review varchar(200),
CONSTRAINT FK_ProductID FOREIGN KEY (ProductID) REFERENCES Products(ID)
);

CREATE TABLE Rating (
ProductID int NOT NULL,
Rating int,
);