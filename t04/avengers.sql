SELECT * FROM heroes 
INNER JOIN powers ON (heroes.id = powers.hero_id);