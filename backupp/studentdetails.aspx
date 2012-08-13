<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="studentdetails.aspx.cs" Inherits="studentdetails" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <script src="jquery.js" type="text/javascript"></script>
    <link href="menu.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <div>
    <div id="menu">
    <ul class="menu">
        <li><a href="#" class="parent"><span>Student </span></a>
              <div><ul>

                <li><a href="student.aspx" class="parent"><span>Search</span></a>                
                </li>
                <li><a href="newstudents.aspx"><span>New</span></a></li>
                     <li><a href="updatestudent.aspx"><span>Update</span></a></li>
                    <li><a href="feestudent.aspx"><span>Fee</span></a></li>
            </ul>
            </div>
        </li>
        <li><a href="#" class="parent"><span>Staff</span></a>
             <div><ul>

              
                <li><a href="staffsearch.aspx"><span>Search</span></a></li>
                <li><a href="staffnew.aspx"><span>New</span></a></li>
                <li><a href="staffupdate.aspx"><span>Update</span></a></li>
             
            </ul>
            </div>
        </li>
        <li><a href="#"><span>Fee </span></a></li>
           <li><a href="#" class="parent"><span>Admin</span></a>&nbsp;
        <div>
        <ul>
        <li><a href="adminlogin.aspx"><span> Create Login User</span></a></li>
                <li><a href="addedit fee.aspx"><span>Add/Edit Fee Structure</span></a></li>
                <li><a href="add class.aspx"><span>Add/update Class</span></a></li>
        </ul>
        </div>
        </li>
        <li class="last"><a href="#"><span>Report</span></a></li>
    </ul>
    </div>
    <div>
    <table id="members">
<tr>
<td>
<h3 class="details">New Student</h3>
 <table width="950px" border="2px" class="table">
<tr style="width:650px">
<td>
 <asp:CheckBox ID="CheckBox1" runat="server" Text="Personal Details " 
        oncheckedchanged="CheckBox1_CheckedChanged" AutoPostBack="True" />

   
    <asp:Panel ID="Panel1" runat="server">
    <h4 class="details">Personal Details </h4>
    <table>
<tr>
<td >
<table>
<tr>
<td class="row">
  <asp:Label ID="Label7" runat="server" Text="Student Id::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_studentid" runat="server"></asp:TextBox>
</td>
<td class="row">
  <asp:Label ID="Label1" runat="server" Text="Gender::" Width="150px"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButtonList ID="radio_gender" runat="server" 
        RepeatDirection="Horizontal">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:RadioButtonList>
</td> 
<td rowspan="2">
    <asp:Image ID="Image2" runat="server" />
    </td>
</tr>
<tr>
<td>
  <asp:Label ID="Label2" runat="server" Text="Name::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
</td>
<td>
  <asp:Label ID="Label3" runat="server" Text="Dob::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_dob" runat="server"></asp:TextBox>
    <asp:CalendarExtender ID="txt_dob_CalendarExtender" runat="server" 
        Enabled="True" TargetControlID="txt_dob">
    </asp:CalendarExtender>
</td>
</tr>
<tr>
<td>
  <asp:Label ID="Label8" runat="server" Text="Elder Brothers::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_el_bro" runat="server"></asp:TextBox>
</td>
<td>
  <asp:Label ID="Label14" runat="server" Text="Younger Brothers::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_yun_bro" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td>
  <asp:Label ID="Label10" runat="server" Text="Elder Sisters::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_el_sis" runat="server"></asp:TextBox>
</td>
<td>
  <asp:Label ID="Label13" runat="server" Text="Younger Sisters::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_yun_sis" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td colspan="2" align="center">
 <asp:Label ID="Label44" runat="server" Text="Image Upload::" Width="150px"></asp:Label>
    <asp:FileUpload ID="Image_upload" runat="server" />
