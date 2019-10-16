SELECT Personal.Name, Personal.Aufgabe, Personal.Gehalt, Personal.Beurteilung
FROM Personal
JOIN Auftrag ON Personal.Persnr = Auftrag.Persnr
WHERE Auftrag.AuftrNr = (
	-- Teuerster Auftrag
	-- ANFANG
	SELECT Auftragsposten.AuftrNr
	FROM Artikel
	JOIN Auftragsposten ON Artikel.Anr = Auftragsposten.Artnr
	ORDER BY Artikel.Preis DESC
	LIMIT 1
	-- ENDE
)
