SELECT * FROM employee e, department d;
SELECT * FROM employee e1, employee e2;
SELECT * FROM employee WHERE eno = 7369;
SELECT * FROM employee WHERE eno = 7902;
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename FROM employee e1, employee e2 WHERE e1.manager = e2.eno;
    --������ �ڱ� �ڽ��̶�� ���� ����� EQUI JOIN�� ����
    
SELECT employees.ename AS "����̸�", manager.ename AS "���ӻ���̸�"
FROM employee employees, employee manager
WHERE employees.manager = manager.eno;

SELECT employees.ename || '�� ���� �����' || manager.ename
FROM employee employees, employee manager
WHERE employees.manager = manager.eno; -- '||'�� string�� �������ִ� ������

SELECT employees.ename 
FROM employee employees, employee manager
WHERE employees.manager = manager.eno
AND  manager.eno = 7902;