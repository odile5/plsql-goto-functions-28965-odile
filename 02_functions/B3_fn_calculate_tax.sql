CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_annual_salary IN NUMBER
) RETURN NUMBER IS
BEGIN
    IF p_annual_salary <= 50000 THEN
        RETURN p_annual_salary * 0.10;
    ELSIF p_annual_salary <= 100000 THEN
        RETURN p_annual_salary * 0.20;
    ELSE
        RETURN p_annual_salary * 0.30;
    END IF;
END fn_calculate_tax;
/