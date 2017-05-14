using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Investor_InvestorPostAppliers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
   
    {
        if (!IsPostBack)
        {
            BindGridview2();
        }
    }

    protected void BindGridview2()
    {
        DataSet ds = new DataSet();
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(cs);
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from InvestorApply,SignUp WHERE Investor_post_id = ('" + Session["Appliers"] +"') AND SignUp.Reg_id = InvestorApply.Reg_id", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            con.Close();
            GridView5.DataSource = ds;
            GridView5.DataBind();
            
        }


    }

    protected void GridView5_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Award1")
        {
            Button Award = (Button)e.CommandSource;
            string Investor_post_id = Award.CommandArgument;

            Response.Redirect("~/Investor/Submit.aspx?InvestorPostId=" + Investor_post_id);
        }
    }

  /*  void getname()
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(cs);
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT (F_name+ ' ' + L_name)  as name from SignUp", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView5.DataSource = dt;
            GridView5.DataBind();
        }
    } */
}