select 
	distinct l.client, l.year, count(distinct i.si_id)
from
	lobbying l,
	issues i,
	bills b
where
	l.uniqid = i.uniqid AND
	i.si_id = b.si_id AND
	b.congno = 113 AND
	b.bill_name = 'S.866' AND
	(l.use = 'y' or l.use = 'Y') 
group by
	l.client, l.year
order by
	l.client, l.year
;
