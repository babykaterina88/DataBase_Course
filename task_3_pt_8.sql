-- Показать список ProductID, 
-- которые содержатся и в таблице Production.Product,
-- и в таблице Production.TransactionHistoryArchive
SELECT 
  "ProductID" 
FROM 
  "Production"."Product"

INTERSECT

SELECT 
  "ProductID" 
FROM 
  "Production"."TransactionHistoryArchive";