-- ������� 10: �� ������� Person.PersonPhone �������� ID ����������� (BusinessEntityID), ������ ��������� (PhoneNumber) � ���� ������� ��������� (PhoneNumberTypeID). ������������� ��� ������ � ������� ����������� �������� � ���� BusinessEntityID � ��� �������� ���� PhoneNumberTypeID ������ 1 �������� �� NULL. �������� ����� �������� ��� ���������.
SELECT BusinessEntityID, PhoneNumber, CASE WHEN PhoneNumberTypeID = 1 THEN NULL ELSE PhoneNumberTypeID END AS PhoneNumberTypeID FROM Person.PersonPhone
ORDER BY BusinessEntityID;
