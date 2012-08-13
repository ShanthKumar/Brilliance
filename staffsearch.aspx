<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="staffsearch.aspx.cs" Inherits="staffsearch" %>

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
            width: 355px;
        }
        .style6
        {
            width: 152px;
        }
        .style7
        {
            width: 164px;
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
</div>
<div>
<table id="members">
<tr>
<td>
<h4 class="details">Personal Details</h4>
    <table class="table">

<tr>
<td  >

<table>
<tr>
<td>
<table>
<tr>
<td class="row style4">
  <asp:Label ID="Label7" runat="server" Text="Staff Id/Name:" ></asp:Label>
</td>
<td class="style4" >
  
    <asp:TextBox ID="txt_search" runat="server"></asp:TextBox>
    </td>
    <td>
    <asp:ImageButton ID="btn_Search" runat="server" ImageUrl="~/buttons/search1.PNG" 
            onclick="ImageButton1_Click" /></td>
</tr>
</table>

  
</td>
<td>
 
</td>
</tr>
</table>
    
   
</td>

</tr>
<tr>
<td>
<tr>
  <td>
  <table>
             <caption>
                 <h4 class="details">
                     Personal Details
                 </h4>
                 <tr>
                     <td class="row">
                         <asp:Label ID="Label2" runat="server" Text="Staff Id:"></asp:Label>
                         <br />
                         <asp:TextBox ID="txt_id" runat="server" CssClass="txt"></asp:TextBox>
                         <td class="style4">
                             <asp:Label ID="Label3" runat="server" Text="First Name:"></asp:Label>
                             <br />
                             <asp:TextBox ID="txt_name" runat="server" CssClass="txt"></asp:TextBox>
                         </td>
                         <td class="style4">
                             <asp:Label ID="Label5" runat="server" Text="Last Name:"></asp:Label>
                             <br />
                             <asp:TextBox ID="txt_lname" runat="server" CssClass="txt"></asp:TextBox>
                         </td>
                     </td>
                     <td align="right" rowspan="3" width="380px" valign="top">
                         <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" />
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="Label13" runat="server" Text="Gender:"></asp:Label>
                         <br />
                         <asp:DropDownList ID="drp_gender" runat="server" CssClass="txt">
                             <asp:ListItem Value="1">Male</asp:ListItem>
                             <asp:ListItem Value="2">Female</asp:ListItem>
                         </asp:DropDownList>
                     </td>
                     <td>
                         <asp:Label ID="Label4" runat="server" Text="DOB:"></asp:Label>
                         <br />
                         <asp:TextBox ID="txt_dob" runat="server" CssClass="txt"></asp:TextBox>
                         <br />
                         <asp:CalendarExtender ID="txt_dob_CalendarExtender" runat="server" 
                             Enabled="True" TargetControlID="txt_dob">
                         </asp:CalendarExtender>
                     </td>
                     <td>
                         <asp:Label ID="Label6" runat="server" Text="Date Of Joining:"></asp:Label>
                         <br />
                         <asp:TextBox ID="txt_doj" runat="server" CssClass="txt"></asp:TextBox>
                         <br />
                         <asp:CalendarExtender ID="txt_doj_CalendarExtender" runat="server" 
                             Enabled="True" TargetControlID="txt_doj">
                         </asp:CalendarExtender>
                     </td>
                 </tr>
             </caption>
             </table>
             </td>
</tr>
        <tr>
            <td >
         
                    <table class="table">
                       
                       
                                                        <caption>
                                                            <h4 class="details">
                                                                Contact Details</h4>
                                                            <tr>
                                                                <td class="row" valign="top">
                                                                    <asp:Label ID="Label15" runat="server" Text="Residential No(Phone):"></asp:Label>
                                                                    <br />
                                                                    <asp:TextBox ID="txt_phone" runat="server" CssClass="txt" MaxLength="15"></asp:TextBox>
                                                                    <br />
                                                                    <asp:FilteredTextBoxExtender ID="txt_phone_FilteredTextBoxExtender" 
                                                                        runat="server" Enabled="True" TargetControlID="txt_phone" 
                                                                        ValidChars="1234567890">
                                                                    </asp:FilteredTextBoxExtender>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="Label16" runat="server" Text="Residential Address:"></asp:Label>
                                                                    <br />
                                                                    <asp:TextBox ID="txt_addrss" runat="server" CssClass="txt" TextMode="MultiLine" 
                                                                        Width="148px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="row">
                                                                    <asp:Label ID="Label17" runat="server" Text="Mobile No2:"></asp:Label>
                                                                    <br />
                                                                    <asp:TextBox ID="txt_mob" runat="server" CssClass="txt" MaxLength="11"></asp:TextBox>
                                                                    <asp:FilteredTextBoxExtender ID="txt_mob_FilteredTextBoxExtender" 
                                                                        runat="server" Enabled="True" TargetControlID="txt_mob" ValidChars="0123456789">
                                                                    </asp:FilteredTextBoxExtender>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="Label18" runat="server" Text="Pincode:"></asp:Label>
                                                                    <br />
                                                                    <asp:TextBox ID="txt_pincode" runat="server" CssClass="txt" MaxLength="6"></asp:TextBox>
                                                                    <br />
                                                                    <asp:FilteredTextBoxExtender ID="txt_pincode_FilteredTextBoxExtender" 
                                                                        runat="server" Enabled="True" TargetControlID="txt_pincode" 
                                                                        ValidChars="0987654321">
                                                                    </asp:FilteredTextBoxExtender>
                                                                </td>
                                                            </tr>
                        </caption>
                                                        </table>
                                                        </td>

                                                        <caption>
                                                            <tr>
                                                                <td>
                                                                    <table>
                                                                        <tr>
                                                                            <td class="style5">
                                                                               
                                                                                    <table class="table">
                                                                                        <caption>
                                                                                            <h4 class="details">
                                                                                                Educational/Job Details</h4>
                                                                                            <tr>
                                                                                                <td class="row">
                                                                                                    <asp:Label ID="Label24" runat="server" Text="Qualification:"></asp:Label>
                                                                                                    <br />
                                                                                                    <asp:DropDownList ID="drp_qualification" runat="server" CssClass="txt">
                                                                                                        <asp:ListItem>--Select--</asp:ListItem>
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                                <td class="style7">
                                                                                                    <asp:Label ID="Label39" runat="server" Text="Type Of Teaching:"></asp:Label>
                                                                                                    <br />
                                                                                                    <asp:DropDownList ID="drp_type" runat="server" CssClass="txt">
                                                                                                        <asp:ListItem>--Select--</asp:ListItem>
                                                                                                        <asp:ListItem>Teaching</asp:ListItem>
                                                                                                        <asp:ListItem>Non-Teaching</asp:ListItem>
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                                <td>
                                                                                                  <asp:Label ID="Label25" runat="server" Text="Subject:"></asp:Label>
                                                                                                    <br />
                                                                                                    <asp:TextBox ID="txt_subject" runat="server" CssClass="txt"></asp:TextBox>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                               
                                                                                                <td>
                                                                                                    <table>
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:Label ID="Label26" runat="server" Text="Status:"></asp:Label>
                                                                                                                <br />
                                                                                                                <br />
                                                                                                                <asp:RadioButtonList ID="rado_status" runat="server" CssClass="txt" 
                                                                                                                    RepeatDirection="Horizontal">
                                                                                                                    <asp:ListItem>Active</asp:ListItem>
                                                                                                                    <asp:ListItem>Deactive</asp:ListItem>
                                                                                                                </asp:RadioButtonList>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </td>
                                                                                        
                                                                                                <td class="style7">
                                                                                                    <asp:Label ID="Label27" runat="server" Text="Salary:"></asp:Label>
                                                                                                    <br />
                                                                                                    <asp:TextBox ID="txt_salary" runat="server" CssClass="txt"></asp:TextBox>
                                                                                                    <br />
                                                                                                    <asp:FilteredTextBoxExtender ID="txt_salary_FilteredTextBoxExtender" 
                                                                                                        runat="server" Enabled="True" TargetControlID="txt_salary" 
                                                                                                        ValidChars="0123456789.">
                                                                                                    </asp:FilteredTextBoxExtender>
                                                                                                    <br />
                                                                                                    <asp:Label ID="lbl_result" runat="server"></asp:Label>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </caption>
                                                                                    </table>
                                                                                
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="style5">
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
            </caption>
                    </table>
               
            </td>
        </tr>
        <tr>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton4" runat="server" 
                    ImageUrl="~/buttons/update.png" onclick="ImageButton4_Click" />
                <asp:ImageButton ID="ImageButton5" runat="server" 
                    ImageUrl="~/buttons/cancel.png" />
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

