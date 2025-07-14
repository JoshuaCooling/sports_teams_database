use sports_team_database

SELECT p.Name AS Player_Name, t.Name AS Team_Name, p.Salary
FROM Player p
JOIN Player_Team pt ON p.Player_ID = pt.Player_ID
JOIN Team t ON pt.Team_ID = t.Team_ID;

SELECT m.Match_Date, t1.Name AS Home_Team, t2.Name AS Away_Team, m.Result
FROM Matchs m
JOIN Team t1 ON m.Home_Team = t1.Team_ID
JOIN Team t2 ON m.Away_Team = t2.Team_ID;

SELECT s.Name AS Stadium_Name, s.Location, s.Capacity, t.Name AS Team_Name
FROM Stadium s
JOIN Team t ON s.Home_Team = t.Team_ID;

SELECT Name
FROM Player
WHERE Age > 25;

SELECT Match_Date, Location
FROM Matchs
ORDER BY Match_Date;
