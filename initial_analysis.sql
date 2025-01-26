USE school_funding;

-- 1. Filter Data for Maine and Arizona Retrieve all records for the two states
SELECT *
FROM school_funding
WHERE state_name IN ('Arizona', 'Maine');

-- 2. Compare Average Spending Per Pupil Calculate average spending for Maine and Arizona
SELECT state_name, AVG(ppcstot) AS avg_spending_per_pupil
FROM school_funding
WHERE state_name IN ('Arizona', 'Maine')
GROUP BY state_name
ORDER BY 2 DESC;

-- 3. Summarize Funding Gaps Find the average and total funding gaps for both states
SELECT state_name, AVG(fundinggap) AS avg_funding_gap, SUM(fundinggap) AS total_funding_gap
FROM school_funding
WHERE state_name IN ('Arizona', 'Maine')
GROUP BY state_name
ORDER BY 2 ASC;

-- 4. Identify Top and Bottom Districts Rank districts by funding gaps
SELECT state_name, district, fundinggap
FROM school_funding
WHERE state_name IN ('Arizona', 'Maine')
ORDER BY 3 DESC  
LIMIT 5;

SELECT state_name, district, fundinggap
FROM school_funding
WHERE state_name IN ('Arizona', 'Maine')
ORDER BY 3 ASC
LIMIT 5;

-- 5. Correlate Poverty and Spending Assess the relationship between poverty rates and spending
SELECT state_name, district, pov, ppcstot
FROM school_funding
WHERE state_name IN ('Arizona', 'Maine')
ORDER BY pov DESC;

-- 6. Explore Student Outcomes Compare average outcome gaps between Maine and Arizona
SELECT state_name, ROUND(AVG(outcomegap) * 100, 2) AS avg_outcome_gap
FROM school_funding
WHERE state_name IN ('Arizona', 'Maine')
GROUP BY state_name;






