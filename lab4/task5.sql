--5.	Список свободных мест на спектакль «Отелло» на завтра в 1, 2 и 5 рядах.

select PlaceID from Places
where PlaceID not in(
	select PlaceID from Sales 
	where ShowID in(
		select ShowID from Playbill
		where Day(Date) = day(Getdate() +1))) 
and Row in (1, 2, 5)