<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.master" AutoEventWireup="true" CodeFile="Faculty_arts.aspx.cs" Inherits="Faculty_arts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .mumbai
        {
            background-color:#10316b;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">	
 
  <div>

       <h1 class="text-center" style="background-color:#6ba8a9;border-radius:10px; height:100px"><br />Faculty of Arts</h1>
  </div>	
     <div style="color:#43ab92">
        <p style="font-family:Verdana; text-align: justify;padding-left:10px">&nbsp;&nbsp;It’s a 3 years full time undergraduate course & 2 years full time post-graduate course, affiliated to University of Mumbai.
            Besides the regular courses, the University of Mumbai also offers diploma, advanced diploma, certificate, integrated, and PG Diploma programmes.
        </p>
    </div>	
    <div class="container-fluid">
        <h2 class="mumbai" style="color:white;padding-left:5px">Mumbai University UG/PG Courses under Faculty of Arts</h2>
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
        <td>Bachelor of Arts (B.A)</td>
        <td>Master of Arts (M.A.)</td>
      </tr>
      <tr>
        <td>2</td>
        <td>B.A. Programme in Film, Television and New Media Production</td>
        <td>M.A. in Numismatics and Archaeology degree Course</td>
      </tr>
         <tr>
        <td>3</td>
        <td>Bachelor’s Degree in Library & Information Science (B.L.I.Sc.</td>
        <td>M.A. Programme in Entertainment, Media and Advertising</td>
      </tr>
         <tr>
        <td>4</td>
        <td>Bachelor of Social Work (B.S.W.)</td>
        <td>M.A. Programme in Film, Television and New Media Production</td>
      </tr>
         <tr>
        <td>5</td>
        <td>Bachelor’s of Mass Media (B.M.M.)</td>
        <td>M.A.(Honours) in Sociology</td>
      </tr>
         <tr>
        <td>6</td>
        <td>Bachelor In Heritage Management (B.H.M.)</td>
        <td>M.A.(Honours) in Politics</td>
      </tr>
   </tbody>
  </table>
     <h2 class="mumbai" style="color:white;padding-left:5px">Mumbai University Courses  - Diploma/Certificate and PG Diploma Porgrammes (Faculty of Arts)</h2>
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
               <td>Diploma Course in Management of Education</td>
               <td>Post Graduate Diploma in Continuing Education and Management</td>
           </tr>
            <tr>
               <td>2</td>
               <td>Diploma in Yogic Education</td>
               <td>P.G. Dip. in Special Education (Multiple/Disability Physical and Neurological)</td>
           </tr>
            <tr>
               <td>3</td>
               <td>Diploma in Aviation Safety and Hospitality</td>
               <td>P.G. Certificate Course in Research Methodology in Education</td>
           </tr>
            <tr>
               <td>4</td>
               <td>Certificate Course in Therapeutic skills for the Helping Professions</td>
               <td>Post-Graduate Diploma Course in Linguistics</td>
           </tr>
            <tr>
               <td>5</td>
               <td>Certificate Course in Social Perspectives in Disaster Management</td>
               <td>Post-Graduate Diploma Course in Human Rights</td>
           </tr>
            <tr>
               <td>6</td>
               <td>Certificate Course in Pali Language and Literature</td>
               <td>Post-Graduate Diploma Course in Study of Religions</td>
           </tr>
            <tr>
               <td>7</td>
               <td>Certificate Course in Teaching Technologies in Higher Education</td>
               <td>Post-Graduate Diploma in Urdu, Theatre, Script Writing and Translation, Adaptation/Translation</td>
           </tr>
            <tr>
               <td>8</td>
               <td>Certificate Course in Voice Dubbing and Modulation</td>
               <td>Post Graduate Diploma Course in Travel and Tourism Management</td>
           </tr>
            <tr>
               <td>9</td>
               <td>Diploma in Indian Aesthetics</td>
               <td>Post-Graduate Diploma Course in International Studies</td>
           </tr>
            <tr>
               <td>10</td>
               <td>Diploma in Geography</td>
               <td>P.G. Diploma Course in Child Rights and Child Protection</td>
           </tr>
       </tbody>
   </table>
          <p style="font-family:Verdana; text-align: justify; font-size: medium;">To Know More Details-
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://drive.google.com/file/d/1DAtbqutjfxpNwUOPKFwnCfkE9q3nlrS9/view" rel="noopener noreferrer" target="_blank">click here</asp:HyperLink>
         </p>
 </div>
</asp:Content>


