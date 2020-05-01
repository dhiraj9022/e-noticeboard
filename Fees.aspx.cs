using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Fees : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnupload_Click(object sender, EventArgs e)
    {
        string cs=ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);

        string path = Server.MapPath("~/UploadFiles/fees/");
        if (flupload.HasFile)
        {
            string ext = Path.GetExtension(flupload.FileName);
            if (ext == ".jpeg" || ext==".jpg" || ext == ".png" || ext == ".pdf" || ext == ".gif")
            {
                
                flupload.SaveAs(path + flupload.FileName);
                string img = "~/UploadFiles/fees/"+flupload.FileName;
                string query = "Insert into FeesStructure values(@fees,@image)";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.Parameters.AddWithValue("@fees", txtname.Text);
                cmd.Parameters.AddWithValue("@image", img);
                cmd.ExecuteNonQuery();
                con.Close();

                txtname.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Please choose the jpeg, png, pdf & gif format file!!!')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please select file!!!')</script>");
        }
        


    }
    protected void btngoback_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPage.aspx");
    }
}