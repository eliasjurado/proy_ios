CREATE OR REPLACE EDITIONABLE TRIGGER  "USUARIO_BIU" 
    before insert or update  
    on "APP_USUARIO" 
    for each row 
begin 
    if :new.usu_cod is null then 
        select SEQ_USUARIO.nextval into :new.usu_cod from sys.dual; 
    end if; 
end usuario_biu; 

/
ALTER TRIGGER  "USUARIO_BIU" ENABLE
/


CREATE OR REPLACE EDITIONABLE TRIGGER  "APP_UBIGEO_BIU" 
    before insert or update  
    on app_ubigeo 
    for each row 
begin 
    if :new.ubi_cod is null then 
         select SEQ_UBIGEO.nextval into :new.ubi_cod from sys.dual;  
    end if; 
end app_ubigeo_biu; 

/
ALTER TRIGGER  "APP_UBIGEO_BIU" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "APP_CURSO_BIU" 
    before insert or update  
    on app_curso 
    for each row 
begin 
    if :new.CUR_COD is null then 
         select SEQ_CURSO.nextval into :new.CUR_COD from sys.dual; 
    end if; 
end app_curso_biu; 

/
ALTER TRIGGER  "APP_CURSO_BIU" ENABLE
/
