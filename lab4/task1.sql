--1.	Список спектаклей на следующую неделю.

select PlayTitle from Spectacles
where PlayID in
(select PlayID from Playbill
where DATEPART(wk, Date) = DATEPART(wk, GETDATE()) +1)