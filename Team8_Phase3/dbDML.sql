INSERT INTO Login_Details VALUES('meghana@gmail.com','lxm1');
INSERT INTO Login_Details VALUES('kriti@gmail.com','lxs2');
INSERT INTO Login_Details VALUES('sunaina@gmail.com','lmp3');
INSERT INTO Login_Details VALUES('deepthi@gmail.com','lop4');
INSERT INTO Login_Details VALUES('krishna@gmail.com','zxm5');
INSERT INTO Login_Details VALUES('anjan@gmail.com','sxm6');
INSERT INTO Login_Details VALUES('madhavi@gmail.com','ctm7');
INSERT INTO Login_Details VALUES('swarna@gmail.com','phm8');
INSERT INTO Login_Details VALUES('shripal@gmail.com','sxm9');
INSERT INTO Login_Details VALUES('madhu@gmail.com','ctm10');
INSERT INTO Login_Details VALUES('vanithaa@gmail.com','phm11');
INSERT INTO Login_Details VALUES('manikanta@gmail.com','sxm12');
INSERT INTO Login_Details VALUES('dinesh@gmail.com','ctm13');
INSERT INTO Login_Details VALUES('nikitha@gmail.com','phm14');
INSERT INTO Login_Details VALUES('ashok@gmail.com','sxm15');
INSERT INTO Login_Details VALUES('sailaja@gmail.com','sxm15');
INSERT INTO Login_Details VALUES('raj@gmail.com','sxm155');
INSERT INTO Login_Details VALUES('shripals@gmail.com','sxm16');
INSERT INTO Login_Details VALUES('trump@gmail.com','ctm17');
INSERT INTO Login_Details VALUES('sourya@gmail.com','phm18');
INSERT INTO Login_Details VALUES('anwi@gmail.com','sxm19');
INSERT INTO Login_Details VALUES('park@gmail.com','ctm20');
INSERT INTO Login_Details VALUES('mdebnath@gmail.com','phm21');
INSERT INTO Login_Details VALUES('bhaskar@gmail.com','sxm22');
INSERT INTO Login_Details VALUES('ram@gmail.com','sxm23');

INSERT INTO Owner VALUES('O001','Meghana Manyam',6804560806,'meghana@gmail.com');
INSERT INTO Owner VALUES('O002','Kriti Kala',6804560806,'kriti@gmail.com');
INSERT INTO Owner VALUES('O003','Sunaina Renu',6804560806,'sunaina@gmail.com');
INSERT INTO Owner VALUES('O004','Deepthi Sarina',6804560806,'deepthi@gmail.com');
INSERT INTO Owner VALUES('O005','Krishna Kanth',6804560806,'krishna@gmail.com');
INSERT INTO Owner VALUES('O006','Anjan Srihas',6804560806,'anjan@gmail.com');
INSERT INTO Owner VALUES('O007','Madhavi Latha',6804560806,'madhavi@gmail.com');
INSERT INTO Owner VALUES('O008','Swarna  Kumari',6804560806,'swarna@gmail.com');




INSERT INTO Employee VALUES('E001','Shripal','Shah','Gujarat',TO_DATE('5/12/2008','MM/DD/YYYY'),6789034500,'shripal@gmail.com','TYPE');
INSERT INTO Employee VALUES('E002','Madhu','Gunaganti','Hyderabad',TO_DATE('5/12/2008','MM/DD/YYYY'),6789034200,'madhu@gmail.com','TYPE');
INSERT INTO Employee VALUES('E003','Vanitha','Mandala','Andhra',TO_DATE('5/12/2008','MM/DD/YYYY'),6789034510,'vanithaa@gmail.com','TYPE');
INSERT INTO Employee VALUES('E004','Manikanta','Saladhi','Kakinada',TO_DATE('5/12/2008','MM/DD/YYYY'),6789534500,'manikanta@gmail.com','TYPE');
INSERT INTO Employee VALUES('E005','Dinesh','Kumar','Rajahmundry',TO_DATE('5/12/2008','MM/DD/YYYY'),6789634500,'dinesh@gmail.com','TYPE');
INSERT INTO Employee VALUES('E006','Sailaja','Pani','Gandhi nagar',TO_DATE('5/12/2008','MM/DD/YYYY'),6789033500,'sailaja@gmail.com','TYPE');
INSERT INTO Employee VALUES('E007','Nikitha','Jas','Tuni',TO_DATE('5/12/2008','MM/DD/YYYY'),6789034501,'nikitha@gmail.com','TYPE');
INSERT INTO Employee VALUES('E008','Ashok','Vaitla','Hydeabad',TO_DATE('5/12/2008','MM/DD/YYYY'),6749034500,'ashok@gmail.com','TYPE');

