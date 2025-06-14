WITH cte AS (
  SELECT CustomerName
  FROM dbo.t_w3_schools_customers
  WHERE dbo.ufn_GetFirstName(CustomerName) != 
        LEFT(CustomerName, CHARINDEX(' ', CustomerName + ' ') - 1)
)
SELECT * FROM cte;
