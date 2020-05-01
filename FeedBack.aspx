<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.master" AutoEventWireup="true" CodeFile="FeedBack.aspx.cs" Inherits="FeedBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">         
         .feedform
         {
                  margin-left:30px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <div class="container-fluid" style="background-color: #192965; font-family: Verdana, Geneva, Tahoma, sans-serif;margin-top:20px; font-size: medium; " >
        <h1 style="color:#feb72b">Feedback form </h1><br />
       <div class="feedform" >
        <div>           
            <asp:Label ID="lblname" runat="server" Text="Name"  style="color:white"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name Can't be blank" ForeColor="Red" ControlToValidate="txtname" Display="Dynamic">*</asp:RequiredFieldValidator>
             <asp:TextBox ID="txtname" runat="server" class="form-control" Width="50%" Height="30px"></asp:TextBox><br />
        </div>

        <div>
                <asp:Label ID="lbladd" runat="server" Text="Address"  style="color:white"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Address can't be blank" ForeColor="Red" ControlToValidate="txtadd" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtadd" runat="server" class="form-control" Width="50%"  Height="30px" TextMode="MultiLine"></asp:TextBox><br />
        </div>

        <div>
              <asp:Label ID="lblclass" runat="server" Text="Class"  style="color:white"></asp:Label>           
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Class can't be blank" ForeColor="Red" ControlToValidate="txtclass" Display="Dynamic" >*</asp:RequiredFieldValidator>
              <asp:TextBox ID="txtclass" runat="server" class="form-control" Width="50%"  Height="30px"></asp:TextBox><br />
     </div>

        <div>
            <asp:Label ID="lblyears" runat="server" Text="Years" style="color:white"></asp:Label>      
             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Years can't be blank" ForeColor="Red" ControlToValidate="ddyear" Display="Dynamic">*</asp:RequiredFieldValidator> 
            <asp:DropDownList ID="ddyear" runat="server" class="form-control" Width="50%"  Height="30px">
                <asp:ListItem>Select Year</asp:ListItem>
                <asp:ListItem>First Year</asp:ListItem>
                <asp:ListItem>Second Year</asp:ListItem>
                <asp:ListItem>Third Year</asp:ListItem>
            </asp:DropDownList>
            <br />
         </div>

        <div>
               <asp:Label ID="lblcountry" runat="server" Text="Country" style="color:white"></asp:Label>   
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Country can't be blank" ForeColor="Red" ControlToValidate="txtcountry" Display="Dynamic">*</asp:RequiredFieldValidator> 
                <asp:TextBox ID="txtcountry" runat="server" class="form-control" Width="50%"  Height="30px"></asp:TextBox><br />
     </div>

        <div>               
             <asp:Label ID="lblemail" runat="server" Text="E-mail Id" style="color:white"></asp:Label>       
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="E-mail Can't be blank" ControlToValidate="txtemail" ForeColor="Red">*</asp:RequiredFieldValidator>
             <asp:TextBox ID="txtemail" runat="server" class="form-control" Width="50%"  Height="30px" TextMode="Email"></asp:TextBox>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid E-mail Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" Display="Dynamic"></asp:RegularExpressionValidator><br />
             </div>

        <div> 
              <asp:Label ID="lblmobile" runat="server" Text="Mobile No"  style="color:white"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator4" ControlToValidate="txtmobile" ForeColor="Red">*</asp:RequiredFieldValidator>
             <asp:TextBox ID="txtmobile" runat="server" class="form-control" Width="50%"  Height="30px"></asp:TextBox>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid mobile No" ForeColor="Red" ValidationExpression="[0-9]{10}" ControlToValidate="txtmobile" Display="Dynamic"></asp:RegularExpressionValidator> <br />
    </div>

        <div>          
               <asp:Label ID="lblfeedback" runat="server" Text="Feedback Details" style="color:white"></asp:Label>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtfeedback" Display="Dynamic">*</asp:RequiredFieldValidator>
             <asp:TextBox ID="txtfeedback" runat="server" TextMode="MultiLine" class="form-control" Width="50%"  Height="50px"></asp:TextBox><br />
    </div>

    <asp:Button ID="btnsubmit" class="btn btn-warning"  runat="server" Width="50%" Height="30px" Text="Submit" OnClick="btnsubmit_Click" /><br /><br />
   </div> 

 </div>
</asp:Content>

