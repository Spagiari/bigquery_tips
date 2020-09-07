select 
  CAST('2020-09-07' as date) as DATE,
  EXTRACT ( MONTH from CAST('2020-09-07' as date)) AS MONTH,
  EXTRACT ( YEAR from CAST('2020-09-07' as date)) AS YEAR,
  FORMAT_DATE("%m-%Y", date "2020-09-07") AS MONTH_YEAR,
  DATE_DIFF( DATE "2020-10-08",  date "2020-09-07", DAY) AS DIFF_DAY,
  DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY) AS LAST_DAY,
  -- First day of previous month
  DATE_ADD(CAST(timestamp_millis(0) as date), 
    INTERVAL DATE_DIFF(CURRENT_DATE(), CAST(timestamp_millis(0) as DATE), MONTH) -1 MONTH) AS FIRST_DAY_OF_PREVIOS_MONTH,
  -- Last Day of previous month
  DATE_SUB(
    DATE_ADD(CAST(timestamp_millis(0) as date), INTERVAL DATE_DIFF(CURRENT_DATE(), CAST(timestamp_millis(0) as date), MONTH) MONTH), 
    INTERVAL 1 DAY) AS LAST_DAY_PREVIUS_MONTH,
  -- First day of this month
  DATE_ADD(CAST(timestamp_millis(0) as date), 
    INTERVAL DATE_DIFF(CURRENT_DATE(), CAST(timestamp_millis(0) as date), MONTH) MONTH) AS FIRST_DAY_OF_THIS_MONTH,
  -- Last day of this month
  DATE_SUB(
    DATE_ADD(CAST(timestamp_millis(0) as date), INTERVAL DATE_DIFF(CURRENT_DATE(), CAST(timestamp_millis(0) as date), MONTH) + 1 MONTH), 
    INTERVAL 1 day) AS LAST_DAY_OF_THIS_MONTH,
  -- First day of next month
  DATE_ADD(CAST(timestamp_millis(0) as date), 
    INTERVAL DATE_DIFF(CURRENT_DATE(), CAST(timestamp_millis(0) as date), MONTH) +1 MONTH) AS FIRST_DAY_OF_NEXT_MONTH,
  -- Last day of next month
  DATE_SUB(
    DATE_ADD(CAST(timestamp_millis(0) as date), INTERVAL DATE_DIFF(CURRENT_DATE(), CAST(timestamp_millis(0) as date), MONTH) + 2 MONTH), 
    INTERVAL 1 DAY) AS LAST_DAY_OF_NEXT_MONTH
