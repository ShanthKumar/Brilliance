<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="transfer.aspx.cs" Inherits="transfer" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<%@ Register src="usercontrol/menu.ascx" tagname="menu" tagprefix="uc1" %>

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
    <uc1:menu ID="menu1" runat="server" />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
   
   <div>
       
    <table id="members">
    
<tr>
<td>
<h3 class="details" >Student Search</h3>
 <table  class="table">
<tr style="width:650px">
<td class="row style4">
    <asp:Label ID="Label68" runat="server" CssClass="label1" 
        Text="  Student Id/Name:"></asp:Label><br />
    <asp:TextBox ID="txtStudent" runat="server" ></asp:TextBox>
  </td>
  <td class="style4">
    <asp:Label ID="Label69" runat="server"  Text="Class:" ></asp:Label><br />
    <asp:DropDownList ID="drpclass" runat="server">
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
  <td>
   
     
        <asp:ImageButton ID="ImageButton2" runat="server" 
            ImageUrl="~/images/buttons/search.PNG" onclick="ImageButton2_Click" />
  
</td>
</tr>
<tr style="width:650px">
<td style="text-decoration: underline" colspan="3">
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="750px" 
        AutoGenerateColumns="False" DataKeyNames="Student_id" 
        Font-Underline="False" Height="158px" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="Student_id" HeaderText="Student_id" ReadOnly="True" 
                SortExpression="Student_id" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                SortExpression="FirstName" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="Class" HeaderText="Class" ReadOnly="True" 
                SortExpression="Class" />
            <asp:CommandField ShowSelectButton="True" ButtonType="Image" 
                SelectImageUrl="images/buttons/gnerate.png" SelectText="" />
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

    <table style="width: 130%;">
        <tr>
            <td class="row style4" colspan="2">      
                <asp:Label ID="Label1" runat="server" Text="Name of the School:" 
                    CssClass="text2"></asp:Label>       <br />
                <asp:TextBox ID="TextBox1" runat="server" CssClass="txt" Width="400px">5</asp:TextBox>
            </td>
            <td >
             <asp:Label ID="Label2" runat="server" Text="Admission No:" 
                    CssClass="text2"></asp:Label>    
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            </tr>
            <tr>
            <td >
                <asp:Label ID="Label3" runat="server" Text="Cumilative Record No:" 
                    CssClass="text2"></asp:Label>    
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td>
             <asp:Label ID="Label4" runat="server" Text="Cumilative Record No:" 
                    CssClass="text2"></asp:Label>  
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td >
             <asp:Label ID="Label5" runat="server" Text="Cumilative Record No:" 
                    CssClass="text2"></asp:Label>  
                <asp:TextBox ID="TextBox2" runat="server">5</asp:TextBox>
            </td>
            <td >
             <asp:Label ID="Label6" runat="server" Text="Cumilative Record No:" 
                    CssClass="text2"></asp:Label>  
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
           
            <td >
             <asp:Label ID="Label7" runat="server" Text="Cumilative Record No:" 
                    CssClass="text2"></asp:Label>  
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td>
             <asp:Label ID="Label8" runat="server" Text="Cumilative Record No:" 
                    CssClass="text2"></asp:Label>  
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td >
             <asp:Label ID="Label9" runat="server" Text="Cumilative Record No:" 
                    CssClass="text2"></asp:Label>  
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td >
             <asp:Label ID="Label10" runat="server" Text="Cumilative Record No:" 
                    CssClass="text2"></asp:Label>  
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
       
            <td >
             <asp:Label ID="Label11" runat="server" Text="Cumilative Record No:" 
                    CssClass="text2"></asp:Label>  
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td >
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            </td>
            <td >
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
            </td>
            <td >
                &nbsp;</td>
            <td >
                <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td >
                <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
            </td>
            <td >
                <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
            </td>
            <td >
                &nbsp;</td>
            <td >
                <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td >             
                <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
            </td>
            <td >
                <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
            </td>
            <td >
                &nbsp;</td>
            <td >
                <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td >             
                <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
            </td>
            <td >
                <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
            </td>
            <td >
                &nbsp;</td>
            <td >
                <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td >             
                <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
            </td>
            <td >
                <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
            </td>
            <td >
                &nbsp;</td>
            <td >
                <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td >
                &nbsp;</td>
            <td >
                &nbsp;</td>
            <td >
                &nbsp;</td>
            <td >
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                &nbsp;</td>
            <td >
                &nbsp;</td>
            <td >
                &nbsp;</td>
            <td >
                <asp:Button ID="Button2" runat="server" Height="25px" onclick="Button2_Click" 
                    Text="Save_Tc_Details" Width="94px" />
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="25px" 
                    Text="Generate_Tc" Width="94px"  Visible="false" />
            </td>
        </tr>
    </table>

</td>
</tr>   
<tr>
<td colspan="3" align="right">
    <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
        <Report FileName="Transfer_Certificate.rpt">
        </Report>
    </CR:CrystalReportSource>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
        AutoDataBind="True" EnableParameterPrompt="False" HasRefreshButton="True" 
        ReuseParameterValuesOnRefresh="True" ToolPanelView="None"/>
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

