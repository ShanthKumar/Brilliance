<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="studentdetails.aspx.cs" Inherits="studentdetails" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<%@ Register src="usercontrol/menu.ascx" tagname="menu" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
      <link href="css/style1.css" rel="stylesheet" type="text/css" />
    <script src="jquery.js" type="text/javascript"></script>
    <link href="menu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" >
    function val() {
        if (document.getElementById("<%=txt_name.ClientID%>").value == "") {
            lbl_p_validation.text = "Name Feild can not be blank";
            document.getElementById("<%=txt_name.ClientID%>").focus();
            return false;
        }
        return true;
    }
</script>
    
    <script src="jquery.js" type="text/javascript"></script>
    <link href="menu.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
       
        .style4
        {
            width: 163px;
        }
        
      
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
    <div>
    <uc2:menu ID="menu1" runat="server" />
    
    <div>
    <table id="members">
<tr>
<td>
<h3 class="details">New Student</h3>

 <table  class="table">
 
<tr >
<td>
   
    <asp:Panel ID="Panel1" runat="server" >
    <h4 class="details">Personal Details </h4>
    <table>
<tr>
<td colspan="2" >
<table>
<tr>
<td class="style4" >
  <asp:Label ID="Label7" runat="server" Text="Student Id:"></asp:Label> <br />
    <asp:TextBox ID="txt_studentid" runat="server" CssClass="txt" ReadOnly="True"></asp:TextBox>
</td>
<td class="style4">
 <asp:Label ID="Label30" runat="server" Text="Name:"></asp:Label> <br />
    <asp:TextBox ID="txt_name" runat="server" CssClass="txt"></asp:TextBox>
 
</td> 
<td  class="style4" >
 <asp:Label ID="Label104" runat="server" Text=" Last Name:"></asp:Label> <br />
    <asp:TextBox ID="txt_lastname" runat="server" CssClass="txt"></asp:TextBox>
</td>

</tr>
<tr>
<td>
                                            <asp:Label ID="Label19" runat="server" Text="Standard:"></asp:Label>
                                            <br />
                                            <asp:DropDownList ID="drp_std" runat="server" CssClass="txt">
                                                <asp:ListItem>---Select---</asp:ListItem>
                                                <asp:ListItem Value="U.K.G">U.K.G</asp:ListItem>
                                                <asp:ListItem Value="L.K.G">L.K.G</asp:ListItem>
                                                <asp:ListItem Value="I">I</asp:ListItem>
                                                <asp:ListItem Value="II">II</asp:ListItem>
                                                <asp:ListItem Value="III">III</asp:ListItem>
                                                <asp:ListItem Value="IV">IV</asp:ListItem>
                                                <asp:ListItem Value="V">V</asp:ListItem>
                                                <asp:ListItem Value="VI">VI</asp:ListItem>
                                                <asp:ListItem Value="VII">VII</asp:ListItem>
                                                <asp:ListItem Value="VIII">VIII</asp:ListItem>
                                                <asp:ListItem Value="XI">XI</asp:ListItem>
                                                <asp:ListItem Value="X">X</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
<td class="style4" >
  <asp:Label ID="Label1" runat="server" Text="Gender:"></asp:Label><br />
    
    <asp:RadioButtonList ID="radio_gender" runat="server" CssClass="txt"
        RepeatDirection="Horizontal">
        <asp:ListItem Value="Male" Text="Male" Selected="True">Male</asp:ListItem>
        <asp:ListItem Value="Female" Text="Female">Female</asp:ListItem>
    </asp:RadioButtonList>
</td>
<td class="style4">
  <asp:Label ID="Label3" runat="server" Text="DOB:"></asp:Label><br />
    <asp:TextBox ID="txt_dob" runat="server" CssClass="txt" AutoPostBack="True" 
        ontextchanged="txt_dob_TextChanged" ></asp:TextBox>
    <asp:CalendarExtender ID="txt_dob_CalendarExtender" runat="server" 
        Enabled="True" TargetControlID="txt_dob">
    </asp:CalendarExtender>
</td>

   

</tr>
<tr>

 <td class="style4">
        <asp:Label ID="Label4" runat="server" Text="Age:"></asp:Label><br />
        <asp:TextBox ID="txt_age" runat="server" CssClass="txt" Width="60px" 
            ReadOnly="True"></asp:TextBox>
    </td>

