CREATE VIEW VAuftragsposten AS
SELECT A.*, (A.Gesamtpreis/A.Anzahl) AS Einzelpreis
FROM Auftragsposten A;