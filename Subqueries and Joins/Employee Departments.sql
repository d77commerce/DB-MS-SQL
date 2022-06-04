SELECT TOP (5)
[EmployeeID],[FirstName],[Salary],[d].[Name] AS [DepartmentName]
      FROM [Employees] AS [e]
INNER JOIN [Departments] AS [d]
        ON [e].[DepartmentID]=[d].[DepartmentID]
	 WHERE [e].[Salary]>15000
  ORDER BY [d].[DepartmentID]