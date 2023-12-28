-- Показать список складов (поле "Name"), в котором указано, есть на складе товар с некоторым ID или нет, из таблиц Production.Location, Production.WorkOrderRouting, используя LEFT OUTER JOIN.
SELECT 
  "loc"."Name" AS "LocationName",
  CASE 
    WHEN "wor"."ProductID" IS NOT NULL THEN 'Yes'
    ELSE 'No'
  END AS "HasProduct"
FROM 
  "Production"."Location" AS "loc"
LEFT OUTER JOIN 
  "Production"."WorkOrderRouting" AS "wor"
ON 
  "loc"."LocationID" = "wor"."LocationID"
AND 
  "wor"."ProductID" = "wor"."ProductID";