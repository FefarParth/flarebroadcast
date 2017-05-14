using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class IdeaListing : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from IdeaPost,SignUp,Category,State WHERE IdeaPost.Reg_id = SignUp.Reg_id AND IdeaPost.Category_id = Category.Category_id AND IdeaPost.State_id = State.State_id AND [Title] like'%" + @Session["Idea_Search"] + "%'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
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
 /*   protected void gvDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvDetails.PageIndex = e.NewPageIndex;
        BindGridview();
    }

        

    protected void gvDetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //getting username from particular row
            string Idea_post_id = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Idea Post Id"));
            LinkButton lnkbtnresult = (LinkButton)e.Row.FindControl("ViewMore");
            lnkbtnresult.Attributes.Add("onclick", "javascript:return ConfirmationBox('" + Idea_post_id + "')");
        }
    }


    protected void ViewMore_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtn = sender as LinkButton;
        //getting particular row linkbutton
        GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
        //getting userid of particular row
        int Ideaid = Convert.ToInt32(gvDetails.DataKeys[gvrow.RowIndex].Value.ToString());
        int result;
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(cs);
        {
            
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from IdeaPost where Idea_post_id=" + Ideaid, con);
          //  SqlCommand cmd = new SqlCommand(Response.Redirect("Home.aspx);, con);
            result = cmd.ExecuteNonQuery();
            con.Close();
        }
        if (result == 1)
        {
            BindGridview();
        }
    } */


    protected void grdCustomPagging_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "VIEW")
        {
            LinkButton ViewMore = (LinkButton)e.CommandSource;
            string Idea_post_id = ViewMore.CommandArgument;

            Response.Redirect("IdeaPostDetail.aspx?IdeaPostId=" + Idea_post_id);
        }
    }
    protected void grdCustomPagging_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}