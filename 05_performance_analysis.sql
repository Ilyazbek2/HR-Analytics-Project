-- Performance of employees who left
SELECT
    PerformanceRating,
    COUNT(*) AS employee_count
FROM hr_employee_data
WHERE ExitDate IS NOT NULL
GROUP BY PerformanceRating
ORDER BY PerformanceRating DESC;

-- Compare performance: active vs exited
SELECT
    CASE
        WHEN ExitDate IS NULL THEN 'Active'
        ELSE 'Exited'
    END AS employee_status,
    ROUND(AVG(PerformanceRating), 2) AS avg_performance
FROM hr_employee_data
GROUP BY employee_status;
