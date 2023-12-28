-- Показать список ProductID, которые содержатся и в таблице Production.Product, и в таблице Production.TransactionHistoryArchive
SELECT 
  "p"."ProductID"
FROM 
  "Production"."Product" AS "p"
JOIN 
  "Production"."TransactionHistoryArchive" AS "t"
ON 
  "p"."ProductID" = "t"."ProductID";