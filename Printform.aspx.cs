using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web.Services;
using System.Data.SqlClient;
using System.Collections.Generic; 
public partial class Printform : System.Web.UI.Page
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

        string name;

        Int64 phone;


        long i;

//        Int64 number = Convert.ToInt64(txtdetails.Text);


        if (!long.TryParse(txtdetails.Text, out i))
        {
            name = txtdetails.Text.ToString();
            cmd.CommandText = "select * from CUSTOMER_DETAIL_MASTER where C_Name = '" + name + "' ";
        }

        else
        {

            phone = Convert.ToInt64(txtdetails.Text);
            cmd.CommandText = "select * from CUSTOMER_DETAIL_MASTER where C_ContactNumber = '" + phone + "' or M_ImeiNumber = '" + phone + "' or C_AdharNumber = '" + phone + "' ";
        }

        SqlDataAdapter adpt = new SqlDataAdapter();
        adpt.SelectCommand = cmd;

        DataSet ds = new DataSet();
        adpt.Fill(ds);
        //adpt.Fill(ds, "C_Name");

        DetailsView1.DataSource = ds;
        DetailsView1.DataBind();

        con.Close();

    }
    protected void btndetail_Click(object sender, EventArgs e)
    {
       FillDetailView();
        


    }



   


}