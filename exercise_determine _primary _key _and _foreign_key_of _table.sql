CREATE DATABASE Exercise;
USE Exercise;
CREATE TABLE customers(
    customer_number INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(50),
    address VARCHAR(100),
    email VARCHAR(100),
    phone INT
);
CREATE TABLE accounts(
    account_number INT AUTO_INCREMENT PRIMARY KEY ,
    account_type VARCHAR(50),
    customer_number INT NOT NULL ,
    FOREIGN KEY (customer_number) references customers(customer_number),
    date DATETIME,
    balance DOUBLE
);
DROP TABLE accounts;
CREATE TABLE transactions(
    tran_number INT AUTO_INCREMENT PRIMARY KEY ,
    account_number INT not null ,
    date DATETIME,
    amounts DOUBLE,
    FOREIGN KEY (account_number) REFERENCES accounts(account_number),
    descriptions VARCHAR(255)
);
DROP TABLE transactions;
