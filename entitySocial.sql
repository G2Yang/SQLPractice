CREATE USER 'socialusr'@'localhost' IDENTIFIED BY 'socialpsw';

CREATE DATABASE socialdb
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;

GRANT ALL PRIVILEGES ON socialdb.* TO 'socialusr'@'localhost';

USE socialdb;

CREATE TABLE activities(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(40) NOT NULL UNIQUE,
    capacity INT(4) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE users(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(10) NOT NULL UNIQUE,
    age INT NOT NULL,
    activity_id INT,    
    PRIMARY KEY (id),
    CONSTRAINT fk_activity
    FOREIGN KEY (activity_id)
    REFERENCES activities(id)
    ON DELETE CASCADE
) ENGINE=InnoDB;

INSERT INTO activities(id,name,capacity) VALUES
    (1,"Hiking", 10),
    (2,"Volleyball", 24),
    (3,"Basketball", 24),
    (4,"Handball", 50),
    (5,"Skiing", 20),
    (6,"Soccer",36 );

INSERT INTO users(id,name,age,activity_id) VALUES 
    (1,"Yang", 20,1),
    (2,"Andrei", 40,1),
    (3,"Flores", 20,2),
    (4,"Alessandro",23,2),
    (5,"David", 20,3),
    (6,"Mario", 30,3),
    (7,"Roger", 21,5),
    (8,"Jona", 22,5),
    (9,"Marta", 21,6),
    (10,"Adrian",22,6)
    (11,"Maria",25,4);

