create database novels; 
create user 'novels'@'localhost' identified with mysql_native_password by 'novel$';
grant all on novels.* to 'insurance'@'localhost';
use novels;
create table authors (
	id INT auto_increment,
    name VARCHAR(255),
    createdAt DATETIME DEFAULT NOW(),
    updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
    deletedAt DATETIME,
    primary key(id)
);
create table genres (
	id INT auto_increment,
    type VARCHAR(255),
    createdAt DATETIME DEFAULT NOW(),
    updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
    deletedAt DATETIME,
    primary key(id)
);
create table novels (
	id INT auto_increment,
    title VARCHAR(255),
    authorId INT,
    genreId INT, 
    createdAt DATETIME DEFAULT NOW(),
    updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
    deletedAt DATETIME,
    primary key(id),
    foreign key (authorId) references authors (id),
    foreign key (genreId) references genres(id)
);
insert into authors (name) values ("Bram Stoker");
insert into authors (name) values ("Oscar Wilde");
insert into authors (name) values ("Alice Walker");
insert into authors (name) values ("Leo Tolstoy");
insert into authors (name) values ("Charles Dickens");
insert into authors (name) values ("Arthur Miller");
insert into authors (name) values ("Alexandre Dumas");
insert into authors (name) values ("Arthur Conan Doyle");
insert into authors (name) values ("Robert Louis Stevenson");
insert into authors (name) values ("Fyodor Dostoyevsky");
insert into authors (name) values ("Agatha Christie");
insert into authors (name) values ("Ray Bradbury");
insert into authors (name) values ("George Orwell");
insert into authors (name) values ("H.G. Wells");
insert into authors (name) values ("Chinua Achebe");

INSERT INTO genres (type) VALUES ("Adventure");
INSERT INTO genres (type) VALUES ("African Literature");
INSERT INTO genres (type) VALUES ("Crime");
INSERT INTO genres (type) VALUES ("Drama");
INSERT INTO genres (type) VALUES ("Dystopia");
INSERT INTO genres (type) VALUES ("Fantasy");
INSERT INTO genres (type) VALUES ("Fiction");
INSERT INTO genres (type) VALUES ("French Literature");
INSERT INTO genres (type) VALUES ("Gothic");
INSERT INTO genres (type) VALUES ("Historical Fiction");
INSERT INTO genres (type) VALUES ("Horror");
INSERT INTO genres (type) VALUES ("Mystery");
INSERT INTO genres (type) VALUES ("Plays");
INSERT INTO genres (type) VALUES ("Russian Literature");
INSERT INTO genres (type) VALUES ("Science Fiction");
INSERT INTO genres (type) VALUES ("Thriller");
INSERT INTO genres (type) VALUES ("Time Travel");
INSERT INTO genres (type) VALUES ("War");

show tables;
select * from authors;
select * from genres;

INSERT INTO novels (title, authorId) VALUES ("Bram Stoker", 1);
INSERT INTO novels (title, authorId) VALUES ("Oscar Wilde", 2);
INSERT INTO novels (title, authorId) VALUES ("Alice Walker", 3);
INSERT INTO novels (title, authorId) VALUES ("Leo Tolstoy", 4);
INSERT INTO novels (title, authorId) VALUES ("Charles Dickens", 5);
INSERT INTO novels (title, authorId) VALUES ("Arthur Miller", 6);
INSERT INTO novels (title, authorId) VALUES ("Alexandre Dumas", 7);
INSERT INTO novels (title, authorId) VALUES ("Arthur Conan Doyle", 8);
INSERT INTO novels (title, authorId) VALUES ("Robert Louis Stevenson", 9);
INSERT INTO novels (title, authorId) VALUES ("Fyodor Dostoyevsky", 10);
INSERT INTO novels (title, authorId) VALUES ("Agatha Christie", 11);
INSERT INTO novels (title, authorId) VALUES ("Ray Bradbury", 12);
INSERT INTO novels (title, authorId) VALUES ("George Orwell", 13);
INSERT INTO novels (title, authorId) VALUES ("H.G. Wells", 14);
INSERT INTO novels (title, authorId) VALUES ("Chinua Achebe", 15);

DELETE FROM novels WHERE genreId;
ALTER TABLE novels
DROP FOREIGN KEY (genreId);