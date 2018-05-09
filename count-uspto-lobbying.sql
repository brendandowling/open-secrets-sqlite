select 
	count(*) 
from
	lobbying l,
	agencies a
where
	l.uniqid == a.uniqid AND
	a.agencyid = '113'
group by
	l.year
order by
	l.year
;
