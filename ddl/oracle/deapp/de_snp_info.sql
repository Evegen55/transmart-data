--
-- Type: TABLE; Owner: DEAPP; Name: DE_SNP_INFO
--
 CREATE TABLE "DEAPP"."DE_SNP_INFO" 
  (	"SNP_INFO_ID" NUMBER(22,0) NOT NULL ENABLE, 
"NAME" VARCHAR2(255 BYTE), 
"CHROM" VARCHAR2(16 BYTE), 
"CHROM_POS" NUMBER, 
 PRIMARY KEY ("SNP_INFO_ID")
 USING INDEX
 TABLESPACE "DEAPP"  ENABLE, 
 CONSTRAINT "U_SNP_INFO_NAME" UNIQUE ("NAME")
 USING INDEX
 TABLESPACE "DEAPP"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "DEAPP" ;
--
-- Type: INDEX; Owner: DEAPP; Name: U_SNP_CHROM
--
CREATE INDEX "DEAPP"."U_SNP_CHROM" ON "DEAPP"."DE_SNP_INFO" ("CHROM")
TABLESPACE "DEAPP" ;
--
-- Type: TRIGGER; Owner: DEAPP; Name: TRG_DE_SNP_INFO_ID
--
  CREATE OR REPLACE TRIGGER "DEAPP"."TRG_DE_SNP_INFO_ID" 
before insert on DE_SNP_INFO
for each row
begin
   if inserting then
      if :NEW.SNP_INFO_ID is null then
         select SEQ_DATA_ID.nextval into :NEW.SNP_INFO_ID from dual;
      end if;
  end if;
end;

/
ALTER TRIGGER "DEAPP"."TRG_DE_SNP_INFO_ID" ENABLE;
