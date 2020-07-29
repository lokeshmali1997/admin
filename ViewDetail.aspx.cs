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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("Login.aspx");
        }

    }

    public void FillDetailView() 
    {

        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        con.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        string name = txtdetails.Text.ToString();
        cmd.CommandText = "select * from CUSTOMER_DETAIL_MASTER where C_Name = '" + name + "'";

        SqlDataAdapter adpt = new SqlDataAdapter();
        adpt.SelectCommand = cmd;

        DataSet ds = new DataSet();
        adpt.Fill(ds);

        DetailsView1.DataSource = ds;
        DetailsView1.DataBind();

        con.Close();
         
    }
    protected void btndetail_Click(object sender, EventArgs e)
    {
        FillDetailView();

        
    }
   
    
}