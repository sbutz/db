CREATE SEQUENCE SEQ_Personal_Persnr
START WITH 101 INCREMENT BY 1;

CREATE TRIGGER TRIGGER_Personal_Persnr
BEFORE INSERT ON Personal
REFERENCING NEW as neu
FOR EACH ROW
BEGIN
    :neu.Persnr := SEQ_Personal_Persnr.NEXTVAL;
END;