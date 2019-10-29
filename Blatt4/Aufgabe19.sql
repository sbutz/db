SELECT P1.Name, P2.Gehalt - P1.Gehalt
FROM Personal P1
	JOIN Personal P2 ON P1.Vorgesetzt = P2.Persnr;

-- Nur neun da INNER JOIN, nur Zeilen anzeigt bei denen es eine Zeile in
-- der zweiten Tabelle gibt und bei den Vorgesetzten ist der Vorgesetzte null.
