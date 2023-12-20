-- Задание 10: Из таблицы Person.PersonPhone показать ID сотрудников (BusinessEntityID), номера телефонов (PhoneNumber) и типы номеров телефонов (PhoneNumberTypeID). Отсортировать все строки в порядке возрастания значений в поле BusinessEntityID и все значения поля PhoneNumberTypeID равные 1 заменить на NULL. Названия полей оставить без изменений.
SELECT BusinessEntityID, PhoneNumber, CASE WHEN PhoneNumberTypeID = 1 THEN NULL ELSE PhoneNumberTypeID END AS PhoneNumberTypeID FROM Person.PersonPhone
ORDER BY BusinessEntityID;
