SELECT * FROM employee;
SELECT MAX(salary) FROM employee;
SELECT job, MAX(salary) FROM employee GROUP BY job; --Ư�� Į���� �������� �׷��� �� ����(���⼱ job ���� �׷�ȭ)
--MAX�׷��Լ��� ����� job Į���� �� ������ ��ġ�ϹǷ�, �׷��Լ��� �׷��Լ��� ������ �Ǵ� Į���� ���ÿ� select�� �� ����

SELECT dno as "�μ���ȣ", AVG(salary) AS "�޿� ���"
FROM employee GROUP BY dno;

SELECT AVG(salary) AS "�޿� ���" FROM employee GROUP BY dno;

--SELECT dno, ename, AVG(salary) FROM employee GROUP BY dno; ->�׷�ȭ ���� ���� Į���� select �� �� ����
SELECT dno, job, count(*), SUM(salary) 
FROM employee
GROUP BY dno, job
ORDER BY dno, job; --���� Į���� �׷�ȭ�ؾ� �� �׷���� select �� �� ����
--�� ���, salary�� sum�׷��Լ� ����� �μ���ȣ�� ���� ���� ����