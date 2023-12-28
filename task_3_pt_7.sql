-- Показать комбинированный список таблиц Production.Product по полям ProductID, ListPrice, Purchasing.PurchaseOrderDetail по полям ProductID, UnitPrice, используя UNION.
SELECT 
  "ProductID", 
  "ListPrice"::numeric AS "Price"
FROM 
  "Production"."Product"
WHERE 
  "ListPrice" IS NOT NULL
UNION
SELECT 
  "ProductID", 
  "UnitPrice"::numeric AS "Price"
FROM 
  "Purchasing"."PurchaseOrderDetail"
WHERE 
  "UnitPrice" IS NOT NULL;

