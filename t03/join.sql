-- get all the heroes with their team name. Should be displayed as NULL if the hero hasno team
SELECT * FROM heroes LEFT OUTER JOIN teams
ON (heroes.id = teams.hero_id);

SELECT * FROM heroes LEFT OUTER JOIN powers
ON (heroes.id = powers.hero_id);

SELECT * FROM heroes 
INNER JOIN teams ON (heroes.id = teams.hero_id)
INNER JOIN powers ON (heroes.id = powers.hero_id);
