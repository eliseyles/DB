--5.	������ ��������� ���� �� ��������� ������� �� ������ � 1, 2 � 5 �����.

select PlaceID from Places
where PlaceID not in(
	select PlaceID from Sales 
	where ShowID in(
		select ShowID from Playbill
		where Day(Date) = day(Getdate() +1))) 
and Row in (1, 2, 5)