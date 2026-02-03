-- Q5: What is the difference between existing and attrited customers when it comes to average credit card utilization ratio? --
-- A5: Existing customers, on average, have a higher credit card utilization ratio than attrited customers. --
SELECT
    attrition_flag,
    AVG(avg_utilization_ratio) AS avg_utilization
FROM
    bank_churners
GROUP BY
    attrition_flag
ORDER BY
    avg_utilization DESC;
