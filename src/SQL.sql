# =====================================================================================
# Create Database

CREATE DATABASE community;
USE community;

# =====================================================================================
# Create table

CREATE TABLE `user` (
	`id`		INT UNSIGNED	NOT NULL	AUTO_INCREMENT	PRIMARY KEY,
	`email`		VARCHAR(320)	NOT NULL	UNIQUE,
    `user_id`	VARCHAR(32)		NOT NULL,
    `password`	VARCHAR(64)		NOT NULL
);

CREATE TABLE `board` (
	`id`		INT UNSIGNED	NOT NULL	AUTO_INCREMENT	PRIMARY KEY,
    `writer`	INT UNSIGNED	NOT NULL,
    `title`		TINYTEXT		NOT NULL,
    `content`	LONGTEXT,
    FOREIGN KEY (`writer`) REFERENCES `user` (`id`)
);

CREATE TABLE `category` (
	`id`		INT UNSIGNED	NOT NULL	AUTO_INCREMENT	PRIMARY KEY,
    `category`	VARCHAR(32)		NOT NULL	UNIQUE
);

CREATE TABLE `hashtag` (
	`id`		INT UNSIGNED	NOT NULL	AUTO_INCREMENT	PRIMARY KEY,
    `hashtag`	VARCHAR(32)		NOT NULL	UNIQUE
);

CREATE TABLE `board_category` (
	`id`	INT UNSIGNED	NOT NULL	AUTO_INCREMENT	PRIMARY KEY,
	`b_id`	INT UNSIGNED	NOT NULL,
    `c_id`	INT UNSIGNED	NOT NULL,
    FOREIGN KEY (`b_id`) REFERENCES `board` (`id`),
    FOREIGN KEY (`c_id`) REFERENCES `category` (`id`)
);

CREATE TABLE `board_hashtag` (
	`id`	INT UNSIGNED	NOT NULL	AUTO_INCREMENT	PRIMARY KEY,
	`b_id`	INT UNSIGNED	NOT NULL,
    `h_id`	INT UNSIGNED	NOT NULL,
    FOREIGN KEY (`b_id`) REFERENCES `board` (`id`),
    FOREIGN KEY (`h_id`) REFERENCES `hashtag` (`id`)
);

# =====================================================================================
# `user` CRUD

# Create
INSERT INTO `user` (`email`, `user_id`, `password`) VALUES
("admin@admin.com", "admin", "adminpw"),
("user@user.com", "user", "userpw"),
("user2@user.com", "user2", "user2pw");


# Read
SELECT 
    `id`, `email`, `user_id`
FROM
    `user`;


# Update
UPDATE `user` 
SET 
    `user_id` = 'user1'
WHERE
    `email` = 'user@user.com';


# Delete
DELETE FROM `user` 
WHERE
    `email` = 'user2@user.com';

# =====================================================================================
# Functions

# Allow Functions
SET GLOBAL LOG_BIN_TRUST_FUNCTION_CREATORS = 1;

# GET_ID(email)
DELIMITER \\
CREATE FUNCTION `GET_ID`(_EMAIL VARCHAR(320)) RETURNS int unsigned
BEGIN
	DECLARE _ID INT UNSIGNED;

    SET _ID = (SELECT `id` FROM `user` WHERE `email` = _EMAIL LIMIT 1);

RETURN _ID;
END
\\

# =====================================================================================
# `board` CRUD

# Create
INSERT INTO `board`(`writer`, `title`, `content`) VALUES
(
	(SELECT GET_ID("admin@admin.com")),
    "test title",
    "test content"
),
(
	(SELECT GET_ID("user@user.com")),
    "title",
    "content"
);


# Read
SELECT * FROM `board`;


# Update
UPDATE `board` 
SET 
    `title` = 'new title',
    `content` = 'new content'
WHERE
    `id` = 1;


# Delete
DELETE FROM `board` 
WHERE
    `id` = 2;

# =====================================================================================
# `category` CRUD

# Create
INSERT INTO `category`(`category`) VALUES
("test"),
("test2"),
("test3"),
("test5");


# Read
SELECT * FROM `category`;


# Update
UPDATE `category` 
SET 
    `category` = 'test4'
WHERE
    `category` = 'test5';


# Delete
DELETE FROM `category` 
WHERE
    `category` = 'test4';

# =====================================================================================
# `hashtag` CRUD

# Create
INSERT INTO `hashtag`(`hashtag`) VALUES
("test"),
("test2"),
("test3"),
("test5");


# Read
SELECT * FROM `hashtag`;


# Update
UPDATE `hashtag` 
SET 
    `hashtag` = 'test4'
WHERE
    `hashtag` = 'test5';


# Delete
DELETE FROM `hashtag` 
WHERE
    `hashtag` = 'test4';

# =====================================================================================
# `board_category` CRUD

# Create
INSERT INTO `board_category`(`b_id`, `c_id`) VALUES
(1, 1),
(1, 3);


# Read
SELECT * FROM `board_category`;


# Update
UPDATE `board_category` 
SET 
    `c_id` = 2
WHERE
    `b_id` = 1 AND `c_id` = 3;


# Delete
DELETE FROM `board_category` 
WHERE
    `b_id` = 1 AND `c_id` = 2;

# =====================================================================================
# `board_hashtag` CRUD

# Create
INSERT INTO `board_hashtag`(`b_id`, `h_id`) VALUES
(1, 1),
(1, 3);


# Read
SELECT * FROM `board_hashtag`;


# Update
UPDATE `board_hashtag` 
SET 
    `h_id` = 2
WHERE
    `b_id` = 1 AND `h_id` = 3;


# Delete
DELETE FROM `board_hashtag` 
WHERE
    `b_id` = 1 AND `h_id` = 2;

# =====================================================================================