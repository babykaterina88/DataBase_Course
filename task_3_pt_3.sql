-- Показать список людей (поля "FirstName", "LastName"), в котором указано, есть ли у человека часы больничного (SickLeaveHours) или нет, из таблиц HumanResources.Employee, Person.Person, используя RIGHT OUTER JOIN.
SELECT 
  "p"."FirstName", 
  "p"."LastName",
  CASE 
    WHEN "e"."SickLeaveHours" IS NOT NULL THEN 'Yes'
    ELSE 'No'
  END AS "HasSickLeaveHours"
FROM 
  "HumanResources"."Employee" AS "e"
RIGHT OUTER JOIN 
  "Person"."Person" AS "p"
ON 
  "e"."BusinessEntityID" = "p"."BusinessEntityID";