<td class="style4" >
  <asp:Label ID="Label8" runat="server" Text="Elder Brothers:"></asp:Label><br />
    <asp:TextBox ID="txt_el_bro" runat="server" CssClass="txt" Width="60px" 
        MaxLength="2"></asp:TextBox>
  
    <asp:FilteredTextBoxExtender ID="txt_el_bro_FilteredTextBoxExtender" 
        runat="server" Enabled="True" TargetControlID="txt_el_bro" 
        ValidChars="0123456789">
    </asp:FilteredTextBoxExtender>
  
</td>
<td colspan="2">
<asp:Label ID="Label10" runat="server" Text="Elder Sisters:"></asp:Label><br />
    <asp:TextBox ID="txt_el_sis" runat="server" CssClass="txt" Width="60px" 
        MaxLength="2"></asp:TextBox>
  
    <asp:FilteredTextBoxExtender ID="txt_el_sis_FilteredTextBoxExtender" 
        runat="server" Enabled="True" TargetControlID="txt_el_sis" 
        ValidChars="0123456789">
    </asp:FilteredTextBoxExtender>
  
</td>
</tr>
<tr>
<td  class="style4">
<asp:Label ID="Label13" runat="server" Text="Younger Sisters:"></asp:Label><br />
    <asp:TextBox ID="txt_yun_sis" runat="server" CssClass="txt" Width="60px" 
        MaxLength="2"></asp:TextBox>
    <asp:FilteredTextBoxExtender ID="txt_yun_sis_FilteredTextBoxExtender" 
        runat="server" Enabled="True" TargetControlID="txt_yun_sis" 
        ValidChars="0123456789">
    </asp:FilteredTextBoxExtender>
</td>

<td class="style4">
  <asp:Label ID="Label14" runat="server" Text="Younger Brothers:"></asp:Label><br />
    <asp:TextBox ID="txt_yun_bro" runat="server" CssClass="txt" Width="60px" 
        MaxLength="2"></asp:TextBox>
    <asp:FilteredTextBoxExtender ID="txt_yun_bro_FilteredTextBoxExtender" 
        runat="server" Enabled="True" TargetControlID="txt_yun_bro" 
        ValidChars="0123456789">
    </asp:FilteredTextBoxExtender>
</td>
<td>
<asp:Label ID="Label103" runat="server" Text="Image Upload:"></asp:Label><br />
    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="txt"  />
</td>
</tr>
</table>

  
</td>

</tr>
<tr>
    <td align="right">
        <asp:Label ID="lbl_p_validation" runat="server" ForeColor="Red" Text="Label" Visible="false"></asp:Label>
    </td>
    <td align="right">
        <asp:ImageButton ID="Button1" runat="server"  onclick="Button1_Click" 
            ImageUrl="~/buttons/next.png"  />
   
    </td>
    <td align="right">
        &nbsp;</td>
</tr>

</table>
    </asp:Panel>   
</td>
</tr>
<tr>
<td>
    <asp:Panel ID="Panel11" runat="server">
    <h4 class="details">Birth Details </h4>
    <table>
    <tr>
    <td >
     
    <asp:Panel ID="Panel2" runat="server">
   
    <table>
    <tr>    
    <td>
    <table>
    <tr>
    <td class="row style4">
     
        <asp:Label ID="Label106" runat="server" Text="Place Of Birth:"></asp:Label>
        <asp:TextBox ID="txt_birthplace" runat="server" CssClass="txt"></asp:TextBox>
     
        <br />
