CREATE TABLE  "APP_CURSO" 
   (	"CUR_COD" NUMBER NOT NULL ENABLE, 
	"CUR_DESC" VARCHAR2(4000), 
	"CUR_IMG" CLOB, 
	"CUR_NIV" VARCHAR2(4000), 
	"CUR_TIPO" VARCHAR2(4000), 
	 CONSTRAINT "APP_CURSO_PK" PRIMARY KEY ("CUR_COD")
  USING INDEX  ENABLE
   )
/

CREATE TABLE  "APP_DIRECCION" 
   (	"DIR_COD" NUMBER NOT NULL ENABLE, 
	"DIR_DESC" VARCHAR2(4000), 
	"UBI_COD" NUMBER, 
	 CONSTRAINT "APP_DIRECCION_ID_PK" PRIMARY KEY ("DIR_COD")
  USING INDEX  ENABLE
   )
/
ALTER TABLE  "APP_DIRECCION" ADD CONSTRAINT "APP_DIRECCION_UBI_COD_FK" FOREIGN KEY ("UBI_COD")
	  REFERENCES  "APP_UBIGEO" ("UBI_COD") ON DELETE CASCADE ENABLE
/

CREATE INDEX  "APP_DIRECCION_I1" ON  "APP_DIRECCION" ("UBI_COD")
/

CREATE TABLE  "APP_UBIGEO" 
   (	"UBI_COD" NUMBER NOT NULL ENABLE, 
	"UBI_DEPA" VARCHAR2(4000), 
	"UBI_PROV" VARCHAR2(4000), 
	"UBI_DIST" VARCHAR2(4000), 
	"UBI_DESC" VARCHAR2(4000), 
	 CONSTRAINT "APP_UBIGEO_ID_PK" PRIMARY KEY ("UBI_COD")
  USING INDEX  ENABLE
   )
/

CREATE TABLE  "APP_USUARIO" 
   (	"USU_COD" NUMBER NOT NULL ENABLE, 
	"USU_NOM" VARCHAR2(100), 
	"USU_APE" VARCHAR2(100), 
	"USU_DNI" VARCHAR2(8), 
	"USU_FNAC" DATE, 
	"USU_TIPO" VARCHAR2(30), 
	"USU_EMAIL" VARCHAR2(255), 
	"USU_PWD" VARCHAR2(20), 
	"USU_IMG" VARCHAR2(4000), 
	"USU_ESTADO" VARCHAR2(20), 
	 CONSTRAINT "USUARIO_COD_PK" PRIMARY KEY ("USU_COD")
  USING INDEX  ENABLE
   )
/