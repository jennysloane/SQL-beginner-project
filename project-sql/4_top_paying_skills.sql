/*
Question: what are the top skills based on salary?
- look at the average salary associated with each skill for data scientist positions
- focus on roles with specified salaries regardless of location
*/

SELECT 
    skills,
    ROUND(AVG(salary_year_avg),0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Scientist' 
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = True
GROUP BY 
    skills
ORDER BY
    avg_salary DESC
LIMIT 25

/* Chat GPT insights of data:
1. Privacy & Compliance Pay the Most – GDPR ($217K) leads the list, showing that data security and regulatory expertise are highly valued.
2. Specialized Programming & Databases Matter – High salaries for Golang ($208K), Neo4j ($171K), and DynamoDB ($169K) highlight the demand for performance-driven coding and advanced data storage solutions.
3. AI, Automation & BI Are Key – Skills in OpenCV ($172K), Selenium ($180K), and MicroStrategy ($171K) suggest strong demand for machine learning, workflow automation, and business intelligence.
*/