</td>
<td class="style4">
    <asp:Label ID="Label107" runat="server" Text="Town/Village:"></asp:Label>
    <asp:TextBox ID="txt_village0" runat="server" CssClass="txt"></asp:TextBox>
    <br />
    </td>
    <td class="style4">
        <br />
    </td>
    </tr>
    <tr>
     <td>
         <asp:Label ID="Label109" runat="server" Text="Taluk:"></asp:Label>
         <br />
         <asp:TextBox ID="txt_taulk" runat="server" CssClass="txt"></asp:TextBox>
         <br />
    </td>
    <td>
        <asp:Label ID="Label110" runat="server" Text="District:"></asp:Label><br />

        <asp:TextBox ID="txt_district1" runat="server" CssClass="txt"></asp:TextBox>
        <br />
    </td>
    <td>
        <br />
    </td>
    </tr>
   
    </table>
    </td>
    </tr>
    </table>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel3" runat="server">
    <h4 class="details">Parents Details </h4>
    <table>
    <tr>    
    <td   >
    <table>
    <tr>
   <td class="row style4">
  <asp:Label ID="Label15" runat="server" Text="Father's Name:" ></asp:Label><br />
    <asp:TextBox ID="txt_fathername" runat="server" ></asp:TextBox>
    </td>    
     <td class="style4">
        <asp:Label ID="Label54" runat="server" Text="Qualification:" ></asp:Label><br />
    <asp:TextBox ID="txt_father_qualification" runat="server" CssClass="txt"></asp:TextBox>
    </td>
    <td class="style4"> 
    <asp:Label ID="Label55" runat="server" Text="Father's Occupation:" 
            ></asp:Label><br />
    <asp:TextBox ID="txt_father_occupation" runat="server" CssClass="txt"></asp:TextBox>        
    </td>
    </tr>
      <tr>
   <td>
        <asp:Label ID="Label17" runat="server" Text="Mother's Name:" ></asp:Label><br />
    <asp:TextBox ID="txt_mothername" runat="server" CssClass="txt"></asp:TextBox>
    </td>
    <td>
  <asp:Label ID="Label53" runat="server" Text="Qualification:" ></asp:Label><br />
    <asp:TextBox ID="txt_mother_quali" runat="server" CssClass="txt"></asp:TextBox>
    </td>
    <td>
        <asp:Label ID="Label56" runat="server" Text="Mother's Occupation:" 
            ></asp:Label><br />
    <asp:TextBox ID="txt_mother_occupation" runat="server" CssClass="txt"></asp:TextBox>
    </td>
    </tr>
    
    <tr>
    <td>
        <asp:Label ID="Label20" runat="server" Text="Father Contact No:" ></asp:Label><br />
    <asp:TextBox ID="txt_father_no" runat="server" CssClass="txt" MaxLength="11"></asp:TextBox>
        <asp:FilteredTextBoxExtender ID="txt_father_no_FilteredTextBoxExtender" 
            runat="server" Enabled="True" TargetControlID="txt_father_no" 
            ValidChars="0123456789">
        </asp:FilteredTextBoxExtender>
    </td>
    <td>
        <asp:Label ID="Label57" runat="server" Text="Mother Contact No:" ></asp:Label><br />
    <asp:TextBox ID="txt_mother_no" runat="server" CssClass="txt" MaxLength="11"></asp:TextBox>
        <asp:FilteredTextBoxExtender ID="txt_mother_no_FilteredTextBoxExtender" 
            runat="server" Enabled="True" TargetControlID="txt_mother_no" 
            ValidChars="0123456789">
        </asp:FilteredTextBoxExtender>
</td>
   
    <td>
  <asp:Label ID="Label21" runat="server" Text="Parents Annual Income:" ></asp:Label><br />
    <asp:TextBox ID="txt_income" runat="server" CssClass="txt"></asp:TextBox>
        <asp:FilteredTextBoxExtender ID="txt_income_FilteredTextBoxExtender" 
            runat="server" Enabled="True" TargetControlID="txt_income" 
            ValidChars="0123456789.">
        </asp:FilteredTextBoxExtender>
    </td>
     </tr>
    <tr>
    <td>
  <asp:Label ID="Label22" runat="server" Text="Number Of Dependents:" ></asp:Label><br />
    <asp:TextBox ID="txt_noofdepend" runat="server" CssClass="txt" Width="60px" 
            MaxLength="2"></asp:TextBox>
</td>
    </tr>
    </table>
    </td>
    </tr>
    
    </table>
    </asp:Panel>
    </td>
    </tr>
    <tr>
    <td align="right" >
        <asp:ImageButton ID="Button2" runat="server" Text="Previous" 
            onclick="Button2_Click" ImageUrl="~/buttons/previous.png" />
    
    <asp:ImageButton ID="Button3" runat="server" Text="Next" 
            OnClientClick="return val()" onclick="Button3_Click" 
            ImageUrl="~/buttons/next.png"  />
    </td>
</tr>
    </table>
    </asp:Panel>
