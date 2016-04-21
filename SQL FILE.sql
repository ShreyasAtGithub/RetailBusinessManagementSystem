
--------------------------------------------------------
--  File created - Monday-November-30-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence LOG_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SMN1"."LOG_NO"  MINVALUE 10000 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 10216 CACHE 24 NOORDER  NOCYCLE  NOPARTITION
--------------------------------------------------------
--  DDL for Sequence PUR_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SMN1"."PUR_NO"  MINVALUE 100000 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100096 CACHE 24 NOORDER  NOCYCLE  NOPARTITION
--------------------------------------------------------
--  DDL for Sequence SUP_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SMN1"."SUP_NO"  MINVALUE 1010 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1034 CACHE 24 NOORDER  NOCYCLE  NOPARTITION
--------------------------------------------------------
--  DDL for Table CUSTOMERS
--------------------------------------------------------

  CREATE TABLE "SMN1"."CUSTOMERS" 
   (	"CID" CHAR(4), 
	"CNAME" VARCHAR2(15), 
	"TELEPHONE#" CHAR(12), 
	"VISITS_MADE" NUMBER(4,0), 
	"LAST_VISIT_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Table EMPLOYEES
--------------------------------------------------------

  CREATE TABLE "SMN1"."EMPLOYEES" 
   (	"EID" CHAR(3), 
	"ENAME" VARCHAR2(15), 
	"TELEPHONE#" CHAR(12)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Table LOGS
--------------------------------------------------------

  CREATE TABLE "SMN1"."LOGS" 
   (	"LOG#" NUMBER(5,0), 
	"WHO" VARCHAR2(12), 
	"OTIME" DATE, 
	"TABLE_NAME" VARCHAR2(20), 
	"OPERATION" VARCHAR2(6), 
	"KEY_VALUE" VARCHAR2(6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Table PRODUCTS
--------------------------------------------------------

  CREATE TABLE "SMN1"."PRODUCTS" 
   (	"PID" CHAR(4), 
	"PNAME" VARCHAR2(15), 
	"QOH" NUMBER(5,0), 
	"QOH_THRESHOLD" NUMBER(4,0), 
	"ORIGINAL_PRICE" NUMBER(6,2), 
	"DISCNT_RATE" NUMBER(3,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Table PURCHASES
--------------------------------------------------------

  CREATE TABLE "SMN1"."PURCHASES" 
   (	"PUR#" NUMBER(6,0), 
	"EID" CHAR(3), 
	"PID" CHAR(4), 
	"CID" CHAR(4), 
	"QTY" NUMBER(5,0), 
	"PTIME" DATE, 
	"TOTAL_PRICE" NUMBER(7,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"

--------------------------------------------------------
--  DDL for Table SUPPLIERS
--------------------------------------------------------

  CREATE TABLE "SMN1"."SUPPLIERS" 
   (	"SID" CHAR(2), 
	"SNAME" VARCHAR2(15), 
	"CITY" VARCHAR2(15), 
	"TELEPHONE#" CHAR(12)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Table SUPPLY
--------------------------------------------------------

  CREATE TABLE "SMN1"."SUPPLY" 
   (	"SUP#" NUMBER(4,0), 
	"PID" CHAR(4), 
	"SID" CHAR(2), 
	"SDATE" DATE, 
	"QUANTITY" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"
--------------------------------------------------------
--  Constraints for Table PRODUCTS
--------------------------------------------------------

  ALTER TABLE "SMN1"."PRODUCTS" ADD PRIMARY KEY ("PID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
--------------------------------------------------------
--  Constraints for Table SUPPLIERS
--------------------------------------------------------

  ALTER TABLE "SMN1"."SUPPLIERS" MODIFY ("SNAME" NOT NULL ENABLE)
  ALTER TABLE "SMN1"."SUPPLIERS" ADD PRIMARY KEY ("SID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
  ALTER TABLE "SMN1"."SUPPLIERS" ADD UNIQUE ("SNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
--------------------------------------------------------
--  Constraints for Table SUPPLY
--------------------------------------------------------

  ALTER TABLE "SMN1"."SUPPLY" ADD PRIMARY KEY ("SUP#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
--------------------------------------------------------
--  Constraints for Table PURCHASES
--------------------------------------------------------

  ALTER TABLE "SMN1"."PURCHASES" ADD PRIMARY KEY ("PUR#") DISABLE
--------------------------------------------------------
--  Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "SMN1"."EMPLOYEES" ADD PRIMARY KEY ("EID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
--------------------------------------------------------
--  Constraints for Table CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "SMN1"."CUSTOMERS" ADD PRIMARY KEY ("CID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
--------------------------------------------------------
--  Constraints for Table LOGS
--------------------------------------------------------

  ALTER TABLE "SMN1"."LOGS" MODIFY ("WHO" NOT NULL ENABLE)
  ALTER TABLE "SMN1"."LOGS" MODIFY ("OTIME" NOT NULL ENABLE)
  ALTER TABLE "SMN1"."LOGS" MODIFY ("TABLE_NAME" NOT NULL ENABLE)
  ALTER TABLE "SMN1"."LOGS" MODIFY ("OPERATION" NOT NULL ENABLE)
  ALTER TABLE "SMN1"."LOGS" ADD PRIMARY KEY ("LOG#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
--------------------------------------------------------
--  Ref Constraints for Table PURCHASES
--------------------------------------------------------

  ALTER TABLE "SMN1"."PURCHASES" ADD FOREIGN KEY ("EID")
	  REFERENCES "SMN1"."EMPLOYEES" ("EID") DISABLE
  ALTER TABLE "SMN1"."PURCHASES" ADD FOREIGN KEY ("PID")
	  REFERENCES "SMN1"."PRODUCTS" ("PID") ENABLE
  ALTER TABLE "SMN1"."PURCHASES" ADD FOREIGN KEY ("CID")
	  REFERENCES "SMN1"."CUSTOMERS" ("CID") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table SUPPLY
--------------------------------------------------------

  ALTER TABLE "SMN1"."SUPPLY" ADD FOREIGN KEY ("PID")
	  REFERENCES "SMN1"."PRODUCTS" ("PID") ENABLE
  ALTER TABLE "SMN1"."SUPPLY" ADD FOREIGN KEY ("SID")
	  REFERENCES "SMN1"."SUPPLIERS" ("SID") ENABLE
	  
	  
--------------------------------------------------------
--  DDL for Trigger LOG_PURCHASES_INSERT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SMN1"."LOG_PURCHASES_INSERT" 
  AFTER INSERT ON PURCHASES FOR EACH ROW 

 DECLARE 
 
 V_USERNAME VARCHAR2(20);

  BEGIN
  
      SELECT USER INTO V_USERNAME FROM USER_USERS;

      INSERT INTO LOGS VALUES
      (LOG_NO.NEXTVAL, 
      V_USERNAME, 
      SYSDATE, 
      'PURCHASES',
      'INSERT',
      :new.PUR#);

  END;

 ALTER TRIGGER "SMN1"."LOG_PURCHASES_INSERT" ENABLE

 --------------------------------------------------------
--  DDL for Trigger LOG_SUPPLY_INSERT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SMN1"."LOG_SUPPLY_INSERT" AFTER INSERT ON SUPPLY  FOR EACH ROW 

 DECLARE 
 
 V_USERNAME VARCHAR2(20);

  BEGIN
  
      SELECT USER INTO V_USERNAME FROM USER_USERS;

      INSERT INTO LOGS VALUES
      (LOG_NO.NEXTVAL, 
       V_USERNAME, 
       SYSDATE, 
       'SUPPLY',
       'INSERT',
       :new.SUP#);

  END;

   ALTER TRIGGER "SMN1"."LOG_SUPPLY_INSERT" ENABLE

 --------------------------------------------------------
--  DDL for Trigger LOG_UPDATE_QOH
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SMN1"."LOG_UPDATE_QOH" AFTER UPDATE OF QOH ON PRODUCTS 
 FOR EACH ROW 

 DECLARE
 V_USERNAME VARCHAR2(20);
    
    BEGIN
    
      IF(:new.QOH > 0) THEN
    
      SELECT USER INTO V_USERNAME FROM USER_USERS;
        
      INSERT INTO LOGS VALUES 
       (LOG_NO.NEXTVAL,  
        V_USERNAME,
        SYSDATE,
        'PRODUCTS',
        'UPDATE',
        :old.PID);
       
      END IF;  
  END;

  ALTER TRIGGER "SMN1"."LOG_UPDATE_QOH" ENABLE

--------------------------------------------------------
--  DDL for Trigger LOG_UPDATE_VISITS_MADE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SMN1"."LOG_UPDATE_VISITS_MADE" AFTER UPDATE OF VISITS_MADE ON CUSTOMERS 
 FOR EACH ROW 

 DECLARE
 V_USERNAME VARCHAR2(20);
    
    BEGIN
    
      IF(:new.VISITS_MADE > 0) THEN
    
      SELECT USER INTO V_USERNAME FROM USER_USERS;
        
      INSERT INTO LOGS VALUES 
       (LOG_NO.NEXTVAL,  
        V_USERNAME,
        SYSDATE,
        'CUSTOMERS',
        'UPDATE',
        :old.CID);
       
      END IF;  
  END;

  ALTER TRIGGER "SMN1"."LOG_UPDATE_VISITS_MADE" ENABLE

--------------------------------------------------------
--  DDL for Trigger UPDATE_CUSTOMER_VISIT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SMN1"."UPDATE_CUSTOMER_VISIT" 
 AFTER INSERT ON PURCHASES FOR EACH ROW 

 DECLARE 
 
 V_LAST_VISIT_DATE   CUSTOMERS.LAST_VISIT_DATE%TYPE;

  BEGIN
  
  --Update the customers last visit date if its a new date compared to last visit date
      SELECT LAST_VISIT_DATE INTO V_LAST_VISIT_DATE
      FROM CUSTOMERS WHERE CID = :new.cid;
      
       IF(TRUNC(V_LAST_VISIT_DATE) <> TRUNC(SYSDATE)) THEN
      
       UPDATE customers SET VISITS_MADE = (VISITS_MADE + 1)
       WHERE CID = :new.cid;
  
       UPDATE CUSTOMERS SET LAST_VISIT_DATE = SYSDATE
       WHERE CID = :new.cid;

       END IF;
  END;
  ALTER TRIGGER "SMN1"."UPDATE_CUSTOMER_VISIT" ENABLE

  
--------------------------------------------------------
--  DDL for Trigger UPDATE_QOH_AFTER_PURCHASE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SMN1"."UPDATE_QOH_AFTER_PURCHASE" 
 AFTER INSERT ON PURCHASES FOR EACH ROW 

  DECLARE
  V_OLD_QOH     PRODUCTS.QOH%TYPE;
  V_NEW_QOH     PRODUCTS.QOH%TYPE;
  V_PRODUCT     PRODUCTS.PNAME%TYPE;
  V_QOH_THR     PRODUCTS.QOH_THRESHOLD%TYPE;
  V_QTY_NEEDED  PRODUCTS.QOH%TYPE;
  
  BEGIN
      
		--Update qoh AFTER PURCHASE HAS BEEN MADE
		-- Return the qty needed to raise the qty of product above threshold level
        SELECT QOH INTO V_OLD_QOH FROM PRODUCTS 
        WHERE PID = :NEW.PID;
        
        SELECT QOH_THRESHOLD INTO V_QOH_THR FROM PRODUCTS
        WHERE PID = :NEW.PID;
        
        SELECT PNAME INTO V_PRODUCT FROM PRODUCTS
        WHERE PID = :NEW.PID;
        
        UPDATE PRODUCTS SET QOH = (V_OLD_QOH - :NEW.QTY)
        WHERE PID = :NEW.PID;
 
        SELECT QOH INTO V_NEW_QOH FROM PRODUCTS
        WHERE PID = :NEW.PID;
        
        SELECT ((V_QOH_THR - V_NEW_QOH) + 11) INTO V_QTY_NEEDED 
        FROM PRODUCTS WHERE PID = :NEW.PID;
        
        
 END;
ALTER TRIGGER "SMN1"."UPDATE_QOH_AFTER_PURCHASE" ENABLE


--------------------------------------------------------
--  DDL for Trigger UPDATE_QOH_AFTER_SUPPLY
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SMN1"."UPDATE_QOH_AFTER_SUPPLY" 
  AFTER INSERT ON SUPPLY FOR EACH ROW 

  BEGIN
    --Update QOh after supply has been made
    UPDATE PRODUCTS SET QOH = (QOH + :NEW.QUANTITY) 
    WHERE PID = :NEW.PID;
  
  END;
ALTER TRIGGER "SMN1"."UPDATE_QOH_AFTER_SUPPLY" ENABLE


--------------------------------------------------------
--  DDL for Procedure ADD_PRODUCT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SMN1"."ADD_PRODUCT" 
( PID_IN  IN  VARCHAR2,
  PNAME   IN  VARCHAR2,
  QOH     IN  NUMBER,
  QOHTHR  IN  NUMBER,
  PRICE   IN  NUMBER,
  DISCNT  IN  NUMBER,
  RESULT2 OUT VARCHAR2)
  
AS 

V_PID_COUNT    NUMBER;

BEGIN

      SELECT COUNT(*) INTO V_PID_COUNT
      FROM PRODUCTS
      WHERE PID = PID_IN;
      
      -- If the pid already exists, then return failure message
      -- otherwise add a product to the products table
      
      IF(V_PID_COUNT > 0) THEN
      RESULT2:= 'FAILURE';
      
      ELSE
      RESULT2 := 'SUCCESS';
      
      INSERT INTO PRODUCTS VALUES
      (PID_IN, PNAME, QOH, QOHTHR, PRICE, DISCNT);
       END IF;
    
END ADD_PRODUCT;


--------------------------------------------------------
--  DDL for Procedure ADD_PURCHASE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SMN1"."ADD_PURCHASE" 
    ( EID_IN   IN   VARCHAR2,
      PID_IN   IN   VARCHAR2,
      CID_IN   IN   VARCHAR2,
      PUR_QTY  IN   NUMBER,
      RESULT1  OUT  VARCHAR2,
      RESULT2  OUT  VARCHAR2,
      RESULT3  OUT  NUMBER,
      RESULT4  OUT  VARCHAR2)
AS

V_TOTAL_PRICE  PURCHASES.TOTAL_PRICE%TYPE;
V_CUR_QOH      PRODUCTS.QOH%TYPE;
V_NEW_QOH      PRODUCTS.QOH%TYPE;
V_QOH_THR      PRODUCTS.QOH_THRESHOLD%TYPE;
V_QTY_NEEDED   PRODUCTS.QOH%TYPE;
V_PID          PRODUCTS.PID%TYPE;

  BEGIN
      
    IF((EID_IN IS NOT NULL)  AND (PID_IN IS NOT NULL)
       AND(CID_IN IS NOT NULL)) THEN
    
        RESULT2 :='ABOVE';
        RESULT4 := PID_IN;
      
        SELECT QOH INTO V_CUR_QOH FROM PRODUCTS
        WHERE PID = PID_IN;
        
        
        -- If the requested QTY is more than the OQH, then return Error message
        IF (PUR_QTY <= V_CUR_QOH) THEN
        SELECT (ORIGINAL_PRICE * (1-DISCNT_RATE) * PUR_QTY) INTO V_TOTAL_PRICE FROM PRODUCTS
        WHERE PID = PID_IN;  
      
        INSERT INTO PURCHASES VALUES 
        (PUR_NO.NEXTVAL, EID_IN, PID_IN,
         CID_IN, PUR_QTY, SYSDATE, V_TOTAL_PRICE); 
         
         RESULT1 := 'SUCCESS';
         
         SELECT QOH INTO V_NEW_QOH FROM 
         products WHERE PID = PID_IN;
         DBMS_OUTPUT.PUT_LINE('NEW QOH AFTER PURCHASE :'||V_NEW_QOH);
        
         SELECT QOH_THRESHOLD INTO V_QOH_THR
         FROM PRODUCTS WHERE PID = PID_IN;
         
         
         -- After the successful purchase, if QOH goes below threshold level, then 
         -- Return the QTY needed to place the supply order for the product
         -- so that the producy QOH is above the threshold level ie (10+M+QOH)
         IF( V_NEW_QOH < V_QOH_THR) THEN
         RESULT2 := 'BELOW';
         END IF;
         
         IF(V_NEW_QOH < V_QOH_THR) THEN
         SELECT ((V_QOH_THR - V_NEW_QOH) +11) INTO V_QTY_NEEDED FROM DUAL;
         dbms_output.put_line('QTY NEEDED '||V_QTY_NEEDED);
         RESULT3:= V_QTY_NEEDED;
         ELSE 
         RESULT3 := 0;
         END IF;
           
        -- If the ordered QTY is more than the QOH, then Purchase will fail 
        ELSE
        dbms_output.put_line('THE ORDERED QTY '||PUR_QTY|| ' IS MORE THAN THE QOH');
        RESULT1 := 'FAILURE2';
        END IF;
        
    ELSE
    RESULT1 :='FAILURE1';
        
    END IF;
 
 END ADD_PURCHASE;

 
--------------------------------------------------------
--  DDL for Procedure CHECK_SUPPLY_ORDER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SMN1"."CHECK_SUPPLY_ORDER" 
    (PID_IN   IN  VARCHAR2,   
     SID_IN   IN  VARCHAR2,
     RESULT1  OUT VARCHAR2,
     RESULT2  OUT VARCHAR2)

AS 

V_PID_COUNT   NUMBER(2);
V_SID_COUNT   NUMBER(2);

 BEGIN

        RESULT1 := 'FAILURE';
        RESULT2 := 'FAILURE'; 
  
        SELECT COUNT(*) INTO V_PID_COUNT
        FROM PRODUCTS WHERE PID = PID_IN;
    
        SELECT COUNT(*) INTO V_SID_COUNT
        FROM SUPPLY WHERE SID = SID_IN;
     
        IF( V_PID_COUNT > 0) THEN
        RESULT1 := 'SUCCESS';
        END IF;
     
        IF( V_SID_COUNT > 0) THEN
        RESULT2 := 'SUCCESS';
        END IF;
     
 END CHECK_SUPPLY_ORDER;

--------------------------------------------------------
--  DDL for Procedure DISPLAY_TUPLES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SMN1"."DISPLAY_TUPLES" 
( PRODUCT_NO   IN    varchar2,
  TABLE_DATA   OUT   SYS_REFCURSOR)

AS 

BEGIN

      IF( PRODUCT_NO = '1') THEN
           OPEN  TABLE_DATA FOR
              SELECT * FROM EMPLOYEES;
      
      ELSIF( PRODUCT_NO = '2') THEN
          OPEN TABLE_DATA FOR
              SELECT * FROM CUSTOMERS;
      
      ELSIF( PRODUCT_NO = '3') THEN
          OPEN TABLE_DATA FOR
              SELECT * FROM PRODUCTS;
      
      ELSIF( PRODUCT_NO = '4') THEN
          OPEN TABLE_DATA FOR
              SELECT * FROM PURCHASES
              ORDER BY pur# asc;
      
      ELSIF( PRODUCT_NO = '5') THEN
          OPEN TABLE_DATA FOR
              SELECT * FROM SUPPLIERS;
      
      ELSIF( PRODUCT_NO = '6') THEN
          OPEN TABLE_DATA FOR
              SELECT * FROM SUPPLY
              order by SUP# ASC;
      
      END IF;
      
END DISPLAY_TUPLES;


--------------------------------------------------------
--  DDL for Procedure MONTHLY_SALE_REPORT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SMN1"."MONTHLY_SALE_REPORT" 
     ( PRODUCT_ID     IN    VARCHAR2,
       RESULT2   OUT   VARCHAR2,
       SALE_REPORT    OUT   SYS_REFCURSOR)

AS 

V_PID_COUNT    NUMBER;

BEGIN
  
      SELECT COUNT(*) INTO V_PID_COUNT FROM PRODUCTS
      WHERE PID = PRODUCT_ID;
      
      
      --If the PID is exists, then return monthly sale info
      --Otherwise return failure message
      IF(V_PID_COUNT >0) THEN
      
        RESULT2 :='YES';
  
        OPEN SALE_REPORT FOR
        
        SELECT PR.PNAME AS PROD_NAME,
        P.PID AS PROD_ID, 
        (to_char(to_date( p.ptime, 'dd-mon-yyyy'), 'Mon')) AS PURCHASE_MONTH, 
        EXTRACT (YEAR FROM P.PTIME) AS PURCHASE_YEAR , 
        SUM(P.QTY) AS TOTAL_QTY, 
        SUM(P.TOTAL_PRICE) as TOTAL_PRICE, 
        (SUM(P.TOTAL_PRICE)/SUM(P.QTY)) as AVG_SALE_PRICE
        FROM PRODUCTS PR JOIN PURCHASES P ON PR.PID = P.PID
        WHERE P.PID = PRODUCT_ID
        GROUP BY PR.PNAME,P.PID,(to_char(to_date( p.ptime, 'dd-mon-yyyy'), 'Mon')),EXTRACT (YEAR FROM P.PTIME)
        ORDER BY (to_char(to_date( p.ptime, 'dd-mon-yyyy'), 'Mon')) ASC;
        
        ELSE
        RESULT2 := 'NO';
        
        OPEN SALE_REPORT FOR
        
        SELECT '' AS PROD_NAME,
        '' AS PROD_ID, 
        '' AS PURCHASE_MONTH, 
        '' AS PURCHASE_YEAR, 
        '' AS TOTAL_QTY, 
        '' as TOTAL_PRICE, 
        '' as AVG_SALE_PRICE
        FROM DUAL;
        
        END IF;

END MONTHLY_SALE_REPORT;


--------------------------------------------------------
--  DDL for Procedure RECORD_PROD_SUPPLY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SMN1"."RECORD_PROD_SUPPLY" 
  ( PID_IN   IN  VARCHAR2,
    QTY_IN   IN  NUMBER,
    RESULT1  OUT VARCHAR2,
    RESULT2  OUT NUMBER)

AS 

V_PID_COUNT    NUMBER;
V_SID          VARCHAR2(10);
V_SID2         VARCHAR2(10);
V_QOH          NUMBER;

BEGIN
RESULT1 :='FAILURE';

-- Select appropriate supplier for the product
-- If more than one supplier exists, then chose smallest supplier id 

      SELECT COUNT(*) INTO V_PID_COUNT 
      FROM SUPPLY WHERE PID = PID_IN;
      
      IF(V_PID_COUNT =1) THEN
      SELECT SID INTO V_SID
      FROM SUPPLY WHERE PID = PID_IN;
      
      INSERT INTO SUPPLY VALUES
      (SUP_NO.NEXTVAL, PID_IN, V_SID, SYSDATE, QTY_IN);
      
      RESULT1 :='SUCCESS';
      
      ELSIF( V_PID_COUNT > 1) THEN
      SELECT SID INTO V_SID2 FROM (SELECT SID FROM SUPPLY WHERE PID = PID_IN ORDER BY SID ASC)
      WHERE ROWNUM = 1;
      
      INSERT INTO SUPPLY VALUES
      (SUP_NO.NEXTVAL, PID_IN, V_SID2, SYSDATE, QTY_IN);
      
      RESULT1 :='SUCCESS';
      
      select qoh INTO V_qOH from products where pid = pid_in;
      RESULT2 := V_QOH;
       DBMS_OUTPUT.PUT_LINE('NEW QOH AFTER PURCHASE :'||V_QOH);
      
      END IF;
      
END RECORD_PROD_SUPPLY;
