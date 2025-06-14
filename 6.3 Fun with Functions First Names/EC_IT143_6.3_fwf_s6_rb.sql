SELECT 
  CustomerName,
  dbo.ufn_GetFirstName(CustomerName) AS FirstName_UDF,
  LEFT(CustomerName, CHARINDEX(' ', CustomerName + ' ') - 1) AS FirstName_Manual
FROM dbo.t_w3_schools_customers
WHERE CHARINDEX(' ', CustomerName) > 0;
