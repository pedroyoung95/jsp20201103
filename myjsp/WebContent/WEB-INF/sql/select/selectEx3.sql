SELECT * FROM employee WHERE ename LIKE 'F%';
SELECT * FROM employee WHERE ename LIKE '%M%';
SELECT * FROM employee WHERE ename LIKE '%N'; -- '%'�� 0�� �̻��� ���ڸ� ��ü
SELECT * FROM employee WHERE ename LIKE '_A%';
SELECT * FROM employee WHERE ename LIKE '__A%'; -- '_'�� �� �� ���� ���ڸ� ��ü
SELECT * FROM employee WHERE ename NOT LIKE '%A%';

SELECT * FROM employee WHERE commission IS NULL;
SELECT * FROM employee WHERE commission IS NOT NULL;

SELECT * FROM employee ORDER BY salary ASC; --�⺻�� asc�̹Ƿ� asc�� ���� ����
SELECT * FROM employee ORDER BY salary DESC;
SELECT * FROM employee ORDER BY ename;
SELECT * FROM employee ORDER BY hiredate DESC;
SELECT * FROM employee ORDER BY salary DESC, ename ASC;