CREATE TABLE Customer (
  custId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  city TEXT NOT NULL,
  mobile Text

);

INSERT INTO Customer VALUES (0001, 'Clark', 'Lko','324324234');
INSERT INTO Customer VALUES (0002, 'Dave', 'Noida','32432424');
INSERT INTO Customer VALUES (0003, 'Ava', 'Hyderabad','543524314');
INSERT INTO Customer VALUES (0004, 'Abhilash', 'Vijaywada','2343243242');

CREATE TABLE CustOrder (
  OrderID INTEGER PRIMARY KEY,
  Product TEXT NOT NULL,
  Amount INTEGER NOT NULL,
  custId INTEGER
);
 
INSERT INTO CustOrder VALUES (101, 'Headphone', 2000,0001);
INSERT INTO CustOrder VALUES (102, 'Smartwatch', 5000,0004);

select * from Customer;
select * from CustOrder;
 
select Customer.name,Customer.city,CustOrder.Product from Customer join CustOrder on Customer.custId=CustOrder.custId;          