</td>
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
    <asp:CheckBox ID="CheckBox2" runat="server" Text="Birth Details" 
        AutoPostBack="True" oncheckedchanged="CheckBox2_CheckedChanged" />
    <asp:Panel ID="Panel2" runat="server">
    <h4 class="details">Birth Details </h4>
    <table>
    <tr>    
    <td>
    <table>
    <tr>
    <td class="row">
  <asp:Label ID="Label11" runat="server" Text="Place Of Birth::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_birthplace" runat="server"></asp:TextBox>
    </td>
    <td>
  <asp:Label ID="Label5" runat="server" Text="Village::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_village" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
  <asp:Label ID="Label6" runat="server" Text="Taluk::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_taulk" runat="server"></asp:TextBox>
    </td>
    <td>
  <asp:Label ID="Label9" runat="server" Text="Town::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_town" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
  <asp:Label ID="Label12" runat="server" Text="District::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_district" runat="server"></asp:TextBox>
    </td>
    <td>
  <asp:Label ID="Label4" runat="server" Text="Age::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_age" runat="server"></asp:TextBox>
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
<td >
    <asp:CheckBox ID="CheckBox3" runat="server" Text="Parents Details" 
        AutoPostBack="True" oncheckedchanged="CheckBox3_CheckedChanged" />

    <asp:Panel ID="Panel3" runat="server">
    <h4 class="details">Parents Details </h4>
    <table>
    <tr>    
    <td  >
    <table>
    <tr>
    <td class="row">
  <asp:Label ID="Label15" runat="server" Text="Father's Name::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_fathername" runat="server"></asp:TextBox>
    </td>
    <td>
        <asp:Label ID="Label17" runat="server" Text="Mother's Name::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_mothername" runat="server"></asp:TextBox>
    </td>
    </tr>
      <tr>
    <td class="row">
        <asp:Label ID="Label54" runat="server" Text="Qualification::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_father_qualification" runat="server"></asp:TextBox>
    </td>
    <td>
  <asp:Label ID="Label53" runat="server" Text="Qualification::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_mother_quali" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label55" runat="server" Text="Father's Occupation::" 
            Width="150px"></asp:Label>
    <asp:TextBox ID="txt_father_occupation" runat="server"></asp:TextBox>
    </td>
    <td>
        <asp:Label ID="Label56" runat="server" Text="Mother's Occupation::" 
            Width="150px"></asp:Label>
    <asp:TextBox ID="txt_mother_occupation" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label20" runat="server" Text="Father Contact No::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_father_no" runat="server"></asp:TextBox>
    </td>
    <td>
        <asp:Label ID="Label57" runat="server" Text="Mother Contact No::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_mother_no" runat="server"></asp:TextBox>
