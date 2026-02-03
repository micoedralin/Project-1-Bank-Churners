-- Q3: What is the difference between existing and attrited customers when it comes to the amount of times they contacted the credit card company? --
-- A3: Attrited customers, on average, contacted the credit card company more times than existing customers. -- 
SELECT
    attrition_flag,
    AVG(contacts_count_12_mon) AS avg_contacts
FROM
    bank_churners
GROUP BY
    attrition_flag
ORDER BY
    avg_contacts DESC;                 