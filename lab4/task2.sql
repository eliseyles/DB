--2.	Название спектакля, на который продано максимальное количество билетов.

select PlayTitle from Spectacles
where PlayID = (select PlayID from Playbill where ShowID = (select top 1 ShowId from Sales 
group by ShowID
order by count(ShowId) desc))

