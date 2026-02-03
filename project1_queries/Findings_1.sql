-- Q1: What is the difference between existing customers amd attrited customers when it comes to their credit limit? --
-- A1: Existing customers, on average, have higher credit limit than attrited customers. --
SELECT
    attrition_flag,
    AVG(credit_limit) AS avg_credit_limit
FROM
    bank_churners
GROUP BY
    attrition_flag
ORDER BY
    avg_credit_limit DESC;
