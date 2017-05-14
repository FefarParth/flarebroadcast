using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;



        SqlConnection con = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand("INSERT INTO Contact (Name,Email_id,Contact_number,CallBack,Reason,Message) VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + CheckBox1.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Home1.aspx");
    }

  
}