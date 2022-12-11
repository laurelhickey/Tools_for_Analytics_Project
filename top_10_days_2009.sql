
SELECT DATE(pickup_datetime), COUNT(DATE(pickup_datetime)), AVG(distance)
FROM taxi_trips 
WHERE pickup_datetime LIKE '2009-%-%'
GROUP BY DATE(pickup_datetime)
UNION
SELECT DATE(pickup_datetime), COUNT(DATE(pickup_datetime)), AVG(Distance)
FROM uber_trips 
WHERE pickup_datetime LIKE '2009-%-%'
GROUP BY DATE(pickup_datetime) 
ORDER BY COUNT(DATE(pickup_datetime)) DESC
LIMIT 10
