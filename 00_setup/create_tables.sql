-- Create sample departments table
CREATE TABLE departments_demo (
    department_id   NUMBER PRIMARY KEY,
    department_name VARCHAR2(50) NOT NULL
);

-- Create sample employees table
CREATE TABLE employees_demo (
    employee_id NUMBER PRIMARY KEY,
    first_name  VARCHAR2(50),
    last_name   VARCHAR2(50),
    salary      NUMBER(10,2),
    hire_date   DATE,
    department_id NUMBER REFERENCES departments_demo(department_id)
);

-- Insert sample departments
INSERT INTO departments_demo VALUES (10, 'Administration');
INSERT INTO departments_demo VALUES (20, 'IT');
INSERT INTO departments_demo VALUES (30, 'Sales');

-- Insert sample employees
INSERT INTO employees_demo VALUES (101, 'John', 'Doe', 5000, TO_DATE('2018-05-15', 'YYYY-MM-DD'), 10);
INSERT INTO employees_demo VALUES (102, 'Jane', 'Smith', 8000, TO_DATE('2020-02-01', 'YYYY-MM-DD'), 20);
INSERT INTO employees_demo VALUES (103, 'Alex', 'Jones', 3000, TO_DATE('2022-11-10', 'YYYY-MM-DD'), 30);

COMMIT;