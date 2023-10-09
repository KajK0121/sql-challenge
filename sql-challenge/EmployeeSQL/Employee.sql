-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Employee" (
    emp_no int   NOT NULL,
    emp_title VARCHAR(255)   NOT NULL,
    birth_date VARCHAR(255)   NOT NULL,
    first_name VARCHAR(255)   NOT NULL,
    last_name VARCHAR(255)   NOT NULL,
    sex VARCHAR(255)   NOT NULL,
    hire_date VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Employee" PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE "Department" (
    dept_no VARCHAR(255)  NOT NULL,
    dept_name VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Department" PRIMARY KEY (
        dept_no)
);

CREATE TABLE "DepartmentEmployee" (
    emp_no int   NOT NULL,
    dept_no VARCHAR(255)   NOT NULL
);

CREATE TABLE "DepartmentManager" (
    dept_no VARCHAR(255)   NOT NULL,
    emp_no int   NOT NULL
);

CREATE TABLE "Salary" (
    emp_no int   NOT NULL,
    salary int   NOT NULL
);

CREATE TABLE "Title" (
    title_id VARCHAR(255)   NOT NULL,
    title VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Title" PRIMARY KEY (
        title_id
     )
);

ALTER TABLE "DepartmentEmployee" ADD CONSTRAINT "fk_DepartmentEmployee_emp_no" FOREIGN KEY(emp_no)
REFERENCES "Employee" (emp_no);

ALTER TABLE "DepartmentEmployee" ADD CONSTRAINT "fk_DepartmentEmployee_dept_no" FOREIGN KEY(dept_no)
REFERENCES "Department" (dept_no);

ALTER TABLE "DepartmentManager" ADD CONSTRAINT "fk_DepartmentManager_dept_no" FOREIGN KEY(dept_no)
REFERENCES "Department" (dept_no);

ALTER TABLE "DepartmentManager" ADD CONSTRAINT "fk_DepartmentManager_emp_no" FOREIGN KEY(emp_no)
REFERENCES "Employee" (emp_no);

ALTER TABLE "Salary" ADD CONSTRAINT "fk_Salary_emp_no" FOREIGN KEY(emp_no)
REFERENCES "Employee" (emp_no);

Select * FROM "Employee"
Select * from "Department"
Select * From "DepartmentEmployee"
Select * From "DepartmentManager"
Select * From "Employee"
Select * From "Salary"
Select * From "Title"

 