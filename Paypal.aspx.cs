using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Paypal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    } 
    protected void paypal_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick&business=flarebroadcast@gmail.com");
        
    } 
    
}