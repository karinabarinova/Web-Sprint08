
-- -- select all the Avengers, except the double-agent, and sort them by the total power indescending orde
-- -- SELECT hero_id, SUM(points) from powers 
-- -- GROUP BY hero_id, points ORDER BY SUM(points) DESC, hero_id
-- -- LIMIT 1;

-- SELECT * FROM heroes;
-- SELECT heroes.name FROM heroes;

-- SELECT heroes.name FROM heroes
-- LEFT JOIN powers ON(heroes.id = powers.hero_id);

-- SELECT powers.name, powers.points FROM powers
-- JOIN heroes ON(heroes.id = powers.hero_id);

-- SELECT SUM(powers.points) FROM powers
-- JOIN heroes ON(heroes.id = powers.hero_id);

-- SELECT SUM(powers.points) FROM powers
-- JOIN heroes ON(heroes.id = powers.hero_id) GROUP BY heroes.id;

-- SELECT heroes.id, heroes.name, SUM(powers.points) FROM powers
-- JOIN heroes ON(heroes.id = powers.hero_id) GROUP BY heroes.id
-- ORDER BY SUM(powers.points) DESC, heroes.id;

SELECT heroes.name, SUM(powers.points) FROM powers
JOIN heroes ON(heroes.id = powers.hero_id) GROUP BY heroes.id
ORDER BY SUM(powers.points) DESC, heroes.id
LIMIT 1;

-- select the weakest hero. A weak hero is the one who has the smallest defense (sum ofall defense skills)
SELECT heroes.name, SUM(powers.points) from heroes
JOIN powers ON (heroes.id = powers.hero_id)
WHERE powers.type = 'defense'
GROUP BY heroes.id
ORDER BY SUM(powers.points), heroes.id
LIMIT 1;

-- select all the Avengers, except the double-agent, and sort them by the total power in descending orde