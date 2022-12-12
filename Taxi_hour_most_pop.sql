
    SELECT pickup_hour, COUNT(pickup_hour) FROM taxi_trips GROUP BY pickup_hour ORDER BY COUNT(pickup_hour) DESC
    