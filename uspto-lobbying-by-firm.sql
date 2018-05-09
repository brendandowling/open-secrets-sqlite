select 
	distinct l.client, l.year, sum(l.amount), count(a.agencyid)
from
	lobbying l,
	agencies a
where
	l.uniqid = a.uniqid AND
	(l.use = 'y' or l.use = 'Y') AND
	a.agencyid = '113 '
group by
	l.client, l.year
order by
	l.client, l.year
;
