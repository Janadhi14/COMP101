

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
	comments varchar (50)
);

select * from Sample;

create table Site(
	Site_ID varchar() not null unique,
	region varchar(50) not null,
	Description varchar(50) not null,
	Latitude numeric(50) not null ,
	Longitude numeric(50) not null,
	Catchment_Area numeric(50,3) not null,
	Catchment_Height numeric(10,3) not null,
	Altitude numeric (5,3) 
	
	
);



