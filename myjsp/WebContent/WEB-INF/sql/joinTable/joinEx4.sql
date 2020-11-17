SELECT * FROM employee;
SELECT e1.eno, e1.manager, e2.eno 
FROM employee e1, employee e2
WHERE e1.manager = e2.eno; --���� ���� �� null���� �ִ� ���� ���� ����� ������� ���� 

--NULL���� ǥ���ϴ� JOIN�� OUTER JOIN(NULLǥ�� ���ϴ� JOIN�� INNER JOIN)
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 LEFT OUTER JOIN employee e2
ON e1.manager = e2.eno; --���� ���̺��� Į���� �� ��(NULL)�鵵 ������ ����
--�Ǵٸ� LEFT OUTER JOIN(����Ŭ������ ����Ǵ� ����)
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno(+);


SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 RIGHT OUTER JOIN employee e2
ON e1.manager = e2.eno; --������ ���̺��� Į���� �� ��(NULL)�鵵 ������ ����
--�Ǵٸ� RIGHT OUTER JOIN(����Ŭ������ ����Ǵ� ����)
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager(+) = e2.eno;

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 FULL OUTER JOIN employee e2
ON e1.manager = e2.eno; --�� ���̺��� ��� �� ������ �����ؼ� ����(��ġ ������)

SELECT employees.ename || '�� ���ӻ����' || manager.ename
FROM employee employees LEFT OUTER JOIN employee manager
ON employees.manager = manager.eno;

--ȥ���غ���
SELECT * FROM employee;
--7��
SELECT employees.ename AS "Employee", employees.manager AS "Emp#", manager.eno AS "Manager", manager.ename "Mgr#"
FROM employee employees, employee manager
WHERE employees.manager = manager.eno;
--8��
SELECT employees.ename AS "Employee", employees.manager AS "Emp#", manager.eno AS "Manager", manager.ename "Mgr#"
FROM employee employees, employee manager
WHERE employees.manager = manager.eno
ORDER BY employees.eno DESC;
--9��
SELECT employees.ename AS "�̸�", employees.dno AS "�μ���ȣ", coworker.ename AS "����"
FROM employee employees, employee coworker
WHERE employees.dno = coworker.dno
AND employees.ename = 'SCOTT'
AND coworker.ename != 'SCOTT';
--10��
SELECT other.ename AS "ENAME", other.hiredate AS "HIREDATE"
FROM employee ward, employee other
WHERE other.hiredate > ward.hiredate
AND ward.ename ='WARD'
ORDER BY other.hiredate ASC;
--11��
SELECT junior.ename, junior.hiredate, senior.ename, senior.hiredate
FROM employee junior, employee senior
WHERE junior.hiredate <= senior.hiredate
AND junior.manager = senior.eno;