<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.master" AutoEventWireup="true" CodeFile="Notice.aspx.cs" Inherits="Notice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid" style="background-color: #192965; font-family: Verdana, Geneva, Tahoma, sans-serif; margin-top: 20px; font-size: medium; height:800px ;">
     <h3 style="text-align:center;color:white">Notice Dashboard</h3><br />
     <div style="margin-left:10px; margin-right:10px;margin-top:20px;">

         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="100%" AllowPaging="True">
             <Columns>
                 <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                 <asp:BoundField DataField="class" HeaderText="Class" SortExpression="class" />
                 <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
                 <asp:BoundField DataField="subject" HeaderText="Subject" SortExpression="subject" />
                 <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" DataFormatString="{0:MM/dd/yyyy}" />
                 <asp:BoundField DataField="time" HeaderText="Time" SortExpression="time" DataFormatString="{0:hh:mm tt}" />
                 <asp:BoundField DataField="message" HeaderText="Message" SortExpression="message" />
                 <asp:ImageField DataImageUrlField ="image"></asp:ImageField>
             </Columns>
             <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
             <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
             <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Right" />
             <RowStyle BackColor="White" ForeColor="#330099" />
             <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
             <SortedAscendingCellStyle BackColor="#FEFCEB" />
             <SortedAscendingHeaderStyle BackColor="#AF0101" />
             <SortedDescendingCellStyle BackColor="#F6F0C0" />
             <SortedDescendingHeaderStyle BackColor="#7E0000" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstring %>" 
             SelectCommand="SELECT * FROM [Message] ORDER BY [date] DESC, [time] DESC, [year]"></asp:SqlDataSource>
     </div>
    </div>
</asp:Content>

