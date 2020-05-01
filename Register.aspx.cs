using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class Register : System.Web.UI.Page
{
   

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        if (checkemail() == true)
        {
            Response.Write("<script>alert('Email already registered')</script>");
        }
        else
        {
            string cs = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            try
            {
                string query = "insert into signup values(@username,@password,@dob,@gender,@email,'active')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@username", txtusername.Text);
                cmd.Parameters.AddWithValue("@password", txtpass.Text);
                cmd.Parameters.AddWithValue("@dob", txtdob.Text);
                cmd.Parameters.AddWithValue("@gender", rbtngeneder.SelectedValue);
                cmd.Parameters.AddWithValue("@email", txtemail.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                Response.Redirect("Login.aspx");
            }
            catch(SqlException err)
            {
                Response.Write(err.Message);
            }
            finally
            {
                con.Close();
            }
            txtusername.Text = "";
            txtdob.Text = "";
            foreach (ListItem item in rbtngeneder.Items)
                item.Selected = false;
            txtemail.Text = "";
        }
     }
    private Boolean checkemail()
    {
        Boolean emailavailable = false;
        string cs = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        String query1 = "Select * from signup where email=@email";
        SqlCommand cmd = new SqlCommand(query1,con);
        cmd.Parameters.AddWithValue("@email",txtemail.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            emailavailable = true;

        }
        con.Close();

        return emailavailable;
    }
           
}