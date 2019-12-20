ACCEPT rz CHAR PROMPT 'RZ-Kennung eingeben: ';

REVOKE ALL
ON Personal
FROM &rz;

REVOKE ALL
ON Kunde
FROM &rz;

REVOKE ALL
ON Auftrag
FROM &rz;

REVOKE ALL
ON Auftragsposten
FROM &rz;