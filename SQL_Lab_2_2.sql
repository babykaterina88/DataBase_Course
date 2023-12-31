-- Задание 2: Найти возраст самой молодой сотрудницы из таблицы HumanResources.Employee.
SELECT MIN(AGE(CURRENT_DATE, "BirthDate")) AS "YoungestFemaleAge"
FROM "HumanResources"."Employee"
WHERE "Gender" = 'F'
  AND "BirthDate" IS NOT NULL;

