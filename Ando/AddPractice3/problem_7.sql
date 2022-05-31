SELECT
    last_name,
    job_id,
    department_name,
    salary,
    CASE 
        WHEN 
            salary >= (SELECT lowest_sal FROM job_grades WHERE grade_level = 'A') 
            AND salary <= (SELECT highest_sal FROM job_grades WHERE grade_level = 'A') 
            THEN 'A'
        WHEN 
            salary >= (SELECT lowest_sal FROM job_grades WHERE grade_level = 'B') 
            AND salary <= (SELECT highest_sal FROM job_grades WHERE grade_level = 'B') 
            THEN 'B'
        WHEN 
            salary >= (SELECT lowest_sal FROM job_grades WHERE grade_level = 'C') 
            AND salary <= (SELECT highest_sal FROM job_grades WHERE grade_level = 'C') 
            THEN 'C'
        WHEN 
            salary >= (SELECT lowest_sal FROM job_grades WHERE grade_level = 'D') 
            AND salary <= (SELECT highest_sal FROM job_grades WHERE grade_level = 'D') 
            THEN 'D'
        WHEN 
            salary >= (SELECT lowest_sal FROM job_grades WHERE grade_level = 'E') 
            AND salary <= (SELECT highest_sal FROM job_grades WHERE grade_level = 'E') 
            THEN 'E'
        WHEN 
            salary >= (SELECT lowest_sal FROM job_grades WHERE grade_level = 'F') 
            AND salary <= (SELECT highest_sal FROM job_grades WHERE grade_level = 'F') 
            THEN 'F'
    END AS grade_level
FROM
    employees
    INNER JOIN departments ON employees.department_id = departments.department_id
ORDER BY
    grade_level ASC,
    salary ASC
;