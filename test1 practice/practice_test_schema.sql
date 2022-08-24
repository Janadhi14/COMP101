
CREATE TABLE Patient (
    Patient_No VARCHAR(15) UNIQUE NOT NULL,
    Name VARCHAR(30) NOT NULL,
    Date_Of_Birth DATE DEFAULT CURRENT_DATE NOT NULL,
    Suburb VARCHAR(20),
    City VARCHAR(20),
    Phone_No VARCHAR(20),
    Email VARCHAR(20),
    -- the primary key as patient number 
    CONSTRAINT PK_Patient PRIMARY KEY (Patient_No)
);

CREATE TABLE Illness(
    Illness_Code VARCHAR(6) NOT NULL,
    Name VARCHAR(30) NOT NULL,
    Description VARCHAR(500) NOT NULL,
    

    CONSTRAINT PK_Illness PRIMARY KEY (Illness_Code);
);

CREATE TABLE Diagnosis (
    Patient_No VARCHAR(15) UNIQUE NOT NULL,
    Illness_Code VARCHAR(6) NOT NULL,
    Diagnosis_Date DATE NOT NULL,
    Severity CHAR(1) NOT NULL,
    --CHECK CONSTRAINT which checks that the severity is one of the following values 
    CONSTRAINT Valid_Severity
        CHECK(Severity IN ('L', 'M', 'H')),


    Diagnosed_By VARCHAR(20) NOT NULL,

    CONSTRAINT PK_Diagnosis PRIMARY KEY (Patient_No,Illness_Code,Diagnosis_Date),
    
    CONSTRAINT FK_Diagnosis_Patient FOREIGN KEY (Patient_No) 
    REFERENCES Patient (Patient_No)
    
    -- CONSTRAINT FK_Diagnosis_Illness FOREIGN KEY (Illness_Code) 
    -- REFERENCES Illness (Illness_Code),
    
); 