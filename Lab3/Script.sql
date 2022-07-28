
DROP TABLE Scientist;
-- here we are deleting the table beore begining a new one 

-- now we need to create a scientist table 
CREATE TABLE Scientist(
	Scientist_Num varchar(6),
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


DROP TABLE Sample;
-- creating the sample table
CREATE TABLE Sample(
	Site_ID varchar(10),
	Recorded_On varchar(50),
	Scientist_Num varchar (10),
	comments varchar (50),
);


DROP TABLE Site;
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
DROP TABLE Measurement;

-- creating a table for measurement 
CREATE TABLE Measurement(
	Site_I varchar(10),
	Measurement_name varchar(50),
	Units varchar(5)
);

DROP TABLE Measurement_Type;
-- creating a table for measurement type 
CREATE TABLE Measurement_Type(
	Measurement_name varchar(50),
	Units varchar(5)
);