</td>
</tr>
<tr>
<td >
    <asp:Panel ID="Panel12" runat="server">
    
    <table>    
    <tr>
    <td >
    <asp:Panel ID="Panel4" runat="server">
                    <h4 class="details">
                        Cast Details
                    </h4>
                    <table>
                        <tr>
                            <td>
                                <table>
                                    <tr>
                                        <td class="row style4">
                                            <asp:Label ID="Label26" runat="server" Text="Mother Tongue:"></asp:Label>
                                            <br />
                                            <asp:TextBox ID="txt_mother_taungue" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td class="style4">
                                            <asp:Label ID="Label23" runat="server" Text="Nationality:"></asp:Label>
                                            <br />
                                            <asp:TextBox ID="txt_natioality" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td class="style4">
                                            <asp:Label ID="Label24" runat="server" Text="Religion:"></asp:Label>
                                            <br />
                                            <asp:TextBox ID="txt_religion" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label25" runat="server" Text="Caste:"></asp:Label>
                                            <br />
                                            <asp:TextBox ID="txt_caste" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label27" runat="server" Text="Scheduled Caste:"></asp:Label>
                                            <br />
                                            <asp:RadioButtonList ID="rado_caste" runat="server" CssClass="txt" 
                                                RepeatDirection="Horizontal">
                                                <asp:ListItem>SC</asp:ListItem>
                                                <asp:ListItem>ST</asp:ListItem>
                                                <asp:ListItem Selected="True">OBC</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label28" runat="server" Text="Any Other Languages Spoken:"></asp:Label>
                                            <br />
                                            <asp:TextBox ID="txt_language_spoken" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
            <asp:Panel ID="Panel5" runat="server">
                    <h4 class="details">
                        Residential Details
                    </h4>
                    <table>
                        <tr>
                            <td>
                                <table>
                                    <tr>
                                        <td class="row style4">
                                            <asp:Label ID="Label16" runat="server" Text="Pupil Staying With:"></asp:Label>
                                            <br />
                                            <asp:DropDownList ID="drp_stay_with" runat="server" AutoPostBack="True" 
                                                CssClass="txt" onselectedindexchanged="drp_stay_with_SelectedIndexChanged">
                                                <asp:ListItem>Parent&#39;s</asp:ListItem>
                                                <asp:ListItem>Guardian</asp:ListItem>
                                                <asp:ListItem>Paying Hotel</asp:ListItem>
                                                <asp:ListItem>Rented Room</asp:ListItem>
                                                <asp:ListItem>Free Boarding</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label29" runat="server" Text="Contact Phone:"></asp:Label>
                                            <br />
                                            <asp:TextBox ID="txt_phone" runat="server" CssClass="txt" MaxLength="15"></asp:TextBox>
                                            <asp:FilteredTextBoxExtender ID="txt_phone_FilteredTextBoxExtender" 
                                                runat="server" Enabled="True" TargetControlID="txt_phone" 
                                                ValidChars="0123456789">
                                            </asp:FilteredTextBoxExtender>
                                        </td>
                                        <td class="style4">
                                            <asp:Label ID="Label59" runat="server" Text="Contact Mobile:"></asp:Label>
                                            <br />
                                            <asp:TextBox ID="txt_mob" runat="server" CssClass="txt" MaxLength="11"></asp:TextBox>
                                            <asp:FilteredTextBoxExtender ID="txt_mob_FilteredTextBoxExtender" 
                                                runat="server" Enabled="True" TargetControlID="txt_mob" ValidChars="0123456789">
                                            </asp:FilteredTextBoxExtender>
                                        </td>
                                    </tr>
                                    <caption>
                                        <br />
                                        <tr>
                                            <td valign="top">
                                                <asp:Label ID="Label18" runat="server" Text=" Permanent Address:"></asp:Label>
                                                <br />
                                                <asp:TextBox ID="txt_permanent_addr" runat="server" CssClass="txt" Height="63px" 
                                                    TextMode="MultiLine"></asp:TextBox>
                                            </td>
                                            <td valign="top">
                                                <asp:Label ID="Label60" runat="server" Text="Country:"></asp:Label>
                                                <br />
                                                <asp:TextBox ID="txt_country" runat="server" CssClass="txt"></asp:TextBox>
                                                <br />
                                                <asp:Label ID="Label12" runat="server" Text="State:"></asp:Label>
                                                <br />
                                                <asp:TextBox ID="txt_state" runat="server" CssClass="txt"></asp:TextBox>
                                                <br />
                                            </td>
                                            <td valign="top">
                                                <asp:Label ID="Label62" runat="server" Text="City:"></asp:Label>
                                                <br />
                                                <asp:TextBox ID="txt_city" runat="server" CssClass="txt"></asp:TextBox>
                                                <br />
                                                <asp:Label ID="Label63" runat="server" Text="Pincode:"></asp:Label>
                                                <br />
                                                <asp:TextBox ID="txt_pincode" runat="server" CssClass="txt" MaxLength="6"></asp:TextBox>
                                                <asp:FilteredTextBoxExtender ID="txt_pincode_FilteredTextBoxExtender" 
                                                    runat="server" Enabled="True" TargetControlID="txt_pincode" 
                                                    ValidChars="0123456789">
                                                </asp:FilteredTextBoxExtender>
                                            </td>
                                        </tr>
                                        <caption>
                                            <br />
                                            <tr>
                                                <td>
                                                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Same Address" 
                                                        oncheckedchanged="CheckBox1_CheckedChanged" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top">
                                                    <asp:Label ID="Label5" runat="server" Text=" Present Address:"></asp:Label>
                                                    <br />
                                                    <asp:TextBox ID="txt_present_addr" runat="server" CssClass="txt" 
                                                        Height="63px" TextMode="MultiLine"></asp:TextBox>
                                                </td>
                                                <td valign="top">
                                                    <asp:Label ID="Label6" runat="server" Text="Country:"></asp:Label>
                                                    <br />
                                                    <asp:TextBox ID="txt_pers_country" runat="server" CssClass="txt"></asp:TextBox>
                                                    <br />
                                                    <asp:Label ID="Label9" runat="server" Text="State:"></asp:Label>
                                                    <br />
                                                    <asp:TextBox ID="txt_pers_state" runat="server" CssClass="txt"></asp:TextBox>
                                                </td>
                                                <td valign="top">
                                                    <asp:Label ID="Label31" runat="server" Text="City:"></asp:Label>
                                                    <br />
                                                    <asp:TextBox ID="txt_pers_city" runat="server" CssClass="txt"></asp:TextBox>
                                                    <br />
                                                    <asp:Label ID="Label32" runat="server" Text="Pincode:"></asp:Label>
                                                    <br />
                                                    <asp:TextBox ID="txt_pers_pincode" runat="server" CssClass="txt" MaxLength="6"></asp:TextBox>
                                                    <asp:FilteredTextBoxExtender ID="txt_pers_pincode_FilteredTextBoxExtender" 
                                                        runat="server" Enabled="True" TargetControlID="txt_pers_pincode" 
                                                        ValidChars="0123456789">
                                                    </asp:FilteredTextBoxExtender>
                                                </td>
                                            </tr>
                                            <tr>
                                                <asp:Panel ID="Panel9" runat="server">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="Label2" runat="server" Text="Guardian Name:"></asp:Label>
                                                                <br />
                                                                <asp:TextBox ID="txt_guadianname" runat="server" CssClass="txt"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label64" runat="server" Text="Guardian Name &amp;  Address:"></asp:Label>
                                                                <asp:TextBox ID="txt_guadian_addrs" runat="server" CssClass="txt" Height="63px" 
                                                                    TextMode="MultiLine"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </tr>
                                        </caption>
                                    </caption>
                                </table>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>

    </td>
    </tr>
     <tr>
    <td align="right" >
        <asp:Label ID="lbl_caste_validation" runat="server" ForeColor="Red" 
            Text="Label" Visible="false"></asp:Label>
        <asp:ImageButton ID="Button4" runat="server" Text="Previous" 
            onclick="pre_2" ImageUrl="~/buttons/previous.png" />
    
    <asp:ImageButton ID="Button5" runat="server" Text="Next" onclick="next_last" 
            ImageUrl="~/buttons/next.png"  />
    </td>
