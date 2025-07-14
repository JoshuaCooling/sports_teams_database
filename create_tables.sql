use sports_team_database

CREATE TABLE Player (
    Player_ID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Age INT NOT NULL,
    Position VARCHAR(100) NOT NULL,
    Nationality VARCHAR(100) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Team (
    Team_ID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    City VARCHAR(100) NOT NULL,
    Coach VARCHAR(255) NOT NULL,
    League VARCHAR(100) NOT NULL
);

CREATE TABLE Matchs (
    Match_ID INT PRIMARY KEY,
    Match_Date DATE NOT NULL,
    Location VARCHAR(255) NOT NULL,
    Home_Team INT,
    Away_Team INT,
    Result VARCHAR(100) NOT NULL,
    FOREIGN KEY (Home_Team) REFERENCES Team(Team_ID),
    FOREIGN KEY (Away_Team) REFERENCES Team(Team_ID)
);

CREATE TABLE Stadium (
    Stadium_ID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Location VARCHAR(255) NOT NULL,
    Capacity INT NOT NULL,
    Home_Team INT,
    FOREIGN KEY (Home_Team) REFERENCES Team(Team_ID)
);

CREATE TABLE Player_Team (
    Player_ID INT,
    Team_ID INT,
    Contract_Start_Date DATE NOT NULL,
    Contract_End_Date DATE NOT NULL,
    Jersey_Number INT NOT NULL,
    PRIMARY KEY (Player_ID, Team_ID),
    FOREIGN KEY (Player_ID) REFERENCES Player(Player_ID),
    FOREIGN KEY (Team_ID) REFERENCES Team(Team_ID)
);

CREATE TABLE Team_Match (
    Team_ID INT,
    Match_ID INT,
    Score INT NOT NULL,
    Goals_Scored INT NOT NULL,
    PRIMARY KEY (Team_ID, Match_ID),
    FOREIGN KEY (Team_ID) REFERENCES Team(Team_ID),
    FOREIGN KEY (Match_ID) REFERENCES Matchs(Match_ID)
);

CREATE TABLE Team_Stadium (
    Team_ID INT,
    Stadium_ID INT,
    Rent_Amount DECIMAL(10, 2) NOT NULL,
    Lease_Start_Date DATE NOT NULL,
    Lease_End_Date DATE NOT NULL,
    PRIMARY KEY (Team_ID, Stadium_ID),
    FOREIGN KEY (Team_ID) REFERENCES Team(Team_ID),
    FOREIGN KEY (Stadium_ID) REFERENCES Stadium(Stadium_ID)
);

INSERT INTO Player (Player_ID, Name, Age, Position, Nationality, Salary)
VALUES (1, 'John Doe', 25, 'Forward', 'USA', 50000.00);

INSERT INTO Player (Player_ID, Name, Age, Position, Nationality, Salary)
VALUES (2, 'Jane Smith', 28, 'Midfielder', 'England', 60000.00);

INSERT INTO Player (Player_ID, Name, Age, Position, Nationality, Salary)
VALUES (3, 'Mike Johnson', 30, 'Defender', 'Spain', 55000.00);

INSERT INTO Player (Player_ID, Name, Age, Position, Nationality, Salary)
VALUES (4, 'Emily Brown', 24, 'Goalkeeper', 'Germany', 52000.00);

INSERT INTO Player (Player_ID, Name, Age, Position, Nationality, Salary)
VALUES (5, 'David Martinez', 27, 'Striker', 'Argentina', 58000.00);



INSERT INTO Team (Team_ID, Name, City, Coach, League)
VALUES (1, 'Team A', 'New York', 'Coach X', 'MLS');

INSERT INTO Team (Team_ID, Name, City, Coach, League)
VALUES (2, 'Team B', 'London', 'Coach Y', 'Premier League');

INSERT INTO Team (Team_ID, Name, City, Coach, League)
VALUES (3, 'Team C', 'Barcelona', 'Coach Z', 'La Liga');

INSERT INTO Team (Team_ID, Name, City, Coach, League)
VALUES (4, 'Team D', 'Berlin', 'Coach W', 'Bundesliga');

INSERT INTO Team (Team_ID, Name, City, Coach, League)
VALUES (5, 'Team E', 'Buenos Aires', 'Coach V', 'Primera Division');


INSERT INTO Matchs (Match_ID, Match_Date, Location, Home_Team, Away_Team, Result)
VALUES (1, DATE '2024-04-20', 'Stadium A', 1, 2, '2-1');

INSERT INTO Matchs (Match_ID, Match_Date, Location, Home_Team, Away_Team, Result)
VALUES (2, DATE '2024-04-22', 'Stadium B', 3, 4, '0-0');

INSERT INTO Matchs (Match_ID, Match_Date, Location, Home_Team, Away_Team, Result)
VALUES (3, DATE '2024-04-24', 'Stadium C', 5, 1, '3-2');

INSERT INTO Matchs (Match_ID, Match_Date, Location, Home_Team, Away_Team, Result)
VALUES (4, DATE '2024-04-26', 'Stadium D', 2, 3, '1-3');

INSERT INTO Matchs (Match_ID, Match_Date, Location, Home_Team, Away_Team, Result)
VALUES (5, DATE '2024-04-28', 'Stadium E', 4, 5, '2-2');



INSERT INTO Stadium (Stadium_ID, Name, Location, Capacity, Home_Team)
VALUES (1, 'Stadium A', 'New York', 50000, 1);

INSERT INTO Stadium (Stadium_ID, Name, Location, Capacity, Home_Team)
VALUES (2, 'Stadium B', 'London', 60000, 2);

INSERT INTO Stadium (Stadium_ID, Name, Location, Capacity, Home_Team)
VALUES (3, 'Stadium C', 'Barcelona', 70000, 3);

INSERT INTO Stadium (Stadium_ID, Name, Location, Capacity, Home_Team)
VALUES (4, 'Stadium D', 'Berlin', 55000, 4);

INSERT INTO Stadium (Stadium_ID, Name, Location, Capacity, Home_Team)
VALUES (5, 'Stadium E', 'Buenos Aires', 45000, 5);


INSERT INTO Player_Team (Player_ID, Team_ID, Contract_Start_Date, Contract_End_Date, Jersey_Number)
VALUES (1, 1, DATE '2024-01-01', DATE '2024-12-31', 10);

INSERT INTO Player_Team (Player_ID, Team_ID, Contract_Start_Date, Contract_End_Date, Jersey_Number)
VALUES (2, 2, DATE '2024-02-01', DATE '2024-12-31', 7);

INSERT INTO Player_Team (Player_ID, Team_ID, Contract_Start_Date, Contract_End_Date, Jersey_Number)
VALUES (3, 3, DATE '2024-03-01', DATE '2024-12-31', 5);

INSERT INTO Player_Team (Player_ID, Team_ID, Contract_Start_Date, Contract_End_Date, Jersey_Number)
VALUES (4, 4, DATE '2024-04-01', DATE '2024-12-31', 1);

INSERT INTO Player_Team (Player_ID, Team_ID, Contract_Start_Date, Contract_End_Date, Jersey_Number)
VALUES (5, 5, DATE '2024-05-01', DATE '2024-12-31', 9);



INSERT INTO Team_Match (Team_ID, Match_ID, Score, Goals_Scored)
VALUES (1, 1, 2, 2);

INSERT INTO Team_Match (Team_ID, Match_ID, Score, Goals_Scored)
VALUES (2, 1, 1, 1);

INSERT INTO Team_Match (Team_ID, Match_ID, Score, Goals_Scored)
VALUES (3, 2, 0, 0);

INSERT INTO Team_Match (Team_ID, Match_ID, Score, Goals_Scored)
VALUES (4, 2, 0, 0);

INSERT INTO Team_Match (Team_ID, Match_ID, Score, Goals_Scored)
VALUES (5, 3, 3, 3);


INSERT INTO Team_Stadium (Team_ID, Stadium_ID, Rent_Amount, Lease_Start_Date, Lease_End_Date)
VALUES (1, 1, 10000.00, DATE '2024-01-01', DATE '2024-12-31');

INSERT INTO Team_Stadium (Team_ID, Stadium_ID, Rent_Amount, Lease_Start_Date, Lease_End_Date)
VALUES (2, 2, 15000.00, DATE '2024-01-01', DATE '2024-12-31');

INSERT INTO Team_Stadium (Team_ID, Stadium_ID, Rent_Amount, Lease_Start_Date, Lease_End_Date)
VALUES (3, 3, 20000.00, DATE '2024-01-01', DATE '2024-12-31');

INSERT INTO Team_Stadium (Team_ID, Stadium_ID, Rent_Amount, Lease_Start_Date, Lease_End_Date)
VALUES (4, 4, 12000.00, DATE '2024-01-01', DATE '2024-12-31');

INSERT INTO Team_Stadium (Team_ID, Stadium_ID, Rent_Amount, Lease_Start_Date, Lease_End_Date)
VALUES (5, 5, 9000.00, DATE '2024-01-01', DATE '2024-12-31');
