SELECT province_id FROM regencies GROUP BY province_id LIMIT 20;

SELECT DISTINCT (province_id) FROM regencies

SELECT COUNT(*) as total FROM villages;

SELECT id, name FROM provinces ORDER BY id;
SELECT name FROM provinces WHERE name LIKE 'jawa%'

SELECT SUM(id) FROM provinces;

select * from provinces WHERE id BETWEEN 20 AND 50;

SELECT AVG(id) FROM provinces;

DESCRIBE regencies;

DESCRIBE TABLE villages;

CREATE DATABASE shop;

DESCRIBE product;

INSERT INTO product (`ProductName`, `Price`, `Category`) VALUES
('Apple', 1.00, 'Fruits'),
( 'Banana', 0.50, 'Fruits'),
( 'Orange', 0.75, 'Fruits'),
( 'Mango', 1.50, 'Fruits'),
( 'Pineapple', 1.25, 'Fruits'),
( 'Carrot', 0.30, 'Vegetables'),
( 'Broccoli', 0.45, 'Vegetables');

SELECT * FROM products;

CREATE Table orders (
    OrderId INT not NULL PRIMARY KEY AUTO_INCREMENT ,
    OrderNumber VARCHAR(50) NOT NULL,
    Quantity INT NOT NULL,
    ProductId INT NOT NULL,
    FOREIGN KEY (ProductId) REFERENCES Products (ProductId)
);

use shop;

DESC orders;

DROP Table orders;

-- tampilkan data orders dengan kolom orderNumber, productName, quantity dan total price


SELECT orders.OrderNumber, products.ProductName, orders.quantity, (products.price * orders.quantity) as totalPrice
FROM orders INNER JOIN products ON orders.productID = products.productID;

SELECT * FROM Orders;

SELECT * FROM Products;