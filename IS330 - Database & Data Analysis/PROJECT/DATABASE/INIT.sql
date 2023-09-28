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

CREATE TABLE tags (		
   tagID INT PRIMARY KEY,		
   tagName VARCHAR(50)		
);		

CREATE TABLE series (
   seriesID INT PRIMARY KEY,
   seriesName VARCHAR(100),
   seriesTagID INT,
   synop TEXT,
   totalEpisodes INT,
   coverArt VARCHAR(255),
   FOREIGN KEY (seriesTagID) REFERENCES seriesTags(seriesTagID)
);

CREATE TABLE seriesTags (
   seriesID INT, 
   tagID INT, 
   seriesTagID INT PRIMARY KEY,
   FOREIGN KEY (seriesID) REFERENCES series(seriesID),
   FOREIGN KEY (genreID) REFERENCES tags(tagID)
);

CREATE TABLE episodes (
   episodeID INT PRIMARY KEY,
   seriesID INT,
   episodeNumber INT,
   episodeTitle VARCHAR(100),
   episodeSynop TEXT,
   FOREIGN KEY (seriesID) REFERENCES series(seriesID)
);

CREATE TABLE seriesTrackers (
   trackerID INT PRIMARY KEY,
   userID INT,
   seriesID INT,
   episodeID INT,
   lastWatched DATETIME,
   FOREIGN KEY (userID) REFERENCES users(userID),
   FOREIGN KEY (seriesID) REFERENCES series(seriesID), 
   FOREIGN KEY (episodeID) REFERENCES episodes(episodeID)
);
