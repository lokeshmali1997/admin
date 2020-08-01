using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            txtuser.Text = "Hi" + " " + Session["UserName"];
            
        }
    }

    protected void btnlogout(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Login.aspx");
    }
}