using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;
        
        SqlConnection con = new SqlConnection(cs);
        string Fullname = (TextBox1.Text + ' ' + TextBox2.Text);

        SqlCommand cmd = new SqlCommand("INSERT INTO SignUp (F_name,L_name,Full_name,Email_id,Password,Contact_number,User_type,User_status) VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + Fullname + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + DropDownList1.Text + "','" + "Active" + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("~/Login.aspx");

        //if (DropDownList1.Text == "Flare Planner")
        //{
        //    Response.Redirect("~/IdeaPoster/Home1.aspx");
        //}
        //if (DropDownList1.Text == "Investor")
        //{
        //    Response.Redirect("~/Investor/Home1.aspx");
        //}
    }
}