-- Remove duplicate employees
SELECT DISTINCT *
FROM hr_employee_data;

-- Handle null exit dates
UPDATE hr_employee_data
SET ExitDate = NULL
WHERE ExitDate = '';

-- Standardize date format
UPDATE hr_employee_data
SET HireDate = STR_TO_DATE(HireDate, '%Y-%m-%d'),
    ExitDate = STR_TO_DATE(ExitDate, '%Y-%m-%d');
