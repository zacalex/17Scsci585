--use sqlite and DB Browser
CREATE TABLE EmailFamily
(Name Text NOT NULL,
Address Text NOT NULL,
ID integer NOT NULL,
SameFam integer,
PRIMARY KEY (ID));

INSERT INTO EmailFamily(Name, Address, ID, SameFam)
VALUES 
('Alice',   'A',      10,  NULL),
('Bob',     'B',      15,  NULL),
('Carmen',  'C',      22,  NULL),
('Diego',   'A',      9,   10),
('Ella',    'B',      3,   15),
('Farkhad', 'D',      11,  NULL);

delete from EmailFamily
where ID in (select SameFam 
from EmailFamily
Where SameFam is not null) and SameFam is null;

