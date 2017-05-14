using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Profile1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    protected void Button3_Click(object sender, EventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(cs);

            string folderPath = Server.MapPath("~/Profile_pic/");

            string strname1 = FileUpload1.FileName.ToString();
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Profile_pic/") + strname1);

            Session["Profile_pic"] = strname1;


            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists. Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

            //Display the success message.
            lblMessage.Text = Path.GetFileName(FileUpload1.FileName) + " has been uploaded.";


            con.Open();

            SqlCommand cmd = new SqlCommand("UPDATE Profile SET Profile_photo='" + strname1 + "' WHERE strname1 = '" + Session["Profile_pic"] + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;


        string datu = DropDownList2.Text + "/" + DropDownList3.Text + "/" + DropDownList4.Text;


        SqlConnection con = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand("INSERT INTO Profile (First_name,Last_name,Address,D_O_B,Profile_Type) VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + datu + "','" + DropDownList1.Text + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Home.aspx");
    }
}