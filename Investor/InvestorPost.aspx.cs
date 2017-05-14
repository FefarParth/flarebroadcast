using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class InvestorPost1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;



        SqlConnection con = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand("INSERT INTO InvestorPost (Reg_id,Intrest,Min_grub,Max_grub,Category_id,Sub_category_id,Country_id,State_id,City_id,Professional_background) VALUES('" + Session["Anant"] + "','" + TextBox1.Text + "','" + DropDownList7.Text + "','" + DropDownList8.Text + "','" + DropDownList9.Text + "','" + DropDownList10.Text + "','" + DropDownList2.Text + "','" + DropDownList3.Text + "','" + DropDownList4.Text + "','" + TextBox2.Text + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("~/Home1.aspx");
    }
}