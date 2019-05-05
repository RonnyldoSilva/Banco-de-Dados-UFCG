--Q1
SELECT count(*) FROM employee AS e WHERE e.sex = 'F';

--Q2
SELECT AVG(e.salary) FROM employee AS e WHERE e.sex = 'M' AND RIGHT(e.address, 2) = 'TX';

--Q3
SELECT e.superssn AS ssn_supervisor, count(*) AS qtd_supervisionados FROM employee AS e GROUP BY e.superssn ORDER BY count(*);

--Q4
select s.fname as nome_supervisor, count(*) as qtd_supervisionados from (employee as s join employee as e on (s.ssn = e.superssn)) group b
y s.ssn order by count(*) asc;

--Q5

--Q6
SELECT MIN(qtd) AS qtd FROM (SELECT count(*) AS qtd FROM works_on AS w GROUP BY w.pno) AS foo;

