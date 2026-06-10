select ename,empno,sal,grade from emp,salgrade where sal between losal and hisal;

-- this can also be used
select ename,empno,sal,grade from emp,salgrade where sal >= losal and sal<= hisal;
