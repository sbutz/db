-- Teilaufgabe a
SELECT Kunde.Name
FROM Auftrag
JOIN Kunde ON Auftrag.Kundnr = Kunde.Nr
WHERE Auftrag.AuftrNr = 1;
.print

-- Teilaufgabe b
SELECT Personal.Name
FROM Auftrag
JOIN Personal ON Auftrag.Persnr = Personal.Persnr
WHERE Auftrag.AuftrNr = 1;
.print

-- Teilaufgabe c
SELECT Artikel.Bezeichnung
FROM Auftrag
JOIN Auftragsposten ON Auftrag.AuftrNr = Auftragsposten.AuftrNr
JOIN Artikel ON Auftragsposten.Artnr = Artikel.Anr
WHERE Auftrag.Kundnr IN (SELECT Kundnr FROM Auftrag WHERE Auftrag.AuftrNr = 1);
