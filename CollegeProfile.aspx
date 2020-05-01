<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.master" AutoEventWireup="true" CodeFile="CollegeProfile.aspx.cs" Inherits="CollegeProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
p:hover {
  color:#2b9ca8;
}
h1:hover {
  color:#2250e6;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <h1 style="background-color:#F4D03F;padding-left:10px;">College Profile </h1>
    <p style="font-family: Verdana, Geneva, Tahoma, sans-serif;padding-left:10px;padding-right:10px;" class="bg-info"> <br />
        <asp:Image ID="Image1" runat="server" class="center-block rounded" ImageUrl="~/Image/vartak.jpg" Height="300px" Width="100%" /> 
        <br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;The aim of the institution is to provide not only quality education but a holistic development of personality and make student a man of culture. 
 It encourages students to excel not only in academics but also in co-curricular activities thus making them fully rounded personalities able to face the challenges of the world.<br />
       &nbsp;&nbsp;&nbsp;&nbsp;The Management have provided a five storied  building for <mark>Library, Gymkhana,</mark> and other activities as per the norms laid down by the NAAC.<br />
 <br /><br />
        <asp:Image ID="Image2" runat="server" class="center-block rounded" Height="300px" ImageUrl="~/Image/vartak1.jpg"  Width="100%" />
        <br /><br />
 &nbsp;&nbsp;&nbsp;&nbsp;The college has developed beautiful gardens and ornamental lawns which contribute to the overall aesthetics of the college and enhance the learning experience.<br />
 &nbsp;&nbsp;&nbsp;&nbsp;In this college has celebrate many<mark> events</mark> and participate many poeple in the program. The dedication, commitment and loyalty of the <mark>teaching</mark> and <mark>non-teaching staff</mark>, along with the enthusiasm and achievements of the students over the years, have contributed largely to bring the college to its present position.<br /><br />
    </p>
</div>
</asp:Content>

