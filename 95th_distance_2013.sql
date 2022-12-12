
SELECT distance AS distance, DATE(pickup_datetime) AS date
FROM taxi_trips
WHERE date LIKE '2013-07-%'
UNION ALL
SELECT Distance AS distance, DATE(pickup_datetime) AS date
FROM uber_trips
WHERE date LIKE '2013-07-%'
ORDER BY distance
LIMIT 1
OFFSET (
    WITH t(count) AS
    (SELECT COUNT(distance) AS count
    FROM taxi_trips
    WHERE DATE(pickup_datetime) LIKE '2013-07-%'),
    u(count) AS
    (SELECT COUNT(Distance) AS count
    FROM uber_trips
    WHERE DATE(pickup_datetime) LIKE '2013-07-%')
    SELECT t.count+u.count
    FROM t
    JOIN u)*95/100-1;
