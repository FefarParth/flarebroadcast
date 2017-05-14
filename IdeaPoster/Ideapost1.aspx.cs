using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

public partial class Ideapost1 : System.Web.UI.Page
{
private  object a;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;




        SqlConnection con = new SqlConnection(cs);

       
        con.Open();

        SqlCommand cmd = new SqlCommand("UPDATE IdeaPost SET Summary='" + TextBox1.Text + "',Details='" + TextBox2.Text + "',Market_status='" + TextBox3.Text + "',Future='" + TextBox5.Text + "' WHERE Idea_post_id= '" + Session["m"] + "'", con);
       

        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Home1.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
/*
        // Read the file and convert it to Byte Array
        string filePath = FileUpload1.PostedFile.FileName;
        string filename = Path.GetFileName(filePath);
        string ext = Path.GetExtension(filename);
        string contenttype = String.Empty;

        //Set the contenttype based on File Extension
        switch (ext)
        {
            case ".doc":
                contenttype = "application/vnd.ms-word";
                break;
            case ".docx":
                contenttype = "application/vnd.ms-word";
                break;
            case ".xls":
                contenttype = "application/vnd.ms-excel";
                break;
            case ".xlsx":
                contenttype = "application/vnd.ms-excel";
                break;
            case ".jpg":
                contenttype = "image/jpg";
                break;
            case ".png":
                contenttype = "image/png";
                break;
            case ".gif":
                contenttype = "image/gif";
                break;
            case ".pdf":
                contenttype = "application/pdf";
                break;
        }                                       */

        string cs1 = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;




        SqlConnection con1 = new SqlConnection(cs1);


        

        string folderPath = Server.MapPath("~/Files/");
        string strname = FileUpload1.FileName.ToString();
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Files/") + strname);
        
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

        con1.Open();

        SqlCommand cmd = new SqlCommand("UPDATE IdeaPost SET Proof='" + strname + "' WHERE Idea_post_id= '" + Session["m"] + "'", con1);
        cmd.ExecuteNonQuery();
        con1.Close();


    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
