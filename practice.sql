-- task 1
select 
    first_name, 
    last_name, 
    salary, 
    salary * 1.10 as yeni_maas
from hr.employees;


-- task 2
select distinct 
    country_id
from hr.locations;


-- task 3
select 
    first_name, 
    department_id, 
    salary
from hr.employees
where (department_id = 50 and salary < 3000)
   or (department_id = 80 and salary > 10000);


-- task 4
select 
    job_title,min_salary
from hr.jobs
where min_salary between 4000 and 6000;


-- task 5
select 
    city, 
    country_id
from hr.locations
where country_id in ('US', 'UK', 'CA');


-- task 6
select 
    first_name, 
    last_name
from hr.employees
where first_name like 'S____'
  and lower(last_name) like '%a%';


-- task 7
select 
    department_name
from hr.departments
where manager_id is null;


-- task 8
select 
    job_title, 
    (max_salary - min_salary) as maas_ferqi
from hr.jobs
order by maas_ferqi desc
fetch first 3 rows only;


-- task 9
select 
    count(*) as isci_sayi,
    count(commission_pct) as komissiya_alan_isci_sayi,
    round(avg(salary), 2) as orta_maas,
    max(salary) - min(salary) as maas_ferqi
from hr.employees
where department_id = 80;


-- task 10

select 
    first_name as ad,salary
from hr.employees
where first_name like 'A%'
  and commission_pct is null;
