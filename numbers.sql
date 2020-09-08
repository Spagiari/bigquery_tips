SELECT
 -- STRING to IN64
 CAST('125' AS INT64), -- 125 
 -- IN64 to STRING
 CAST(125 AS STRING), -- '125'
 -- IN64 to STRING FORMATED
 FORMAT('%05d', 125), -- '00125'
 -- STRING TO FLOAT64
 CAST('1.2552632' AS FLOAT64), -- 1.2552632
 -- FLOAT64 TO STRING FORMATED
 FORMAT('%06.2f', CAST('1.2552632' AS FLOAT64)), -- '001.26'
 -- STRING TO FLOAT64
 CAST('125' AS FLOAT64), -- 125.0
 -- FLOAT64 TO STRING FORMATED
 FORMAT('%0.2f', 1.2552632), -- 1.26
 -- INT TO TIMESTAMP
 timestamp_millis(0) -- 1970-01-01 00:00:00 UTC
