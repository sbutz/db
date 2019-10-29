SELECT L.Name
FROM Lieferant L
WHERE NOT EXISTS(
	SELECT Anr
	FROM Lieferung
	WHERE Liefnr = 3
	EXCEPT
	SELECT Anr
	FROM Lieferung
	WHERE Liefnr = L.Nr
);
