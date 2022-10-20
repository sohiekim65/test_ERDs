-- Products에 CategoryID가 5,6를 표시, 내용 프로턱트 이름, 공급자 이름 출력?
-- 결과 : 13개
SELECT Products.ProductName, Suppliers.SupplierName
FROM Products INNER JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID
AND Products.CategoryID IN (5,6)
;    