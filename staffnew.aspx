<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="staffnew.aspx.cs" Inherits="staffnew" %>

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
<div>
<uc2:menu ID="menu1" runat="server" />
    <div >
    <table id="members">
<tr  >
<td  >
<h3 class="details">Staff Details</h3>

    
    <h4 class="details">Personal Details</h4>
    <table class="table">
<tr>
<td>
<table>
              <caption>
                  
                  <tr>
                      <td class="style4 row" valign="top">
                          <asp:Label ID="Label2" runat="server" Text="Staff Id:"></asp:Label><br />
                          <asp:TextBox ID="txt_id" runat="server" CssClass="txt"></asp:TextBox><br />
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                              ControlToValidate="txt_id" ErrorMessage="Staff Id Is Required" 
                              ForeColor="#FF3300"></asp:RequiredFieldValidator>
                      </td>
                      <td class="style4" valign="top">
                          <asp:Label ID="Label3" runat="server" Text="First Name:"></asp:Label><br />
                          <asp:TextBox ID="txt_name" runat="server" CssClass="txt"></asp:TextBox><br />
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                              ControlToValidate="txt_name" ErrorMessage="Name Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
                      <td class="style4" valign="top">
                          <asp:Label ID="Label5" runat="server" Text="Last Name:"></asp:Label><br />
                          <asp:TextBox ID="txt_lname" runat="server"  CssClass="txt"></asp:TextBox><br />
                      </td>
                      
                  </tr>
                  <tr>
                      <td valign="top">
                          <asp:Label ID="Label13" runat="server" Text="Gender:"></asp:Label><br />
                          <asp:DropDownList ID="drp_gender" runat="server" CssClass="txt" >
                              <asp:ListItem Value="1">Male</asp:ListItem>
                              <asp:ListItem Value="2">Female</asp:ListItem>
                          </asp:DropDownList>
                      </td>
                      <td >
                          <asp:Label ID="Label4" runat="server" Text="DOB:"></asp:Label><br />
                          <asp:TextBox ID="txt_dob" runat="server" CssClass="txt"></asp:TextBox><br />
                          <asp:CalendarExtender ID="txt_dob_CalendarExtender" runat="server" 
                              Enabled="True" TargetControlID="txt_dob">
                          </asp:CalendarExtender>
                      </td>
                       <td>
                          <asp:Label ID="Label6" runat="server" Text="Date Of Joining:"></asp:Label><br />
                          <asp:TextBox ID="txt_doj" runat="server" CssClass="txt"></asp:TextBox><br />
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
<td>
    <asp:Panel ID="Panel1" runat="server">
        <h4 class="details">Contact Details </h4>
    <table>
  
  <tr>
  <td valign="top">
   
  <table>

    <tr>
       <td class="style9" >
            
    <asp:Panel ID="Panel2" runat="server" >
    
    <table>
        <caption>
            
            <tr>
                <td class="style12" valign="top">
                    <asp:Label ID="Label15" runat="server" Text="Residential No(Phone):"></asp:Label><br />
                    <asp:TextBox ID="txt_phone" runat="server" CssClass="txt"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="txt_phone_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" TargetControlID="txt_phone" 
                        ValidChars="1234567890">
                    </asp:FilteredTextBoxExtender>
                </td>
                <td class="style15" >
                    <asp:Label ID="Label16" runat="server" Text="Residential Address:"></asp:Label><br />
                    <asp:TextBox ID="txt_addrs" runat="server" TextMode="MultiLine" CssClass="txt" 
                        Width="148px"></asp:TextBox>
                </td>
            </tr>
            <tr> 
                <td class="style12" valign="top">
                    <asp:Label ID="Label17" runat="server" Text="Mobile No2:"></asp:Label><br />
                    <asp:TextBox ID="txt_mob" runat="server" CssClass="txt"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="txt_mob_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" TargetControlID="txt_mob" ValidChars="1234567890">
                    </asp:FilteredTextBoxExtender>
                </td>
                <td valign="top" class="style15" >
                    <asp:Label ID="Label18" runat="server" Text="Pincode:"></asp:Label><br />
                    <asp:TextBox ID="txt_pincode" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
        </caption>
         </table>
    </asp:Panel>
    </td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    <tr>
    <td >    <h4 class="details">Educational/Job Details </h4>
           <table>
           <tr>
           <td class="style16">
          
             
    <asp:Panel ID="Panel3" runat="server">
    
    <table>
    
             
         <tr>
          <td  >
        <asp:Label ID="Label24" runat="server" Text="Qualification:"></asp:Label><br />
             <asp:DropDownList ID="drp_dualification" runat="server" CssClass="txt"
                  onselectedindexchanged="drp_dualification_SelectedIndexChanged">
                 <asp:ListItem>--Select--</asp:ListItem>
                 <asp:ListItem>B.Tech</asp:ListItem>
             </asp:DropDownList>
             </td>
             <td >
                 <asp:Label ID="Label39" runat="server" Text="Type Of Teaching:"></asp:Label><br />            
             <asp:DropDownList ID="drp_type" runat="server" CssClass="txt">
                 <asp:ListItem Selected="True">--Select--</asp:ListItem>
                 <asp:ListItem>Teaching</asp:ListItem>
                 <asp:ListItem>Non-Teaching</asp:ListItem>
             </asp:DropDownList>
             </td>
              <td >
        <asp:Label ID="Label25" runat="server" Text="Subject:"></asp:Label><br />
                  <asp:TextBox ID="txt_subject" runat="server" CssClass="txt"></asp:TextBox>
             </td>
            </tr>           
            <tr><td ><br /></td></tr>
            <tr>
             <td valign="top" >
              
                 <asp:Label ID="Label26" runat="server" Text="Status:"></asp:Label><br />
            
                 <asp:RadioButtonList ID="rdio_status" runat="server" CssClass="txt"
                     RepeatDirection="Horizontal">
                     <asp:ListItem Selected="True">Active</asp:ListItem>
                     <asp:ListItem>Deactive</asp:ListItem>
                 </asp:RadioButtonList>
             </td>
             <td  >
        <asp:Label ID="Label1" runat="server" Text="Salary:"></asp:Label><br />
                  <asp:TextBox ID="TextBox1" runat="server" CssClass="txt"></asp:TextBox><br />
                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" 
                    runat="server" Enabled="True" TargetControlID="txt_salary" 
                    ValidChars="0123456789.">
                </asp:FilteredTextBoxExtender>
                <br />
                <asp:Label ID="Label7" runat="server"></asp:Label>
             </td>
            <td >
        <asp:Label ID="Label27" runat="server" Text="Salary:"></asp:Label><br />
                  <asp:TextBox ID="txt_salary" runat="server" CssClass="txt"></asp:TextBox><br />
                <asp:FilteredTextBoxExtender ID="txt_salary_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="txt_salary" 
                    ValidChars="0123456789.">
                </asp:FilteredTextBoxExtender>
                <br />
                <asp:Label ID="lbl_result" runat="server"></asp:Label>
             </td>
             </tr>
            
           
            
                <tr>
                    <td colspan="3">
                        <asp:FileUpload ID="FileUpload1" runat="server" onchange="this.form.txt_image.text=GetFileName(this.value);"/>
                    </td>
         </tr>
            
            </table>
    </asp:Panel> 
    </td>
           </tr>
           </table>
    </td>
    </tr>
       </asp:Panel> 
       </td>
</tr>
<tr>
<td>

    
</td>
</tr>
<tr>
<td>
    <asp:ImageButton ID="btn_save" runat="server" ImageUrl="~/buttons/submit.png" 
        onclick="btn_save_Click" />
    <asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="~/buttons/reset.PNG"   />
    &nbsp;
</td>
</tr>
</table>
</td>
</tr>
 </table>
 
    </div>
</div>
</asp:Content>