</td>
    </tr>
    <tr>
    <td>
  <asp:Label ID="Label21" runat="server" Text="Parents Annual Income::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_income" runat="server"></asp:TextBox>
    </td>
    <td>
  <asp:Label ID="Label22" runat="server" Text="Number Of Dependents::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_noofdepend" runat="server"></asp:TextBox>
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
<td >
    <asp:CheckBox ID="CheckBox4" runat="server" Text="Cast Details" 
        AutoPostBack="True" oncheckedchanged="CheckBox4_CheckedChanged"/>

    <asp:Panel ID="Panel4" runat="server">
    <h4 class="details">Cast Details </h4>
    <table>
    <tr>    
    <td>
    <table>
    <tr>
    <td  class="row" >
  <asp:Label ID="Label23" runat="server" Text="Nationality::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_natioality" runat="server"></asp:TextBox>
    </td>
    <td>
  <asp:Label ID="Label24" runat="server" Text="Religion::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_religion" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
  <asp:Label ID="Label25" runat="server" Text="Caste::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_caste" runat="server"></asp:TextBox>
    </td>
    <td>
  <asp:Label ID="Label26" runat="server" Text="Mother Tongue::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_mother_taungue" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
  <asp:Label ID="Label27" runat="server" Text="Scheduled Caste::" Width="150px"></asp:Label>
        <asp:RadioButtonList ID="rado_caste" runat="server" 
            RepeatDirection="Horizontal">
            <asp:ListItem>SC</asp:ListItem>
            <asp:ListItem>ST</asp:ListItem>
            <asp:ListItem>OBC</asp:ListItem>
        </asp:RadioButtonList>
    </td>
    <td>
  <asp:Label ID="Label28" runat="server" Text="Any Other Languages Spoken::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_language_spoken" runat="server"></asp:TextBox>
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
<td >
    <asp:CheckBox ID="CheckBox5" runat="server" Text="Residential Details" 
        AutoPostBack="True" oncheckedchanged="CheckBox6_CheckedChanged"/>

    <asp:Panel ID="Panel5" runat="server">
    <h4 class="details">Residential Details </h4>
    <table>
    <tr>    
    <td >
    <table>
    <tr>
    <td class="row" >
  <asp:Label ID="Label29" runat="server" Text="Contact Phone::" Width="150px"></asp:Label>
        <asp:TextBox ID="txt_phone" runat="server"></asp:TextBox>
    </td>
    <td>
        <asp:Label ID="Label59" runat="server" Text="Contact Mobile::" Width="150px"></asp:Label>
        <asp:TextBox ID="txt_mob" runat="server"></asp:TextBox>
    </td>
    </tr>
        <tr>
    <td class="row" >
  <asp:Label ID="Label16" runat="server" Text="Pupil Staying With::" Width="150px"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Parent&#39;s</asp:ListItem>
            <asp:ListItem>Guardian</asp:ListItem>
            <asp:ListItem>Paying Hotel</asp:ListItem>
            <asp:ListItem>Rented Room</asp:ListItem>
            <asp:ListItem>Free Boarding</asp:ListItem>
        </asp:DropDownList>
    </td>
    <td>
        <asp:Label ID="Label18" runat="server" Text="Present Address::" Width="150px"></asp:Label>
        <asp:TextBox ID="txt_present_adrr" runat="server" Height="63px" 
            TextMode="MultiLine"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label58" runat="server" Text="Permanent Address::" Width="150px"></asp:Label>
        <asp:TextBox ID="txt_permanent_addr" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Label ID="Label60" runat="server" Text="Country::" Width="150px"></asp:Label>
        <asp:TextBox ID="txt_country" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label61" runat="server" Text="State::" Width="150px"></asp:Label>
        <asp:TextBox ID="state" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label62" runat="server" Text="City::" Width="150px"></asp:Label>
        <asp:TextBox ID="txt_city" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label63" runat="server" Text="Pincode::" Width="150px"></asp:Label>
        <asp:TextBox ID="txt_pincode" runat="server"></asp:TextBox>
        <br />
    </td>
    <td>
        <asp:Label ID="Label64" runat="server" Text="Guardian Name::" Width="150px"></asp:Label>
        <asp:TextBox ID="txt_guadianname" runat="server"></asp:TextBox>
        <br />
  <asp:Label ID="Label32" runat="server" Text="Guardian's Address::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_guadian_addrs" runat="server" TextMode="MultiLine" 
            Height="69px"></asp:TextBox>
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
<td >
    <asp:CheckBox ID="CheckBox6" runat="server"  Text="Last School Details " 
        AutoPostBack="True" oncheckedchanged="CheckBox6_CheckedChanged1"/>
    <asp:Panel ID="Panel6" runat="server">
    <h4 class="details">Last School Details </h4>
    <table>
    <tr>    
    <td  >
    <table>
    <tr>
    <td class="row">
  <asp:Label ID="Label33" runat="server" Text="School Name::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_schoolname" runat="server"></asp:TextBox>
    </td>
    <td>
    <asp:Label ID="Label19" runat="server" Text="Standard::" Width="150px"></asp:Label>
  
        <asp:DropDownList ID="drp_last_std" runat="server">
            <asp:ListItem>---Select---</asp:ListItem>
            <asp:ListItem Value="1">U.K.G</asp:ListItem>
            <asp:ListItem Value="1">L.K.G</asp:ListItem>
            <asp:ListItem Value="1">I</asp:ListItem>
            <asp:ListItem Value="1">II</asp:ListItem>
            <asp:ListItem Value="1">III</asp:ListItem>
            <asp:ListItem Value="1">IV</asp:ListItem>
            <asp:ListItem Value="1">V</asp:ListItem>
            <asp:ListItem Value="1">VI</asp:ListItem>
            <asp:ListItem Value="1">VII</asp:ListItem>
            <asp:ListItem Value="1">VIII</asp:ListItem>
            <asp:ListItem Value="1">XI</asp:ListItem>
            <asp:ListItem Value="1">X</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td>
        &nbsp;</td>
    <td>
        <asp:Label ID="Label65" runat="server" Text="Year::" Width="150px"></asp:Label>
        <asp:TextBox ID="txt_standard_with_year0" runat="server"></asp:TextBox>
    </td>
    </tr>
        <tr>
            <td>
                <asp:Label ID="Label39" runat="server" Text="Leaving Certificate No::" 
                    Width="150px"></asp:Label>
                <asp:TextBox ID="txt_lcno" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label40" runat="server" Text="Leaving Certificate Date::" 
                    Width="150px"></asp:Label>
                <asp:TextBox ID="txt_lcdate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label37" runat="server" Text="Reason::" Width="150px"></asp:Label>
                <asp:TextBox ID="Txt_reason" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label38" runat="server" Text="Allergy::" Width="150px"></asp:Label>
                <asp:TextBox ID="txt_dieses" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label41" runat="server" Text="Optional Subjects ::" 
                                Width="150px"></asp:Label>
                            <asp:TextBox ID="txt_optionalsubject" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
            <td colspan="2">
                <asp:Label ID="Label34" runat="server" 
                    Text="Concessions,Scholarships Of the Year::" Width="150px"></asp:Label>
                <asp:TextBox ID="txt_schallership" runat="server" TextMode="MultiLine" 
                    Width="175px"></asp:TextBox>
            </td>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label42" runat="server" Text="Languages Studied ::" 
                                    Width="150px"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txt_language" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <asp:Label ID="Label43" runat="server" 
                        Text="Medium of instruction the Pupil had taken up in the last school ::" 
                        Width="150px"></asp:Label>
                    <asp:TextBox ID="txt_medium" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                </td>
            </tr>
        </tr>
    </tr>
 
    </table>
        </td>
        </tr>
        </table>
    </asp:Panel>
