using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(cs);
        con.Open();
        
        
        string text = TextBox1.Text;
        Session["Investor_Search"] = text;
        Response.Redirect("~/IdeaPoster/InvestorListing.aspx");
     }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
          
    }
  
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(cs);
        con.Open();


        string text = TextBox2.Text;
        Session["Idea_Search"] = text;
        Response.Redirect("~/Investor/IdeaListing.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}