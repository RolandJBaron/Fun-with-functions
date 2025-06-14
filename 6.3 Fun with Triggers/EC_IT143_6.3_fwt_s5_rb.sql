-- Test update to see if trigger works
UPDATE dbo.t_w3_schools_customers
SET City = 'Berlin'
WHERE CustomerID = 1;

-- Check if audit fields updated
SELECT CustomerID, City, LastModifiedDate, LastModifiedBy
FROM dbo.t_w3_schools_customers
WHERE CustomerID = 1;
