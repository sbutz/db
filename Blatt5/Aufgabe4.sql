ALTER TABLE Personal
ADD CONSTRAINT CHK_Personal_GebDatum
    CHECK (GebDatum >= DATE '1940-01-01' AND GebDatum <= DATE '1998-12-31')
ADD CONSTRAINT CHK_Personal_Stand
    CHECK (Stand IN ('led', 'verh', 'ges'))
ADD CONSTRAINT CHK_Personal_Gehalt
    CHECK (Gehalt >= 500 AND Gehalt <= 6000)
ADD CONSTRAINT CHK_Personal_Beurteilung
    CHECK (Beurteilung IS NULL OR Beurteilung >= 1 AND Beurteilung <= 10);