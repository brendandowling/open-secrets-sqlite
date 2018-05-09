select 
	distinct l.year, count(*) 
from
	lobbying l,
	issues i,
	bills b
where
	l.uniqid = i.uniqid AND
	(
		UPPER(i.specificissue) LIKE '%SOFTWARE PATENT%' OR
		(
			i.si_id = b.si_id AND 
			b.bill_name = 'S.1390' AND
			b.congno = 115
		)
	)
	 
group by
	l.year
--order by
--	l.year
;


