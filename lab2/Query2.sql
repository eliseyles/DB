SELECT ClassName 
FROM Classes
WHERE ClassID in (SELECT ClassID 
FROM ElJournal 
WHERE TutorID = 1)