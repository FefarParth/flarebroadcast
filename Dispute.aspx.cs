using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Dispute : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select Message from DisputeMessage,Dispute,SignUp WHERE DisputeMessage.Dispute_id = Dispute.Dispute_id AND DisputeMessage.Reg_id = SignUp.Reg_id", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                rptmsg.DataSource = ds.Tables[0];
                rptmsg.DataBind();

            }
            con.Close();

        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
         string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;
         SqlConnection con = new SqlConnection(cs);
         con.Open();
         SqlCommand cmd = new SqlCommand("select Title from IdeaPost,Payment,Escrow WHERE IdeaPost.Reg_id = ('" + Session["Anant"] + "') AND IdeaPost.Idea_post_id = Payment.Idea_post_id AND Payment.Pay_id = Escrow.Pay_id", con);
         cmd.ExecuteNonQuery();


         string IdeaPostId = DropDownList1.SelectedValue;

         //int IdeaPostId1 = Convert.ToInt32(Request.QueryString["IdeaPostId"]);
         string str = "select * from IdeaPost WHERE (Idea_post_id) = ('" + IdeaPostId + "')";
         SqlCommand cmd1 = new SqlCommand(str, con);
         SqlDataReader reader = cmd1.ExecuteReader();
         reader.Read();

        
         Label1.Text = reader["Title"].ToString();
         // reader.Read();

         Label2.Text = reader["Summary"].ToString();
         // Reader.Read();

         Label3.Text = reader["Min_investment"].ToString();
         // Reader.Read();

         reader.Close();
         

        
        con.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(cs);

        con.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO DisputeMessage (Reg_id,Message,Date) VALUES('" + Session["Anant"] + "','" + TextBox1.Text + "','" + DateTime.Now + "')", con);
       
        cmd.ExecuteNonQuery();
        con.Close();
    }
}