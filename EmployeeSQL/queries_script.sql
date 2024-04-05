------------------------------------------------------------
------- Data Analysis --------------------------------------
------------------------------------------------------------


-- 1

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employee e
LEFT JOIN salary s
ON e.emp_no = s.emp_no;


-- 2

SELECT first_name, last_name, hire_date 
FROM employee 
WHERE EXTRACT(year FROM hire_date) = 1986;


-- 3

SELECT dept_manager.dept_no, department.dept_name, dept_manager.emp_no, employee.last_name, employee.first_name
FROM
((dept_manager 
LEFT JOIN department
 ON dept_manager.dept_no = department.dept_no)
LEFT JOIN employee
ON employee.emp_no = dept_manager.emp_no);


-- 4

SELECT 
dept_emp.emp_no, 
employee.last_name, 
employee.first_name, 
dept_emp.dept_no,
department.dept_name
FROM ((dept_emp
	  LEFT JOIN employee
	  ON dept_emp.emp_no = employee.emp_no)
	 LEFT JOIN department
	 ON dept_emp.dept_no = department.dept_no);


-- 5

SELECT first_name, last_name, sex
FROM employee
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


-- 6

SELECT emp_no, last_name, first_name FROM  employee
WHERE emp_no 
IN (SELECT emp_no FROM dept_emp WHERE dept_no
	IN (SELECT dept_no FROM department WHERE dept_name = 'Sales'));


-- 7

SELECT 
dept_emp.emp_no, 
employee.first_name, 
employee.last_name,
department.dept_name
FROM ((dept_emp
JOIN department
ON dept_emp.dept_no = department.dept_no
AND dept_name IN ('Sales', 'Development'))
JOIN employee
ON dept_emp.emp_no = employee.emp_no);


-- 8

SELECT 
last_name as "Last Name",
count(emp_no) as "Frequency"
FROM employee
GROUP BY last_name
ORDER BY count(emp_no) DESC;
