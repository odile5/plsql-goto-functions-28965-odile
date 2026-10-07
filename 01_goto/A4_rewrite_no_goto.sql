SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 6500;
    v_category VARCHAR2(20);
BEGIN
    -- Replaces A2 logic cleanly without GOTO
    IF v_salary < 4000 THEN
        v_category := 'LOW';
    ELSIF v_salary BETWEEN 4000 AND 7500 THEN
        v_category := 'MEDIUM';
    ELSE
        v_category := 'HIGH';
    END IF;

    DBMS_OUTPUT.PUT_LINE('Salary: $' || v_salary || ' - Category: ' || v_category);
    DBMS_OUTPUT.PUT_LINE('Salary review process ended.');
END;
/