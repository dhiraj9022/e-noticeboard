<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.master" AutoEventWireup="true" CodeFile="Fees.aspx.cs" Inherits="Fees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid" style="font-family: verdana, Geneva, Tahoma, sans-serif; height:800px; background-color:#192965; margin-top: 20px;font-size: medium; ">
  <div style="margin-left:100px;margin-right:100px">
      <br />
       <asp:Label ID="lblname" runat="server" Text="Image Name" ForeColor="White"></asp:Label>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtname"></asp:RequiredFieldValidator>
      <asp:TextBox ID="txtname" runat="server" CssClass="form-control" Width="100%" Height="30px"></asp:TextBox>
      <br />
      <asp:FileUpload ID="flupload" runat="server" ForeColor="white"/>
      <br />
      <asp:Button ID="btnupload" runat="server" Text="Upload"   CssClass="btn btn-danger"  OnClick="btnupload_Click" />
      <asp:Button ID="btngoback" runat="server" Text="GoBack"  CssClass="btn btn-danger"  OnClick="btngoback_Click"/>
      <br />
      <br />

      <br />

    </div>
</div>
</asp:Content>

