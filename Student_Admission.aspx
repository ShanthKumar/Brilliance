<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Student_Admission.aspx.cs" Inherits="Student_Admission" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<%@ Register src="usercontrol/menu.ascx" tagname="menu" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
      <link href="css/style1.css" rel="stylesheet" type="text/css" />
    <script src="jquery.js" type="text/javascript"></script>
    <link href="menu.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style5
        {
            width: 247px;
        }
        .style6
        {
            height: 19px;
        }
    </style>
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
<h4 class="details">Student Admission</h4>
 <table class="table">
 <tr><td class="style5"></td></tr>
<tr >
<td class="style5">
<asp:Label ID="Label18" runat="server" Text="Admission Type:" ></asp:Label>
<br /><asp:RadioButton runat="server" GroupName="adm" CssClass="txt"
        Text="Re-Admission" Checked="true" oncheckedchanged="Unnamed1_CheckedChanged" AutoPostBack="true" ID="rdReAdm"/> &nbsp; 
    <asp:RadioButton runat="server" GroupName="adm" Text="New-Admission" 
        oncheckedchanged="Unnamed2_CheckedChanged" AutoPostBack="true" ID="rdNewAdm"/></td>

<td>
    <asp:Label ID="Label68" runat="server" CssClass="label1" 
        Text="  Student Id/Name" ></asp:Label><br />
    <asp:TextBox ID="txtStudent" runat="server" CssClass="txt" ></asp:TextBox>
    </td>
    <td>
    <asp:Label ID="Label69" runat="server" Height="19px" Text="Class" Width="86px"></asp:Label><br />
    <asp:DropDownList ID="drpclass" runat="server" Height="26px" Width="100px" CssClass="txt">
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
    </td><td>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="~/buttons/search1.PNG" onclick="ImageButton2_Click" 
            ImageAlign="Left" />
        </td>
        </tr>
        <tr>
        <td colspan="4">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="2px" 
        CellPadding="3" DataKeyNames="Student_id" Font-Underline="False" 
         onselectedindexchanged="GridView1_SelectedIndexChanged" 
        Width="750px">
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
    <asp:Panel ID="Panel1" runat="server">
        <h4 class="details">
            Personal Details
        </h4>
        <table>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td class="row style4">
                                <asp:Label ID="Label7" runat="server" Text="Student Id:" ></asp:Label><br />
                                <asp:TextBox ID="txt_studentid" runat="server" Enabled="False" CssClass="txt"></asp:TextBox>
                            </td>
                            <td class="style4">
                                <asp:Label ID="Label1" runat="server" Text="Gender:" Width="100px"></asp:Label>
                                <br />
                                <asp:RadioButtonList ID="radio_gender" runat="server" CssClass="txt"
                                    RepeatDirection="Horizontal">
                                    <asp:ListItem Value="male" Text="male">male</asp:ListItem>
                                    <asp:ListItem Value="female" Text="female">female</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            
                        
                            <td class="style4">
                                <asp:Label ID="Label2" runat="server" Text="Name:" ></asp:Label><br />
                                <asp:TextBox ID="txt_name" runat="server" CssClass="txt"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Dob:" ></asp:Label><br />
                                <asp:TextBox ID="txt_dob" runat="server" CssClass="txt"></asp:TextBox>
                                <asp:CalendarExtender ID="txt_dob_CalendarExtender" runat="server" 
                                    Enabled="True" TargetControlID="txt_dob">
                                </asp:CalendarExtender>
                            </td>
                        </tr>
                        <tr>
                        <td colspan="3">
                        <asp:Label ID="Label6" runat="server" Text="Admission to : " Width="250px" ></asp:Label>
                        <asp:DropDownList runat="server" ID="drpClasses" 
                                onselectedindexchanged="drpClasses_SelectedIndexChanged" 
                                AutoPostBack="true" ForeColor="#990000"> </asp:DropDownList>
                        </td>
                       </tr>
                       <tr>
                            <td colspan="3">
                                <asp:Label ID="Label4" runat="server" Text="Payment Modes : " Width="250px" ></asp:Label>
                                 <asp:DropDownList runat="server" ID="drpPaymentModes" CssClass="txt"
                                    onselectedindexchanged="drpPaymentModes_SelectedIndexChanged" 
                                    AutoPostBack="true" ForeColor="#990000"></asp:DropDownList>
                            </td>
                        </tr><tr>
                            <td colspan="3">
                                <asp:Label ID="Label15" runat="server" Text="Application Form Fee :" 
                                    Width="250px" ></asp:Label>
                               <asp:Label ID="Label17" runat="server" Text="Rs 50/-" ForeColor="#990000"  ></asp:Label>
                            </td>
                        </tr>

                        <asp:PlaceHolder ID="phAdmission" runat="server" Visible="false">
                        
                        <tr>
                            <td colspan="3">
                                <asp:Label ID="Label9" runat="server" Text="Admission Fees :" ></asp:Label>
                               <asp:Label ID="lbladmissionfees" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:Label ID="Label8" runat="server" Text="Discount on Admission Fees:" Width="250px" ></asp:Label>
                                 <asp:TextBox ID="txt_Discount" runat="server"  OnUnload="reBind" AutoPostBack="true"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:Label ID="Label11" runat="server" Text="Reason for Discount :"  Width="250px"></asp:Label>
                                 <asp:TextBox ID="txt_DiscountReason" runat="server" TextMode="MultiLine" Height="69px"></asp:TextBox>
                            </td>
                        </tr>
                        </asp:PlaceHolder>
                        <tr>
                         <td colspan="3">
                                <asp:Label ID="Label5" runat="server" Text="Material Fees:" Width="250px" ></asp:Label>
                                <asp:Label ID="lblMaterial" runat="server" ForeColor="#990000"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                         <td colspan="3">
                                <asp:Label ID="Label10" runat="server" Text="Computer Fees:" Width="250px" ></asp:Label>
                                <asp:Label ID="lblComp" runat="server" ForeColor="#990000"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                         <td colspan="3" class="style6">
                                <asp:Label ID="Label12" runat="server" Text="Smart Class Fees:" Width="250px" ></asp:Label>
                                <asp:Label ID="lblSmart" runat="server" ForeColor="#990000"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                         <td colspan="3">
                                <asp:Label ID="Label14" runat="server" Text="Special Day Fees:" Width="250px" ></asp:Label>
                                <asp:Label ID="lblSpl" runat="server" ForeColor="#990000"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                             <td colspan="3">
                                <asp:Label ID="Label16" runat="server" Text="Exam Fees:" Width="250px" ></asp:Label>
                                <asp:Label ID="lblExam" runat="server" ForeColor="#990000"></asp:Label>
                            </td>
                        </tr>
                        <tr><td colspan="3"></td></tr>
                        <tr>
                        <td colspan="3">
                        
                            <asp:Label ID="Label13" runat="server" Text="Total Fees:" Width="250px"  ></asp:Label>
                                <asp:Label ID="lblTotal" runat="server" ForeColor="#990000"></asp:Label></b>
                        </td>
                        </tr>
                        <tr><td></td></tr>
                        <tr>
                        <td>
                        <b>
                                <asp:Label ID="lblErrors" ForeColor="Red" runat="server" Width="250px" ></asp:Label></b>
                        </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <br />
    </td>
</tr>
<tr>
<td class="style5" >




<table>
<tr>
<td>
  <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/buttons/update.png" 
         onclick="ImageButton4_Click"/>
</td>
<td>
    &nbsp;<asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/buttons/cancel.png" 
         onclick="ImageButton5_Click" />
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

