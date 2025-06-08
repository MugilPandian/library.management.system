-- Show all existing databases
SHOW DATABASES;

-- Create a new database named 'Library'
CREATE DATABASE Library;

-- Select the 'Library' database for use
USE Library;

-- ========================================
-- Create 'Author' table to store author details
-- ========================================
CREATE TABLE Author (
    AuthorID INT NOT NULL AUTO_INCREMENT,         -- Unique identifier for each author
    Name VARCHAR(255) NOT NULL,             -- Author's full name
    Country VARCHAR(255),                         -- Author's country of origin
    PRIMARY KEY (AuthorID)                        -- Set AuthorID as Primary Key
);

-- ========================================
-- Create 'Publisher' table to store publisher details
-- ========================================
CREATE TABLE Publisher (
    PublisherID INT NOT NULL AUTO_INCREMENT,      -- Unique identifier for each publisher
    Name VARCHAR(255) NOT NULL,                   -- Publisher name
    PRIMARY KEY (PublisherID)                     -- Set PublisherID as Primary Key
);

-- ========================================
-- Create 'Genre' table to store book genres
-- ========================================
CREATE TABLE Genre (
    GenreID INT NOT NULL AUTO_INCREMENT,          -- Unique identifier for each genre
    Name VARCHAR(255) NOT NULL,                  -- Genre name
    PRIMARY KEY (GenreID)                         -- Set GenreID as Primary Key
);

-- ========================================
-- Create 'Books' table to store book details
-- ========================================
CREATE TABLE Books (
    BookID INT NOT NULL AUTO_INCREMENT,           -- Unique identifier for each book
    Title VARCHAR(255) NOT NULL,                  -- Title of the book
    ISBN VARCHAR(32),                             -- ISBN number (unique)
    AuthorID INT NOT NULL,                        -- Foreign key: refers to Author table
    GenreID INT NOT NULL,                         -- Foreign key: refers to Genre table
    TotPages INT,                                 -- Total number of pages
    Synopsis VARCHAR(255),                        -- Short description of the book
    PublishedDate DATE,                           -- Year the book was published
    PurchasedDate DATE,                           -- Year the book was purchased
    PublisherID INT NOT NULL,                     -- Foreign key: refers to Publisher table
    PRIMARY KEY (BookID),                         -- Set BookID as Primary Key
    UNIQUE (ISBN)                                 -- Ensure ISBN is unique across books
);

-- ========================================
-- Add Foreign Key Constraints to 'Books' table
-- ========================================

-- Link AuthorID in Books to AuthorID in Author
ALTER TABLE Books
ADD CONSTRAINT FK_AuthorBooks
FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID);

-- Link PublisherID in Books to PublisherID in Publisher
ALTER TABLE Books
ADD CONSTRAINT FK_PublisherBooks
FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID);

-- Link GenreID in Books to GenreID in Genre
ALTER TABLE Books
ADD CONSTRAINT FK_GenreBooks
FOREIGN KEY (GenreID) REFERENCES Genre(GenreID);