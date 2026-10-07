SET SERVEROUTPUT ON;

-- DEMONSTRATION OF ILLEGAL GOTO (Uncomment to test compiler error)
/*
DECLARE
    v_flag BOOLEAN := TRUE;
BEGIN
    GOTO inside_if; -- ILLEGAL: Cannot jump into an IF block!
    
    IF v_flag THEN
        <<inside_if>>
        DBMS_OUTPUT.PUT_LINE('Inside IF block');
    END IF;
END;
/
*/

-- CORRECTED LEGAL CODE
DECLARE
    v_flag BOOLEAN := TRUE;
BEGIN
    IF v_flag THEN
        GOTO valid_target;
    END IF;
    
    GOTO end_block;

    <<valid_target>>
    DBMS_OUTPUT.PUT_LINE('Successfully reached valid target outside IF block.');

    <<end_block>>
    DBMS_OUTPUT.PUT_LINE('Execution finished cleanly.');
END;
/