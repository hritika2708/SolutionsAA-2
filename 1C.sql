-- type of rice with longest DNA Sequence of 
SELECT ncbi_id, MAX(length), description FROM rfamseq 
WHERE ncbi_id in 
	(SELECT ncbi_id from taxonomy WHERE species like '%Oryza sativa%')
GROUP BY ncbi_id 
ORDER BY MAX(length) DESC
LIMIT 0, 1;