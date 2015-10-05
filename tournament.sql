-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

\c tournament;

DROP TABLE if exists matches;
DROP TABLE if exists players;

CREATE TABLE players(player_id serial NOT NULL PRIMARY KEY,name text NOT NULL);


CREATE TABLE matches(match_id serial NOT NULL PRIMARY KEY,winner integer references players(player_id),loser integer references players(player_id));

