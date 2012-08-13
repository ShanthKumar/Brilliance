<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <title>Brilliance-Members Page</title>
    <link href="menu.css" rel="stylesheet" type="text/css" />
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
    <script src="menu.js" type="text/javascript"></script>
    <script src="jquery.js" type="text/javascript"></script>
     <link href="css/style1.css" rel="stylesheet" type="text/css" />
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div> 
   

    <div>
<table id="members" width="400"  style="margin-left:30%">

<tr align="center" >
<td align="center">
<table align="center" >
 <h1 class="details" >Log In </h1>
 
 
         <tr>
         <td> 
             <asp:Label ID="Label1" runat="server" Text="User Name:"></asp:Label></td>
             <td>
                 <asp:TextBox ID="txt_uid" runat="server"></asp:TextBox>
             </td>
         </tr>
          <tr>
         <td> 
             <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label></td>
             <td>
                 <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password"></asp:TextBox>
             </td>
         </tr>
          <tr>
         <td> 
              </td>
             <td>
                 
             </td>
         </tr>
         <tr>
         <td colspan="2"
             <asp:Button ID="Button1" runat="server" Text="Log In" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="btn_login" runat="server" onclick="Button2_Click" 
                 Text="Login" />
             <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
         
            
             <br />
         
            
             <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" >Forget Password ?</asp:LinkButton>
&nbsp;<br />
             <br />
             <asp:Panel ID="forget_panel" runat="server" Visible="False" >
                 <asp:Label ID="Label4" runat="server" Text="Enter your Email ID:"></asp:Label>
                 <asp:TextBox ID="txt_email" runat="server" Width=""></asp:TextBox>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                 <asp:Button ID="Button2" runat="server" Text="Submit"  CssClass="txt"
                     onclick="Button2_Click1" />

             </asp:Panel>
             <asp:Label ID="lbl_emailresult" runat="server" Text=""></asp:Label>
             <br />
         
         </td>
         </tr>
         </table>
</td>
</tr>
</table>
</div>

</div>
</asp:Content>

