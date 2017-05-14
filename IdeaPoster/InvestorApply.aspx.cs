using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Investor_InvestorApply : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(cs);


        SqlCommand cmd = new SqlCommand("INSERT INTO InvestorApply (Investor_post_id,Reg_id,Message,Date) VALUES('" + Session["Apply"] + "','" + Session["Anant"] + "','" + TextBox1.Text + "','" + DateTime.Now + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("~/IdeaPoster/Submit.aspx");
    }
}