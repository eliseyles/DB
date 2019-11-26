select StudentID, AVG(Mark) as Mark
from ElJournal
group by StudentID
order by AVG(Mark) DESC