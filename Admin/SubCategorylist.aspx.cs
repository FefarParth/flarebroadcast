using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_SubCategorylist : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from SubCategory,Category WHERE Category.Category_id = SubCategory.Category_id", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            con.Close();
            GridView15.DataSource = ds;
            GridView15.DataBind();
        }


    }

   
    protected void  Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/SubCategory.aspx");
    }
}