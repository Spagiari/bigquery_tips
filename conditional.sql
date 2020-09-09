WITH CTE AS (
  SELECT 
    1 AS A, 
    5 AS B, 
    null as C)

SELECT
 -- IF NULL RETURN 0
IFNULL(C, 0), -- 0
IFNULL(B, 0), -- 5
 -- CASE form 1
 CASE WHEN A = 1 THEN TRUE ELSE FALSE END, -- true
 -- CASE form 1
 CASE B 
  WHEN 1 THEN '1' 
  WHEN 2 THEN '2'
  ELSE 'OTHER' END, -- 'OTHER'
 -- IF
 IF (A > B, 'A greater B', 'B greater or equal A') -- 'B greater or equal A'
FROM CTE
