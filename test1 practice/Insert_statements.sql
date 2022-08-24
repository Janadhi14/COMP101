-- inserting into patient

INSERT INTO Patient (Patient_No, Name, Date_Of_Birth,
Street_Address, Suburb, City, Phone_No, Email) VALUES
('12345', 'Rory Baker', TO_DATE('05/05/1996',
'dd/mm/yyyy'), '14 Forbes Street', 'Dunedin Central',
'Dunedin', '03-4678909', 'rbaker@gmail.com');

INSERT INTO Patient (Patient_No, Name, Date_Of_Birth,
Street_Address, Suburb, City, Phone_No, Email) VALUES
('12346', 'Lynley Richards', TO_DATE('08/07/1999',
'dd/mm/yyyy'), '27 Kenmure Avenue', 'Mornington',
'Dunedin', '02108822333', 'lrichie@outlook.com');

INSERT INTO Patient (Patient_No, Name, Date_Of_Birth,
Street_Address, Suburb, City, Phone_No, Email) VALUES
('12347', 'Tania Paddington', TO_DATE('25/06/1956', 
'dd/mm/yyyy'), '43 Stuart Street', 'Dunedin Central',
'Dunedin', '02209090909', 'paddycool@bing.com');

INSERT INTO Patient (Patient_No, Name, Date_Of_Birth,
Street_Address, Suburb, City, Phone_No, Email) VALUES
('12348', 'Ashton Marshall', TO_DATE('16/12/1967',
'dd/mm/yyyy'), '897 Scott Street', 'Dunedin Central',
'Dunedin', '03-4798312', 'aston67@yahoo.com');

--inserting into illness table

INSERT INTO Illness (Illness_Code, Name, Description)
VALUES ('001', 'DB1', 'Type 1 Diabetes');

INSERT INTO Illness (Illness_Code, Name, Description)
VALUES ('002', 'DB2', 'Type 2 Diabetes');

INSERT INTO Illness (Illness_Code, Name, Description)
VALUES ('003', 'ATH', 'Arthritis');

INSERT INTO Illness (Illness_Code, Name, Description)
VALUES ('004', 'PNU', 'Pnuemonia');


--inserting into diagnosis table

INSERT INTO Diagnosis (Patient_No, Illness_Code,
Diagnosis_Date, Severity, Diagnosed_By) VALUES
('12345','001', TO_DATE('05/09/2021', 'dd/mm/yyyy'), 'L',
'Dr. Angelo Lancaster');

INSERT INTO Diagnosis (Patient_No, Illness_Code,
Diagnosis_Date, Severity, Diagnosed_By) VALUES
('12346','002', TO_DATE('06/09/2021', 'dd/mm/yyyy'), 'H',
'Dr. Toby Baskerville');
INSERT INTO Diagnosis (Patient_No, Illness_Code,
Diagnosis_Date, Severity, Diagnosed_By) VALUES
('12347','003', TO_DATE('07/09/2021', 'dd/mm/yyyy'), 'M',
'Dr. Fernando Roberts');
INSERT INTO Diagnosis (Patient_No, Illness_Code,
Diagnosis_Date, Severity, Diagnosed_By) VALUES
('12348','004', TO_DATE('08/09/2021', 'dd/mm/yyyy'), 'L',
NULL);
INSERT INTO Diagnosis (Patient_No, Illness_Code,
Diagnosis_Date, Severity, Diagnosed_By) VALUES
('12348','001', TO_DATE('09/09/2021', 'dd/mm/yyyy'), 'L',
NULL);