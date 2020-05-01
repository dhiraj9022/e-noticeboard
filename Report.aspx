<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">

            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" EnableDatabaseLogonPrompt="False" ToolPanelView="None" />
            <br />
            <div  style="border-radius: 10px;text-align:center;padding-right:250PX;">
                <asp:Button ID="btnback" runat="server" Text="Back" BackColor="#F76A8C" OnClick="btnback_Click" Height="30px" Width="80PX"/>
            </div>
        </div>
    </form>
</body>
</html>
