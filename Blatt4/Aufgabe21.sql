SELECT K.Nr AS Kundennr, K.Name AS Kundenname,
	SUM(COALESCE(AP.Gesamtpreis, 0)) AS Umsatz
FROM Kunde K
	LEFT OUTER JOIN Auftrag A ON K.Nr = A.Kundnr
	LEFT OUTER JOIN Auftragsposten AP USING(AuftrNr)
GROUP BY Kundennr, Kundenname;
