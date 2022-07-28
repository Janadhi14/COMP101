create table Employee
(
	Employee_ID varchar(6),
	First_Name varchar(20) not null,
	Last_Name varchar(25) not null,
	Hire_Data date default current_date,
	Salary numeric (8,2),
	Commission_Percent numeric(2,2) default 0 
);
