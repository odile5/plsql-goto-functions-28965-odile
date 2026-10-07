SET SERVEROUTPUT ON;

DECLARE
    PROCEDURE check_emp(p_id NUMBER) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Employee ID ' || p_id || ' Status: ' || fn_validate_payroll(p_id));
    END;
BEGIN
    check_emp(101); -- Valid employee
    check_emp(102); -- Valid employee
    check_emp(999); -- Non-existent employee  
END;
/