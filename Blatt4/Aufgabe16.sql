SELECT T.Artnr, A.Bezeichnung, COUNT(*)
FROM Teilestruktur T
	JOIN Artikel A ON T.Artnr = A.Anr
GROUP BY T.Artnr, A.Bezeichnung;
HAVING COUNT(*) > 3;
