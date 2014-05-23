--
-- Type: TABLE; Owner: SEARCHAPP; Name: SEARCH_AUTH_USER
--
 CREATE TABLE "SEARCHAPP"."SEARCH_AUTH_USER" 
  (	"ID" NUMBER(19,0) NOT NULL ENABLE, 
"EMAIL" VARCHAR2(255 CHAR), 
"EMAIL_SHOW" NUMBER(1,0), 
"PASSWD" VARCHAR2(255 CHAR), 
"USER_REAL_NAME" VARCHAR2(255 CHAR), 
"USERNAME" VARCHAR2(255 CHAR), 
"FEDERATED_ID" VARCHAR2(255 CHAR), 
 PRIMARY KEY ("ID")
 USING INDEX
 TABLESPACE "BIOMART"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "BIOMART" ;
--
-- Type: REF_CONSTRAINT; Owner: SEARCHAPP; Name: SH_AUTH_USER_ID_FK
--
ALTER TABLE "SEARCHAPP"."SEARCH_AUTH_USER" ADD CONSTRAINT "SH_AUTH_USER_ID_FK" FOREIGN KEY ("ID")
 REFERENCES "SEARCHAPP"."SEARCH_AUTH_PRINCIPAL" ("ID") ENABLE;
