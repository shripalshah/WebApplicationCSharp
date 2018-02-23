/* 
Query 1
SELECT a.Product_name
FROM Product a , Order_table b , Size_Cost c
 WHERE a.Product_id = c.Product_id AND b.Product_item_no = c.Product_item_no
ORDER BY Product_name; 

PRODUCT_NAME
--------------------
Purse
Purse
Beerbag
Potholder
Potholder
Beerbag
Potholder
Guitarcover
Hammock
Beerbag
Beerbag

11 rows selected.


*/

SELECT a.Product_name
FROM Product a , Order_table b , Size_Cost c
 WHERE a.Product_id = c.Product_id AND b.Product_item_no = c.Product_item_no;


/* 
 Query 2
SELECT a.Product_name , b.Product_cost
FROM Product a , Size_cost b
WHERE a.Product_id = b.Product_id AND Product_size='L'; 

PRODUCT_NAME        PRODUCT_COST
--------------------------------
Potholder                    600
Penholder                    600
Carcover                     670




*/

SELECT a.Product_name , b.Product_cost
FROM Product a , Size_cost b
WHERE a.Product_id = b.Product_id AND Product_size='L';

/* Query 3
SELECT a.Cf_name , a.Cl_name from Customer a , Order_table b
Where a.Customer_id = b.Customer_id;  



CF_NAME             CL_NAME
----------------------------------------
Narendra            Modi
Trump               Donald
Sorya               Prateek
Anwith              Sriveer
Parkk               Kyungso
Madhuri             Debnath
Bhaskar             Jamula
Rama                Manyam
Narendra            Modi
Narendra            Modi
Madhuri             Debnath

11 rows selected.



*/

SELECT a.Cf_name , a.Cl_name from Customer a , Order_table b
Where a.Customer_id = b.Customer_id;

/* Query 4 

SELECT a.Ef_name, a.El_name 
FROM Employee a , Employee_Rel_Customer b , Order_table c  
WHERE b.Customer_id = c.Customer_id AND a.Employee_id = b.Employee_id AND c.Order_cost > 10000
GROUP BY a.Ef_name , a.El_name;

EF_NAME             EL_NAME
----------------------------------------
Vanitha             Mandala
Dinesh              Kumar
Shripal             Shah


 */

SELECT a.Ef_name, a.El_name 
FROM Employee a , Employee_Rel_Customer b , Order_table c  
WHERE b.Customer_id = c.Customer_id AND a.Employee_id = b.Employee_id AND c.Order_cost > 10000
GROUP BY a.Ef_name , a.El_name;

/* Query 5
SELECT * FROM Product a , Size_cost b , Order_table c
WHERE  c.Product_item_no = b.Product_item_no AND b.Product_id = a.Product_id AND c.Customer_id = 'C001'; 

PRODUCT_IDPRODUCT_NAME        PRODUCT_ITEM_NO     PRODUCT_ID          PRODUCT_SIZE        PRODUCT_COSTORDER_ID                  PRODUCT_ITEM_NO     CUSTOMER_ID               ORDER_DATORDER_QUANTITYORDER_COST
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
P001      Purse               PI01                P001                S                            100O001                      PI01                C001                      12-MAY-56          5001    500100
P002      Hammock             PI02                P002                M                             50O009                      PI02                C001                      07-FEB-63            20      1000
P006      Beerbag             PI06                P006                S                            200O010                      PI06                C001                      03-MAY-00            20      4000



*/

SELECT * FROM Product a , Size_cost b , Order_table c
WHERE  c.Product_item_no = b.Product_item_no AND b.Product_id = a.Product_id AND c.Customer_id = 'C001';

/* Query 6
SELECT a.Product_id , a.Product_name, b.Product_item_no, b.Product_size, b.Product_cost , c.Order_cost 
FROM Product a , Size_cost b , Order_table c
Where c.Product_item_no = b.Product_item_no AND b.Product_id = a.Product_id AND c.Customer_id = 'C001';

PRODUCT_IDPRODUCT_NAME        PRODUCT_ITEM_NO     PRODUCT_SIZE        PRODUCT_COSTORDER_COST
--------------------------------------------------------------------------------------------
P001      Purse               PI01                S                            100    500100
P002      Hammock             PI02                M                             50      1000
P006      Beerbag             PI06                S                            200      4000



*/
SELECT a.Product_id , a.Product_name, b.Product_item_no, b.Product_size, b.Product_cost , c.Order_cost 
FROM Product a , Size_cost b , Order_table c
Where c.Product_item_no = b.Product_item_no AND b.Product_id = a.Product_id AND c.Customer_id = 'C001';


/* Query 7
 SELECT a.Customer_id, a.Cf_name, a.Cl_name, a.Address, a.Contact_no , c.Product_name, b.Product_size , b.Product_cost , d.Order_quantity , d.Order_cost
FROM Customer a , Size_cost b , Product c, Order_table d 
WHERE d.Order_quantity > 5000 AND d.Product_item_no = b.Product_item_no AND b.Product_id = c.Product_id AND a.Customer_id = d.Customer_id; 


CUSTOMER_ICF_NAME             CL_NAME             ADDRESS                   CONTACT_NOPRODUCT_NAME        PRODUCT_SIZE        PRODUCT_COSTORDER_QUANTITYORDER_COST
------------------------------------------------------------------------------------------------------------------------------------------------------------------
C001      Narendra            Modi                Gujarat                   6789034500Purse               S                            100          5001    500100


*/

SELECT a.Customer_id, a.Cf_name, a.Cl_name, a.Address, a.Contact_no , c.Product_name, b.Product_size , b.Product_cost , d.Order_quantity , d.Order_cost
FROM Customer a , Size_cost b , Product c, Order_table d 
WHERE d.Order_quantity > 5000 AND d.Product_item_no = b.Product_item_no AND b.Product_id = c.Product_id AND a.Customer_id = d.Customer_id;

/* Query 8
SELECT Cf_name, Cl_name from Customer 
WHERE Customer_id NOT IN (Select Customer_id FROM Order_table);
 
CF_NAME             CL_NAME
----------------------------------------
Raj                 Manyam



*/

SELECT Cf_name, Cl_name from Customer 
WHERE Customer_id NOT IN (Select Customer_id FROM Order_table);

/* Query 9
SELECT AVG(Incentive_amt) AS Average_Sal FROM Incentive;

AVERAGE_SAL
-----------
       2750

*/
SELECT AVG(Incentive_amt) AS Average_Sal FROM Incentive;

/* Query 10 
SELECT SUM(Order_cost) AS Total_Sales from Order_table;

TOTAL_SALES
-----------
    1317100


 */

SELECT SUM(Order_cost) AS Total_Sales from Order_table;

/* Query 11
SELECT a.Product_name , b.Product_cost , b.Product_item_no , a.Product_id
FROM Product a , Size_cost b
WHERE a.Product_id = b.Product_id AND Product_size='S' AND 
b.Product_item_no IN(Select Product_item_no from Order_table
GROUP BY Product_item_no
HAVING COUNT(*)>0 );

PRODUCT_NAME        PRODUCT_COSTPRODUCT_ITEM_NO     PRODUCT_ID
--------------------------------------------------------------
Beerbag                      200PI06                P006
Purse                        100PI01                P001


 */

SELECT a.Product_name , b.Product_cost , b.Product_item_no , a.Product_id
FROM Product a , Size_cost b
WHERE a.Product_id = b.Product_id AND Product_size='S' AND 
b.Product_item_no IN(Select Product_item_no from Order_table
GROUP BY Product_item_no
HAVING COUNT(*)>0 );


