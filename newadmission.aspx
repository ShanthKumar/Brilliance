<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="newadmission.aspx.cs" Inherits="newadmission" %>
<%@ Register src="usercontrol/menu.ascx" tagname="menu" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link href="css/style1.css" rel="stylesheet" type="text/css" />
    
      <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="css/style1.css" rel="stylesheet" type="text/css" />
    <script src="jquery.js" type="text/javascript"></script>
    <link href="menu.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>

    <uc2:menu ID="menu1" runat="server" />
    </div>
  <table id="members">
<tr>
<td>
<h3 class="details">New Admission </h3>
 <table class="table">
 <table>
       <tr>
       <td></td>
       </tr>
        <tr>
        <td class="row style4">
                <asp:Label ID="Label8" runat="server" Text="Class:"></asp:Label><br />
                <asp:DropDownList ID="drpClass" runat="server" CssClass="txt"
                    onselectedindexchanged="drpClass_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Select Class</asp:ListItem>
                    <asp:ListItem>Nursery</asp:ListItem>
                    <asp:ListItem>L.K.G</asp:ListItem>
                    <asp:ListItem>U.K.G</asp:ListItem>
                    <asp:ListItem>I</asp:ListItem>
                    <asp:ListItem>II</asp:ListItem>
                    <asp:ListItem>III</asp:ListItem>
                    <asp:ListItem>IV</asp:ListItem>
                    <asp:ListItem>V</asp:ListItem>
                    <asp:ListItem>VI</asp:ListItem>
                    <asp:ListItem>VII</asp:ListItem>
                    <asp:ListItem>VIII</asp:ListItem>
                    <asp:ListItem>IX</asp:ListItem>
                    <asp:ListItem>X</asp:ListItem>
                </asp:DropDownList><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  CssClass="txt"
                    ControlToValidate="drpClass" ErrorMessage="Choose class" Font-Size="10pt" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
            <td  class="style4">
                <asp:Label ID="Label10" runat="server" Text="Application Fees:"  ></asp:Label><br />
                <asp:TextBox ID="txtApplicationFees" runat="server" CssClass="txt"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="txt"
                    ControlToValidate="txtApplicationFees" ErrorMessage="Enter Application Fees" 
                    Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td  class="style4">
                <asp:Label ID="Label9" runat="server" Text="Computer Fees" ></asp:Label><br />
                <asp:TextBox ID="txtComputer" runat="server"  CssClass="txt"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" CssClass="txt"
                    ControlToValidate="txtComputer" ErrorMessage="Enter Computer Fees" 
                    Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
       <tr>
            <td >
                <asp:Label ID="Label2" runat="server" Text="Admission Fees:" ></asp:Label><br />
                <asp:TextBox ID="txtAdmission" runat="server" CssClass="txt" ></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtAdmission" ErrorMessage="Enter Admission Fees" 
                    Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td >
                <asp:Label ID="Label6" runat="server" Text="Smart Class Fees:"></asp:Label><br />
                <asp:TextBox ID="txtSmartClass" runat="server" CssClass="txt"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtSmartClass" ErrorMessage="Enter Smart Class Fees" 
                    Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
       
            <td >
                <asp:Label ID="Label3" runat="server" Text="Re-admission Fees:" ></asp:Label><br />
                <asp:TextBox ID="txtReaddmission" runat="server" CssClass="txt" ></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="txt"
                    ControlToValidate="txtReaddmission" ErrorMessage="Enter Re-Admission Fees" 
                    Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
             </tr>
        <tr>
            <td >
                <asp:Label ID="Label7" runat="server" Text="Sp/Sc Day Fees:" ></asp:Label><br />
                <asp:TextBox ID="txtSpScDay" runat="server" CssClass="txt"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" CssClass="txt"
                    ControlToValidate="txtSpScDay" ErrorMessage="Enter Sp/Sc Day Fees" 
                    Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        
            <td >
                <asp:Label ID="Label4" runat="server" Text="Material Fees:" ></asp:Label><br />
                <asp:TextBox ID="txtMaterilaFees" runat="server" CssClass="txt"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtMaterilaFees" ErrorMessage="Enter Material Fees" 
                    Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td >
                <asp:Label ID="Label5" runat="server" Text="Exam Fees:"></asp:Label><br />
                <asp:TextBox ID="txtExam" runat="server" CssClass="txt"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" CssClass="txt"
                    ControlToValidate="txtExam" ErrorMessage="Enter Exam Fees" Font-Size="10pt" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td  align="center">
                &nbsp;</td>
            <td >
                &nbsp;</td>
        </tr>
        <tr>
            <td  colspan="2">
                <asp:ImageButton ID="btnSave" runat="server" onclick="btnSave_Click" 
                    ImageUrl="~/buttons/save.PNG"/>
                <asp:ImageButton ID="btnCancel" runat="server"  onclick="btnCancel_Click" ImageUrl="~/buttons/cancel.png" />
                <asp:ImageButton ID="btnUpdate" runat="server" onclick="btnUpdate_Click" ImageUrl="~/buttons/update.png" />
               
                <br />
            </td>
           
        </tr>
        <tr>
            <td >
                &nbsp;</td>
            <td >
                &nbsp;</td>
        </tr>
    </table>
 </table>
 </td>
 </tr>
 </table>
    
</asp:Content>

