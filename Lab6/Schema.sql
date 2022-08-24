-- This DDL for the WaterSampleSchema is NOT the model answer to the lab
-- There are no check constraints included.
-- Run this DDL if you can not get the inserts to run in your existing system or use it as a check for data types and size.


drop view if exists Low_Altitude_Sites;

DROP TABLE if exists Measurement;
DROP TABLE if exists Sample ;
DROP TABLE if exists Site ;
DROP TABLE if exists Scientist ;
DROP TABLE if exists Measurement_Type;



CREATE TABLE Scientist (
  Scientist_Num varchar(7) NOT NULL,
  Surname varchar(50) NOT NULL,
  Other_Names varchar(100) NOT NULL,
  Email varchar(255) NOT NULL,
  Mobile_Phone varchar(20) NOT NULL,
  
  CONSTRAINT Scientist_PK PRIMARY KEY (Scientist_Num)
);





 CREATE TABLE Site (
  Site_ID varchar(5) NOT NULL,
  Region varchar(10) NOT NULL,
  Description varchar(255),
  Latitude numeric(11,8) NOT NULL,
  Longitude numeric(11,8) NOT NULL,
  Catchment_Area NUMERIC(5),
  Catchment_Height NUMERIC(5),
  Altitude NUMERIC(5), 

  constraint SITE_PK PRIMARY KEY (Site_ID)
);
 
CREATE TABLE Sample (
  Scientist_Num varchar(7) NOT NULL,
  Site_ID varchar(5) NOT NULL,
  Recorded_On DATE DEFAULT CURRENT_DATE NOT NULL,
  Comments varchar(512), 

  constraint SAMP_PK PRIMARY KEY (Site_ID, Recorded_On),
  constraint SAMP_SITE_FK FOREIGN KEY  (Site_ID) REFERENCES Site(Site_ID),  
  constraint SAMP_SCI_FK FOREIGN KEY  (Scientist_Num) REFERENCES Scientist(Scientist_Num)
);
CREATE TABLE Measurement_Type (
  Name varchar(50) NOT NULL,
  Units varchar(50),
  constraint Mea_Typ_PK PRIMARY KEY (Name)
  );
  
CREATE TABLE Measurement (
  Site_ID varchar(5) NOT NULL,
  Recorded_On DATE NOT NULL,
  Name varchar(50) NOT NULL,
  Value Numeric (7,3),
  Outlier_Indicator varchar(50),
  
  constraint Measurement_PK PRIMARY KEY (Site_Id,Recorded_On,Name),
  CONSTRAINT Meas_Samp_FK  FOREIGN KEY (Site_Id, Recorded_On) REFERENCES Sample,
  CONSTRAINT Meas_MType_FK FOREIGN KEY (Name) REFERENCES Measurement_Type,
  constraint OutlierOrValue check((Value is null and Outlier_Indicator is not null) OR (Value is not null and Outlier_Indicator is null))
  );
 
 
 


  
  