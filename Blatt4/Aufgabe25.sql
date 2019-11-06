DELETE FROM Personal
WHERE Name LIKE "%Köster" OR Name LIKE "%Lambert";

-- Personal: ON DELETE SET NULL ==> Loeschen moeglich
-- Kunde: Implizit ON DELETE NO ACTION ==> Kein Loeschen moeglich
