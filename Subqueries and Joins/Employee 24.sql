SELECT  [E].[EmployeeID],[E].FirstName,[ProjectName] =  
CASE
WHEN([P].[StartDate]>='2005-01-01') THEN NULL
ELSE [P].[Name]
END

 FROM [Employees] AS [E]
 LEFT JOIN [EmployeesProjects] AS [EP]
   ON [E].[EmployeeID] = [EP].[EmployeeID]
   LEFT JOIN [Projects] AS [P]
   ON [EP].[ProjectID]=[P].ProjectID
 WHERE [E].EmployeeID = 24
