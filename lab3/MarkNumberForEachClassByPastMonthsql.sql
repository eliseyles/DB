select ClassID, COUNT(*) as Mark
from ElJournal
where MONTH(Date) = MONTH(GETDATE()) -1
group by ClassID