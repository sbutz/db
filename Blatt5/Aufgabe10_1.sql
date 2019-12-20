ACCEPT rz CHAR PROMPT 'RZ-Kennung eingeben: ';

GRANT SELECT
ON Personal
TO &rz;

GRANT SELECT
ON Kunde
TO &rz;

GRANT ALL
ON Auftrag
TO &rz;

GRANT SELECT, INSERT, UPDATE(Anzahl, Gesamtpreis)
ON Auftragsposten
TO &rz;