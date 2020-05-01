<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.master" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid" style="font-family: verdana, Geneva, Tahoma, sans-serif;  margin-top: 20px;font-size: medium;">
        <div style="border-color: ActiveBorder; background-color: #192965;border-radius:10px"><br />
            <h3 style="text-align:center;padding-bottom:10px;color:#fdd365; font-size:xx-large;">Welcome to the Admin Page</h3>        
        </div>

<div style="margin-left:20px;margin-right:20px;padding-left:40px;padding-top:10px;background-color:#e1f2fb; height:110px; font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: 400; line-height: normal; word-spacing: inherit; letter-spacing: inherit;">
            <asp:Menu ID="Menu1" runat="server" StaticSubMenuIndent="16px" Orientation="Horizontal">
            <staticmenuitemstyle horizontalpadding="5"/>
            <Items>
                <asp:MenuItem Text="AddNotice"   Value="AddNotice">
                    <asp:MenuItem NavigateUrl="~/Message.aspx" Text="Message" Value="Message"></asp:MenuItem>
                    <asp:MenuItem Text="Upload" Value="Upload">
                        <asp:MenuItem Text="Fees" Value="Fees" NavigateUrl="~/Fees.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Result" Value="Result" NavigateUrl="~/Result.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Timetable" Value="Timetable" NavigateUrl="~/Timetable.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="UpdateNotice" Value="UpdateNotice" NavigateUrl="~/UpdateNotice.aspx"></asp:MenuItem>
                <asp:MenuItem Text="DeleteNotice" Value="DeleteNotice" NavigateUrl="~/DeleteNotice.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Display" Value="Display" NavigateUrl="Display.aspx"></asp:MenuItem>
            </Items>

        </asp:Menu>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button1" runat="server" CssClass=" btn btn-danger" Text="Logout" OnClick="Button1_Click" />   
</div>
        <div style="text-align: center;margin-left:30px">
            <img src="Image/admin.PNG" class="img-responsive" />
        </div>
        <br />
    </div>
 
   
</asp:Content>

