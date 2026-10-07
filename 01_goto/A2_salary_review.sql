SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 6500;
BEGIN
    IF v_salary < 4000 THEN
        GOTO low_sal;
    ELSIF v_salary BETWEEN 4000 AND 7500 THEN
        GOTO med_sal;
    ELSE
        GOTO high_sal;
    END IF;

    <<low_sal>>
    DBMS_OUTPUT.PUT_LINE('Salary: $' || v_salary || ' - Category: LOW');
    GOTO finish;

    <<med_sal>>
    DBMS_OUTPUT.PUT_LINE('Salary: $' || v_salary || ' - Category: MEDIUM');
    GOTO finish;

    <<high_sal>>
    DBMS_OUTPUT.PUT_LINE('Salary: $' || v_salary || ' - Category: HIGH');
    GOTO finish;

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Salary review process ended.');
END;
/