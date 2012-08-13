﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Fees.aspx.cs" Inherits="Fees" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<%@ Register src="usercontrol/menu.ascx" tagname="menu" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="menu.css" rel="stylesheet" type="text/css" />
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
<h3 class="details">Pay Fee </h3>
 <table class="table">
<tr>
<td class="row style4">
    <asp:Label ID="Label68" runat="server" CssClass="label1" 
        Text="  Student Id/Name:"></asp:Label><br />
    <asp:TextBox ID="txtStudent" runat="server" CssClass="txt"></asp:TextBox>
    </td>
    <td class="style4">
    <asp:Label ID="Label69" runat="server" Text="Class:"></asp:Label><br />
    <asp:DropDownList ID="drpclass" runat="server" CssClass="txt">
        <asp:ListItem>All</asp:ListItem>
        <asp:ListItem Value="1">U.K.G</asp:ListItem>
        <asp:ListItem Value="2">L.K.G</asp:ListItem>
        <asp:ListItem Value="3">I</asp:ListItem>
        <asp:ListItem Value="4">II</asp:ListItem>
        <asp:ListItem Value="5">III</asp:ListItem>
        <asp:ListItem Value="6">IV</asp:ListItem>
        <asp:ListItem Value="7">V</asp:ListItem>
        <asp:ListItem Value="8">VI</asp:ListItem>
        <asp:ListItem Value="9">VII</asp:ListItem>
        <asp:ListItem Value="10">VIII</asp:ListItem>
        <asp:ListItem Value="11">XI</asp:ListItem>
        <asp:ListItem Value="12">X</asp:ListItem>
    </asp:DropDownList>
    </td>
    <td class="style4">   
    <asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="~/buttons/search1.PNG" onclick="ImageButton2_Click" />
        </td>
        </tr>
      <tr>
      <td colspan="3">
      <table>
        <tr>
        <td colspan="3" >
        <asp:Panel ID="Panel2" runat="server" Visible="false">
        
         <h4 class="details">
            Fee Details
        </h4>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="2px" 
        CellPadding="3" DataKeyNames="Student_id" Font-Underline="False" 
         onselectedindexchanged="GridView1_SelectedIndexChanged" 
        Width="750px">
         <RowStyle Font-Size="15px" />
        <Columns>
            <asp:BoundField DataField="Student_id" HeaderText="Student_id" ReadOnly="True" 
                SortExpression="Student_id" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                SortExpression="FirstName" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
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
    </asp:Panel>
    </td>
    </tr>
    
    <tr>
    <td colspan="3">
     
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="true" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="2px" 
        CellPadding="3" Font-Underline="False" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="750px">
        <FooterStyle BackColor="White" BorderStyle="Dotted" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066"  Font-Size="15px"/>
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    
    
    </td>
    </tr>
      
   
   
<tr>
<td>
<asp:Panel ID="Panel1" runat="server" Visible="false">
<table>
<tr>
<td>
                                <asp:Label ID="Label4" runat="server" Text="Payment Modes:" width="150px"></asp:Label>
                                 <asp:DropDownList runat="server" ID="drpPaymentModes" 
                                    onselectedindexchanged="drpPaymentModes_SelectedIndexChanged" 
                                    AutoPostBack="true" ForeColor="#990000"></asp:DropDownList>
 </td>
</tr>

<tr>
                         <td >
                                <asp:Label ID="Label1" runat="server" Text="Class:" Width="150px"></asp:Label>
                                <asp:Label ID="lblClass" runat="server" ForeColor="#990000"></asp:Label>
                            </td>
                        </tr>


                    <tr>
                         <td >
                                <asp:Label ID="Label5" runat="server" Text="Material Fees:" Width="150px"></asp:Label>
                                <asp:Label ID="lblMaterial" runat="server" ForeColor="#990000"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                         <td >
                                <asp:Label ID="Label10" runat="server" Text="Computer Fees:" Width="150px"></asp:Label>
                                <asp:Label ID="lblComp" runat="server" ForeColor="#990000"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                         <td >
                                <asp:Label ID="Label12" runat="server" Text="Smart Class Fees:" Width="150px"></asp:Label>
                                <asp:Label ID="lblSmart" runat="server" ForeColor="#990000"></asp:Label>
                            </td>
                        </tr>
                        <tr><td ></td></tr>
                        <tr>
                        <td >
                        <b>
                            <asp:Label ID="Label13" runat="server" Text="Total Fees:" Width="150px"></asp:Label>
                                <asp:Label ID="lblTotal" runat="server" ForeColor="#990000"></asp:Label></b>
                        </td>
                        </tr>
</table>

</asp:Panel>

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
 </td>
 </tr>
 </table>




    </div>
    </div>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>


