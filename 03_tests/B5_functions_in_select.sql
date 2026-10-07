SELECT 
    employee_id,
    first_name || ' ' || last_name AS full_name,
    salary AS monthly_salary,
    fn_annual_salary(salary) AS annual_salary,
    fn_calculate_tax(fn_annual_salary(salary)) AS estimated_tax,
    fn_years_of_service(hire_date) AS years_worked,
    fn_dept_name(department_id) AS department
FROM employees_demo;