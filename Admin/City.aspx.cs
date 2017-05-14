using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_City : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;




        SqlConnection con = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand("INSERT INTO City (City_title,State_id) VALUES('" + TextBox1.Text + "','" + DropDownList1.SelectedValue + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Citylist.aspx");
    }
}