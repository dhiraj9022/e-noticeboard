<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.master" AutoEventWireup="true" CodeFile="UpdateNotice.aspx.cs" Inherits="UpdateNotice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="container-fluid" style="background-color: #192965; font-family: Verdana, Geneva, Tahoma, sans-serif; height: 800px; margin-top: 20px; font-size: medium;">
        <h3 style="color: red"><u>Update Notice!!!</u></h3>
        <br />
        <div style="margin-left: 100px; margin-right: 100px; margin-top: 10px">

            <asp:Label ID="lblnoticeid" runat="server" ForeColor="white" Text="Enter Notice id"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="red" ErrorMessage="*" ControlToValidate="txtnoticeid"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtnoticeid" runat="server" CssClass="form-control"></asp:TextBox>
            <br />

            <asp:Label ID="lblclass" runat="server" ForeColor="white" Text="Enter Class"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="red" ErrorMessage="*" ControlToValidate="txtclass"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtclass" runat="server" CssClass="form-control"></asp:TextBox>
            <br />

            <asp:Label ID="lblsubject" runat="server" ForeColor="white" Text="Enter Subject"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="red" ErrorMessage="*" ControlToValidate="txtsubject"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtsubject" runat="server" CssClass="form-control"></asp:TextBox>
            <br />

            <asp:Label ID="lblmessage" runat="server" ForeColor="white" Text="Enter Message"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="red" ErrorMessage="*" ControlToValidate="txtmessage"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtmessage" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100px" Width="100%"></asp:TextBox>
            <br />

        </div>
        <div style="text-align: center">
            <asp:Button ID="btnupdatenotice" runat="server" class="btn btn-danger" Text="Update Notice" OnClick="btnupdatenotice_Click" />
            <asp:Button ID="btngoback" runat="server" class="btn btn-danger" Text="GoBack" OnClick="btngoback_Click" />
        </div>
    </div>
</asp:Content>

