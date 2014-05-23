--
-- Type: TABLE; Owner: BIOMART; Name: PROJECT_INFO
--
 CREATE TABLE "BIOMART"."PROJECT_INFO" 
  (	"FILE_ID" NUMBER(5,0) NOT NULL ENABLE, 
"ID" VARCHAR2(100 BYTE), 
"NAME" VARCHAR2(100 BYTE), 
"FILE_NAME" VARCHAR2(100 BYTE), 
"ACTIVEDATANAME" VARCHAR2(400 BYTE), 
"PROJECT_ACCESSION" VARCHAR2(100 BYTE), 
"PROJECT_CATEGORY" CLOB, 
"PROJECT_CONTACTADDRESS" VARCHAR2(4000 BYTE), 
"PROJECT_CONTACTCOMPANY" VARCHAR2(400 BYTE), 
"PROJECT_CONTACTDEPARTMENT" VARCHAR2(400 BYTE), 
"PROJECT_CONTACTEMAIL" VARCHAR2(400 BYTE), 
"PROJECT_CONTACTLABORATORY" VARCHAR2(400 BYTE), 
"PROJECT_CONTACTNAME" VARCHAR2(400 BYTE), 
"PROJECT_CONTACTPHONE" VARCHAR2(100 BYTE), 
"PROJECT_CONTACTWEBLINK" VARCHAR2(1000 BYTE), 
"PROJECT_CONTRIBUTORS" VARCHAR2(4000 BYTE), 
"PROJECT_DESCRIPTION" CLOB, 
"PROJECT_DESIGN" CLOB, 
"PROJECT_ID" VARCHAR2(100 BYTE), 
"PROJECT_KEYWORDS" VARCHAR2(1000 BYTE), 
"PROJECT_ORGANISM" VARCHAR2(400 BYTE), 
"PROJECT_TISSUE" VARCHAR2(400 BYTE), 
"PROJECT_COMPOUND" VARCHAR2(400 BYTE), 
"PROJECT_PLATFORM" VARCHAR2(400 BYTE), 
"PROJECT_PLATFORMDESCRIPTION" VARCHAR2(4000 BYTE), 
"PROJECT_PLATFORMORGANISM" VARCHAR2(400 BYTE), 
"PROJECT_PLATFORMPROVIDER" VARCHAR2(400 BYTE), 
"PROJECT_PLATFORMTECHNOLOGY" VARCHAR2(400 BYTE), 
"PROJECT_PLATFORMTYPE" VARCHAR2(400 BYTE), 
"PROJECT_PUBMED" VARCHAR2(400 BYTE), 
"PROJECT_STUDYTYPE" VARCHAR2(1000 BYTE), 
"PROJECT_SUPPLEMENTARYFILE" VARCHAR2(400 BYTE), 
"PROJECT_TITLE" VARCHAR2(500 BYTE), 
"PROJECT_WEBLINK" VARCHAR2(1000 BYTE), 
"PROJECT_EXTRACTEDFROMCELFILES" VARCHAR2(1000 BYTE), 
"PROJECT_CONTACTORGANIZATION" VARCHAR2(1000 BYTE), 
"PROJECT_CONTACTFAX" VARCHAR2(100 BYTE), 
"PROJECT_OUTPUTFILE" VARCHAR2(500 BYTE), 
"PROJECT_DATASOURCE" VARCHAR2(100 BYTE), 
"PROJECT_EDITORS" VARCHAR2(100 BYTE), 
"PROJECT_ISPRIVATE" VARCHAR2(100 BYTE), 
"PROJECT_PUBLISHDATE" VARCHAR2(100 BYTE), 
"ENTRYDT" DATE, 
 PRIMARY KEY ("FILE_ID")
 USING INDEX
 TABLESPACE "BIOMART"  ENABLE, 
 UNIQUE ("ID")
 USING INDEX
 TABLESPACE "BIOMART"  ENABLE, 
 UNIQUE ("NAME")
 USING INDEX
 TABLESPACE "BIOMART"  ENABLE, 
 UNIQUE ("FILE_NAME")
 USING INDEX
 TABLESPACE "BIOMART"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "BIOMART" 
LOB ("PROJECT_CATEGORY") STORE AS BASICFILE (
 TABLESPACE "BIOMART" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
 NOCACHE NOLOGGING ) 
LOB ("PROJECT_DESCRIPTION") STORE AS BASICFILE (
 TABLESPACE "BIOMART" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
 NOCACHE NOLOGGING ) 
LOB ("PROJECT_DESIGN") STORE AS BASICFILE (
 TABLESPACE "BIOMART" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
 NOCACHE NOLOGGING ) ;
