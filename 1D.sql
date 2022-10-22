-- Get 9th page of the family names and their longest DNA sequence lengths


SELECT f.description, fam.* FROM family f 
JOIN (SELECT rf.rfamseq_acc, MAX(rf.length) length, fr.rfam_acc 
	  FROM rfamseq rf JOIN full_region fr 
	  				  ON rf.rfamseq_acc = fr.rfamseq_acc 
	  WHERE rf.length > 1000000
	  GROUP BY fr.rfam_acc) fam
ON fam.rfam_acc = f.rfam_acc
ORDER BY fam.length DESC
LIMIT 120, 15;
