using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class BlockUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnblock_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        try
        {
            string query = "update signup set status='deactive' where username=@username";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username", txtblock.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            Response.Write("<script>alert('Blocked your account')</script>");
        }
        catch (SqlException err)
        {
            Response.Write(err.Message);
        }
        finally
        {
            con.Close();
        }
        txtblock.Text = "";
    }

    protected void btndeblock_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        try
        {
            string query = "update signup set status='active' where username=@username";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username",txtblock.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            Response.Write("<script>alert('Deblocked your account')</script>");
        }
        catch (SqlException err)
        {
            Response.Write(err.Message);
        }
        finally
        {
            con.Close();
        }
        txtblock.Text = "";
    }
}