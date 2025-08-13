-- Create the database
CREATE DATABASE IF NOT EXISTS alx_book_store;
USE ALX_BOOK_STORE;

-- Authors table
CREATE TABLE AUTHORS (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(215) NOT NULL
);

-- Books table
CREATE TABLE BOOKS (
    BOOK_ID INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(130) NOT NULL,
    AUTHOR_ID INT,
    price DOUBLE,
    PUBLICATION_DATE DATE,
    FOREIGN KEY (AUTHOR_ID) REFERENCES AUTHORS(AUTHOR_ID)
);

-- Customers table
CREATE TABLE CUSTOMERS (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT
);

-- Orders table
CREATE TABLE ORDERS (
    order_id INT FOREIGN KEY AUTO_INCREMENT,
    CUSTOMER_ID INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Order_Details table
CREATE TABLE ORDER_DETAILS (
    orderdetailsid INT PRIMARY KEY AUTO_INCREMENT,
    ORDER_ID INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES BOOKS(book_id)
);