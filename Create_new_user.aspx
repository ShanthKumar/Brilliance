<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Create_new_user.aspx.cs" Inherits="Create_new_user"  MasterPageFile="~/MasterPage.master"%>
<%@ Register src="usercontrol/menu.ascx" tagname="menu" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
      <link href="css/style1.css" rel="stylesheet" type="text/css" />
    <script src="jquery.js" type="text/javascript"></script>
    <link href="menu.css" rel="stylesheet" type="text/css" />
<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
    
    <script src="jquery.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div> 
   <uc2:menu ID="menu1" runat="server" />
    
      <div>
    <table id="members">
<tr >
<td  >
<h3 class="details">New Student</h3>
    
      

         <table class="table">
         <tr>
         <td></td>
         </tr>
         <tr>
         <td>
         <table >
         <tr>
         <td> 
             <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label></td>
             <td>
                 <asp:TextBox ID="txt_uid" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                     ControlToValidate="txt_uid" ErrorMessage="User Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
         </tr>
          <tr>
         <td> 
             <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
             <td>
                 <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                     ControlToValidate="txt_pwd" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
         </tr>
          <tr>
         <td> 
             <asp:Label ID="Label4" runat="server" Text="ReEnter Password"></asp:Label> 
              </td>
             <td>
                 
                 <asp:TextBox ID="txt_repwd" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:CompareValidator ID="CompareValidator1" runat="server" 
                     ControlToCompare="txt_pwd" ControlToValidate="txt_repwd" 
                     ErrorMessage="Password should be same" ForeColor="Red"></asp:CompareValidator>
                 
             </td>
         </tr>
          <tr>
         <td> 
             <asp:Label ID="Label5" runat="server" Text="Email ID"></asp:Label> 
              </td>
             <td>
                 
                 <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                     ControlToValidate="txt_email" ErrorMessage="Enter Correct Email ID" 
                     ForeColor="Red" 
                     ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                 <br />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                     ControlToValidate="txt_email" ErrorMessage="Email Id  is Required" 
                     ForeColor="Red"></asp:RequiredFieldValidator>
                 
             </td>
         </tr>
         <tr>
         <td colspan="2"
             <asp:Button ID="Button1" runat="server" Text="Log In" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:ImageButton ID="btn_create" runat="server"  onclick="Button2_Click" ImageUrl="~/buttons/create.png" />
            
             <asp:Label ID="lbl_result" runat="server" Text="Label" Visible="false"></asp:Label>
         
         </td>
         </tr>
         </table>
         </td>
         </tr>
         </table>
         </td>
         </tr>
         </table>
      </div>
    </div>
</asp:Content>

