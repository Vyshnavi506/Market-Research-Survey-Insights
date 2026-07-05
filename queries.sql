USE survey_insights;
SELECT * FROM survey_responses LIMIT 10;

-- Overall NPS
SELECT 
  ROUND((SUM(CASE WHEN NPS_Response >= 9 THEN 1 ELSE 0 END) - 
         SUM(CASE WHEN NPS_Response <= 6 THEN 1 ELSE 0 END)) * 100.0 / COUNT(*), 1) AS nps_score
FROM survey_responses;

-- Satisfaction and NPS by tech support usage
SELECT TechSupportUsed,
       ROUND(AVG(SatisfactionScore),2) AS avg_satisfaction,
       ROUND((SUM(CASE WHEN NPS_Response >= 9 THEN 1 ELSE 0 END) - 
              SUM(CASE WHEN NPS_Response <= 6 THEN 1 ELSE 0 END)) * 100.0 / COUNT(*), 1) AS nps_score
FROM survey_responses
GROUP BY TechSupportUsed;

-- CSAT and satisfaction by product line
SELECT ProductLine,
       ROUND(AVG(SatisfactionScore),2) AS avg_satisfaction,
       ROUND(SUM(CASE WHEN SatisfactionScore >= 4 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) AS csat_pct
FROM survey_responses
GROUP BY ProductLine
ORDER BY csat_pct ASC;

-- Satisfaction by region
SELECT Region, ROUND(AVG(SatisfactionScore),2) AS avg_satisfaction
FROM survey_responses
GROUP BY Region;