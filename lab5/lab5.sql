--������� 11
--��������� �������� ���������� ��������� ��������� �������:
--1.	��������� ��������� ������ �� ��������� �����.
--2.	���������� ���������� ��������� ���� �� ��������� ������� �� �������.
--3.	���������� ����� ������� �� ��������� ������� �� ������� �����.
--4.	��������� ������ ���, ����� � ������ ��������� ��������� �������.


--��������� �������� UNION, EXCEPT, INTERSECT ��������� ��������� �������:
--1.	��������� ������ ����������, ������� ���������� � ������� ������  ����� 3 ���.
--2.	���������� ��� �� ����� ��������� ������� �� ��������� ������� �� ������� �������, ��������� �� ���� � �� �� �����.
--3.    ���������� ��� �� � ����� ����������, ����������� �� ���� � �� �� �����.

--1

--select * from Playbill join Spectacles on Playbill.PlayID = Spectacles.PlayID
--where MONTH(Playbill.Date) = MONTH(getdate()) + 1

--2

--select Count(*) from Sales 
--where ShowID in (
--select ShowID from Playbill join Spectacles on Playbill.PlayID = Spectacles.PlayID
--where PlayTitle = 'Otello' and Day(Date) = Day(GETDATE()) and month(Date) = MONTH(getdate()))

--3

--select sum(Price) from Sales join Places on Sales.PlaceID = Places.PlaceID 
--where ShowID in (
--select ShowID from Playbill join Spectacles on Playbill.PlayID = Spectacles.PlayID
--where PlayTitle = 'Otello' and month(Date) = MONTH(getdate() - 1))

--4
--select PlayTitle, Date, Time from Playbill join Spectacles on Playbill.PlayID = Spectacles.PlayID
--where PlayTitle = 'Otello' and Date > GETDATE()


--1

--select PlayTitle from Spectacles
--where PlayID in (
--select PlayID from Playbill 
--except 
--select PlayID from Playbill
--group by PlayID
--having COUNT(PlayID) < 3)

--2

--select PlaceID from Sales
--intersect
--select PlaceID from Sales
--group by ShowID, PlaceID
--having count(PlaceID) > 1

--3

--select Playtitle from Spectacles
--where PlayID in (
--select PlayID from Playbill
--intersect
--select PlayID from Playbill
--where Time in ( 
--select Time from Playbill
--group by Time
--having count(Time) > 1))



