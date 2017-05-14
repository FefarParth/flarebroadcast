using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Submit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string redirecturl = "";

        //Mention URL to redirect content to paypal site
        redirecturl += "https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=" +
                       ConfigurationManager.AppSettings["paypalemail"].ToString();

        //First name i assign static based on login details assign this value
        redirecturl += "&first_name=" + "Hosting";

        //City i assign static based on login user detail you change this value
        redirecturl += "&city=bhubaneswar";

        //State i assign static based on login user detail you change this value
        redirecturl += "&state=Odisha";

        //Product Name
        redirecturl += "&item_name=" + "Hosting";

        //Product Name
        redirecturl += "&amount=" + "1500";

        //Phone No
        redirecturl += "&night_phone_a=" + "385019503920";

        //Product Name
        redirecturl += "&item_name=" + "One Time Payment For App";

        //Address 
        redirecturl += "&address1=" + "aaa";

        //Business contact id
        // redirecturl += "&business=k.tapankumar@gmail.com";

        //Shipping charges if any
        redirecturl += "&shipping=0";

        //Handling charges if any
        redirecturl += "&handling=0";

        //Tax amount if any
        redirecturl += "&tax=0";

        //Add quatity i added one only statically 
        redirecturl += "&quantity=1";

        //Currency code 
        redirecturl += "&currency=" + "GBP";

        //Success return page url
        redirecturl += "&return=" +
          ConfigurationManager.AppSettings["SuccessURL"].ToString();

        //Failed return page url
        redirecturl += "&cancel_return=" +
          ConfigurationManager.AppSettings["FailedURL"].ToString();


        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(cs);
        con.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO Payment (Idea_post_id,Investor_post_id,Amount,Date,Pay_status,Reg_id) VALUES('" + Session["Apply"] + "','" + "0" + "','" + "1500" + "','" + DateTime.Now + "','" + "Success" + "','" + Session["Anant"] + "')", con);

        cmd.ExecuteNonQuery();

        //create a new dataAdapter
        SqlDataAdapter ad = new SqlDataAdapter("SELECT TOP 1 Pay_id FROM Payment ORDER BY Pay_id DESC;", con);
        //sqlcommandbuilder is used for changes made in a dataset in a database
        SqlCommandBuilder builder = new SqlCommandBuilder(ad);
        //Create a dataset Object
        DataSet ds = new DataSet();
        //use dataAdapter object to fill the dataset
        ad.Fill(ds, "Payment");
        //create a datatype objectin a table
        DataTable dt = ds.Tables["Payment"];

        //populating text fields with 1st record from database.
        String ab = dt.Rows[0][0].ToString();

        Session["Payment"] = ab.ToString();

       // int OBJ1 = Convert.ToInt32("SELECT TOP 1 Pay_id FROM Payment ORDER BY Pay_id DESC");
        //Session["Payment"] = OBJ1;

       // SqlCommand cmd1 = new SqlCommand("INSERT INTO Escrow (Pay_id,Idea_post_id,Investor_post_id) VALUES('" + Session["Payment"] + "','" + Session["Apply"] + "','" + "0" + "')", con);

        

        string cs1 = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;
        SqlConnection con1 = new SqlConnection(cs1);

        SqlCommand cmd1 = new SqlCommand("INSERT INTO Escrow (Pay_id,Idea_post_id,Investor_post_id) VALUES('" + Session["Payment"] + "','" + Session["Apply"] + "','" + "0" + "')", con1);
        con1.Open();
        cmd1.ExecuteNonQuery();
        con1.Close();

        con.Close();



        Response.Redirect(redirecturl);
    }
}