--CREATE TABLE Students
--(
--  Id int identity(1,1) UNIQUE,
--  [Name] nvarchar(50) NOT NULL,
--  Surname nvarchar(50) DEFAULT 'xxx',
--  Age int NOT NULL,
--  Point float NOT NULL  
--)

--ALTER TABLE Students
--ADD Course int
--INSERT INTO Students(Name,Surname,Age,Point)
--VALUES ('Anar','Qandayev',20,100)

--INSERT INTO Students (Name,Age,Point)
--VALUES ('Sabina',20,90)
--('Aysha',20,100)

--SELECT * FROM Students

--UPDATE Students SET Surname='Uluxanova' WHERE Id=2
--UPDATE Students SET Surname ='Novruzova' WHERE Id=3
--UPDATE Students SET Point=90 WHERE Id=1
--SELECT * FROM Students

--SELECT Point FROM Students WHERE Point > 70 and Point <90 

--SELECT * FROM Students
--ORDER BY Point DESC

--SELECT Name,Surname FROM Students WHERE Age <21 

--ALTER TABLE Students
--ADD AvaregePoint float

--UPDATE Students SET AvaregePoint=50 WHERE Id=1 
--UPDATE Students SET AvaregePoint=70 WHERE Id=2
 --SELECT AveregePoint FROM Students WHERE AveregePoint >0 and AveregePoint <100
--SELECT * FROM Students