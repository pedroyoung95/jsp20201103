SELECT * FROM employee;
SELECT * FROM salgrade;
SELECT * FROM employee e, salgrade s;

SELECT * FROM employee e, salgrade s
WHERE e.salary BETWEEN s.losal AND s.hisal; --�� ���̺��� ���� ���� ��Ȯ�� ��ġ���� ���� ���� ������ NON-EQUI JOIN��

SELECT ename, salary, grade FROM employee, salgrade
WHERE salary BETWEEN losal AND hisal;

SELECT e.ename, d.dname, e.salary, s.grade
FROM employee e, department d, salgrade s
WHERE e.dno = d.dno AND salary BETWEEN losal AND hisal; --���� ���� ��ġ���� �ʾƵ� �ǹǷ�, �� ���� ���� ���̺� ���� ����

SELECT s.grade FROM employee e, salgrade s 
WHERE e.ename  = 'WARD'AND e.salary BETWEEN s.losal AND s.hisal;
