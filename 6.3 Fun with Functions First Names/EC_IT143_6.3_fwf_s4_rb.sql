
SELECT 
  CustomerName,
  LEFT(CustomerName, CHARINDEX(' ', CustomerName + ' ') - 1) AS FirstName
FROM dbo.t_w3_schools_customers
WHERE CHARINDEX(' ', CustomerName) > 0;
