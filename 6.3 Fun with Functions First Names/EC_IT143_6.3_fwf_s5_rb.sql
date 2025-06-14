CREATE FUNCTION dbo.ufn_GetFirstName (@CustomerName NVARCHAR(100))
RETURNS NVARCHAR(100)
AS
BEGIN
    RETURN LEFT(@CustomerName, CHARINDEX(' ', @CustomerName + ' ') - 1);
END
