/* Final Project Views 

USE myRecordStore;
GO

  View #1  

-- updatable view --
CREATE VIEW CurrentInventory
AS
SELECT AlbumID,Price
FROM Album;
GO

--original data--
SELECT * FROM CurrentInventory;

-- updating price --

GO
UPDATE CurrentInventory
SET Price = 21.99
WHERE AlbumID=558822;
GO

-- displaying new data--

SELECT * FROM CurrentInventory; 

  View #2  

--  creating view --
GO
CREATE VIEW CustomerOrders
AS
SELECT Customer.CustomerID, FirstName, LastName, Address,ZipCode, OrderID, OrderDate, OrderTotal
FROM Customer JOIN Orders ON Customer.CustomerID = Orders.CustomerID;
GO 

-- using the view to display the data -- 
SELECT * FROM CustomerOrders; 

VIEW 3 

-- creating view --
GO
CREATE VIEW LargeOrders
AS
SELECT CustomerID, OrderTotal FROM Orders
WHERE OrderTotal>20.00;
GO 

-- using the view to display the data --
SELECT * FROM LargeOrders; 

VIEW 4 

-- creating view --
GO
CREATE VIEW CustomerContact
AS
SELECT FirstName, LastName, Address, ZipCode FROM Customer;
GO

-- using the view to display the data --
SELECT * FROM CustomerContact; */




