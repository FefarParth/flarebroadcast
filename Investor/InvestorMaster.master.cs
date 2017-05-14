using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InvestorMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["anant"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }

        //sign out button visibality
        if (Session["anant"] == null)
        {
            Button1.Visible = false;
        }
        else
        {
            Button1.Visible = true;
        }

        //image log_in visiblity
        if (Session["anant"] == null)
        {
            login_img.Visible = true;
        }
        else
        {
            login_img.Visible = false;
        }
        //if (Session["anant"] == null)
        //{
        //    log.Text = "Login";
        //}
        //else
        //{
        //    log.Text = "Logout";
        //}
    }
    //protected void log_Click(object sender, EventArgs e)
    //{


    //    if (log.Text == "Login")
    //    {
    //        Response.Redirect("~/login.aspx");
    //    }
    //    else
    //    {
    //        log.Text = "Login";
    //        Session["anant"] = null;
    //        Response.Redirect("~/login.aspx");

    //    }




    //}

    protected void FlarePlaner_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Investor/IdeaListing.aspx");
    }
    protected void InvestorPost_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Investor/InvestorPost.aspx");
    }
    protected void contact_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Investor/Contact.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["anant"] = null;
        Response.Redirect("~/Login.aspx");
        
    }
    protected void login_img_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
}
