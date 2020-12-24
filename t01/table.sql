CREATE TABLE IF NOT EXISTS heroes (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL UNIQUE,
    description TEXT NOT NULL,
    race VARCHAR(255) NOT NULL DEFAULT 'human',
    class_role ENUM('tank', 'healer', 'dps') NOT NULL
);
