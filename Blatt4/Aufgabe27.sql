UPDATE Artikel
SET Preis = Preis + 20,
	Steuer = (Preis + 20) * 0.19,
	Netto = (Preis + 20) * 0.81
WHERE LOWER(Bezeichnung) LIKE "%rahmen%";
