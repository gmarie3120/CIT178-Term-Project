/* 
USE myRecordStore;

SELECT ZipCode.State, COUNT(DISTINCT Customer.customerID) AS [Customers Per State]
FROM Customer
JOIN ZipCode ON Customer.ZipCode = ZipCode.ZipCode
GROUP BY ZipCode.State
ORDER BY ZipCode.State ASC; 

USE myRecordStore;
SELECT MIN(Price) AS 'Minimum Record Price'
FROM Album; 

USE myRecordStore;
SELECT MAX(OrderTotal) AS [Largest Order]
FROM Orders; 

USE myRecordStore;
SELECT COUNT(OrderID) AS [Number of Orders],
MAX(OrderTotal) AS [Largest Order], MIN(OrderTotal) AS [Lowest Order],
AVG(OrderTotal) AS [Average Order Amount]
FROM Orders; */
