using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class DetailView : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    DataFunction objdf = new DataFunction();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            txtuser.Text = "Hi" + " " + Session["UserName"];
            FetchDetails();
        }
    }

    public void FetchDetails()
    {
        ds = objdf.FillDss("select rm.id, rm.Sender_Id, rm.Recevier_Id, um.username, rm.User_Name from RequestMaster rm, UserMaster um where rm.Confrim = '" + 1 + "' AND rm._Delete = '" + 0 + "' and  rm.Sender_Id = um.id ");
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
    }
    protected void btnlogout(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Login.aspx");
    }
}