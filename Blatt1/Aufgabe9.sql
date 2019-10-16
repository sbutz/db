-- Teilaufgabe a
SELECT Sorte, Hersteller FROM Bierdepot WHERE Typ = '6er Pack';

-- Teilaufgabe b
SELECT Sorte FROM Bierdepot WHERE Hersteller = 'Loewenbraeu';

-- Teilaufgabe c
DELETE FROM Bierdepot WHERE Hersteller = 'Kneitinger';

-- Teilaufgabe d
UPDATE Bierdepot SET Anzahl = Anzahl - 10
WHERE Typ = 'Pils' AND Hersteller = 'Loewenbraeu';

-- Teilaufgabe e
INSERT INTO Bierdepot (Id, Sorte, Hersteller, Typ, Anzahl)
VALUES (10, 'Dunkles Weissbier', 'Schneider', 'Kasten', 6);
