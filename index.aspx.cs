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
public partial class index : System.Web.UI.Page
{

    DataFunction objdf = new DataFunction();
    DataSet ds;
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {
            txtuser.Text = "Hi"+" "+Session["UserName"];
            filldata();
            countmemberdata();
        }
        else
        {
            Response.Redirect("Login.aspx");
        
        }
       

    }

   
    public void filldata()
    {

        dt = objdf.FillDT("select top 5 id,username,useremail,usermobilenumber,age,city from UserMaster");
       

        Repeater1.DataSource = dt;
        Repeater1.DataBind();

       

       

    }
    public void countmemberdata()
    {

        DataSet ds = objdf.FillDss("select count(id) as total,count(case when gender='1' then 1 end ) as male_cnt,count(case when gender='2' then 1 end ) as female_cnt  from UserMaster");

        lblcountmem.Text = ds.Tables[0].Rows[0]["total"].ToString();
        lblbride.Text = ds.Tables[0].Rows[0]["female_cnt"].ToString();
        lblgroom.Text = ds.Tables[0].Rows[0]["male_cnt"].ToString();







    }



    protected void btnlogout(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Login.aspx");
    }
}