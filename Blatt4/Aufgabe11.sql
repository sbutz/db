SELECT Personal.Persnr, Personal.Name, MAX(Personal.Gehalt)
FROM Personal
WHERE Personal.Vorgesetzt IS NOT NULL;
