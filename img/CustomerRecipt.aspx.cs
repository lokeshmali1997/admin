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
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["UserName"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        

    }

    protected void btndetail_Click(object sender, EventArgs e)
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
            name = txtdetails.Text;

            cmd.CommandText = "select * from CUSTOMER_DETAIL_MASTER where C_Name = '" + name + "'";

            
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

          C_Id.Text = ds.Tables[0].Rows[0]["C_Id"].ToString();
          C_Name.Text = ds.Tables[0].Rows[0]["C_Name"].ToString();
          C_Email.Text = ds.Tables[0].Rows[0]["C_EmailAddress"].ToString();
          C_ContactNumber.Text = ds.Tables[0].Rows[0]["C_ContactNumber"].ToString();
          C_AlternateNumber.Text = ds.Tables[0].Rows[0]["C_AlternateNumber"].ToString();
          C_Address.Text = ds.Tables[0].Rows[0]["C_Address"].ToString();
          M_CheckInDate.Text = ds.Tables[0].Rows[0]["M_CheckInDate"].ToString();
          M_ImeiNumber.Text = ds.Tables[0].Rows[0]["M_ImeiNumber"].ToString();
          M_CompanyName.Text = ds.Tables[0].Rows[0]["M_ItemName"].ToString();
          M_ModelNumber.Text = ds.Tables[0].Rows[0]["M_ModelCode"].ToString();
          M_RepairWarranty.Text = ds.Tables[0].Rows[0]["M_RepairWarranty"].ToString();
          M_ProblemReported.Text = ds.Tables[0].Rows[0]["M_ProblemReported"].ToString();
          con.Close();

    }        
    }

    