INSERT INTO Customer VALUES('C001','Narendra','Modi','Gujarat',6789034500,'shripals@gmail.com','B001','PM');
INSERT INTO Customer VALUES('C002','Trump','Donald','Texas',6779560500,'trump@gmail.com','B002','President');
INSERT INTO Customer VALUES('C003','Sorya','Prateek','Gujarat',6782564500,'sourya@gmail.com','B001','PM');
INSERT INTO Customer VALUES('C004','Anwith','Sriveer','Gujarat',6889034500,'anwi@gmail.com','B001','PM');
INSERT INTO Customer VALUES('C005','Parkk','Kyungso','Gujarat',6829034500,'park@gmail.com','B001','PM');
INSERT INTO Customer VALUES('C006','Madhuri','Debnath','Gujarat',6789034555,'mdebnath@gmail.com','B001','PM');
INSERT INTO Customer VALUES('C007','Bhaskar','Jamula','Gujarat',6789039911,'bhaskar@gmail.com','B001','PM');
INSERT INTO Customer VALUES('C008','Rama','Manyam','Gujarat',6789034501,'ram@gmail.com','B001','PM');
INSERT INTO Customer VALUES('C009','Raj','Manyam','Gujarat',6789034501,'raj@gmail.com','B001','PM');
UPDATE Customer SET address='Andhra' WHERE Customer_id='C007';
DELETE FROM Customer WHERE Customer_id='U002';

INSERT INTO Employee_Rel_Customer VALUES('C001','E001');
INSERT INTO Employee_Rel_Customer VALUES('C002','E002');
INSERT INTO Employee_Rel_Customer VALUES('C003','E004');
INSERT INTO Employee_Rel_Customer VALUES('C004','E003');
INSERT INTO Employee_Rel_Customer VALUES('C005','E001');
INSERT INTO Employee_Rel_Customer VALUES('C006','E005');
INSERT INTO Employee_Rel_Customer VALUES('C007','E001');
INSERT INTO Employee_Rel_Customer VALUES('C008','E001');


INSERT INTO Incentive VALUES('I001','E001',2000);
INSERT INTO Incentive VALUES('I002','E002',1000);
INSERT INTO Incentive VALUES('I006','E003',5000);
INSERT INTO Incentive VALUES('I007','E004',2400);
INSERT INTO Incentive VALUES('I009','E005',2600);
INSERT INTO Incentive VALUES('I003','E006',3300);
INSERT INTO Incentive VALUES('I004','E007',3000);
INSERT INTO Incentive VALUES('I005','E008',2700);


INSERT INTO Product VALUES('P001','Purse');
INSERT INTO Product VALUES('P002','Hammock');
INSERT INTO Product VALUES('P003','Potholder');
INSERT INTO Product VALUES('P004','Guitarcover');
INSERT INTO Product VALUES('P005','Bag');
INSERT INTO Product VALUES('P006','Beerbag');
INSERT INTO Product VALUES('P007','Penholder');
INSERT INTO Product VALUES('P008','Carcover');


INSERT INTO Size_Cost VALUES('PI01','P001','S',100);
INSERT INTO Size_Cost VALUES('PI02','P002','M',50);
INSERT INTO Size_Cost VALUES('PI03','P003','L',600);
INSERT INTO Size_Cost VALUES('PI04','P004','M',700);
INSERT INTO Size_Cost VALUES('PI05','P005','M',200);
INSERT INTO Size_Cost VALUES('PI06','P006','S',200);
INSERT INTO Size_Cost VALUES('PI07','P007','L',600);
INSERT INTO Size_Cost VALUES('PI08','P008','L',670);


INSERT INTO Order_Table VALUES('O001','PI01','C001',TO_DATE('5/12/1956','MM/DD/YYYY'),5001,500100);
INSERT INTO Order_Table VALUES('O002','PI01','C002',TO_DATE('8/10/1955','MM/DD/YYYY'),20,2000);
INSERT INTO Order_Table VALUES('O003','PI06','C003',TO_DATE('1/08/1988','MM/DD/YYYY'),30,6000);
INSERT INTO Order_Table VALUES('O004','PI03','C004',TO_DATE('5/12/1991','MM/DD/YYYY'),40,24000);
INSERT INTO Order_Table VALUES('O005','PI03','C005',TO_DATE('9/12/1978','MM/DD/YYYY'),20,12000);
INSERT INTO Order_Table VALUES('O006','PI06','C006',TO_DATE('7/12/1963','MM/DD/YYYY'),2300,46000);
INSERT INTO Order_Table VALUES('O007','PI03','C007',TO_DATE('6/11/1989','MM/DD/YYYY'),200,120000);
INSERT INTO Order_Table VALUES('O008','PI04','C008',TO_DATE('3/08/1965','MM/DD/YYYY'),780,556000);
INSERT INTO Order_Table VALUES('O009','PI02','C001',TO_DATE('2/07/1963','MM/DD/YYYY'),20,1000);
INSERT INTO Order_Table VALUES('O010','PI06','C001',TO_DATE('5/03/2000','MM/DD/YYYY'),20,4000);
INSERT INTO Order_Table VALUES('O011','PI06','C006',TO_DATE('5/01/1994','MM/DD/YYYY'),230,46000);



SELECT * FROM Cust_Order_View;
SELECT * FROM Login_Details;
SELECT * FROM Owner;
SELECT * FROM Employee;
SELECT * FROM Customer;
SELECT * FROM Employee_Rel_Customer;
SELECT * FROM Incentive;
SELECT * FROM Product;
SELECT * FROM Size_cost;
SELECT * FROM Order_table;