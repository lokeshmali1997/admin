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


        filldata();
    }


    public void filldata()
    {

        dt = objdf.FillDT("select  id,username,useremail,usermobilenumber,age,city from UserMaster");


        Repeater1.DataSource = dt;
        Repeater1.DataBind();


    }


    //protected void btndelete_Click(object sender, EventArgs e)
    //{
        
    //}

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if(e.CommandName == "Delete")
        {
            var deleteid = e.Item.FindControl("lblid") as Label;

            ds = objdf.FillDss("delete from Usermaster where id = 'deleteid' ");

            Repeater1.DataSource = ds;
            Repeater1.DataBind();

            filldata();
        }
    }

    //public void deletedata(int deleteid)
    //{

        
    //}
}