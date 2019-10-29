SELECT P1.Name, COALESCE(P2.Gehalt-P1.Gehalt, 0)
FROM Personal P1
	LEFT OUTER JOIN Personal P2 ON P1.Vorgesetzt = P2.Persnr;
