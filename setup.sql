ALTER USER root@localhost IDENTIFIED BY 'test';
CREATE USER 'test'@'localhost' IDENTIFIED BY 'SENSbase11@';
CREATE DATABASE docket;
USE docket;
GRANT ALL PRIVILEGES ON docket.* TO 'test'@'localhost';
Quit;
