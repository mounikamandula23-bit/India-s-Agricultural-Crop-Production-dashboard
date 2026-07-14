CREATE DATABASE agriculture_db;
USE agriculture_db;

-- Table 1: Crop Production Data
CREATE TABLE crop_production (
    State VARCHAR(100),
    District VARCHAR(100),
    Crop VARCHAR(100),
    Year INT,
    Season VARCHAR(50),
    Area FLOAT,
    Area_Units VARCHAR(30),
    Production FLOAT,
    Production_Units VARCHAR(30)
);

-- Table 2: Area Analysis
CREATE TABLE area_analysis (
    State VARCHAR(100),
    District VARCHAR(100),
    Crop VARCHAR(100),
    Year INT,
    Season VARCHAR(50),
    Area FLOAT,
    Area_Units VARCHAR(30)
);

-- Table 3: Production Analysis
CREATE TABLE production_analysis (
    State VARCHAR(100),
    District VARCHAR(100),
    Crop VARCHAR(100),
    Year INT,
    Season VARCHAR(50),
    Production FLOAT,
    Production_Units VARCHAR(30)
);

-- Table 4: Yield Analysis
CREATE TABLE yield_analysis (
    State VARCHAR(100),
    District VARCHAR(100),
    Crop VARCHAR(100),
    Year INT,
    Season VARCHAR(50),
    Area FLOAT,
    Production FLOAT,
    Yield FLOAT
);

-- Table 5: Season Analysis
CREATE TABLE season_analysis (
    State VARCHAR(100),
    District VARCHAR(100),
    Crop VARCHAR(100),
    Season VARCHAR(50),
    Year INT,
    Area FLOAT,
    Production FLOAT
);