DROP TABLE Rechnung;

CREATE TABLE Rechnung (
    Rechnr          INTEGER         CONSTRAINT PK_Rechnung PRIMARY KEY,
    Datum           DATE,
    Kundnr          INTEGER         CONSTRAINT FK_Rechung_Kundnr REFERENCES Kunde,
    Gesamtbetrag    NUMERIC(8,2),
    Bezahldatum     DATE,
    Mahnung         CHAR(1)         CHECK (Mahnung IN ('N', 'J')),
    CONSTRAINT FK_Rechnung_Rechnr FOREIGN KEY (Rechnr) REFERENCES Auftrag (Auftrnr)
);

INSERT INTO Rechnung
SELECT A.Auftrnr, A.Datum, A.Kundnr, SUM(AP.Gesamtpreis), A.Datum + 14, 'N'
    FROM Auftrag A
        JOIN Auftragsposten AP ON A.Auftrnr = AP.Auftrnr
    GROUP BY A.Auftrnr, A.Datum, A.Kundnr;