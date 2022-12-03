-- ADD_MAINTENANCE PROCEDURE IS CREATED UNDER THE ADD_MAINTENANCE PACKAGE
create or replace PROCEDURE ADD_MAINTENANCE ( 
                    IN_MAIN_ID NUMBER,
                    IN_UNIT_ID NUMBER,
                    IN_TENANT_CONTACT NUMBER,
                    IN_MAIN_START_DATE DATE,
                    IN_MAIN_TYPE VARCHAR2 
                    ) 
IS 
 INVALID_INPUTS EXCEPTION;

BEGIN 
    IF (IN_MAIN_ID IS NULL 
    OR IN_UNIT_ID IS NULL 
        OR IN_TENANT_CONTACT IS NULL 
        OR IN_MAIN_START_DATE IS NULL 
        OR IN_MAIN_TYPE IS NULL 
         )
    THEN 
     RAISE INVALID_INPUTS;
    END IF;

INSERT INTO MAINTENANCE (
                MAIN_ID,
                UNIT_ID,
                TENANT_CONTACT,
                MAIN_START_DATE,
                MAIN_TYPE
            ) VALUES ( 
            IN_MAIN_ID,
          IN_UNIT_ID,
          IN_TENANT_CONTACT,
          IN_MAIN_START_DATE, 
          IN_MAIN_TYPE
          );


EXCEPTION
WHEN INVALID_INPUTS
THEN 
 --RAISE INVALID_INPUTS;
 raise_application_error (-20091,'INPUTS CANNNOT BE NULL');
--THEN DBMS_OUTPUT.PUT_LINE ('INPUTS ARE NOT VALID');
-- END;
END ADD_MAINTENANCE;