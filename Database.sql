
-- Create the database
CREATE DATABASE StudentManagementDB;
GO

USE StudentManagementDB;
GO

-- Create Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100),
    City NVARCHAR(50),
    Age INT
);
GO

-- Create Courses table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY IDENTITY(1,1),
    CourseName NVARCHAR(100)
);
GO

-- Create Enrollments table (Many-to-Many)
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);
GO

-- Insert sample data into Students
INSERT INTO Students (Name, City, Age) VALUES 
('Nimal', 'Kandy', 21),
('Kamal', 'Colombo', 22),
('Sunil', 'Kandy', 23),
('Amal', 'Galle', 24),
('Nirosha', 'Jaffna', 22);
GO

-- Insert sample data into Courses
INSERT INTO Courses (CourseName) VALUES 
('Mathematics'),
('Science'),
('English'),
('History');
GO

-- Insert sample data into Enrollments
INSERT INTO Enrollments (StudentID, CourseID) VALUES 
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(4, 1),
(4, 4),
(5, 2);
GO
