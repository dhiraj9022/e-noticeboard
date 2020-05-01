using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Display : System.Web.UI.Page
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
    protected void btnshow_Click(object sender, EventArgs e)
    {
        string cs=ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        try
        {
            string query = "select * from FeedBack";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        catch (SqlException err)
        {
            Response.Write(err.Message);
        }
        finally
        {
            con.Close();
        }
    }
    protected void btngpback_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPage.aspx");
    }
    protected void btnnotice_Click(object sender, EventArgs e)
    {
        Response.Redirect("Notice.aspx");
    }
    protected void btnreport_Click(object sender, EventArgs e)
    {
        Response.Redirect("Report.aspx");
    }
}