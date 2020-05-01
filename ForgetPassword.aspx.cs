using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Data;
using System.Net.Mail;
using System.Net;

public partial class ForgetPassword : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
   
        string cs = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        string query = "select password from signup where email='"+txtemail.Text+"'";
        SqlDataAdapter da = new SqlDataAdapter(query,con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        
       if(dt.Rows.Count.ToString()=="1")
       {
         
           if(txtpass.Text==txtconfirm.Text)
           {
               con.Open();
               query="update signup set password='"+txtconfirm.Text+"' where email=@email ";
               SqlCommand cmd = new SqlCommand(query,con);
               cmd.Parameters.AddWithValue("@email",txtemail.Text);
               cmd.ExecuteNonQuery();
               con.Close();
               Response.Write("<script>alert('password successfully updated')</script>");
               
               txtemail.Text = "";
               txtpass.Text = "";
               txtconfirm.Text = "";
           }
           else
           {
                 Response.Write("<script>alert('password should not match')</script>");
           }
        }
       else
        {
            Response.Write("<script>alert('Invalid Email-Id')</script>");
        }
    
   }
}