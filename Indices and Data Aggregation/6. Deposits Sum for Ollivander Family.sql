USE Gringotts

GO

  SELECT [DepositGroup] 
    ,SUM([DepositAmount]) AS [TotalSum]
    FROM WizzardDeposits
   WHERE [MagicWandCreator] = 'Ollivander family'
GROUP BY [DepositGroup]

select * from WizzardDeposits

SELECT [DepositGroup],[MagicWandCreator]

FROM WizzardDeposits