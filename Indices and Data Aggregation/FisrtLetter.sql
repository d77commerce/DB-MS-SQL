SELECT  LEFT([FirstName],1) AS [FisrtLetter]
    FROM [WizzardDeposits]

   GROUP BY LEFT([FirstName],1),[DepositGroup]
	HAVING [DepositGroup] = 'Troll Chest'



