<%@ Page Language="C#" MasterPageFile="~/Company.master" AutoEventWireup="true" CodeBehind="Queries.aspx.cs" Inherits="Nisacreation.Queries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
           .style5
        {
        width: 100%;
        height: 539px;
        background-image: url('images/Fancy-Purple-Pattern-Tablet-Background.jpg');
        margin-top: 0;
    }
        .style6
        {
            width: 718px;
        }
        .style8
        {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

       
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:ImageButton ID="ImageButton1"  runat="server" onclick="ImageButton1_Click1" 
             Width="16px" />
&nbsp;<table class="style5" cellspacing="10" 
            >

                 <tr>
                     <td  class="style8" align="left" height="0" valign="top">
                        
                         
                             <br />
                             &nbsp;Query 1: SELECT a.Product_name FROM Product a , Order_table b , Size_Cost c 
                             WHERE a.Product_id = c.Product_id AND b.Product_item_no = c.Product_item_no 
                             Group BY Product_name;<br />
                             Display the productname listed in the&nbsp; Order_table<br />
&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                 Text="Find" Width="55px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                             &nbsp;<asp:GridView ID="GridView1" runat="server">
                             </asp:GridView>
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                             <br />
                             Query 2 SELECT a.Product_name , b.Product_cost FROM Product a , Size_cost b 
                             WHERE a.Product_id = b.Product_id AND Product_size=&#39;L&#39;;<br />
                             Get the Product name and its cost by specifying its size:<br />
&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click1" Text="Search" />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Label ID="Label2" runat="server" Text="Enter the size:"></asp:Label>
&nbsp;&nbsp;
                             <asp:TextBox ID="TextBox5" runat="server" Width="108px"></asp:TextBox>
&nbsp;<p>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView2" runat="server">
                                 </asp:GridView>
                             </p>
                             <p>
                                 Query 3 SELECT a.Cf_name , a.Cl_name from Customer a , Order_table b Where 
                                 a.Customer_id = b.Customer_id;</p>
                             <p>
                                 Show the basic information of the customes who has placed orders</p>
                             <p>
                                 <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Search" />
&nbsp;<asp:GridView ID="GridView3" runat="server">
                                 </asp:GridView>
                             </p>
                             <p>
                                 Query 4 SELECT a.Ef_name, a.El_name FROM Employee a , Employee_Rel_Customer b , 
                                 Order_table c WHERE b.Customer_id = c.Customer_id AND a.Employee_id = 
                                 b.Employee_id AND c.Order_cost &gt; 10000 GROUP BY a.Ef_name , a.El_name;</p>
                             <p>
                                 Display the Employee name whose customer has placed order for a specific or more 
                                 quantity:</p>
                             <p>
                                 <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Search" />
                             &nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:Label ID="Label3" runat="server" Text="OrderCost:"></asp:Label>
&nbsp;
                                 <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                             </p>
                             <p>
                                 <asp:GridView ID="GridView4" runat="server">
                                 </asp:GridView>
                             </p>
                             <p>
                                 Query 5 SELECT * FROM Product a , Size_cost b , Order_table c WHERE 
                                 c.Product_item_no = b.Product_item_no AND b.Product_id = a.Product_id AND 
                                 c.Customer_id = &#39;C001&#39;;
                             </p>
                             <p>
                                 Display entire details of the product ordered by a specific customer?</p>
                             <p>
                                 <asp:Button ID="Button5" runat="server" Text="Search" onclick="Button5_Click" />
                             &nbsp;&nbsp;
                                 <asp:Label ID="Label4" runat="server" Text="Enter Customer id:"></asp:Label>
&nbsp;
                                 <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                             </p>
                             <p>
                                 <asp:GridView ID="GridView5" runat="server">
                                 </asp:GridView>
                             </p>
                             <p>
                                 Query 6 SELECT a.Product_id , a.Product_name, b.Product_item_no, b.Product_size, 
                                 b.Product_cost , c.Order_cost FROM Product a , Size_cost b , Order_table c Where 
                                 c.Product_item_no = b.Product_item_no AND b.Product_id = a.Product_id AND 
                                 c.Customer_id = &#39;C001&#39;;</p>
                             <p>
                                 Select specific details of a product ordered by a specific customer</p>
                             <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="Search" />
                             &nbsp;&nbsp;
                             <asp:Label ID="Label5" runat="server" Text="Enter Customer Id"></asp:Label>
&nbsp;
                             <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                             <br />
                             <asp:GridView ID="GridView6" runat="server">
                             </asp:GridView>
                             <br />
                             Query 7 SELECT a.Customer_id, a.Cf_name, a.Cl_name, a.Address, a.Contact_no , 
                             c.Product_name, b.Product_size , b.Product_cost , d.Order_quantity , 
                             d.Order_cost FROM Customer a , Size_cost b , Product c, Order_table d WHERE 
                             d.Order_quantity &gt; 5000 AND d.Product_item_no = b.Product_item_no AND 
                             b.Product_id = c.Product_id AND a.Customer_id = d.Customer_id;
                             <br />
                             <br />
                             Display Customer, product information and size_cost information ordered by the 
                             customer with more than a specific quantity:<br />
                             <asp:Button ID="Button7" runat="server" onclick="Button7_Click" Text="Search" />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Label ID="Label1" runat="server" Text="Enter the Quantity"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                             <br />
                             <asp:GridView ID="GridView7" runat="server">
                             </asp:GridView>
                             <br />
                             Query 8 SELECT Cf_name, Cl_name from Customer WHERE Customer_id NOT IN (Select 
                             Customer_id FROM Order_table);<br />
                             <br />
                             Display the customers who has not placed any orders:<br />
                             <asp:Button ID="Button8" runat="server" onclick="Button8_Click" Text="Search" />
                             <br />
                             <asp:GridView ID="GridView8" runat="server">
                             </asp:GridView>
                             <br />
                             Query 9 SELECT AVG(Incentive_amt) AS Average_Sal FROM Incentive;<br />
                             Display the average incentive got by people<br />
                             <asp:Button ID="Button9" runat="server" onclick="Button9_Click" Text="Search" />
                             <br />
                             <br />
                             <asp:GridView ID="GridView9" runat="server">
                             </asp:GridView>
                             <br />
                             Query 10 SELECT SUM(Order_cost) AS Total_Sales from Order_table;<br />
                             <br />
                             Display the total sales:<br />
                             <asp:Button ID="Button10" runat="server" onclick="Button10_Click" 
                                 Text="Search" />
                             <br />
             <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView 
                                 ID="GridView10" runat="server">
                             </asp:GridView>
                             <br />
                             Query 11 SELECT a.Product_name , b.Product_cost , b.Product_item_no , 
                             a.Product_id FROM Product a , Size_cost b WHERE a.Product_id = b.Product_id AND 
                             Product_size=&#39;S&#39; AND b.Product_item_no IN(Select Product_item_no from 
                             Order_table GROUP BY Product_item_no HAVING COUNT(*)&gt;0;<br />
                             <asp:Button ID="Button11" runat="server" onclick="Button11_Click" 
                                 Text="Search" />
                             &nbsp;&nbsp;&nbsp;&nbsp;<br />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView 
                                 ID="GridView11" runat="server">
                             </asp:GridView>
                             &nbsp;&nbsp;<br />
                             <br />
                             <br />
                             <br />
                     </td>
                     </tr>
                     
                     </table>

  
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

