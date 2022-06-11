   SELECT [Name]
     FROM [Towns]
    WHERE DATALENGTH ([Name]) = 5 or DATALENGTH ([Name]) = 6
 ORDER BY [Name]
  