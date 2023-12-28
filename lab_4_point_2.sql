/*
  Задание 2:
  Показать размер и количество продуктов для размера, который представлен максимальным количеством продуктов из таблицы Production.Product.
*/
SELECT 
    "Size",
    COUNT(*) AS "NumberOfProducts" 
FROM 
    "Production"."Product"
GROUP BY 
    "Size" 
ORDER BY 
    "NumberOfProducts" DESC 
LIMIT 1;
