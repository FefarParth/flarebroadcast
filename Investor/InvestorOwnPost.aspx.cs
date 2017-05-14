using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Investor_InvestorOwnPost : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from InvestorPost,Category WHERE Reg_id = ('" + Session["Anant"] +"') AND Category.Category_id = InvestorPost.Category_id", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            con.Close();
            GridView5.DataSource = ds;
            GridView5.DataBind();
        }


    }

    protected void GridView5_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "VIEW")
        {
            LinkButton ViewMore = (LinkButton)e.CommandSource;
            string Investor_post_id = ViewMore.CommandArgument;

            Response.Redirect("~/Investor/InvestorPostDetail.aspx?InvestorPostId=" + Investor_post_id);
        }
    }
}