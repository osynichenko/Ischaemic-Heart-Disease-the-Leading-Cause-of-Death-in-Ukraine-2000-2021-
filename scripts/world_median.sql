SELECT
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY dths_100k) AS median_ihd,
  ROUND(AVG(dths_100k), 2)                               AS mean_ihd,
  COUNT(*)                                               AS n
FROM ghe_2021
WHERE cause = 'Ischaemic heart disease';


