-- Показать список стоимостей доставки (Freight), к которым относятся несколько покупателей (CustomerID), из таблицы Sales.SalesOrderHeader, используя SELF JOIN.
SELECT DISTINCT 
  "s1"."Freight"
FROM 
  "Sales"."SalesOrderHeader" AS "s1"
JOIN 
  "Sales"."SalesOrderHeader" AS "s2"
ON 
  "s1"."Freight" = "s2"."Freight" 
AND 
  "s1"."CustomerID" != "s2"."CustomerID";