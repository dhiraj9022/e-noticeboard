<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.master" AutoEventWireup="true" CodeFile="Faculty_commerce.aspx.cs" Inherits="Faculty_commerce" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style type="text/css">
        .mumbai
        {
            background-color:#10316b;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">	
 
  <div>
        <h1 class="text-center" style="background-color:#6ba8a9;border-radius:10px; height:100px"><br />Faculty of Commerce</h1>
  </div>	
     <div style="color:#43ab92">
        <p style="font-family:Verdana; text-align: justify;padding-left:10px">&nbsp;&nbsp;It’s a 3 years full time undergraduate course & 2 years full time post-graduate course, affiliated to University of Mumbai.
            Besides the regular courses, the University of Mumbai also offers diploma, advanced diploma, certificate, integrated, and PG Diploma programmes.
        </p>
    </div>	
    <div class="container-fluid">
        <h2 class="mumbai" style="color:white;padding-left:5px">Mumbai University Courses  - UG/PG Programmes under Faculty of Commerce</h2>
        <table class="table table-bordered table-hover" style="font-family:Verdana">
         <thead>
         <tr>
          <th>S.No.</th>
          <th>UG Programmes</th>
          <th>PG Programmes</th>
        </tr>
      </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>Bachelor of Commerce (B. Com.)</td>
        <td>Master of Commerce (M.Com.)</td>
      </tr>
      <tr>
        <td>2</td>
        <td>Bachelor of Commerce (Accounting & Finance)</td>
        <td>Master of Commerce M. Com. (E. Commerce )</td>
      </tr>
         <tr>
        <td>3</td>
        <td>Bachelor of Commerce (Banking & Insurance)</td>
        <td>Master of Management Studies (M.M.S.)</td>
      </tr>
         <tr>
        <td>4</td>
        <td>Bachelor of Commerce (Financial Markets)</td>
        <td>Master’s Degree in Marketing Management (M.M.M.)</td>
      </tr>
         <tr>
        <td>5</td>
        <td>Bachelor of Management Studies (B.M.S.)</td>
        <td>Master of Financial Management (M.F.M. )</td>
      </tr>
   </tbody>
  </table>
     <h2 class="mumbai" style="color:white;padding-left:5px">Mumbai University Courses - Certificate/Diploma and PG Diploma Courses (Faculty of Commerce)</h2>
   <table class="table table-bordered table-hover" style="font-family:Verdana">
      <thead>
         <tr>
          <th>S.No.</th>
          <th>Diploma/Certificate Programmes</th>
          <th>PG Diploma Programmes</th>
        </tr>
      </thead>
       <tbody>
           <tr>
               <td>1</td>
               <td>Certificate Course in Crucial Issues in Disaster Management</td>
               <td>Post Graduate Diploma in Management (Indian Navy) (P.G.D.M.)</td>
           </tr>
            <tr>
               <td>2</td>
               <td>Certificate Course in Environment Management and Disaster Mitigation</td>
               <td>Post Graduate Diploma Course in Marketing Management</td>
           </tr>
            <tr>
               <td>3</td>
               <td>Certificate Courses in Accountancy</td>
               <td>Post Graduate Diploma Course in Financial Management</td>
           </tr>
            <tr>
               <td>4</td>
               <td>Certificate Course in Computerized Accounting and Tally Package</td>
               <td>Post Graduate Diploma Course in Materials Management</td>
           </tr>
            <tr>
               <td>5</td>
               <td>Diploma in Marketing Management (D.M.M )</td>
               <td>Post Graduate Diploma Course in Human Resources Management</td>
           </tr>
            <tr>
               <td>6</td>
               <td>Diploma in Systems Management (D.S.M. )</td>
               <td>Post-Graduate Diploma in Management of Insurance Sector</td>
           </tr>
       </tbody>
   </table>
          <p style="font-family:Verdana; text-align: justify; font-size: medium;">To Know More Details-
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://drive.google.com/file/d/1DQ2hHCt7AMe4ErsHhtMKBIKmZbg0nv3C/view?usp=sharing_eip&ts=5e0cab26" rel="noopener noreferrer" target="_blank">click here</asp:HyperLink>
         </p>
 </div>
</asp:Content>

