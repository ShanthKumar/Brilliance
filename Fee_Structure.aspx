<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Fee_Structure.aspx.cs" Inherits="Fee_Structure" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<%@ Register src="usercontrol/menu.ascx" tagname="menu" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="css/style1.css" rel="stylesheet" type="text/css" />
    <script src="jquery.js" type="text/javascript"></script>
    <link href="menu.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <div>

     <uc2:menu ID="menu1" runat="server" />
    
    <div>
    <table id="members">
<tr>
<td>
<h3 class="details">Fee Structure</h3></h
 <table class="table">
<tr>
<td>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="950px" 
        AutoGenerateColumns="False"         Font-Underline="False"  
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <RowStyle Font-Size="15px" />
        <Columns>
            <asp:BoundField DataField="Class_Name" HeaderText="Class" ReadOnly="True" 
                SortExpression="Class" />
            <asp:BoundField DataField="New_Adm_Fee" HeaderText="New Admission Fee" 
                SortExpression="New Admission Fee" />
            <asp:BoundField DataField="Re_Adm_Fee" HeaderText="ReAdmission Fee" 
                SortExpression="ReAdmission Fee" />
            <asp:BoundField DataField="Material_Fee" HeaderText="Material Fee" 
                SortExpression="Material Fee" />
            <asp:BoundField DataField="Computer_Fee" HeaderText="Computer Fee" ReadOnly="True" 
                SortExpression="Computer Fee" />
            <asp:BoundField DataField="Smart_Class_Fee" HeaderText="Smart Class Fee" 
                SortExpression="Smart Class Fee" />
            <asp:BoundField DataField="SpecialDay_Fee" HeaderText="Special Day Fee" 
                SortExpression="Special Day Fee" />
            <asp:BoundField DataField="Exam_Fee" HeaderText="Exam Fee" 
                SortExpression="Exam Fee" />
            <asp:BoundField DataField="Total_Fee" HeaderText="Total Fee" 
                SortExpression="Total Fee" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="White" BorderStyle="Dotted" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <br />
    <br />
</td>
</tr>
<tr>
<td>

   
    <asp:Panel ID="Panel1" runat="server">
    <h4 class="details">Fee Structure Details </h4>
    <table>
<tr>
<td >
<table>
<tr>
<td class="row style4">
  <asp:Label ID="Label7" runat="server" Text="Class Name:"></asp:Label> <br />
    <asp:TextBox ID="txt_classname" runat="server" Enabled="False" CssClass="txt"></asp:TextBox>
</td>
<td class="style4">
  <asp:Label ID="Label1" runat="server" Text="New Admission Fees:"></asp:Label>
    <asp:TextBox ID="txt_newAdFee" runat="server" CssClass="txt"></asp:TextBox>
    </td> 

<td class="style4">
  <asp:Label ID="Label2" runat="server" Text="Re Admission Fees:"></asp:Label><br />
    <asp:TextBox ID="txt_ReAdFee" runat="server" CssClass="txt"></asp:TextBox>
</td>
<td class="style4">
  <asp:Label ID="Label3" runat="server" Text="Material Fees:"></asp:Label><br />
    <asp:TextBox ID="txt_material" runat="server" CssClass="txt"></asp:TextBox>
</td>
</tr>
<tr>
<td>
  <asp:Label ID="Label8" runat="server" Text="Computer Fees:"></asp:Label><br />   
    <asp:TextBox ID="txt_comp" runat="server" CssClass="txt"></asp:TextBox>
</td>
<td>
  <asp:Label ID="Label14" runat="server" Text="Smart Class Fees:"></asp:Label><br />   
    <asp:TextBox ID="txt_smart" runat="server" CssClass="txt"></asp:TextBox>
</td>

<td>
  <asp:Label ID="Label10" runat="server" Text="Special Day Fees:"></asp:Label><br />
    <asp:TextBox ID="txt_special" runat="server" CssClass="txt"></asp:TextBox>
</td>
<td>
  <asp:Label ID="Label13" runat="server" Text="Exam Fees:"></asp:Label><br />
    <asp:TextBox ID="txt_exam" runat="server" CssClass="txt"></asp:TextBox>
</td>
</tr>
<tr>
<td colspan="2" align="center">
    &nbsp;</td>
</tr>
<div>
    <asp:Image ID="Image1" runat="server" />
</div>
</table>

  
</td>

</tr>
</table>
    </asp:Panel>   
</td>
</tr>
<tr>
<td >
    <table>
<tr>
<td>
  <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/buttons/update.png" 
        onclick="ImageButton4_Click" />
</td>
<td>
    &nbsp;<asp:ImageButton ID="ImageButton5" runat="server" 
        ImageUrl="~/buttons/cancel.png" onclick="ImageButton5_Click" />
&nbsp;</td>
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
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>


