--use sqlite and DB Browser
CREATE TABLE Projects
(ProjectID Text NOT NULL,
Step int NOT NULL,
Status Text NOT NULL,
PRIMARY KEY (ProjectID, Step));

INSERT INTO Projects(ProjectID, Step, Status)
VALUES 
('P100',0,'C'),
('P100',1,'W'),
('P100',2,'W'),
('P201',0,'C'),
('P201',1,'C'),
('P333',0,'W'),
('P333',1,'W'),
('P333',2,'W'),
('P333',3,'W')
;

select ProjectID
from Projects P1
Where Step = 1 and Status = 'W' and ProjectID in (
	select ProjectID
	From Projects P2
	where Step = 0 and Status = 'C'
);
