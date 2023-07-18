-- 1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT
    emp.emp_no,
    emp.last_name,
    emp.first_name,
    emp.sex,
    sal.salary
FROM
    employees emp
    JOIN salaries sal ON emp.emp_no = sal.emp_no;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT
    emp.first_name,
    emp.last_name,
    emp.hire_date
FROM
    employees emp
WHERE
    emp.hire_date >= '1986-1-1'
    AND emp.hire_date <= '1986-12-31';

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT
    man.emp_no,
    dep.dept_no,
    dep.dept_name,
    man.first_name,
    man.last_name
FROM
    dept_manager depu
    JOIN departments dep ON depu.dept_no = dep.dept_no
    JOIN employees man ON depu.emp_no = man.emp_no;

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT
    dep.dept_no,
    emp.emp_no,
    emp.last_name,
    emp.first_name,
    dep.dept_name
FROM
    dept_manager depu
    JOIN departments dep ON depu.dept_no = dep.dept_no
    JOIN employees emp ON depu.emp_no = emp.emp_no;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT
    emp.first_name,
    emp.last_name,
    emp.sex
FROM
    employees emp
WHERE
    emp.first_name = 'Hercules'
    AND emp.last_name LIKE 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.
SELECT
    emp.emp_no,
    emp.last_name,
    emp.first_name
FROM
    employees emp
    JOIN dept_emp depu ON emp.emp_no = depu.emp_no
    JOIN departments dep ON dep.dept_no = depu.dept_no
WHERE
    dep.dept_name = 'Sales';

--7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT
    emp.emp_no,
    emp.last_name,
    emp.first_name,
    dep.dept_name
FROM
    employees emp
    JOIN dept_emp depu ON emp.emp_no = depu.emp_no
    JOIN departments dep ON dep.dept_no = depu.dept_no
WHERE
    dep.dept_name = 'Sales'
    OR dep.dept_name = 'Development';

--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT
    emp.last_name,
    COUNT(*) employees_lastname_frequency
FROM
    employees emp
GROUP BY
    emp.last_name;