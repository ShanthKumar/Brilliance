<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feestructure.aspx.cs" Inherits="feestructure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="menu.css" rel="stylesheet" type="text/css" />
    
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <script src="menu.js" type="text/javascript"></script>
    <script src="jquery.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
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
<div>
<table id="members">

<tr>
<td>
 <h3 class="details">New Students</h3>
    <table width="950px" border="2px" class="table">
         
         
         <tr>
         <td>
             <asp:Panel ID="Panel1" runat="server">
             <table>
             <asp:Label ID="Label24" runat="server" 
                 CssClass="details" ></asp:Label>
      <tr>
            
         <td class="row">
        <asp:Label ID="Label25" runat="server" Text="Student Id::" Width="150px"></asp:Label>
             <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
         </td>
         <td>
          <asp:Label ID="Label26" runat="server" Text="Name::" Width="150px" ></asp:Label>
             <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="a" 
                ></asp:TextBox>
            
         </td>
         </tr>
         <tr>
            
         <td class="row">
        <asp:Label ID="Label1" runat="server" Text="Class::" Width="150px"></asp:Label>
           <asp:DropDownList ID="DropDownList2" runat="server">
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
         </table>
             </asp:Panel>
             <asp:Panel ID="Panel2" runat="server">
             <table>
           <asp:Label ID="Label41" runat="server" Text="Admission Fee " ></asp:Label>
           <tr>
            <td class="row">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal" Width="327px">
                    <asp:ListItem>New Admission</asp:ListItem>
                    <asp:ListItem>Re-Admission</asp:ListItem>
                </asp:RadioButtonList>
         </td>
         </tr>
         <tr>
            <td class="row">
           <asp:Label ID="Label19" runat="server" Text="Application Form::" Width="150px"></asp:Label>
             <asp:TextBox ID="TextBox18" runat="server" ValidationGroup="a"></asp:TextBox>
                
              
         </td>
         
      
         
         </tr>
         <tr>
            <td class="row">
      
                <asp:CheckBox ID="CheckBox1" runat="server"  Text="Discount::" />
               
         </td>
         
         </tr>
         <tr>
            <td colspan="2">
                <asp:Panel ID="Panel3" runat="server">
                <table>
                    <tr>
                            <td class="row">
                                <asp:Label ID="Label2" runat="server" Text="Amount::" Width="150px"></asp:Label>
                                <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="a"></asp:TextBox>
                            </td>
                            <td class="row">
                                <asp:Label ID="Label3" runat="server" Text="Reason::" Width="150px"></asp:Label>
                                <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="a"></asp:TextBox>
                            </td>
                        </tr>
                   
                    </tr>
                <tr>
                  <td class="row">
           <asp:Label ID="Label4" runat="server" Text="Reason::" Width="150px"></asp:Label>
                      <asp:ListBox ID="ListBox1" runat="server" Width="134px"></asp:ListBox>
              
         </td>
                </tr>
                <tr>
                <td>
                   <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="images/ss.gif" ValidationGroup="a"
                 CssClass="btn"  />
                </td>
                </tr>
                </table>
                </asp:Panel>
       </td>
         </tr>
         </table>
             </asp:Panel>
         
         </td>
         </tr>
         
         <tr>
         <td>
         <table>
          <asp:Label ID="Label48" runat="server" Text="Other fees"></asp:Label>
             
          <tr>
          <td>
             <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                 <asp:ListItem>Year Wise</asp:ListItem>
                 <asp:ListItem>Month Wise</asp:ListItem>

             </asp:CheckBoxList>
          </td>
          <tr>
                            <td class="row">
                                <asp:Label ID="Label5" runat="server" Text="Material fee::" Width="150px"></asp:Label>
                                <asp:TextBox ID="TextBox5" runat="server" ValidationGroup="a"></asp:TextBox>
                            </td>
                            <td class="row">
                                <asp:Label ID="Label6" runat="server" Text="Special Day::" Width="150px"></asp:Label>
                                <asp:TextBox ID="TextBox6" runat="server" ValidationGroup="a"></asp:TextBox>
                            </td>
                        </tr>
              
          <tr>
                            <td class="row">
                                <asp:Label ID="Label7" runat="server" Text="Computer::" Width="150px"></asp:Label>
                                <asp:TextBox ID="TextBox7" runat="server" ValidationGroup="a"></asp:TextBox>
                            </td>
                            <td class="row">
                                <asp:Label ID="Label8" runat="server" Text="Exam::" Width="150px"></asp:Label>
                                <asp:TextBox ID="TextBox8" runat="server" ValidationGroup="a"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="row">
                                <asp:Label ID="Label9" runat="server" Text="Smart Class::" Width="150px"></asp:Label>
                                <asp:TextBox ID="TextBox9" runat="server" ValidationGroup="a"></asp:TextBox>
                            </td>
                           
                        </tr>
          <tr>
          <td>
          
          </td>
          </tr>
         </table>
         </td>
         </tr>
         <tr>
         <td colspan="2">
             <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/ss.gif" ValidationGroup="a"
                 CssClass="btn"  />
             
             <asp:ValidationSummary ID="ValidationSummary1" runat="server"  
                 ValidationGroup="a"/>
               
             <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="images/reset.png"  CssClass="btn"/>
         </td>
         </tr>
         </table>
         </td>
         </tr>
         </table>
    </div>
</div>
</div>
</asp:Content>

