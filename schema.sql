
-- Little Lemon Booking System Schema
CREATE DATABASE IF NOT EXISTS little_lemon;

USE little_lemon;

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE Bookings (
    BookingID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    BookingDate DATE,
    TableNumber INT,
    Guests INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
