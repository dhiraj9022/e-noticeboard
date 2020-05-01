<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       .sign
     {
        color:white;
        margin-top:20px;
        padding-left:50px;
     }
     signup:hover
     {
         color:#BA4A00 ;
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
       .signup
     {
         margin-left:30px;
         margin-right:200px;
         border-radius:100px;
         padding:0px 0px 50px 0px;
         width:auto;
     }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container-fluid">
   
    <div class="sign" style=" background-color:#192965; height:850px; width:auto;" ><br /><br /><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u>SIGN UP</u><br />&nbsp; <br />

    <div class="input">
       
        <asp:Label ID="lbl1" runat="server" Text="USERNAME"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  Display = "Dynamic" ErrorMessage="*" ControlToValidate="txtusername" ForeColor="red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtusername" runat="server" class="form-control" BorderColor="black"></asp:TextBox>
        <br />
        <asp:Label ID="lbl2" runat="server" Text="PASSWORD"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display = "Dynamic" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtpass"></asp:RequiredFieldValidator>
         <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*" ForeColor="red" ControlToValidate="txtpass" ControlToCompare="txtconfirm" ></asp:CompareValidator>
         <asp:TextBox ID="txtpass" runat="server" class="form-control" BorderColor="black" TextMode="Password"></asp:TextBox>     
         <br />
         <asp:Label ID="lbl3" runat="server" Text="CONFIRM PASSWORD"></asp:Label>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display = "Dynamic" ErrorMessage="*" ControlToValidate="txtconfirm" ForeColor="red" ></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtconfirm" runat="server" class="form-control" BorderColor="black" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator2" runat="server" Display = "Dynamic" ErrorMessage="Password should not match" ForeColor="Red" ControlToValidate="txtconfirm" ControlToCompare="txtpass"></asp:CompareValidator>
         <br />
        <asp:Label ID="lbl4" runat="server" Text="DOB"></asp:Label>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display = "Dynamic" ErrorMessage="*" ControlToValidate="txtdob" ForeColor="red" ></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtdob" runat="server" class="form-control" BorderColor="black" TextMode="Date"></asp:TextBox>
        <br />
        <asp:Label ID="lbl5" runat="server" Text="GENDER"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="red" ControlToValidate="rbtngeneder"></asp:RequiredFieldValidator>
        <asp:RadioButtonList ID="rbtngeneder" runat="server" ForeColor="White" RepeatDirection="Horizontal">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
        <br />
         <asp:Label ID="lbl6" runat="server" Text="E-Mail"></asp:Label>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display = "Dynamic" ErrorMessage="*" ControlToValidate="txtemail" ForeColor="red" ></asp:RequiredFieldValidator>       
          <asp:TextBox ID="txtemail" runat="server" class="form-control" BorderColor="black" TextMode="Email"></asp:TextBox>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email address" ForeColor="Red" ControlToValidate="txtemail" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" Display = "Dynamic"></asp:RegularExpressionValidator>
        <br />
    </div>

    <div class="signup" style="text-align:center;">
    <asp:Button ID="btnsignup" runat="server" Text="SIGN IN" class="form-control" style="background-color:#F39C12" OnClick="btn1_Click" /><br />
        <br />
        <asp:Label ID="Label1" runat="server" ></asp:Label>
    </div>

    </div>
 </div>
</asp:Content>

