CREATE DATABASE ucode_web;
CREATE USER 'kbarinova'@'localhost' IDENTIFIED WITH mysql_native_password BY 'test1';
USE ucode_web;
GRANT ALL PRIVILEGES ON ucode_web TO 'kbarinova'@'localhost';
