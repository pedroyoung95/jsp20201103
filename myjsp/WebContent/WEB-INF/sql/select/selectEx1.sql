SELECT * from employee;
select * from bonus; --record�� ���� ���̺�
select * from department;
select * from salgrade;

select ename from employee;
select eno, ename from employee;
select ename, eno from employee;
select ename, salary from employee;
select ename, salary, salary*12 from employee;
select ename, salary / 100 from employee;
select ename, salary + 100 from employee;
select ename, salary - 100 from employee;
select ename, salary ����, salary*12 as ���� from employee; --as�� Į�� �̸��� �ο��� �� �ְ�, as�� ���� ����
--�� �� �ּ�
/*
���� 
�ּ�
*/

select * from employee;
select ename, salary, commission, salary + commission from employee; --null�� �����ϸ� ����� null
select ename, salary, commission, NVL(commission, 0) from employee; --NVL(columm name, value) : �ش� Į���� ���� null�̸� �� ��° �Ķ���� ������ ��ȯ
select ename, salary + NVL(commission,0) �� from employee;

select distinct dno from employee;
select * from employee where job='SALESMAN'; 