CREATE TABLE Crew (
    crew_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    species VARCHAR(50),
    `rank` VARCHAR(50),
    birth_year INT
);

CREATE TABLE Missions (
    mission_id INT AUTO_INCREMENT PRIMARY KEY,
    mission_name VARCHAR(100),
    destination VARCHAR(100),
    start_date DATE,
    end_date DATE
);

CREATE TABLE Crew_Missions (
    crew_id INT,
    mission_id INT,
    role VARCHAR(50),
    FOREIGN KEY (crew_id) REFERENCES Crew(crew_id),
    FOREIGN KEY (mission_id) REFERENCES Missions(mission_id)
);

INSERT INTO Crew (name, species, `rank`, birth_year)
VALUES
('Christian', 'Yokai', 'Kapitein', 2295),
('Julien', 'Andoriaan', 'Chef', 2312),
('Narin', 'Mens', 'Wetenschapper', 2305);

INSERT INTO Missions (mission_name, destination, start_date, end_date)
VALUES
('Verkenning Yokai World', 'Springdale', '2345-03-12', '2345-06-10'),
('Verkenning BeanBean Kingdom', 'Mushroom Kingdom', '2345-07-01', '2345-08-15');

INSERT INTO Crew_Missions (crew_id, mission_id, role)
VALUES
(1, 1, 'Commandant'),
(1, 2, 'Observer'),
(2, 1, 'Communicatieofficier'),
(2, 2, 'Diplomaat'),
(3, 1, 'Wetenschapper');

SELECT * FROM Crew;

SELECT * FROM Crew
WHERE species = 'Andoriaan' AND birth_year > 2300;


SELECT Crew.name, Crew_Missions.role
FROM Crew
JOIN Crew_Missions ON Crew.crew_id = Crew_Missions.crew_id;

SELECT Crew.name, Crew_Missions.role, Missions.mission_name
FROM Crew
JOIN Crew_Missions ON Crew.crew_id = Crew_Missions.crew_id
JOIN Missions ON Crew_Missions.mission_id = Missions.mission_id;

SELECT Missions.mission_name, Crew.name
FROM Missions
JOIN Crew_Missions ON Missions.mission_id = Crew_Missions.mission_id
JOIN Crew ON Crew.crew_id = Crew_Missions.crew_id
WHERE Missions.mission_id = 1;

SELECT Missions.mission_name, Crew.name
FROM Missions
JOIN Crew_Missions ON Missions.mission_id = Crew_Missions.mission_id
JOIN Crew ON Crew.crew_id = Crew_Missions.crew_id
WHERE Missions.mission_id = 2;

SELECT *
FROM Crew
ORDER BY birth_year DESC
LIMIT 2;

SELECT name, 2400 - birth_year AS leeftijd
FROM Crew;

SELECT species, COUNT(*) AS aantal
FROM Crew
GROUP BY species;
