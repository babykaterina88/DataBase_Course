-- Задание 3: Показать поля ProductDescriptionID, [Description] из таблицы Production.ProductDescription, для которых идентификатор (ProductDescriptionID) больше 3 и меньше 122. Использовать оператор BETWEEN.
SELECT ProductDescriptionID, [Description] FROM Production.ProductDescription
WHERE ProductDescriptionID BETWEEN 4 AND 121;
