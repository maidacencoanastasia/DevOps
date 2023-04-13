CREATE DATABASE bookstore;

USE bookstore;

CREATE TABLE books (
isbn CHAR(20) PRIMARY KEY, 
title VARCHAR(50),
author_id INT,
publisher_id INT,
year_pub CHAR(4),
description TEXT );


CREATE TABLE authors
(author_id INT AUTO_INCREMENT PRIMARY KEY,
name_last VARCHAR(50),
name_first VARCHAR(50),
country VARCHAR(50) );


INSERT INTO authors
(name_last, name_first, country)
VALUES('Kafka', 'Franz', 'Czech Republic');

-- Author 2
INSERT INTO authors (name_last, name_first, country)
VALUES ('Austen', 'Jane', 'United Kingdom');

-- Author 3
INSERT INTO authors (name_last, name_first, country)
VALUES ('García Márquez', 'Gabriel', 'Colombia');

-- Author 4
INSERT INTO authors (name_last, name_first, country)
VALUES ('Murakami', 'Haruki', 'Japan');

-- Author 5
INSERT INTO authors (name_last, name_first, country)
VALUES ('Morrison', 'Toni', 'United States');

-- Author 6
INSERT INTO authors (name_last, name_first, country)
VALUES ('Shakespeare', 'William', 'United Kingdom');

INSERT INTO books
(title, author_id, isbn, year_pub)
VALUES('The Castle', '1', '0805211063', '1998'),
('The Trial', '1', '0805210407', '1995'),
('The Metamorphosis', '1', '0553213695', '1995'),
('America', '1', '0805210644', '1995');


-- Books by Jane Austen
INSERT INTO books (title, author_id, isbn, year_pub)
VALUES ('Pride and Prejudice', '2', '0141439513', '2003');

-- Books by Gabriel García Márquez
INSERT INTO books (title, author_id, isbn, year_pub)
VALUES ('One Hundred Years of Solitude', '3', '0060883286', '2006');

-- Books by Haruki Murakami
INSERT INTO books (title, author_id, isbn, year_pub)
VALUES ('Norwegian Wood', '4', '0307950628', '2011');

-- Books by Toni Morrison
INSERT INTO books (title, author_id, isbn, year_pub)
VALUES ('Beloved', '5', '1400033411', '2004');

-- Books by William Shakespeare
INSERT INTO books (title, author_id, isbn, year_pub)
VALUES ('Hamlet', '6', '074347712X', '2003');



-- Update description for Franz Kafka's book
UPDATE books
SET description = 'The Castle is a novel by Franz Kafka that tells the story of a protagonist named K. who struggles to gain access to the mysterious authorities of a castle that governs the village where he is trying to settle.'

WHERE title = 'The Castle';

-- Update description for Jane Austen's book
UPDATE books
SET description = 'Pride and Prejudice is a novel by Jane Austen that tells the story of Elizabeth Bennet, a young woman whose family is trying to find suitable husbands for her and her sisters. The novel explores themes of love, marriage, class, and gender.'

WHERE title = 'Pride and Prejudice';

-- Update description for Gabriel García Márquez's book
UPDATE books
SET description = 'One Hundred Years of Solitude is a novel by Gabriel García Márquez that tells the story of the Buendía family over several generations in the fictional town of Macondo. The novel explores themes of solitude, memory, family, and the cyclical nature of time.'

WHERE title = 'One Hundred Years of Solitude';

-- Update description for Haruki Murakami's book
UPDATE books
SET description = 'Norwegian Wood is a novel by Haruki Murakami that tells the story of Toru Watanabe, a young man who is torn between his love for two women in 1960s Japan. The novel explores themes of loss, nostalgia, and the search for identity.'

WHERE title = 'Norwegian Wood';

-- Update description for Toni Morrison's book
UPDATE books
SET description = 'Beloved is a novel by Toni Morrison that tells the story of Sethe, a former slave who is haunted by the memories of her past and the ghost of her dead daughter. The novel explores themes of trauma, memory, and the legacy of slavery in America.'

WHERE title = 'Beloved';

-- Update description for William Shakespeare's book
UPDATE books
SET description = 'Hamlet is a tragedy by William Shakespeare that tells the story of Prince Hamlet of Denmark, who seeks revenge against his uncle Claudius for killing his father and marrying his mother. The play explores themes of revenge, madness, and the nature of existence.'

WHERE title = 'Hamlet';



