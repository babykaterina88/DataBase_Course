-- ������� 6: �� ������� HumanResources.Department �������� ���� DepartmentID, Name � GroupName. �������� ������ �������� ���� GroupName �� ������ ('Manufacturing','Quality Assurance','Research and Development'). ������������ �������� IN.
SELECT DepartmentID, Name, GroupName FROM HumanResources.Department
WHERE GroupName IN ('Manufacturing', 'Quality Assurance', 'Research and Development');
