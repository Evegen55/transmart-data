--
-- Type: TABLE; Owner: BIOMART; Name: BIO_ANALYSIS_COHORT_XREF
--
 CREATE TABLE "BIOMART"."BIO_ANALYSIS_COHORT_XREF" 
  (	"STUDY_ID" VARCHAR2(255 BYTE), 
"COHORT_ID" VARCHAR2(255 BYTE), 
"ANALYSIS_CD" VARCHAR2(255 BYTE), 
"BIO_ASSAY_ANALYSIS_ID" NUMBER
  ) SEGMENT CREATION DEFERRED
 TABLESPACE "TRANSMART" ;

--
-- Type: INDEX; Owner: BIOMART; Name: BACX_IDX1
--
CREATE INDEX "BIOMART"."BACX_IDX1" ON "BIOMART"."BIO_ANALYSIS_COHORT_XREF" ("BIO_ASSAY_ANALYSIS_ID")
TABLESPACE "TRANSMART" ;

