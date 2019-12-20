ALTER TABLE Auftragsposten
ADD Einzelpreis NUMBER(7,2);

UPDATE Auftragsposten
SET Einzelpreis = Gesamtpreis/Anzahl;

-- Normalform nicht verringert da Gesamtpreis bereits unnoetig.
-- Kein Schlechtes Design, da Preis sich ggf. aendert, der Rechnungsbetrag
-- aber sich im nachhinein nicht erhoeht.