</td>
</tr>
<tr>
<td >
    <asp:CheckBox ID="CheckBox7" runat="server" Text="Admission Details " 
        AutoPostBack="True" oncheckedchanged="CheckBox7_CheckedChanged" />

        <asp:Panel ID="Panel7" runat="server">
    <h4 class="details">Admission Details </h4>
    <table>
    <tr>    
    <td  >
    <table>
    <tr>
    <td class="row">
  <asp:Label ID="Label45" runat="server" Text="Standard::" Width="150px"></asp:Label>
        <asp:DropDownList ID="drp_std" runat="server">
            <asp:ListItem>---Select---</asp:ListItem>
            <asp:ListItem Value="1">U.K.G</asp:ListItem>
            <asp:ListItem Value="1">L.K.G</asp:ListItem>
            <asp:ListItem Value="1">I</asp:ListItem>
            <asp:ListItem Value="1">II</asp:ListItem>
            <asp:ListItem Value="1">III</asp:ListItem>
            <asp:ListItem Value="1">IV</asp:ListItem>
            <asp:ListItem Value="1">V</asp:ListItem>
            <asp:ListItem Value="1">VI</asp:ListItem>
            <asp:ListItem Value="1">VII</asp:ListItem>
            <asp:ListItem Value="1">VIII</asp:ListItem>
            <asp:ListItem Value="1">XI</asp:ListItem>
            <asp:ListItem Value="1">X</asp:ListItem>
        </asp:DropDownList>
    </td>
    <td>
  <asp:Label ID="Label46" runat="server" Text="Admitted Medium" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_admitted_medium" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
  <asp:Label ID="Label47" runat="server" Text="Date of Admission::" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_dateofadmiossion" runat="server"></asp:TextBox>
        <asp:CalendarExtender ID="txt_dateofadmiossion_CalendarExtender" runat="server" 
            Enabled="True" TargetControlID="txt_dateofadmiossion">
        </asp:CalendarExtender>
    </td>
    <td>
  <asp:Label ID="Label48" runat="server" Text="Location" Width="150px"></asp:Label>
    <asp:TextBox ID="txt_station1" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
        <asp:TextBox ID="TextBox3"     <asp:TextBox ID="TextBox44" runat="server"></asp:TextBox>
   
    <td>
        &nbsp;</td>
    </tr>
    <tr>
    <td>
        &nbsp;</td>
   
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
<table>
<tr>
<td>
  <asp:ImageButton ID="btn_save" runat="server" ImageUrl="~/images/submit.png" 
        CssClass="btn" onclick="ImageButton1_Click" />
</td>
<td>
    &nbsp;
   <asp:ImageButton ID="btn_reset" runat="server" ImageUrl="~/images/reset.png" 
        CssClass="btn" />
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

