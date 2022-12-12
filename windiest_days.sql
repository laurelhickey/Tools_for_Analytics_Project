
WITH taxi_trip(select_day, count) AS (
    SELECT DATE(pickup_datetime) AS select_day, COUNT(DATE(pickup_datetime)) AS count
    FROM taxi_trips
    WHERE select_day LIKE '2014-%-%'
    GROUP BY select_day
    ORDER BY count DESC
    ),
    uber_trip(select_day, count) AS (
    SELECT DATE(pickup_datetime) AS select_day, COUNT(DATE(pickup_datetime)) AS count
    FROM uber_trips
    WHERE select_day LIKE '2014-%-%'
    GROUP BY select_day
    ORDER BY count DESC
    ),
    daily_w(select_day, daw) AS (
    SELECT DATE(DATE) AS select_day, DailyAverageWindSpeed AS daw
    FROM daily_weather
    WHERE select_day LIKE '2014-%-%'
    GROUP BY select_day
    ORDER BY daw DESC
    LIMIT 10
    )
    SELECT daily_w.select_day, daily_w.daw, taxi_trip.count+uber_trip.count
    FROM daily_w
    LEFT JOIN taxi_trip ON daily_w.select_day = taxi_trip.select_day
    LEFT JOIN uber_trip ON daily_w.select_day = uber_trip.select_day;
