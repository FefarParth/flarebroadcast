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
            SqlCommand cmd = new SqlCommand("Select * from InvestorPost,SignUp,Category,State where InvestorPost.Reg_id = SignUp.Reg_id AND InvestorPost.Category_id = Category.Category_id AND InvestorPost.State_id = State.State_id AND [Intrest] like'%" + @Session["Investor_Search"] + "%'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                grdCustomPagging.DataSource = ds.Tables[0];
                grdCustomPagging.DataBind();
                Label1.Visible = false;
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "No Record Found";
            }
            con.Close();
            
        }   
    
 
    }

    protected void grdCustomPagging_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "VIEW")
        {
            LinkButton ViewMore = (LinkButton)e.CommandSource;
            string Investor_post_id = ViewMore.CommandArgument;

            Response.Redirect("~/IdeaPoster/InvestorPostDetail1.aspx?InvestorPostId=" + Investor_post_id);
        }
    }

    protected void grdCustomPagging_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}