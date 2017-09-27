-- MAIN TASKS
-- 1. All columns for players from the New York Knicks (NYK)
SELECT * FROM players WHERE team = 'NYK';

-- 2. All columns for all players from the Indiana Pacers (IND) who are under 26 years old
SELECT * FROM players WHERE team = 'IND' AND age <= 26;

-- 3. All columns for all players, ordered from least points scored to most points scored
SELECT * FROM players ORDER BY points ASC

-- 4. Name and Points per game (points/games), for the players with the top 20 points per game
SELECT name, (points / games) AS ppg FROM players
ORDER BY ppg DESC LIMIT 20;

-- 5. The average age for all players
SELECT ROUND(AVG(age), 2) FROM players;

-- 6. The average age for all players on the Oklahoma City Thunder (OKC)
SELECT ROUND(AVG(age), 2) FROM players WHERE team = 'OKC';

-- 7. The average age for all players who played more than 40 games
SELECT ROUND(AVG(age), 2) FROM players WHERE games >= 40;

-- 8. The team and total points scored from all players on that team (team points), ordered from most team points to least
SELECT team, SUM(points) FROM players
GROUP BY team ORDER BY team ASC;

-- BONUS TASKS
-- 1. Age and the average points per game for that age, ordered from youngest to oldest
SELECT age, ROUND(AVG(points / games), 2) AS ppg FROM players
GROUP BY age ORDER BY age ASC;

-- 2. Team and the number of players who score above 12 points per game on that team, ordered from most to least
SELECT team, COUNT(players) AS ppg_above_12 FROM players
WHERE points/games > 12 GROUP BY team ORDER BY ppg_above_12 DESC;

-- (To get ppg for each player in team)
SELECT name, ROUND(AVG(points / games), 2) AS ppg FROM players
WHERE team = '(Whatever)' GROUP BY name;

-- (Trystan's query - I had something similar too and wanted to find out why it's returning different results)
SELECT team, count(points / games) AS ppg_12 FROM players
GROUP BY team
ORDER BY ppg_12 DESC;
