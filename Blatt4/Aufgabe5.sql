-- Meistverdiener
SELECT Personal.Name, MAX(Personal.Gehalt), Personal.Aufgabe
FROM Personal;
.print

-- Geringstverdiener
SELECT Personal.Name, MIN(Personal.Gehalt), Personal.Aufgabe
FROM Personal;
