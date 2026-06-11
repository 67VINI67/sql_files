select ename,empno,sal,grade from emp,salgrade where sal between losal and hisal;

-- this can also be used
select ename,empno,sal,grade from emp,salgrade where sal >= losal and sal<= hisal;

--this is according to ANSI standard
select ename,empno,sal,grade from emp join salgrade on sal >= losal and sal<= hisal;

--this is also another code according to ANSI standard
select ename,empno,sal,grade from emp join salgrade on sal between losal and hisal;

--this is left join, dept table will be fully there, coz it is in the left side in the query and it is a left join query
select ename,empno,emp.deptno,dept.deptno,dname from emp,dept where emp.deptno=dept.deptno(+);

--this is right join, emp table will be fully there, coz it is in the right side in the query and it is a right join query
select ename,empno,emp.deptno,dept.deptno,dname from emp,dept where emp.deptno(+)=dept.deptno;


--this code is to change(remove or add) the constraint
 alter table emp drop constraint fk_deptno;

--this code is for self join
select tab1.ename || ' works for ' || tab2.ename from emp tab1,emp tab2 where tab1.mgr = tab2.empno;
