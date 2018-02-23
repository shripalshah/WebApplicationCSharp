using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
using System.Data.OleDb;
using System.Text;
using System.Web.SessionState;
using System.Data.SqlClient;

namespace Nisacreation
{
    public partial class Queries : System.Web.UI.Page
    {
       
        String con;
        SqlConnection conx;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            String sess = Convert.ToString(Session["Authenticate"]);
            if (sess == "yes")
            {
                Session["Authenticate"] = "yes";
            }
            else
            {
                Response.Write("You Need To Login First!");
                Session["Authenticate"] = "";
                Response.Redirect("SignIn.aspx");

            }
            con = "Data Source=SHRIPAL\\SQLEXPRESS;Initial Catalog=master;Integrated Security=True";
            conx = new SqlConnection(con);
            conx.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String query = "SELECT a.PRODUCT_NAME FROM PRODUCT A, ORDER_TABLE B, SIZE_COST C WHERE (A.PRODUCT_ID=C.PRODUCT_ID AND B.PRODUCT_ITEM_NO=C.PRODUCT_ITEM_NO) GROUP BY PRODUCT_NAME";
            SqlDataAdapter dataadapter = new SqlDataAdapter(query, conx);
            DataSet ds = new DataSet();
            dataadapter.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();


            conx.Close();
       
        }

   
        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            Session["Authenticate"] = "";
            Response.Redirect("SignIn.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            String query = "SELECT a.PRODUCT_NAME, b.Product_cost FROM PRODUCT A, SIZE_COST B WHERE (A.PRODUCT_ID=B.PRODUCT_ID AND PRODUCT_SIZE= '" + TextBox5.Text + "') ORDER BY a.PRODUCT_NAME";
            SqlDataAdapter dataadapter = new SqlDataAdapter(query, conx);
            DataSet ds = new DataSet();
            dataadapter.Fill(ds);

            GridView2.DataSource = ds;
            GridView2.DataBind();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String query = "SELECT a.CF_NAME, A.CL_NAME FROM CUSTOMER A, ORDER_TABLE B WHERE (A.CUSTOMER_ID=B.CUSTOMER_ID) ";
            SqlDataAdapter dataadapter = new SqlDataAdapter(query, conx);
            DataSet ds = new DataSet();
            dataadapter.Fill(ds);

            GridView3.DataSource = ds;
            GridView3.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            String query = "SELECT a.Ef_name, a.El_name FROM Employee a , Employee_Rel_Customer b , Order_table c WHERE (b.Customer_id = c.Customer_id AND a.Employee_id = b.Employee_id AND c.Order_cost > '" + TextBox6.Text + "') GROUP BY a.Ef_name , a.El_name";
            SqlDataAdapter dataadapter = new SqlDataAdapter(query, conx);
            DataSet ds = new DataSet();
            dataadapter.Fill(ds);

            GridView4.DataSource = ds;
            GridView4.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            String query = "SELECT * FROM Product a , Size_cost b , Order_table c WHERE (c.Product_item_no = b.Product_item_no AND b.Product_id = a.Product_id AND c.Customer_id = '" + TextBox7.Text + "')";
            SqlDataAdapter dataadapter = new SqlDataAdapter(query, conx);
            DataSet ds = new DataSet();
            dataadapter.Fill(ds);

            GridView5.DataSource = ds;
            GridView5.DataBind();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            String query = "SELECT a.Product_id , a.Product_name, b.Product_item_no, b.Product_size, b.Product_cost , c.Order_cost FROM Product a , Size_cost b , Order_table c WHERE (c.Product_item_no = b.Product_item_no AND b.Product_id = a.Product_id AND c.Customer_id = '" + TextBox8.Text + "')";
            SqlDataAdapter dataadapter = new SqlDataAdapter(query, conx);
            DataSet ds = new DataSet();
            dataadapter.Fill(ds);

            GridView6.DataSource = ds;
            GridView6.DataBind();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {


            String query = "SELECT a.Customer_id, a.Cf_name, a.Cl_name, a.Address, a.Contact_no , c.Product_name, b.Product_size , b.Product_cost , d.Order_quantity , d.Order_cost FROM Customer a , Size_cost b , Product c, Order_table d WHERE (d.Order_quantity > '" + TextBox4.Text + "' AND d.Product_item_no = b.Product_item_no AND b.Product_id = c.Product_id AND a.Customer_id = d.Customer_id)";
                 SqlDataAdapter dataadapter = new SqlDataAdapter(query, conx);
                 DataSet ds = new DataSet();
                 dataadapter.Fill(ds);

                 GridView7.DataSource = ds;
                 GridView7.DataBind();
            
           
               
           
          
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            String query = "SELECT Cf_name, Cl_name FROM Customer  WHERE (Customer_id NOT IN (Select Customer_id FROM Order_table))";
            SqlDataAdapter dataadapter = new SqlDataAdapter(query, conx);
            DataSet ds = new DataSet();
            dataadapter.Fill(ds);

            GridView8.DataSource = ds;
            GridView8.DataBind();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            String query = "SELECT  AVG(Incentive_amt) AS Average_Sal FROM Incentive";
            SqlDataAdapter dataadapter = new SqlDataAdapter(query, conx);
            DataSet ds = new DataSet();
            dataadapter.Fill(ds);

            GridView9.DataSource = ds;
            GridView9.DataBind();
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            String query = "SELECT SUM(Order_cost) AS Total_Sales from Order_table";
            SqlDataAdapter dataadapter = new SqlDataAdapter(query, conx);
            DataSet ds = new DataSet();
            dataadapter.Fill(ds);

            GridView10.DataSource = ds;
            GridView10.DataBind();
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            String query = "SELECT a.Product_name , b.Product_cost , b.Product_item_no , a.Product_id from Product a , Size_cost b WHERE (a.Product_id = b.Product_id AND Product_size='S' AND b.Product_item_no IN(Select Product_item_no from Order_table GROUP BY Product_item_no HAVING COUNT(*)>0 ))";
            SqlDataAdapter dataadapter = new SqlDataAdapter(query, conx);
            DataSet ds = new DataSet();
            dataadapter.Fill(ds);

            GridView11.DataSource = ds;
            GridView11.DataBind();
        }

       
    }
}