-- Показать список покупателей (CustomerID),
-- которые имеют несколько стоимостей доставки (Freight),
-- из таблицы Sales.SalesOrderHeader, используя SELF JOIN.
SELECT DISTINCT 
  "s1"."CustomerID"
FROM 
  "Sales"."SalesOrderHeader" AS "s1"
JOIN 
  "Sales"."SalesOrderHeader" AS "s2"
ON 
  "s1"."CustomerID" = "s2"."CustomerID" 
AND 
  "s1"."SalesOrderID" != "s2"."SalesOrderID" 
AND 
  "s1"."Freight" != "s2"."Freight";