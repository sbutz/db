CREATE VIEW VStruktur AS
SELECT A1.Bezeichnung AS Artikelname, A2.Bezeichnung AS Teilename, T.Anzahl, T.Einheit
FROM Teilestruktur T
    JOIN Artikel A1 ON T.Artnr = A1.Anr
    JOIN Artikel A2 ON T.Einzelteilnr = A2.Anr;