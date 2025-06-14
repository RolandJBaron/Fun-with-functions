-- ========================================
-- EC_IT143_6.3_setup_rb.sql
-- Setup script to recreate required view and table
-- for "Fun with Functions" and "Fun with Triggers"
-- ========================================

-- Drop table if it already exists
DROP TABLE IF EXISTS dbo.t_w3_schools_customers;
GO

-- Drop view if it already exists
DROP VIEW IF EXISTS dbo.v_w3_schools_customers;
GO

-- Recreate view from provided script
CREATE VIEW dbo.v_w3_schools_customers AS
SELECT
    CustomerID,
    CustomerName,
    ContactName,
    Address,
    City,
    PostalCode,
    Country
FROM (
    VALUES
        (1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
        (2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '5021', 'Mexico'),
        (3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '5023', 'Mexico'),
        (4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
        (5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden'),
        (6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany'),
        (7, 'Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Strasbourg', '67000', 'France'),
        (8, 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain'),
        (9, 'Bon app', 'Laurence Lebihan', '12, rue des Bouchers', 'Marseille', '13008', 'France'),
        (10, 'Bottom-Dollar Markets', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada')
) AS v(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country);
GO

-- Materialize the view into a physical table
SELECT *
INTO dbo.t_w3_schools_customers
FROM dbo.v_w3_schools_customers;
GO

-- Add tracking columns for triggers
ALTER TABLE dbo.t_w3_schools_customers
ADD 
    LastModifiedDate DATETIME,
    LastModifiedBy NVARCHAR(100);
GO
