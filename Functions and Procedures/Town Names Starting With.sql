	CREATE OR  ALTER PROCEDURE usp_GetTownsStartingWith @param NVARCHAR(50)
	AS
	BEGIN
			SELECT  [Name] AS Town
			FROM Towns
			WHERE LEFT([Name],LEN(@param))= @param
	END