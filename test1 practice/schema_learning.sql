DROP TABLE Enrolment;
DROP TABLE Paper;
DROP TABLE Student;

CREATE TABLE Student (
    Student_ID VARCHAR(7),
    Student_User_Code VARCHAR(8) UNIQUE NOT NULL,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    DOB DATE DEFAULT CURRENT_DATE NOT NULL, 

    CONSTRAINT PK_Student PRIMARY KEY (Student_ID)
);

CREATE TABLE Paper(
    Paper_Code CHAR(7),
    Paper_Name VARCHAR(50),
    Points NUMERIC(2),

    CONSTRAINT PK_Paper PRIMARY KEY (Paper_Code)

);

CREATE TABLE Enrolment(
    Paper_Code CHAR(7),
    Student_Id VARCHAR(7),
    Year NUMERIC(4),
    Semester CHAR(2),
        CONSTRAINT Valid_Semester   
            CHECK (Semester IN ('SS', 'S1', 'S2', 'FY')),
    Mark NUMERIC(3),
        CONSTRAINT Valid_Mark CHECK (Mark BETWEEN 0 AND 100), 
    Absent CHAR(1) DEFAULT 'N' NOT NULL,
        CONSTRAINT Valid_Absent CHECK (Absent IN ('Y','N'))
    CONSTRAINT PK_Enrolment PRIMARY KEY (Paper_Code,Student_Id,Year,Semester),

    CONSTRAINT FK_Enrolment_Student FOREIGN KEY (Student_Id)
    REFERENCES Student (Student_Id),
    
    CONSTRAINT FK_Enrolment_Paper FOREIGN KEY (Paper_Code)
    REFERENCES Paper (Paper_Code),

    CONSTRIANT Valid_Mark
        CHECK (Mark BETWEEN 0 AND 100),

);
-- we still need to insert integrity rules 

INSERT INTO Enrolment (Paper_Code,Student_Id,Year, Semester, Mark,Absent) ('COMP101','1123323', 2022,'SS', 125, 'N');


-- there are 3 main types of relational operators: project, restrict and join

SELECT * FROM Enrolment


-- restrict with WHERE Clause 
SELECT * 
FROM Enrolment
WHERE Semester = 'SS';

-- here we are displaying the Mark adn student_Id from enrolment table where semester is SS 

SELECT Mark, Student_Id FROM Enrolment WHERE Semester = 'SS';


-- joining tables in SQL 
-- inner joins is where we find common tuples on both sides 
-- outer join - we specify that one isde is the master side and we join on the other side 


SELECT *
FROM Enrolment RIGHT OUTER JOIN Paper
    USING (Paper_Code);

-- ORDER BY 
SELECT Last_Name, First_Name 
FROM Student
ORDER BY Last_Name;


-- subqueries 
SELECT * FROM Student WHERE Semester IN ('SS');


 -- finding the one entrie that is not in the other table
 SELECT * FROM Site WHERE Site_ID NOT IN (SELECT DISTINCT Site_ID FROM Sample);

 -- we can do this using a left outer join 
 SELECT Site.* FROM Site LEFT OUTER JOIN Sample USING (Site_ID) WHERE Sample.Site_ID IS NULL;

--aggregate queries: when we want to COUNT SUM gent the MIN or MAX, MEAN ect 
-- Grouping the output GROUP BY  which whill group rows with equal values in specified columns 