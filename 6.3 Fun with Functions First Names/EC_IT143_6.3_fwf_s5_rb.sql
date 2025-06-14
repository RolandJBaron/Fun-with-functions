IF OBJECT_ID('dbo.ufn_GetFirstName', 'FN') IS NOT NULL
    DROP FUNCTION dbo.ufn_GetFirstName;
GO

CREATE FUNCTION dbo.ufn_GetFirstName (@CustomerName NVARCHAR(100))
RETURNS NVARCHAR(100)
AS
BEGIN
    RETURN LEFT(@CustomerName, CHARINDEX(' ', @CustomerName + ' ') - 1);
END

