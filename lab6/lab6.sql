--1.	������� ������� ������ � � ������� ������� ������ � ��� ������ � ��������  �� ��� ����, �������������� ��������.  ������� ��������� �������.  
--2.	� ������� ������  �������� ���� ������������  � � ������� ������� ������ � ��� ���� ����� 1.5 ��� ����������, ������ � �������� ����� � 1.3 ��� ����������, ������ � ������� �����. ������� ������� ������.
--3.	���������������� ������� ���������� �� ���� �����������.
--4.	������� �� ������� �������� ������ � �������� �� ��� ����, �������������� ��������. 
--5.	������� �� ������� ���������� ������ � ����������, ���������� � ������� ����������� � ������� ������.

--1

--create table Archive (SaleID int NOT NULL, SaleDate date NOT NULL, ShowID int NOT NULL, PlaceID int NOT NULL);
--insert into Archive (SaleID, SaleDate, ShowID, PlaceID)
--select * from Sales
--where year(SaleDate) < year(getdate())

--select * from Archive

--2

--alter table Playbill add Coeff real NULL;
--UPDATE Playbill
--SET Coeff = 1.5
--WHERE datepart(hh, Time) > 16
--UPDATE Playbill
--SET Coeff = 1.3
--WHERE datepart(hh, Time) Between 12 and 16

--select * from Playbill

--3

--CREATE INDEX Lab06ID ON Spectacles (PlayTitle)

--4

--delete from Sales 
--where YEAR(SaleDate) < YEAR(GETDATE())

--5

delete from Spectacles
where PlayID not in(
select PlayID from Playbill
group by PlayID)


