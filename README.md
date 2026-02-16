🏦 Bank Loan Risk Analysis using SQL

📌 Project Overview
This project focuses on analyzing bank loan data using SQL to identify risk patterns, customer behavior, and default trends.  
The objective is to help financial institutions make data-driven loan approval decisions and reduce credit risk.


🎯 Business Problem
Banks face significant losses due to loan defaults.  
This project aims to:
- Identify high-risk customers
- Analyze loan default patterns
- Evaluate credit score and income impact
- Improve loan approval strategies


🗂 Dataset Description

1️⃣ Customers Table
| Column | Description |
|------|------------|
| customer_id | Unique customer identifier |
| age | Customer age |
| gender | Gender |
| income | Monthly income |
| employment_type | Salaried / Business / Self-Employed |
| credit_score | Credit score of customer |


 2️⃣ Loans Table
| Column | Description |
|------|------------|
| loan_id | Unique loan identifier |
| customer_id | Linked customer |
| loan_amount | Loan amount issued |
| loan_type | Personal / Home / Auto |
| interest_rate | Interest rate |
| loan_status | Approved / Rejected |
| loan_date | Loan issue date |


 3️⃣ Repayments Table
| Column | Description |
|------|------------|
| repayment_id | Repayment record ID |
| loan_id | Related loan |
| due_date | Payment due date |
| paid_date | Actual payment date |
| amount_paid | Amount paid |
| default_flag | 1 = Default, 0 = No Default |


🛠 SQL Skills Used
- JOINs (INNER JOIN)
- GROUP BY & Aggregations
- CASE WHEN logic
- Window Functions (RANK)
- Date-based analysis
- Business KPI calculations


📈 Key Insights
- Personal loans show higher default rates
- Customers with lower credit scores are more likely to default
- Self-employed and retired customers carry higher risk
- High loan exposure customers can be identified using window functions


💼 Business Impact
- Helps banks reduce default risk
- Improves credit policy decisions
- Enables early identification of risky customers
- Demonstrates job-ready SQL analysis skills
