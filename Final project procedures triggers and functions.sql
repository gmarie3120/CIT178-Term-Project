/* Final Project Procedures 

USE myRecordStore;
GO
CREATE PROC spCustomer
AS
SELECT * FROM Customer
ORDER BY LastName;
GO

EXEC spCustomer; 

USE myRecordStore;
GO
CREATE PROC spGetCustomer
	@CustomerID int
AS
BEGIN
	SELECT * FROM Customer
	WHERE CustomerID = @CustomerID;
END
GO
EXEC spGetCustomer 11644 

USE myRecordStore;
GO
CREATE PROC spCustomerContact
	@CustomerID int,
	@FirstName nvarchar(30) OUTPUT,
	@LastName nvarchar(50) OUTPUT,
	@ZipCode varchar(10) OUTPUT 
AS
SELECT @FirstName = FirstName, @LastName = LastName, @ZipCode = ZipCode 
FROM Customer 
WHERE CustomerID = @CustomerID;
GO
-- Run the procedure
DECLARE @FirstName nvarchar(30);
DECLARE @LastName nvarchar(50);
DECLARE @ZipCode varchar(10);
EXEC spCustomerContact 11644, @FirstName OUTPUT, @LastName OUTPUT, @ZipCode OUTPUT;
SELECT @FirstName AS 'First Name', @LastName AS 'Last Name', @ZipCode AS 'Zip Code';

USE myRecordStore;
GO
CREATE PROC spCustomerCount
AS
DECLARE @CustomerCount int;
SELECT @CustomerCount = COUNT(*)
FROM Customer 
RETURN @CustomerCount;
GO

DECLARE @CustomerCount int;
EXEC @CustomerCount = spCustomerCount;
PRINT 'There are ' + CONVERT(varchar, @CustomerCount) + ' customers in your database';
GO 

FINAL PROJECT UNSER DEFINED FUNCTIONS 

USE myRecordStore;
GO
CREATE FUNCTION fnGetAlbum
    (@AlbumName nvarchar(50) = '%')
    RETURNS int
BEGIN
    RETURN (SELECT AlbumID FROM Album WHERE Title Like @AlbumName);
END; 

GO
SELECT AlbumID, ArtistID, Price FROM Album 
WHERE AlbumID = dbo.fnGetAlbum('Master%');

USE myRecordStore;
GO
CREATE FUNCTION fnAlbums
	(@AlbumName nvarchar(50) = '%')
	RETURNS table
RETURN
	(SELECT * FROM Album WHERE ArtistID LIKE @AlbumName);
GO
SELECT * FROM dbo.fnAlbums('%Duets%'); 

FINAL PROJECT TRIGGERS 

USE myRecordStore;
 GO
 SELECT * INTO AlbumsSold
 FROM OrderDetail
 WHERE 1=0; 

 ALTER TABLE AlbumsSold
 ADD Title varchar(50);
 GO 

 CREATE TRIGGER AlbumsSold_INSERT_UPDATE ON AlbumsSold
AFTER INSERT,UPDATE
AS
UPDATE AlbumsSold SET UnitPrice = CEILING(UnitPrice) 
WHERE OrderID IN (SELECT OrderID FROM Inserted); 

INSERT AlbumsSold
VALUES ('ID-399', '14PBJ6', '448855', '3', '27.49', 'Into The Mystic'); 

SELECT * FROM AlbumsSold; */


