/*
Question: what are the top paying data scientist/analyst jobs?
- identify the top 50 highest paying data scientist/analyst roles that are avilable remotely
- focuses on job postings with specified salaries (remove nulls)
*/

SELECT  
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM    
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE  
    job_location = 'Anywhere'
    AND (job_title = 'Data Scientist' OR job_title = 'Data Analyst')
    AND salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 50;