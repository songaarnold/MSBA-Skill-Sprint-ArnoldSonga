-- 1. Total loans issued by loan type
SELECT loan_type,
       COUNT(*) AS total_loans,
       SUM(loan_amount) AS total_amount
FROM loans
WHERE loan_status = 'Approved'
GROUP BY loan_type;

-- 2. Average income for approved vs rejected loans
SELECT l.loan_status,
       AVG(c.income) AS avg_income
FROM loans l
JOIN customers c ON l.customer_id = c.customer_id
GROUP BY l.loan_status;

-- 3. Default rate by loan type
SELECT l.loan_type,
       COUNT(*) AS total_loans,
       SUM(r.default_flag) AS defaults,
       ROUND(SUM(r.default_flag) * 100.0 / COUNT(*), 2) AS default_rate_pct
FROM loans l
JOIN repayments r ON l.loan_id = r.loan_id
GROUP BY l.loan_type;

-- 4. Customer risk segmentation
SELECT customer_id,
       credit_score,
       income,
       CASE
           WHEN credit_score < 600 THEN 'High Risk'
           WHEN credit_score BETWEEN 600 AND 700 THEN 'Medium Risk'
           ELSE 'Low Risk'
       END AS risk_category
FROM customers;
