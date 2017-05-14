using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class IdeaPoster_IdeaPostAppliers : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from IdeaApply,SignUp WHERE Idea_post_id = ('" + Session["Appliers"] + "') AND SignUp.Reg_id = IdeaApply.Reg_id", con);
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
            string Idea_post_id = Award.CommandArgument;

            Response.Redirect("~/IdeaPoster/Submit.aspx?IdeaPostId=" + Idea_post_id);
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}