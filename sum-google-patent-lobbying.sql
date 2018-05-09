select 
	l.year, l.client, l.uniqid, sum(l.amount) 
from
	lobbying l,
	issues i
where
	l.client = 'Google Inc'  AND 
	i.uniqid == l.uniqid AND
	i.specificissue LIKE '%patent%'
group by
	l.year
order by
	l.year
;


