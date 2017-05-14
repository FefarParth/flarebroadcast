using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Investor_InvestorListing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridview();
        }
    }
        
    protected void BindGridview()
    {
        DataSet ds = new DataSet();
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(cs);
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from InvestorPost", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            con.Close();
            grdCustomPagging.DataSource = ds;
            grdCustomPagging.DataBind();
        }   
    
 
    }

    protected void grdCustomPagging_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "VIEW")
        {
            LinkButton ViewMore = (LinkButton)e.CommandSource;
            string Investor_post_id = ViewMore.CommandArgument;

            Response.Redirect("~/Investor/InvestorPostDetail1.aspx?InvestorPostId=" + Investor_post_id);
        }
    }

    protected void grdCustomPagging_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}