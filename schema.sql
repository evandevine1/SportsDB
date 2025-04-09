DROP TABLE IF EXISTS Player;
DROP TABLE IF EXISTS Teams;
DROP TABLE IF EXISTS Venues;
DROP TABLE IF EXISTS Games;
DROP TABLE IF EXISTS Championships;
DROP TABLE IF EXISTS Team_Player;
DROP TABLE IF EXISTS Leagues;


CREATE TABLE Player (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    hometown VARCHAR(255),
    age INT,
    height DECIMAL(5,2),
    weight DECIMAL(5,2),
    hand VARCHAR(10),
    school VARCHAR(255),
    jerseyno INT,
    contract_amt DECIMAL(15,2),
    contract_l INT,
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);

CREATE TABLE Leagues (
    name VARCHAR(255) NOT NULL,
    commissioner VARCHAR(255),
    net_worth DECIMAL(15,2)
);

CREATE TABLE Teams (
    team_id SERIAL PRIMARY KEY,
    t_name VARCHAR(255) NOT NULL,
    city VARCHAR(255),
    state VARCHAR(255),
    league VARCHAR(100),
);

CREATE TABLE Venues (
    name VARCHAR(255) NOT NULL,
    city VARCHAR(255),
    type VARCHAR(255),
    team_id INT,
    capacity INT,
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);

CREATE TABLE Games (
    team1 INT,
    team2 INT,
    winner INT,
    loser INT,
    score VARCHAR(50),
    date DATE,
    time TIME,
    venue VARCHAR(255),
    FOREIGN KEY (team1) REFERENCES Teams(team_id),
    FOREIGN KEY (team2) REFERENCES Teams(team_id),
    FOREIGN KEY (winner) REFERENCES Teams(team_id),
    FOREIGN KEY (loser) REFERENCES Teams(team_id),
);

CREATE TABLE Championships (
   name VARCHAR(255) NOT NULL,
    year INT,
    winner INT,
    loser INT,
    score VARCHAR(50),
    mvp INT,
    league VARCHAR(255),
    FOREIGN KEY (winner) REFERENCES Teams(team_id),
    FOREIGN KEY (loser) REFERENCES Teams(team_id),
    FOREIGN KEY (mvp) REFERENCES Player(id)
);

CREATE TABLE Team_Player (
    team_id INT,
    player_id INT,
    PRIMARY KEY (team_id, player_id),
    FOREIGN KEY (team_id) REFERENCES Teams(team_id),
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
);
