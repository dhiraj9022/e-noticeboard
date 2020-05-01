<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .carousel-caption
        {
            color:red;
           
        }
        .myimg
        { margin-top:20px;
        }
        p:hover
        {
            color:#4896b9;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-top:20px; margin-left: 10px;">
        <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#3399FF" Font-Bold="True" Font-Size="large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" CssClass=" btn btn-danger"  Text="Logout" OnClick="Button1_Click" />
    </div>
  <div id="myCarousel" class="carousel slide myimg" data-ride="carousel">
    <!-- Wrapper for slides -->
 <div class="carousel-inner">
      <div class="item active">
        <img src="Image/img2.jpg"  />
      </div>
      <div class="item">
        <img src="Image/img1.jpeg" />
      </div>
      <div class="item">
        <img src="Image/img4.jpeg" />
      </div>
      <div class="item">
        <img src="Image/img8.jpg" />
      </div>
      <div class="item">
        <img src="Image/img6.jpg" />
    </div>
      <div class="item">
        <img src="Image/img7.jpeg" />
      </div>
      <div class="item">
        <img src="Image/img5.jpeg" />
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
    <div style="font-family: verdana, Geneva, Tahoma, sans-serif">
        <h1 style="background-color:#F4D03F">About Us</h1>
        <p style="line-height:inherit;padding-left:10px; text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;The main aim of this free online notice board project is make information much easier in a
            paperless community as in the college tends to interact with the online notice board facility as an
            project, Online notice board people can send the notification to the whole students
            regarding fee payments, results, timetable any new activity happen in college campus or college fest
            participation, libraries dues, hostel room payments, any workshop registrations, warnings and
            reminders and also send the notification to faculty regarding salary payment, time table.
            <br />&nbsp;&nbsp;&nbsp;&nbsp;Online notice board is fully capable of passing relevant notices and announcements keeping
            the user update from time to time student and faculty are up to date what are going on.<br />
           &nbsp;&nbsp;&nbsp;&nbsp;This project aimed to create an application in which will automate a lot of activities in a school or college or office etc.
            depending on the different organization . If it is school then it will be display the related information for example  Events and winners info. 
            They can also display the information about  all teacher in various departments ,display timetable, fess & results and so on.
            <br />&nbsp;&nbsp;&nbsp;&nbsp; The aim of this project is to provide a way to automate the way in which notice board message can be updated ,deleted or removed. 
        </p>
    </div>
</asp:Content>

