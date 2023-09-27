DROP DATABASE IF EXISTS leftoff;

CREATE DATABASE IF NOT EXISTS leftoff;
USE leftoff;

CREATE TABLE users (		
   userID INT PRIMARY KEY,		
   firstName VARCHAR(50),		
   lastName VARCHAR(50),		
   userName VARCHAR(50), 		
   passwordHash VARCHAR(100)		
);		

CREATE TABLE genres (		
   genreID INT PRIMARY KEY,		
   genreName VARCHAR(50)		
);		

CREATE TABLE series (
   seriesID INT PRIMARY KEY,
   seriesName VARCHAR(100),
   synop TEXT,
   totalEpisodes INT,
   coverArt VARCHAR(255)
);

CREATE TABLE seriesGenre (
   seriesID INT, 
   genreID INT, 
   PRIMARY KEY (seriesID, genreID),
   FOREIGN KEY (seriesID) REFERENCES series(seriesID),
   FOREIGN KEY (genreID) REFERENCES genres(genreID)
);

CREATE TABLE episodes (
   episodeID INT PRIMARY KEY,
   seriesID INT,
   episodeNumber INT,
   episodeTitle VARCHAR(100),
   episodeSynop TEXT,
   lastWatched BOOLEAN default false,
   FOREIGN KEY (seriesID) REFERENCES series(seriesID)
);

CREATE TABLE seriesTrackers (
   trackerID INT PRIMARY KEY,
   userID INT,
   seriesID INT,
   episodeID INT,
   FOREIGN KEY (userID) REFERENCES users(userID),
   FOREIGN KEY (seriesID) REFERENCES series(seriesID), 
   FOREIGN KEY (episodeID) REFERENCES episodes(episodeID)
);
