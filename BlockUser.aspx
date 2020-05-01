<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.master" AutoEventWireup="true" CodeFile="BlockUser.aspx.cs" Inherits="BlockUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid" style="background-color: #192965; font-family: Verdana, Geneva, Tahoma, sans-serif; height: auto; margin-top: 20px; font-size: medium;">
      <h3 style="color:ButtonFace">Blocking User</h3>
        <div style=" margin-top :10px;padding-top:10px; padding-left:10px; margin-right:10px;">
            <asp:Label ID="lblblock" runat="server" ForeColor="#ffa372"> Enter Username</asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtblock" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtblock" runat="server" CssClass="form-control"></asp:TextBox><br />
            <asp:Button ID="btnblock" runat="server" CssClass=" btn btn-danger"  Text="Block User" OnClick="btnblock_Click" />
            <asp:Button ID="btndeblock" runat="server" CssClass=" btn btn-danger"  Text="Deblock User" OnClick="btndeblock_Click" />
        </div><br />
         </div><br />
</asp:Content>

