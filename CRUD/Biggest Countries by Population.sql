SELECT top (30)
[CountryName],[Population] 
FROM [Countries]
WHERE [ContinentCode]='EU'
ORDER BY [Population] DESC,[CountryName]