SELECT DISTINCT Personal.Persnr, Personal.Name, Personal.GebDatum,
	Personal.Gehalt
FROM Auftrag
JOIN Personal ON Auftrag.Persnr = Personal.Persnr;
