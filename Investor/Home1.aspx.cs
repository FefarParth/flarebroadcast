using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Home1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!Page.IsPostBack)
        //{
        //    this.rptProducts.DataSource = InvestorPost.Instance();
        //    this.rptProducts.DataBind();
        //}

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
            SqlCommand cmd = new SqlCommand("select * from IdeaPost,SignUp,Category,State,Profile WHERE Profile_id=1 AND IdeaPost.Reg_id = SignUp.Reg_id AND IdeaPost.Category_id = Category.Category_id AND IdeaPost.State_id = State.State_id AND [Title] like'%" + @Session["Idea_Search"] + "%'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                rptProducts.DataSource = ds.Tables[0];
                rptProducts.DataBind();
                
            }
            con.Close();

        }


    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}