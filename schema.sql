
CREATE TABLE IF NOT EXISTS hourly_weather
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    DATE DATE,
    LATITUDE FLOAT,
    LONGITUDE FLOAT,
    NAME TEXT,
    HourlyWindDirection INTEGER,
    HourlyWindGustSpeed FLOAT,
    HourlyWindSpeed	FLOAT,
    hours INTEGER,
    newDATE DATE
    )

CREATE TABLE IF NOT EXISTS daily_weather
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    DATE DATE,
    LATITUDE FLOAT,
    LONGITUDE FLOAT,
    NAME TEXT,
    days INTEGER,
    newDATE YEAR MONTH
    )

CREATE TABLE IF NOT EXISTS taxi_trips
    (id INTEGER PRIMARY KEY AUTOINCREMENT,	
    pickup_datetime	DATE,
    dropoff_datetime DATE,
    passenger_count	INTEGER,
    trip_distance FLOAT,
    pickup_longitude FLOAT,
    pickup_latitude FLOAT,
    dropoff_longitude FLOAT,
    dropoff_latitude FLOAT
    )

CREATE TABLE IF NOT EXISTS uber_trips
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    fare_amount	FLOAT,
    pickup_datetime DATE,
    pickup_longitude FLOAT,
    pickup_latitude FLOAT,
    dropoff_longitude FLOAT,
    dropoff_latitude FLOAT,
    passenger_count INTEGER,
    Distance FLOAT,
    day_of_week INTEGER
    )
