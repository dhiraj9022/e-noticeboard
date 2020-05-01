<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.master" AutoEventWireup="true" CodeFile="Message.aspx.cs" Inherits="Message" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container-fluid" style="background-color: #192965; font-family: Verdana, Geneva, Tahoma, sans-serif; height:auto; margin-top: 20px; font-size: medium;">
    <div class="row text-justify" style="color:white;padding-left:10px;padding-right:10px;">
        <h3 style="padding-left:20px">Add New Notice</h3><br />
        <div style="margin-left:100px;margin-right:100px;" >
          

            <asp:Label ID="lblclass" runat="server" Text="Enter Class"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="red" ErrorMessage="*" ControlToValidate="txtclass"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtclass" class="form-control" runat="server"></asp:TextBox><br />
            <br />

            <asp:Label ID="lblyear" runat="server" Text="Enter Year"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="red" ErrorMessage="*" ControlToValidate="txtyear"></asp:RequiredFieldValidator>
           <asp:TextBox ID="txtyear" class="form-control"  runat="server"></asp:TextBox><br />
            <br />
             
            <asp:Label ID="lblsubject" runat="server" Text="Enter Subject"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="red" ErrorMessage="*" ControlToValidate="txtsubject"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtsubject" class="form-control" runat="server"></asp:TextBox><br />
            <br />

             <asp:Label ID="lbldate" runat="server" Text="Enter Date"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="red" ErrorMessage="*" ControlToValidate="txtdate"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtdate" class="form-control" runat="server" TextMode="Date"></asp:TextBox><br />
            <br />

             <asp:Label ID="lbltime" runat="server" Text="Enter Time"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="red" ErrorMessage="*" ControlToValidate="txttime"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txttime" class="form-control" runat="server" TextMode="Time"></asp:TextBox><br />
            <br />

            <asp:Label ID="lblmessage" runat="server" Text="Enter Message"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="red" ErrorMessage="*" ControlToValidate="txtmessage"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtmessage" class="form-control" runat="server" Height="100px" Width="100%" TextMode="MultiLine"></asp:TextBox><br />
            <br />
        </div>
        <div style="margin-bottom:30px;margin-left:130px; margin-right:100px ">
            <asp:Button ID="btnaddnotice" class=" btn btn-primary"  runat="server" Text="Add Notice" OnClick="btnaddnotice_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="btnaback" class=" btn btn-primary"  runat="server" Text="GoBack" OnClick="btnaback_Click" />
        </div>
    </div>
   
 </div>

</asp:Content>

