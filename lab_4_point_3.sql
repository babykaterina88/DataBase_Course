/*
  Задание 3:
  Показать товары, для которых существует только один стиль и они доступны только в одном цвете из таблицы Production.Product.
  Показать поля [Name], Style и Color.
*/
SELECT 
    "Name", 
    "Style", 
    "Color" 
FROM 
    "Production"."Product" 
WHERE 
    "Style" IS NOT NULL 
    AND "Color" IS NOT NULL
GROUP BY 
    "Style", "Color", "Name"
HAVING 
    COUNT(*) = 1;