<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Student_Serach.aspx.cs" Inherits="studentdetails" %>

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
<h3 class="details">Student Search</h3>
 <table  class="table">
<tr>
<td>
<table>
    <tr>
        <td class="row style4">
            <asp:Label ID="Label68" runat="server" Text="  Student Id/Name"></asp:Label>
            <br />
            <asp:TextBox ID="txtStudent" runat="server" CssClass="txt"></asp:TextBox>
        </td>
        <td class="style4">
            <asp:Label ID="Label69" runat="server" Text="Class"></asp:Label><br />
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
</table>
</td>
</tr>
    <tr>
        <td colspan="3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" DataKeyNames="Student_id" Font-Underline="False" Height="158px" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="750px">
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
        <td colspan="3">
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
                                        <asp:Label ID="Label7" runat="server" Text="Student Id:"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txt_studentid" runat="server" CssClass="txt" Enabled="False"></asp:TextBox>
                                    </td>
                                    <td class="style4">
                                    
                                        <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label><br />
                                        <asp:TextBox ID="txt_name" runat="server" CssClass="txt"></asp:TextBox>
                                    
                                    </td>
                                    <td  class="style4" >
                                     <asp:Label ID="Label104" runat="server" Text=" Last Name:"></asp:Label> <br />
                                        <asp:TextBox ID="txt_lastname" runat="server" CssClass="txt"></asp:TextBox>
                                    </td>

                                    
                                    <td align="center" rowspan="5" valign="middle">
                                        <br />
                                        <asp:Image ID="Image2" runat="server" Height="200px" Width="200px" />
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                <td>
                                            <asp:Label ID="Label30" runat="server" Text="Standard:"></asp:Label>
                                            <br />
                                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="txt">
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
                                   <td >
                                        <asp:Label ID="Label1" runat="server" Text="Gender:"></asp:Label>
                                        <br />
                                        <asp:RadioButtonList ID="radio_gender" runat="server" CssClass="txt" 
                                            RepeatDirection="Horizontal">
                                            <asp:ListItem Text="male" Value="male">male</asp:ListItem>
                                            <asp:ListItem Text="female" Value="female">female</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td> 
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text="Dob:"></asp:Label><br />
                                        <asp:TextBox ID="txt_dob" runat="server" CssClass="txt"></asp:TextBox>
                                        <asp:CalendarExtender ID="txt_dob_CalendarExtender" runat="server" 
                                            Enabled="True" TargetControlID="txt_dob">
                                        </asp:CalendarExtender>
                                    </td>
                                </tr>
                                <tr>
                                                    <td class="style4">
                            <asp:Label ID="Label31" runat="server" Text="Age:"></asp:Label><br />
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="txt" Width="60px" 
                                ReadOnly="True"></asp:TextBox>
                        </td>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Text="Elder Brothers:"></asp:Label><br />
                                        <asp:TextBox ID="txt_el_bro" runat="server" CssClass="txt"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label14" runat="server" Text="Younger Brothers:"></asp:Label><br />
                                        <asp:TextBox ID="txt_yun_bro" runat="server" CssClass="txt"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label10" runat="server" Text="Elder Sisters:"></asp:Label><br />
                                        <asp:TextBox ID="txt_el_sis" runat="server" Height="20px" CssClass="txt"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label13" runat="server" Text="Younger Sisters:"></asp:Label><br />
                                        <asp:TextBox ID="txt_yun_sis" runat="server" CssClass="txt"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
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
        <td  colspan="3">
            <asp:Panel ID="Panel2" runat="server">
                <h4 class="details">
                    Birth Details
                </h4>
                <table>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td class="row style4">
                                        <asp:Label ID="Label11" runat="server" Text="Place Of Birth:"></asp:Label><br />
                                        <asp:TextBox ID="txt_birthplace" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="style4">
                                        Town/<asp:Label ID="Label5" runat="server" Text="Village:"></asp:Label><br />
                                        <asp:TextBox ID="txt_village" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text="Taluk:"></asp:Label><br />
                                        <asp:TextBox ID="txt_taulk" runat="server" CssClass="txt"></asp:TextBox>
                                    </td>
                                     <td>
                                        <asp:Label ID="Label12" runat="server" Text="District:"></asp:Label><br />
                                        <asp:TextBox ID="txt_district" runat="server" CssClass="txt"></asp:TextBox>
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
        <td  colspan="3">
            <asp:Panel ID="Panel3" runat="server">
                <h4 class="details">
                    Parents Details
                </h4>
                <table>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td class="row style4">
                                        <asp:Label ID="Label15" runat="server" Text="Father's Name:"></asp:Label><br />
                                        <asp:TextBox ID="txt_fathername" runat="server" CssClass="txt"></asp:TextBox>
                                    </td>
                                    <td class="style4">
                                        <asp:Label ID="Label54" runat="server" Text="Qualification:"></asp:Label><br />
                                        <asp:TextBox ID="txt_father_qualification" runat="server" CssClass="txt"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label55" runat="server" Text="Father's Occupation:"></asp:Label><br />
                                        <asp:TextBox ID="txt_father_occupation" runat="server" CssClass="txt"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label17" runat="server" Text="Mother's Name:"></asp:Label><br />
                                        <asp:TextBox ID="txt_mothername" runat="server" CssClass="txt"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label53" runat="server" Text="Qualification:"></asp:Label><br />
                                        <asp:TextBox ID="txt_mother_quali" runat="server"></asp:TextBox>
                                    </td>
                               
                                    
                                    <td>
                                        <asp:Label ID="Label56" runat="server" Text="Mother's Occupation:"></asp:Label><br />
                                        <asp:TextBox ID="txt_mother_occupation" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label20" runat="server" Text="Father Contact No:"></asp:Label><br />
                                        <asp:TextBox ID="txt_father_no" runat="server" CssClass="txt"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label57" runat="server" Text="Mother Contact No:"></asp:Label><br />
                                        <asp:TextBox ID="txt_mother_no" runat="server"></asp:TextBox>
                                    </td>
                                
                               
                                    <td>
                                        <asp:Label ID="Label21" runat="server" Text="Parents Annual Income:"></asp:Label><br />
                                        <asp:TextBox ID="txt_income" runat="server" CssClass="txt"></asp:TextBox>
                                    </td>
                                    </tr>
                                    <tr>
                                    <td>
                                        <asp:Label ID="Label22" runat="server" Text="Number Of Dependents:"></asp:Label><br />
                                        <asp:TextBox ID="txt_noofdepend" runat="server" CssClass="txt"></asp:TextBox>
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
        <td colspan="3">
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
                                        <asp:Label ID="Label26" runat="server" Text="Mother Tongue:"></asp:Label><br />
                                        <asp:TextBox ID="txt_mother_taungue" runat="server" CssClass="txt"></asp:TextBox>
                                    </td>
                                    <td class="style4">

                                        <asp:Label ID="Label23" runat="server" Text="Nationality:"></asp:Label><br />
                                        <asp:TextBox ID="txt_natioality" runat="server" CssClass="txt"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label24" runat="server" Text="Religion:"></asp:Label><br />
                                        <asp:TextBox ID="txt_religion" runat="server" CssClass="txt"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label25" runat="server" Text="Caste:"></asp:Label><br />
                                        <asp:TextBox ID="txt_caste" runat="server" CssClass="txt"></asp:TextBox>
                                    </td>
                                   
                               
                                    <td>
                                        <asp:Label ID="Label27" runat="server" Text="Scheduled Caste:"></asp:Label><br />
                                        <asp:RadioButtonList ID="rado_caste" runat="server" 
                                            RepeatDirection="Horizontal" CssClass="txt">
                                            <asp:ListItem>SC</asp:ListItem>
                                            <asp:ListItem>ST</asp:ListItem>
                                            <asp:ListItem>OBC</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label28" runat="server" Text="Any Other Languages Spoken:"></asp:Label><br />
                                        <asp:TextBox ID="txt_language_spoken" runat="server" CssClass="txt"></asp:TextBox>
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
        <td  colspan="3">
            <asp:Panel ID="Panel5" runat="server">
                <h4 class="details">
                    Residential Details
                </h4>
                <table>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                <td class="row style4" >
                                        <asp:Label ID="Label16" runat="server" Text="Pupil Staying With:"></asp:Label><br />
                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt">
                                            <asp:ListItem>Parent&#39;s</asp:ListItem>
                                            <asp:ListItem>Guardian</asp:ListItem>
                                            <asp:ListItem>Paying Hotel</asp:ListItem>
                                            <asp:ListItem>Rented Room</asp:ListItem>
                                            <asp:ListItem>Free Boarding</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="style4" >
                                        <asp:Label ID="Label29" runat="server" Text="Contact Phone:"></asp:Label><br />
                                        <asp:TextBox ID="txt_phone" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label59" runat="server" Text="Contact Mobile:"></asp:Label><br />
                                        <asp:TextBox ID="txt_mob" runat="server" CssClass="txt"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    
                                    <td>
                                        <asp:Label ID="Label18" runat="server" Text="Present Address:"></asp:Label><br />
                                        <asp:TextBox ID="txt_present_adrr" runat="server" Height="63px" 
                                            TextMode="MultiLine" CssClass="txt"></asp:TextBox>
                                    </td>
                                      <td valign="top">
                                                <asp:Label ID="Label4" runat="server" Text="Country:"></asp:Label>
                                                <br />
                                                <asp:TextBox ID="txt_country" runat="server" CssClass="txt"></asp:TextBox>
                                                <br />
                                                <asp:Label ID="Label9" runat="server" Text="State:"></asp:Label>
                                                <br />
                                                <asp:TextBox ID="state" runat="server" CssClass="txt"></asp:TextBox>
                                                <br />
                                            </td>
                                            <td valign="top">
                                                <asp:Label ID="Label35" runat="server" Text="City:"></asp:Label>
                                                <br />
                                                <asp:TextBox ID="txt_city" runat="server" CssClass="txt"></asp:TextBox>
                                                <br />
                                                <asp:Label ID="Label36" runat="server" Text="Pincode:"></asp:Label>
                                                <br />
                                                <asp:TextBox ID="txt_pincode" runat="server" CssClass="txt" MaxLength="6"></asp:TextBox>
                                                <asp:FilteredTextBoxExtender ID="txt_pincode_FilteredTextBoxExtender" 
                                                    runat="server" Enabled="True" TargetControlID="txt_pincode" 
                                                    ValidChars="0123456789">
                                                </asp:FilteredTextBoxExtender>
                                            </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label58" runat="server" Text="Permanent Address:"></asp:Label><br />
                                        <asp:TextBox ID="txt_permanent_addr" runat="server" TextMode="MultiLine" 
                                            Height="63px" CssClass="txt"></asp:TextBox>
                                        <br />
                                       
                                    </td>
                                      <td valign="top">
                                                    <asp:Label ID="Label44" runat="server" Text="Country:"></asp:Label>
                                                    <br />
                                                    <asp:TextBox ID="txt_pers_country" runat="server" CssClass="txt"></asp:TextBox>
                                                    <br />
                                                    <asp:Label ID="Label48" runat="server" Text="State:"></asp:Label>
                                                    <br />
                                                    <asp:TextBox ID="txt_pers_state" runat="server" CssClass="txt"></asp:TextBox>
                                                </td>
                                                <td valign="top">
                                                    <asp:Label ID="Label49" runat="server" Text="City:"></asp:Label>
                                                    <br />
                                                    <asp:TextBox ID="txt_pers_city" runat="server" CssClass="txt"></asp:TextBox>
                                                    <br />
                                                    <asp:Label ID="Label50" runat="server" Text="Pincode:"></asp:Label>
                                                    <br />
                                                    <asp:TextBox ID="txt_pers_pincode" runat="server" CssClass="txt" MaxLength="6"></asp:TextBox>
                                                    <asp:FilteredTextBoxExtender ID="txt_pers_pincode_FilteredTextBoxExtender" 
                                                        runat="server" Enabled="True" TargetControlID="txt_pers_pincode" 
                                                        ValidChars="0123456789">
                                                    </asp:FilteredTextBoxExtender>
                                                </td>
                                    <asp:Panel ID="Panel9" runat="server">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="Label32" runat="server" Text="Guardian Name:"></asp:Label>
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
                            </table>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td  colspan="3">
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
                                        <asp:Label ID="Label33" runat="server" Text="School Name:"></asp:Label><br />
                                        <asp:TextBox ID="txt_schoolname" runat="server" CssClass="txt"></asp:TextBox>
                                    </td>
                                    <td class="style4">
                                        <asp:Label ID="Label19" runat="server" Text="Standard:"></asp:Label><br />
                                        <asp:DropDownList ID="drp_last_std" runat="server" CssClass="txt">
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
                                
                                    <td>
                                        <asp:Label ID="Label65" runat="server" Text="Year:"></asp:Label><br />
                                        <asp:TextBox ID="txt_standard_with_year0" runat="server" CssClass="txt"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top">
                                        <asp:Label ID="Label39" runat="server" Text="Leaving Certificate No:"></asp:Label><br />
                                        <asp:TextBox ID="txt_lcno" runat="server"></asp:TextBox>
                                    </td>
                                    <td valign="top">
                                        <asp:Label ID="Label40" runat="server" Text="Leaving Certificate Date:"></asp:Label><br />
                                        <asp:TextBox ID="txt_lcdate" runat="server" CssClass="txt"></asp:TextBox><br />
                                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" Enabled="True" 
                                            TargetControlID="txt_lcdate">
                                        </asp:CalendarExtender>
                                    </td>
                                     <td>
                                        <asp:Label ID="Label37" runat="server" Text="Reason:"></asp:Label><br />
                                        <asp:TextBox ID="Txt_reason" runat="server" TextMode="MultiLine" Width="148px" 
                                             CssClass="txt"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                   
                                    <td valign="top">
                                        <asp:Label ID="Label38" runat="server" Text="Allergy:"></asp:Label><br />
                                        <asp:TextBox ID="txt_dieses" runat="server" CssClass="txt"></asp:TextBox>
                                    </td>
                                     <td>
                                                    <asp:Label ID="Label41" runat="server" Text="Optional Subjects :"></asp:Label><br />
                                                    <asp:TextBox ID="txt_optionalsubject" runat="server" TextMode="MultiLine" 
                                                        Width="148px" CssClass="txt"></asp:TextBox>
                                                </td>
                                                 <td>
                                                        <asp:Label ID="Label42" runat="server" Text="Languages Studied :"></asp:Label><br />
                                                   
                                                        <asp:TextBox ID="txt_language" runat="server" TextMode="MultiLine" 
                                                            Width="148px" CssClass="txt"></asp:TextBox>
                                                    </td>
                                </tr>
                                <tr>
                                   
                                    <td valign="top">
                                        <asp:Label ID="Label34" runat="server" 
                                            Text="Concessions,Scholarships Of the Year:" Width="148px"></asp:Label><br />
                                        <asp:TextBox ID="txt_schallership" runat="server" TextMode="MultiLine" 
                                            Width="148px" CssClass="txt"></asp:TextBox>
                                    </td>
                                   
                                        <td>
                                            <asp:Label ID="Label43" runat="server" 
                                                Text="Medium of instruction the Pupil had taken up in the last school :" 
                                                Width="148px"></asp:Label><br />
                                            <asp:TextBox ID="txt_medium" runat="server" TextMode="MultiLine" Width="148px" 
                                                CssClass="txt"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                        </td>
                                    </tr>
                                </tr>
                            </table>
                     </asp:Panel>
        </td>
    </tr>
    <tr>
        <td  colspan="3">
            <asp:PlaceHolder ID="phAdmissions" runat="server" Visible="false">
                <asp:Panel ID="Panel7" runat="server">
                    <h4 class="details">
                        Admission Details
                    </h4>
                    <table>
                        <tr>
                            <td>
                                <table>
                                    <tr>
                                        <td class="row">
                                            <asp:Label ID="Label45" runat="server" Text="Standard:"></asp:Label>
                                            <asp:DropDownList ID="drp_std" runat="server">
                                                <asp:ListItem>---Select---</asp:ListItem>
                                                <asp:ListItem Value="U.K.G">L.K.G</asp:ListItem>
                                                <asp:ListItem Value="L.K.G">U.K.G</asp:ListItem>
                                                <asp:ListItem Value="I">II</asp:ListItem>
                                                <asp:ListItem Value="II">I</asp:ListItem>
                                                <asp:ListItem Value="III">IV</asp:ListItem>
                                                <asp:ListItem Value="IV">III</asp:ListItem>
                                                <asp:ListItem Value="V">VI</asp:ListItem>
                                                <asp:ListItem Value="VI">V</asp:ListItem>
                                                <asp:ListItem Value="VII">VIII</asp:ListItem>
                                                <asp:ListItem Value="VIII">VII</asp:ListItem>
                                                <asp:ListItem Value="XI">X</asp:ListItem>
                                                <asp:ListItem Value="X">XI</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label46" runat="server" Text="Admitted Medium"></asp:Label>
                                            <asp:TextBox ID="txt_admitted_medium" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label47" runat="server" Text="Date of Admission:"></asp:Label>
                                            <asp:TextBox ID="txt_dateofadmiossion" runat="server"></asp:TextBox>
                                            <asp:CalendarExtender ID="txt_dateofadmiossion_CalendarExtender" runat="server" 
                                                Enabled="True" TargetControlID="txt_dateofadmiossion">
                                            </asp:CalendarExtender>
                                        </td>
                                        <%--<td>
    <asp:Label ID="Label48" runat="server" Text="Location" ></asp:Label>
    <asp:TextBox ID="txt_station1" runat="server" Visible="false"></asp:TextBox>
    </td>--%>
                                        <td>
                                            <asp:Label ID="Label66" runat="server" Text="Batch:"></asp:Label>
                                            <asp:TextBox ID="txt_batchstart" runat="server" Height="22px" 
                                                style="margin-bottom: 0px" Width="70px"></asp:TextBox>
                                            &nbsp;&nbsp;
                                            <asp:CalendarExtender ID="txt_batchstart_CalendarExtender" runat="server" 
                                                Enabled="True" TargetControlID="txt_batchstart">
                                            </asp:CalendarExtender>
                                            <asp:Label ID="Label67" runat="server" Font-Bold="True" Text="-"></asp:Label>
                                            &nbsp;&nbsp;
                                            <asp:TextBox ID="txt_batchend" runat="server" style="margin-bottom: 0px" 
                                                Width="70px"></asp:TextBox>
                                            <asp:CalendarExtender ID="txt_batchend_CalendarExtender" runat="server" 
                                                Enabled="True" TargetControlID="txt_batchend">
                                            </asp:CalendarExtender>
                                        </td>
                                    </tr>
                                    <tr>
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
            </asp:PlaceHolder>
        </td>
    </tr>
    <tr>
       
                    <td class="row style4" colspan="3">
                        <asp:ImageButton ID="ImageButton4" runat="server" 
                            ImageUrl="~/buttons/update.png" onclick="ImageButton4_Click" />
                            <asp:ImageButton ID="ImageButton5" runat="server" 
                            ImageUrl="~/buttons/cancel.png" onclick="ImageButton5_Click" />
                            <asp:Label ID="lbl_result" runat="server"></asp:Label>
                    </td>
                    
           
    </tr>
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

