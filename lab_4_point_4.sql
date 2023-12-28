/*
  Задание 4:
  Показать товары, цена которых равна минимальной (больше нуля) цене товара того же размера из таблицы Production.Product.
  Показать поля [Name], ListPrice и Size.
*/
SELECT 
    "Name", 
    "ListPrice", 
    "Size" 
FROM 
    "Production"."Product" p1
WHERE 
    "ListPrice" = (
        SELECT 
            MIN(p2."ListPrice")
        FROM 
            "Production"."Product" p2
        WHERE 
            p1."Size" = p2."Size" 
            AND p2."ListPrice" > 0
    )
    AND "Size" IS NOT NULL;
