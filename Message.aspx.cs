using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Configuration;

public partial class Message : System.Web.UI.Page
{
    
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {

        String cs = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        string query1 = "DELETE FROM Message WHERE date < convert(date,dateadd(dd,-30, getdate())) ";
        cmd = new SqlCommand(query1,con);
        cmd.Parameters.AddWithValue("@message", txtmessage.Text);
        cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString().Substring(0,10));
        cmd.ExecuteNonQuery();
    }
    protected void btnaddnotice_Click(object sender, EventArgs e)
    {
     
         String cs = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
         SqlConnection con = new SqlConnection(cs);
         con.Open();
        try
        {
                String query = "insert into Message values(@class,@year,@subject,@date,@time,@message,'~/Image/new.gif')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@class", txtclass.Text);
                cmd.Parameters.AddWithValue("@year", txtyear.Text);
                cmd.Parameters.AddWithValue("@subject", txtsubject.Text);
                cmd.Parameters.AddWithValue("@date", txtdate.Text);
                cmd.Parameters.AddWithValue("@time", txttime.Text);
                cmd.Parameters.AddWithValue("@message", txtmessage.Text);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Notice Added successfully ')</script>");
        }
        catch(SqlException err)
        {
            Response.Write(err.Message);
        }
        finally
        {
                con.Close();
        }
                txtclass.Text = "";
                txtdate.Text = "";
                txtyear.Text = "";
                txtsubject.Text = "";
                txtmessage.Text = "";
                txttime.Text = "";
    }
   
    protected void btnaback_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPage.aspx");
    }
}