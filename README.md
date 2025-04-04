I've been programming in R for several years now and absolutely love it!! However, I'm always looking to learn new skills and in my new role as a quantitative methodologist, understanding and programming in SQL is necessary in order to extract data from our data warehouse. 

I was excited when I came across this awesome 4-hour course by Luke Barousse: [SQL for Data Analytics - Learn SQL in 4 hours](https://www.youtube.com/watch?v=7mz73uXD9DA)

The last portion of the course involves using a dataset of real-world data science job postings from 2023. The instructor provides a Google Drive link to download the CSV and SQL files to load the dataset into my PostgreSQL database and he walks us through how to use Visual Studio Code (which happens to be my favorite text editor) and GitHub to complete the project and showcase all of the work! 

## Question 1: What are the top-paying, remote data scientist/analyst jobs?

- The number 1 top-paying job in 2023 was a data analyst position for a company called Mantys with an average yearly salary of $650,000!
- That seems to be an outlier though (I wouldn't expect most data scientist/analyst jobs to have a salary anywhere near this!)
- The overwhelming majority of the top 50 positions are data scientist as opposed to analyst
- Most of the salaries range somewhere between $150,000 - $180,000
- Some of the companies: Algo Capital Group, Grammarly, Ascendion (I'll be honest, I don't recognize a most of the companies listed, but good to know!)

## Question 2: What skills are required for the top-paying, remote data scientist/analyst jobs?

- Once we joined the data that included the different skills associated with each posting, we got a total of 285 rows of data
- Following along with the tutorial, I exported the data to a csv file and gave it to chat GPT with the following prompt: "these are the top 50 data analyst/data scientest roles I found in job postings in 2023, can you analyze the skill column and display insights" and here are the results...

The top 10 most commonly listed skills in these job postings are:

  1. Python (43 mentions) – The most in-demand skill.
  2. SQL (30 mentions) – Essential for database management.
  3. R (19 mentions) – Popular for statistical analysis.
  4. Tableau (14 mentions) – Used for data visualization.
  5. AWS (13 mentions) – Indicates demand for cloud computing expertise.
  6. Java (9 mentions) – Less common but still valuable.
  7. MongoDB (8 mentions) – NoSQL database skill.
  8. Spark (8 mentions) – Used for big data processing.
  9. TensorFlow (7 mentions) – Machine learning framework.
  10. Scala (6 mentions) – Often used in big data environments.

- Chat GPT even provided Python code:

```ruby
- # Count the frequency of each skill
skill_counts = df['skills'].value_counts()

# Display the top 10 most common skills
skill_counts.head(10)
```

- I also asked Chat GPT to provide a visualization of the results:

![top10_skills](https://github.com/user-attachments/assets/36279d35-ed5b-4e3a-aaa4-6fa9491a5c36)

- And here's the python code (in case anyone want's to confirm this is accurate)

```ruby
import matplotlib.pyplot as plt
import seaborn as sns

# Set style
sns.set_style("whitegrid")

# Create a bar plot for the top 10 skills
plt.figure(figsize=(12, 6))
sns.barplot(x=skill_counts.head(10).values, y=skill_counts.head(10).index, palette="viridis")
plt.xlabel("Count")
plt.ylabel("Skills")
plt.title("Top 10 In-Demand Skills for Data Roles")
plt.show()

# Create a pie chart for skill distribution (top 10 skills)
plt.figure(figsize=(8, 8))
plt.pie(skill_counts.head(10), labels=skill_counts.head(10).index, autopct='%1.1f%%', colors=sns.color_palette("viridis", 10))
plt.title("Skill Distribution Among Top 10 Skills")
plt.show()
```
## Question 3: what are the most in-demand skills for data scientist/data analyst?

Top 10 (all jobs, not just remote):
1. SQL
2. Python
3. R
4. Excel
5. Tableau
6. SAS
7. Power BI
8. AWS
9. Azure
10. Spark

## Question 4: what are the top skills based on salary? 

Top 5 (data scientist and remote only):
1. gdpr
2. golang
3. atlassian
4. selenium
5. opencv

Tidyverse made top 10! However, I don't recognize most of these skills so guessing they are pretty technical/specifi, so I gave the top 25 results to chat GPT to try to gain some additional insights with this prompt: "Here are the top paying skills for data scientists, can you provide some quick insights into some trends of the top paying jobs"

1. Privacy & Compliance Pay the Most – GDPR ($217K) leads the list, showing that data security and regulatory expertise are highly valued.
2. Specialized Programming & Databases Matter – High salaries for Golang ($208K), Neo4j ($171K), and DynamoDB ($169K) highlight the demand for performance-driven coding and advanced data storage solutions.
3. AI, Automation & BI Are Key – Skills in OpenCV ($172K), Selenium ($180K), and MicroStrategy ($171K) suggest strong demand for machine learning, workflow automation, and business intelligence.

