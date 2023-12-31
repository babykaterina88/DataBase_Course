-- Задание 4: Найти цвета из таблицы Production.Product, 
-- где количество различных размеров (Size) больше 0 
-- (исключить нулевые значения цвета).
SELECT "Color" 
	FROM "Production"."Product" 
	WHERE "Color" IS NOT NULL 
	GROUP BY "Color" HAVING COUNT(DISTINCT "Size") > 0;
