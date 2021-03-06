	CREATE OR  ALTER FUNCTION [ufn_GetSalaryLevel](@salary DECIMAL(18,4))
	RETURNS VARCHAR(20)
	AS
BEGIN
	DECLARE @result varchar(10)
 
	IF @salary<30000 
	BEGIN
	set @result ='Low'
	END
	IF @salary between 30000 and 50000 
	BEGIN
	SET @result='Average'
	END	
	IF @salary > 50000 
	BEGIN
	SET @result='High'
	END	
	
		RETURN @result
END

GO
-- HOW TO USE
SELECT [FirstName],
	[dbo].[ufn_GetSalaryLevel](Salary) AS [LAVEL SALARY]
FROM [Employees]

go

CREATE OR ALTER PROCEDURE usp_EmployeesBySalaryLevel (@level VARCHAR(10))
AS
BEGIN
SELECT [FirstName],[LastName]
FROM [Employees]
WHERE [dbo].[ufn_GetSalaryLevel](Salary) = @level 
END