</tr>
    </table>
    </asp:Panel> 
    
</td>
</tr>

 

        <tr>
            <td>
            
                
            </td>
        </tr>
        
        <tr>
        <td>
            <asp:Panel ID="Panel10" runat="server">
            <table>
            <tr>
            <td>
                <asp:Panel ID="Panel6" runat="server">
                    <h4 class="details">
                        Last School Details
                    </h4>
                    <table>
                        <tr>
                            <td>
                                <table>
                                    <tr>
                                        <td class="row style4">
                                            <asp:Label ID="Label33" runat="server" Text="School Name:"></asp:Label>
                                            <br />
                                            <asp:TextBox ID="txt_schoolname" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td class="style4"> 
                                            <asp:Label ID="Label105" runat="server" Text="Standard:"></asp:Label>
                                            <br />
                                            <asp:DropDownList ID="Drp_last_std" runat="server" CssClass="txt">
                                                <asp:ListItem>---Select---</asp:ListItem>
                                                <asp:ListItem Value="U.K.G">U.K.G</asp:ListItem>
                                                <asp:ListItem Value="L.K.G">L.K.G</asp:ListItem>
                                                <asp:ListItem Value="I">I</asp:ListItem>
                                                <asp:ListItem Value="II">II</asp:ListItem>
                                                <asp:ListItem Value="III">III</asp:ListItem>
                                                <asp:ListItem Value="IV">IV</asp:ListItem>
                                                <asp:ListItem Value="V">V</asp:ListItem>
                                                <asp:ListItem Value="VI">VI</asp:ListItem>
                                                <asp:ListItem Value="VII">VII</asp:ListItem>
                                                <asp:ListItem Value="VIII">VIII</asp:ListItem>
                                                <asp:ListItem Value="XI">XI</asp:ListItem>
                                                <asp:ListItem Value="X">X</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="style4">
                                            <asp:Label ID="Label65" runat="server" Text="Year:"></asp:Label>
                                            <br />
                                            <asp:TextBox ID="txt_last_std_year" runat="server" CssClass="txt" MaxLength="4"></asp:TextBox>
                                            <asp:FilteredTextBoxExtender ID="txt_last_std_year_FilteredTextBoxExtender" 
                                                runat="server" Enabled="True" TargetControlID="txt_last_std_year" 
                                                ValidChars="0123456789">
                                            </asp:FilteredTextBoxExtender>
                                        </td>
                                    </tr>
                                    <caption>
                                        <br />
                                        <tr>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <asp:Label ID="Label39" runat="server" Text="Leaving Certificate No:"></asp:Label>
                                                <br />
                                                <asp:TextBox ID="txt_lcno" runat="server" CssClass="txt"></asp:TextBox>
                                            </td>
                                            <td valign="top">
                                                <asp:Label ID="Label40" runat="server" Text="Leaving Certificate Date:"></asp:Label>
                                                <br />
                                                <asp:TextBox ID="txt_lcdate" runat="server" CssClass="txt"></asp:TextBox>
                                                <asp:CalendarExtender ID="CalendarExtender1" runat="server" CssClass="txt" 
                                                    Enabled="True" TargetControlID="txt_lcdate">
                                                </asp:CalendarExtender>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label37" runat="server" Text="Reason:"></asp:Label>
                                                <br />
                                                <asp:TextBox ID="Txt_reason" runat="server" CssClass="txt" TextMode="MultiLine" 
                                                    Width="148px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <asp:Label ID="Label38" runat="server" Text="Allergy:"></asp:Label>
                                                <br />
                                                <asp:TextBox ID="txt_dieses" runat="server" CssClass="txt"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label41" runat="server" Text="Optional Subjects :"></asp:Label>
                                                <br />
                                                <asp:TextBox ID="txt_optionalsubject" runat="server" CssClass="txt" 
                                                    TextMode="MultiLine" Width="148px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label42" runat="server" Text="Languages Studied :"></asp:Label>
                                                <br />
                                                <asp:TextBox ID="txt_language_studied" runat="server" CssClass="txt" 
                                                    TextMode="MultiLine" Width="148px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label43" runat="server" 
                                                    Text="Medium of instruction the Pupil  had taken up in the last school :" 
                                                    Width="163px"></asp:Label>
                                                <br />
                                                <asp:TextBox ID="txt_medium" runat="server" CssClass="txt" TextMode="MultiLine" 
                                                    Width="148px"></asp:TextBox>
                                            </td>
                                            <td colspan="2">
                                                <asp:Label ID="Label34" runat="server" Height="43px" 
                                                    Text="Concessions,Scholarships Of the Year:" Width="161px"></asp:Label>
                                                <br />
                                                <asp:TextBox ID="txt_schallership" runat="server" CssClass="txt" 
                                                    TextMode="MultiLine" Width="148px"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </caption>
                                </table>
                            </td>
                        </tr>
                     <tr>
                        <td align="right" colspan="3">
                            <asp:Label ID="lbl_lastschool_validation" runat="server" ForeColor="Red" 
                                Text="Label"></asp:Label>
                         <asp:ImageButton ID="Button6" runat="server" Text="Previous" onclick="Button6_Click1" ImageUrl="~/buttons/previous.png" />
                           <asp:ImageButton ID="Button7" runat="server" Text="Proceed" onclick="Button7_Click" ImageUrl="~/buttons/proceed.png" />
                        </td>
                     </tr>
                    </table>
                   
                </asp:Panel>
                <br />

                
            </td>
            </tr>
             
            </table>
            </asp:Panel>
        </td>
        </tr>
      <tr>
      <td >
          <asp:Panel ID="Panel7" runat="server">
          <table>
          <tr>
          <td>
         
           <table>

           <tr>
           <td width="380px" valign="top">
             <h4>Personal Details</h4>
           Student Id: <asp:Label ID="lbl_student_id" runat="server" ForeColor="#990000"></asp:Label><br />
	        Name:<asp:Label ID="lbl_firstname" runat="server" ForeColor="#990000"></asp:Label><br />
         Last    Name:<asp:Label ID="lbl_lastname" runat="server" ForeColor="#990000"></asp:Label><br />
	        Standard:   
               <asp:Label ID="lbl_std" runat="server" ForeColor="#990000"></asp:Label><br />
            Gender:  
               <asp:Label ID="lbl_gender" runat="server" ForeColor="#990000"></asp:Label> <br />
	        DOB:<asp:Label ID="lbl_dob" runat="server" ForeColor="#990000"></asp:Label><br />
            Age:<asp:Label ID="lbl_age" runat="server" ForeColor="#990000"></asp:Label><br />
	        Elder Brothers:<asp:Label ID="lbl_elbro" runat="server" ForeColor="#990000"></asp:Label><br />
            Younger Brothers:<asp:Label ID="lbl_yngbro" runat="server" ForeColor="#990000"></asp:Label><br />
	        Elder Sisters:<asp:Label ID="lbl_elsister" runat="server" ForeColor="#990000"></asp:Label><br />
	        Younger Sisters:<asp:Label ID="lbl_yngsister" runat="server" ForeColor="#990000"></asp:Label><br />   
           </td>
            <td valign="top" width="380px"  >
            <h4>Birth Details  </h4>            
            Age:<asp:Label ID="Label49" runat="server" ForeColor="#990000"></asp:Label>                
                <br />   
	            Place Of Birth:<asp:Label ID="lbl_birthplace" runat="server" 
                    ForeColor="#990000"></asp:Label><br />   
	        Village/Town:<asp:Label ID="lbl_village" runat="server" ForeColor="#990000"></asp:Label><br />   
           Taluk:<asp:Label ID="lbl_taulk" runat="server" ForeColor="#990000"></asp:Label><br />   
            District:<asp:Label ID="lbl_dist" runat="server" ForeColor="#990000"></asp:Label><br />   
	          </td>
           </tr>
           <tr>
           <td width="380px" valign="top">         
         <h4>  Parents Details</h4>
            Father's Name:<asp:Label ID="lbl_fathername" runat="server" ForeColor="#990000"></asp:Label><br />   
	        Father's Occupation:<asp:Label ID="lbl_father_ocupation" runat="server" 
                   ForeColor="#990000"></asp:Label><br />   
	        Qualification:<asp:Label ID="lbl_father_qualification" runat="server" 
                   ForeColor="#990000"></asp:Label><br /> 
            Father Contact No:<asp:Label ID="lbl_father_contact" runat="server" 
                   ForeColor="#990000"></asp:Label><br />   
            Mother's Name:<asp:Label ID="lbl_mothername" runat="server" ForeColor="#990000"></asp:Label><br />   
	        Qualification:<asp:Label ID="lbl_mother_qalification" runat="server" 
                   ForeColor="#990000"></asp:Label><br />   
	        Mother's Occupation:<asp:Label ID="lbl_mather_occupation" runat="server" 
                   ForeColor="#990000"></asp:Label><br />   
              
	        Mother Contact No:<asp:Label ID="lbl_mother_contactno" runat="server" 
                   ForeColor="#990000"></asp:Label><br />   
	        Parents Annual Income:<asp:Label ID="lbl_income" runat="server" 
                   ForeColor="#990000"></asp:Label><br />   
            Number Of Dependents:<asp:Label ID="lbl_dependents" runat="server" 
                   ForeColor="#990000"></asp:Label>
               <br />
               Guardian's Name:<asp:Label ID="lbl_guardianname" runat="server" 
                   ForeColor="#990000"></asp:Label>
               <br />
               <br />   
                   </td>
           <td valign="top">
            <h4>Cast Details</h4>
            Mother Tongue:<asp:Label ID="lbl_mother_tongue" runat="server" ForeColor="#990000"></asp:Label><br />   
	        Nationality:<asp:Label ID="lbl_nationality" runat="server" ForeColor="#990000"></asp:Label><br />   
	        Religion:<asp:Label ID="lbl_religon" runat="server" ForeColor="#990000"></asp:Label><br />   
            Caste:<asp:Label ID="lbl_caste" runat="server" ForeColor="#990000"></asp:Label><br />   
	        Scheduled Caste:   <asp:Label ID="lbl_caste_catogiry" runat="server" 
                   ForeColor="#990000"></asp:Label><br />   
	         Other Languages:   <asp:Label ID="lbl_otherlanguage" runat="server" 
                   ForeColor="#990000"></asp:Label><br />         
           </td>
           </tr>
           <tr>
           <td valign="top">
           <h4> Residential Details</h4>
            Pupil Staying With:<asp:Label ID="lbl_stayingwith" runat="server" 
                   ForeColor="#990000"></asp:Label><br />    
	        Contact Phone:<asp:Label ID="lbl_contact_no" runat="server" ForeColor="#990000"></asp:Label><br />    
	        Contact Mobile:<asp:Label ID="lbl_contact_mobile" runat="server" 
                   ForeColor="#990000"></asp:Label><br />    
            Present Address:<asp:Label ID="lbl_present_address" runat="server" 
                   ForeColor="#990000"></asp:Label><br />    
	        Permanent Address:<asp:Label ID="lbl_permenent_address" runat="server" 
                   ForeColor="#990000"></asp:Label><br />    
	        Country:<asp:Label ID="lbl_country" runat="server" ForeColor="#990000"></asp:Label><br />    
            State:<asp:Label ID="lbl_state" runat="server" ForeColor="#990000"></asp:Label><br />    
	        City:<asp:Label ID="lbl_city" runat="server" ForeColor="#990000"></asp:Label><br />    
	        Pincode: <asp:Label ID="lbl_pincode" runat="server" ForeColor="#990000"></asp:Label><br />    
               Guardian&#39;s Address:<asp:Label ID="lbl_guardianaddress" runat="server" 
                   ForeColor="#990000"></asp:Label>
           </td>
           <td>
           <h4> Last School Details</h4>
    School Name: <asp:Label ID="lbl_last_school" runat="server" ForeColor="#990000"></asp:Label>
               <br />
               Std:<asp:Label ID="lbl_last_std" runat="server" ForeColor="#990000"></asp:Label><br />  
	Year: 
               <asp:Label ID="lbl_year" runat="server" ForeColor="#990000"></asp:Label>
               <br />  
    Leaving Certificate No: <asp:Label ID="lbl_lcno" runat="server" ForeColor="#990000"></asp:Label><br />  
	Leaving Certificate Date: <asp:Label ID="lbl_lcdate" runat="server" ForeColor="#990000"></asp:Label><br />  
	Reason: <asp:Label ID="lbl_reason" runat="server" ForeColor="#990000"></asp:Label><br />  
    Allergy: <asp:Label ID="lbl_allergy" runat="server" ForeColor="#990000"></asp:Label><br />  
	Optional Subjects : <asp:Label ID="lbl_optional" runat="server" ForeColor="#990000"></asp:Label><br />  
	Languages Studied : <asp:Label ID="lbl_lanu_studied" runat="server" ForeColor="#990000"></asp:Label><br />  
    Medium of instruction : <asp:Label ID="lbl_last_medium" runat="server" ForeColor="#990000"></asp:Label><br />  
	Concessions,Scholarships Of the Year: <asp:Label ID="lbl_scolership" runat="server" 
                   ForeColor="#990000"></asp:Label><br />  
           </td>
           </tr>
           <tr>
           <td>
               <asp:ImageButton ID="Button8" runat="server" Text="Edit" 
                   ImageUrl="~/buttons/edit.png"  />
           </td>
           </tr>
           </table>
          </td>
          </tr>
          </table>
          </asp:Panel>
      </td>
      </tr>
      <tr>
      <td>
                            <asp:ImageButton ID="btn_save" runat="server"
                                ImageUrl="~/buttons/submit.png" onclick="ImageButton1_Click" />
                        
                            &nbsp;
                            <asp:ImageButton ID="btn_reset" runat="server" 
                                ImageUrl="~/buttons/reset.PNG" onclick="btn_reset_Click" />
                            &nbsp;<asp:Label ID="lbl_result" runat="server"></asp:Label>
                        </td>
                    </tr>
        <tr>
            <td>
                <table>
                    <tr>
                        
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

