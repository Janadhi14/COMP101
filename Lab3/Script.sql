DROP TABLE Sample_Info;
DROP TABLE Site;
DROP TABLE Scientist;





-- here we are deleting the table beore begining a new one 

-- we are going to need a unique identifier (primary key) as the Scientist_ID and name it Scientist_PK 
-- now we need to create a scientist table 
CREATE TABLE Scientist(
	Scientist_Id varchar(50) not null unique,
	Surname varchar(50) not null, 
	Other_Names varchar(50) not null,
	Email varchar(50) not null,
	Mobile_Phone varchar(50) not null,
	CONSTRAINT Scientist_PK PRIMARY KEY (Scientist_Id),
	CONSTRAINT Email CHECK (Email LIKE '%0%')
); 


-- now we need to insert into scientist some information
INSERT INTO Scientist (Scientist_ID, Surname, Other_Names, Email, Mobile_Phone) 
VALUES(123, 'Hankins', 'Stephanie', 'steph@mail.com', '021 123 456');
-- we are inserting the following values in this order 

SELECT * FROM Scientist;
-- viewing the table for scientist 


-- creating the Sample_Info table
CREATE TABLE Sample_Info(
	recordedOn timestamp default current_timestamp,
	Scientist_Id varchar(50) not null,
	Site_ID varchar(10) not null,
	Comments_On varchar (50),
	CONSTRAINT Sample_Info_PK PRIMARY KEY (recordedOn, Site_ID), 
	CONSTRAINT Sample_Info_Scientist_FK FOREIGN KEY (Scientist_ID)
		REFERENCES Scientist,
	CONSTRAINT recordedOn CHECK (extract(year from recordedOn)> 2015)			-- checking that the recorded date is later than 2015 
);



SELECT * FROM Sample_Info;
-- viewing the Sample_Info table 


-- creating a table for site 
CREATE TABLE Site(
	Site_ID varchar(10) not null unique,
	Region varchar(10) not null,
	Site_Description varchar(50) not null,
	Latitude numeric(11,8) not null,
	Longitude numeric(11,8) not null ,
	Catchment_Area numeric(4),
	Catchment_Height numeric(4),
	Altitude numeric (4),
	CONSTRAINT PK_Site PRIMARY KEY(Site_ID),
	CONSTRAINT Region check (Region in ('Dunedin', 'Alexandra', 'Tekapo')),
	CONSTRAINT Altitude check (Altitude BETWEEN -10 AND 4000)
);

-- viewing the Site table 
SELECT * FROM Site

