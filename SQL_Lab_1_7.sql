-- Задание 7: Показать ID сотрудников (BusinessEntityID), 
-- доли продаж (SalesQuota), продажи в этом году (SalesYTD)
-- и продажи в прошлом году (SalesLastYear) из таблицы Sales.SalesPerson. 
-- Неизвестные доли продаж заменить на 0 и вынести в отдельное поле с названием OtherSalesQuota.
SELECT "BusinessEntityID", COALESCE("SalesQuota", 0) AS "OtherSalesQuota", "SalesYTD", "SalesLastYear" 
FROM "Sales"."SalesPerson";
