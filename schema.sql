
CREATE TABLE IF NOT EXISTS hourly_weather
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    DATE DATE,
    LATITUDE FLOAT,
    LONGITUDE FLOAT,
    NAME TEXT,
    HourlyPrecipitation STRING,
    HourlyWindDirection STRING,
    HourlyWindGustSpeed STRING,
    HourlyWindSpeed	STRING,
    hours INTEGER,
    newDATE DATE
    )

CREATE TABLE IF NOT EXISTS daily_weather
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    DATE DATE,
    LATITUDE FLOAT,
    LONGITUDE FLOAT,
    NAME TEXT,
    DailyAverageWindSpeed STRING,
    DailyPeakWindDirection STRING,
    DailyPeakWindSpeed STRING,
    DailyPrecipitation STRING,
    DailySustainedWindDirection STRING,
    DailySustainedWindSpeed STRING,
    days INTEGER,
    newDATE YEAR MONTH
    )

CREATE TABLE IF NOT EXISTS taxi_trips
    (id INTEGER PRIMARY KEY AUTOINCREMENT,	
    pickup_datetime	DATE,
    dropoff_datetime DATE,
    distance FLOAT,
    PULocationID FLOAT,
    DOLocationID FLOAT,
    pick_hour FLOAT,
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
