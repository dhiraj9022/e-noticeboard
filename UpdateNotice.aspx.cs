using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using System.Data;

public partial class UpdateNotice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] != null)
        {
            Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();

            Response.ClearHeaders();
            Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
            Response.AddHeader("Pragma", "no-cache");
        }
        else
        {
            Response.Redirect("AdminLogin.aspx");
        }
        Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetNoStore();

        Response.ClearHeaders();
        Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
        Response.AddHeader("Pragma", "no-cache");
    }
    protected void btnupdatenotice_Click(object sender, EventArgs e)
    {
         
        string cs = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        try
        {

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            string query = "update Message set class=@class,subject=@subject,message=@message where id=@id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", txtnoticeid.Text);
            cmd.Parameters.AddWithValue("@class", txtclass.Text);
            cmd.Parameters.AddWithValue("@subject", txtsubject.Text);
            cmd.Parameters.AddWithValue("@message", txtmessage.Text);
            int i=cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script>alert('Notice Updated successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('Invalid ID')</script>");
            }
        }
        catch(SqlException err)
        {
            Response.Write(err.Message);
        }
        finally
        {
            con.Close();
        }
            txtnoticeid.Text = "";
            txtmessage.Text = "";
            txtclass.Text = "";
            txtsubject.Text = "";
    }
    protected void btngoback_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPage.aspx");
    }
}