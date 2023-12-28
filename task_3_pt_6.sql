-- Показать список имен (FirstName) начинающихся на "N", которые имеют несколько фамилий (LastName) из таблицы Person.Person, используя SELF JOIN.
SELECT DISTINCT 
  "p1"."FirstName"
FROM 
  "Person"."Person" AS "p1"
JOIN 
  "Person"."Person" AS "p2"
ON 
  "p1"."FirstName" = "p2"."FirstName" 
AND 
  "p1"."LastName" != "p2"."LastName"
WHERE 
  "p1"."FirstName" LIKE 'N%';