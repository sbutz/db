UPDATE Personal
SET Gehalt = Gehalt * 1.05
WHERE Beurteilung <= 3 OR Beurteilung IS NULL;
