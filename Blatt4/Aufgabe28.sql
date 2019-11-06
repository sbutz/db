UPDATE Personal
SET Gehalt = Gehalt * 1.02
WHERE Persnr IN (
	SELECT P.Persnr
	FROM Personal P
	WHERE P.Aufgabe LIKE "Vertreter"
		AND (
			SELECT SUM(AF.Gesamtpreis)
			FROM Auftragsposten AF
				JOIN Auftrag A ON AF.AuftrNr = A.AuftrNr
			WHERE A.Persnr = P.Persnr
		) > 2000
	)
