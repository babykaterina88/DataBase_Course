/*
  Задание 1:
  Показать товар с самой маленькой стандартной ценой (цена больше нуля) из таблицы Production.Product.
  Показать поля [Name], StandardCost.
*/
SELECT 
    "Name", 
    "StandardCost" 
FROM 
    "Production"."Product" 
WHERE 
    "StandardCost" > 0
ORDER BY 
    "StandardCost" ASC 
LIMIT 1;
