--2.	�������� ���������, �� ������� ������� ������������ ���������� �������.

select PlayTitle from Spectacles
where PlayID = (select PlayID from Playbill where ShowID = (select top 1 ShowId from Sales 
group by ShowID
order by count(ShowId) desc))

