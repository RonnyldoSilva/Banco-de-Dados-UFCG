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
select s.fname as nome_supervisor, count(*) as qtd_supervisionados from (employee as s right outer join employee as e on (s.ssn = e.supers
sn)) group by s.ssn order by count(*);
                                                                                                              
--Q6
SELECT MIN(qtd) AS qtd FROM (SELECT count(*) AS qtd FROM works_on AS w GROUP BY w.pno) AS foo;

--Q8
select pno, avg(salary) from (works_on as w join employee as e on (e.ssn = w.essn)) group by pno order by avg(salary);

--Q9
select pnumber as proj_num, pname as proj_nome, media_sal 
from ( project as p join (
  select pno as num_proj, avg(salary) as media_sal 
  from (works_on as w join employee as e on (e.ssn = w.essn))
  group by pno 
  order by avg(salary)
) as pms on (p.pnumber = pms.num_proj));

--11
select ssn, count(pno) as qtd_proj from (employee as e left outer join works_on as w on (e.ssn = w.essn)) group by ssn order by count(pno);
