SELECT *
FROM (
	SELECT P.Name, P.Gehalt, RANK () OVER ( ORDER BY P.Gehalt DESC) ranking
	FROM Personal P
)
WHERE ranking <= 3;
