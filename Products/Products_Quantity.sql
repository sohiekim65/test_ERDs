-- 제품명, 가격, 주문 갯수 표시?
-- 결과 : 2155
SELECT Products.ProductName, Products.Price, OrderDetails.Quantity
FROM OrderDetails INNER JOIN Products
	ON OrderDetails.ProductID = Products.ProductID
;