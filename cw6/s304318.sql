BEGIN

DROP TABLE IF EXISTS [AdventureWorksDW2019].[dbo].[stg_dimemp];

SELECT de.EMPLOYEEKEY, de.FIRSTNAME, de.LASTNAME, de.TITLE
INTO [AdventureWorksDW2019].[dbo].[stg_dimemp]
FROM [AdventureWorksDW2019].[dbo].[DimEmployee] de
WHERE
EMPLOYEEKEY BETWEEN 270 AND 275;

END



BEGIN

DROP TABLE IF EXISTS [AdventureWorksDW2019].[dbo].[scd_dimemp];

CREATE TABLE AdventureWorksDW2019.dbo.scd_dimemp ( EmployeeKey int , FirstName nvarchar(50) not null, LastName nvarchar(50) not null, Title nvarchar(50), StartDate datetime, EndDate datetime, PRIMARY KEY(EmployeeKey) );



END
