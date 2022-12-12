 
WITH taxi(hour, count) AS (
    SELECT CAST(pickup_hour AS int) AS hour, COUNT(pickup_hour) AS count
    FROM taxi_trips
    WHERE DATE(pickup_datetime) BETWEEN '2012-10-22' AND '2012-11-06'
    GROUP BY hour),
    uber(hour, count) AS (
    SELECT CAST(strftime('%H', pickup_datetime) AS int) AS hour, COUNT(strftime('%H', pickup_datetime)) AS count
    FROM uber_trips
    WHERE DATE(pickup_datetime) BETWEEN '2012-10-22' AND '2012-11-06'
    GROUP BY hour),
    weather(hour, precip, wspeed) AS (
    SELECT CAST(hours AS int) AS hour, AVG(HourlyPrecipitation) AS precip, AVG(HourlyWindSpeed) AS wspeed
    FROM hourly_weather
    WHERE DATE(DATE) BETWEEN '2012-10-22' AND '2012-11-06'
    GROUP BY hour)
    SELECT weather.hour, taxi.count+uber.count, weather.precip, weather.wspeed
    FROM weather
    LEFT JOIN taxi ON taxi.hour = weather.hour
    LEFT JOIN uber ON uber.hour = weather.hour;
