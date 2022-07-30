DROP TABLE Sample_Info;
DROP TABLE Site;
DROP TABLE Scientist;

-- here we are deleting the table beore begining a new one 

-- we are going to need a unique identifier (primary key) as the 
-- now we need to create a scientist table 
CREATE TABLE Scientist(
	CONSTRAINT PK_Scientist PRIMARY KEY (Scientist_ID) -- setting the primary key as Scientist_num
	Scientist_ID varchar(6) primary key,
	Surname varchar(50),
	Other_Names varchar(50),
	Email varchar(50),
	Mobile_Phone varchar(15),
	CONSTRAINT Scientist_PK PRIMARY KEY (Scientist_ID),
	CONSTRAINT Email CHECK (Email LIKE '%0%')
); 

-- now we need to insert into scientist some information
INSERT INTO Scientist (Scientist_ID, Surname, Other_Names, Email, Mobile_Phone) 
VALUES(123, 'Hankins', 'Stephanie', 'steph@mail.com', '021 123 456');
-- we are inserting the following values in this order 

select * from Scientist;
-- viewing the table for scientist 


-- creating the Sample_Info table
CREATE TABLE Sample_Info(
	recordedOn timestamp default current_timestamp,
	Scientist_ID varchar(50) not null,
	Site_ID varchar(10) not null,
	Comments_On varchar (50)
	CONSTRAINT Sample_Info_PK PRIMARY KEY (recordedOn, Scientist_ID), 
	CONSTRAINT Sample_Info_Scientist_FK1 FOREIGN KEY (Scientist_ID),
		reference (Scientist_),
	CONSTRAINT recordedOn CHECK (exact(year from recordedOn)> 2015)			-- checking that the recorded date is later than 2015 
);

select * from Sample_Info;
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
	CONSTRAINT Region check (Region IN, ('Dunedin', 'Alexandra', 'Tekapo')),
	CONSTRAINT Altitude check (Altitude BETWEEN -10 AND 4000)

);


