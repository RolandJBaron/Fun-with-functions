-- Drop the trigger if it already exists
IF OBJECT_ID('trg_UpdateModifiedInfo', 'TR') IS NOT NULL
    DROP TRIGGER trg_UpdateModifiedInfo;
GO

-- Trigger to update LastModifiedDate and LastModifiedBy after any update
CREATE TRIGGER trg_UpdateModifiedInfo
ON dbo.t_w3_schools_customers
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE c
    SET 
        c.LastModifiedDate = GETDATE(),
        c.LastModifiedBy = SUSER_SNAME()
    FROM dbo.t_w3_schools_customers c
    INNER JOIN inserted i ON c.CustomerID = i.CustomerID;
END;

