select top 1 ClassID, avg(Mark)
from ElJournal
group by ClassID
order by avg(Mark) ASC