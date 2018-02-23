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
     
    public partial class SignIn : System.Web.UI.Page
    {
        int count = 0;
        String con;
        SqlConnection conx;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Authenticate"] = "";
            con= "Data Source=SHRIPAL\\SQLEXPRESS;Initial Catalog=master;Integrated Security=True";
            conx = new SqlConnection(con);
            conx.Open();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String query = "SELECT COUNT(USER_ID) FROM LOGIN_DETAILS WHERE USER_ID='" + uid.Text + "' AND PASSWORD='" + pass.Text + "' ";
            SqlCommand command = new SqlCommand(query, conx);
            count = Convert.ToInt32(command.ExecuteScalar());
            if (count > 0)
            {
                Session["Authenticate"] = "yes";
                Response.Redirect("Queries.aspx");
                conx.Close();

            }
            else
            {
                Response.Redirect("SignIn.aspx");
                
                conx.Close();
            }
                        
        }
    }
}