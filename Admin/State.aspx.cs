using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_State : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;


        /*
                string query = "Select ID From Table-1 Where Name=" +   DropDownList1.SelectedValue;
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                string getId = dr[0].ToString();       */



        /*

               string query = "Select Country_id from Country";
               SqlConnection con = new SqlConnection(cs);
               SqlCommand cmd = new SqlCommand("INSERT INTO State (State_title,Country_id) VALUES('" + TextBox1.Text + "','" + query + "')", con);
               con.Open();
               SqlDataAdapter da = new SqlDataAdapter(query, con);
               DataTable dt = new DataTable();
               da.Fill(dt);
                 DropDownList1.DataSource = dt;
                 DropDownList1.DataTextField = "Country_title";
                 DropDownList1.DataValueField = "Country_id";
                 DropDownList1.DataBind();

 * */
               
               SqlConnection con = new SqlConnection(cs);
               con.Open();
               
               SqlCommand cmd = new SqlCommand("INSERT INTO State (State_title,Country_id) VALUES('" + TextBox1.Text + "','" + DropDownList1.SelectedValue + "')", con);
               
               cmd.ExecuteNonQuery();
               con.Close();
               Response.Redirect("Statelist.aspx");
              
        
        
               
    }
}