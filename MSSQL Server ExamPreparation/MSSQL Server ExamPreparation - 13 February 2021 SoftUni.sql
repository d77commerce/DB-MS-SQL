CREATE DATABASE [Bitbucket]
USE [Bitbucket]

CREATE TABLE Users(
Id INT PRIMARY KEY IDENTITY
,UserName VARCHAR(30) NOT NULL
,[Password] VARCHAR(30) NOT NULL
,Email VARCHAR(50) NOT NULL
)

CREATE TABLE Repositories (
Id INT PRIMARY KEY IDENTITY
,[Name] VARCHAR(50) NOT NULL
)

CREATE TABLE RepositoriesContributors(
RepositoryId INT FOREIGN KEY REFERENCES Repositories(Id)
,ContributorId INT FOREIGN KEY REFERENCES Users(Id)
,PRIMARY KEY(RepositoryId,ContributorId)
)
CREATE TABLE Issues(
Id INT  PRIMARY KEY IDENTITY
,Title VARCHAR(225) NOT NULL
,IssueStatus VARCHAR(6) not null
,RepositoryId INT FOREIGN KEY REFERENCES Repositories(Id )
,AssigneeId INT FOREIGN KEY REFERENCES Users(Id)
)
CREATE TABLE Commits(
Id INT PRIMARY KEY IDENTITY 
,[Message] VARCHAR(255) NOT NULL
,IssueId INT FOREIGN KEY REFERENCES Issues(Id)
,RepositoryId INT FOREIGN KEY REFERENCES Repositories(Id)
,ContributorId INT FOREIGN KEY REFERENCES Users(Id) 
)

CREATE TABLE Files(
Id INT PRIMARY KEY IDENTITY 
,[Name] VARCHAR(100)NOT NULL
,Size DECIMAL(16,2) NOT NULL
,ParentId INT FOREIGN KEY REFERENCES Files(Id)
,CommitId INT FOREIGN KEY REFERENCES Commits(Id)
)


SELECT Id,[Message],RepositoryId,ContributorId
FROM Commits
order by Id,[Message],RepositoryId,ContributorId


SELECT Id,[Name],Size
FROM Files
WHERE Size>1000 AND [Name] LIKE '%html%'
ORDER BY Size DESC,Id,[Name]

SELECT I.Id,UserName+' : '+Title AS IssueAssignee
FROM Issues AS I
LEFT JOIN Users AS U
ON I.AssigneeId = U.Id
ORDER BY I.Id DESC, IssueAssignee