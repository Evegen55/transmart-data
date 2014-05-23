--
-- Type: TABLE; Owner: BIOMART; Name: BIO_CLINICAL_TRIAL
--
 CREATE TABLE "BIOMART"."BIO_CLINICAL_TRIAL" 
  (	"TRIAL_NUMBER" NVARCHAR2(510), 
"STUDY_OWNER" NVARCHAR2(510), 
"STUDY_PHASE" VARCHAR2(100 BYTE), 
"BLINDING_PROCEDURE" NVARCHAR2(1000), 
"STUDYTYPE" NVARCHAR2(510), 
"DURATION_OF_STUDY_WEEKS" NUMBER(10,0), 
"NUMBER_OF_PATIENTS" NUMBER(10,0), 
"NUMBER_OF_SITES" NUMBER(10,0), 
"ROUTE_OF_ADMINISTRATION" NVARCHAR2(510), 
"DOSING_REGIMEN" VARCHAR2(3500 BYTE), 
"GROUP_ASSIGNMENT" NVARCHAR2(510), 
"TYPE_OF_CONTROL" NVARCHAR2(510), 
"COMPLETION_DATE" DATE, 
"PRIMARY_END_POINTS" VARCHAR2(2000 BYTE), 
"SECONDARY_END_POINTS" VARCHAR2(3500 BYTE), 
"INCLUSION_CRITERIA" NCLOB, 
"EXCLUSION_CRITERIA" NCLOB, 
"SUBJECTS" VARCHAR2(2000 BYTE), 
"GENDER_RESTRICTION_MFB" NVARCHAR2(510), 
"MIN_AGE" NUMBER(10,0), 
"MAX_AGE" NUMBER(10,0), 
"SECONDARY_IDS" NVARCHAR2(510), 
"BIO_EXPERIMENT_ID" NUMBER(18,0) NOT NULL ENABLE, 
"DEVELOPMENT_PARTNER" VARCHAR2(100 BYTE), 
"GEO_PLATFORM" VARCHAR2(30 BYTE), 
"MAIN_FINDINGS" VARCHAR2(2000 BYTE), 
"PLATFORM_NAME" VARCHAR2(200 BYTE), 
"SEARCH_AREA" VARCHAR2(100 BYTE), 
 CONSTRAINT "CLINICALTRIALDIM_PK" PRIMARY KEY ("BIO_EXPERIMENT_ID")
 USING INDEX
 TABLESPACE "INDX"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "BIOMART" 
LOB ("INCLUSION_CRITERIA") STORE AS BASICFILE (
 TABLESPACE "BIOMART" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
 NOCACHE LOGGING ) 
LOB ("EXCLUSION_CRITERIA") STORE AS BASICFILE (
 TABLESPACE "BIOMART" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
 NOCACHE LOGGING ) ;
--
-- Type: REF_CONSTRAINT; Owner: BIOMART; Name: BIO_CLINICAL_TRIAL_BIO_EXPERIM
--
ALTER TABLE "BIOMART"."BIO_CLINICAL_TRIAL" ADD CONSTRAINT "BIO_CLINICAL_TRIAL_BIO_EXPERIM" FOREIGN KEY ("BIO_EXPERIMENT_ID")
 REFERENCES "BIOMART"."BIO_EXPERIMENT" ("BIO_EXPERIMENT_ID") ENABLE;
