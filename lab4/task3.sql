--3.	������ ����������, �� ������� �� ������� �� ������ ������ �� ������� ������.

select ShowID from Playbill 
where ShowID not in(
select ShowID from Sales
where DATEPART(wk, SaleDate) = Datepart(wk, getdate()) -1)