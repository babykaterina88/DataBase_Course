-- Задание 5: Вывести ProductID из таблицы Production.ProductListPriceHistory, 
-- где средняя цена (ListPrice) меньше 10. 
-- Добавить столбец с рангом, определяя его порядок в зависимости от количества строк, 
-- содержащих среднюю цену (использовать RANK).
SELECT "ProductID", RANK() OVER (ORDER BY COUNT(*) DESC) AS "PriceRank" 
	FROM "Production"."ProductListPriceHistory" 
	GROUP BY "ProductID" 
	HAVING AVG("ListPrice") < 10;
