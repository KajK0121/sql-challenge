--List the employee number, last name, first name, sex, and salary of each employee.
SELECT
    e.emp_no AS "Employee Number",
    e.last_name AS "Last Name",
    e.first_name AS "First Name",
    e.sex AS "Sex",
    s.salary AS "Salary"
FROM
    "Employee" e
JOIN
    "Salary" s ON e.emp_no = s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT
    first_name AS "First Name",
    last_name AS "Last Name",
    hire_date AS "Hire Date"
FROM
    "Employee"
WHERE
    SUBSTRING(hire_date FROM LENGTH(hire_date) - 3) = '1986';
	
--List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT
    dm.dept_no AS "Department Number",
    d.dept_name AS "Department Name",
    dm.emp_no AS "Employee Number",
    e.last_name AS "Last Name",
    e.first_name AS "First Name"
FROM
    "DepartmentManager" dm
JOIN
    "Department" d ON dm.dept_no = d.dept_no
JOIN
    "Employee" e ON dm.emp_no = e.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
SELECT
    de.emp_no AS "Employee Number",
    e.last_name AS "Last Name",
    e.first_name AS "First Name",
    de.dept_no AS "Department Number",
    d.dept_name AS "Department Name"
FROM
    "DepartmentEmployee" de
JOIN
    "Employee" e ON de.emp_no = e.emp_no
JOIN
    "Department" d ON de.dept_no = d.dept_no;
	
--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B 
SELECT
    first_name AS "First Name",
    last_name AS "Last Name",
    sex AS "Sex"
FROM
    "Employee"
WHERE
    first_name = 'Hercules'
    AND last_name LIKE 'B%';
--List each employee in the Sales department, including their employee number, last name, and first name
SELECT
    de.emp_no AS "Employee Number",
    e.last_name AS "Last Name",
    e.first_name AS "First Name"
FROM
    "DepartmentEmployee" de
JOIN
    "Employee" e ON de.emp_no = e.emp_no
JOIN
    "Department" d ON de.dept_no = d.dept_no
WHERE
    d.dept_name = 'Sales';
--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT
    de.emp_no AS "Employee Number",
    e.last_name AS "Last Name",
    e.first_name AS "First Name",
    d.dept_name AS "Department Name"
FROM
    "DepartmentEmployee" de
JOIN
    "Employee" e ON de.emp_no = e.emp_no
JOIN
    "Department" d ON de.dept_no = d.dept_no
WHERE
    d.dept_name IN ('Sales', 'Development');
	
--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT
    last_name AS "Last Name",
    COUNT(*) AS "Frequency Count"
FROM
    "Employee"
GROUP BY
    last_name
ORDER BY
    "Frequency Count" DESC, "Last Name" ASC;
