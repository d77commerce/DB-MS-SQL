CREATE VIEW [V_EmployeesHiredAfter2000] AS
     SELECT [FIrstName],[LastName]
	   FROM [Employees]
      WHERE YEAR([HireDate]) > 2000