	CREATE OR  ALTER PROCEDURE [usp_GetEmployeesSalaryAboveNumber] @mSalary DECIMAL(18,4)
	AS
	BEGIN
			SELECT [FirstName],[LastName]
			FROM Employees
			WHERE [Salary]>=@mSalary
	END