using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

public partial class Report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        ReportDocument rdoc = new ReportDocument();
        rdoc.Load(Server.MapPath("~/CrystalReport.rpt"));
        DataSetNotice dsn = this.GetData("Select class,year,subject,date,message from Message");
        rdoc.SetDataSource(dsn);
        CrystalReportViewer1.ReportSource = rdoc;
        CrystalReportViewer1.RefreshReport();

    }

    private DataSetNotice GetData(string query)
    {
        string cs = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        SqlCommand cmd = new SqlCommand(query);
        SqlDataAdapter da = new SqlDataAdapter(query,con);
        DataSetNotice dsn = new DataSetNotice();
        da.Fill(dsn,"Message");
        return dsn;
       
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:49681/E-Notice Board1/AdminPage.aspx");
    }
}