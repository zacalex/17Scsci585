SELECT s1.name
FROM step5 s1,step5 s2
WHERE s1.name != s2.name and s2.name = 'PM Fountain'
ORDER BY ST_Distance(s1.point,s2.point)
LIMIT 3;