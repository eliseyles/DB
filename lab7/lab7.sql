--1.	Создать представление, содержащее  полную информацию о продажах билетов на спектакли за прошлую неделю.  
--С помощью созданного представления определить  дату, время и название спектакля, на который было продано максимальное 
--количество билетов.  
--2.	Создать представление, содержащее полную информацию о спектаклях на следующий месяц (название спектакля, дата, время). 
--С помощью созданного представления определить  название спектакля, который запланирован чаще всех.
--3.	Создать представление, содержащее информацию о спектаклях и средней выручки от продажи билетов на них  за прошлый месяц. 
--С помощью созданного представления определить  спектакль, дающий максимальную выручку.
--4.	Создать представление, содержащее  информацию о рядах в зрительном зале и среднем количестве проданных мест 
--в этих рядах за прошлый месяц. С помощью созданного представления определить  наиболее популярный ряд в театре.

--1
--create view PWSales 
--as (select * from Sales where DATEPART(wk, SaleDate) = DATEPART(wk, GETDATE()) - 1);

--go
--select Date,Time,PlayTitle from Playbill join Spectacles on Playbill.PlayID = Spectacles.PlayID
--where ShowID in(
--select top 1 ShowID from PWSales
--group by ShowID
--order by COUNT(ShowID))

--[dbo].[NMPlays]

--2
--create view NMPlays 
--as (select Date,Time,PlayTitle from Playbill join Spectacles on Playbill.PlayID = Spectacles.PlayID
--where datediff(mm,getdate(),Date) = 1);

--go 
--select top 1 PlayTitle from [dbo].[NMPlays] 
--group by PlayTitle
--order by COUNT(PlayTitle)

--3
-- create view Revenue as
--(select PlayTitle, Date, Time, SUM(Price) as AgvPrice 
--from (Playbill join Spectacles on Playbill.PlayID = Spectacles.PlayID) 
--join (Sales join Places on Sales.PlaceID = Places.PlaceID) on Sales.ShowID = Playbill.ShowID
--where datediff(mm,Date,getdate()) = 1
--group by PlayTitle, Date, Time)


go 
select PlayTitle, Date, Time from Revenue
where AgvPrice in (select max(AgvPrice) from Revenue)


--4
--create view PlaceCountRows 
--as (select Row, Count(PlaceNumber) as PlaceCount from Sales join Places on Sales.PlaceID = Places.PlaceID
--where DATEDIFF(mm, SaleDate, GETDATE()) = 1
--group by Row)
--order by COUNT(PlaceNumber) desc

--go
--select Row from [dbo].[PlaceCountRows]
--where PlaceCount in (select max(PlaceCount) from [dbo].[PlaceCountRows])





