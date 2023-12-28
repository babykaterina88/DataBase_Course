-- Показать названия подкатегорий и соответствующие им названия категорий товаров (поля "Name") из таблиц Production.ProductSubcategory, Production.ProductCategory.
SELECT 
  "sub"."Name" AS "SubcategoryName", 
  "cat"."Name" AS "CategoryName"
FROM 
  "Production"."ProductSubcategory" AS "sub"
JOIN 
  "Production"."ProductCategory" AS "cat"
ON 
  "sub"."ProductCategoryID" = "cat"."ProductCategoryID";