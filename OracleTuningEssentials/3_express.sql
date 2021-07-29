CREATE OR REPLACE PROCEDURE DEV.GENERATE_ORD_BASE (P_GEN_AMOUNT NUMBER, P_COMMIT_NUM NUMBER, P_FULL VARCHAR2 := 'Y')
IS
    V_QUOTIENT      NUMBER;
    V_REMAINDER     NUMBER;
    V_COMMIT_CNT    NUMBER := 0;
    
    V_ERR_CD        NUMBER;
    V_ERR_MSG       VARCHAR(1024);
BEGIN

    SELECT  CEIL(P_GEN_AMOUNT/P_COMMIT_NUM), MOD(P_GEN_AMOUNT,P_COMMIT_NUM) INTO V_QUOTIENT, V_REMAINDER
    FROM    DUAL;
    
    
    FOR i IN 1..V_QUOTIENT LOOP

        INSERT  /*+ APPEND */  INTO DEV.ORD_TEMP (
                ORD_DT
              , ORD_HMS
              , SHOP_NO
              , UPPER2
              , UPPER_CASE
              , LOWER_CASE
              , ALPHABET
              , ALPHABET_NUMERIC
            )
        SELECT  
                YYYY || MM ||
                CASE
                    WHEN MM = '02' THEN TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1, 29)), 'FM09')
                    WHEN MM IN ('04','06','09','11') THEN TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1, 31)), 'FM09')
                    ELSE TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1, 32)), 'FM09')
                END     ORD_DT
              , HH || MI || SS  ORD_HMS
              , SHOP_NO
              , UPPER2
              , UPPER_CASE
              , LOWER_CASE
              , ALPHABET
              , ALPHABET_NUMERIC
        FROM    (
                    SELECT  
                            TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(2012, 2014))) YYYY
                          , TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1, 13)), 'FM09') MM
                          , TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(9, 23)), 'FM09') HH
                          , TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(0, 60)), 'FM09') MI
                          , TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(0, 60)), 'FM09') SS
                          , 'SH' || LPAD(TRUNC(DBMS_RANDOM.VALUE(1, 201)),4,'0') SHOP_NO
                          , DBMS_RANDOM.STRING('U', 2) UPPER2
                          , CASE WHEN P_FULL = 'Y' THEN DBMS_RANDOM.STRING('U', 10) ELSE NULL END UPPER_CASE
                          , CASE WHEN P_FULL = 'Y' THEN DBMS_RANDOM.STRING('L', 10) ELSE NULL END LOWER_CASE
                          , CASE WHEN P_FULL = 'Y' THEN DBMS_RANDOM.STRING('A', 100) ELSE NULL END ALPHABET
                          , CASE WHEN P_FULL = 'Y' THEN DBMS_RANDOM.STRING('X', 100) ELSE NULL END ALPHABET_NUMERIC
                    FROM    DUAL
                    CONNECT BY LEVEL <= CASE
                                            WHEN i < V_QUOTIENT THEN P_COMMIT_NUM
                                            WHEN V_REMAINDER = 0 AND i = V_QUOTIENT THEN P_COMMIT_NUM
                                            ELSE V_REMAINDER
                                        END
                )
        WHERE   1 = 1;

        V_COMMIT_CNT := V_COMMIT_CNT + SQL%ROWCOUNT;

        COMMIT;
        
    END LOOP;

    DBMS_OUTPUT.PUT_LINE(TO_CHAR(V_COMMIT_CNT) || '건이 저장되었습니다.');

EXCEPTION

    WHEN OTHERS THEN
        V_ERR_CD  := SQLCODE;
        V_ERR_MSG := SUBSTR(SQLERRM,1,1024);

        DBMS_OUTPUT.PUT_LINE('error code : '||V_ERR_CD||' - error msg : '||V_ERR_MSG);

END;
/
