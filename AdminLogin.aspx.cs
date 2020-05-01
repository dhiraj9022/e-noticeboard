using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminLogin : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] != null && Session["role"]== "admin")
        {
            Response.Redirect("AdminPage.aspx");
            Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();

            Response.ClearHeaders();
            Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
            Response.AddHeader("Pragma", "no-cache");
        }
        Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetNoStore();

        Response.ClearHeaders();
        Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
        Response.AddHeader("Pragma", "no-cache");
    }
    protected void btnsignin_Click(object sender, EventArgs e)
    {
        string id,pass,query,id1, pass1;
        id= txtusername.Text;
        pass = txtpass.Text;       

        string cs = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        try
        {
            query = "select * from Admin";
            SqlCommand cmd = new SqlCommand(query,con);
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {

                id1 = dr.GetString(0);
                pass1 = dr.GetString(1);
                if (id == id1 && pass == pass1)
                {
                    Session["id"] = txtusername.Text;
                    Session["role"] = "admin";
                    Response.Redirect("AdminPage.aspx");

                    
                }
                else
                {             
                    Response.Write("<Script>alert('Invalid username & password')</script>");
                }
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
    }
}