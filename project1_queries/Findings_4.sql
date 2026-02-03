-- Q4: What is the difference between existing and attrited customers when it comes to their revolving balance on their credit card? --
-- A1: Existing customers, on average, had almost twice as much revolving balance on their credit card compared to attrited customers--
SELECT
    attrition_flag,
    AVG(total_revolving_bal) AS avg_balance
FROM
    bank_churners
GROUP BY
    attrition_flag
ORDER BY
    avg_balance DESC;                 