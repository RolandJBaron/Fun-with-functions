CREATE FUNCTION dbo.ufn_GetLastName (@ContactName NVARCHAR(100))
RETURNS NVARCHAR(100)
AS
BEGIN
    RETURN RIGHT(@ContactName, LEN(@ContactName) - CHARINDEX(' ', @ContactName));
END
