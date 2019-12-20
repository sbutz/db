CREATE TRIGGER TRIGGER_Artikel_Steuerrechner
BEFORE INSERT OR UPDATE ON Artikel
REFERENCING NEW AS neu
FOR EACH ROW
BEGIN
    :neu.Steuer := :neu.NETTO * 0.19;
    :neu.Preis := :neu.NETTO * 1.19;
END;