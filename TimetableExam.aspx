<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.master" AutoEventWireup="true" CodeFile="TimetableExam.aspx.cs" Inherits="TimetableExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid" style="background-color: #192965; height: auto; font-family: Verdana, Geneva, Tahoma, sans-serif; margin-top: 20px; font-size: medium;">
        <h3 style="color: white; text-align: center">Timetable Structure</h3>
        <div style="margin-bottom:20px;">
            <br />
            <asp:GridView ID="GridView1" runat="server" DataKeyNames="Image" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" OnRowCreated="GridView1_RowCreated" Width="100%" AllowPaging="True" HorizontalAlign="Center">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" Text="Download" OnClick="LinkButton1_Click"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle HorizontalAlign="Center" />
                <EmptyDataRowStyle HorizontalAlign="Center" />
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" HorizontalAlign="Center" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Right" BorderStyle="None" />
                <RowStyle BackColor="White" ForeColor="#330099" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstring %>" SelectCommand="SELECT * FROM [TimetableStructure] ORDER BY [id] DESC"></asp:SqlDataSource>

        </div>
        </div>
</asp:Content>

