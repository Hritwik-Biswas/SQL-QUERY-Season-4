select * from emp;
select * from dept;

--WAQTD names of the employee if the emp has char 'A' as his Third character
select ename
from emp
where ename like '__A%';

--WAQTD names of the employee if the emp has char 'A' as his second character and 'S' is last character .
select ename
from emp
where ename like '_A%S';

--WAQTD names of the employee if the emp name starts with 'A' and ends with 'A' .
select ename
from emp
where ename like 'A%A';

--WAQTD names of the employee if the emp has not a char 'A' as his Third character 
select ename
from emp
where ename not like '__A%';

--LIST ALL THE EMPLOYEES WHOSE COMMISSION IS NULL
select *
from emp
where comm is null;

--LIST ALL THE EMPLOYEES WHO DON’T HAVE A REPORTING MANAGER
select * 
from emp
where mgr is null;

--LIST ALL THE SALESMEN IN DEPT 30
select *
from emp
where job='salesman' and deptno=30;

--LIST ALL THE SALESMEN IN DEPT NUMBER 30 AND HAVING SALARY GREATER THAN 1500
select *
from emp
where job='salesman' and sal>1500 and deptno=30;

--LIST ALL THE EMPLOYEES WHOSE NAME STARTS WITH ‘S’ OR ‘A’
select *
from emp
where ename like 'S%' or ename like'A%';

--WAQTD name and deptno of the employees working in dept 10 or 30 .
select ename,deptno
from emp
where deptno=10 or deptno=30;

select ename,deptno
from emp
where deptno in (10,30);

--LIST ALL THE EMPLOYEES EXCEPT THOSE WHO ARE WORKING IN DEPT 10 & 20.
select *
from emp
where deptno not in (10,20);

--LIST THE EMPLOYEES WHOSE NAME DOES NOT START WITH ‘S’
select *
from emp
where ename not like 'S%';

--LIST ALL THE EMPLOYEES WHO ARE HAVING REPORTING MANAGERS IN DEPT 10
select *
from emp
where mgr is not null and deptno=10;

--LIST ALL THE EMPLOYEES WHOSE COMMISSION IS NULL AND WORKING AS CLERK
select * 
from emp
where comm is null and job ='clerk';

--LIST ALL THE EMPLOYEES WHO DON’T HAVE A REPORTING MANAGER IN DEPTNO 10 OR 30
select * 
from emp
where mgr is null and deptno in(10,30);

--LIST ALL THE SALESMEN IN DEPT 30 WITH SAL MORE THAN 2450
select * 
from emp
where job='salesman' and deptno=30 and sal>2450;

--LIST ALL THE ANALYST IN DEPT NUMBER 20 AND HAVING SALARY GREATER THAN 2500
select *
from emp
where job='analyst' and deptno=20 and sal>2500;

--LIST ALL THE EMPLOYEES WHOSE NAME STARTS WITH ‘M’ OR ‘J’
select *
from emp
where ename like 'M%' or ename like 'J%';

--LIST ALL THE EMPLOYEES WITH ANNUAL SALARY EXCEPT THOSE WHO ARE WORKING IN
--DEPT 30
select emp.*,sal*12 annual_sal
from emp
where deptno <> 30;

--LIST THE EMPLOYEES WHOSE NAME DOES NOT END WITH ‘ES’ OR ‘R'
select * 
from emp
where ename not like '%ES' or ename not like '%R';

--LIST ALL THE EMPLOYEES WHO ARE HAVING REPORTING MANAGERS IN DEPT 10 ALONG
--WITH 10% HIKE IN SALARY
select emp.*,sal+sal*10/100 hike_sal
from emp
where mgr is not null and deptno=10;

--DISPLAY ALL THE EMPLOYEE WHO ARE ‘SALESMAN’S HAVING ‘E’ AS THE LAST BUT ONE
--CHARACTER IN ENAME BUT SALARY HAVING EXACTLY 4 CHARACTER
select *
from emp
where job='salesman' and ename like '%E_' and sal between 1000 and 9999;

--DISPLAY ALL THE EMPLOYEE WHO ARE JOINED AFTER YEAR 81
select *
from emp
where hiredate > '31-12-1981';

--DISPLAY ALL THE EMPLOYEE WHO ARE JOINED IN FEB
--select *
--from emp
--where hiredate like '%FEB%';

--LIST THE EMPLOYEES WHO ARE NOT WORKING AS MANAGERS AND CLERKS IN DEPT 10
--AND 20 WITH A SALARY IN THE RANGE OF 1000 TO 3000.
select *
from emp
where job not in ('manager','clerk') and deptno in (10,20) and sal between 1000 and 3000;

select *
from emp
where job <> 'manager' and job <> 'clerk' and deptno in (10,20) and sal between 1000 and 3000;
