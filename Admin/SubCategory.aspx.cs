using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_SubCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(cs);
        con.Open();

        SqlCommand cmd = new SqlCommand("INSERT INTO SubCategory (Sub_category_title,Category_id) VALUES('" + TextBox1.Text + "','" + DropDownList1.SelectedValue + "')", con);

        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("~/Admin/SubCategorylist.aspx");
    }
}