CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_emp_id IN NUMBER
) RETURN VARCHAR2 IS
    v_salary employees_demo.salary%TYPE;
BEGIN
    SELECT salary INTO v_salary
    FROM employees_demo
    WHERE employee_id = p_emp_id;

    IF v_salary IS NULL OR v_salary <= 0 THEN
        RETURN 'INVALID: Salary must be greater than zero';
    ELSIF v_salary > 20000 THEN
        RETURN 'INVALID: Salary exceeds maximum limit';
    ELSE
        RETURN 'VALID';
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'INVALID: Employee ID does not exist';
END fn_validate_payroll;
/