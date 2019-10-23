SELECT Auftrag.AuftrNr, Auftrag.Datum, Kunde.Name AS Kundname,
	Personal.Name AS Persname
FROM Auftrag
	JOIN Kunde ON Auftrag.Kundnr = Kunde.Nr
	JOIN Personal USING (Persnr);
