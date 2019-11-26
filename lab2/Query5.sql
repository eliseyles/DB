select StudentID From ElJournal
where Mark < 6 and DATEPART(WK,Date) = DATEPART(WK, GETDATE())-1