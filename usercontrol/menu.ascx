<%@ Control Language="C#" AutoEventWireup="true" CodeFile="menu.ascx.cs" Inherits="usercontrol_menu" %>

<div id="menu">
    <ul class="menu">
        <li><a href="" class="parent"><span>Student </span></a>
              <div><ul>

                   <li><a href="Student_Serach.aspx" class="parent"><span>Search</span></a>                
                </li>
                <li><a href="studentdetails.aspx"><span>New</span></a></li>
            </ul>
            </div>
        </li>
        <li><a href="" class="parent"><span>Staff</span></a>
             <div><ul>

              
                <li><a href="staffsearch.aspx"><span>Search</span></a></li>
                <li><a href="staffnew.aspx"><span>New</span></a></li>
              
             
            </ul>
            </div>
        </li>
        <li><a href=""><span>Fees</span></a>
            <div>
            <ul>
                    <li><a href="Fee_Structure.aspx"><span>Fee Structure</span></a></li>
                    <li><a href="Student_Admission.aspx"><span>Admissions</span></a></li>
                    <li><a href="Fees.aspx"><span>Pay Fees</span></a></li>
            </ul>
            </div>
        </li>
           <li><a href="" class="parent"><span>Admin</span></a>&nbsp;
        <div>
        <ul>
        <li><a href="Create_new_user.aspx"><span> Create New Login User</span></a></li>
                
                
        </ul>
        </div>
        </li>
        <li class="last"><a href=""><span>Report</span></a>
         <div><ul>

              
                <li><a href="transfer.aspx"><span>Transfer Certificate</span></a></li>
                <li><a href="staffnew.aspx"><span>Student List</span></a></li>
              
             
            </ul>
            </div></li>
            <li style="text-align:right;width:550px;vertical-align:text-top;"> 
                <asp:ImageButton runat="server" ID="btnlogout" 
                ImageUrl="~/buttons/logout.png" onclick="btnlogout_Click" /> </a>
        
        </li>
    </ul>
</div>