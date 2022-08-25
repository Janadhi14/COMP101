-- querring 
-- retrieve and display the details of the patient named Rory Baker 
SELECT * FROM Patient WHERE Name = 'Rory Baker';

-- retrieve and display all the records from teh Diagnosis table where the patient  number is 12345
SELECT * FROM Diagnosis WHERE (Patient_No = '12345') AND (Illness_Code = '001');

-- retrieve all records from the illness table where the description of the illness is Type 1 Diabetes and
SELECT * FROM Illness WHERE Description = 'Type 1 Diabetes';

-- retrieve all records from the patient table ordered by DESC order of Name 
SELECT * FROM Patient ORDER BY Name DESC;

-- retrieve and display the count of all records in the Illness table 
SELECT COUNT (*) FROM Illness;

-- present the names of all patients that suffer from Type 2 Diabetes 
SELECT Names FROM Patient WHERE Description = 'Type 2 Diabetes';