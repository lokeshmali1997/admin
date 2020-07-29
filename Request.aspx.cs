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
    DataSet ds = new DataSet();
    DataFunction objdf = new DataFunction();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else {
            txtuser.Text = "Hi" + " " + Session["UserName"];
            FetchDetails();
        }

    }
    public void FetchDetails()
    {
        ds = objdf.FillDss("select rm.id, rm.Sender_Id, rm.Recevier_Id, um.username, rm.User_Name from RequestMaster rm, UserMaster um where rm.Confrim = '" + 0+"' AND rm._Delete = '"+0+"' and  rm.Sender_Id = um.id ");
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Approve")
        {
            int Sender_Id = Convert.ToInt32((e.Item.FindControl("hiddid") as HiddenField).Value);
            int Recevier_Id = Convert.ToInt32((e.Item.FindControl("hidd2") as HiddenField).Value);
            InsertConfirmDetails(Sender_Id, Recevier_Id);
        }
        if (e.CommandName == "Delete")
        {
            int Sender_Id = Convert.ToInt32((e.Item.FindControl("hiddid") as HiddenField).Value);
            int Recevier_Id = Convert.ToInt32((e.Item.FindControl("hidd2") as HiddenField).Value);
            DeleteRequestDetails(Sender_Id, Recevier_Id);
        }
    }
    public void InsertConfirmDetails(int Sender_Id, int Recevier_Id)
    {
        DateTime dt = DateTime.Now;
        var date = dt.ToString("dd/MMMM/yyyy");
        var time = dt.ToString("hh:mm tt");
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "usp_InsertConfirmIntoRequest_Master";
        cmd.Parameters.AddWithValue("@UserId", Recevier_Id);
        cmd.Parameters.AddWithValue("@Sender_Id", Sender_Id);
        cmd.Parameters.AddWithValue("@Date", date);
        cmd.Parameters.AddWithValue("@Time", time);
        int result = cmd.ExecuteNonQuery();
        if (result > 0)
        {
            Response.Write("<script>alert('Data inserted Successfully')</script>");

        }
        Response.Redirect(Request.RawUrl);
    }
    public void DeleteRequestDetails(int Sender_Id, int Recevier_Id)
    {
        DateTime dt = DateTime.Now;
        var date = dt.ToString("dd/MMMM/yyyy");
        var time = dt.ToString("hh:mm tt");
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "usp_DeleteFromRequest_Master";
        cmd.Parameters.AddWithValue("@UserId", Recevier_Id);
        cmd.Parameters.AddWithValue("@Sender_Id", Sender_Id);
        cmd.Parameters.AddWithValue("@Date", date);
        cmd.Parameters.AddWithValue("@Time", time);
        int result = cmd.ExecuteNonQuery();
        if (result > 0)
        {
            // Response.Write("<script>alert('Data inserted Successfully')</script>");

        }
        Response.Redirect(Request.RawUrl);
    }
    protected void btnlogout(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Login.aspx");
    }
}