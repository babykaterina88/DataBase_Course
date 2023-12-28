/*
  Задание 5:
  Показать товары, цена которых больше средней цены в любой линейке продуктов из таблицы Production.Product.
  Показать поля [Name], ListPrice и ProductLine.
*/
SELECT 
    "Name", 
    "ListPrice", 
    "ProductLine" 
FROM 
    "Production"."Product" AS p1
WHERE 
    "ListPrice" > (
        SELECT 
            AVG(p2."ListPrice")
        FROM 
            "Production"."Product" AS p2
        WHERE 
            p1."ProductLine" = p2."ProductLine" 
		AND p2."ListPrice" > 0
        AND p2."ProductLine" IS NOT NULL
    )
    AND "ProductLine" IS NOT NULL;
