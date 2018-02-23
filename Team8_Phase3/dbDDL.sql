CREATE TABLE Login_Details
(User_id varchar(20) NOT NULL,
Password varchar(26) NOT NULL,
CONSTRAINT LOGPK
PRIMARY KEY(User_id));

CREATE TABLE Employee
(Employee_id varchar(10) NOT NULL,
Ef_name varchar(20) NOT NULL,
El_name varchar(20),
Address varchar(26),
Dob date,
Contact_no int NOT NULL,
Email_address varchar(20),
E_Type varchar(20),
CONSTRAINT EMPPK
PRIMARY KEY(Employee_id),
CONSTRAINT EMPFK
FOREIGN KEY(Email_address) REFERENCES Login_Details(User_id) ON DELETE SET NULL
);


CREATE TABLE Owner
(Owner_id varchar(10) NOT NULL,
Ename varchar(20) NOT NULL,
Contact_no int NOT NULL,
Email_address varchar(20),
CONSTRAINT OWPK
PRIMARY KEY(Owner_id),
CONSTRAINT OWFK
FOREIGN KEY(Email_address) REFERENCES Login_Details(User_id)
ON DELETE SET NULL);

CREATE TABLE Customer
(Customer_id varchar(10) NOT NULL,
Cf_name varchar(20) NOT NULL,
Cl_name varchar(20),
Address varchar(26),
Contact_no int NOT NULL,
Email_address varchar(20),
Bank_id varchar(20) NOT NULL,
Occupation varchar(20),
CONSTRAINT CUSPK
PRIMARY KEY(Customer_id),
CONSTRAINT CUSFK
FOREIGN KEY(Email_address) REFERENCES Login_Details(User_id)
ON DELETE SET NULL );

CREATE TABLE Employee_Rel_Customer
(
Customer_id varchar(10) , 
Employee_id varchar(10) ,
CONSTRAINT ERC_PK
PRIMARY KEY(Customer_id, Employee_id), 
CONSTRAINT ERC_FK1
FOREIGN KEY(Customer_id) REFERENCES Customer(Customer_id) ON DELETE SET NULL,
CONSTRAINT ERC_FK2
FOREIGN KEY(Employee_id) REFERENCES Employee(Employee_id) ON DELETE SET NULL 
);


Create TABLE Incentive
(Incentive_id varchar(10) NOT NULL,
Employee_id varchar(10) ,
Incentive_amt int,
CONSTRAINT INC_PK
PRIMARY KEY(Incentive_id),
CONSTRAINT INC_FK
FOREIGN KEY(Employee_id) REFERENCES Employee(Employee_id)
ON DELETE SET NULL);

CREATE TABLE Product
(Product_id varchar(10) ,
Product_name varchar(20) NOT NULL,
PRIMARY KEY(Product_id));

CREATE TABLE Size_Cost
(Product_item_no varchar(20) ,
Product_id varchar(20) ,
Product_size varchar(20) ,
Product_cost int Not NULL,
CONSTRAINT SC_PK
PRIMARY KEY (Product_item_no),
CONSTRAINT SC_FK
FOREIGN KEY (Product_id) REFERENCES Product(Product_id) ON DELETE SET NULL
);

/* Display the order details and the product details placed by the specific customer */

Create VIEW Cust_Order_View AS Select * from Order_table a, Size_Cost b, Product c WHERE a.Product_item_no=b.Product_item_no AND b.Product_id=c.Product_id;


CREATE TABLE Order_Table
(Order_id varchar(26) ,
Product_item_no varchar(20),
Customer_id varchar(26) NOT NULL,
Order_date date NOT NULL,
Order_quantity int,
Order_cost int NOT NULL,
CONSTRAINT OR_PK
PRIMARY KEY (Order_id),
CONSTRAINT OR_FK1
FOREIGN KEY(Product_item_no) REFERENCES Size_Cost(Product_item_no)
ON DELETE SET NULL,
CONSTRAINT OR_FK2
FOREIGN KEY(Customer_id) REFERENCES Customer(Customer_id)
ON DELETE SET NULL );

