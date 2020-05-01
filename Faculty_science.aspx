<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.master" AutoEventWireup="true" CodeFile="Faculty_science.aspx.cs" Inherits="Faculty_science" %>

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
      <h1 class="text-center" style="background-color:#6ba8a9;border-radius:10px; height:100px"><br />Faculty of Science</h1>
  </div>	
     <div style="color:#43ab92">
        <p style="font-family:Verdana; text-align: justify;padding-left:10px">&nbsp;&nbsp;It’s a 3 years full time undergraduate course & 2 years full time post-graduate course, affiliated to University of Mumbai.
            Besides the regular courses, the University of Mumbai also offers diploma, advanced diploma, certificate, integrated, and PG Diploma programmes.
        </p>
    </div>	
    <div class="container-fluid">
        <h2 class="mumbai" style="color:white;padding-left:5px">Mumbai University Courses - UG/PG Courses under Faculty of Science</h2>
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
        <td>Bachelor of Science (B.Sc.)</td>
        <td>M.Sc. (Home Science)</td>
      </tr>
      <tr>
        <td>2</td>
        <td>Bachelor of Science (Home Science )</td>
        <td>M.Sc. (Home Science) degree Course in Food Processing and Preservation</td>
      </tr>
         <tr>
        <td>3</td>
        <td>Bachelor of Science (B.Sc.) (Computer Science)</td>
        <td>M.Sc. (Home Science) degree Course Sports Nutrition</td>
      </tr>
         <tr>
        <td>4</td>
        <td>Bachelor of Science (Information Technology) (B.Sc. I.T.)</td>
        <td>M.Sc. (Bio-Chemistry) By Research</td>
      </tr>
         <tr>
        <td>5</td>
        <td>Bachelor of Science (Bio-Technology)</td>
        <td>M.Sc. Bioanalytical Sciences</td>
      </tr>
        <tr>
            <td>6</td>
            <td>B.Sc.(Hospitality Studies) degree Course</td>
            <td>M.Sc. Degree Course in Herbal Science</td>   
           </tr>
        <tr>
            <td>7</td>
            <td>B.Sc. Mari-time Sciences</td>
            <td>M.Sc. degree Course in Bio-analytical Instrumentation</td>
           </tr>
        <tr>
            <td>8</td>
            <td>Bachelor of Science (Nautical Sciences)</td>
            <td>M.Sc. degree Course in Bio-Informatics</td>
           </tr>
        <tr>
            <td>9</td>
            <td>B.Sc. in Forensic Science</td>
            <td>M.Sc. in Nano-Science and Nano Technology</td>
           </tr>
        <tr>
            <td>10</td>
            <td>B.Sc. in Sports Management Degree Course</td>
            <td>M.Sc. in Environmental Sciences</td>
           </tr>
        <tr>
            <td>11</td>
            <td>Bachelor of Science Programme in Aeronautics(Avionics)</td>
            <td>M.Sc. degree Course in Nutraceuticals</td>
           </tr>
   </tbody>
  </table>
     <h2 class="mumbai" style="color:white;padding-left:5px">Mumbai University Courses - Diploma/Certificate and PG Diploma Courses (Faculty of Science)</h2>
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
               <td>Certificate Course in Bio-informatics</td>
               <td>Post-Graduate Diploma in Environmental Technology</td>
           </tr>
            <tr>
               <td>2</td>
               <td>Certificate Course in Primary Care Paramedics</td>
               <td>Post-Graduate Diploma in Dietetics and Applied Nutrition</td>
           </tr>
            <tr>
               <td>3</td>
               <td>Certificate Course in Sensor Networks</td>
               <td>Post-Graduate Diploma in Food Processing and Preservation</td>
           </tr>
            <tr>
               <td>4</td>
               <td>Diploma in Industrial Toxicology Course</td>
               <td>Post Graduate Diploma Course in Horticulture</td>
           </tr>
            <tr>
               <td>5</td>
               <td>Diploma in Aspects of Bio-Technology</td>
               <td>Post-Graduate Diploma in Industrial Chemical Process Operations (P.G.D.I.C.P.O.)</td>
           </tr>
            <tr>
               <td>6</td>
               <td>Diploma Course in Analytical Instrumentation</td>
               <td>Post Graduate Diploma in Environmental Pollution Analysis and Control</td>
           </tr>
           <tr>
               <td>7</td>
               <td>Diploma Course in Electronics</td>
               <td>Post Graduate Diploma in Techniques in Chemical Industry (PGDTICI)</td>
           </tr>
           <tr>
               <td>8</td>
               <td>Diploma in Cosmetics and Perfumery Technology</td>
               <td>Post-Graduate Diploma in Analytical Techniques</td>
           </tr>
           <tr>
               <td>9</td>
               <td>Diploma in Computerized Data Processing and Management Information System</td>
               <td>Post-Graduate Diploma in Actuarial Science</td>
           </tr>
           <tr>
               <td>10</td>
               <td>Diploma in Environmental Pollution Control Technology (D.E.P.C.T.)</td>
               <td>Post-Graduate Advanced Diploma in Naval Architecture and Shipbuilding</td>
           </tr>
       </tbody>
   </table>
        <p style="font-family:Verdana; text-align: justify; font-size: medium;">To Know More Details-
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://drive.google.com/file/d/1DOv7YuLs4fAxo5UhZ4KVECFvl-pRktEE/view?usp=sharing_eip&ts=5e0cab07" rel="noopener noreferrer" target="_blank">click here</asp:HyperLink>
        </p>
 </div>
</asp:Content>
