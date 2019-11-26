--3.	Список спектаклей, на которые не продано ни одного билета на прошлой неделе.

select ShowID from Playbill 
where ShowID not in(
select ShowID from Sales
where DATEPART(wk, SaleDate) = Datepart(wk, getdate()) -1)