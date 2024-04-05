COPY title(title_id, title)
FROM 'F:\Renu - Data Analysis\Challenge 9\Starter_Code(2)\Starter_Code\data\titles.csv'
DELIMITER ','
CSV HEADER;

COPY department(dept_no, dept_name)
FROM 'F:\Renu - Data Analysis\Challenge 9\Starter_Code(2)\Starter_Code\data\departments.csv'
DELIMITER ','
CSV HEADER;

COPY employee(emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date)
FROM 'F:\Renu - Data Analysis\Challenge 9\Starter_Code(2)\Starter_Code\data\employees.csv'
DELIMITER ','
CSV HEADER;

COPY dept_emp(emp_no, dept_no)
FROM 'F:\Renu - Data Analysis\Challenge 9\Starter_Code(2)\Starter_Code\data\dept_emp.csv'
DELIMITER ','
CSV HEADER;

COPY dept_manager(dept_no, emp_no)
FROM 'F:\Renu - Data Analysis\Challenge 9\Starter_Code(2)\Starter_Code\data\dept_manager.csv'
DELIMITER ','
CSV HEADER;

COPY salary(emp_no, salary)
FROM 'F:\Renu - Data Analysis\Challenge 9\Starter_Code(2)\Starter_Code\data\salaries.csv'
DELIMITER ','
CSV HEADER;