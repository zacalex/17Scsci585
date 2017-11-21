--use sqlite and DB Browser
CREATE TABLE Student
(SID INTEGER NOT NULL,
ClassName Text NOT NULL,
Grade Text NOT NULL,
PRIMARY KEY (SID,ClassName));

INSERT INTO Student(SID, ClassName, Grade)
VALUES 
(123,  'ART123','A'),
(123,  'BUS456','B'),
(666,  'REL100','D'),
(666,  'ECO966','A'),
(666,  'BUS456','B'),
(345,  'BUS456','A'),
(345,  'ECO966','F')
;

SELECT ClassName,count(*) as Total
FROM Student  
GROUP BY ClassName
ORDER BY Total
