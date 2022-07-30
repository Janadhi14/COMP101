DROP TABLE Sample_Info;
DROP TABLE Site_Info;
DROP TABLE Scientist;
DROP TABLE Measurements;
DROP TABLE Measurement_Type

-- here we are deleting the table beore begining a new one 

-- we are going to need a unique identifier (primary key) as the scientist_num
-- now we need to create a scientist table 
CREATE TABLE Scientist(
	CONSTRAINT PK_Scientist PRIMARY KEY (Scientist_ID) -- setting the primary key as Scientist_num
	Scientist_ID varchar(6) primary key,
	Surname varchar(50),
	Other_Names varchar(50),
	Email varchar(50),
	Mobile_Phone varchar(15)
	CONST
); 

-- now we need to insert into scientist some information
INSERT INTO Scientist (Scientist_ID, Surname, Other_Names, Email, Mobile_Phone) 
VALUES(123, 'Hankins', 'Stephanie', 'steph@mail.com', '021 123 456');
-- we are inserting the following values in this order 

select * from Scientist;
-- viewing the table for scientist 


-- creating the Sample table
CREATE TABLE Sample_Info(
	recordedOn timestamp default current_timestamp,
	Scientist_ID varchar(50) not null,
	Site_ID varchar(10),
	Recorded_On varchar(50),
	Scientist_Num varchar (10),
	comments varchar (50)
	CONSTRAINT PK_Sample_info()
	);

select * from sample;
-- viewing the sample table 


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


