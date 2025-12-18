CREATE TABLE Customer_s (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)

);
CREATE TABLE Order_s (
    order_id INT PRIMARY KEY,
    order_date DATE ,
    amount DECIMAL(6,2),
    customer_id INT,
    CONSTRAINT FK_Cust_Orders FOREIGN KEY (customer_id)
        REFERENCES Customer_s(customer_id)
);
insert into Customer_s values(1,'John','Doe','john@email.com');
insert into Customer_s values(2,'Jane','Smith','jane@email.com');
insert into Customer_s values(3,'Mike','Johnson','mike@email.com');

insert into Order_s values(101,'2024-01-15',250.00,1);
insert into Order_s values(102,'2024-02-20',180.50,1);
insert into Order_s values(103,'2024-03-10',99.99,NULL);
insert into Order_s values(104,'2024-03-15',320.00,2);

SELECT first_name + ' ' +  last_name full_name ,order_id,amount
FROM Customer_s full join Order_s
ON Customer_s.customer_id=Order_s.customer_id;
