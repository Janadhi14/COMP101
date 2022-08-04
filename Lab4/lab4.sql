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
	Region varchar(100) not null,
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

-- inserting data 

INSERT INTO Site VALUES('AX1','Alexandra','Clutha at Luggate Br.', '169.2806558','-44.7290927',NULL,NULL,NULL);
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

drop table Site;
-- creating a table for site 
CREATE TABLE Site(
	Site_ID varchar(10) not null unique,
	Region varchar(100) not null,
	Site_Description varchar(50) not null,
	Latitude numeric(11,8) not null,
	Longitude numeric(11,8) not null ,
	Catchment_Area numeric(6),
	Catchment_Height numeric(6),
	Altitude numeric (6),
	CONSTRAINT PK_Site PRIMARY KEY(Site_ID),
	CONSTRAINT Region check (Region in ('Dunedin', 'Alexandra', 'Tekapo')),
	CONSTRAINT Altitude check (Altitude BETWEEN -10 AND 40000)
);

-- inserting data 

INSERT INTO Site VALUES('AX1','Alexandra','Clutha at Luggate Br.', '169.2806558','-44.7290927',NULL,NULL,NULL) ;
INSERT INTO Site VALUES('AX2','Alexandra','Kawarau at Chards', '168.8687202','-45.00636197',NULL,NULL,NULL);
INSERT INTO Site VALUES('AX3','Alexandra','Shotover at Bowens Peak', '168.7150762','-44.99000262',NULL,NULL,NULL);
INSERT INTO Site VALUES('AX4','Alexandra','Clutha at Millers Flat', '169.4100026','-45.66475459',NULL,NULL,NULL) ;
INSERT INTO Site VALUES('DN1','Dunedin','Clutha at Balclutha', '169.7478945','-46.23731498',NULL,NULL,NULL) ;
INSERT INTO Site VALUES('DN2','Dunedin','Mataura at Parawa', '168.5612716','-45.55826078',NULL,NULL,NULL) ;
INSERT INTO Site VALUES('DN3','Dunedin','Mataura at Seaward Down', '168.7971922','-46.38953052',NULL,NULL,NULL) ;
INSERT INTO Site VALUES('DN4','Dunedin','Monowai below Gates', '167.5343115','-45.80501481',NULL,NULL,NULL) ;
INSERT INTO Site VALUES('DN5','Dunedin','Oreti at Lumsden', '168.4281482','-45.7162229',NULL,NULL,NULL) ;
INSERT INTO Site VALUES('DN6','Dunedin','Oreti at Riverton HW Br.', '168.2659715','-46.3263175',NULL,NULL,NULL) ;
INSERT INTO Site VALUES('DN7','Dunedin','Sutton at SH87', '170.0941149','-45.59619431',NULL,NULL,NULL) ;
INSERT INTO Site VALUES('DN8','Dunedin','Taieri at Outram', '170.2439249','-45.8464209',NULL,NULL,NULL) ;
INSERT INTO Site VALUES('DN9','Dunedin','Taieri at Tiroiti', '170.2728542','-45.25656919',NULL,NULL,NULL) ;
INSERT INTO Site VALUES('DN10','Dunedin','Waiau at Tuatapere', '167.6858503','-46.13027339',NULL,NULL,NULL) ;
INSERT INTO Site VALUES('TK1','Tekapo','Opihi at Grassy Banks', '171.3241622','-44.26803263','2373','542','4');
INSERT INTO Site VALUES('TK2','Tekapo','Opihi at Rockwood', '170.941712','-44.16820894','406','627','180');
INSERT INTO Site VALUES('TK3','Tekapo','Opuha at Skipton Br.', '170.9797435','-44.07888926','458','1020','238');
INSERT INTO Site VALUES('TK4','Tekapo','Waitaki at Kurow', '170.4512012','-44.7005591','9741','1047','250');
INSERT INTO Site VALUES('TK5','Tekapo','Hakatakamea above MH Br.', '170.4905505','-44.72479014','896','695','198');
INSERT INTO Site VALUES('TK6','Tekapo','Waitaki at SH1 Br.', '171.1003766','-44.92715122','11909','956','5');

select * from Site;








select * from Site;








