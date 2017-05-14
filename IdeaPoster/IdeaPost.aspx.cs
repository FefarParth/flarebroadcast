using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class IdeaPost : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;




      /*  SqlConnection con = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand("INSERT INTO IdeaPost (Reg_id,Title,C_name,Website,Country,State,City,Category,Category_2,Stage,Investor_role,Raise,Min_investment) VALUES('" + Session["Anant"] + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList8.Text + "','" + DropDownList9.Text + "','" + DropDownList10.Text + "','" + DropDownList2.Text + "','" + DropDownList3.Text + "','" + DropDownList4.Text + "','" + DropDownList5.Text + "','" + DropDownList6.Text + "','" + DropDownList7.Text + "')", con);
        con.Open();

       int a = cmd.ExecuteNonQuery();
        con.Close();
        //Response.Redirect("IdeaPost1.aspx");
        Response.Write(a);         */




        SqlConnection con = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand("INSERT INTO IdeaPost (Reg_id,Title,C_name,Website,Country_id,State_id,City_id,Category_id,Category_id2,Stage,Investor_role,Raise,Min_investment) VALUES('" + Session["Anant"] + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList8.Text + "','" + DropDownList9.Text + "','" + DropDownList10.Text + "','" + DropDownList2.Text + "','" + DropDownList3.Text + "','" + DropDownList4.Text + "','" + DropDownList5.Text + "','" + DropDownList6.Text + "','" + DropDownList7.Text + "')", con);
        con.Open();

        cmd.ExecuteNonQuery();
        //create a new dataAdapter
        SqlDataAdapter ad = new SqlDataAdapter("SELECT TOP 1 Idea_post_id FROM Ideapost ORDER BY Idea_post_id DESC;", con);
        //sqlcommandbuilder is used for changes made in a dataset in a database
        SqlCommandBuilder builder = new SqlCommandBuilder(ad);
        //Create a dataset Object
        DataSet ds = new DataSet();
        //use dataAdapter object to fill the dataset
        ad.Fill(ds, "IdeaPost");
        //create a datatype objectin a table
        DataTable dt = ds.Tables["IdeaPost"];

       
        //populating text fields with 1st record from database.
        String ab = dt.Rows[0][0].ToString();
        
        Session["m"] = ab.ToString();

        Response.Redirect("IdeaPost1.aspx");
    }
}