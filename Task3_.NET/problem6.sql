CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100),
    country VARCHAR(100)

);
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) ,
    supplier_id INT,
    CONSTRAINT FK_Products_Suppliers FOREIGN KEY (supplier_id)
        REFERENCES Suppliers(supplier_id)
);
insert into Suppliers values(201,'TechCorp','USA');
insert into Suppliers values(202,'CompuWorld','Canada');
insert into Suppliers values(203,'MobileTech','China');

insert into Products values(1,'iPhone',201);
update Products set product_name= 'iPhone 14'
where product_id=1;
insert into Products values(2,'Laptop Pro',202);
insert into Products values(3,'Samsung Phone',NULL);
insert into Products values(4,'Headphones',201);
insert into Products values(5,'Android Phone X',203);
SELECT product_name,supplier_name
FROM Products left join Suppliers
ON Products.supplier_id=Suppliers.supplier_id
WHERE product_name like '%Phone%';