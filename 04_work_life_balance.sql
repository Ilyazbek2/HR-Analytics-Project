-- Average work-life balance score
SELECT ROUND(AVG(WorkLifeBalance), 2) AS avg_work_life_balance
FROM hr_employee_data;

-- Work-life balance trend by year
SELECT
    YEAR(HireDate) AS year,
    ROUND(AVG(WorkLifeBalance), 2) AS avg_balance
FROM hr_employee_data
GROUP BY YEAR(HireDate)
ORDER BY year;
