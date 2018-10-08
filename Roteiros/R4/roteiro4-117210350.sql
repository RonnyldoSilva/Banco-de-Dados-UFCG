--Q1
SELECT *
FROM department;

--Q2
SELECT *
FROM dependent;

--Q3
SELECT *
FROM dept_locations;

--Q4
SELECT *
FROM employee;

--Q5
SELECT *
FROM project;

--Q6
SELECT *
FROM works_on;

--Q7
SELECT E.fname, E.lname 
FROM employee AS E 
WHERE E.sex = 'M';

--Q8
SELECT E.fname 
FROM employee AS E 
WHERE E.sex = 'M' AND E.superssn IS NULL;

--Q9
SELECT E.fname, S.fname 
FROM employee AS E, employee AS S 
WHERE E.superssn = S.ssn;

--Q10
SELECT E.fname 
FROM employee AS E, employee AS S 
WHERE E.superssn = S.ssn AND S.fname = 'Franklin';

--Q11
SELECT D.dname, L.dlocation 
FROM department AS D, dept_locations AS L 
WHERE D.dnumber = L.dnumber;

--Q12
SELECT D.dname 
FROM department AS D, dept_locations AS L 
WHERE D.dnumber = L.dnumber AND LEFT(L.dlocation, 1) = 'S';

--Q13
