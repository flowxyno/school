USE leftoff;

-- inserting data into the users table
DELETE FROM users;
ALTER TABLE users auto_increment = 1;
INSERT INTO users (firstName, lastName, userName, passwordHash)
	VALUES
		('Tracy', 'Harvey', 'user1', 'hashedpassword1'),
        ('Starr', 'Harvey', 'user2', 'hashedpassword2'),
        ('Kelly', 'Tanner', 'user3', 'hashedpassword3')
	;
    
-- inserting data into the tags table
DELETE FROM tags;
ALTER TABLE tags auto_increment = 1;
INSERT INTO tags (tagname)
	VALUES
		('Anime'),
        ('Cartoons'),
        ('Tv Series')
	;