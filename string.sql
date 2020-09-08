SELECT
  -- CONCATENATE
  CONCAT('A', 'B', 'C'), -- 'ABC'
  -- LOWER CASE
  LOWER('ABC'), -- 'abc'
  -- UPPER CASE
  UPPER('abc'), -- 'ABC'
  -- SUBSTRING
  SUBSTR('123456', 1, 4), -- '1234'
  -- REPEAT
  REPEAT('0', 3), -- '000'
  -- LENGTH
  LENGTH('ABC'), -- 3
  -- REPLACE
  REPLACE('1,23', ',', '.'), -- '1.23'
  -- LEFT PAD
  LPAD('123', 5, '0'),  -- '00123'
  -- TRIM SPACES
  TRIM('       123            ') -- '123'
