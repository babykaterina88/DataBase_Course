/*
  Задание 3:
  Показать товары, для которых существует только один 
  стиль и они доступны только в одном цвете из таблицы Production.Product.
  Показать поля [Name], Style и Color.
*/
SELECT 
    "Name", 
    "Style", 
    "Color"
FROM 
    "Production"."Product" AS P
WHERE 
    EXISTS (
        SELECT 1
        FROM "Production"."Product" AS P2
        WHERE P2."Style" = P."Style" AND P2."ProductID" <> P."ProductID"
        GROUP BY P2."Style"
        HAVING COUNT(DISTINCT P2."Color") = 1
    )
    AND EXISTS (
        SELECT 1
        FROM "Production"."Product" AS P2
        WHERE P2."Color" = P."Color" AND P2."ProductID" <> P."ProductID"
        GROUP BY P2."Color"
        HAVING COUNT(DISTINCT P2."Style") = 1
    );
