-- Average engagement score
SELECT ROUND(AVG(EngagementScore), 2) AS avg_engagement
FROM hr_employee_data;

-- Engagement by department
SELECT
    Department,
    ROUND(AVG(EngagementScore), 2) AS avg_engagement
FROM hr_employee_data
GROUP BY Department
ORDER BY avg_engagement;
