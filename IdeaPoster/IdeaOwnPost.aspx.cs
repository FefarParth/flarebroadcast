using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class IdeaPoster_IdeaOwnPost : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from IdeaPost,Category WHERE Reg_id = ('" + Session["Anant"] + "') AND Category.Category_id = IdeaPost.Category_id", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            con.Close();
            GridView6.DataSource = ds;
            GridView6.DataBind();
        }


    }

    protected void GridView6_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "VIEW")
        {
            LinkButton ViewMore = (LinkButton)e.CommandSource;
            string Idea_post_id = ViewMore.CommandArgument;

            Response.Redirect("~/IdeaPoster/IdeaOwnPostDetail.aspx?IdeaPostId=" + Idea_post_id);
        }
    }
    protected void GridView6_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}