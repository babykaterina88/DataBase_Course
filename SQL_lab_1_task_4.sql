-- ������� 4: �� ������� HumanResources.JobCandidate �������� ID ���������� �� ��������� (JobCandidateID), ID ����������� (BusinessEntityID) � ������ ([Resume]). �������� ������ ������������ ID �����������.
SELECT JobCandidateID, BusinessEntityID, [Resume] FROM HumanResources.JobCandidate
WHERE BusinessEntityID IS NOT NULL;
