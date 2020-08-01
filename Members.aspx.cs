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

            ds = objdf.FillDss("DELETE FROM UserMaster WHERE id='"+ deleteid + "'; DELETE FROM RequestMaster WHERE Sender_Id = '" + deleteid + "'; DELETE FROM Count_Master WHERE Person_Id = '" + deleteid + "';");
            filldata();

            
        }

        if(e.CommandName == "update")
        {
          
            formdetail1.Visible = false;
            formdetail2.Visible = true;
            int editid = Convert.ToInt32((e.Item.FindControl("lblid") as Label).Text);

            lblid.Text = editid.ToString();

            selectuserdetails();
          
        }
    }
    protected void btnlogout(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Login.aspx");
    }

    public void selectuserdetails()
    {
       

        SqlParameter[] param = new SqlParameter[1];

        param[0] = new SqlParameter("@userid", SqlDbType.Int);
        param[0].Value = Int32.Parse(lblid.Text);

        ds = objdf.FillDsParam("usp_filluserdetails", param);


        if (ds.Tables[0].Rows.Count > 0)
        {
            lblusername.Text = ds.Tables[0].Rows[0]["username"].ToString();
            lblemail.Text = ds.Tables[0].Rows[0]["useremail"].ToString();
            //Image1.ImageUrl = ds.Tables[0].Rows[0]["profileimage"].ToString();
            //Image2.ImageUrl = Image1.ImageUrl;
            lblContact.Text = ds.Tables[0].Rows[0]["usermobilenumber"].ToString();
            lblliving.Text = ds.Tables[0].Rows[0]["livingstatus"].ToString();
            lblmarital.Text = ds.Tables[0].Rows[0]["maritalstatus"].ToString();
            lblfamily.Text = ds.Tables[0].Rows[0]["familystatus"].ToString();
            lblheight.Text = ds.Tables[0].Rows[0]["height"].ToString();
            lblmt.Text = ds.Tables[0].Rows[0]["mothertongue"].ToString();
            lblr.Text = ds.Tables[0].Rows[0]["religion"].ToString();
            lblc.Text = ds.Tables[0].Rows[0]["caste"].ToString();


            lblage.Text = ds.Tables[0].Rows[0]["age"].ToString();
            lbldeit.Text = ds.Tables[0].Rows[0]["deit"].ToString();
            lblds.Text = ds.Tables[0].Rows[0]["hobbies"].ToString();
            lblps.Text = ds.Tables[0].Rows[0]["physicalstatus"].ToString();

            lblhe.Text = ds.Tables[0].Rows[0]["heighesteducation"].ToString();
            lblei.Text = ds.Tables[0].Rows[0]["employeein"].ToString();
            lblocc.Text = ds.Tables[0].Rows[0]["occupation"].ToString();
            lblai.Text = ds.Tables[0].Rows[0]["annualincome"].ToString();
            //lblabout.Text = ds.Tables[0].Rows[0]["aboutyourself"].ToString();

            lblcity.Text = ds.Tables[0].Rows[0]["city"].ToString();
            lblstate.Text = ds.Tables[0].Rows[0]["state"].ToString();
            lblcon.Text = ds.Tables[0].Rows[0]["country"].ToString();
            //lblabout.Text = ds.Tables[0].Rows[0]["aboutyourself"].ToString();



        }
        else
        {
            Response.Write("<script>alert('data not fill')</script>");
        }
    }




    protected void btncancel_Click(object sender, EventArgs e)
    {
        formdetail1.Visible = true;
        formdetail2.Visible = false;
    }


    protected void btnupdate_Click(object sender, EventArgs e)
    {

        SqlParameter[] param = new SqlParameter[5];

        param[0] = new SqlParameter("@userid", SqlDbType.Int);
        param[0].Value = Int32.Parse(lblid.Text);

        param[1] = new SqlParameter("@name", SqlDbType.VarChar);
        param[1].Value = lblusername.Text;

        param[2] = new SqlParameter("@email", SqlDbType.VarChar);
        param[2].Value = lblemail.Text;

        param[3] = new SqlParameter("@number", SqlDbType.BigInt);
        param[3].Value = lblContact.Text;

        param[4] = new SqlParameter("@city", SqlDbType.VarChar);
        param[4].Value = lblcity.Text;


        int result = objdf.ExecuteQuery("usp_updateadminuserdetal", param);

        if(result > 0)

        {

            Response.Write("<script>alert('Update Data SuccessFully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Update Not Successfilly!! Try Again')</script>");
        }




    }
}