-- Q2: What is the difference between existing and attrited customers when it comes to the amount of credit cards they own from the company? --
-- A2: Existing customers, on average, owned more of the company's credit than attrited customers --
SELECT
    attrition_flag,
    AVG(total_relationship_count) AS avg_cards_owned
FROM
    bank_churners
GROUP BY
    attrition_flag
ORDER BY
    avg_cards_owned DESC;