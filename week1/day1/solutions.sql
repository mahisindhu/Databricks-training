SELECT * FROM Employee;

SELECT name, salary FROM Employee;

SELECT * FROM Employee
WHERE age > 30;

SELECT name FROM Department;

SELECT e.*
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id
WHERE d.name = 'IT';

SELECT * FROM Employee
WHERE name LIKE 'J%';

SELECT * FROM Employee
WHERE name LIKE '%e';

SELECT * FROM Employee
WHERE name LIKE '%a%';

SELECT * FROM Employee
WHERE LENGTH(name) = 9;

SELECT * FROM Employee
WHERE name LIKE '_o%';

SELECT * FROM Employee
WHERE YEAR(hire_date) = 2020;

SELECT * FROM Employee
WHERE MONTH(hire_date) = 1;

SELECT * FROM Employee
WHERE hire_date < '2019-01-01';

SELECT * FROM Employee
WHERE hire_date >= '2021-03-01';

SELECT * FROM Employee
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR);

SELECT SUM(salary) AS total_salary
FROM Employee;

SELECT AVG(salary) AS average_salary
FROM Employee;

SELECT MIN(salary) AS minimum_salary
FROM Employee;

SELECT department_id, COUNT(*) AS employee_count
FROM Employee
GROUP BY department_id;

SELECT department_id, AVG(salary) AS average_salary
FROM Employee
GROUP BY department_id;

SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id;

SELECT department_id, AVG(age) AS average_age
FROM Employee
GROUP BY department_id;
