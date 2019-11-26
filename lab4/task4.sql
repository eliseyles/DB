--4.	Список свободных мест на спектакль «Отелло» на завтра.

--select PlaceID from Places
--where PlaceID not in(
--	select PlaceID from Sales 
--	where ShowID in(
--		select ShowID from Playbill
--		where Day(Date) = day(Getdate() +1)))

select PlaceID from Sales 
	where ShowID in(
		select ShowID from Playbill
		where Day(Date) = day(Getdate() +1))


