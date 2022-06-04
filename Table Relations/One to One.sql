	CREATE TABLE [Passports](
	[PassportID] INT PRIMARY KEY IDENTITY(101,1)
	,[PassportNumber] VARCHAR (20)
	) 
	GO

	CREATE TABLE [Persons](
	[PersonID] INT PRIMARY KEY IDENTITY
   ,[FirstName] NVARCHAR(30)
   ,[Salary] DECIMAL(10,2) NOT NULL
   ,[PassportID] INT FOREIGN KEY REFERENCES [Passports]([PassportID]) UNIQUE NOT NULL
	)
	GO
	INSERT INTO [Passports]([PassportNumber])
	    VALUES
		 ('TT454545')
		,('OO5543332')
		,('&&6534339')
GO
	INSERT INTO [Persons] (FirstName,Salary,PassportID)
	     VALUES
		 ('Misho',450.90,103)
		 ,('Pepa',250.60,102)
		 ,('Eftim',1000.00,101)
GO
SELECT * FROM [Persons]