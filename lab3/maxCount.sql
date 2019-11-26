select top 1 StudentID, COUNT(Mark)
from ElJournal
group by StudentID
order by Count(Mark) DESC 