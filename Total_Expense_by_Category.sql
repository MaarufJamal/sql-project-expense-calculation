SELECT DISTINCT CATEGORY,
SUM(CONVERT(INT, EXPENSE)) AS total_expense
FROM dbo.CityBankStatement
WHERE EXPENSE IS NOT NULL
GROUP BY CATEGORY
ORDER BY total_expense DESC;