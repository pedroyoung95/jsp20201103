SELECT commission, nvl(commission, 0) FROM employee;

--�׷��ռ��� �ϳ� �̻��� ���� �׷����� ��� ����Ǵ� �Լ�
SELECT SUM(salary) FROM employee; 
SELECT AVG(salary) FROM employee;
SELECT MIN(salary) FROM employee;
SELECT MAX(salary) FROM employee;
SELECT COUNT(salary) FROM employee; --�ش� Į���� �ڷ� ����
SELECT COUNT(*) FROM employee; --���̺��� �� ���� ���ڵ�(��)�� �ִ���

SELECT MAX(hiredate), MIN(hiredate) FROM employee;

SELECT SUM(commission) AS "Ŀ�̼� �Ѿ�" FROM employee; --�׷��Լ��� null�� �ڵ����� �����ϰ� ������

SELECT COUNT(commission) AS "Ŀ�̼� �޴� ��� ��" FROM employee;

SELECT COUNT(job) AS "������ ����" FROM employee;
SELECT COUNT(DISTINCT job) AS "�ߺ��� ������ ������ ����" FROM employee; --count�� �� �ߺ��� �����Ϸ��� distinct ���

--SELECT ename, MAX(salary) FROM employee; -> �׷��Լ��� ����ϸ� �׷��Լ��� �ƴ� �Ͱ� ���� ���X(���� �������� ��鿩�� ��)
SELECT ename FROM employee
WHERE salary = (SELECT MAX(salary) FROM employee); --�׷��Լ��� ����� �ٸ� �������� �κ��� �Ǵ� ���� ������

