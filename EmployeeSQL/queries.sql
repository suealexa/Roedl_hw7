-- Question 1
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no

--Question 2
SELECT * FROM dept_emp
WHERE (from_date BETWEEN '1986-01-01' AND '1986-12-31');

--Question 3
SELECT Dept_manager.dept_no, Dept_manager.emp_no, Dept_manager.from_date, Dept_manager.to_date, employees.first_name, employees.last_name, departments.dept_name
FROM Dept_manager
INNER JOIN departments
ON Dept_manager.dept_no = departments.dept_no
INNER JOIN employees
ON employees.emp_no = Dept_manager.emp_no;

--Question 4
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name, dept_emp.emp_no, dept_emp.dept_no
FROM employees, departments, dept_emp
WHERE dept_emp.emp_no = employees.emp_no and dept_emp.dept_no = departments.dept_no

--Question 5
SELECT * FROM employees
WHERE first_name LIKE 'Hercules' AND last_name LIKE'B%';

--Question 6
SELECT * FROM employeesSELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees, departments, dept_emp
WHERE dept_name LIKE 'Sales' and dept_emp.emp_no = employees.emp_no and dept_emp.dept_no = departments.dept_no

--Question 7
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees, departments, dept_emp
WHERE dept_name IN ('Sales', 'Development') and dept_emp.emp_no = employees.emp_no and dept_emp.dept_no = departments.dept_no;

--Question 8
SELECT COUNT(last_name), last_name 
FROM employees
GROUP BY last_name
ORDER BY (last_name) DESC;
