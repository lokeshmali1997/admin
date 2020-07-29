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

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;

        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "usp_admin";

        cmd.Parameters.AddWithValue("@adminname",txtusername.Text);
        cmd.Parameters.AddWithValue("@adminpassword", txtuserpassword.Text);

        SqlDataAdapter adpt = new SqlDataAdapter();
        adpt.SelectCommand = cmd;

        DataSet ds = new DataSet();
        adpt.Fill(ds);

        Session.Add("UserName",txtusername.Text);

        if (ds.Tables[0].Rows.Count > 0)
        {

            Response.Redirect("index.aspx");

        }
        else {

            Response.Write("<script>alert('UserName or password are Not Matched')</script>");
        }


    }

  
}