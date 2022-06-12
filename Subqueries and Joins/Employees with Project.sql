SELECT TOP(5) [E].[EmployeeID],[E].FirstName,[P].[Name] AS [ProjectName]
 FROM [Employees] AS [E]
 LEFT JOIN [EmployeesProjects] AS [EP]
   ON [E].[EmployeeID] = [EP].[EmployeeID]
   LEFT JOIN [Projects] AS [P]
   ON [EP].[ProjectID]=[P].ProjectID
 WHERE [p].[StartDate] > '2002-08-13' AND [P].[EndDate] IS NULL
 ORDER BY [E].[EmployeeID]