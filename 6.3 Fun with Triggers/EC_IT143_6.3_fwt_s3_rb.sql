

-- The audit columns already exist, so no need to add them again.
-- Just verifying we're ready to build the trigger next.
-- Columns expected:
--   LastModifiedDate DATETIME
--   LastModifiedBy NVARCHAR(100)

-- You can check the table structure to confirm:
EXEC sp_help 'dbo.t_w3_schools_customers';
