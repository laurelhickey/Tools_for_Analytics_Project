
CREATE TABLE IF NOT EXISTS hourly_weather
    (id INTEGER PRIMARY KEY,
    DATE DATE,
    LATITUDE INTEGER,
    LONGITUDE INTEGER,
    NAME TEXT,
    BackupName TEXT,
    hours INTEGER,
    newDATE DATE)

CREATE TABLE IF NOT EXISTS daily_weather
    (id INTEGER PRIMARY KEY,
    DATE DATE,
    LATITUDE INTEGER,
    LONGITUDE INTEGER,
    NAME TEXT,
    BackupName TEXT,
    days INTEGER,
    newDATE DATE)