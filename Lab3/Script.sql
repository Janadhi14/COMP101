

drop table Scientist;
-- here we are deleting the table beore begining a new one 

-- now we need ot create a scientist table 
create table Scientist(
	Scientist_Num varchar(6),
	Surname varchar(50),
	Other_Names varchar(50),
	Email varchar(50),
	Mobile_Phone varchar(15)
); 
-- now we need to insert into scientist some information
 insert into Scientist (Scientist_Num, Surname, Other_Names, Email, Mobile_Phone) values(123, 'Hankins', 'Stephanie', 'steph@mail.com', '021 123 456');

select * from Scientist;

-- creating the sample table

create table Sample(
	siteID varchar(10),
	Recorded_On varchar(50),
	Scientist_Num varchar (10),
	comments varchar (50),
);

create table Site(
	Site_ID(),
	region varchar(50),
	Description varchar(50),
	Latitude varchar(50),
	Longitude varchar(50),
	Catchment_Area numeric(50,3),
	Catchment_Height numeric(10,3),
	Altitude numeric (1000,3) 
	
	
);



