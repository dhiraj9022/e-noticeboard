<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.master" AutoEventWireup="true" CodeFile="Display.aspx.cs" Inherits="Display" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container-fluid" style="background-color: #192965;font-family: Verdana, Geneva, Tahoma, sans-serif;height:auto;margin-top:20px; font-size: medium; " >
       <div style="margin-top:20px;margin-bottom:20px;">
           <asp:Button ID="btnshow" runat="server" CssClass="btn btn-danger" Text="Show Feedback" OnClick="btnshow_Click" />
           <asp:Button ID="btnnotice" runat="server" CssClass="btn btn-danger" Text="Notice" OnClick="btnnotice_Click"/>
            <asp:Button ID="btnblocking" runat="server" CssClass="btn btn-danger" Text="Block" PostBackUrl="~/BlockUser.aspx"/>
            <asp:Button ID="btnreport" runat="server" CssClass="btn btn-danger" Text="Generate Report" OnClick="btnreport_Click"/>
            <asp:Button ID="btngpback" runat="server" CssClass="btn btn-danger" Text="GoBack" OnClick="btngpback_Click"  />
           <br />
           <br />
           <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="817px">
               <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
               <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
               <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
               <RowStyle BackColor="White" ForeColor="#330099" />
               <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
               <SortedAscendingCellStyle BackColor="#FEFCEB" />
               <SortedAscendingHeaderStyle BackColor="#AF0101" />
               <SortedDescendingCellStyle BackColor="#F6F0C0" />
               <SortedDescendingHeaderStyle BackColor="#7E0000" />
           </asp:GridView>
           <br />
       </div>
 </div>
</asp:Content>

