using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;
using System.IO;
using System.Text;
using System.Data;

public partial class DeleteNotice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /* Admin Login */
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
    protected void btnnotice_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        try
        {
           
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
                string query = "delete from Message where id=@id";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@id", txtnoticeid.Text);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Notice deleted successfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Invalid ID')</script>");
                }
            }
            }
        catch (SqlException err)
        {
            Response.Write(err.Message);
        }
            finally
            {
                con.Close();
            }
            txtnoticeid.Text = "";
    }


  /*  protected void btndelfees_Click(object sender, EventArgs e)
    {
          
            string cs = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            try
            {
                string query = "delete from FeesStructure where id=@id";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@id", txtnoticeid.Text);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Fees deleted successfully')</script>");
            }
            catch (SqlException err)
            {
                Response.Write(err.Message);
            }
            finally
            {
                con.Close();
            }
            txtnoticeid.Text = "";
    }*/
    protected void btngoback_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPage.aspx");
    }
}