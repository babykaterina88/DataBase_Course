-- Задание 3: Найти среднее число часов выходных (VacationHours) для разных полов из таблицы HumanResources.Employee.
SELECT "Gender", AVG("VacationHours") AS "AverageVacationHours"
FROM "HumanResources"."Employee"
WHERE "VacationHours" > 0
GROUP BY "Gender";

