SELECT StudentID From ElJournal
where DAY(Date) = DAY(GETDATE())-1 and Mark >= 8