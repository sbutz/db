SELECT "Unterschiedliche Berurteilungen: " ||
	COUNT(DISTINCT Personal.Beurteilung) || ", unterschiedliche Aufgaben: " ||
	COUNT(DISTINCT Personal.Aufgabe)
FROM Personal;
