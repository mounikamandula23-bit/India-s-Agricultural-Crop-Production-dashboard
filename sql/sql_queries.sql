-- Select database
USE agriculture_db;

-- View first 10 records
SELECT * FROM crop_production
LIMIT 10;

-- Total production by state
SELECT State,
       SUM(Production) AS Total_Production
FROM crop_production
GROUP BY State
ORDER BY Total_Production DESC;

-- Top 10 crops by production
SELECT Crop,
       SUM(Production) AS Total_Production
FROM crop_production
GROUP BY Crop
ORDER BY Total_Production DESC
LIMIT 10;

-- Average cultivated area by crop
SELECT Crop,
       ROUND(AVG(Area),2) AS Average_Area
FROM area_analysis
GROUP BY Crop
ORDER BY Average_Area DESC;

-- Number of records in each season
SELECT Season,
       COUNT(*) AS Total_Records
FROM season_analysis
GROUP BY Season
ORDER BY Total_Records DESC;

-- Production during Kharif season
SELECT State, Crop, Production
FROM production_analysis
WHERE Season = 'Kharif'
ORDER BY Production DESC;

-- Top 10 highest yield records
SELECT State,
       Crop,
       Year,
       Yield
FROM yield_analysis
ORDER BY Yield DESC
LIMIT 10;

-- Average yield by state
SELECT State,
       ROUND(AVG(Yield),2) AS Average_Yield
FROM yield_analysis
GROUP BY State
ORDER BY Average_Yield DESC;

-- Total production by year
SELECT Year,
       SUM(Production) AS Total_Production
FROM production_analysis
GROUP BY Year
ORDER BY Year;

-- Total area by year
SELECT Year,
       SUM(Area) AS Total_Area
FROM area_analysis
GROUP BY Year
ORDER BY Year;

-- Number of crops grown in each state
SELECT State,
       COUNT(DISTINCT Crop) AS Total_Crops
FROM crop_production
GROUP BY State
ORDER BY Total_Crops DESC;

-- State with maximum cultivated area
SELECT State,
       SUM(Area) AS Total_Area
FROM area_analysis
GROUP BY State
ORDER BY Total_Area DESC
LIMIT 1;

-- Top 5 districts with highest production
SELECT District,
       SUM(Production) AS Total_Production
FROM production_analysis
GROUP BY District
ORDER BY Total_Production DESC
LIMIT 5;

-- Average production by season
SELECT Season,
       ROUND(AVG(Production),2) AS Average_Production
FROM season_analysis
GROUP BY Season
ORDER BY Average_Production DESC;

-- Total production of Rice
SELECT State,
       SUM(Production) AS Rice_Production
FROM crop_production
WHERE Crop = 'Rice'
GROUP BY State
ORDER BY Rice_Production DESC;