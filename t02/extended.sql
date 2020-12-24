CREATE TABLE IF NOT EXISTS powers (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    hero_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    points INT NOT NULL,
    type ENUM('attack', 'defense') NOT NUll,
    FOREIGN KEY(hero_id) REFERENCES heroes(id) on delete cascade
);

CREATE TABLE IF NOT EXISTS races (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    hero_id INT NOT NULL,
    name TEXT(300) NOT NULL,
    FOREIGN KEY(hero_id) REFERENCES heroes(id) on delete cascade
);

CREATE TABLE IF NOT EXISTS teams (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    hero_id INT NOT NULL,
    name TEXT(300) NOT NULL,
    FOREIGN KEY(hero_id) REFERENCES heroes(id) on delete cascade
);