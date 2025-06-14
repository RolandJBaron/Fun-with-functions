WITH cte AS (
  SELECT ContactName
  FROM dbo.t_w3_schools_customers
  WHERE dbo.ufn_GetLastName(ContactName) != 
        RIGHT(ContactName, LEN(ContactName) - CHARINDEX(' ', ContactName))
)
SELECT * FROM cte;
