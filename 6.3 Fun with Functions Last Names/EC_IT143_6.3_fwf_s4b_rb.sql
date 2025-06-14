

SELECT 
  ContactName,
  RIGHT(ContactName, LEN(ContactName) - CHARINDEX(' ', ContactName)) AS LastName
FROM dbo.t_w3_schools_customers;
