<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .forget
        {
            margin:30px 200px 30px 200px;
            border-radius:10px;   
            height:auto;
        }
        .forgetimg
        {
            height:200px;
            width:auto;
            display:flexbox;
           
        }
        .form-control
        {
            margin-left:70px ;
            width:300px;
        } 
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container-fluid" style="background-color:#192965; margin-top:20px; height:850px; ">

    <div class="forget" style="background-color: #edf7fa; text-align: center">
        <div style="text-align: center">
            <br />
            <img src="Image/forgetpwd.png" class="forgetimg" style="border-radius: 10px; border-color: aqua" />
            <h2><b>Forget Password ?</b></h2>
            <p>You can reset your password here.</p>
        </div>
        <div style="text-align: center">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtemail" Display="Dynamic"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email address" ForeColor="Red" ControlToValidate="txtemail" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" Display = "Dynamic"></asp:RegularExpressionValidator>
            <asp:TextBox ID="txtemail" runat="server" Class="form-control" placeholder="Enter Email-ID" TextMode="Email"></asp:TextBox><br />

            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtpass" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtpass" runat="server" Class="form-control" placeholder="Enter password" TextMode="Password"></asp:TextBox><br />

            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtconfirm" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtconfirm" runat="server" Class="form-control" placeholder="Enter confirm-password" TextMode="Password"></asp:TextBox><br />

            <asp:Button ID="btn1" runat="server" Class="btn btn-primary" Text="Reset my Password" OnClick="btnreset_Click" />
            <br />
            <br />
        </div>
        <asp:Label ID="lblresult" runat="server"></asp:Label>
    </div>
</div><br />

</asp:Content>

