select TutorID, COUNT(Mark)
from ElJournal
where DATEPART(WK,Date) = DATEPART(WK, GETDATE())-1
group by TutorID
having COUNT(Mark) > 5