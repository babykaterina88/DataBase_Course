/*
  Задание 3:
  Показать товары, для которых существует только один стиль и они доступны только в одном цвете из таблицы Production.Product.
  Показать поля [Name], Style и Color.
*/
SELECT 
    P."Name", 
    P."Style", 
    P."Color" 
FROM 
    "Production"."Product" P
WHERE 
    P."Style" IS NOT NULL 
    AND P."Color" IS NOT NULL
    AND (SELECT COUNT(DISTINCT P2."Style") 
         FROM "Production"."Product" P2
         WHERE P2."ProductID" = P."ProductID") = 1
    AND (SELECT COUNT(DISTINCT P2."Color") 
         FROM "Production"."Product" P2
         WHERE P2."ProductID" = P."ProductID") = 1;
