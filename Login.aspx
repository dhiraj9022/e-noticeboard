<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

     .sign
     {
        color:white;
        padding-left:50px;
        margin-top:20px;
     }
     .input
     {
         margin-left:30px;
     }
     .form-control
     {
         width:317px;
     }
     .check
     {
         margin-left:30px;
     }
       .signin
     {
         margin-left:30px;
         margin-right:200px;
         border-radius:100px;
         padding:0px 0px 50px 0px;
         width:317px;
     }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid" style="width:auto">
   
    <div class="sign" style=" background-color:#192965; height:850px; width:auto" ><br /><br /><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u>SIGN IN</u><br />&nbsp; <br />

    <div class="input">
        <asp:Label ID="lbl1" runat="server" Text="USERNAME"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtusername" ForeColor="red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtusername" runat="server" class="form-control" BorderColor="black"></asp:TextBox>
        <br />
        <asp:Label ID="lbl2" runat="server" Text="PASSWORD"></asp:Label>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtpass" ForeColor="red" ></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtpass" runat="server" class="form-control" BorderColor="black" TextMode="Password"></asp:TextBox>
      <br />
    </div>

    <div class="signin" style="text-align:center;">
    <asp:Button ID="btnsign" runat="server" Text="SIGN IN" class="form-control" style="background-color:#F39C12" OnClick="btnsign_Click" /><br />
    <asp:Label ID="Label1" runat="server" Text="Don't have an Account ?"></asp:Label>
    &nbsp; <asp:HyperLink ID="hl2" runat="server" ForeColor="white" NavigateUrl="~/Register.aspx">SIGN UP</asp:HyperLink><br /><br />
    <asp:HyperLink ID="hl1" runat="server" ForeColor="White" NavigateUrl="~/ForgetPassword.aspx">Forget Password ?</asp:HyperLink>
    </div>
    </div>
 </div>
</asp:Content>


