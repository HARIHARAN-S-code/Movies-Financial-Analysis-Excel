create database bank;
use bank;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    phone VARCHAR(15)
);

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(20),
    balance DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_type VARCHAR(10),  -- Credit / Debit
    amount DECIMAL(10,2),
    transaction_date DATE,
    transaction_mode VARCHAR(20),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

CREATE TABLE loans (
    loan_id INT PRIMARY KEY,
    customer_id INT,
    loan_amount DECIMAL(10,2),
    loan_type VARCHAR(30),
    loan_status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers (customer_id, name, city, phone) VALUES
(1, 'Arun Kumar', 'Chennai', '9876543210'),
(2, 'Priya Sharma', 'Bangalore', '9123456780'),
(3, 'Rahul Verma', 'Hyderabad', '9012345678'),
(4, 'Sneha Reddy', 'Chennai', '9988776655'),
(5, 'Vikram Singh', 'Mumbai', '9090909090'),
(6, 'Anjali Mehta', 'Delhi', '9871234567'),
(7, 'Karthik Raj', 'Chennai', '9123987654'),
(8, 'Pooja Patel', 'Ahmedabad', '9345678901'),
(9, 'Ravi Teja', 'Hyderabad', '9234567890'),
(10, 'Neha Gupta', 'Delhi', '9456781230'),
(11, 'Suresh Babu', 'Chennai', '9789012345'),
(12, 'Divya Nair', 'Kochi', '9898989898'),
(13, 'Manoj Kumar', 'Bangalore', '9765432109'),
(14, 'Kavya Iyer', 'Chennai', '9654321098'),
(15, 'Amit Das', 'Kolkata', '9543210987');

INSERT INTO accounts (account_id, customer_id, account_type, balance) VALUES
(101, 1, 'Savings', 50000),
(102, 1, 'Current', 30000),
(103, 2, 'Savings', 75000),
(104, 3, 'Savings', 30000),
(105, 3, 'Current', 38000),
(106, 4, 'Savings', 45000),
(107, 5, 'Current', 60000),
(108, 5, 'Savings', 33000),
(109, 5, 'Savings', 25000),
(110, 6, 'Savings', 25000),
(111, 7, 'Savings', 70000),
(112, 7, 'Current', 61000),
(113, 8, 'Savings', 55000),
(114, 9, 'Savings', 40000),
(115, 9, 'Current', 52000),
(116, 10, 'Savings', 35000),
(117, 11, 'Current', 80000),
(118, 11, 'Savings', 42000),
(119, 12, 'Savings', 20000),
(120, 13, 'Savings', 65000),
(121, 13, 'Current', 29000),
(122, 14, 'Current', 48000),
(123, 15, 'Savings', 52000);
INSERT INTO accounts (account_id, customer_id, account_type, balance) VALUES
(124, 10, 'Savings', 30000),
(125, 12, 'Current', 40000);

INSERT INTO transactions (transaction_id, account_id, transaction_type, amount, transaction_date, transaction_mode) VALUES
(1, 101, 'Credit', 10000, '2024-01-01', 'UPI'),
(2, 101, 'Debit', 2000, '2024-01-02', 'ATM'),
(3, 101, 'Credit', 5000, '2024-01-03', 'Online'),

(4, 102, 'Credit', 15000, '2024-01-01', 'UPI'),

(5, 103, 'Debit', 2500, '2024-01-01', 'ATM'),
(6, 103, 'Credit', 4000, '2024-01-02', 'UPI'),

(7, 104, 'Credit', 9000, '2024-01-01', 'UPI'),
(8, 104, 'Debit', 1500, '2024-01-02', 'ATM'),
(9, 104, 'Debit', 2000, '2024-01-03', 'Online'),
(10, 104, 'Credit', 3000, '2024-01-04', 'UPI'),

(11, 105, 'Credit', 12000, '2024-01-01', 'Online'),
(12, 105, 'Debit', 4000, '2024-01-02', 'ATM'),
(13, 105, 'Credit', 6000, '2024-01-03', 'UPI'),
(14, 105, 'Debit', 2000, '2024-01-04', 'Online'),
(15, 105, 'Credit', 3000, '2024-01-05', 'UPI'),

(16, 106, 'Credit', 7000, '2024-01-01', 'UPI'),
(17, 106, 'Debit', 1500, '2024-01-02', 'ATM'),

(18, 107, 'Credit', 20000, '2024-01-01', 'Online'),
(19, 107, 'Debit', 5000, '2024-01-02', 'ATM'),
(20, 107, 'Credit', 8000, '2024-01-03', 'UPI'),
(21, 107, 'Debit', 3000, '2024-01-04', 'Online'),

(22, 108, 'Debit', 3000, '2024-01-01', 'ATM'),

(23, 109, 'Credit', 9500, '2024-01-01', 'Online'),
(24, 109, 'Debit', 2000, '2024-01-02', 'ATM'),
(25, 109, 'Credit', 4500, '2024-01-03', 'UPI'),

(26, 110, 'Credit', 8500, '2024-01-01', 'UPI'),
(27, 110, 'Debit', 2000, '2024-01-02', 'Online'),

(28, 111, 'Credit', 25000, '2024-01-01', 'Online'),
(29, 111, 'Debit', 6000, '2024-01-02', 'ATM'),
(30, 111, 'Credit', 9000, '2024-01-03', 'UPI'),
(31, 111, 'Debit', 4000, '2024-01-04', 'ATM'),
(32, 111, 'Credit', 7000, '2024-01-05', 'Online'),

(33, 112, 'Credit', 5000, '2024-01-01', 'UPI'),

(34, 113, 'Credit', 18000, '2024-01-01', 'Online'),
(35, 113, 'Debit', 4000, '2024-01-02', 'ATM'),
(36, 113, 'Credit', 7000, '2024-01-03', 'UPI'),

(37, 114, 'Credit', 10000, '2024-01-01', 'UPI'),
(38, 114, 'Debit', 3000, '2024-01-02', 'ATM'),

(39, 115, 'Credit', 12000, '2024-01-01', 'Online'),
(40, 115, 'Debit', 3500, '2024-01-02', 'ATM'),
(41, 115, 'Credit', 5000, '2024-01-03', 'UPI'),
(42, 115, 'Debit', 2000, '2024-01-04', 'Online'),

(43, 116, 'Credit', 6000, '2024-01-01', 'UPI'),
(44, 116, 'Debit', 1500, '2024-01-02', 'ATM'),

(45, 117, 'Credit', 9000, '2024-01-01', 'Online'),
(46, 117, 'Debit', 2500, '2024-01-02', 'ATM'),
(47, 117, 'Credit', 4000, '2024-01-03', 'UPI'),

(48, 118, 'Debit', 3000, '2024-01-01', 'ATM'),

(49, 119, 'Credit', 7000, '2024-01-01', 'Online'),
(50, 119, 'Debit', 2000, '2024-01-02', 'ATM'),

(51, 120, 'Credit', 8000, '2024-01-01', 'UPI'),
(52, 120, 'Debit', 2500, '2024-01-02', 'ATM'),
(53, 120, 'Debit', 2000, '2024-01-03', 'Online'),

(54, 121, 'Credit', 9000, '2024-01-01', 'Online'),
(55, 121, 'Debit', 3000, '2024-01-02', 'ATM'),
(56, 121, 'Credit', 3500, '2024-01-03', 'UPI'),
(57, 121, 'Debit', 1500, '2024-01-04', 'Online'),

(58, 122, 'Credit', 15000, '2024-01-01', 'UPI'),
(59, 122, 'Debit', 4000, '2024-01-02', 'ATM'),

(60, 123, 'Credit', 10000, '2024-01-01', 'Online'),
(61, 123, 'Debit', 3000, '2024-01-02', 'ATM'),
(62, 123, 'Credit', 4500, '2024-01-03', 'UPI'),

(63, 124, 'Debit', 3500, '2024-01-01', 'ATM'),

(64, 125, 'Credit', 11000, '2024-01-01', 'Online'),
(65, 125, 'Debit', 3000, '2024-01-02', 'ATM');

INSERT INTO loans (loan_id, customer_id, loan_type, loan_amount, loan_status) VALUES
(201, 1, 'Home Loan', 500000, 'Active'),

(202, 3, 'Personal Loan', 150000, 'Closed'),
(203, 3, 'Education Loan', 300000, 'Active'),

(204, 4, 'Gold Loan', 80000, 'Active'),

(205, 5, 'Personal Loan', 120000, 'Closed'),
(206, 5, 'Education Loan', 200000, 'Active'),
(207, 5, 'Gold Loan', 90000, 'Active'),

(208, 6, 'Personal Loan', 100000, 'Closed'),

(209, 7, 'Education Loan', 400000, 'Active'),
(210, 7, 'Personal Loan', 150000, 'Active'),

(211, 9, 'Home Loan', 700000, 'Active'),

(212, 10, 'Gold Loan', 85000, 'Closed'),
(213, 10, 'Personal Loan', 130000, 'Active'),
(214, 10, 'Education Loan', 250000, 'Active'),

(215, 11, 'Personal Loan', 200000, 'Active'),

(216, 13, 'Education Loan', 350000, 'Active'),
(217, 13, 'Gold Loan', 70000, 'Closed'),

(218, 15, 'Personal Loan', 110000, 'Closed');

-- SELECT 
select customer_id, name from customers;
select account_id, balance from accounts;
select * from loans;

-- WHERE 
select * from customers
where city = 'Mumbai';

select * from accounts
where balance < 10000;

select * from transactions 
where amount > 2000;

select * from loans
where loan_amount > 50000;

-- AND,OR,NOT
select * from customers 
where city in ('Chennai','Mumbai');

select * from accounts
where balance > 5000 and account_type = 'Current';

select * from transactions
where amount > 1000 and transaction_type = 'Debit';

select * from loans
where not loan_status ='Closed';

-- ORDER BY
select * from customers
order by city;

select * from accounts
order by balance;

select * from transactions
order by transaction_type, amount desc;

select * from loans
order by loan_status;

-- LIMIT 
 select * from customers 
 limit 3;
 
 select * from accounts	
 order by balance desc 
 limit 2;
 
 select * from transactions
 order by amount
 limit 3;
 
 select * from loans
 order by loan_amount
 limit 1 offset 1;
 
 -- COUNT,SUM,AVG
 select count(account_id) as Total_accounts from accounts;
 
 select sum(amount) as Total_amount from transactions;
 
 select round(avg(loan_amount),2) as Average_amount from loans;
 
 select count(loan_id) as Total_loans from loans;
 
 -- GROUP BY
 
 select transaction_type, count(transaction_id) as Total_transactions from transactions
 group by transaction_type;
 
 select account_type, round(avg(balance),2) as Averge_balance from accounts
 group by account_type;
 
 select loan_type , round(sum(loan_amount),2) as Total_amount from loans
 group by loan_type;
 
 select customer_id, count(account_id) as total_accounts from accounts
 group by customer_id;
 
 -- GROUP BY WITH HAVING
 select customer_id, count(account_id) as Total_account from accounts
 group by customer_id
 having count(account_id) > 2;
 
 select account_type, sum(balance) as Total_balance from accounts
 group by account_type
 having sum(balance) > 20000;
 
 select loan_type, count(loan_id) as Total_loans from loans 
 group by loan_type
 having count(loan_id) > 2;
 
 select transaction_type, sum(amount) as total_amount from transactions
 group by transaction_type
 having sum(amount) > 5000;
 
 -- JOINS
 -- INNER JOIN 
 
 select c.name, a.account_type from customers c
 join accounts a
 on c.customer_id = a.customer_id;
 
 select c.name, l.loan_amount from customers c
 join loans l
 on c.customer_id = l.customer_id;
 
 select a.account_id, t.amount from accounts a
 join transactions t
 on a.account_id = t.account_id;
 
 select c.name, a.account_type, a.balance from customers c
 join accounts a
 on c.customer_id = a.customer_id;
 
 -- THREE TABLE JOIN
 
 select c.name, a.account_type, t.amount from customers c
 join accounts a
 on c.customer_id = a.customer_id
 join transactions t
 on a.account_id = t.account_id;
 
 select c.name, l.loan_type, l.loan_amount from customers c
 join loans l
 on c.customer_id = l.customer_id;
 
 select c.name, a.account_id, t.transaction_type, t.amount from customers c
 join accounts a
 on c.customer_id = a.customer_id
 join transactions t
 on a.account_id = t.account_id;
 

 select c.name, a.account_type, t.amount, t.transaction_date from customers c
 join accounts a
 on c.customer_id = a.customer_id
 join transactions t
 on a.account_id = t.account_id; 
 
 -- LEFT JOIN
 select c.* , a.account_type from customers c
 left join accounts a
 on c.customer_id = a.customer_id;
 
 select c.* , l.loan_status from customers c
 left join loans l
 on c.customer_id = l.customer_id;
 
 select a.* , t.amount from accounts a
 left join transactions t
 on a.account_id = t.account_id;
 
 select c.name from customers c
 left join accounts a
 on c.customer_id = a.customer_id
 where a.account_id is null;
 
 -- RIGHT JOIN
 
 select a.* , c.name from accounts a
 right join customers c
 on a.customer_id = c.customer_id;
 
 select t.* , a.account_id, c.name from transactions t
 right join accounts a
 on t.account_id = a.account_id
 right join customers c
 on a.customer_id = c.customer_id;
 
 -- Subquery 
 select customer_id from loans
 where loan_amount = (select max(loan_amount) as Maximum_amount from loans);
 
 select * from customers 
 where customer_id in (select customer_id from loans); 
 
 --  EXISTS AND NOT EXISTS
 select * from customers c
 where exists (
 select 1 from accounts a
 where c.customer_id = a.customer_id
 );
 
 select * from customers c
 where not exists (
 select 1 from loans l
 where c.customer_id = l.customer_id
 );
 
 -- ANY, ALL
 
 select * from accounts
 where balance > any (
 select balance from accounts where account_type = 'Savings'
 );
 
 select * from accounts
 where balance > all (
 select loan_amount
 from loans
 );
 
 -- Case
 
 select account_id, balance,
case 
    when balance > 10000 then 'High'
    else 'Low'
end as balance_status
from accounts;

-- Store Procedure

delimiter //

create procedure get_accounts()
begin
    select * from accounts;
end //

delimiter ;

call get_accounts(); 

-- Views

create view high_balance_accounts as
select account_id, balance
from accounts
where balance > 10000;

select * from high_balance_accounts; 