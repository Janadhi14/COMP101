-- TASK 1

--1.    How many sites are there per region?  
SELECT Region_ID,site_id, count(*)
from Site
group by site_id;

--2.a   What is the total catchment area for each region?

/*
2.b What is strange about the results? Is there anything you can do to resolve the problem? 
Replace this text with your answer
*/


--3.    What scientists are responsible for more than 80 samples?


--4: List all scientists and their samples.  

--5: Show the number of samples taken by each scientist (**tricky!**).

--6: Which site has the largest catchment area?

--7: Which scientists have recorded samples in the Dunedin region?

--8: Which scientists have not recorded any samples?