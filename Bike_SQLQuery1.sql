WITH CTE AS(
SELECT * FROM bike_share_yr_0
UNION 
SELECT * FROM bike_share_yr_1)

SELECT 
dteday, 
season,
a.yr,
weekday,
hr,
rider_type,
riders,
price,
COGS,
riders*price as revenue,
riders*price-COGS*riders AS profit

FROM CTE a
LEFT JOIN cost_table b
on a.yr = b.yr

