-- ������� 5: �������� ID ������� (ProductID), ����� � ������ ����������� ���� ����������� (ReviewerName � EmailAddress) � ����������� (Comments) �� ������� Production.ProductReview, ��� ��� ���������� ���������� �� 'J'.
SELECT ProductID, ReviewerName, EmailAddress, Comments FROM Production.ProductReview
WHERE ReviewerName LIKE 'J%';
