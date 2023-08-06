SELECT p.idProduct, p.PName, s.SocialName
FROM product p
INNER JOIN productSupplier ps ON p.idProduct = ps.idPsProduct
INNER JOIN supplier s ON ps.idPsSupplier = s.idSupplier;

SELECT FName, Minit, Lname, Address, contact
FROM client

UNION

SELECT SocialName, AbstName, '', location, contact
FROM seller;


SELECT idOrderClient, COUNT(*) AS NumberOfOrders
FROM orders
GROUP BY idOrderClient;

SELECT idOrderClient, COUNT(*) AS NumberOfOrders
FROM orders
GROUP BY idOrderClient
HAVING COUNT(*) > 2;

SELECT s.idSeller, s.SocialName, SUM(ps.prodQuantity) AS TotalQuantitySold
FROM seller s
INNER JOIN productSeller ps ON s.idSeller = ps.idPseller
GROUP BY s.idSeller, s.SocialName;
