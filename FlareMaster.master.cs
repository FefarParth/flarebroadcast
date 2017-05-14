using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class FlareMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (Session["anant"] == null)
        {
            log.Text = "Login";
        }
        else
        {
            log.Text = "Logout";
        }


       
    }
    protected void log_Click(object sender, EventArgs e)
    {


        if (log.Text == "Login")
        {
            Response.Redirect("~/login.aspx");
        }
        else
        {
            log.Text = "Login";
            Session["anant"] = null;
            Response.Redirect("~/login.aspx");

        }
        
        
       
        
    }
   
    protected void Pro_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
    protected void Pro2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
    protected void contact_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Contact.aspx");
    }


    protected void home_Click(object sender, EventArgs e)
    {


        if (Session["anant"] == null)
        {
            Response.Redirect("~/Home.aspx");
        }
        else
        {


            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            int RegId = Convert.ToInt32(Session["Anant"]);
            string str = "select * from SignUp WHERE (Reg_id) = ('" + RegId + "')";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            string type = reader["User_type"].ToString();

            if (type == "Flare Planner")
            {
                Response.Redirect("~/IdeaPoster/Home1.aspx");
            }
            if (type == "Investor")
            {
                Response.Redirect("~/Investor/Home1.aspx");
            }
            if (type == "Admin")
            {
                Response.Redirect("~/Admin/Home1.aspx");
            }
            reader.Close();
            con.Close();
        }
        
    }

}
