SELECT 
  ContactName,
  dbo.ufn_GetLastName(ContactName) AS LastName_UDF,
  RIGHT(ContactName, LEN(ContactName) - CHARINDEX(' ', ContactName)) AS LastName_AdHoc
FROM dbo.t_w3_schools_customers;
