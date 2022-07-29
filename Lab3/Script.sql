DROP TABLE Sample_Info;
DROP TABLE Site_Info;
DROP TABLE Scientist;
DROP TABLE Measurements;
DROP TABLE Measurement_Type

-- here we are deleting the table beore begining a new one 

-- now we need to create a scientist table 
CREATE TABLE Scientist(
	Scientist_Num varchar(6) primary key,
	Surname varchar(50),
	Other_Names varchar(50),
	Email varchar(50),
	Mobile_Phone varchar(15)
); 

-- now we need to insert into scientist some information
INSERT INTO Scientist (Scientist_Num, Surname, Other_Names, Email, Mobile_Phone) 
VALUES(123, 'Hankins', 'Stephanie', 'steph@mail.com', '021 123 456');
-- we are inserting the following values in this order 

select * from Scientist;
-- viewing the table for scientist 


-- creating the Sample table
CREATE TABLE Sample_Info(
	Site_ID varchar(10),
	Recorded_On varchar(50),
	Scientist_Num varchar (10),
	comments varchar (50)
	);

select * from sample;
-- viewing the sample table 


-- creating a table for site 
CREATE TABLE Site(
	Site_ID varchar(10),
	region varchar(50),
	Site_Description varchar(50),
	Latitude varchar(50),
	Longitude varchar(50),
	Catchment_Area numeric(50,3),
	Catchment_Height numeric(10,3),
	Altitude numeric (1000,3) 

);

-- creating a table for measurement 
CREATE TABLE Measurement(
	Site_Id varchar(10),
	Measurement_name varchar(50),
	Units varchar(5)
);

CREATE TABLE Measurement_Type(
	Measurement_name varchar(50),
	Units varchar(5)
);


