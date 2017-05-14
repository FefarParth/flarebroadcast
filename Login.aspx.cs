using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   protected void Button1_Click(object sender, EventArgs e)
    {

         string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;
        
         SqlConnection con = new SqlConnection(cs);
         con.Open();
         SqlCommand cmd = new SqlCommand("select * from SignUp where Email_id =@Email_id and Password=@password", con);
         cmd.Parameters.AddWithValue("@Email_id", TextBox1.Text);
         cmd.Parameters.AddWithValue("@password", TextBox2.Text);
         SqlDataAdapter da = new SqlDataAdapter(cmd);
         DataTable dt = new DataTable();
         da.Fill(dt);
         
                   
        int OBJ = Convert.ToInt32(cmd.ExecuteScalar());

        if (OBJ > 0)

        {

            Session["Anant"] = OBJ;

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
                      
    /*        if ("select User_type from SignUp" == "Flare Planner")
            {
                Response.Redirect("~/IdeaPoster/Home1.aspx");
            }
            if ("select User_type from SignUp" == "Investor")
            {
                Response.Redirect("~/Investor/Home1.aspx");
            }


*/
            Response.Write(OBJ);



        }

        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Email_id and Password')</script>");
        }






    }
  
}