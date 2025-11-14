use librarydb;

-- Insert Categories
INSERT INTO Categories (category_name) VALUES
('Fiction'), ('Science'), ('History');

select * from Categories;

-- Insert Authors
INSERT INTO Authors (author_name) VALUES
('George Orwell'), ('Isaac Newton'), ('Harari');

-- Insert Books
INSERT INTO Books (title, category_id, published_year, isbn) VALUES
('1984', 1, 1949, '9780451524935'),
('Principia Mathematica', 2, 1687, '9781420953144'),
('Sapiens', 3, 2011, '9780062316097');

-- Insert into Bridge Table (Many-to-Many)
INSERT INTO BookAuthors (book_id, author_id) VALUES
(1, 1), (2, 2), (3, 3);

-- Insert Members
INSERT INTO Members (full_name, email, phone) VALUES
('John Doe', 'john@example.com', '9876543210'),
('Alice Smith', NULL, '9876501234');  -- NULL Example

-- Insert Loans
INSERT INTO Loans (book_id, member_id, issue_date, return_date) VALUES
(1, 1, '2025-01-10', NULL),      -- NULL return date
(3, 2, '2025-01-15', '2025-02-01');


-- Update a member's phone number
UPDATE Members
SET phone = '9999999999'
WHERE member_id = 1;

-- Update return date for a loan
UPDATE Loans
SET return_date = '2025-01-20'
WHERE loan_id = 1;


-- Delete a category (example)
DELETE FROM Categories
WHERE category_id = 3;

-- Delete a member (keep WHERE always!)
DELETE FROM Members
WHERE member_id = 2;


-- Select rows with NULL return_date
SELECT * FROM Loans
WHERE return_date IS NULL;

-- Update NULL email
UPDATE Members
SET email = 'alice@example.com'
WHERE email IS NULL;

