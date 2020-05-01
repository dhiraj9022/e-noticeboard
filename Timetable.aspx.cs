using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Data;

public partial class Timetable : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnupload_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);

        string path = Server.MapPath("~/UploadFiles/timetable/");
        if (flupload.HasFile)
        {
            string ext = Path.GetExtension(flupload.FileName);
            if (ext == ".jpeg" || ext == ".jpg" || ext == ".png" || ext == ".pdf" || ext == ".gif")
            {

                flupload.SaveAs(path + flupload.FileName);
                string img = "~/UploadFiles/timetable/" + flupload.FileName;
                string query = "Insert into TimetableStructure values(@Name,@Image)";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.Parameters.AddWithValue("@Name", txtname.Text);
                cmd.Parameters.AddWithValue("@Image", img);
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