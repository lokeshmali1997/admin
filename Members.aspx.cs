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



public partial class Insertform : System.Web.UI.Page
{
    DataFunction objdf = new DataFunction();
    DataSet ds;
    DataTable dt;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
           
            Response.Redirect("Login.aspx");
        }
        else
        {
            txtuser.Text = "Hi" + " " + Session["UserName"];
            filldata();
        }
    }


    public void filldata()
    {

        ds = objdf.FillDss("select um.id,username,useremail,usermobilenumber,age,cm.city from UserMaster um, CityMaster cm where um.city  = cm.id ");


        Repeater1.DataSource = ds;
        Repeater1.DataBind();


    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if(e.CommandName == "Delete")
        {
            int deleteid = Convert.ToInt32((e.Item.FindControl("lblid") as Label).Text);

            ds = objdf.FillDss("delete from Usermaster where id = '"+ deleteid +"'");
            filldata();

            
        }
    }
    protected void btnlogout(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Login.aspx");
    }
}