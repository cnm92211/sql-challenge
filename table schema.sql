CREATE TABLE "departments" (
	"dept_no" VARCHAR(5) PRIMARY KEY NOT NULL,
	"dept_name" VARCHAR(40)
)

CREATE TABLE "employees" (
	"emp_no" INTEGER PRIMARY KEY NOT NULL,
	"emp_title_id" VARCHAR(5) REFERENCES titles(title_id) NOT NULL,
	"birth_date" DATE,
	"first_name" VARCHAR(40),
	"last_name" VARCHAR(40),
	"sex" VARCHAR(1),
	"hire_date" DATE
);


CREATE TABLE "salaries" (
	"emp_no" INTEGER NOT NULL,
	"salary" INTEGER NOT NULL
);

CREATE TABLE "dept_emp" (
	"emp_no" INTEGER REFERENCES employees(emp_no) NOT NULL,
	"dept_no" VARCHAR(5) REFERENCES departments(dept_no) NOT NULL
);


CREATE TABLE "dept_manager" (
	"dept_no" VARCHAR(5) REFERENCES departments(dept_no) NOT NULL,
	"emp_no" INTEGER REFERENCES employees(emp_no) NOT NULL	
);

CREATE TABLE "titles" (
	"title_id" VARCHAR(5) PRIMARY KEY NOT NULL,
	"title" VARCHAR(40)
);