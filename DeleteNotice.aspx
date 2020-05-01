<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.master" AutoEventWireup="true" CodeFile="DeleteNotice.aspx.cs" Inherits="DeleteNotice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid" style="background-color: #192965; font-family: Verdana, Geneva, Tahoma, sans-serif; height: 800px; margin-top: 20px; font-size: medium;">
        <h3 style="color: red"><u>Delete Notice!!!</u></h3>
        <br />
        <div style="margin-left: 100px; margin-right: 100px; margin-top: 10px">
            <asp:Label ID="lblnoticeid" runat="server" ForeColor="white" Text="Enter Notice id"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="red" ControlToValidate="txtnoticeid"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtnoticeid" runat="server" CssClass="form-control"></asp:TextBox>
            <br />

        </div>
        <div style="text-align: center">
            <asp:Button ID="btnnotice" runat="server" class="btn btn-danger" Text="Delete Notice" OnClick="btnnotice_Click" />
            <asp:Button ID="btngoback" runat="server" class="btn btn-danger" Text="GoBack" OnClick="btngoback_Click" />

        </div>
        <br />
    </div>

</asp:Content>

