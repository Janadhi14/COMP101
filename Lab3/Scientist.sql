

drop table Scientist;
-- here we are deleting the table beore begining a new one 

-- now we need ot create a scientist table 
create table Scientist(
	Scientist_Num varchar(10),
	Surname varchar(50),
	Other_Names varchar(50),
	Email varchar(50),
	Mobile_Phone varchar(15)
); 
-- now we need to insert into scientist some information
 insert into Scientist (Scientist_Num, Surname, Other_Names, Email, Mobile_Phone) values(123, 'Hankins', 'Stephanie', 'steph@mail.com', '021 123 456');

select * from Scientist;




