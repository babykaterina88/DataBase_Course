-- ������� 7: �������� ID ����������� (BusinessEntityID), ���� ������ (SalesQuota), ������� � ���� ���� (SalesYTD) � ������� � ������� ���� (SalesLastYear) �� ������� Sales.SalesPerson. ����������� ���� ������ �������� �� 0 � ������� � ��������� ���� � ��������� OtherSalesQuota.
SELECT BusinessEntityID, COALESCE(SalesQuota, 0) AS OtherSalesQuota, SalesYTD, SalesLastYear FROM Sales.SalesPerson;
