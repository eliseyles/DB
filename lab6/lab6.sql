--1.	Создать таблицу «Архив» и с помощью запроса внести в нее данные о продажах  за все годы, предшествующие текущему.  Вывести созданную таблицу.  
--2.	В таблицу «Афиша»  добавить поле «Коэффициент»  и с помощью запроса внести в это поле число 1.5 для спектаклей, идущих в вечернее время и 1.3 для спектаклей, идущих в дневное время. Вывести таблицу «Афиша».
--3.	Проиндексировать таблицу «Спектакли» по полю «Спектакль».
--4.	Удалить из таблицы «Продажи» данные о продажах за все годы, предшествующие текущему. 
--5.	Удалить из таблицы «Спектакли» данные о спектаклях, информация о которых отсутствует в таблице «Афиша».

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


