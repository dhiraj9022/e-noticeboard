using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Login : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] != null)
        {
            Response.Redirect("Home.aspx");

            Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();

            Response.ClearHeaders();
            Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
            Response.AddHeader("Pragma", "no-cache");
        }
    }
    protected void btnsign_Click(object sender, EventArgs e)
    {
        /* string query = "select count(*) from signup where username=@username and password=@password and status='active'";
         string cs = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
         SqlConnection con = new SqlConnection(cs);
         con.Open();
         try
         {
             SqlCommand cmd = new SqlCommand(query, con);
             cmd.Parameters.AddWithValue("@username", txtusername.Text);
             cmd.Parameters.AddWithValue("password", txtpass.Text);
             int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
             if (temp == 1)
             {
                   Session["id"] = txtusername.Text;
                     Response.Redirect("Home.aspx");
              
             }
             else
             {
                 Response.Write("<script>alert('Invalid Username or Password')</script>");
             }
         }
         catch (SqlException err)
         {
             Response.Write(err.Message);
         }
         finally
         {
             con.Close();
         }*/

        String uname;
        String pass;
        String status;

        string cs = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        con.Open();

        string query = "select * from signup where username=@username and password=@password ";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@username", txtusername.Text);
        cmd.Parameters.AddWithValue("@password", txtpass.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            uname = ds.Tables[0].Rows[0]["username"].ToString();
            pass = ds.Tables[0].Rows[0]["password"].ToString();
            status = ds.Tables[0].Rows[0]["status"].ToString();
            con.Close();
            if (status == "active")
            {
                if (uname == txtusername.Text && pass == txtpass.Text)
                {
                    Session["id"] = txtusername.Text;
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Username or Password')</script>");

                }
            }
            else
            {
                Response.Write("<script>alert('Sorry Admin locked your account ')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid Username or Password ')</script>");

        }

        txtusername.Text = "";
        txtpass.Text = "";
    }

}