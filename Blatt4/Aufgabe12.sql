SELECT Personal.Name, Personal.Aufgabe, Personal.Gehalt, Personal.Beurteilung,
	Artikel.Bezeichnung, MAX(Artikel.Preis)
FROM Personal
JOIN Auftrag ON Personal.Persnr = Auftrag.Persnr
JOIN Auftragsposten ON Auftrag.Auftrnr = Auftragsposten.AuftrNr
JOIN Artikel ON Auftragsposten.Artnr = Artikel.Anr;
