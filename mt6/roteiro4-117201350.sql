--Q1
SELECT * FROM department;

--Q2
SELECT * FROM dependent;

--Q3
SELECT * FROM dept_locations;

--Q4
SELECT * FROM employee;

--Q5
SELECT * FROM project;

--Q6
SELECT * FROM works_on;

--Q7
SELECT E.fname, E.lname FROM employee AS E WHERE sex='M';

--Q8
SELECT fname FROM employee WHERE sex='M' AND superssn is null;

--Q9
SELECT func.fname, superv.fname FROM employee AS func, employee AS superv WHERE func.superssn=superv.ssn;

--Q10
SELECT func.fname, superv.fname FROM employee AS func, employee AS superv WHERE func.superssn=superv.ssn and superv.fname='Franklin';

--Q11
SELECT dept.dname, dept_l.dlocation FROM department AS dept, dept_locations AS dept_l WHERE dept.dnumber=dept_l.dnumber;

--Q12
SELECT dept.dname FROM department AS dept, dept_locations AS dept_l WHERE dept_l.dlocation LIKE 'S%';

--Q13


--Q14
--Q15
--Q16
--Q17
--Q18
