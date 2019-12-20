CREATE VIEW VPersonal AS
SELECT *
FROM Personal
WHERE GebDatum >= DATE '1940-01-01' AND GebDatum <= DATE '1998-12-31' AND
    Stand IN ('led', 'verh', 'ges') AND Gehalt >= 500 AND Gehalt <= 6000 AND
    Beurteilung IS NULL OR (Beurteilung >= 1 AND Beurteilung <= 10)
WITH CHECK OPTION;