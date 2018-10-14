--Q1
SELECT count(*) 
FROM employee AS e 
WHERE e.sex = 'F';

--Q2
SELECT AVG(e.salary) 
FROM employee AS e 
WHERE e.sex = 'M' AND RIGHT(e.address, 2) = 'TX';
