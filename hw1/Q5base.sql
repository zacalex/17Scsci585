--use sqlite and DB Browser
CREATE TABLE ChefDish
(
Chef Text NOT NULL,
Dish Text NOT NULL,
PRIMARY KEY (Chef,Dish));

INSERT INTO ChefDish(Chef,Dish)
VALUES 
('A','Mint chocolate brownie'),
('B','Upside down pineapple cake'),
('B','Creme brulee'),
('B','Mint chocolate brownie'),
('C','Upside down pineapple cake'),
('C','Creme brulee'),
('D','Apple pie'),
('D','Upside down pineapple cake'),
('D','Creme brulee'),
('E','Apple pie'),
('E','Upside down pineapple cake'),
('E', 'Creme brulee'),
('E','Bananas Foster')
;

CREATE TABLE Dishes
(
Dish Text NOT NULL,
PRIMARY KEY (Dish));
INSERT INTO Dishes(Dish)
VALUES 
('Apple pie'),
('Upside down pineapple cake'),
('Creme brulee');
