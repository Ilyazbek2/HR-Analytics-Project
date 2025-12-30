-- Total employees who left
SELECT COUNT(*) AS total_terminations
FROM hr_employee_data
WHERE ExitDate IS NOT NULL;

-- Monthly attrition trend
SELECT
    YEAR(ExitDate) AS year,
    MONTH(ExitDate) AS month,
    COUNT(*) AS terminations
FROM hr_employee_data
WHERE ExitDate IS NOT NULL
GROUP BY YEAR(ExitDate), MONTH(ExitDate)
ORDER BY year, month;

-- Attrition by department
SELECT
    Department,
    COUNT(*) AS employees_lost
FROM hr_employee_data
WHERE ExitDate IS NOT NULL
GROUP BY Department
ORDER BY employees_lost DESC;
