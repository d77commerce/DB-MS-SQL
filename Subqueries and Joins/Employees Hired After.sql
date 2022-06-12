SELECT   [E].[FirstName],[E].[LastName],[E].[HireDate],[D].[Name] AS[DepName]
FROM     [Employees] AS [E]
LEFT JOIN [Departments] AS [D]
ON       [E].DepartmentID = [D].[DepartmentID]
WHERE    [D].[Name] IN('Sales','Finance')
ORDER BY [E].[HireDate] 